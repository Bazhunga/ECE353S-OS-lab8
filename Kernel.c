code Kernel

  -- <Shenglin Yang>

-----------------------------  InitializeScheduler  ---------------------------------

  function InitializeScheduler ()
    --
    -- This routine assumes that we are in System mode.  It sets up the
    -- thread scheduler and turns the executing program into "main-thread".
    -- After exit, we can execute "Yield", "Fork", etc.  Upon return, the
    -- main-thread will be executing with interrupts enabled.
    --
      Cleari ()
      print ("Initializing Thread Scheduler...\n")
      readyList = new List [Thread]
      threadsToBeDestroyed = new List [Thread]
      mainThread = new Thread
      mainThread.Init ("main-thread")
      mainThread.status = RUNNING
      idleThread = new Thread
      idleThread.Init ("idle-thread")
      idleThread.Fork (IdleFunction, 0)
      currentThread = & mainThread
      FatalError = FatalError_ThreadVersion       -- Use a routine which prints threadname
      currentInterruptStatus = ENABLED
      Seti ()
    endFunction

-----------------------------  IdleFunction  ---------------------------------

  function IdleFunction (arg: int)
    --
    -- This is the "idle thread", a kernel thread which ensures that the ready
    -- list is never empty.  The idle thread constantly yields to other threads
    -- in an infinite loop.  However, before yielding, it first checks to see if
    -- there are other threads.  If there are no other threads, the idle thread
    -- will execute the "wait" instruction.  The "wait" instruction will enable
    -- interrupts and halt CPU execution until the next interrupt arrives.
    --
      var junk: int
      while true
        junk = SetInterruptsTo (DISABLED)
        if readyList.IsEmpty ()
          Wait ()
        else
          currentThread.Yield ()
        endIf
      endWhile
    endFunction

-----------------------------  Run  ---------------------------------

  function Run (nextThread: ptr to Thread)
    --
    -- Begin executing the thread "nextThread", which has already
    -- been removed from the readyList.  The current thread will
    -- be suspended; we assume that its status has already been
    -- changed to READY or BLOCKED.  We assume that interrupts are
    -- DISABLED when called.
    --
    -- This routine is called only from "Thread.Yield" and "Thread.Sleep".
    --
    -- It is allowable for nextThread to be currentThread.
    --
      var prevThread, th: ptr to Thread
      prevThread = currentThread
      prevThread.CheckOverflow ()
      -- If the previous thread was using the USER registers, save them.
      if prevThread.isUserThread
        SaveUserRegs (&prevThread.userRegs[0])
      endIf
      currentThread = nextThread
      nextThread.status = RUNNING
      --print ("SWITCHING from ")
      --print (prevThread.name)
      --print (" to ")
      --print (nextThread.name)
      --print ("\n")
      Switch (prevThread, nextThread)
      --print ("After SWITCH, back in thread ")
      --print (currentThread.name)
      --print ("\n")
      while ! threadsToBeDestroyed.IsEmpty ()
        th = threadsToBeDestroyed.Remove()
        threadManager.FreeThread (th)
      endWhile
      -- If the new thread uses the USER registers, restore them.
      if currentThread.isUserThread
        RestoreUserRegs (&currentThread.userRegs[0])
        currentThread.myProcess.addrSpace.SetToThisPageTable ()
      endIf
    endFunction

-----------------------------  PrintReadyList  ---------------------------------

  function PrintReadyList ()
    --
    -- This routine prints the readyList.  It disables interrupts during the
    -- printing to guarantee that the readyList won't change while it is
    -- being printed, which could cause disaster in this routine!
    --
    var oldStatus: int
      oldStatus = SetInterruptsTo (DISABLED)
      print ("Here is the ready list:\n")
      readyList.ApplyToEach (ThreadPrintShort)
      oldStatus = SetInterruptsTo (oldStatus)
    endFunction

-----------------------------  ThreadStartMain  ---------------------------------

  function ThreadStartMain ()
    --
    -- This function is called from the assembly language routine "ThreadStart".
    -- It is the first KPL code each thread will execute, and it will
    -- invoke the thread's "main" function, with interrupts enabled.  If the "main"
    -- function ever returns, this function will terminate this thread.  This
    -- function will never return.
    --
      var
        junk: int
        mainFun: ptr to function (int)
      -- print ("ThreadStartMain...\n")
      junk = SetInterruptsTo (ENABLED)
      mainFun = currentThread.initialFunction
      mainFun (currentThread.initialArgument)
      ThreadFinish ()
      FatalError ("ThreadFinish should never return")
    endFunction

-----------------------------  ThreadFinish  ---------------------------------

  function ThreadFinish ()
    --
    -- As the last thing to do in this thread, we want to clean up
    -- and reclaim the Thread object.  This method is called as the
    -- last thing the thread does; this is the normal way for a thread
    -- to die.  However, since the thread is still running in this,
    -- we can't actually do the clean up.  So we just make a note
    -- that it is pending.  After the next thread starts (in method "Run")
    -- we'll finish the job.
    --
      var junk: int
      junk = SetInterruptsTo (DISABLED)
      -- print ("Finishing ")
      -- print (currentThread.name)
      -- print ("\n")
      threadsToBeDestroyed.AddToEnd (currentThread)
      currentThread.Sleep ()
      -- Execution will never reach the next instruction
      FatalError ("This thread will never run again")
    endFunction

-----------------------------  FatalError_ThreadVersion  -----------------------

  function FatalError_ThreadVersion (errorMessage: ptr to array of char)
    --
    -- This function will print out the name of the current thread and
    -- the given error message.  Then it will call "RuntimeExit" to
    -- shutdown the system.
    --
      var
        junk: int
      junk = SetInterruptsTo (DISABLED)
      print ("\nFATAL ERROR")
      if currentThread    -- In case errors occur before thread initialization
        print (" in ")
        print (currentThread.name)
      endIf
      print (": \"")
      print (errorMessage)
      print ("\" -- TERMINATING!\n\n")
      print ("(To find out where execution was when the problem arose, type 'st' at the emulator prompt.)\n")
      RuntimeExit ()
    endFunction

-----------------------------  SetInterruptsTo  ---------------------------------

  function SetInterruptsTo (newStatus: int) returns int
    --
    -- This routine is passed a status (DISABLED or ENABLED).  It
    -- returns the previous interrupt status and sets the interrupt
    -- status to "newStatus".
    --
    -- Since this routine reads and modifies a shared variable
    -- (currentInterruptStatus), there is a danger of this routine
    -- being re-entered.  Therefore, it momentarily will disable
    -- interrupts, to ensure a valid update to this variable.
    --
      var
        oldStat: int
      Cleari ()
      oldStat = currentInterruptStatus
      if newStatus == ENABLED
        currentInterruptStatus = ENABLED
        Seti ()
      else
        currentInterruptStatus = DISABLED
        Cleari ()
      endIf
      return oldStat
    endFunction

-----------------------------  Semaphore  ---------------------------------

  behavior Semaphore
    -- This class provides the following methods:
    --    Up()  ...also known as "V" or "Signal"...
    --         Increment the semaphore count.  Wake up a thread if
    --         there are any waiting.  This operation always executes
    --         quickly and will not suspend the thread.
    --    Down()   ...also known as "P" or "Wait"...
    --         Decrement the semaphore count.  If the count would go
    --         negative, wait for some other thread to do an Up()
    --         first.  Conceptually, the count will never go negative.
    --    Init(initialCount)
    --         Each semaphore must be initialized.  Normally, you should
    --         invoke this method, providing an 'initialCount' of zero.
    --         If the semaphore is initialized with 0, then a Down()
    --         operation before any Up() will wait for the first
    --         Up().  If initialized with i, then it is as if i Up()
    --         operations have been performed already.
    --
    -- NOTE: The user should never look at a semaphore's count since the value
    -- retrieved may be out-of-date, due to other threads performing Up() or
    -- Down() operations since the retrieval of the count.

      ----------  Semaphore . Init  ----------

      method Init (initialCount: int)
          if initialCount < 0
            FatalError ("Semaphore created with initialCount < 0")
          endIf
          count = initialCount
          waitingThreads = new List [Thread]
        endMethod

      ----------  Semaphore . Up  ----------

      method Up ()
          var
            oldIntStat: int
            t: ptr to Thread
          oldIntStat = SetInterruptsTo (DISABLED)
          if count == 0x7fffffff
            FatalError ("Semaphore count overflowed during 'Up' operation")
          endIf
          count = count + 1
          if count <= 0
            t = waitingThreads.Remove ()
            t.status = READY
            readyList.AddToEnd (t)
          endIf
          oldIntStat = SetInterruptsTo (oldIntStat)
        endMethod

      ----------  Semaphore . Down  ----------

      method Down ()
          var
            oldIntStat: int

          oldIntStat = SetInterruptsTo (DISABLED)
          if count == 0x80000000
            FatalError ("Semaphore count underflowed during 'Down' operation")
          endIf
          count = count - 1
          if count < 0
            waitingThreads.AddToEnd (currentThread)
            currentThread.Sleep ()
          endIf
          oldIntStat = SetInterruptsTo (oldIntStat)
        endMethod

  endBehavior

-----------------------------  Mutex  ---------------------------------

  behavior Mutex
    -- This class provides the following methods:
    --    Lock()
    --         Acquire the mutex if free, otherwise wait until the mutex is
    --         free and then get it.
    --    Unlock()
    --         Release the mutex.  If other threads are waiting, then
    --         wake up the oldest one and give it the lock.
    --    Init()
    --         Each mutex must be initialized.
    --    IsHeldByCurrentThread()
    --         Return TRUE iff the current (invoking) thread holds a lock
    --         on the mutex.

       -----------  Mutex . Init  -----------

       method Init ()
           waitingThreads = new List [Thread]
         endMethod

       -----------  Mutex . Lock  -----------

       method Lock ()
           var
             oldIntStat: int
           if heldBy == currentThread
             FatalError ("Attempt to lock a mutex by a thread already holding it")
           endIf
           oldIntStat = SetInterruptsTo (DISABLED)
           if !heldBy
             heldBy = currentThread
           else
             waitingThreads.AddToEnd (currentThread)
             currentThread.Sleep ()
           endIf
           oldIntStat = SetInterruptsTo (oldIntStat)
         endMethod

       -----------  Mutex . Unlock  -----------

       method Unlock ()
           var
             oldIntStat: int
             t: ptr to Thread
           if heldBy != currentThread
             FatalError ("Attempt to unlock a mutex by a thread not holding it")
           endIf
           oldIntStat = SetInterruptsTo (DISABLED)
           t = waitingThreads.Remove ()
           if t
             t.status = READY
             readyList.AddToEnd (t)
             heldBy = t
           else
             heldBy = null
           endIf
           oldIntStat = SetInterruptsTo (oldIntStat)
         endMethod

       -----------  Mutex . IsHeldByCurrentThread  -----------

       method IsHeldByCurrentThread () returns bool
           return heldBy == currentThread
         endMethod

  endBehavior

-----------------------------  Condition  ---------------------------------

  behavior Condition
    -- This class is used to implement monitors.  Each monitor will have a
    -- mutex lock and one or more condition variables.  The lock ensures that
    -- only one process at a time may execute code in the monitor.  Within the
    -- monitor code, a thread can execute Wait() and Signal() operations
    -- on the condition variables to make sure certain condions are met.
    --
    -- The condition variables here implement "Mesa-style" semantics, which
    -- means that in the time between a Signal() operation and the awakening
    -- and execution of the corrsponding waiting thread, other threads may
    -- have snuck in and run.  The waiting thread should always re-check the
    -- data to ensure that the condition which was signalled is still true.
    --
    -- This class provides the following methods:
    --    Wait(mutex)
    --         This method assumes the mutex has alreasy been locked.
    --         It unlocks it, and goes to sleep waiting for a signal on
    --         this condition.  When the signal is received, this method
    --         re-awakens, re-locks the mutex, and returns.
    --    Signal(mutex)
    --         If there are any threads waiting on this condition, this
    --         method will wake up the oldest and schedule it to run.
    --         However, since this thread holds the mutex and never unlocks
    --         it, the newly awakened thread will be forced to wait before
    --         it can re-acquire the mutex and resume execution.
    --    Broadcast(mutex)
    --         This method is like Signal() except that it wakes up all
    --         threads waiting on this condition, not just the next one.
    --    Init()
    --         Each condition must be initialized.

      ----------  Condition . Init  ----------

      method Init ()
          waitingThreads = new List [Thread]
        endMethod

      ----------  Condition . Wait  ----------

      method Wait (mutex: ptr to Mutex)
          var
            oldIntStat: int

          if ! mutex.IsHeldByCurrentThread ()
            FatalError ("Attempt to wait on condition when mutex is not held")
          endIf
          oldIntStat = SetInterruptsTo (DISABLED)
          mutex.Unlock ()
          waitingThreads.AddToEnd (currentThread)
          currentThread.Sleep ()
          mutex.Lock ()
          oldIntStat = SetInterruptsTo (oldIntStat)
        endMethod

      ----------  Condition . Signal  ----------

      method Signal (mutex: ptr to Mutex)
          var
            oldIntStat: int
            t: ptr to Thread
          if ! mutex.IsHeldByCurrentThread ()
            FatalError ("Attempt to signal a condition when mutex is not held")
          endIf
          oldIntStat = SetInterruptsTo (DISABLED)
          t = waitingThreads.Remove ()
          if t
            t.status = READY
            readyList.AddToEnd (t)
          endIf
          oldIntStat = SetInterruptsTo (oldIntStat)
        endMethod

      ----------  Condition . Broadcast  ----------

      method Broadcast (mutex: ptr to Mutex)
          var
            oldIntStat: int
            t: ptr to Thread
          if ! mutex.IsHeldByCurrentThread ()
            FatalError ("Attempt to broadcast a condition when lock is not held")
          endIf
          oldIntStat = SetInterruptsTo (DISABLED)
          while true
            t = waitingThreads.Remove ()
--print ("waking one up\n")
            if t == null
              break
            endIf
            t.status = READY
            readyList.AddToEnd (t)
          endWhile
          oldIntStat = SetInterruptsTo (oldIntStat)
        endMethod

  endBehavior

-----------------------------  Thread  ---------------------------------

  behavior Thread

      ----------  Thread . Init  ----------

      method Init (n: String)
        --
        -- Initialize this Thread object, but do not schedule it for
        -- execution yet.
        --
          name = n
          status = JUST_CREATED
          -- The next line initializes the systemStack array, without filling it in.
          *((& systemStack) asPtrTo int) = SYSTEM_STACK_SIZE
          systemStack [0] = STACK_SENTINEL
          systemStack [SYSTEM_STACK_SIZE-1] = STACK_SENTINEL
          stackTop = & (systemStack[SYSTEM_STACK_SIZE-1])
          regs = new array of int { 13 of 0 }
          isUserThread = false
          userRegs = new array of int { 15 of 0 }
        endMethod

      ----------  Thread . Fork  ----------

      method Fork (fun: ptr to function (int), arg: int)
        --
        -- This method will schedule this thread for execution; in other words
        -- it will make it ready to run by adding it to the "ready queue."  This
        -- method is passed a function and a single integer argument.  When the
        -- thread runs, the thread will execute this function on that argument
        -- and then terminate.  This method will return after scheduling this
        -- thread.
        --
          var
            oldIntStat, junk: int
          oldIntStat = SetInterruptsTo (DISABLED)
          print ("Forking thread: ")
          print (name)
          nl ()
          initialFunction = fun
          initialArgument = arg
          stackTop = stackTop - 4
          *(stackTop asPtrTo int) = ThreadStartUp asInteger
          status = READY
          readyList.AddToEnd (self)
          junk = SetInterruptsTo (oldIntStat)
        endMethod

      ----------  Thread . Yield  ----------

      method Yield ()
        --
        -- This method should only be invoked on the current thread.  The
        -- current thread may yield the processor to other threads by
        -- executing:
        --       currentThread.Yield ()
        -- This method may be invoked with or without interrupts enabled.
        -- Upon return, the interrupts will be in the same state; however
        -- since other threads are given a chance to run and they may allow
        -- interrupts, interrupts handlers may have been invoked before
        -- this method returns.
        --
          var
            nextTh: ptr to Thread
            oldIntStat, junk: int
          -- ASSERT:
              if self != currentThread
                FatalError ("In Yield, self != currentThread")
              endIf
          oldIntStat = SetInterruptsTo (DISABLED)
          -- print ("Yielding ")
          -- print (name)
          -- print ("\n")
          -- PrintReadyList ()
          nextTh = readyList.Remove ()
          if nextTh
            -- print ("About to run ")
            -- print (nextTh.name)
            -- print ("\n")
            if status == BLOCKED
              FatalError ("Status of current thread should be READY or RUNNING")
            endIf
            status = READY
            readyList.AddToEnd (self)
            Run (nextTh)
          endIf
          junk = SetInterruptsTo (oldIntStat)
        endMethod

      ----------  Thread . Sleep  ----------

      method Sleep ()
        --
        -- This method should only be invoked on the current thread.  It
        -- will set the status of the current thread to BLCOKED and will
        -- will switch to executing another thread.  It is assumed that
        --     (1) Interrupts are disabled before calling this routine, and
        --     (2) The current thread has been placed on some other wait
        --         list (e.g., for a Semaphore) or else the thread will
        --         never get scheduled again.
        --
          var nextTh: ptr to Thread
          -- ASSERT:
              if currentInterruptStatus != DISABLED
                FatalError ("In Sleep, currentInterruptStatus != DISABLED")
              endIf
          -- ASSERT:
              if self != currentThread
                FatalError ("In Sleep, self != currentThread")
              endIf
          -- print ("Sleeping ")
          -- print (name)
          -- print ("\n")
          status = BLOCKED
          nextTh = readyList.Remove ()
          if nextTh == null
            FatalError ("Ready list should always contain the idle thread")
          endIf
          Run (nextTh)
        endMethod

      ----------  Thread . CheckOverflow  ----------

      method CheckOverflow ()
        --
        -- This method checks to see if this thread has overflowed its
        -- pre-alloted stack space.  WARNING: the approach taken here is only
        -- guaranteed to work "with high probability".
        --
          if systemStack[0] != STACK_SENTINEL
            FatalError ("System stack overflow detected!")
          elseIf systemStack[SYSTEM_STACK_SIZE-1] != STACK_SENTINEL
            FatalError ("System stack underflow detected!")
          endIf
        endMethod

      ----------  Thread . Print  ----------

      method Print ()
        --
        -- Print this object.
        --
          var i: int
              oldStatus: int
          oldStatus = SetInterruptsTo (DISABLED)
          print ("  Thread \"")
          print (name)
          print ("\"    (addr of Thread object: ")
          printHex (self asInteger)
          print (")\n")
          print ("    machine state:\n")
          for i = 0 to 12
            print ("      r")
            printInt (i+2)
            print (": ")
            printHex (regs[i])
            print ("   ")
            printInt (regs[i])
            print ("\n")
          endFor
          printHexVar ("    stackTop", stackTop asInteger)
          printHexVar ("    stack starting addr", (& systemStack[0]) asInteger)
          switch status
            case JUST_CREATED:
              print ("    status = JUST_CREATED\n")
              break
            case READY:
              print ("    status = READY\n")
              break
            case RUNNING:
              print ("    status = RUNNING\n")
              break
            case BLOCKED:
              print ("    status = BLOCKED\n")
              break
            case UNUSED:
              print ("    status = UNUSED\n")
              break
            default:
              FatalError ("Bad status in Thread")
          endSwitch
          print ("    is user thread: ")
          printBool (isUserThread)
          nl ()
          print ("    user registers:\n")
          for i = 0 to 14
            print ("      r")
            printInt (i+1)
            print (": ")
            printHex (userRegs[i])
            print ("   ")
            printInt (userRegs[i])
            print ("\n")
          endFor
          oldStatus = SetInterruptsTo (oldStatus)
        endMethod

  endBehavior

-----------------------------  ThreadPrintShort  ---------------------------------

  function ThreadPrintShort (t: ptr to Thread)
    --
    -- This function prints a single line giving the name of thread "t",
    -- its status, and the address of the Thread object itself (which may be
    -- helpful in distinguishing Threads when the name is not helpful).
    --
      var
        oldStatus: int = SetInterruptsTo (DISABLED)
      if !t
        print ("NULL\n")
        return
      endIf
      print ("  Thread \"")
      print (t.name)
      print ("\"    status=")
      switch t.status
        case JUST_CREATED:
          print ("JUST_CREATED")
          break
        case READY:
          print ("READY")
          break
        case RUNNING:
          print ("RUNNING")
          break
        case BLOCKED:
          print ("BLOCKED")
          break
        case UNUSED:
          print ("UNUSED")
          break
        default:
          FatalError ("Bad status in Thread")
      endSwitch
      print ("    (addr of Thread object: ")
      printHex (t asInteger)
      print (")")
      nl ()
      -- t.Print ()
      oldStatus = SetInterruptsTo (oldStatus)
    endFunction

-----------------------------  ThreadManager  ---------------------------------

  behavior ThreadManager

      ----------  ThreadManager . Init  ----------

      method Init ()
          var
	    i: int
	    thread: ptr to Thread
        --
        -- This method is called once at kernel startup time to initialize
        -- the one and only "ThreadManager" object.
        -- 
          print ("Initializing Thread Manager...\n")
	  threadTable = new array of Thread {MAX_NUMBER_OF_PROCESSES of new Thread}
	  freeList = new List [Thread]
          for (i = 0; i < MAX_NUMBER_OF_PROCESSES; i = i + 1)
	    thread = &threadTable[i]
	    thread.Init ("thread")
	    thread.status = UNUSED
	    freeList.AddToEnd (thread)
	  endFor
	  threadManagerLock = new Mutex
	  threadManagerLock.Init ()
	  aThreadBecameFree = new Condition
	  aThreadBecameFree.Init ()
        endMethod

      ----------  ThreadManager . Print  ----------

      method Print ()
        -- 
        -- Print each thread.  Since we look at the freeList, this
        -- routine disables interrupts so the printout will be a
        -- consistent snapshot of things.
        -- 
        var i, oldStatus: int
          oldStatus = SetInterruptsTo (DISABLED)
          print ("Here is the thread table...\n")
          for i = 0 to MAX_NUMBER_OF_PROCESSES-1
            print ("  ")
            printInt (i)
            print (":")
            ThreadPrintShort (&threadTable[i])
          endFor
          print ("Here is the FREE list of Threads:\n   ")
          freeList.ApplyToEach (PrintObjectAddr)
          nl ()
          oldStatus = SetInterruptsTo (oldStatus)
        endMethod

      ----------  ThreadManager . GetANewThread  ----------

      method GetANewThread () returns ptr to Thread
        -- 
        -- This method returns a new Thread; it will wait
        -- until one is available.
        -- 
	  var
	    thread: ptr to Thread

          threadManagerLock.Lock ()
	  thread = freeList.Remove ()
	  while thread == null
	    aThreadBecameFree.Wait (&threadManagerLock)
	    thread = freeList.Remove ()
	  endWhile
	  threadManagerLock.Unlock ()
          return thread
        endMethod

      ----------  ThreadManager . FreeThread  ----------

      method FreeThread (th: ptr to Thread)
        -- 
        -- This method is passed a ptr to a Thread;  It moves it
        -- to the FREE list.
        -- 
          threadManagerLock.Lock ()
	  freeList.AddToEnd (th)
	  aThreadBecameFree.Signal (&threadManagerLock)
	  threadManagerLock.Unlock ()
        endMethod

    endBehavior

--------------------------  ProcessControlBlock  ------------------------------

  behavior ProcessControlBlock

      ----------  ProcessControlBlock . Init  ----------
      --
      -- This method is called once for every PCB at startup time.
      --
      method Init ()
          pid = -1
          status = FREE
          addrSpace = new AddrSpace
          addrSpace.Init ()
-- Uncomment this code later...

          fileDescriptor = new array of ptr to OpenFile
                      { MAX_FILES_PER_PROCESS of null }

        endMethod

      ----------  ProcessControlBlock . Print  ----------

      method Print ()
        --
        -- Print this ProcessControlBlock using several lines.
        --
        -- var i: int
          self.PrintShort ()
          addrSpace.Print ()
          print ("    myThread = ")
          ThreadPrintShort (myThread)
-- Uncomment this code later...
/*
          print ("    File Descriptors:\n")
          for i = 0 to MAX_FILES_PER_PROCESS-1
            if fileDescriptor[i]
              fileDescriptor[i].Print ()
            endIf
          endFor
*/
          nl ()
        endMethod

      ----------  ProcessControlBlock . PrintShort  ----------

      method PrintShort ()
        --
        -- Print this ProcessControlBlock on one line.
        --
          print ("  ProcessControlBlock   (addr=")
          printHex (self asInteger)
          print (")   pid=")
          printInt (pid)
          print (", status=")
          if status == ACTIVE
            print ("ACTIVE")
          elseIf status == ZOMBIE
            print ("ZOMBIE")
          elseIf status == FREE
            print ("FREE")
          else
            FatalError ("Bad status in ProcessControlBlock")
          endIf
          print (", parentsPid=")
          printInt (parentsPid)
          print (", exitStatus=")
          printInt (exitStatus)
          nl ()
        endMethod

    endBehavior

-----------------------------  ProcessManager  ---------------------------------

  behavior ProcessManager

      ----------  ProcessManager . Init  ----------

      method Init ()
	var
	  i: int
	  process: ptr to ProcessControlBlock
        --
        -- This method is called once at kernel startup time to initialize
        -- the one and only "processManager" object.  
        --
	print ("Initializing Process Manager...\n")
        processTable = new array of ProcessControlBlock {MAX_NUMBER_OF_PROCESSES of new ProcessControlBlock}
	freeList = new List [ProcessControlBlock]
	pidCount = 0
	for (i = 0; i < MAX_NUMBER_OF_PROCESSES; i = i + 1)
	  process = &(processTable[i])
	  process.Init ()
	  freeList.AddToEnd (process)
	endFor
	processManagerLock = new Mutex
	processManagerLock.Init ()
	aProcessBecameFree = new Condition
	aProcessBecameFree.Init ()
	aProcessDied = new Condition
	aProcessDied.Init ()
        endMethod

      ----------  ProcessManager . Print  ----------

      method Print ()
        -- 
        -- Print all processes.  Since we look at the freeList, this
        -- routine disables interrupts so the printout will be a
        -- consistent snapshot of things.
        -- 
        var i, oldStatus: int
          oldStatus = SetInterruptsTo (DISABLED)
          print ("Here is the process table...\n")
          for i = 0 to MAX_NUMBER_OF_PROCESSES-1
            print ("  ")
            printInt (i)
            print (":")
            processTable[i].Print ()
          endFor
          print ("Here is the FREE list of ProcessControlBlocks:\n   ")
          freeList.ApplyToEach (PrintObjectAddr)
          nl ()
          oldStatus = SetInterruptsTo (oldStatus)
        endMethod

      ----------  ProcessManager . PrintShort  ----------

      method PrintShort ()
        -- 
        -- Print all processes.  Since we look at the freeList, this
        -- routine disables interrupts so the printout will be a
        -- consistent snapshot of things.
        -- 
        var i, oldStatus: int
          oldStatus = SetInterruptsTo (DISABLED)
          print ("Here is the process table...\n")
          for i = 0 to MAX_NUMBER_OF_PROCESSES-1
            print ("  ")
            printInt (i)
            processTable[i].PrintShort ()
          endFor
          print ("Here is the FREE list of ProcessControlBlocks:\n   ")
          freeList.ApplyToEach (PrintObjectAddr)
          nl ()
          oldStatus = SetInterruptsTo (oldStatus)
        endMethod

      ----------  ProcessManager . GetANewProcess  ----------

      method GetANewProcess () returns ptr to ProcessControlBlock
        --
        -- This method returns a new ProcessControlBlock; it will wait
        -- until one is available.
        --
  	  var
	    process: ptr to ProcessControlBlock

	  processManagerLock.Lock ()
	  process = freeList.Remove ()
	  while process == null
	    aProcessBecameFree.Wait (&processManagerLock)
	    process = freeList.Remove ()
	  endWhile
	  process.status = ACTIVE
	  pidCount = pidCount + 1
	  process.pid = pidCount
	  processManagerLock.Unlock ()
          return process
        endMethod

      ----------  ProcessManager . FreeProcess  ----------

      method FreeProcess (p: ptr to ProcessControlBlock)
        --
        -- This method is passed a ptr to a Process;  It moves it
        -- to the FREE list.
        --
	  FatalError ("Should never be called")
          processManagerLock.Lock ()
	  freeList.AddToEnd (p)
	  p.status = FREE
	  -- p.pid = -1
	  aProcessBecameFree.Signal (&processManagerLock)
	  processManagerLock.Unlock ()
        endMethod


     ----------  ProcessManager . TurnIntoZombie  ----------

      method TurnIntoZombie (p: ptr to ProcessControlBlock)

	var
	  i: int
	  myPid: int
	  parentPid: int
	  parentFound: bool

	processManagerLock.Lock ()

	-- identify ALL its zombie children
	myPid = p.pid

	for (i = 0; i < MAX_NUMBER_OF_PROCESSES; i = i + 1)
	  if processTable[i].parentsPid == myPid && processTable[i].status == ZOMBIE	-- processTable[i] refers to the child
	    processTable[i].status = FREE
	    processTable[i].pid = -1
	    freeList.AddToEnd (& (processTable[i]))
	    aProcessBecameFree.Signal (& processManagerLock)
	  endIf
	endFor

	-- identify its parent
	parentPid = p.parentsPid

	for (i = 0; i < MAX_NUMBER_OF_PROCESSES; i = i + 1)
	  if processTable[i].pid == parentPid	-- this is the parent process

	    parentFound = true
	    -- if its parent is active, turn p into ZOMBIE
	    if processTable[i].status == ACTIVE
	      p.status = ZOMBIE
	      aProcessDied.Broadcast (& processManagerLock)

	    -- parent is not active
	    else
	      p.status = FREE
	      p.pid = -1
	      freeList.AddToEnd (p)
	      aProcessBecameFree.Signal (& processManagerLock)
	    endIf
	  endIf
        endFor

	if parentFound == false
	  p.status = FREE
	  p.pid = -1
	  freeList.AddToEnd (p)
	  aProcessBecameFree.Signal (& processManagerLock)
	endIf

	processManagerLock.Unlock ()

      endMethod


     ----------  ProcessManager . WaitForZombie  ----------

      method WaitForZombie (proc: ptr to ProcessControlBlock) returns int

	var
	  exitStatus: int

	processManagerLock.Lock ()

	exitStatus = -1
--print ("inside wait_for_zombie function \n")
	-- while-wait for status of proc turns into ZOMBIE

	while proc.status != ZOMBIE
--print ("this is zombie \n")
	  aProcessDied.Wait (& processManagerLock)
	endWhile


	-- now proc.status is ZOMBIE guaranteed
	-- fetch proc's exit status
	exitStatus = proc.exitStatus

	-- the status of proc is FREE now
	proc.status = FREE
	proc.pid = -1
	freeList.AddToEnd (proc)
	aProcessBecameFree.Signal (& processManagerLock)

	processManagerLock.Unlock ()

        return exitStatus 

      endMethod

    endBehavior

-----------------------------  PrintObjectAddr  ---------------------------------

  function PrintObjectAddr (p: ptr to Object)
    --
    -- Print the address of the given object.
    --
      printHex (p asInteger)
      printChar (' ')
    endFunction

-----------------------------  ProcessFinish  --------------------------

  function ProcessFinish (exitStatus: int)
    --
    -- This routine is called when a process is to be terminated.  It will
    -- free the resources held by this process and will terminate the
    -- current thread.
    --
      
      var
	      oldInterruptStatus: int
	      thisProcess: ptr to ProcessControlBlock
        i: int

      thisProcess = currentThread.myProcess

      -- save exit status in the PCB
      thisProcess.exitStatus = exitStatus

      -- disable interrupts
      oldInterruptStatus = SetInterruptsTo (DISABLED)

      -- disconnect the PCB and the Thread
      thisProcess.myThread = null
      currentThread.myProcess = null

      currentThread.isUserThread = false

      -- clear up the fileDescriptor array
      for (i = 0; i < MAX_FILES_PER_PROCESS; i = i + 1)
        thisProcess.fileDescriptor[i] = null
      endFor

      -- restore interrupt status
      oldInterruptStatus = SetInterruptsTo (ENABLED)   

      -- return all frames to free pool  
      frameManager.ReturnAllFrames (&thisProcess.addrSpace) 

      processManager.TurnIntoZombie (thisProcess)

      ThreadFinish ()

    endFunction

--------------------------- InitFirstProcess ---------------------------------

  function InitFirstProcess ()
      
      var
	newThread: ptr to Thread

      newThread = threadManager.GetANewThread ()	-- threadManager
      newThread.Init ("UserProgram")
      newThread.Fork (StartUserProcess, "TestProgram5" asInteger)
    endFunction

--------------------------- StartUserProcess ---------------------------------

  function StartUserProcess ()
      
      var
	newProcess: ptr to ProcessControlBlock
	openFile: ptr to OpenFile
	initUserPC: int
	initUserStackTop: int
	initSystemStackTop: int
	junk: int

      -- enable interrupts
      junk = SetInterruptsTo (ENABLED)

      -- allocate a new PCB and connect it properly
      newProcess = processManager.GetANewProcess ()	-- processManager
      newProcess.myThread = currentThread	-- newThread in InitFirstProcess () (the calling thread)
      currentThread.myProcess = newProcess

      -- open the executable file
      openFile = fileManager.Open ("TestProgram5")	-- fileManager

      -- create virtual address space and read the executable into it (done by openFile.LoadExecutable function)
      newProcess.addrSpace.Init ()
      initUserPC = openFile.LoadExecutable (& newProcess.addrSpace)

      -- close the file
      fileManager.Close (openFile)

      -- set initUserStackTop
      initUserStackTop = newProcess.addrSpace.numberOfPages * PAGE_SIZE

      -- reset the system stack top pointer
      initSystemStackTop = (&currentThread.systemStack [SYSTEM_STACK_SIZE - 1]) asInteger

      -- return to user-level
      junk = SetInterruptsTo (DISABLED)
      newProcess.addrSpace.SetToThisPageTable ()
      currentThread.isUserThread = true

      BecomeUserThread (initUserStackTop, initUserPC, initSystemStackTop)
      
    endFunction

------------------------  ResumeChildAfterFork  ------------------------------

  function ResumeChildAfterFork (oldUserPC: int)

      var
	      junk: int
      	systemStackTop: int
      	userStackTop: int

      -- disable interrupts
      junk = SetInterruptsTo (DISABLED)

      -- initialize the page table registers
      currentThread.myProcess.addrSpace.SetToThisPageTable ()

      -- restore user registers
      RestoreUserRegs (&currentThread.userRegs[0])

      -- set to user process
      currentThread.isUserThread = true

      -- calculate initial system stack top
      systemStackTop = (&currentThread.systemStack [SYSTEM_STACK_SIZE - 1]) asInteger

      -- calculate initial user stack top
      userStackTop = currentThread.userRegs[14]	-- stored in r15

      BecomeUserThread (userStackTop, oldUserPC, systemStackTop)

  endFunction

------------------------  SerialHandlerFunction  ------------------------------

  function SerialHandlerFunction (ignore: int)

    serialDriver.SerialHandler ()

  endFunction


-----------------------------  FrameManager  ---------------------------------

  behavior FrameManager

      ----------  FrameManager . Init  ----------

      method Init ()
        --
        -- This method is called once at kernel startup time to initialize
        -- the one and only "frameManager" object.  
        --
        var i: int
          print ("Initializing Frame Manager...\n")
          framesInUse = new BitMap
          framesInUse.Init (NUMBER_OF_PHYSICAL_PAGE_FRAMES)
          numberFreeFrames = NUMBER_OF_PHYSICAL_PAGE_FRAMES
          frameManagerLock = new Mutex
          frameManagerLock.Init ()
          newFramesAvailable = new Condition
          newFramesAvailable.Init ()
          -- Check that the area to be used for paging contains zeros.
          -- The BLITZ emulator will initialize physical memory to zero, so
          -- if by chance the size of the kernel has gotten so large that
          -- it runs into the area reserved for pages, we will detect it.
          -- Note: this test is not 100%, but is included nonetheless.
          for i = PHYSICAL_ADDRESS_OF_FIRST_PAGE_FRAME
                   to PHYSICAL_ADDRESS_OF_FIRST_PAGE_FRAME+300
                   by 4
            if 0 != *(i asPtrTo int)
              FatalError ("Kernel code size appears to have grown too large and is overflowing into the frame region")
            endIf
          endFor
        endMethod

      ----------  FrameManager . Print  ----------

      method Print ()
        --
        -- Print which frames are allocated and how many are free.
        --
          frameManagerLock.Lock ()
          print ("FRAME MANAGER:\n")
          printIntVar ("  numberFreeFrames", numberFreeFrames)
          print ("  Here are the frames in use: \n    ")
          framesInUse.Print ()
          frameManagerLock.Unlock ()
        endMethod

      ----------  FrameManager . GetAFrame  ----------

      method GetAFrame () returns int
        --
        -- Allocate a single frame and return its physical address.  If no frames
        -- are currently available, wait until the request can be completed.
        --
          var f, frameAddr: int

          -- Acquire exclusive access to the frameManager data structure...
          frameManagerLock.Lock ()

          -- Wait until we have enough free frames to entirely satisfy the request...
          while numberFreeFrames < 1
            newFramesAvailable.Wait (&frameManagerLock)
          endWhile

          -- Find a free frame and allocate it...
          f = framesInUse.FindZeroAndSet ()
          numberFreeFrames = numberFreeFrames - 1

          -- Unlock...
          frameManagerLock.Unlock ()

          -- Compute and return the physical address of the frame...
          frameAddr = PHYSICAL_ADDRESS_OF_FIRST_PAGE_FRAME + (f * PAGE_SIZE)
          -- printHexVar ("GetAFrame returning frameAddr", frameAddr)
          return frameAddr
        endMethod

      ----------  FrameManager . GetNewFrames  ----------

      method GetNewFrames (aPageTable: ptr to AddrSpace, numFramesNeeded: int)
	  var
	    i: int
	    f: int
	    frameAddr: int
          frameManagerLock.Lock ()

	  while numberFreeFrames < numFramesNeeded
	    newFramesAvailable.Wait (&frameManagerLock)
	  endWhile

	  for (i = 0; i < numFramesNeeded; i = i + 1)
	    f = framesInUse.FindZeroAndSet ()
	    frameAddr = PHYSICAL_ADDRESS_OF_FIRST_PAGE_FRAME + (f * PAGE_SIZE)
	    aPageTable.SetFrameAddr(i, frameAddr)
	    numberFreeFrames = numberFreeFrames - 1
	  endFor
	  aPageTable.numberOfPages = numFramesNeeded
	  frameManagerLock.Unlock ()
        endMethod

      ----------  FrameManager . ReturnAllFrames  ----------

      method ReturnAllFrames (aPageTable: ptr to AddrSpace)
          var
	    pageToBeReturned: int
	    i: int
	    frameAddr: int
	    bitNumber: int
	  frameManagerLock.Lock ()
	  pageToBeReturned = aPageTable.numberOfPages
	  for (i = 0; i < pageToBeReturned; i = i + 1)
	    frameAddr = aPageTable.ExtractFrameAddr (i)
	    bitNumber = (frameAddr - PHYSICAL_ADDRESS_OF_FIRST_PAGE_FRAME) / PAGE_SIZE
	    framesInUse.ClearBit (bitNumber)
	    numberFreeFrames = numberFreeFrames + 1
	    newFramesAvailable.Broadcast (&frameManagerLock)
	  endFor
	  frameManagerLock.Unlock ()
        endMethod

    endBehavior

-----------------------------  AddrSpace  ---------------------------------

  behavior AddrSpace

      ----------  AddrSpace . Init  ----------

      method Init ()
        --
        -- Initialize this object.
        --
          numberOfPages = 0
          pageTable = new array of int { MAX_PAGES_PER_VIRT_SPACE of 0x00000003 }
        endMethod

      ----------  AddrSpace . Print  ----------

      method Print ()
        --
        -- Print this object.
        --
          var i: int
          print ("        addr        entry          Virtual    Physical   Undefined Bits  Dirty  Referenced  Writeable  Valid\n")
          print ("     ==========   ==========     ==========  ==========  ==============  =====  ==========  =========  =====\n")
          for i = 0 to numberOfPages-1
            print ("     ")
            printHex ((&pageTable[i]) asInteger)
            print (":  ")
            printHex (pageTable[i])
            print ("     ")
            printHex (i * PAGE_SIZE)   -- Virtual address
            print ("  ")
            printHex (self.ExtractFrameAddr (i))       -- Physical address
            print ("    ")
            if self.ExtractUndefinedBits (i) != 0
              printHex (self.ExtractUndefinedBits (i))
            else
              print ("          ")
            endIf
            print ("     ")
            if self.IsDirty (i)
              print ("YES")
            else
              print ("   ")
            endIf
            print ("      ")
            if self.IsReferenced (i)
              print ("YES")
            else
              print ("   ")
            endIf
            print ("         ")
            if self.IsWritable (i)
              print ("YES")
            else
              print ("   ")
            endIf
            print ("      ")
            if self.IsValid (i)
              print ("YES")
            else
              print ("   ")
            endIf
            nl ()
          endFor
        endMethod

      ----------  AddrSpace . ExtractFrameAddr  ----------

      method ExtractFrameAddr (entry: int) returns int
        --
        -- Return the physical address of the frame in the selected page
        -- table entry.
        --
          return (pageTable[entry] & 0xffffe000) 
        endMethod

      ----------  AddrSpace . ExtractUndefinedBits  ----------

      method ExtractUndefinedBits (entry: int) returns int
        --
        -- Return the undefined bits in the selected page table entry.
        --
          return (pageTable[entry] & 0x00001ff0) 
        endMethod

      ----------  AddrSpace . SetFrameAddr  ----------

      method SetFrameAddr (entry: int, frameAddr: int)
        --
        -- Set the physical address of the frame in the selected page
        -- table entry to the value of the argument "frameAddr".
        --
          pageTable[entry] = (pageTable[entry] & 0x00001fff) | frameAddr
      endMethod

      ----------  AddrSpace . IsDirty  ----------

      method IsDirty (entry: int) returns bool
        --
        -- Return true if the selected page table entry is marked "dirty".
        --
          return (pageTable[entry] & 0x00000008) != 0
        endMethod

      ----------  AddrSpace . IsReferenced  ----------

      method IsReferenced (entry: int) returns bool
        --
        -- Return true if the selected page table entry is marked "referenced".
        --
          return (pageTable[entry] & 0x00000004) != 0
        endMethod

      ----------  AddrSpace . IsWritable  ----------

      method IsWritable (entry: int) returns bool
        --
        -- Return true if the selected page table entry is marked "writable".
        --
          return (pageTable[entry] & 0x00000002) != 0
        endMethod

      ----------  AddrSpace . IsValid  ----------

      method IsValid (entry: int) returns bool
        --
        -- Return true if the selected page table entry is marked "valid".
        --
          return (pageTable[entry] & 0x00000001) != 0
        endMethod

      ----------  AddrSpace . SetDirty  ----------

      method SetDirty (entry: int)
        --
        -- Set the selected page table entry's "dirty" bit to 1.
        --
          pageTable[entry] = pageTable[entry] | 0x00000008
        endMethod

      ----------  AddrSpace . SetReferenced  ----------

      method SetReferenced (entry: int)
        --
        -- Set the selected page table entry's "referenced" bit to 1.
        --
          pageTable[entry] = pageTable[entry] | 0x00000004
        endMethod

      ----------  AddrSpace . SetWritable  ----------

      method SetWritable (entry: int)
        --
        -- Set the selected page table entry's "writable" bit to 1.
        --
          pageTable[entry] = pageTable[entry] | 0x00000002
        endMethod

      ----------  AddrSpace . SetValid  ----------

      method SetValid (entry: int)
        --
        -- Set the selected page table entry's "valid" bit to 1.
        --
          pageTable[entry] = pageTable[entry] | 0x00000001
        endMethod

      ----------  AddrSpace . ClearDirty  ----------

      method ClearDirty (entry: int)
        --
        -- Clear the selected page table entry's "dirty" bit.
        --
          pageTable[entry] = pageTable[entry] & ! 0x00000008
        endMethod

      ----------  AddrSpace . ClearReferenced  ----------

      method ClearReferenced (entry: int)
        --
        -- Clear the selected page table entry's "referenced" bit.
        --
          pageTable[entry] = pageTable[entry] & ! 0x00000004
        endMethod

      ----------  AddrSpace . ClearWritable  ----------

      method ClearWritable (entry: int)
        --
        -- Clear the selected page table entry's "writable" bit.
        --
          pageTable[entry] = pageTable[entry] & ! 0x00000002
        endMethod

      ----------  AddrSpace . ClearValid  ----------

      method ClearValid (entry: int)
        --
        -- Clear the selected page table entry's "valid" bit.
        --
          pageTable[entry] = pageTable[entry] & ! 0x00000001
        endMethod

      ----------  AddrSpace . SetToThisPageTable  ----------

      method SetToThisPageTable ()
        --
        -- This method sets the page table registers in the CPU to
        -- point to this page table.  Later, when paging is enabled,
        -- this will become the active virtual address space.
        --
          LoadPageTableRegs ((& pageTable[0]) asInteger, numberOfPages*4)
        endMethod

      ----------  AddrSpace . CopyBytesFromVirtual  ----------

      method CopyBytesFromVirtual (kernelAddr, virtAddr, numBytes: int)
                    returns int
        --
        -- This method copies data from a user's virtual address space
        -- to somewhere in the kernel space.  We assume that the
        -- pages of the virtual address space are resident in
        -- physical page frames.  This routine returns the number of bytes
        -- that were copied; if there was any problem with the virtual
        -- addressed data, it returns -1.
        --
          var copiedSoFar, virtPage, offset, fromAddr: int
          -- print ("CopyBytesFromVirtual called...\n")
          -- printHexVar ("  kernelAddr", kernelAddr)
          -- printHexVar ("  virtAddr", virtAddr)
          -- printIntVar ("  numBytes", numBytes)
          if numBytes == 0
            return 0
          elseIf numBytes < 0
            return -1
          endIf
          virtPage = virtAddr / PAGE_SIZE
          offset = virtAddr % PAGE_SIZE
          -- printHexVar ("  virtPage", virtPage)
          -- printHexVar ("  offset", offset)
          while true
            if virtPage >= numberOfPages
              print ("  Virtual page number is too large!!!\n")
              return -1
            endIf
            if ! self.IsValid (virtPage)
              print ("  Virtual page is not marked VALID!!!\n")
              return -1
            endIf
            fromAddr = self.ExtractFrameAddr (virtPage) + offset
            -- printHexVar ("  Copying bytes from physcial addr", fromAddr)
            while offset < PAGE_SIZE
              -- printHexVar ("  Copying a byte to physcial addr", kernelAddr)
              -- printChar (* (fromAddr asPtrTo char))
              * (kernelAddr asPtrTo char) = * (fromAddr asPtrTo char)
              offset = offset + 1
              kernelAddr = kernelAddr + 1
              fromAddr = fromAddr + 1
              copiedSoFar = copiedSoFar + 1
              if copiedSoFar == numBytes
                return copiedSoFar
              endIf
            endWhile
            virtPage = virtPage + 1
            offset = 0
          endWhile
        endMethod

      ----------  AddrSpace . CopyBytesToVirtual  ----------

      method CopyBytesToVirtual (virtAddr, kernelAddr, numBytes: int)
                    returns int
        --
        -- This method copies data from the kernel's address space to
        -- somewhere in the virtual address space.  We assume that the
        -- pages of the virtual address space are resident in physical
        -- page frames.  This routine returns the number of bytes
        -- that were copied; if there was any problem with the virtual
        -- addressed data, it returns -1.
        --
          var copiedSoFar, virtPage, offset, destAddr: int
          if numBytes == 0
            return 0
          elseIf numBytes < 0
            return -1
          endIf
          virtPage = virtAddr / PAGE_SIZE
          offset = virtAddr % PAGE_SIZE
          while true
            if (virtPage >= numberOfPages) ||
               (! self.IsValid (virtPage)) ||
               (! self.IsWritable (virtPage))
              return -1
            endIf
            destAddr = self.ExtractFrameAddr (virtPage) + offset
            while offset < PAGE_SIZE
              * (destAddr asPtrTo char) = * (kernelAddr asPtrTo char)
              offset = offset + 1
              kernelAddr = kernelAddr + 1
              destAddr = destAddr + 1
              copiedSoFar = copiedSoFar + 1
              if copiedSoFar == numBytes
                return copiedSoFar
              endIf
            endWhile
            virtPage = virtPage + 1
            offset = 0
          endWhile
        endMethod

      ----------  AddrSpace . GetStringFromVirtual  ----------

      method GetStringFromVirtual (kernelAddr: String, virtAddr, maxSize: int) returns int
        --
        -- This method is used to copy a String from virtual space into
        -- a given physical address in the kernel.  The "kernelAddr" should be
        -- a pointer to an "array of char" in the kernel's code.  This method
        -- copies up to "maxSize" characters from approriate page frame to this
        -- to the target array in the kernel.
        --
        -- Note: This method resets the "arraySize" word in the target.  It is
        -- assumed that the target array has enough space; no checking is done.
        -- The caller should supply a "maxSize" telling how many characters may
        -- be safely copied.
        --
        -- If there are problems, then -1 is returned.  Possible problems:
        --       The source array has more than "maxSize" elements
        --       The source page is invalid or out of range
        -- If all okay, then the number of characters copied is returned.
        --
          var sourceSize: int
          -- print ("GetStringFromVirtual called...\n")
          -- printHexVar ("  kernelAddr", kernelAddr asInteger)
          -- printHexVar ("  virtAddr", virtAddr)
          -- printIntVar ("  maxSize", maxSize)
          -- Begin by fetching the source size
          if self.CopyBytesFromVirtual ((&sourceSize) asInteger,
                                        virtAddr,
                                        4) < 4
            return -1
          endIf
          -- printIntVar ("  sourceSize", sourceSize)
          -- Make sure the source size is okay
          if sourceSize > maxSize
            return -1
          endIf
          -- Change the size of the destination array
          * (kernelAddr asPtrTo int) = sourceSize
          -- Next, get the characters
          return self.CopyBytesFromVirtual (kernelAddr asInteger + 4,
                                            virtAddr + 4,
                                            sourceSize)
        endMethod

    endBehavior

-----------------------------  TimerInterruptHandler  ---------------------------------

  function TimerInterruptHandler ()
    --
    -- This routine is called when a timer interrupt occurs.  Upon entry,
    -- interrupts are DISABLED.  Upon return, execution will return to
    -- the interrupted process, which necessarily had interrupts ENABLED.
    --
    -- (If you wish to turn time-slicing off, simply disable the call
    -- to "Yield" in the code below.  Threads will then execute until they
    -- call "Yield" explicitly, or until they call "Sleep".)
    --
      currentInterruptStatus = DISABLED
      -- printChar ('_')
      currentThread.Yield ()
      currentInterruptStatus = ENABLED
    endFunction

-----------------------------  DiskInterruptHandler  --------------------------

  function DiskInterruptHandler ()
    --
    -- This routine is called when a disk interrupt occurs.  It will
    -- signal the "semToSignalOnCompletion" Semaphore and return to
    -- the interrupted thread.
    --
    -- This is an interrupt handler.  As such, interrupts will be DISABLED
    -- for the duration of its execution.
    --

      currentInterruptStatus = DISABLED
      -- print ("DiskInterruptHandler invoked!\n")
      if diskDriver.semToSignalOnCompletion
        diskDriver.semToSignalOnCompletion.Up()
      endIf

    endFunction

-----------------------------  SerialInterruptHandler  --------------------------

  function SerialInterruptHandler ()
    --
    -- This routine is called when a serial interrupt occurs.  It will
    -- signal the "semToSignalOnCompletion" Semaphore and return to
    -- the interrupted thread.
    --
    -- This is an interrupt handler.  As such, interrupts will be DISABLED
    -- for the duration of its execution.
    --
      currentInterruptStatus = DISABLED

      if serialHasBeenInitialized
        serialDriver.serialNeedsAttention.Up ()
      endIf

      currentInterruptStatus = ENABLED

      return

    endFunction
-----------------------------  IllegalInstructionHandler  --------------------------

  function IllegalInstructionHandler ()
    --
    -- This routine is called when an IllegalInstruction exception occurs.  Upon entry,
    -- interrupts are DISABLED.  We should not return to the code that had
    -- the exception.
    --
      currentInterruptStatus = DISABLED
      ErrorInUserProcess ("An IllegalInstruction exception has occured while in user mode")
    endFunction

-----------------------------  ArithmeticExceptionHandler  --------------------------

  function ArithmeticExceptionHandler ()
    --
    -- This routine is called when an ArithmeticException occurs.  Upon entry,
    -- interrupts are DISABLED.  We should not return to the code that had
    -- the exception.
    --
      currentInterruptStatus = DISABLED
      ErrorInUserProcess ("An ArithmeticException exception has occured while in user mode")
    endFunction

-----------------------------  AddressExceptionHandler  --------------------------

  function AddressExceptionHandler ()
    --
    -- This routine is called when an AddressException occurs.  Upon entry,
    -- interrupts are DISABLED.  We should not return to the code that had
    -- the exception.
    --
      currentInterruptStatus = DISABLED
      ErrorInUserProcess ("An AddressException exception has occured while in user mode")
    endFunction

-----------------------------  PageInvalidExceptionHandler  --------------------------

  function PageInvalidExceptionHandler ()
    --
    -- This routine is called when a PageInvalidException occurs.  Upon entry,
    -- interrupts are DISABLED.  For now, we simply print a message and abort
    -- the thread.
    --
      currentInterruptStatus = DISABLED
      ErrorInUserProcess ("A PageInvalidException exception has occured while in user mode")
    endFunction

-----------------------------  PageReadonlyExceptionHandler  --------------------------

  function PageReadonlyExceptionHandler ()
    --
    -- This routine is called when a PageReadonlyException occurs.  Upon entry,
    -- interrupts are DISABLED.  For now, we simply print a message and abort
    -- the thread.
    --
      currentInterruptStatus = DISABLED
      ErrorInUserProcess ("A PageReadonlyException exception has occured while in user mode")
    endFunction

-----------------------------  PrivilegedInstructionHandler  --------------------------

  function PrivilegedInstructionHandler ()
    --
    -- This routine is called when a PrivilegedInstruction exception occurs.  Upon entry,
    -- interrupts are DISABLED.  We should not return to the code that had
    -- the exception.
    --
      currentInterruptStatus = DISABLED
      ErrorInUserProcess ("A PrivilegedInstruction exception has occured while in user mode")
    endFunction

-----------------------------  AlignmentExceptionHandler  --------------------------

  function AlignmentExceptionHandler ()
    --
    -- This routine is called when an AlignmentException occurs.  Upon entry,
    -- interrupts are DISABLED.  We should not return to the code that had
    -- the exception.
    --
      currentInterruptStatus = DISABLED
      ErrorInUserProcess ("An AlignmentException exception has occured while in user mode")
    endFunction

-----------------------------  ErrorInUserProcess  --------------------------

  function ErrorInUserProcess (errorMessage: String)
    --
    -- This routine is called when an error has occurred in a user-level
    -- process.  It prints the error message and terminates the process.
    --
      print ("\n**********  ")
      print (errorMessage)
      print ("  **********\n\n")

      -- Print some information about the offending process...
      if currentThread.myProcess
        currentThread.myProcess.Print ()
      else
        print ("  ERROR: currentThread.myProcess is null\n\n")
      endIf
      currentThread.Print ()

      -- Uncomment the following for even more information...
      -- threadManager.Print ()
      -- processManager.Print ()

      ProcessFinish (-1)
    endFunction

-----------------------------  SyscallTrapHandler  --------------------------

  function SyscallTrapHandler (syscallCodeNum, arg1, arg2, arg3, arg4: int) returns int
    --
    -- This routine is called when a syscall trap occurs.  Upon entry, interrupts
    -- will be DISABLED, paging is disabled, and we will be running in System mode.
    -- Upon return, execution will return to the user mode portion of this
    -- thread, which will have had interrupts ENABLED.
    --
      currentInterruptStatus = DISABLED
      /*****
      print ("Within SyscallTrapHandler: syscallCodeNum=")
      printInt (syscallCodeNum)
      print (", arg1=")
      printInt (arg1)
      print (", arg2=")
      printInt (arg2)
      print (", arg3=")
      printInt (arg3)
      print (", arg4=")
      printInt (arg4)
      nl ()
      *****/
      switch syscallCodeNum
        case SYSCALL_FORK:
          return Handle_Sys_Fork ()
        case SYSCALL_YIELD:
          Handle_Sys_Yield ()
          return 0
        case SYSCALL_EXEC:
          return Handle_Sys_Exec (arg1 asPtrTo array of char)
        case SYSCALL_JOIN:
          return Handle_Sys_Join (arg1)
        case SYSCALL_EXIT:
          Handle_Sys_Exit (arg1)
          return 0
        case SYSCALL_CREATE:
          return Handle_Sys_Create (arg1 asPtrTo array of char)
        case SYSCALL_OPEN:
          return Handle_Sys_Open (arg1 asPtrTo array of char)
        case SYSCALL_READ:
          return Handle_Sys_Read (arg1, arg2 asPtrTo char, arg3)
        case SYSCALL_WRITE:
          return Handle_Sys_Write (arg1, arg2 asPtrTo char, arg3)
        case SYSCALL_SEEK:
          return Handle_Sys_Seek (arg1, arg2)
        case SYSCALL_CLOSE:
          Handle_Sys_Close (arg1)
          return 0
        case SYSCALL_SHUTDOWN:
          Handle_Sys_Shutdown ()
          return 0
        default:
          print ("Syscall code = ")
          printInt (syscallCodeNum)
          nl ()
          FatalError ("Unknown syscall code from user thread")
      endSwitch
      return 0
    endFunction

-----------------------------  Handle_Sys_Exit  ---------------------------------

  function Handle_Sys_Exit (returnStatus: int)

      ProcessFinish (returnStatus)

    endFunction

-----------------------------  Handle_Sys_Shutdown  ---------------------------------

  function Handle_Sys_Shutdown ()
      FatalError ("Syscall 'Shutdown' was invoked by a user thread\n")
    endFunction

-----------------------------  Handle_Sys_Yield  ---------------------------------

  function Handle_Sys_Yield ()
      -- print ("Handle_Sys_Yield invoked!\n")
      currentThread.Yield ()
      return
-- print ("apres\n")

    endFunction

-----------------------------  Handle_Sys_Fork  ---------------------------------

  function Handle_Sys_Fork () returns int
      var
	childProcess: ptr to ProcessControlBlock
	childThread: ptr to Thread
	childFrameAddress: int
	parentFrameAddress: int
	i: int
	junk: int
	numPagesRequired: int
	oldUserPC: int
	childAddrSpace: AddrSpace

      -- disable the interrupts
      junk = SetInterruptsTo (DISABLED)

      -- allocate new thread and PCB objects
      childProcess = processManager.GetANewProcess ()
      childThread = threadManager.GetANewThread ()

      -- set up child PCB
      childProcess.myThread = childThread
      childProcess.parentsPid = currentThread.myProcess.pid

      -- set up child Thread
      childThread.status = READY
      childThread.myProcess = childProcess

      -- copy user register values to the child thread object
      SaveUserRegs (&childThread.userRegs[0])

      -- copy the fileDescriptor of the parent process
      for (i = 0; i < MAX_FILES_PER_PROCESS; i = i + 1)
        childProcess.fileDescriptor[i] = currentThread.myProcess.fileDescriptor[i]
      endFor

      -- re-enable the interrupts
      junk = SetInterruptsTo (ENABLED)

      -- initialize stack top pointer
      childThread.stackTop = & (childThread.systemStack[SYSTEM_STACK_SIZE - 1])

      -- initialize child address space
      childAddrSpace = new AddrSpace
      childAddrSpace.Init ()
      childProcess.addrSpace = childAddrSpace

      -- get new frames for the child's address space
      numPagesRequired = currentThread.myProcess.addrSpace.numberOfPages
      frameManager.GetNewFrames (&childProcess.addrSpace, numPagesRequired)
      
      -- copy virtual address space content from parent page by page
      for (i = 0; i < numPagesRequired; i = i + 1)
	parentFrameAddress = currentThread.myProcess.addrSpace.ExtractFrameAddr (i)
	childFrameAddress = childProcess.addrSpace.ExtractFrameAddr (i)
	MemoryCopy (childFrameAddress, parentFrameAddress, PAGE_SIZE)

	if currentThread.myProcess.addrSpace.IsWritable (i) == true
	  childProcess.addrSpace.SetWritable (i)
	endIf

	if currentThread.myProcess.addrSpace.IsWritable (i) == false
	  childProcess.addrSpace.ClearWritable (i)
	endIf
      endFor

      -- get oldUserPC
      oldUserPC = GetOldUserPCFromSystemStack ()

      -- fork the child thread
      childThread.Fork (ResumeChildAfterFork, oldUserPC)

      return childProcess.pid

    endFunction

-----------------------------  Handle_Sys_Join  ---------------------------------

  function Handle_Sys_Join (processID: int) returns int

      var
	i: int

      -- if processID points to a valid process present in processTable
      for (i = 0; i < MAX_NUMBER_OF_PROCESSES; i = i + 1)

	if (processID == processManager.processTable[i].pid && processID > -1)
-- a valid child found

	  if (processManager.processTable[i].parentsPid == currentThread.myProcess.pid)
-- print ("inside 2nd if statement \n")
	    return processManager.WaitForZombie (& processManager.processTable[i])
	  endIf
	endIf
      endFor
--print ("child not found \n")
      return -1
    endFunction

-----------------------------  Handle_Sys_Exec  ---------------------------------

  function Handle_Sys_Exec (filename: ptr to array of char) returns int
      var
      	newAddrSpace: AddrSpace
        openFile: ptr to OpenFile
        container: array [MAX_STRING_SIZE] of char
        filenamePointer: ptr to array of char
        numOfCharCopied: int
        initUserPC: int
        initUserStackTop: int
        initSystemStackTop: int
        junk: int
        emptySlotFound: bool
        i: int
        openFilePtr: ptr to OpenFile

      -- initialize filenameContainer
      container = new array of char {MAX_STRING_SIZE of 'a'}
      filenamePointer = &container

      -- get the filename from virtual space to kernal space
      numOfCharCopied = currentThread.myProcess.addrSpace.GetStringFromVirtual (filenamePointer, filename asInteger, MAX_STRING_SIZE)

      -- allocate the new address space
      newAddrSpace = new AddrSpace
      newAddrSpace.Init ()

      -- open the executable file
      openFile = fileManager.Open (filenamePointer)

      -- if open file is null, return -1
      if openFile == null
        return -1
      endIf

      -- create virtual address space and read the executable into it (done by openFile.LoadExecutable function)
      initUserPC = openFile.LoadExecutable (& newAddrSpace)

      -- if the file is not executable
      if initUserPC == -1
        return -1
      endIf

      -- search for the empty slot and put the new thing in
      emptySlotFound = false
      for (i = 0; i < MAX_FILES_PER_PROCESS; i = i + 1)
        if currentThread.myProcess.fileDescriptor[i] == null
          currentThread.myProcess.fileDescriptor[i] = openFilePtr
          emptySlotFound = true
          break
        endIf
      endFor

      -- if no empty slot found, return -1
      if emptySlotFound == false
        return -1
      endIf

      -- close the file
      fileManager.Close (openFile)

      -- return all frames for old address space
      frameManager.ReturnAllFrames (& currentThread.myProcess.addrSpace)

      -- connect this new address space to our PCB
      currentThread.myProcess.addrSpace = newAddrSpace

      -- set initUserStackTop
      initUserStackTop = currentThread.myProcess.addrSpace.numberOfPages * PAGE_SIZE

      -- reset the system stack top pointer
      initSystemStackTop = (&currentThread.systemStack [SYSTEM_STACK_SIZE - 1]) asInteger

      -- return to user-level
      junk = SetInterruptsTo (DISABLED)
      currentThread.myProcess.addrSpace.SetToThisPageTable ()
      currentThread.isUserThread = true

      BecomeUserThread (initUserStackTop, initUserPC, initSystemStackTop)

      return 3000
    endFunction

-----------------------------  Handle_Sys_Create  ---------------------------------

  function Handle_Sys_Create (filename: ptr to array of char) returns int
      var
	numOfCharCopied: int
	container: array [MAX_STRING_SIZE] of char
	kernelAddr: ptr to array of char
      container = new array of char {MAX_STRING_SIZE of 'a'}
      kernelAddr = &container
      numOfCharCopied =  currentThread.myProcess.addrSpace.GetStringFromVirtual (kernelAddr, filename asInteger, MAX_STRING_SIZE)
      print ("Handle_Sys_Create invoked!\n")
      printPtr ("virt addr of filename", filename)
      print ("filename = ")
      print (kernelAddr)
      nl ()
      -- NOT IMPLEMENTED
      return 4000
    endFunction

-----------------------------  Handle_Sys_Open  ---------------------------------

  function Handle_Sys_Open (filename: ptr to array of char) returns int
      
      var
	      numOfCharCopied: int
	      container: array [MAX_STRING_SIZE] of char
	      strKernelAddr: ptr to array of char
        i: int
        emptySlotIndex: int
        emptySlotFound: bool
        openFilePtr: ptr to OpenFile

      -- copy the filename string from virtual space to kernel space
      container = new array of char {MAX_STRING_SIZE of 'a'}
      strKernelAddr = &container
      numOfCharCopied =  currentThread.myProcess.addrSpace.GetStringFromVirtual (strKernelAddr, filename asInteger, MAX_STRING_SIZE)
      
      -- make sure that the length of the filename is valid
      if numOfCharCopied > MAX_STRING_SIZE
        return -1
      endIf

      -- locate an empty slot in this process's fileDescriptor array
      emptySlotFound = false
      for (i = 0; i < MAX_FILES_PER_PROCESS; i = i + 1)
        if currentThread.myProcess.fileDescriptor[i] == null
          emptySlotIndex = i
          emptySlotFound = true
          break
        endIf
      endFor
        
      -- if no empty slots, return -1
      if emptySlotFound == false
        return -1
      endIf

      -- check if it is to terminal
      if StrEqual (strKernelAddr, "terminal")
        openFilePtr = &fileManager.serialTerminalFile
        currentThread.myProcess.fileDescriptor[emptySlotIndex] = openFilePtr
        return emptySlotIndex
      endIf

      -- allocate an openFile object
      openFilePtr = fileManager.Open (strKernelAddr)

      -- if fails, return -1
      if openFilePtr == null
        return -1
      endIf

      -- set the entry in fileDescriptor array
      currentThread.myProcess.fileDescriptor[emptySlotIndex] = openFilePtr

      return emptySlotIndex
  endFunction

-----------------------------  Handle_Sys_Read  ---------------------------------

  function Handle_Sys_Read (fileDesc: int, buffer: ptr to char, sizeInBytes: int) returns int

      var
        openFilePtr: ptr to OpenFile
        virtAddr: int
        virtPage: int   -- virtual page number
        offset: int
        chunkSize: int
        thisChunkSize: int
        currentPos: int
        nextPosInFile: int
        sizeOfFileInBytes: int
        copiedSoFar: int  -- number of bytes read from the disk so far
        destAddr: int
        synchReadStatus: bool
        incomingChar: char
        -- i: int

      -- check that fileDesc is valid
      if fileDesc >= MAX_FILES_PER_PROCESS || fileDesc < 0
        return -1
      endIf

      -- the file referenced must have been already opened
      openFilePtr = currentThread.myProcess.fileDescriptor[fileDesc]
      if openFilePtr == null
        return -1
      endIf

      -- check required number of bytes valid (>= 0)
      if sizeInBytes < 0
        return -1
      endIf

      -- if it is the terminal
      if openFilePtr == &fileManager.serialTerminalFile

        -- invalid if trying to read from a place not in our address space
        if buffer asInteger >= PAGE_SIZE * MAX_PAGES_PER_VIRT_SPACE || buffer asInteger < 0
          return -1
        endIf

        -- initialize the variables
        incomingChar = '>'  -- this is just a random one
        copiedSoFar = 0
        virtAddr = buffer asInteger
        virtPage = virtAddr / PAGE_SIZE
        offset = virtAddr % PAGE_SIZE

        -- check for errors and deal with errors
        if virtPage < 0 && virtPage >= MAX_PAGES_PER_VIRT_SPACE || currentThread.myProcess.addrSpace.IsValid (virtPage) == false || currentThread.myProcess.addrSpace.IsWritable (virtPage) == false
          return -1
        endIf

        destAddr = currentThread.myProcess.addrSpace.ExtractFrameAddr (virtPage) + offset

        -- read into the get buffer
        while true

          -- if incomingChar == '\n' || incomingChar == '\r' || copiedSoFar == sizeInBytes
          --   return copiedSoFar
          -- endIf

/*
for (i = 0; i < SERIAL_GET_BUFFER_SIZE; i = i + 1)
  printInt (i)
  print (": ")
  printChar (serialDriver.getBuffer[i])
  nl ()
endFor 
printIntVar ("getBufferNextOut", serialDriver.getBufferNextOut)
printIntVar ("getBufferNextIn", serialDriver.getBufferNextIn)
*/

          incomingChar = serialDriver.GetChar ()
printCharVar ("incomingChar", incomingChar)
          if incomingChar == intToChar (4)
            return copiedSoFar
          endIf

          *(destAddr asPtrTo char) = incomingChar
          currentThread.myProcess.addrSpace.SetDirty (virtPage)
          currentThread.myProcess.addrSpace.SetReferenced (virtPage)
          copiedSoFar = copiedSoFar + 1

          -- check if we are done
          if copiedSoFar == sizeInBytes
            return copiedSoFar
          endIf

          -- update the variables (may go to the next page)
          virtAddr = virtAddr + 1
          virtPage = virtAddr / PAGE_SIZE
          offset = virtAddr % PAGE_SIZE

          -- check for errors and deal with errors
          if virtPage < 0 && virtPage >= MAX_PAGES_PER_VIRT_SPACE || currentThread.myProcess.addrSpace.IsValid (virtPage) == false || currentThread.myProcess.addrSpace.IsWritable (virtPage) == false
            return -1
          endIf

          destAddr = currentThread.myProcess.addrSpace.ExtractFrameAddr (virtPage) + offset
          
        endWhile

      endIf


      -- invalid if trying to read from a place not in our address space
      if buffer asInteger >= PAGE_SIZE * MAX_PAGES_PER_VIRT_SPACE || buffer asInteger < 0
        return -1
      endIf

      -- read stuff
      -- initialize the variables
      virtAddr = buffer asInteger
      virtPage = virtAddr / PAGE_SIZE
      offset = virtAddr % PAGE_SIZE
      copiedSoFar = 0
      chunkSize = 0

      -- nextPosInFile initially set to currentPos in the open file
      currentPos = openFilePtr.currentPos
      nextPosInFile = currentPos


      -- iteration # 1 -- error checking
      -- do nothing in this loop
      while true

        -- compute the size of this chunk
        thisChunkSize = PAGE_SIZE - offset
        sizeOfFileInBytes = openFilePtr.fcb.sizeOfFileInBytes

        if nextPosInFile + thisChunkSize > sizeOfFileInBytes
          thisChunkSize = sizeOfFileInBytes - nextPosInFile
        endIf

        if copiedSoFar + thisChunkSize > sizeInBytes
          thisChunkSize = sizeInBytes - copiedSoFar
        endIf

        -- see if we are done
        if thisChunkSize <= 0
          break
        endIf

        -- check for errors and deal with errors
        if virtPage < 0 && virtPage >= MAX_PAGES_PER_VIRT_SPACE || currentThread.myProcess.addrSpace.IsValid (virtPage) == false || currentThread.myProcess.addrSpace.IsWritable (virtPage) == false
          return -1
        endIf

        -- update the variables
        nextPosInFile = nextPosInFile + thisChunkSize
        copiedSoFar = copiedSoFar + thisChunkSize
        virtPage = virtPage + 1
        offset = 0

        -- see if we are done
        if copiedSoFar == sizeInBytes
          break
        endIf

      endWhile


      -- iteration # 2 -- actual processing
      -- iterate, conpute size of next chunk and process

      -- reset the variables
      -- prepare for second iteration
      virtAddr = buffer asInteger
      virtPage = virtAddr / PAGE_SIZE
      offset = virtAddr % PAGE_SIZE
      copiedSoFar = 0
      chunkSize = 0

      -- nextPosInFile initially set to currentPos in the open file
      currentPos = openFilePtr.currentPos
      nextPosInFile = currentPos

      while true

        -- compute the size of this chunk
        thisChunkSize = PAGE_SIZE - offset
        sizeOfFileInBytes = openFilePtr.fcb.sizeOfFileInBytes

        if nextPosInFile + thisChunkSize > sizeOfFileInBytes
          thisChunkSize = sizeOfFileInBytes - nextPosInFile
        endIf

        if copiedSoFar + thisChunkSize > sizeInBytes
          thisChunkSize = sizeInBytes - copiedSoFar
        endIf

        -- see if we are done
        if thisChunkSize <= 0
          break
        endIf

        -- do the read
        currentThread.myProcess.addrSpace.SetDirty (virtPage)
        currentThread.myProcess.addrSpace.SetReferenced (virtPage)
        destAddr = currentThread.myProcess.addrSpace.ExtractFrameAddr (virtPage) + offset
        synchReadStatus = fileManager.SynchRead (openFilePtr, destAddr, nextPosInFile, thisChunkSize)

        -- update the variables
        nextPosInFile = nextPosInFile + thisChunkSize
        copiedSoFar = copiedSoFar + thisChunkSize
        virtPage = virtPage + 1
        offset = 0

        -- see if we are done
        if copiedSoFar == sizeInBytes
          openFilePtr.currentPos = openFilePtr.currentPos + copiedSoFar
          return copiedSoFar
        endIf

      endWhile

      openFilePtr.currentPos = openFilePtr.currentPos + copiedSoFar
      return copiedSoFar

    endFunction

-----------------------------  Handle_Sys_Write  ---------------------------------

  function Handle_Sys_Write (fileDesc: int, buffer: ptr to char, sizeInBytes: int) returns int
      
      var
        openFilePtr: ptr to OpenFile
        virtAddr: int
        virtPage: int   -- virtual page number
        offset: int
        chunkSize: int
        thisChunkSize: int
        currentPos: int
        nextPosInFile: int
        sizeOfFileInBytes: int
        copiedSoFar: int  -- number of bytes read from the disk so far
        destAddr: int
        SynchWriteStatus: bool
        outgoingChar: char
        i: int

      -- check that fileDesc is valid
      if fileDesc >= MAX_FILES_PER_PROCESS || fileDesc < 0
        return -1
      endIf

      -- the file referenced must have been already opened
      openFilePtr = currentThread.myProcess.fileDescriptor[fileDesc]

      if openFilePtr == null
        return -1
      endIf

      -- check required number of bytes valid (>= 0)
      if sizeInBytes < 0
        return -1
      endIf

      -- if it is the terminal
      if openFilePtr == &fileManager.serialTerminalFile

        -- invalid if trying to read from a place not in our address space
        if buffer asInteger >= PAGE_SIZE * MAX_PAGES_PER_VIRT_SPACE || buffer asInteger < 0
          return -1
        endIf

        -- initialize the variables
        outgoingChar = '<'  -- this is just a random one
        copiedSoFar = 0
        virtAddr = buffer asInteger
        virtPage = virtAddr / PAGE_SIZE
        offset = virtAddr % PAGE_SIZE

        -- check for errors and deal with errors
        if virtPage < 0 && virtPage >= MAX_PAGES_PER_VIRT_SPACE || currentThread.myProcess.addrSpace.IsValid (virtPage) == false
          return -1
        endIf

        destAddr = currentThread.myProcess.addrSpace.ExtractFrameAddr (virtPage) + offset

        -- write to the buffer
        while true

/*
for (i = 0; i < SERIAL_PUT_BUFFER_SIZE; i = i + 1)
  printInt (i)
  print (": ")
  printChar (serialDriver.putBuffer[i])
  nl ()
endFor 

printIntVar ("putBufferNextIn", serialDriver.putBufferNextIn)
printIntVar ("putBufferNextOut", serialDriver.putBufferNextOut)
*/
          outgoingChar = *(destAddr asPtrTo char)

          if outgoingChar == intToChar (4)
            print ("oops!\n")
            return copiedSoFar
          endIf
          
          if outgoingChar == '\n'
            serialDriver.PutChar ('\r')
            return copiedSoFar
          endIf

i = 0

          serialDriver.PutChar (outgoingChar)
          currentThread.myProcess.addrSpace.SetReferenced (virtPage)
          copiedSoFar = copiedSoFar + 1

          -- check if we are done
          if copiedSoFar == sizeInBytes
            return copiedSoFar
          endIf

          -- update the variables (may go to the next page)
          virtAddr = virtAddr + 1
          virtPage = virtAddr / PAGE_SIZE
          offset = virtAddr % PAGE_SIZE

          -- check for errors and deal with errors
          if virtPage < 0 && virtPage >= MAX_PAGES_PER_VIRT_SPACE || currentThread.myProcess.addrSpace.IsValid (virtPage) == false
            return -1
          endIf

          destAddr = currentThread.myProcess.addrSpace.ExtractFrameAddr (virtPage) + offset
       
        endWhile

      endIf


      -- write stuff
      -- initialize the variables
      virtAddr = buffer asInteger
      virtPage = virtAddr / PAGE_SIZE
      offset = virtAddr % PAGE_SIZE
      copiedSoFar = 0
      chunkSize = 0

      -- nextPosInFile initially set to currentPos in the open file
      currentPos = openFilePtr.currentPos
      nextPosInFile = currentPos


      -- iteration # 1 -- error checking
      -- do nothing in this loop
      while true

        -- compute the size of this chunk
        thisChunkSize = PAGE_SIZE - offset
        sizeOfFileInBytes = openFilePtr.fcb.sizeOfFileInBytes

        if nextPosInFile + thisChunkSize > sizeOfFileInBytes
          thisChunkSize = sizeOfFileInBytes - nextPosInFile
        endIf

        if copiedSoFar + thisChunkSize > sizeInBytes
          thisChunkSize = sizeInBytes - copiedSoFar
        endIf

        -- see if we are done
        if thisChunkSize <= 0
          break
        endIf

        -- check for errors and deal with errors
        if virtPage < 0 && virtPage >= MAX_PAGES_PER_VIRT_SPACE || currentThread.myProcess.addrSpace.IsValid (virtPage) == false
          return -1
        endIf

        -- update the variables
        nextPosInFile = nextPosInFile + thisChunkSize
        copiedSoFar = copiedSoFar + thisChunkSize
        virtPage = virtPage + 1
        offset = 0

        -- see if we are done
        if copiedSoFar == sizeInBytes
          break
        endIf

      endWhile


      -- iteration # 2 -- actual processing
      -- iterate, conpute size of next chunk and process

      -- reset the variables
      -- prepare for second iteration
      virtAddr = buffer asInteger
      virtPage = virtAddr / PAGE_SIZE
      offset = virtAddr % PAGE_SIZE
      copiedSoFar = 0
      chunkSize = 0

      -- nextPosInFile initially set to currentPos in the open file
      currentPos = openFilePtr.currentPos
      nextPosInFile = currentPos

      while true

        -- compute the size of this chunk
        thisChunkSize = PAGE_SIZE - offset
        sizeOfFileInBytes = openFilePtr.fcb.sizeOfFileInBytes

        if nextPosInFile + thisChunkSize > sizeOfFileInBytes
          thisChunkSize = sizeOfFileInBytes - nextPosInFile
        endIf

        if copiedSoFar + thisChunkSize > sizeInBytes
          thisChunkSize = sizeInBytes - copiedSoFar
        endIf

        -- see if we are done
        if thisChunkSize <= 0
          break
        endIf

        -- do the write
        currentThread.myProcess.addrSpace.SetReferenced (virtPage)
        destAddr = currentThread.myProcess.addrSpace.ExtractFrameAddr (virtPage) + offset
        SynchWriteStatus = fileManager.SynchWrite (openFilePtr, destAddr, nextPosInFile, thisChunkSize)

        -- update the variables
        nextPosInFile = nextPosInFile + thisChunkSize
        copiedSoFar = copiedSoFar + thisChunkSize
        virtPage = virtPage + 1
        offset = 0

        -- see if we are done
        if copiedSoFar == sizeInBytes
          openFilePtr.currentPos = openFilePtr.currentPos + copiedSoFar
          return copiedSoFar
        endIf

      endWhile

    openFilePtr.currentPos = openFilePtr.currentPos + copiedSoFar
    return copiedSoFar

    endFunction

-----------------------------  Handle_Sys_Seek  ---------------------------------

  function Handle_Sys_Seek (fileDesc: int, newCurrentPos: int) returns int
      
      var
        openFilePtr: ptr to OpenFile
        sizeOfFileInBytes: int

      -- lock the fileManager
      fileManager.fileManagerLock.Lock ()

      -- check the fileDesc is valid
      if fileDesc >= MAX_FILES_PER_PROCESS || fileDesc < 0
        fileManager.fileManagerLock.Unlock ()
        return -1
      endIf

      -- get a pointer to the OpenFile object
      openFilePtr = currentThread.myProcess.fileDescriptor[fileDesc]

      -- make sure that the file is open
      if openFilePtr == null
        fileManager.fileManagerLock.Unlock ()
        return -1
      endIf

      sizeOfFileInBytes = openFilePtr.fcb.sizeOfFileInBytes

      -- the case where newCurrentPos = -1
      -- move the cursor to end of the file
      if newCurrentPos == -1
        openFilePtr.currentPos = sizeOfFileInBytes
        fileManager.fileManagerLock.Unlock ()
        return sizeOfFileInBytes
      endIf

      -- if the newCurrentPos > sizeOfFileInBytes, return error
      if newCurrentPos > sizeOfFileInBytes || newCurrentPos < -1
        fileManager.fileManagerLock.Unlock ()
        return -1
      endIf

      -- otherwise, newCurrentPos is valid
      -- set the currentPos of this openFile to newCurrentPos
      openFilePtr.currentPos = newCurrentPos

      -- unlock the fileManagerLock
      fileManager.fileManagerLock.Unlock ()

      return newCurrentPos

    endFunction

-----------------------------  Handle_Sys_Close  ---------------------------------

  function Handle_Sys_Close (fileDesc: int)
      
      var
        openFilePtr: ptr to OpenFile

      -- if fileDesc is not valid, just return
      if fileDesc >= MAX_FILES_PER_PROCESS || fileDesc < 0
        return
      endIf

      -- try to get a pointer to the openFile
      openFilePtr = currentThread.myProcess.fileDescriptor[fileDesc]
      
      -- set that entry in self.fileDescriptor array to null for later use
      currentThread.myProcess.fileDescriptor[fileDesc] = null

      -- if a file can be opened, close it
      if openFilePtr != null
        -- close that file only if it is not the terminal
        if openFilePtr != &fileManager.serialTerminalFile
          fileManager.Close (openFilePtr)
        endIf
      endIf

    endFunction

-----------------------------  DiskDriver  ---------------------------------

  const
    DISK_STATUS_BUSY                               = 0x00000000
    DISK_STATUS_OPERATION_COMPLETED_OK             = 0x00000001
    DISK_STATUS_OPERATION_COMPLETED_WITH_ERROR_1   = 0x00000002
    DISK_STATUS_OPERATION_COMPLETED_WITH_ERROR_2   = 0x00000003
    DISK_STATUS_OPERATION_COMPLETED_WITH_ERROR_3   = 0x00000004
    DISK_STATUS_OPERATION_COMPLETED_WITH_ERROR_4   = 0x00000005
    DISK_STATUS_OPERATION_COMPLETED_WITH_ERROR_5   = 0x00000006

    DISK_READ_COMMAND  = 0x00000001
    DISK_WRITE_COMMAND = 0x00000002

  behavior DiskDriver
    --
    -- There is only one instance of this class.  It provides "read" and "write"
    -- methods to transfer data from and to the disk.
    --
    -- In this implementation, all I/O is synchronous.  These methods perform
    -- busy-waiting until the disk operation has completed.

      ----------  DiskDriver . Init  ----------

      method Init ()
          print ("Initializing Disk Driver...\n")
          DISK_STATUS_WORD_ADDRESS = 0x00FFFF08 asPtrTo int
          DISK_COMMAND_WORD_ADDRESS = 0x00FFFF08 asPtrTo int
          DISK_MEMORY_ADDRESS_REGISTER = 0x00FFFF0C asPtrTo int
          DISK_SECTOR_NUMBER_REGISTER = 0x00FFFF10 asPtrTo int
          DISK_SECTOR_COUNT_REGISTER = 0x00FFFF14 asPtrTo int
          semToSignalOnCompletion = null
          semUsedInSynchMethods = new Semaphore
          semUsedInSynchMethods.Init (0)
          diskBusy = new Mutex
          diskBusy.Init ()
        endMethod

      ----------  DiskDriver . SynchReadSector  ----------

      method SynchReadSector  (sectorAddr, numberOfSectors, memoryAddr: int)
        --
        -- This method reads "numberOfSectors" sectors (of PAGE_SIZE bytes each)
        -- from the disk and places the data in memory, starting at "memoryAddr".
        -- It waits until the I/O is complete before returning.
        --
        -- If there is a (simulated) disk hardware failure, then this routine
        -- simply tries again in an infinite loop, until it succeeds.
        --
          -- print ("SynchReadSector called\n")
          -- printIntVar ("  sectorAddr", sectorAddr)
          -- printIntVar ("  numberOfSectors", numberOfSectors)
          -- printHexVar ("  memoryAddr", memoryAddr)
          diskBusy.Lock ()
          while true

            self.StartReadSector  (sectorAddr, numberOfSectors, memoryAddr,
                                   & semUsedInSynchMethods)
            semUsedInSynchMethods.Down ()

            -- Check the return status
            switch * DISK_STATUS_WORD_ADDRESS
              case DISK_STATUS_OPERATION_COMPLETED_OK:
                diskBusy.Unlock ()
                return
              case DISK_STATUS_OPERATION_COMPLETED_WITH_ERROR_1:
                FatalError ("Disk I/O error in SynchReadSector: Memory addr is not page-aligned or sector count is not positive")
              case DISK_STATUS_OPERATION_COMPLETED_WITH_ERROR_2:
                FatalError ("Disk I/O error in SynchReadSector: Attempt to access invalid memory address")
              case DISK_STATUS_OPERATION_COMPLETED_WITH_ERROR_3:
                FatalError ("Disk I/O error in SynchReadSector: Bad sectorAddr or sectorCount specifies non-existant sector")
              case DISK_STATUS_OPERATION_COMPLETED_WITH_ERROR_4:
                -- This case occurs when there is a hard or soft (simulated)
                -- hardware error while performing the disk operation.
                break
              case DISK_STATUS_OPERATION_COMPLETED_WITH_ERROR_5:
                FatalError ("Disk I/O error in SynchReadSector: Bad command word")
              default:
                FatalError ("SynchReadSector: Unexpected status code")
            endSwitch
            -- print ("\n\nIn SynchReadSector: A simulated disk I/O error occurred...\n\n")
          endWhile

        endMethod

      ----------  DiskDriver . StartReadSector  ----------

      method StartReadSector  (sectorAddr, numberOfSectors, memoryAddr: int,
                               whoCares: ptr to Semaphore)
        --
        -- This method reads "numberOfSectors" sectors (of PAGE_SIZE bytes each)
        -- from the disk and places the data in memory, starting at "memoryAddr".
        -- The "whoCares" argument is a Semaphore that we will signal after the
        -- I/O operation is complete; if null no thread will be notified.
        --
          -- print ("StartReadSector called\n")
          -- printIntVar ("  sectorAddr", sectorAddr)
          -- printIntVar ("  numberOfSectors", numberOfSectors)
          -- printHexVar ("  memoryAddr", memoryAddr)
          -- printHexVar ("  whoCares", whoCares asInteger)

          -- Save the semaphore
          semToSignalOnCompletion = whoCares

          -- Move the parameters to the disk and start the I/O
          * DISK_MEMORY_ADDRESS_REGISTER = memoryAddr
          * DISK_SECTOR_NUMBER_REGISTER = sectorAddr
          * DISK_SECTOR_COUNT_REGISTER = numberOfSectors
          * DISK_COMMAND_WORD_ADDRESS = DISK_READ_COMMAND    -- Starts the I/O
        endMethod

      ----------  DiskDriver . SynchWriteSector  ----------

      method SynchWriteSector  (sectorAddr, numberOfSectors, memoryAddr: int)
        --
        -- This method writes "numberOfSectors" sectors (of PAGE_SIZE bytes each)
        -- to the disk.  It waits until the I/O is complete before returning.
        --
        -- If there is a (simulated) disk hardware failure, then this routine
        -- simply tries again in an infinite loop, until it succeeds.
        --
          -- print ("SynchWriteSector called\n")
          -- printIntVar ("  sectorAddr", sectorAddr)
          -- printIntVar ("  numberOfSectors", numberOfSectors)
          -- printHexVar ("  memoryAddr", memoryAddr)
          diskBusy.Lock ()
          while true
            self.StartWriteSector  (sectorAddr, numberOfSectors, memoryAddr,
                                    & semUsedInSynchMethods)
            semUsedInSynchMethods.Down ()

            -- Check the return status
            switch * DISK_STATUS_WORD_ADDRESS
              case DISK_STATUS_OPERATION_COMPLETED_OK:
                diskBusy.Unlock ()
                return
              case DISK_STATUS_OPERATION_COMPLETED_WITH_ERROR_1:
                FatalError ("Disk I/O error in SynchWriteSector: Memory addr is not page-aligned or sector count is not positive")
              case DISK_STATUS_OPERATION_COMPLETED_WITH_ERROR_2:
                FatalError ("Disk I/O error in SynchWriteSector: Attempt to access invalid memory address")
              case DISK_STATUS_OPERATION_COMPLETED_WITH_ERROR_3:
                FatalError ("Disk I/O error in SynchWriteSector: Bad sectorAddr or sectorCount specifies non-existant sector")
              case DISK_STATUS_OPERATION_COMPLETED_WITH_ERROR_4:
                -- This case occurs when there is a hard or soft (simulated)
                -- hardware error while performing the disk operation.
                break
              case DISK_STATUS_OPERATION_COMPLETED_WITH_ERROR_5:
                FatalError ("Disk I/O error in SynchWriteSector: Bad command word")
              default:
                FatalError ("SynchWriteSector: Unexpected status code")
            endSwitch
            -- print ("\n\nIn SynchWriteSector: A simulated disk I/O error occurred...\n\n")
          endWhile

        endMethod

      ----------  DiskDriver . StartWriteSector  ----------

      method StartWriteSector  (sectorAddr, numberOfSectors, memoryAddr: int,
                                whoCares: ptr to Semaphore)
        --
        -- This method writes "numberOfSectors" sectors (of PAGE_SIZE bytes each)
        -- to the disk.  It returns immediately after starting the I/O.
        --
        -- The "whoCares" argument is a Semaphore that we will signal after the
        -- I/O operation is complete; if null no thread will be notified.
        --
          -- print ("SynchWriteSector called\n")
          -- printIntVar ("  sectorAddr", sectorAddr)
          -- printIntVar ("  numberOfSectors", numberOfSectors)
          -- printHexVar ("  memoryAddr", memoryAddr)

          -- Save the semaphore
          semToSignalOnCompletion = whoCares

          * DISK_MEMORY_ADDRESS_REGISTER = memoryAddr
          * DISK_SECTOR_NUMBER_REGISTER = sectorAddr
          * DISK_SECTOR_COUNT_REGISTER = numberOfSectors
          * DISK_COMMAND_WORD_ADDRESS = DISK_WRITE_COMMAND    -- Starts the I/O
        endMethod

    endBehavior

-----------------------------  FileManager  ---------------------------------

  behavior FileManager

      ----------  FileManager . Init  ----------

      method Init ()
        --
        -- This method is called once at kernel startup time to initialize
        -- the one and only "FileManager" object.  It is passed a pointer
        -- to a frame of memory. 
        --
        var i: int
          print ("Initializing File Manager...\n")
          fileManagerLock = new Mutex
          fileManagerLock.Init ()

          -- Initialize the FileControlBlock stuff
          fcbFreeList = new List [FileControlBlock]
          anFCBBecameFree = new Condition
          anFCBBecameFree.Init ()
          fcbTable = new array of FileControlBlock
                { MAX_NUMBER_OF_FILE_CONTROL_BLOCKS of new FileControlBlock }
          for i = 0 to MAX_NUMBER_OF_FILE_CONTROL_BLOCKS-1
            fcbTable[i].fcbID = i
            fcbTable[i].Init()
            fcbFreeList.AddToEnd (&fcbTable[i])
          endFor

          -- Initialize the OpenFile stuff
          openFileFreeList = new List [OpenFile]
          anOpenFileBecameFree = new Condition
          anOpenFileBecameFree.Init ()
          openFileTable = new array of OpenFile
                { MAX_NUMBER_OF_OPEN_FILES of new OpenFile }
          for i = 0 to MAX_NUMBER_OF_OPEN_FILES-1
            openFileTable[i].kind = FILE
            openFileFreeList.AddToEnd (&openFileTable[i])
          endFor

          -- Create the special "stdin/stdout" open file
          serialTerminalFile = new OpenFile
          serialTerminalFile.kind = TERMINAL

          -- Read in sector 0 from the disk.  This is the
          -- "Stub System" directory page.  We'll just keep this around
          -- forever, for use whenever we want to open a file.
          directoryFrame = frameManager.GetAFrame ()
          diskDriver.SynchReadSector (0,    -- sector to read
                                      1,    -- number of sectors to read
                                      directoryFrame)
        endMethod

      ----------  FileManager . Print  ----------

      method Print ()
        var i: int
          fileManagerLock.Lock ()           -- Need lock since we touch freeLists
          print ("Here is the FileControlBlock table...\n")
          for i = 0 to MAX_NUMBER_OF_FILE_CONTROL_BLOCKS-1
            print ("  ")
            printInt (i)
            print (":  ")
            fcbTable[i].Print()
          endFor
          print ("Here is the FREE list of FileControlBlocks:\n   ")
          fcbFreeList.ApplyToEach (printFCB)
          nl ()
          print ("Here is the OpenFile table...\n")
          for i = 0 to MAX_NUMBER_OF_OPEN_FILES-1
            print ("  ")
            printInt (i)
            print (":  0x")
            printHex ((& openFileTable[i]) asInteger)
            print (":  ")
            openFileTable[i].Print()
          endFor
          print ("Here is the FREE list of OpenFiles:\n")
          openFileFreeList.ApplyToEach (printOpen)
          fileManagerLock.Unlock ()
        endMethod

      ----------  FileManager . Open  ----------

      method Open (filename: String) returns ptr to OpenFile
      --
      -- This method is called to open a file.  It returns pointer to
      -- a newly allocated OpenFile.  It will set its "numberOfUsers"
      -- count to 1.
      --
      -- The file must already exist on the disk.  If it cannot be found,
      -- this method returns null.
      --
      -- This method is reentrant, and may block the caller.
      --
          var open: ptr to OpenFile
              fcb: ptr to FileControlBlock

          -- First, get an FCB that points to the file.
          -- This will increment fcb.numberOfUsers.

          fcb = fileManager.FindFCB (filename)
          if fcb == null
            return null
          endIf

          -- Next, allocate an OpenFile, waiting if necessary.
          fileManagerLock.Lock()
          while openFileFreeList.IsEmpty ()
            anOpenFileBecameFree.Wait (& fileManagerLock)
          endWhile
          open = openFileFreeList.Remove ()

          -- Connect it to this FCB and set its "numberOfUsers" count.
          open.fcb = fcb
          open.numberOfUsers = 1
          -- printHexVar ("open.fcb", open.fcb asInteger)

          open.currentPos = 0
          -- Release FileManagerLock and return a pointer to the OpenFile object
          fileManagerLock.Unlock()
          return open
        endMethod

      ----------  FileManager . FindFCB  ----------

      method FindFCB (filename: String) returns ptr to FileControlBlock
      --
      -- This method is called when opening a file.  The file may already be
      -- open; if so we return a pointer to the FCB that describes that
      -- file.  If not, we allocate a new FCB and return a pointer to it.
      --
      -- The file must already exist on the disk.  If it cannot be found,
      -- this method returns null.
      --
      -- The numberOfUsers field in the FCB is incremented.
      --
      -- This implementation is a "dummy" implementation, using the "stub"
      -- file system.  The stub file system has a single directory which
      -- is stored in sector 0.  When the fileManager was initialized, sector
      -- 0 was pre-read, so all we do here is consult it to locate the
      -- the file.  Then we store the relevant info in the FCB.
      --
      -- This method is reentrant, and may block the caller.
      --
          var i, start, numFiles, fileLen, fileNameLen: int
              fcb: ptr to FileControlBlock
              p: ptr to int
          -- print ("Opening a file...\n")

          -- Begin the search with byte 0 of the directory sector
          p = directoryFrame asPtrTo int

          -- Check the magic number
          i = *p
          p = p + 4
          if i != 0x73747562       -- in ASCII this is "stub"
            FatalError ("Magic number in sector 0 of stub file system is bad")
          endIf

          -- Get the number of files in the directory
          numFiles = *p
          p = p + 4
          i = *p     -- This is the nextFreeSector; ignore it.
          p = p + 4

          -- Run through each directory entry, looking for a match
          while numFiles > 0
            copyUnalignedWord (&start, p)
            p = p + 4
            copyUnalignedWord (&fileLen, p)
            p = p + 4
            copyUnalignedWord (&fileNameLen, p)
            p = p + 4
            if fileNameLen == filename arraySize &&
                  MemoryEqual (p asPtrTo char, &filename[0], fileNameLen)
              break
            endIf
            p = p + fileNameLen
            numFiles = numFiles - 1
          endWhile

          -- If we didn't find a matching name, return null
          if numFiles <= 0
            return null
          endIf

          fileManagerLock.Lock()
          -- See if there is an FCB for this file; if so return it.
          for i = 0 to MAX_NUMBER_OF_FILE_CONTROL_BLOCKS-1
            fcb = &fcbTable[i]
            if fcb.startingSectorOfFile == start
              fcb.numberOfUsers = fcb.numberOfUsers + 1
              fileManagerLock.Unlock()
              return fcb
            endIf
          endFor

          -- Get an unused FCB, waiting until one becomes available
          while fcbFreeList.IsEmpty ()
            anFCBBecameFree.Wait (& fileManagerLock)
          endWhile
          fcb = fcbFreeList.Remove ()

          -- Safe to unlock now, since no one else will use this FCB
          fileManagerLock.Unlock()

          -- Set the FCB up, and return it.
          fcb.startingSectorOfFile = start
          fcb.sizeOfFileInBytes = fileLen
          fcb.numberOfUsers = 1
          if fcb.relativeSectorInBuffer >= 0 || fcb.bufferIsDirty
            FatalError ("In FileManager.Open: a free FCB appears not to have been closed properly")
          endIf
          return fcb
        endMethod

      ----------  FileManager . Close  ----------
      --
      -- This method is called to close an OpenFile.  If there is a pending
      -- write (i.e., the buffer is dirty) then it is written out first.
      --
      -- The "numberOfUsers" for the OpenFile is decremented and, if zero,
      -- the OpenFile is freed.  If the OpenFile is freed, then the
      -- "numberOfUsers" for the FCB is decremented.  If it too is zero, the
      -- FCB is freed.
      --
      method Close (open: ptr to OpenFile)
          var fcb: ptr to FileControlBlock
          if open == & serialTerminalFile
            return
          endIf
          fileManagerLock.Lock()
          fileManager.Flush (open)
          fcb = open.fcb
          open.numberOfUsers = open.numberOfUsers - 1
          if open.numberOfUsers <= 0
            openFileFreeList.AddToEnd (open)
            anOpenFileBecameFree.Signal (& fileManagerLock)
            fcb.numberOfUsers = fcb.numberOfUsers - 1
            if fcb.numberOfUsers <= 0
              fcbFreeList.AddToEnd (fcb)
              anFCBBecameFree.Signal (& fileManagerLock)
            endIf
          endIf
          fileManagerLock.Unlock()
        endMethod

      ----------  FileManager . Flush  ----------

      method Flush (open: ptr to OpenFile)
        --
        -- This method writes out the buffer, if it is dirty.  This method
        -- assumes the caller already holds the fileManagerLock.
        --
          if open.fcb.bufferIsDirty
            if open.fcb.relativeSectorInBuffer < 0
              FatalError ("FileManager.Flush: buffer is dirty but relativeSectorInBuffer =  -1")
            endIf
            open.fcb.bufferIsDirty = false
            diskDriver.SynchWriteSector (
                       open.fcb.relativeSectorInBuffer+open.fcb.startingSectorOfFile,
                       1,
                       open.fcb.bufferPtr)
          endIf
        endMethod

      ----------  FileManager . SynchRead  ----------

      method SynchRead (open: ptr to OpenFile, 
                        targetAddr, bytePos, numBytes: int) returns bool
          --
          -- This method reads "numBytes" from this file and stores
          -- them at the address pointed to by "targetAddr".  If everything
          -- was read okay, it returns TRUE; if problems it returns FALSE.
          --
          -- It reads a page at a time into an internal buffer
          -- by calling "diskDriver.SynchReadSector".
          --
          var sector, offset, posInBuffer, bytesToMove: int
              fcb: ptr to FileControlBlock
          -- printHexVar ("SynchRead called  targetAddr", targetAddr)
          -- printIntVar ("                  bytePos", bytePos)
          -- printIntVar ("                  numBytes", numBytes)
          fileManagerLock.Lock()
          if ! open || ! open.fcb || open.fcb.startingSectorOfFile < 0
            FatalError ("FileManager.SynchRead: file not properly opened")
          endIf
          fcb = open.fcb
          while numBytes > 0
            -- At this point targetAddr and numBytes tell what work is left to do.
            -- printHexVar ("NEXT MOVE:\n  targetAddr", targetAddr)
            -- printIntVar ("  numBytes", numBytes)
            -- printHexVar ("          ", numBytes)
            -- printIntVar ("  startingSectorOfFile", fcb.startingSectorOfFile)
            -- printIntVar ("  relativeSectorInBuffer", fcb.relativeSectorInBuffer)
            -- printIntVar ("  bytePos", bytePos)
            -- printHexVar ("         ", bytePos)
            sector = bytePos / PAGE_SIZE
            offset = bytePos % PAGE_SIZE
            -- printIntVar ("  sector", sector)
            -- printIntVar ("  offset", offset)
            -- printHexVar ("        ", offset)
            if fcb.relativeSectorInBuffer != sector
              self.Flush (open)
              -- printIntVar ("  READING SECTOR", sector+startingSectorOfFile)
              diskDriver.SynchReadSector (sector + fcb.startingSectorOfFile,
                                           1,
                                           fcb.bufferPtr)
              fcb.relativeSectorInBuffer = sector
              fcb.bufferIsDirty = false    -- (This is unnecessary since Flush does it)
            endIf
            posInBuffer = fcb.bufferPtr + offset
            bytesToMove = Min (numBytes, PAGE_SIZE - offset)
            -- printHexVar ("  MOVING - targetAddr", targetAddr)
            -- printHexVar ("         - source addr (posInBuffer)", posInBuffer)
            -- printIntVar ("         - bytesToMove", bytesToMove)
            MemoryCopy (targetAddr, posInBuffer, bytesToMove)
            targetAddr = targetAddr + bytesToMove
            bytePos = bytePos + bytesToMove
            numBytes = numBytes - bytesToMove
            -- printHexVar ("  NEW targetAddr", targetAddr)
            -- printIntVar ("  NEW bytePos", bytePos)
            -- printHexVar ("             ", bytePos)
            -- printIntVar ("  NEW numBytes", numBytes)
            -- printHexVar ("              ", numBytes)
          endWhile
          fileManagerLock.Unlock()
          return true
        endMethod

      ----------  FileManager . SynchWrite  ----------

      method SynchWrite (open: ptr to OpenFile, 
                         sourceAddr, bytePos, numBytes: int) returns bool
          --
          -- This method reads "numBytes" from the memory address "sourceAddr"
          -- and writes them to the file at "bytePos".  If everything
          -- was written okay, it returns TRUE; if problems it returns FALSE.
          --
          -- It operates on an internal buffer by calling
          -- "diskDriver.SynchReadSector" and "diskDriver.SynchWriteSector".
          --
          var sector, offset, posInBuffer, bytesToMove: int
              fcb: ptr to FileControlBlock
          -- print ("--------------------\n")
          -- printHexVar ("SynchWrite called  sourceAddr", sourceAddr)
          -- printIntVar ("                   bytePos", bytePos)
          -- printIntVar ("                   numBytes", numBytes)
          fileManagerLock.Lock()
          if ! open || ! open.fcb || open.fcb.startingSectorOfFile < 0
            FatalError ("FileManager.SynchWrite: file not properly opened")
          endIf
          fcb = open.fcb
          while numBytes > 0
            -- At this point sourceAddr and numBytes tell what work is left to do.
            -- printHexVar ("NEXT MOVE:\n  sourceAddr", sourceAddr)
            -- printIntVar ("  numBytes", numBytes)
            -- printHexVar ("          ", numBytes)
            -- printIntVar ("  startingSectorOfFile", fcb.startingSectorOfFile)
            -- printIntVar ("  relativeSectorInBuffer", fcb.relativeSectorInBuffer)
            -- printIntVar ("  bytePos", bytePos)
            -- printHexVar ("         ", bytePos)
            sector = bytePos / PAGE_SIZE
            offset = bytePos % PAGE_SIZE
            -- printIntVar ("  sector", sector)
            -- printIntVar ("  offset", offset)
            -- printHexVar ("        ", offset)
            if fcb.relativeSectorInBuffer != sector
              -- print ("  calling flush\n")
              self.Flush (open)
            endIf
            posInBuffer = fcb.bufferPtr + offset
            bytesToMove = Min (numBytes, PAGE_SIZE - offset)
            if fcb.relativeSectorInBuffer == sector
              -- No need to read the sector first
            elseIf offset == 0 && bytesToMove == PAGE_SIZE
              -- No need to read the sector first
            else
              -- printIntVar ("  READING SECTOR", sector + fcb.startingSectorOfFile)
              diskDriver.SynchReadSector (sector + fcb.startingSectorOfFile,
                                           1,
                                           fcb.bufferPtr)
            endIf
            fcb.relativeSectorInBuffer = sector
            fcb.bufferIsDirty = true
            -- printHexVar ("  MOVING - sourceAddr", sourceAddr)
            -- printHexVar ("         - target (posInBuffer)", posInBuffer)
            -- printIntVar ("         - bytesToMove", bytesToMove)
            MemoryCopy (posInBuffer, sourceAddr, bytesToMove)
            sourceAddr = sourceAddr + bytesToMove
            bytePos = bytePos + bytesToMove
            numBytes = numBytes - bytesToMove
            -- printHexVar ("  NEW sourceAddr", sourceAddr)
            -- printIntVar ("  NEW bytePos", bytePos)
            -- printHexVar ("             ", bytePos)
            -- printIntVar ("  NEW numBytes", numBytes)
            -- printHexVar ("              ", numBytes)
          endWhile
          fileManagerLock.Unlock()
          -- print ("--------------------\n")
          return true
        endMethod

    endBehavior

  function copyUnalignedWord (destPtr, fromPtr: ptr to int)
      var from, dest: ptr to char
      from = fromPtr asPtrTo char
      dest = destPtr asPtrTo char
      *dest = *from
      *(dest+1) = *(from+1)
      *(dest+2) = *(from+2)
      *(dest+3) = *(from+3)
    endFunction

  function printFCB (fcb: ptr to FileControlBlock)
      printInt (fcb.fcbID)
      printChar (' ')
    endFunction

  function printOpen (open: ptr to OpenFile)
      print ("  0x")
      printHex (open asInteger)
      print (":  ")
      open.Print ()
    endFunction

-----------------------------  FileControlBlock  ---------------------------------

  behavior FileControlBlock

      ----------  FileControlBlock . Init  ----------
      --
      -- This method is called once at startup time.  It preallocates a buffer
      -- in memory which may be needed when I/O is done on the file.
      --
      method Init ()
          numberOfUsers = 0
          bufferPtr = frameManager.GetAFrame ()
          relativeSectorInBuffer = -1
          bufferIsDirty = false
          startingSectorOfFile = -1
         endMethod

      ----------  FileControlBlock . Print  ----------

      method Print ()
          print ("fcbID=")
          printInt (fcbID)
          print (",  numberOfUsers=")
          printInt (numberOfUsers)
          print (",  startingSector=")
          printInt (startingSectorOfFile)
          print (",  sizeOfFileInBytes=")
          printInt (sizeOfFileInBytes)
          print (",  bufferPtr=")
          printHex (bufferPtr)
          print (",  relativeSectorInBuffer=")
          printInt (relativeSectorInBuffer)
          nl ()
        endMethod

    endBehavior

-----------------------------  OpenFile  ---------------------------------

  behavior OpenFile

      ----------  OpenFile . Print  ----------

      method Print ()
          print ("    OPEN FILE:   currentPos=")
          printInt (currentPos)
          print (", fcb=")
          if fcb
            fcb.Print ()
          else
            print ("null\n")
          endIf
        endMethod

      ----------  OpenFile . ReadBytes  ----------

      method ReadBytes (targetAddr, numBytes: int) returns bool
          --
          -- This method reads "numBytes" from this file and stores
          -- them at the address pointed to by "targetAddr".  If everything
          -- was read okay, it returns TRUE; if problems it returns FALSE.
          --
          -- This method may block the caller.  This method is reentrant.
          --
          var pos: int
          -- printIntVar ("OpenFile.ReadBytes    currentPos", currentPos)
          fileManager.fileManagerLock.Lock ()
          pos = currentPos
          currentPos = currentPos + numBytes
          fileManager.fileManagerLock.Unlock ()
          return fileManager.SynchRead (self, targetAddr, pos, numBytes)
        endMethod

      ----------  OpenFile . ReadInt  ----------

      method ReadInt () returns int
          --
          -- Read the next 4 bytes from a file and return it as an integer.
          --
          var i: int
          if ! self.ReadBytes ((&i) asInteger, 4)
            FatalError ("Within ReadInt: ReadBytes failed")
          endIf
          return i
        endMethod

      ----------  OpenFile . LoadExecutable  ----------

      method LoadExecutable (addrSpace: ptr to AddrSpace) returns int
        --
        -- This method reads an executable "a.out" file from the disk, creates
        -- a virtual address space (with all pages resident in memory), and
        -- loads the executable program into the new address space.
        --
        -- The virtual address space will consist of (in this order):
        --     The environment page(s)     see NUMBER_OF_ENVIRONMENT_PAGES
        --     The text page(s)
        --     The data page(s)
        --     The bss page(s)
        --     The stack page(s)           see USER_STACK_SIZE_IN_PAGES
        --
        -- The given "addrSpace" is assumed to be empty; this method will
        -- allocate new frames and initialize the page table.
        --
        -- If all is okay, this method returns the initial PC, which will be
        -- the address of the first word of the first text page.
        --
        -- If any problems arise, this method returns -1.
        --
          var nextVirtPage, addr: int
              textSize, dataSize, bssSize, textStart, dataStart, bssStart: int
              i, textSizeInPages, dataSizeInPages, bssSizeInPages: int
 
          -- Make sure this address space is empty...
          if addrSpace.numberOfPages != 0
            FatalError ("LoadExecutable: This virtual address space is not empty")
          endIf
         
          -- Read and check the magic number...
          if  self.ReadInt () != 0x424C5A78    -- in ASCII: "BLZx"
            print ("LoadExecutable: Bad magic number\n")
            return -1
          endIf

          -- Read in the header info...
          textSize = self.ReadInt ()
          dataSize = self.ReadInt ()
          bssSize = self.ReadInt ()
          textStart = self.ReadInt ()
          dataStart = self.ReadInt ()
          bssStart = self.ReadInt ()

          -- Compute the size of the text segment in pages...
          if textSize % PAGE_SIZE != 0
            print ("LoadExecutable: The text segment size not a multiple of page size\n")
            return -1
          endIf
          textSizeInPages = textSize / PAGE_SIZE

          -- Environment pages are filled in by the OS; make sure the executable
          -- and the OS agree about how many there are to be...
          if textStart != NUMBER_OF_ENVIRONMENT_PAGES * PAGE_SIZE
            print ("LoadExecutable: The environment size does not match the 'loadAddr' info supplied to the linker\n")
            return -1
          endIf

          -- Compute the size of the data segment in pages...
          if dataSize % PAGE_SIZE != 0
            print ("LoadExecutable: The data segment size not a multiple of page size\n")
            return -1
          endIf
          if dataStart != textStart + textSize
            print ("LoadExecutable: dataStart != textStart + textSize\n")
            return -1
          endIf
          dataSizeInPages = dataSize / PAGE_SIZE

          -- Compute the size of the bss segment in pages...
          if bssSize % PAGE_SIZE != 0
            print ("LoadExecutable: The bss segment size not a multiple of page size\n")
            return -1
          endIf
          if bssStart != dataStart + dataSize
            print ("LoadExecutable: bssStart != dataStart + dataSize\n")
            return -1
          endIf
          bssSizeInPages = bssSize / PAGE_SIZE

          -- Compute how many pages to put into the address space...
          i = textSizeInPages + dataSizeInPages + bssSizeInPages +
              USER_STACK_SIZE_IN_PAGES + NUMBER_OF_ENVIRONMENT_PAGES

          /*****
          printIntVar ("NUMBER_OF_ENVIRONMENT_PAGES", NUMBER_OF_ENVIRONMENT_PAGES)
          printIntVar ("USER_STACK_SIZE_IN_PAGES", USER_STACK_SIZE_IN_PAGES)
          printIntVar ("textSizeInPages", textSizeInPages)
          printIntVar ("dataSizeInPages", dataSizeInPages)
          printIntVar ("bssSizeInPages", bssSizeInPages)
          printIntVar ("addrSpace.numberOfPages", addrSpace.numberOfPages)
          printIntVar ("Number of pages in this address space", i)
          printIntVar ("MAX_PAGES_PER_VIRT_SPACE", MAX_PAGES_PER_VIRT_SPACE)
          *****/

          -- Allocate the frames...
          if i > MAX_PAGES_PER_VIRT_SPACE
            print ("LoadExecutable: This virtual address space exceeds the limit\n")
            printIntVar ("LoadExecutable: Number of pages in this address space", i)
            printIntVar ("LoadExecutable: MAX_PAGES_PER_VIRT_SPACE", MAX_PAGES_PER_VIRT_SPACE)
            return -1
          endIf

          frameManager.GetNewFrames (addrSpace, i)

          -- print ("LoadExecutable: The address space just allocated...\n")
          -- addrSpace.Print ()

          -- Read and check the separator...
          if  self.ReadInt () != 0x2a2a2a2a
            print ("LoadExecutable: Invalid file format - missing separator (1)\n")
            frameManager.ReturnAllFrames (addrSpace)
            return -1
          endIf

          -- Read the text segment...
          nextVirtPage = textStart / PAGE_SIZE
          for i = 1 to textSizeInPages
            addr = addrSpace.ExtractFrameAddr (nextVirtPage)
            -- printIntVar ("About to read; nextVirtPage", nextVirtPage)
            -- printHexVar ("               addr", addr)
            if ! self.ReadBytes (addr, PAGE_SIZE)
              print ("LoadExecutable: Problems reading from file (text)\n")
              frameManager.ReturnAllFrames (addrSpace)
              return -1
            endIf
            addrSpace.ClearWritable (nextVirtPage)
            nextVirtPage = nextVirtPage + 1
          endFor

          -- Read and check the separator...
          if  self.ReadInt () != 0x2a2a2a2a
            print ("LoadExecutable: Invalid file format - missing separator (2)\n")
            frameManager.ReturnAllFrames (addrSpace)
            return -1
          endIf

          -- Read the data segment...
          for i = 1 to dataSizeInPages
            addr = addrSpace.ExtractFrameAddr (nextVirtPage)
            -- printIntVar ("About to read; nextVirtPage", nextVirtPage)
            -- printHexVar ("               addr", addr)
            if ! self.ReadBytes (addr, PAGE_SIZE)
              print ("LoadExecutable: Problems reading from file (text)\n")
              frameManager.ReturnAllFrames (addrSpace)
              return -1
            endIf
            nextVirtPage = nextVirtPage + 1
          endFor

          -- Read and check the separator...
          if  self.ReadInt () != 0x2a2a2a2a
            print ("LoadExecutable: Invalid file format - missing separator (3)\n")
            frameManager.ReturnAllFrames (addrSpace)
            return -1
          endIf

          -- Zero out the bss segment...
          addr = addrSpace.ExtractFrameAddr (nextVirtPage)
          -- printIntVar ("About to zero bss segment; page", nextVirtPage)
          -- printHexVar ("                           addr", addr)
          -- printHexVar ("                           bssSizeInBytes", bssSize)
          MemoryZero (addr, bssSize)

          -- User programs begin execution at the first word of the text segment...
          return textStart
        endMethod

  endBehavior


-----------------------------  SerialDriver  ---------------------------------

  behavior SerialDriver

      ----------  SerialDriver . Init  ----------

      method Init ()
        var
          i: int

        print ("Initializing Serial Driver...\n")

        -- initialize read and write registers
        serial_status_word_address = SERIAL_DATA_WORD_ADDRESS asPtrTo int
        serial_data_word_address = SERIAL_DATA_WORD_ADDRESS asPtrTo int

        -- initialize the field objects
        serialLock = new Mutex
        serialLock.Init ()

        getBuffer = new array of char {SERIAL_GET_BUFFER_SIZE of 'a'}
        getBufferSize = 0
        getBufferNextIn = 0
        getBufferNextOut = 0
        getCharacterAvail = new Condition
        getCharacterAvail.Init ()

        putBuffer = new array of char {SERIAL_PUT_BUFFER_SIZE of 'a'}
        putBufferSize = 0
        putBufferNextIn = 0
        putBufferNextOut = 0
        putBufferSem = new Semaphore
        putBufferSem.Init (SERIAL_PUT_BUFFER_SIZE)   -- one initial signal per buffer slot

        serialNeedsAttention = new Semaphore
        serialNeedsAttention.Init (0)         

        self.serialHandlerThread = new Thread
        self.serialHandlerThread.Init ("serialHandlerThread")
        self.serialHandlerThread.Fork (SerialHandlerFunction, 0)

        serialHasBeenInitialized = true

        for (i = 0; i < SERIAL_GET_BUFFER_SIZE; i = i + 1)
          getBuffer[i] = '-'
        endFor 

        for (i = 0; i < SERIAL_PUT_BUFFER_SIZE; i = i + 1)
          putBuffer[i] = '-'
        endFor 

        return

      endMethod

      ----------  SerialDriver . GetChar  ----------

      method GetChar () returns char
        var
         charFetched: char

        serialLock.Lock ()

        -- wait on the condition variable is there is nothing to fetch
        if getBufferSize == 0
          getCharacterAvail.Wait (&serialLock)
        endIf

        charFetched = getBuffer[getBufferNextOut]
printCharVar ("charFetched", charFetched)
        getBufferNextOut = (getBufferNextOut + 1) % SERIAL_GET_BUFFER_SIZE
        getBufferSize = (getBufferNextIn - getBufferNextOut) % SERIAL_GET_BUFFER_SIZE

        serialLock.Unlock ()

        return charFetched

      endMethod

      ----------  SerialDriver . PutChar  ----------

      method PutChar (value: char)

        var
          i: int

        -- wait on the semaphore if there is no space to put more chars
        if putBufferSize == SERIAL_PUT_BUFFER_SIZE
          putBufferSem.Down ()
        endIf

        serialLock.Lock ()

        putBuffer[putBufferNextIn] = value
        putBufferNextIn = (putBufferNextIn + 1) % SERIAL_PUT_BUFFER_SIZE
        putBufferSize = (putBufferNextIn - putBufferNextOut) % SERIAL_PUT_BUFFER_SIZE

i = 0
        serialLock.Unlock ()

        serialNeedsAttention.Up ()
        return

      endMethod

      ----------  SerialDriver . SerialHandler  ----------

      method SerialHandler ()

        var
          serial_status_word: int
          character_available_bit: int
          output_ready_bit: int
          inChar: char
          outChar: char

        while true
          -- wait until there is an event
          serialNeedsAttention.Down ()

          serial_status_word = *(SERIAL_STATUS_WORD_ADDRESS asPtrTo int)

          -- input stream:
          character_available_bit = serial_status_word & SERIAL_CHARACTER_AVAILABLE_BIT
 
          -- if character available, add it to the input buffer
          if character_available_bit == 1

            -- first get a lock on accessing the shared buffer
            serialLock.Lock ()

            -- get input character
            inChar = intToChar (*(SERIAL_DATA_WORD_ADDRESS asPtrTo int))

            -- if buffer full already, drop this character
            if getBufferSize == SERIAL_GET_BUFFER_SIZE
              print ("\nSerial input buffer overrun - character '")
              printChar (inChar)
              print ("' was ignored\n")

            -- if not, add it to the buffer
            else

              getBuffer[getBufferNextIn] = inChar
              getBufferNextIn = (getBufferNextIn + 1) % SERIAL_GET_BUFFER_SIZE
              getCharacterAvail.Signal (& serialLock)
            endIf

            serialLock.Unlock ()

          endIf
        
          -- output stream:
          output_ready_bit = serial_status_word & SERIAL_OUTPUT_READY_BIT

          if output_ready_bit == 2

            serialLock.Lock ()

            -- check if there are characters queued for output
            if putBufferSize != 0
              outChar = putBuffer[putBufferNextOut]

              *(SERIAL_DATA_WORD_ADDRESS asPtrTo int) = charToInt (outChar)
              putBufferNextOut = (putBufferNextOut + 1) % SERIAL_PUT_BUFFER_SIZE
              putBufferSize = putBufferSize - 1
            endIf

            putBufferSem.Up ()

            serialLock.Unlock ()

          endIf

        endWhile        

      endMethod

  endBehavior

endCode
