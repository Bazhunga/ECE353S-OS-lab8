! Name of package being compiled: Kernel
! 
! Symbols from runtime.s
	.import	_putString
	.import	_heapInitialize
	.import	_heapAlloc
	.import	_heapFree
	.import	_IsKindOf
	.import	_RestoreCatchStack
	.import	_PerformThrow
	.import	_runtimeErrorOverflow
	.import	_runtimeErrorZeroDivide
	.import	_runtimeErrorNullPointer
	.import	_runtimeErrorUninitializedObject
	.import	_runtimeErrorWrongObject
	.import	_runtimeErrorWrongObject2
	.import	_runtimeErrorWrongObject3
	.import	_runtimeErrorBadObjectSize
	.import	_runtimeErrorDifferentArraySizes
	.import	_runtimeErrorWrongArraySize
	.import	_runtimeErrorUninitializedArray
	.import	_runtimeErrorBadArrayIndex
	.import	_runtimeErrorNullPointerDuringCall
	.import	_runtimeErrorArrayCountNotPositive
	.import	_runtimeErrorRestoreCatchStackError
	.text
! ErrorDecls
	.import	_Error_P_System_UncaughtThrowError
	.align
! Functions imported from other packages
	.import	print
	.import	printInt
	.import	printHex
	.import	printChar
	.import	printBool
	.import	_P_System_MemoryEqual
	.import	_P_System_StrEqual
	.import	_P_System_StrCopy
	.import	_P_System_StrCmp
	.import	_P_System_Min
	.import	_P_System_Max
	.import	_P_System_printIntVar
	.import	_P_System_printHexVar
	.import	_P_System_printBoolVar
	.import	_P_System_printCharVar
	.import	_P_System_printPtr
	.import	_P_System_nl
	.import	_P_System_PrintMemory
	.import	Cleari
	.import	Seti
	.import	Wait
	.import	RuntimeExit
	.import	getCatchStack
	.import	MemoryZero
	.import	MemoryCopy
	.import	_P_System_KPLSystemInitialize
	.import	_P_System_KPLMemoryAlloc
	.import	_P_System_KPLMemoryFree
	.import	_P_System_KPLUncaughtThrow
	.import	_P_System_KPLIsKindOf
	.import	_P_System_KPLSystemError
	.import	_P_BitMap_TestBitMap
! Externally visible functions in this package
	.export	_P_Kernel_TimerInterruptHandler
	.export	_P_Kernel_DiskInterruptHandler
	.export	_P_Kernel_SerialInterruptHandler
	.export	_P_Kernel_IllegalInstructionHandler
	.export	_P_Kernel_ArithmeticExceptionHandler
	.export	_P_Kernel_AddressExceptionHandler
	.export	_P_Kernel_PageInvalidExceptionHandler
	.export	_P_Kernel_PageReadonlyExceptionHandler
	.export	_P_Kernel_PrivilegedInstructionHandler
	.export	_P_Kernel_AlignmentExceptionHandler
	.export	_P_Kernel_SyscallTrapHandler
	.export	_P_Kernel_Handle_Sys_Fork
	.export	_P_Kernel_Handle_Sys_Yield
	.export	_P_Kernel_Handle_Sys_Exec
	.export	_P_Kernel_Handle_Sys_Join
	.export	_P_Kernel_Handle_Sys_Exit
	.export	_P_Kernel_Handle_Sys_Create
	.export	_P_Kernel_Handle_Sys_Open
	.export	_P_Kernel_Handle_Sys_Read
	.export	_P_Kernel_Handle_Sys_Write
	.export	_P_Kernel_Handle_Sys_Seek
	.export	_P_Kernel_Handle_Sys_Close
	.export	_P_Kernel_Handle_Sys_Shutdown
	.export	_P_Kernel_InitializeScheduler
	.export	_P_Kernel_Run
	.export	_P_Kernel_PrintReadyList
	.export	_P_Kernel_ThreadStartMain
	.export	_P_Kernel_ThreadFinish
	.export	_P_Kernel_FatalError_ThreadVersion
	.export	_P_Kernel_SetInterruptsTo
	.export	_P_Kernel_ProcessFinish
	.export	_P_Kernel_InitFirstProcess
	.export	_P_Kernel_StartUserProcess
	.export	_P_Kernel_ResumeChildAfterFork
	.import	Switch
	.import	ThreadStartUp
	.import	GetOldUserPCFromSystemStack
	.import	LoadPageTableRegs
	.import	SaveUserRegs
	.import	RestoreUserRegs
	.import	BecomeUserThread
! The following class and its methods are from other packages
	.import	_P_System_Object
! The following class and its methods are from other packages
	.import	_P_BitMap_BitMap
! The following class and its methods are from other packages
	.import	_P_List_List
! The following class and its methods are from other packages
	.import	_P_List_Listable
! The following class and its methods are from this package
	.export	_P_Kernel_Semaphore
	.export	_Method_P_Kernel_Semaphore_1
	.export	_Method_P_Kernel_Semaphore_2
	.export	_Method_P_Kernel_Semaphore_3
! The following class and its methods are from this package
	.export	_P_Kernel_Mutex
	.export	_Method_P_Kernel_Mutex_1
	.export	_Method_P_Kernel_Mutex_2
	.export	_Method_P_Kernel_Mutex_3
	.export	_Method_P_Kernel_Mutex_4
! The following class and its methods are from this package
	.export	_P_Kernel_Condition
	.export	_Method_P_Kernel_Condition_1
	.export	_Method_P_Kernel_Condition_2
	.export	_Method_P_Kernel_Condition_3
	.export	_Method_P_Kernel_Condition_4
! The following class and its methods are from this package
	.export	_P_Kernel_Thread
	.export	_Method_P_Kernel_Thread_1
	.export	_Method_P_Kernel_Thread_2
	.export	_Method_P_Kernel_Thread_3
	.export	_Method_P_Kernel_Thread_4
	.export	_Method_P_Kernel_Thread_5
	.export	_Method_P_Kernel_Thread_6
! The following class and its methods are from this package
	.export	_P_Kernel_ThreadManager
	.export	_Method_P_Kernel_ThreadManager_1
	.export	_Method_P_Kernel_ThreadManager_2
	.export	_Method_P_Kernel_ThreadManager_3
	.export	_Method_P_Kernel_ThreadManager_4
! The following class and its methods are from this package
	.export	_P_Kernel_ProcessControlBlock
	.export	_Method_P_Kernel_ProcessControlBlock_1
	.export	_Method_P_Kernel_ProcessControlBlock_2
	.export	_Method_P_Kernel_ProcessControlBlock_3
! The following class and its methods are from this package
	.export	_P_Kernel_ProcessManager
	.export	_Method_P_Kernel_ProcessManager_1
	.export	_Method_P_Kernel_ProcessManager_2
	.export	_Method_P_Kernel_ProcessManager_3
	.export	_Method_P_Kernel_ProcessManager_4
	.export	_Method_P_Kernel_ProcessManager_5
	.export	_Method_P_Kernel_ProcessManager_6
	.export	_Method_P_Kernel_ProcessManager_7
! The following class and its methods are from this package
	.export	_P_Kernel_FrameManager
	.export	_Method_P_Kernel_FrameManager_1
	.export	_Method_P_Kernel_FrameManager_2
	.export	_Method_P_Kernel_FrameManager_3
	.export	_Method_P_Kernel_FrameManager_4
	.export	_Method_P_Kernel_FrameManager_5
! The following class and its methods are from this package
	.export	_P_Kernel_AddrSpace
	.export	_Method_P_Kernel_AddrSpace_1
	.export	_Method_P_Kernel_AddrSpace_2
	.export	_Method_P_Kernel_AddrSpace_3
	.export	_Method_P_Kernel_AddrSpace_4
	.export	_Method_P_Kernel_AddrSpace_5
	.export	_Method_P_Kernel_AddrSpace_6
	.export	_Method_P_Kernel_AddrSpace_7
	.export	_Method_P_Kernel_AddrSpace_8
	.export	_Method_P_Kernel_AddrSpace_9
	.export	_Method_P_Kernel_AddrSpace_10
	.export	_Method_P_Kernel_AddrSpace_11
	.export	_Method_P_Kernel_AddrSpace_12
	.export	_Method_P_Kernel_AddrSpace_13
	.export	_Method_P_Kernel_AddrSpace_14
	.export	_Method_P_Kernel_AddrSpace_15
	.export	_Method_P_Kernel_AddrSpace_16
	.export	_Method_P_Kernel_AddrSpace_17
	.export	_Method_P_Kernel_AddrSpace_18
	.export	_Method_P_Kernel_AddrSpace_19
	.export	_Method_P_Kernel_AddrSpace_20
	.export	_Method_P_Kernel_AddrSpace_21
! The following class and its methods are from this package
	.export	_P_Kernel_DiskDriver
	.export	_Method_P_Kernel_DiskDriver_1
	.export	_Method_P_Kernel_DiskDriver_2
	.export	_Method_P_Kernel_DiskDriver_3
	.export	_Method_P_Kernel_DiskDriver_4
	.export	_Method_P_Kernel_DiskDriver_5
! The following class and its methods are from this package
	.export	_P_Kernel_FileManager
	.export	_Method_P_Kernel_FileManager_1
	.export	_Method_P_Kernel_FileManager_2
	.export	_Method_P_Kernel_FileManager_3
	.export	_Method_P_Kernel_FileManager_4
	.export	_Method_P_Kernel_FileManager_5
	.export	_Method_P_Kernel_FileManager_6
	.export	_Method_P_Kernel_FileManager_7
	.export	_Method_P_Kernel_FileManager_8
! The following class and its methods are from this package
	.export	_P_Kernel_FileControlBlock
	.export	_Method_P_Kernel_FileControlBlock_1
	.export	_Method_P_Kernel_FileControlBlock_2
! The following class and its methods are from this package
	.export	_P_Kernel_OpenFile
	.export	_Method_P_Kernel_OpenFile_1
	.export	_Method_P_Kernel_OpenFile_2
	.export	_Method_P_Kernel_OpenFile_3
	.export	_Method_P_Kernel_OpenFile_4
! The following class and its methods are from this package
	.export	_P_Kernel_SerialDriver
	.export	_Method_P_Kernel_SerialDriver_1
	.export	_Method_P_Kernel_SerialDriver_2
	.export	_Method_P_Kernel_SerialDriver_3
	.export	_Method_P_Kernel_SerialDriver_4
! The following interfaces are from other packages
! The following interfaces are from this package
! Globals imported from other packages
	.import	_P_System_FatalError
! Global variables in this package
	.data
	.export	_P_Kernel_readyList
	.export	_P_Kernel_currentThread
	.export	_P_Kernel_mainThread
	.export	_P_Kernel_idleThread
	.export	_P_Kernel_threadsToBeDestroyed
	.export	_P_Kernel_currentInterruptStatus
	.export	_P_Kernel_processManager
	.export	_P_Kernel_threadManager
	.export	_P_Kernel_frameManager
	.export	_P_Kernel_diskDriver
	.export	_P_Kernel_serialDriver
	.export	_P_Kernel_serialHasBeenInitialized
	.export	_P_Kernel_fileManager
_P_Kernel_readyList:
	.skip	12
_P_Kernel_currentThread:
	.skip	4
_P_Kernel_mainThread:
	.skip	4164
_P_Kernel_idleThread:
	.skip	4164
_P_Kernel_threadsToBeDestroyed:
	.skip	12
_P_Kernel_currentInterruptStatus:
	.skip	4
_P_Kernel_processManager:
	.skip	1760
_P_Kernel_threadManager:
	.skip	41696
_P_Kernel_frameManager:
	.skip	56
_P_Kernel_diskDriver:
	.skip	68
_P_Kernel_serialDriver:
	.skip	4308
_P_Kernel_fileManager:
	.skip	800
_P_Kernel_serialHasBeenInitialized:
	.skip	1
	.align
! String constants
_StringConst_194:
	.word	22			! length
	.ascii	"char output available\n"
	.align
_StringConst_193:
	.word	14			! length
	.ascii	"\' was ignored\n"
	.align
_StringConst_192:
	.word	42			! length
	.ascii	"\nSerial input buffer overrun - character \'"
	.align
_StringConst_191:
	.word	20			! length
	.ascii	"char read available\n"
	.align
_StringConst_190:
	.word	19			! length
	.ascii	"serialHandlerThread"
	.align
_StringConst_189:
	.word	30			! length
	.ascii	"Initializing Serial Driver...\n"
	.align
_StringConst_188:
	.word	60			! length
	.ascii	"LoadExecutable: Invalid file format - missing separator (3)\n"
	.align
_StringConst_187:
	.word	50			! length
	.ascii	"LoadExecutable: Problems reading from file (text)\n"
	.align
_StringConst_186:
	.word	60			! length
	.ascii	"LoadExecutable: Invalid file format - missing separator (2)\n"
	.align
_StringConst_185:
	.word	50			! length
	.ascii	"LoadExecutable: Problems reading from file (text)\n"
	.align
_StringConst_184:
	.word	60			! length
	.ascii	"LoadExecutable: Invalid file format - missing separator (1)\n"
	.align
_StringConst_183:
	.word	40			! length
	.ascii	"LoadExecutable: MAX_PAGES_PER_VIRT_SPACE"
	.align
_StringConst_182:
	.word	53			! length
	.ascii	"LoadExecutable: Number of pages in this address space"
	.align
_StringConst_181:
	.word	61			! length
	.ascii	"LoadExecutable: This virtual address space exceeds the limit\n"
	.align
_StringConst_180:
	.word	49			! length
	.ascii	"LoadExecutable: bssStart != dataStart + dataSize\n"
	.align
_StringConst_179:
	.word	65			! length
	.ascii	"LoadExecutable: The bss segment size not a multiple of page size\n"
	.align
_StringConst_178:
	.word	50			! length
	.ascii	"LoadExecutable: dataStart != textStart + textSize\n"
	.align
_StringConst_177:
	.word	66			! length
	.ascii	"LoadExecutable: The data segment size not a multiple of page size\n"
	.align
_StringConst_176:
	.word	95			! length
	.ascii	"LoadExecutable: The environment size does not match the \'loadAddr\' info supplied to the linker\n"
	.align
_StringConst_175:
	.word	66			! length
	.ascii	"LoadExecutable: The text segment size not a multiple of page size\n"
	.align
_StringConst_174:
	.word	33			! length
	.ascii	"LoadExecutable: Bad magic number\n"
	.align
_StringConst_173:
	.word	55			! length
	.ascii	"LoadExecutable: This virtual address space is not empty"
	.align
_StringConst_172:
	.word	32			! length
	.ascii	"Within ReadInt: ReadBytes failed"
	.align
_StringConst_171:
	.word	5			! length
	.ascii	"null\n"
	.align
_StringConst_170:
	.word	6			! length
	.ascii	", fcb="
	.align
_StringConst_169:
	.word	28			! length
	.ascii	"    OPEN FILE:   currentPos="
	.align
_StringConst_168:
	.word	26			! length
	.ascii	",  relativeSectorInBuffer="
	.align
_StringConst_167:
	.word	13			! length
	.ascii	",  bufferPtr="
	.align
_StringConst_166:
	.word	21			! length
	.ascii	",  sizeOfFileInBytes="
	.align
_StringConst_165:
	.word	18			! length
	.ascii	",  startingSector="
	.align
_StringConst_164:
	.word	17			! length
	.ascii	",  numberOfUsers="
	.align
_StringConst_163:
	.word	6			! length
	.ascii	"fcbID="
	.align
_StringConst_162:
	.word	48			! length
	.ascii	"FileManager.SynchWrite: file not properly opened"
	.align
_StringConst_161:
	.word	47			! length
	.ascii	"FileManager.SynchRead: file not properly opened"
	.align
_StringConst_160:
	.word	67			! length
	.ascii	"FileManager.Flush: buffer is dirty but relativeSectorInBuffer =  -1"
	.align
_StringConst_159:
	.word	72			! length
	.ascii	"In FileManager.Open: a free FCB appears not to have been closed properly"
	.align
_StringConst_158:
	.word	51			! length
	.ascii	"Magic number in sector 0 of stub file system is bad"
	.align
_StringConst_157:
	.word	36			! length
	.ascii	"Here is the FREE list of OpenFiles:\n"
	.align
_StringConst_156:
	.word	3			! length
	.ascii	":  "
	.align
_StringConst_155:
	.word	5			! length
	.ascii	":  0x"
	.align
_StringConst_154:
	.word	2			! length
	.ascii	"  "
	.align
_StringConst_153:
	.word	30			! length
	.ascii	"Here is the OpenFile table...\n"
	.align
_StringConst_152:
	.word	47			! length
	.ascii	"Here is the FREE list of FileControlBlocks:\n   "
	.align
_StringConst_151:
	.word	3			! length
	.ascii	":  "
	.align
_StringConst_150:
	.word	2			! length
	.ascii	"  "
	.align
_StringConst_149:
	.word	38			! length
	.ascii	"Here is the FileControlBlock table...\n"
	.align
_StringConst_148:
	.word	29			! length
	.ascii	"Initializing File Manager...\n"
	.align
_StringConst_147:
	.word	40			! length
	.ascii	"SynchWriteSector: Unexpected status code"
	.align
_StringConst_146:
	.word	52			! length
	.ascii	"Disk I/O error in SynchWriteSector: Bad command word"
	.align
_StringConst_145:
	.word	95			! length
	.ascii	"Disk I/O error in SynchWriteSector: Bad sectorAddr or sectorCount specifies non-existant sector"
	.align
_StringConst_144:
	.word	76			! length
	.ascii	"Disk I/O error in SynchWriteSector: Attempt to access invalid memory address"
	.align
_StringConst_143:
	.word	99			! length
	.ascii	"Disk I/O error in SynchWriteSector: Memory addr is not page-aligned or sector count is not positive"
	.align
_StringConst_142:
	.word	39			! length
	.ascii	"SynchReadSector: Unexpected status code"
	.align
_StringConst_141:
	.word	51			! length
	.ascii	"Disk I/O error in SynchReadSector: Bad command word"
	.align
_StringConst_140:
	.word	94			! length
	.ascii	"Disk I/O error in SynchReadSector: Bad sectorAddr or sectorCount specifies non-existant sector"
	.align
_StringConst_139:
	.word	75			! length
	.ascii	"Disk I/O error in SynchReadSector: Attempt to access invalid memory address"
	.align
_StringConst_138:
	.word	98			! length
	.ascii	"Disk I/O error in SynchReadSector: Memory addr is not page-aligned or sector count is not positive"
	.align
_StringConst_137:
	.word	28			! length
	.ascii	"Initializing Disk Driver...\n"
	.align
_StringConst_136:
	.word	38			! length
	.ascii	"  Virtual page is not marked VALID!!!\n"
	.align
_StringConst_135:
	.word	38			! length
	.ascii	"  Virtual page number is too large!!!\n"
	.align
_StringConst_134:
	.word	3			! length
	.ascii	"   "
	.align
_StringConst_133:
	.word	3			! length
	.ascii	"YES"
	.align
_StringConst_132:
	.word	6			! length
	.ascii	"      "
	.align
_StringConst_131:
	.word	3			! length
	.ascii	"   "
	.align
_StringConst_130:
	.word	3			! length
	.ascii	"YES"
	.align
_StringConst_129:
	.word	9			! length
	.ascii	"         "
	.align
_StringConst_128:
	.word	3			! length
	.ascii	"   "
	.align
_StringConst_127:
	.word	3			! length
	.ascii	"YES"
	.align
_StringConst_126:
	.word	6			! length
	.ascii	"      "
	.align
_StringConst_125:
	.word	3			! length
	.ascii	"   "
	.align
_StringConst_124:
	.word	3			! length
	.ascii	"YES"
	.align
_StringConst_123:
	.word	5			! length
	.ascii	"     "
	.align
_StringConst_122:
	.word	10			! length
	.ascii	"          "
	.align
_StringConst_121:
	.word	4			! length
	.ascii	"    "
	.align
_StringConst_120:
	.word	2			! length
	.ascii	"  "
	.align
_StringConst_119:
	.word	5			! length
	.ascii	"     "
	.align
_StringConst_118:
	.word	3			! length
	.ascii	":  "
	.align
_StringConst_117:
	.word	5			! length
	.ascii	"     "
	.align
_StringConst_116:
	.word	109			! length
	.ascii	"     ==========   ==========     ==========  ==========  ==============  =====  ==========  =========  =====\n"
	.align
_StringConst_115:
	.word	109			! length
	.ascii	"        addr        entry          Virtual    Physical   Undefined Bits  Dirty  Referenced  Writeable  Valid\n"
	.align
_StringConst_114:
	.word	35			! length
	.ascii	"  Here are the frames in use: \n    "
	.align
_StringConst_113:
	.word	18			! length
	.ascii	"  numberFreeFrames"
	.align
_StringConst_112:
	.word	15			! length
	.ascii	"FRAME MANAGER:\n"
	.align
_StringConst_111:
	.word	89			! length
	.ascii	"Kernel code size appears to have grown too large and is overflowing into the frame region"
	.align
_StringConst_110:
	.word	30			! length
	.ascii	"Initializing Frame Manager...\n"
	.align
_StringConst_109:
	.word	22			! length
	.ascii	"Should never be called"
	.align
_StringConst_108:
	.word	50			! length
	.ascii	"Here is the FREE list of ProcessControlBlocks:\n   "
	.align
_StringConst_107:
	.word	2			! length
	.ascii	"  "
	.align
_StringConst_106:
	.word	29			! length
	.ascii	"Here is the process table...\n"
	.align
_StringConst_105:
	.word	50			! length
	.ascii	"Here is the FREE list of ProcessControlBlocks:\n   "
	.align
_StringConst_104:
	.word	1			! length
	.ascii	":"
	.align
_StringConst_103:
	.word	2			! length
	.ascii	"  "
	.align
_StringConst_102:
	.word	29			! length
	.ascii	"Here is the process table...\n"
	.align
_StringConst_101:
	.word	32			! length
	.ascii	"Initializing Process Manager...\n"
	.align
_StringConst_100:
	.word	13			! length
	.ascii	", exitStatus="
	.align
_StringConst_99:
	.word	13			! length
	.ascii	", parentsPid="
	.align
_StringConst_98:
	.word	33			! length
	.ascii	"Bad status in ProcessControlBlock"
	.align
_StringConst_97:
	.word	4			! length
	.ascii	"FREE"
	.align
_StringConst_96:
	.word	6			! length
	.ascii	"ZOMBIE"
	.align
_StringConst_95:
	.word	6			! length
	.ascii	"ACTIVE"
	.align
_StringConst_94:
	.word	9			! length
	.ascii	", status="
	.align
_StringConst_93:
	.word	8			! length
	.ascii	")   pid="
	.align
_StringConst_92:
	.word	30			! length
	.ascii	"  ProcessControlBlock   (addr="
	.align
_StringConst_91:
	.word	15			! length
	.ascii	"    myThread = "
	.align
_StringConst_90:
	.word	37			! length
	.ascii	"Here is the FREE list of Threads:\n   "
	.align
_StringConst_89:
	.word	1			! length
	.ascii	":"
	.align
_StringConst_88:
	.word	2			! length
	.ascii	"  "
	.align
_StringConst_87:
	.word	28			! length
	.ascii	"Here is the thread table...\n"
	.align
_StringConst_86:
	.word	6			! length
	.ascii	"thread"
	.align
_StringConst_85:
	.word	31			! length
	.ascii	"Initializing Thread Manager...\n"
	.align
_StringConst_84:
	.word	1			! length
	.ascii	"\n"
	.align
_StringConst_83:
	.word	3			! length
	.ascii	"   "
	.align
_StringConst_82:
	.word	2			! length
	.ascii	": "
	.align
_StringConst_81:
	.word	7			! length
	.ascii	"      r"
	.align
_StringConst_80:
	.word	20			! length
	.ascii	"    user registers:\n"
	.align
_StringConst_79:
	.word	20			! length
	.ascii	"    is user thread: "
	.align
_StringConst_78:
	.word	20			! length
	.ascii	"Bad status in Thread"
	.align
_StringConst_77:
	.word	20			! length
	.ascii	"    status = UNUSED\n"
	.align
_StringConst_76:
	.word	21			! length
	.ascii	"    status = BLOCKED\n"
	.align
_StringConst_75:
	.word	21			! length
	.ascii	"    status = RUNNING\n"
	.align
_StringConst_74:
	.word	19			! length
	.ascii	"    status = READY\n"
	.align
_StringConst_73:
	.word	26			! length
	.ascii	"    status = JUST_CREATED\n"
	.align
_StringConst_72:
	.word	23			! length
	.ascii	"    stack starting addr"
	.align
_StringConst_71:
	.word	12			! length
	.ascii	"    stackTop"
	.align
_StringConst_70:
	.word	1			! length
	.ascii	"\n"
	.align
_StringConst_69:
	.word	3			! length
	.ascii	"   "
	.align
_StringConst_68:
	.word	2			! length
	.ascii	": "
	.align
_StringConst_67:
	.word	7			! length
	.ascii	"      r"
	.align
_StringConst_66:
	.word	19			! length
	.ascii	"    machine state:\n"
	.align
_StringConst_65:
	.word	2			! length
	.ascii	")\n"
	.align
_StringConst_64:
	.word	29			! length
	.ascii	"\"    (addr of Thread object: "
	.align
_StringConst_63:
	.word	10			! length
	.ascii	"  Thread \""
	.align
_StringConst_62:
	.word	32			! length
	.ascii	"System stack underflow detected!"
	.align
_StringConst_61:
	.word	31			! length
	.ascii	"System stack overflow detected!"
	.align
_StringConst_60:
	.word	48			! length
	.ascii	"Ready list should always contain the idle thread"
	.align
_StringConst_59:
	.word	31			! length
	.ascii	"In Sleep, self != currentThread"
	.align
_StringConst_58:
	.word	44			! length
	.ascii	"In Sleep, currentInterruptStatus != DISABLED"
	.align
_StringConst_57:
	.word	51			! length
	.ascii	"Status of current thread should be READY or RUNNING"
	.align
_StringConst_56:
	.word	31			! length
	.ascii	"In Yield, self != currentThread"
	.align
_StringConst_55:
	.word	54			! length
	.ascii	"Attempt to broadcast a condition when lock is not held"
	.align
_StringConst_54:
	.word	52			! length
	.ascii	"Attempt to signal a condition when mutex is not held"
	.align
_StringConst_53:
	.word	51			! length
	.ascii	"Attempt to wait on condition when mutex is not held"
	.align
_StringConst_52:
	.word	52			! length
	.ascii	"Attempt to unlock a mutex by a thread not holding it"
	.align
_StringConst_51:
	.word	54			! length
	.ascii	"Attempt to lock a mutex by a thread already holding it"
	.align
_StringConst_50:
	.word	51			! length
	.ascii	"Semaphore count underflowed during \'Down\' operation"
	.align
_StringConst_49:
	.word	48			! length
	.ascii	"Semaphore count overflowed during \'Up\' operation"
	.align
_StringConst_48:
	.word	39			! length
	.ascii	"Semaphore created with initialCount < 0"
	.align
_StringConst_47:
	.word	3			! length
	.ascii	":  "
	.align
_StringConst_46:
	.word	4			! length
	.ascii	"  0x"
	.align
_StringConst_45:
	.word	13			! length
	.ascii	"getBufferSize"
	.align
_StringConst_44:
	.word	11			! length
	.ascii	"sizeInBytes"
	.align
_StringConst_43:
	.word	17			! length
	.ascii	"in terminal mode\n"
	.align
_StringConst_42:
	.word	8			! length
	.ascii	"terminal"
	.align
_StringConst_41:
	.word	11			! length
	.ascii	"filename = "
	.align
_StringConst_40:
	.word	21			! length
	.ascii	"virt addr of filename"
	.align
_StringConst_39:
	.word	27			! length
	.ascii	"Handle_Sys_Create invoked!\n"
	.align
_StringConst_38:
	.word	48			! length
	.ascii	"Syscall \'Shutdown\' was invoked by a user thread\n"
	.align
_StringConst_37:
	.word	37			! length
	.ascii	"Unknown syscall code from user thread"
	.align
_StringConst_36:
	.word	15			! length
	.ascii	"Syscall code = "
	.align
_StringConst_35:
	.word	42			! length
	.ascii	"  ERROR: currentThread.myProcess is null\n\n"
	.align
_StringConst_34:
	.word	14			! length
	.ascii	"  **********\n\n"
	.align
_StringConst_33:
	.word	13			! length
	.ascii	"\n**********  "
	.align
_StringConst_32:
	.word	62			! length
	.ascii	"An AlignmentException exception has occured while in user mode"
	.align
_StringConst_31:
	.word	64			! length
	.ascii	"A PrivilegedInstruction exception has occured while in user mode"
	.align
_StringConst_30:
	.word	64			! length
	.ascii	"A PageReadonlyException exception has occured while in user mode"
	.align
_StringConst_29:
	.word	63			! length
	.ascii	"A PageInvalidException exception has occured while in user mode"
	.align
_StringConst_28:
	.word	60			! length
	.ascii	"An AddressException exception has occured while in user mode"
	.align
_StringConst_27:
	.word	63			! length
	.ascii	"An ArithmeticException exception has occured while in user mode"
	.align
_StringConst_26:
	.word	62			! length
	.ascii	"An IllegalInstruction exception has occured while in user mode"
	.align
_StringConst_25:
	.word	12			! length
	.ascii	"TestProgram5"
	.align
_StringConst_24:
	.word	12			! length
	.ascii	"TestProgram5"
	.align
_StringConst_23:
	.word	11			! length
	.ascii	"UserProgram"
	.align
_StringConst_22:
	.word	1			! length
	.ascii	")"
	.align
_StringConst_21:
	.word	28			! length
	.ascii	"    (addr of Thread object: "
	.align
_StringConst_20:
	.word	20			! length
	.ascii	"Bad status in Thread"
	.align
_StringConst_19:
	.word	6			! length
	.ascii	"UNUSED"
	.align
_StringConst_18:
	.word	7			! length
	.ascii	"BLOCKED"
	.align
_StringConst_17:
	.word	7			! length
	.ascii	"RUNNING"
	.align
_StringConst_16:
	.word	5			! length
	.ascii	"READY"
	.align
_StringConst_15:
	.word	12			! length
	.ascii	"JUST_CREATED"
	.align
_StringConst_14:
	.word	12			! length
	.ascii	"\"    status="
	.align
_StringConst_13:
	.word	10			! length
	.ascii	"  Thread \""
	.align
_StringConst_12:
	.word	5			! length
	.ascii	"NULL\n"
	.align
_StringConst_11:
	.word	92			! length
	.ascii	"(To find out where execution was when the problem arose, type \'st\' at the emulator prompt.)\n"
	.align
_StringConst_10:
	.word	19			! length
	.ascii	"\" -- TERMINATING!\n\n"
	.align
_StringConst_9:
	.word	3			! length
	.ascii	": \""
	.align
_StringConst_8:
	.word	4			! length
	.ascii	" in "
	.align
_StringConst_7:
	.word	12			! length
	.ascii	"\nFATAL ERROR"
	.align
_StringConst_6:
	.word	32			! length
	.ascii	"This thread will never run again"
	.align
_StringConst_5:
	.word	32			! length
	.ascii	"ThreadFinish should never return"
	.align
_StringConst_4:
	.word	24			! length
	.ascii	"Here is the ready list:\n"
	.align
_StringConst_3:
	.word	11			! length
	.ascii	"idle-thread"
	.align
_StringConst_2:
	.word	11			! length
	.ascii	"main-thread"
	.align
_StringConst_1:
	.word	33			! length
	.ascii	"Initializing Thread Scheduler...\n"
	.align
	.text
! 
! Source Filename and Package Name
! 
_sourceFileName:
	.ascii	"Kernel.c\0"
_packageName:
	.ascii	"Kernel\0"
	.align
!
! CheckVersion
!
!     This routine is passed:
!       r2 = ptr to the name of the 'using' package
!       r3 = the expected hashVal for 'used' package (myPackage)
!     It prints an error message if the expected hashVal is not correct
!     It then checks all the packages that 'myPackage' uses.
!
!     This routine returns:
!       r1:  0=No problems, 1=Problems
!
!     Registers modified: r1-r4
!
_CheckVersion_P_Kernel_:
	.export	_CheckVersion_P_Kernel_
	set	0x975e76e8,r4		! myHashVal = -1755416856
	cmp	r3,r4
	be	_Label_203
	set	_CVMess1,r1
	call	_putString
	mov	r2,r1			! print using package
	call	_putString
	set	_CVMess2,r1
	call	_putString
	set	_packageName,r1		! print myPackage
	call	_putString
	set	_CVMess3,r1
	call	_putString
	set	_packageName,r1		! print myPackage
	call	_putString
	set	_CVMess4,r1
	call	_putString
	mov	r2,r1			! print using package
	call	_putString
	set	_CVMess5,r1
	call	_putString
	set	_packageName,r1		! print myPackage
	call	_putString
	set	_CVMess6,r1
	call	_putString
	mov	1,r1
	ret	
_Label_203:
	mov	0,r1
! Make sure _P_System_ has hash value 0x9e9d23b6 (decimal -1633868874)
	set	_packageName,r2
	set	0x9e9d23b6,r3
	call	_CheckVersion_P_System_
	.import	_CheckVersion_P_System_
	cmp	r1,0
	bne	_Label_204
! Make sure _P_BitMap_ has hash value 0xa596b1b5 (decimal -1516850763)
	set	_packageName,r2
	set	0xa596b1b5,r3
	call	_CheckVersion_P_BitMap_
	.import	_CheckVersion_P_BitMap_
	cmp	r1,0
	bne	_Label_204
! Make sure _P_List_ has hash value 0xafebcabb (decimal -1343501637)
	set	_packageName,r2
	set	0xafebcabb,r3
	call	_CheckVersion_P_List_
	.import	_CheckVersion_P_List_
	cmp	r1,0
	bne	_Label_204
_Label_204:
	ret
_CVMess1:	.ascii	"\nVERSION CONSISTENCY ERROR: Package '\0"
_CVMess2:	.ascii	"' uses package '\0"
_CVMess3:	.ascii	"'.  Whenever a header file is modified, all packages that use that package (directly or indirectly) must be recompiled.  The header file for '\0"
_CVMess4:	.ascii	"' has been changed since '\0"
_CVMess5:	.ascii	"' was compiled last.  Please recompile all packages that depend on '\0"
_CVMess6:	.ascii	"'.\n\n\0"
	.align
! 
! ===============  FUNCTION InitializeScheduler  ===============
! 
_P_Kernel_InitializeScheduler:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__P_Kernel_InitializeScheduler,r1
	push	r1
	mov	16,r1
_Label_3970:
	push	r0
	sub	r1,1,r1
	bne	_Label_3970
	mov	7,r13		! source line 7
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   Call the function
	mov	14,r13		! source line 14
	mov	"\0\0CE",r10
	call	Cleari
! CALL STATEMENT...
!   _temp_205 = _StringConst_1
	set	_StringConst_1,r1
	store	r1,[r14+-60]
!   Prepare Argument: offset=8  value=_temp_205  sizeInBytes=4
	load	[r14+-60],r1
	store	r1,[r15+0]
!   Call the function
	mov	15,r13		! source line 15
	mov	"\0\0CE",r10
	call	print
! ASSIGNMENT STATEMENT...
	mov	16,r13		! source line 16
	mov	"\0\0AS",r10
!   NEW CLASS Constructor...
!   ZeroMemory: _P_Kernel_readyList = zeros  (sizeInBytes=12)
	set	_P_Kernel_readyList,r4
	store	r0,[r4]
	store	r0,[r4+4]
	store	r0,[r4+8]
!   _P_Kernel_readyList = _P_List_List
	set	_P_List_List,r1
	set	_P_Kernel_readyList,r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	17,r13		! source line 17
	mov	"\0\0AS",r10
!   NEW CLASS Constructor...
!   ZeroMemory: _P_Kernel_threadsToBeDestroyed = zeros  (sizeInBytes=12)
	set	_P_Kernel_threadsToBeDestroyed,r4
	store	r0,[r4]
	store	r0,[r4+4]
	store	r0,[r4+8]
!   _P_Kernel_threadsToBeDestroyed = _P_List_List
	set	_P_List_List,r1
	set	_P_Kernel_threadsToBeDestroyed,r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	18,r13		! source line 18
	mov	"\0\0AS",r10
!   NEW CLASS Constructor...
!   ZeroMemory: _P_Kernel_mainThread = zeros  (sizeInBytes=4164)
	set	_P_Kernel_mainThread,r4
	mov	1041,r3
_Label_3971:
	store	r0,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_3971
!   _P_Kernel_mainThread = _P_Kernel_Thread
	set	_P_Kernel_Thread,r1
	set	_P_Kernel_mainThread,r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	19,r13		! source line 19
	mov	"\0\0SE",r10
!   _temp_209 = _StringConst_2
	set	_StringConst_2,r1
	store	r1,[r14+-44]
!   _temp_210 = &_P_Kernel_mainThread
	set	_P_Kernel_mainThread,r1
	store	r1,[r14+-40]
!   Prepare Argument: offset=12  value=_temp_209  sizeInBytes=4
	load	[r14+-44],r1
	store	r1,[r15+4]
!   Send message Init
	load	[r14+-40],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,4,r2
	call	r2
! ASSIGNMENT STATEMENT...
	mov	20,r13		! source line 20
	mov	"\0\0AS",r10
!   _temp_211 = &_P_Kernel_mainThread
	set	_P_Kernel_mainThread,r1
	store	r1,[r14+-36]
!   _temp_212 = _temp_211 + 76
	load	[r14+-36],r1
	add	r1,76,r1
	store	r1,[r14+-32]
!   Data Move: *_temp_212 = 3  (sizeInBytes=4)
	mov	3,r1
	load	[r14+-32],r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	21,r13		! source line 21
	mov	"\0\0AS",r10
!   NEW CLASS Constructor...
!   ZeroMemory: _P_Kernel_idleThread = zeros  (sizeInBytes=4164)
	set	_P_Kernel_idleThread,r4
	mov	1041,r3
_Label_3972:
	store	r0,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_3972
!   _P_Kernel_idleThread = _P_Kernel_Thread
	set	_P_Kernel_Thread,r1
	set	_P_Kernel_idleThread,r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	22,r13		! source line 22
	mov	"\0\0SE",r10
!   _temp_214 = _StringConst_3
	set	_StringConst_3,r1
	store	r1,[r14+-24]
!   _temp_215 = &_P_Kernel_idleThread
	set	_P_Kernel_idleThread,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=12  value=_temp_214  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+4]
!   Send message Init
	load	[r14+-20],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,4,r2
	call	r2
! SEND STATEMENT...
	mov	23,r13		! source line 23
	mov	"\0\0SE",r10
!   _temp_216 = _function_202_IdleFunction
	set	_function_202_IdleFunction,r1
	store	r1,[r14+-16]
!   _temp_217 = &_P_Kernel_idleThread
	set	_P_Kernel_idleThread,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=12  value=_temp_216  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=0  sizeInBytes=4
	mov	0,r1
	store	r1,[r15+8]
!   Send message Fork
	load	[r14+-12],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! ASSIGNMENT STATEMENT...
	mov	24,r13		! source line 24
	mov	"\0\0AS",r10
!   _P_Kernel_currentThread = &_P_Kernel_mainThread
	set	_P_Kernel_mainThread,r1
	set	_P_Kernel_currentThread,r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	25,r13		! source line 25
	mov	"\0\0AS",r10
!   _P_System_FatalError = _P_Kernel_FatalError_ThreadVersion
	set	_P_Kernel_FatalError_ThreadVersion,r1
	set	_P_System_FatalError,r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	26,r13		! source line 26
	mov	"\0\0AS",r10
!   _P_Kernel_currentInterruptStatus = 1		(4 bytes)
	mov	1,r1
	set	_P_Kernel_currentInterruptStatus,r2
	store	r1,[r2]
! CALL STATEMENT...
!   Call the function
	mov	27,r13		! source line 27
	mov	"\0\0CE",r10
	call	Seti
! RETURN STATEMENT...
	mov	27,r13		! source line 27
	mov	"\0\0RE",r10
	add	r15,68,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__P_Kernel_InitializeScheduler:
	.word	_sourceFileName
	.word	_Label_218
	.word	0		! total size of parameters
	.word	64		! frame size = 64
	.word	_Label_219
	.word	-12
	.word	4
	.word	_Label_220
	.word	-16
	.word	4
	.word	_Label_221
	.word	-20
	.word	4
	.word	_Label_222
	.word	-24
	.word	4
	.word	_Label_223
	.word	-28
	.word	4
	.word	_Label_224
	.word	-32
	.word	4
	.word	_Label_225
	.word	-36
	.word	4
	.word	_Label_226
	.word	-40
	.word	4
	.word	_Label_227
	.word	-44
	.word	4
	.word	_Label_228
	.word	-48
	.word	4
	.word	_Label_229
	.word	-52
	.word	4
	.word	_Label_230
	.word	-56
	.word	4
	.word	_Label_231
	.word	-60
	.word	4
	.word	0
_Label_218:
	.ascii	"InitializeScheduler\0"
	.align
_Label_219:
	.byte	'?'
	.ascii	"_temp_217\0"
	.align
_Label_220:
	.byte	'?'
	.ascii	"_temp_216\0"
	.align
_Label_221:
	.byte	'?'
	.ascii	"_temp_215\0"
	.align
_Label_222:
	.byte	'?'
	.ascii	"_temp_214\0"
	.align
_Label_223:
	.byte	'?'
	.ascii	"_temp_213\0"
	.align
_Label_224:
	.byte	'?'
	.ascii	"_temp_212\0"
	.align
_Label_225:
	.byte	'?'
	.ascii	"_temp_211\0"
	.align
_Label_226:
	.byte	'?'
	.ascii	"_temp_210\0"
	.align
_Label_227:
	.byte	'?'
	.ascii	"_temp_209\0"
	.align
_Label_228:
	.byte	'?'
	.ascii	"_temp_208\0"
	.align
_Label_229:
	.byte	'?'
	.ascii	"_temp_207\0"
	.align
_Label_230:
	.byte	'?'
	.ascii	"_temp_206\0"
	.align
_Label_231:
	.byte	'?'
	.ascii	"_temp_205\0"
	.align
! 
! ===============  FUNCTION IdleFunction  ===============
! 
_function_202_IdleFunction:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__function_202_IdleFunction,r1
	push	r1
	mov	3,r1
_Label_3973:
	push	r0
	sub	r1,1,r1
	bne	_Label_3973
	mov	32,r13		! source line 32
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! WHILE STATEMENT...
	mov	42,r13		! source line 42
	mov	"\0\0WH",r10
_Label_232:
!	jmp	_Label_233
_Label_233:
	mov	42,r13		! source line 42
	mov	"\0\0WB",r10
! ASSIGNMENT STATEMENT...
	mov	43,r13		! source line 43
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=2  sizeInBytes=4
	mov	2,r1
	store	r1,[r15+0]
!   Call the function
	mov	43,r13		! source line 43
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=junk  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-16]
! IF STATEMENT...
	mov	44,r13		! source line 44
	mov	"\0\0IF",r10
	mov	44,r13		! source line 44
	mov	"\0\0SE",r10
!   _temp_237 = &_P_Kernel_readyList
	set	_P_Kernel_readyList,r1
	store	r1,[r14+-12]
!   Send message IsEmpty
	load	[r14+-12],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,16,r2
	call	r2
!   if result==true then goto _Label_235 else goto _Label_236
	loadb	[r15],r1
	cmp	r1,0
	be	_Label_236
	jmp	_Label_235
_Label_235:
! THEN...
	mov	45,r13		! source line 45
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   Call the function
	mov	45,r13		! source line 45
	mov	"\0\0CE",r10
	call	Wait
	jmp	_Label_238
_Label_236:
! ELSE...
	mov	47,r13		! source line 47
	mov	"\0\0EL",r10
! SEND STATEMENT...
	mov	47,r13		! source line 47
	mov	"\0\0SE",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Send message Yield
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
! END IF...
_Label_238:
! END WHILE...
	jmp	_Label_232
_Label_234:
! 
! Routine Descriptor
! 
_RoutineDescriptor__function_202_IdleFunction:
	.word	_sourceFileName
	.word	_Label_239
	.word	4		! total size of parameters
	.word	12		! frame size = 12
	.word	_Label_240
	.word	8
	.word	4
	.word	_Label_241
	.word	-12
	.word	4
	.word	_Label_242
	.word	-16
	.word	4
	.word	0
_Label_239:
	.ascii	"IdleFunction\0"
	.align
_Label_240:
	.byte	'I'
	.ascii	"arg\0"
	.align
_Label_241:
	.byte	'?'
	.ascii	"_temp_237\0"
	.align
_Label_242:
	.byte	'I'
	.ascii	"junk\0"
	.align
! 
! ===============  FUNCTION Run  ===============
! 
_P_Kernel_Run:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__P_Kernel_Run,r1
	push	r1
	mov	20,r1
_Label_3974:
	push	r0
	sub	r1,1,r1
	bne	_Label_3974
	mov	54,r13		! source line 54
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	67,r13		! source line 67
	mov	"\0\0AS",r10
!   prevThread = _P_Kernel_currentThread		(4 bytes)
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	store	r1,[r14+-76]
! SEND STATEMENT...
	mov	68,r13		! source line 68
	mov	"\0\0SE",r10
!   if intIsZero (prevThread) then goto _runtimeErrorNullPointer
	load	[r14+-76],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Send message CheckOverflow
	load	[r14+-76],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,20,r2
	call	r2
! IF STATEMENT...
	mov	70,r13		! source line 70
	mov	"\0\0IF",r10
!   if intIsZero (prevThread) then goto _runtimeErrorNullPointer
	load	[r14+-76],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_245 = prevThread + 4092
	load	[r14+-76],r1
	add	r1,4092,r1
	store	r1,[r14+-72]
!   if boolIsZero (_temp_245 ) then goto _Label_244		(int)
	load	[r14+-72],r1
	loadb	[r1],r1
	cmp	r1,r0
	be	_Label_244
!	jmp	_Label_243
_Label_243:
! THEN...
	mov	71,r13		! source line 71
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   if intIsZero (prevThread) then goto _runtimeErrorNullPointer
	load	[r14+-76],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_247 = prevThread + 4096
	load	[r14+-76],r1
	add	r1,4096,r1
	store	r1,[r14+-64]
!   Move address of _temp_247 [0 ] into _temp_248
!     make sure index expr is >= 0
	mov	0,r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-64],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	4,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-60]
!   _temp_246 = _temp_248		(4 bytes)
	load	[r14+-60],r1
	store	r1,[r14+-68]
!   Prepare Argument: offset=8  value=_temp_246  sizeInBytes=4
	load	[r14+-68],r1
	store	r1,[r15+0]
!   Call the function
	mov	71,r13		! source line 71
	mov	"\0\0CE",r10
	call	SaveUserRegs
! END IF...
_Label_244:
! ASSIGNMENT STATEMENT...
	mov	73,r13		! source line 73
	mov	"\0\0AS",r10
!   _P_Kernel_currentThread = nextThread		(4 bytes)
	load	[r14+8],r1
	set	_P_Kernel_currentThread,r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	74,r13		! source line 74
	mov	"\0\0AS",r10
!   if intIsZero (nextThread) then goto _runtimeErrorNullPointer
	load	[r14+8],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_249 = nextThread + 76
	load	[r14+8],r1
	add	r1,76,r1
	store	r1,[r14+-56]
!   Data Move: *_temp_249 = 3  (sizeInBytes=4)
	mov	3,r1
	load	[r14+-56],r2
	store	r1,[r2]
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=prevThread  sizeInBytes=4
	load	[r14+-76],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=nextThread  sizeInBytes=4
	load	[r14+8],r1
	store	r1,[r15+4]
!   Call the function
	mov	80,r13		! source line 80
	mov	"\0\0CE",r10
	call	Switch
! WHILE STATEMENT...
	mov	84,r13		! source line 84
	mov	"\0\0WH",r10
_Label_250:
	mov	84,r13		! source line 84
	mov	"\0\0SE",r10
!   _temp_254 = &_P_Kernel_threadsToBeDestroyed
	set	_P_Kernel_threadsToBeDestroyed,r1
	store	r1,[r14+-52]
!   Send message IsEmpty
	load	[r14+-52],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,16,r2
	call	r2
!   Retrieve Result: targetName=_temp_253  sizeInBytes=1
	loadb	[r15],r1
	storeb	r1,[r14+-9]
!   if _temp_253 then goto _Label_252 else goto _Label_251
	loadb	[r14+-9],r1
	cmp	r1,0
	be	_Label_251
	jmp	_Label_252
_Label_251:
	mov	84,r13		! source line 84
	mov	"\0\0WB",r10
! ASSIGNMENT STATEMENT...
	mov	85,r13		! source line 85
	mov	"\0\0AS",r10
	mov	85,r13		! source line 85
	mov	"\0\0SE",r10
!   _temp_255 = &_P_Kernel_threadsToBeDestroyed
	set	_P_Kernel_threadsToBeDestroyed,r1
	store	r1,[r14+-48]
!   Send message Remove
	load	[r14+-48],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
!   Retrieve Result: targetName=th  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-80]
! SEND STATEMENT...
	mov	86,r13		! source line 86
	mov	"\0\0SE",r10
!   _temp_256 = &_P_Kernel_threadManager
	set	_P_Kernel_threadManager,r1
	store	r1,[r14+-44]
!   Prepare Argument: offset=12  value=th  sizeInBytes=4
	load	[r14+-80],r1
	store	r1,[r15+4]
!   Send message FreeThread
	load	[r14+-44],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,16,r2
	call	r2
! END WHILE...
	jmp	_Label_250
_Label_252:
! IF STATEMENT...
	mov	89,r13		! source line 89
	mov	"\0\0IF",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_259 = _P_Kernel_currentThread + 4092
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4092,r1
	store	r1,[r14+-40]
!   if boolIsZero (_temp_259 ) then goto _Label_258		(int)
	load	[r14+-40],r1
	loadb	[r1],r1
	cmp	r1,r0
	be	_Label_258
!	jmp	_Label_257
_Label_257:
! THEN...
	mov	90,r13		! source line 90
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_261 = _P_Kernel_currentThread + 4096
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4096,r1
	store	r1,[r14+-32]
!   Move address of _temp_261 [0 ] into _temp_262
!     make sure index expr is >= 0
	mov	0,r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-32],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	4,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-28]
!   _temp_260 = _temp_262		(4 bytes)
	load	[r14+-28],r1
	store	r1,[r14+-36]
!   Prepare Argument: offset=8  value=_temp_260  sizeInBytes=4
	load	[r14+-36],r1
	store	r1,[r15+0]
!   Call the function
	mov	90,r13		! source line 90
	mov	"\0\0CE",r10
	call	RestoreUserRegs
! SEND STATEMENT...
	mov	91,r13		! source line 91
	mov	"\0\0SE",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_264 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-20]
!   Data Move: _temp_263 = *_temp_264  (sizeInBytes=4)
	load	[r14+-20],r1
	load	[r1],r1
	store	r1,[r14+-24]
!   if intIsZero (_temp_263) then goto _runtimeErrorNullPointer
	load	[r14+-24],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_265 = _temp_263 + 32
	load	[r14+-24],r1
	add	r1,32,r1
	store	r1,[r14+-16]
!   Send message SetToThisPageTable
	load	[r14+-16],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,72,r2
	call	r2
! END IF...
_Label_258:
! RETURN STATEMENT...
	mov	89,r13		! source line 89
	mov	"\0\0RE",r10
	add	r15,84,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__P_Kernel_Run:
	.word	_sourceFileName
	.word	_Label_266
	.word	4		! total size of parameters
	.word	80		! frame size = 80
	.word	_Label_267
	.word	8
	.word	4
	.word	_Label_268
	.word	-16
	.word	4
	.word	_Label_269
	.word	-20
	.word	4
	.word	_Label_270
	.word	-24
	.word	4
	.word	_Label_271
	.word	-28
	.word	4
	.word	_Label_272
	.word	-32
	.word	4
	.word	_Label_273
	.word	-36
	.word	4
	.word	_Label_274
	.word	-40
	.word	4
	.word	_Label_275
	.word	-44
	.word	4
	.word	_Label_276
	.word	-48
	.word	4
	.word	_Label_277
	.word	-52
	.word	4
	.word	_Label_278
	.word	-9
	.word	1
	.word	_Label_279
	.word	-56
	.word	4
	.word	_Label_280
	.word	-60
	.word	4
	.word	_Label_281
	.word	-64
	.word	4
	.word	_Label_282
	.word	-68
	.word	4
	.word	_Label_283
	.word	-72
	.word	4
	.word	_Label_284
	.word	-76
	.word	4
	.word	_Label_285
	.word	-80
	.word	4
	.word	0
_Label_266:
	.ascii	"Run\0"
	.align
_Label_267:
	.byte	'P'
	.ascii	"nextThread\0"
	.align
_Label_268:
	.byte	'?'
	.ascii	"_temp_265\0"
	.align
_Label_269:
	.byte	'?'
	.ascii	"_temp_264\0"
	.align
_Label_270:
	.byte	'?'
	.ascii	"_temp_263\0"
	.align
_Label_271:
	.byte	'?'
	.ascii	"_temp_262\0"
	.align
_Label_272:
	.byte	'?'
	.ascii	"_temp_261\0"
	.align
_Label_273:
	.byte	'?'
	.ascii	"_temp_260\0"
	.align
_Label_274:
	.byte	'?'
	.ascii	"_temp_259\0"
	.align
_Label_275:
	.byte	'?'
	.ascii	"_temp_256\0"
	.align
_Label_276:
	.byte	'?'
	.ascii	"_temp_255\0"
	.align
_Label_277:
	.byte	'?'
	.ascii	"_temp_254\0"
	.align
_Label_278:
	.byte	'C'
	.ascii	"_temp_253\0"
	.align
_Label_279:
	.byte	'?'
	.ascii	"_temp_249\0"
	.align
_Label_280:
	.byte	'?'
	.ascii	"_temp_248\0"
	.align
_Label_281:
	.byte	'?'
	.ascii	"_temp_247\0"
	.align
_Label_282:
	.byte	'?'
	.ascii	"_temp_246\0"
	.align
_Label_283:
	.byte	'?'
	.ascii	"_temp_245\0"
	.align
_Label_284:
	.byte	'P'
	.ascii	"prevThread\0"
	.align
_Label_285:
	.byte	'P'
	.ascii	"th\0"
	.align
! 
! ===============  FUNCTION PrintReadyList  ===============
! 
_P_Kernel_PrintReadyList:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__P_Kernel_PrintReadyList,r1
	push	r1
	mov	6,r1
_Label_3975:
	push	r0
	sub	r1,1,r1
	bne	_Label_3975
	mov	97,r13		! source line 97
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	104,r13		! source line 104
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=2  sizeInBytes=4
	mov	2,r1
	store	r1,[r15+0]
!   Call the function
	mov	104,r13		! source line 104
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=oldStatus  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-24]
! CALL STATEMENT...
!   _temp_286 = _StringConst_4
	set	_StringConst_4,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_286  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   Call the function
	mov	105,r13		! source line 105
	mov	"\0\0CE",r10
	call	print
! SEND STATEMENT...
	mov	106,r13		! source line 106
	mov	"\0\0SE",r10
!   _temp_287 = _function_201_ThreadPrintShort
	set	_function_201_ThreadPrintShort,r1
	store	r1,[r14+-16]
!   _temp_288 = &_P_Kernel_readyList
	set	_P_Kernel_readyList,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=12  value=_temp_287  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+4]
!   Send message ApplyToEach
	load	[r14+-12],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,20,r2
	call	r2
! ASSIGNMENT STATEMENT...
	mov	107,r13		! source line 107
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=oldStatus  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+0]
!   Call the function
	mov	107,r13		! source line 107
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=oldStatus  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-24]
! RETURN STATEMENT...
	mov	107,r13		! source line 107
	mov	"\0\0RE",r10
	add	r15,28,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__P_Kernel_PrintReadyList:
	.word	_sourceFileName
	.word	_Label_289
	.word	0		! total size of parameters
	.word	24		! frame size = 24
	.word	_Label_290
	.word	-12
	.word	4
	.word	_Label_291
	.word	-16
	.word	4
	.word	_Label_292
	.word	-20
	.word	4
	.word	_Label_293
	.word	-24
	.word	4
	.word	0
_Label_289:
	.ascii	"PrintReadyList\0"
	.align
_Label_290:
	.byte	'?'
	.ascii	"_temp_288\0"
	.align
_Label_291:
	.byte	'?'
	.ascii	"_temp_287\0"
	.align
_Label_292:
	.byte	'?'
	.ascii	"_temp_286\0"
	.align
_Label_293:
	.byte	'I'
	.ascii	"oldStatus\0"
	.align
! 
! ===============  FUNCTION ThreadStartMain  ===============
! 
_P_Kernel_ThreadStartMain:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__P_Kernel_ThreadStartMain,r1
	push	r1
	mov	7,r1
_Label_3976:
	push	r0
	sub	r1,1,r1
	bne	_Label_3976
	mov	112,r13		! source line 112
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	124,r13		! source line 124
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=1  sizeInBytes=4
	mov	1,r1
	store	r1,[r15+0]
!   Call the function
	mov	124,r13		! source line 124
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=junk  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-28]
! ASSIGNMENT STATEMENT...
	mov	125,r13		! source line 125
	mov	"\0\0AS",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_294 = _P_Kernel_currentThread + 80
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,80,r1
	store	r1,[r14+-24]
!   Data Move: mainFun = *_temp_294  (sizeInBytes=4)
	load	[r14+-24],r1
	load	[r1],r1
	store	r1,[r14+-32]
! CALL STATEMENT...
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_296 = _P_Kernel_currentThread + 84
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,84,r1
	store	r1,[r14+-16]
!   Data Move: _temp_295 = *_temp_296  (sizeInBytes=4)
	load	[r14+-16],r1
	load	[r1],r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_295  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   call indirectly through variable mainFun
	mov	126,r13		! source line 126
	mov	"\0\0CF",r10
	load	[r14+-32],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! CALL STATEMENT...
!   Call the function
	mov	127,r13		! source line 127
	mov	"\0\0CA",r10
	call	_P_Kernel_ThreadFinish
! CALL STATEMENT...
!   _temp_297 = _StringConst_5
	set	_StringConst_5,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_297  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	128,r13		! source line 128
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! RETURN STATEMENT...
	mov	128,r13		! source line 128
	mov	"\0\0RE",r10
	add	r15,32,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__P_Kernel_ThreadStartMain:
	.word	_sourceFileName
	.word	_Label_298
	.word	0		! total size of parameters
	.word	28		! frame size = 28
	.word	_Label_299
	.word	-12
	.word	4
	.word	_Label_300
	.word	-16
	.word	4
	.word	_Label_301
	.word	-20
	.word	4
	.word	_Label_302
	.word	-24
	.word	4
	.word	_Label_303
	.word	-28
	.word	4
	.word	_Label_304
	.word	-32
	.word	4
	.word	0
_Label_298:
	.ascii	"ThreadStartMain\0"
	.align
_Label_299:
	.byte	'?'
	.ascii	"_temp_297\0"
	.align
_Label_300:
	.byte	'?'
	.ascii	"_temp_296\0"
	.align
_Label_301:
	.byte	'?'
	.ascii	"_temp_295\0"
	.align
_Label_302:
	.byte	'?'
	.ascii	"_temp_294\0"
	.align
_Label_303:
	.byte	'I'
	.ascii	"junk\0"
	.align
_Label_304:
	.byte	'P'
	.ascii	"mainFun\0"
	.align
! 
! ===============  FUNCTION ThreadFinish  ===============
! 
_P_Kernel_ThreadFinish:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__P_Kernel_ThreadFinish,r1
	push	r1
	mov	5,r1
_Label_3977:
	push	r0
	sub	r1,1,r1
	bne	_Label_3977
	mov	133,r13		! source line 133
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	144,r13		! source line 144
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=2  sizeInBytes=4
	mov	2,r1
	store	r1,[r15+0]
!   Call the function
	mov	144,r13		! source line 144
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=junk  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-20]
! SEND STATEMENT...
	mov	148,r13		! source line 148
	mov	"\0\0SE",r10
!   _temp_305 = &_P_Kernel_threadsToBeDestroyed
	set	_P_Kernel_threadsToBeDestroyed,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=12  value=_P_Kernel_currentThread  sizeInBytes=4
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	store	r1,[r15+4]
!   Send message AddToEnd
	load	[r14+-16],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! SEND STATEMENT...
	mov	149,r13		! source line 149
	mov	"\0\0SE",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Send message Sleep
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,16,r2
	call	r2
! CALL STATEMENT...
!   _temp_306 = _StringConst_6
	set	_StringConst_6,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_306  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	151,r13		! source line 151
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! RETURN STATEMENT...
	mov	151,r13		! source line 151
	mov	"\0\0RE",r10
	add	r15,24,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__P_Kernel_ThreadFinish:
	.word	_sourceFileName
	.word	_Label_307
	.word	0		! total size of parameters
	.word	20		! frame size = 20
	.word	_Label_308
	.word	-12
	.word	4
	.word	_Label_309
	.word	-16
	.word	4
	.word	_Label_310
	.word	-20
	.word	4
	.word	0
_Label_307:
	.ascii	"ThreadFinish\0"
	.align
_Label_308:
	.byte	'?'
	.ascii	"_temp_306\0"
	.align
_Label_309:
	.byte	'?'
	.ascii	"_temp_305\0"
	.align
_Label_310:
	.byte	'I'
	.ascii	"junk\0"
	.align
! 
! ===============  FUNCTION FatalError_ThreadVersion  ===============
! 
_P_Kernel_FatalError_ThreadVersion:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__P_Kernel_FatalError_ThreadVersion,r1
	push	r1
	mov	9,r1
_Label_3978:
	push	r0
	sub	r1,1,r1
	bne	_Label_3978
	mov	156,r13		! source line 156
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	164,r13		! source line 164
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=2  sizeInBytes=4
	mov	2,r1
	store	r1,[r15+0]
!   Call the function
	mov	164,r13		! source line 164
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=junk  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-40]
! CALL STATEMENT...
!   _temp_311 = _StringConst_7
	set	_StringConst_7,r1
	store	r1,[r14+-36]
!   Prepare Argument: offset=8  value=_temp_311  sizeInBytes=4
	load	[r14+-36],r1
	store	r1,[r15+0]
!   Call the function
	mov	165,r13		! source line 165
	mov	"\0\0CE",r10
	call	print
! IF STATEMENT...
	mov	166,r13		! source line 166
	mov	"\0\0IF",r10
!   if _P_Kernel_currentThread == 0 then goto _Label_313		(int)
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	mov	0,r2
	cmp	r1,r2
	be	_Label_313
!	jmp	_Label_312
_Label_312:
! THEN...
	mov	167,r13		! source line 167
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_314 = _StringConst_8
	set	_StringConst_8,r1
	store	r1,[r14+-32]
!   Prepare Argument: offset=8  value=_temp_314  sizeInBytes=4
	load	[r14+-32],r1
	store	r1,[r15+0]
!   Call the function
	mov	167,r13		! source line 167
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_316 = _P_Kernel_currentThread + 72
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,72,r1
	store	r1,[r14+-24]
!   Data Move: _temp_315 = *_temp_316  (sizeInBytes=4)
	load	[r14+-24],r1
	load	[r1],r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=8  value=_temp_315  sizeInBytes=4
	load	[r14+-28],r1
	store	r1,[r15+0]
!   Call the function
	mov	168,r13		! source line 168
	mov	"\0\0CE",r10
	call	print
! END IF...
_Label_313:
! CALL STATEMENT...
!   _temp_317 = _StringConst_9
	set	_StringConst_9,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_317  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   Call the function
	mov	170,r13		! source line 170
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=errorMessage  sizeInBytes=4
	load	[r14+8],r1
	store	r1,[r15+0]
!   Call the function
	mov	171,r13		! source line 171
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_318 = _StringConst_10
	set	_StringConst_10,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_318  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+0]
!   Call the function
	mov	172,r13		! source line 172
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_319 = _StringConst_11
	set	_StringConst_11,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_319  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	173,r13		! source line 173
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Call the function
	mov	174,r13		! source line 174
	mov	"\0\0CE",r10
	call	RuntimeExit
! RETURN STATEMENT...
	mov	174,r13		! source line 174
	mov	"\0\0RE",r10
	add	r15,40,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__P_Kernel_FatalError_ThreadVersion:
	.word	_sourceFileName
	.word	_Label_320
	.word	4		! total size of parameters
	.word	36		! frame size = 36
	.word	_Label_321
	.word	8
	.word	4
	.word	_Label_322
	.word	-12
	.word	4
	.word	_Label_323
	.word	-16
	.word	4
	.word	_Label_324
	.word	-20
	.word	4
	.word	_Label_325
	.word	-24
	.word	4
	.word	_Label_326
	.word	-28
	.word	4
	.word	_Label_327
	.word	-32
	.word	4
	.word	_Label_328
	.word	-36
	.word	4
	.word	_Label_329
	.word	-40
	.word	4
	.word	0
_Label_320:
	.ascii	"FatalError_ThreadVersion\0"
	.align
_Label_321:
	.byte	'P'
	.ascii	"errorMessage\0"
	.align
_Label_322:
	.byte	'?'
	.ascii	"_temp_319\0"
	.align
_Label_323:
	.byte	'?'
	.ascii	"_temp_318\0"
	.align
_Label_324:
	.byte	'?'
	.ascii	"_temp_317\0"
	.align
_Label_325:
	.byte	'?'
	.ascii	"_temp_316\0"
	.align
_Label_326:
	.byte	'?'
	.ascii	"_temp_315\0"
	.align
_Label_327:
	.byte	'?'
	.ascii	"_temp_314\0"
	.align
_Label_328:
	.byte	'?'
	.ascii	"_temp_311\0"
	.align
_Label_329:
	.byte	'I'
	.ascii	"junk\0"
	.align
! 
! ===============  FUNCTION SetInterruptsTo  ===============
! 
_P_Kernel_SetInterruptsTo:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__P_Kernel_SetInterruptsTo,r1
	push	r1
	mov	1,r1
_Label_3979:
	push	r0
	sub	r1,1,r1
	bne	_Label_3979
	mov	179,r13		! source line 179
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   Call the function
	mov	192,r13		! source line 192
	mov	"\0\0CE",r10
	call	Cleari
! ASSIGNMENT STATEMENT...
	mov	193,r13		! source line 193
	mov	"\0\0AS",r10
!   oldStat = _P_Kernel_currentInterruptStatus		(4 bytes)
	set	_P_Kernel_currentInterruptStatus,r1
	load	[r1],r1
	store	r1,[r14+-12]
! IF STATEMENT...
	mov	194,r13		! source line 194
	mov	"\0\0IF",r10
!   if newStatus != 1 then goto _Label_331		(int)
	load	[r14+8],r1
	mov	1,r2
	cmp	r1,r2
	bne	_Label_331
!	jmp	_Label_330
_Label_330:
! THEN...
	mov	195,r13		! source line 195
	mov	"\0\0TN",r10
! ASSIGNMENT STATEMENT...
	mov	195,r13		! source line 195
	mov	"\0\0AS",r10
!   _P_Kernel_currentInterruptStatus = 1		(4 bytes)
	mov	1,r1
	set	_P_Kernel_currentInterruptStatus,r2
	store	r1,[r2]
! CALL STATEMENT...
!   Call the function
	mov	196,r13		! source line 196
	mov	"\0\0CE",r10
	call	Seti
	jmp	_Label_332
_Label_331:
! ELSE...
	mov	198,r13		! source line 198
	mov	"\0\0EL",r10
! ASSIGNMENT STATEMENT...
	mov	198,r13		! source line 198
	mov	"\0\0AS",r10
!   _P_Kernel_currentInterruptStatus = 2		(4 bytes)
	mov	2,r1
	set	_P_Kernel_currentInterruptStatus,r2
	store	r1,[r2]
! CALL STATEMENT...
!   Call the function
	mov	199,r13		! source line 199
	mov	"\0\0CE",r10
	call	Cleari
! END IF...
_Label_332:
! RETURN STATEMENT...
	mov	201,r13		! source line 201
	mov	"\0\0RE",r10
!   ReturnResult: oldStat  (sizeInBytes=4)
	load	[r14+-12],r1
	store	r1,[r14+8]
	add	r15,8,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__P_Kernel_SetInterruptsTo:
	.word	_sourceFileName
	.word	_Label_333
	.word	4		! total size of parameters
	.word	4		! frame size = 4
	.word	_Label_334
	.word	8
	.word	4
	.word	_Label_335
	.word	-12
	.word	4
	.word	0
_Label_333:
	.ascii	"SetInterruptsTo\0"
	.align
_Label_334:
	.byte	'I'
	.ascii	"newStatus\0"
	.align
_Label_335:
	.byte	'I'
	.ascii	"oldStat\0"
	.align
! 
! ===============  FUNCTION ThreadPrintShort  ===============
! 
_function_201_ThreadPrintShort:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__function_201_ThreadPrintShort,r1
	push	r1
	mov	19,r1
_Label_3980:
	push	r0
	sub	r1,1,r1
	bne	_Label_3980
	mov	641,r13		! source line 641
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! oldStatus
!   Prepare Argument: offset=8  value=2  sizeInBytes=4
	mov	2,r1
	store	r1,[r15+0]
!   Call the function
	mov	648,r13		! source line 648
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=oldStatus  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-80]
! IF STATEMENT...
	mov	649,r13		! source line 649
	mov	"\0\0IF",r10
!   if t == 0 then goto _Label_339		(int)
	load	[r14+8],r1
	mov	0,r2
	cmp	r1,r2
	be	_Label_339
!   _temp_338 = 1		(1 byte)
	mov	1,r1
	storeb	r1,[r14+-9]
	jmp	_Label_340
_Label_339:
!   _temp_338 = 0		(1 byte)
	mov	0,r1
	storeb	r1,[r14+-9]
_Label_340:
!   if _temp_338 then goto _Label_337 else goto _Label_336
	loadb	[r14+-9],r1
	cmp	r1,0
	be	_Label_336
	jmp	_Label_337
_Label_336:
! THEN...
	mov	650,r13		! source line 650
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_341 = _StringConst_12
	set	_StringConst_12,r1
	store	r1,[r14+-76]
!   Prepare Argument: offset=8  value=_temp_341  sizeInBytes=4
	load	[r14+-76],r1
	store	r1,[r15+0]
!   Call the function
	mov	650,r13		! source line 650
	mov	"\0\0CE",r10
	call	print
! RETURN STATEMENT...
	mov	651,r13		! source line 651
	mov	"\0\0RE",r10
	add	r15,80,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_337:
! CALL STATEMENT...
!   _temp_342 = _StringConst_13
	set	_StringConst_13,r1
	store	r1,[r14+-72]
!   Prepare Argument: offset=8  value=_temp_342  sizeInBytes=4
	load	[r14+-72],r1
	store	r1,[r15+0]
!   Call the function
	mov	653,r13		! source line 653
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   if intIsZero (t) then goto _runtimeErrorNullPointer
	load	[r14+8],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_344 = t + 72
	load	[r14+8],r1
	add	r1,72,r1
	store	r1,[r14+-64]
!   Data Move: _temp_343 = *_temp_344  (sizeInBytes=4)
	load	[r14+-64],r1
	load	[r1],r1
	store	r1,[r14+-68]
!   Prepare Argument: offset=8  value=_temp_343  sizeInBytes=4
	load	[r14+-68],r1
	store	r1,[r15+0]
!   Call the function
	mov	654,r13		! source line 654
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_345 = _StringConst_14
	set	_StringConst_14,r1
	store	r1,[r14+-60]
!   Prepare Argument: offset=8  value=_temp_345  sizeInBytes=4
	load	[r14+-60],r1
	store	r1,[r15+0]
!   Call the function
	mov	655,r13		! source line 655
	mov	"\0\0CE",r10
	call	print
! SWITCH STATEMENT (using series of tests)...
	mov	656,r13		! source line 656
	mov	"\0\0SW",r10
!   Evaluate the switch expression...
!   if intIsZero (t) then goto _runtimeErrorNullPointer
	load	[r14+8],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_354 = t + 76
	load	[r14+8],r1
	add	r1,76,r1
	store	r1,[r14+-52]
!   Data Move: _temp_353 = *_temp_354  (sizeInBytes=4)
	load	[r14+-52],r1
	load	[r1],r1
	store	r1,[r14+-56]
!   Branch to the right case label
	load	[r14+-56],r1
	cmp	r1,1
	be	_Label_348
	cmp	r1,2
	be	_Label_349
	cmp	r1,3
	be	_Label_350
	cmp	r1,4
	be	_Label_351
	cmp	r1,5
	be	_Label_352
	jmp	_Label_346
! CASE 1...
_Label_348:
! CALL STATEMENT...
!   _temp_355 = _StringConst_15
	set	_StringConst_15,r1
	store	r1,[r14+-48]
!   Prepare Argument: offset=8  value=_temp_355  sizeInBytes=4
	load	[r14+-48],r1
	store	r1,[r15+0]
!   Call the function
	mov	658,r13		! source line 658
	mov	"\0\0CE",r10
	call	print
! BREAK STATEMENT...
	mov	659,r13		! source line 659
	mov	"\0\0BR",r10
	jmp	_Label_347
! CASE 2...
_Label_349:
! CALL STATEMENT...
!   _temp_356 = _StringConst_16
	set	_StringConst_16,r1
	store	r1,[r14+-44]
!   Prepare Argument: offset=8  value=_temp_356  sizeInBytes=4
	load	[r14+-44],r1
	store	r1,[r15+0]
!   Call the function
	mov	661,r13		! source line 661
	mov	"\0\0CE",r10
	call	print
! BREAK STATEMENT...
	mov	662,r13		! source line 662
	mov	"\0\0BR",r10
	jmp	_Label_347
! CASE 3...
_Label_350:
! CALL STATEMENT...
!   _temp_357 = _StringConst_17
	set	_StringConst_17,r1
	store	r1,[r14+-40]
!   Prepare Argument: offset=8  value=_temp_357  sizeInBytes=4
	load	[r14+-40],r1
	store	r1,[r15+0]
!   Call the function
	mov	664,r13		! source line 664
	mov	"\0\0CE",r10
	call	print
! BREAK STATEMENT...
	mov	665,r13		! source line 665
	mov	"\0\0BR",r10
	jmp	_Label_347
! CASE 4...
_Label_351:
! CALL STATEMENT...
!   _temp_358 = _StringConst_18
	set	_StringConst_18,r1
	store	r1,[r14+-36]
!   Prepare Argument: offset=8  value=_temp_358  sizeInBytes=4
	load	[r14+-36],r1
	store	r1,[r15+0]
!   Call the function
	mov	667,r13		! source line 667
	mov	"\0\0CE",r10
	call	print
! BREAK STATEMENT...
	mov	668,r13		! source line 668
	mov	"\0\0BR",r10
	jmp	_Label_347
! CASE 5...
_Label_352:
! CALL STATEMENT...
!   _temp_359 = _StringConst_19
	set	_StringConst_19,r1
	store	r1,[r14+-32]
!   Prepare Argument: offset=8  value=_temp_359  sizeInBytes=4
	load	[r14+-32],r1
	store	r1,[r15+0]
!   Call the function
	mov	670,r13		! source line 670
	mov	"\0\0CE",r10
	call	print
! BREAK STATEMENT...
	mov	671,r13		! source line 671
	mov	"\0\0BR",r10
	jmp	_Label_347
! DEFAULT CASE...
_Label_346:
! CALL STATEMENT...
!   _temp_360 = _StringConst_20
	set	_StringConst_20,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=8  value=_temp_360  sizeInBytes=4
	load	[r14+-28],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	673,r13		! source line 673
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END SWITCH...
_Label_347:
! CALL STATEMENT...
!   _temp_361 = _StringConst_21
	set	_StringConst_21,r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=8  value=_temp_361  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+0]
!   Call the function
	mov	675,r13		! source line 675
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_362 = t		(4 bytes)
	load	[r14+8],r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_362  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   Call the function
	mov	676,r13		! source line 676
	mov	"\0\0CE",r10
	call	printHex
! CALL STATEMENT...
!   _temp_363 = _StringConst_22
	set	_StringConst_22,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_363  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+0]
!   Call the function
	mov	677,r13		! source line 677
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Call the function
	mov	678,r13		! source line 678
	mov	"\0\0CA",r10
	call	_P_System_nl
! ASSIGNMENT STATEMENT...
	mov	680,r13		! source line 680
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=oldStatus  sizeInBytes=4
	load	[r14+-80],r1
	store	r1,[r15+0]
!   Call the function
	mov	680,r13		! source line 680
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=oldStatus  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-80]
! RETURN STATEMENT...
	mov	680,r13		! source line 680
	mov	"\0\0RE",r10
	add	r15,80,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__function_201_ThreadPrintShort:
	.word	_sourceFileName
	.word	_Label_364
	.word	4		! total size of parameters
	.word	76		! frame size = 76
	.word	_Label_365
	.word	8
	.word	4
	.word	_Label_366
	.word	-16
	.word	4
	.word	_Label_367
	.word	-20
	.word	4
	.word	_Label_368
	.word	-24
	.word	4
	.word	_Label_369
	.word	-28
	.word	4
	.word	_Label_370
	.word	-32
	.word	4
	.word	_Label_371
	.word	-36
	.word	4
	.word	_Label_372
	.word	-40
	.word	4
	.word	_Label_373
	.word	-44
	.word	4
	.word	_Label_374
	.word	-48
	.word	4
	.word	_Label_375
	.word	-52
	.word	4
	.word	_Label_376
	.word	-56
	.word	4
	.word	_Label_377
	.word	-60
	.word	4
	.word	_Label_378
	.word	-64
	.word	4
	.word	_Label_379
	.word	-68
	.word	4
	.word	_Label_380
	.word	-72
	.word	4
	.word	_Label_381
	.word	-76
	.word	4
	.word	_Label_382
	.word	-9
	.word	1
	.word	_Label_383
	.word	-80
	.word	4
	.word	0
_Label_364:
	.ascii	"ThreadPrintShort\0"
	.align
_Label_365:
	.byte	'P'
	.ascii	"t\0"
	.align
_Label_366:
	.byte	'?'
	.ascii	"_temp_363\0"
	.align
_Label_367:
	.byte	'?'
	.ascii	"_temp_362\0"
	.align
_Label_368:
	.byte	'?'
	.ascii	"_temp_361\0"
	.align
_Label_369:
	.byte	'?'
	.ascii	"_temp_360\0"
	.align
_Label_370:
	.byte	'?'
	.ascii	"_temp_359\0"
	.align
_Label_371:
	.byte	'?'
	.ascii	"_temp_358\0"
	.align
_Label_372:
	.byte	'?'
	.ascii	"_temp_357\0"
	.align
_Label_373:
	.byte	'?'
	.ascii	"_temp_356\0"
	.align
_Label_374:
	.byte	'?'
	.ascii	"_temp_355\0"
	.align
_Label_375:
	.byte	'?'
	.ascii	"_temp_354\0"
	.align
_Label_376:
	.byte	'?'
	.ascii	"_temp_353\0"
	.align
_Label_377:
	.byte	'?'
	.ascii	"_temp_345\0"
	.align
_Label_378:
	.byte	'?'
	.ascii	"_temp_344\0"
	.align
_Label_379:
	.byte	'?'
	.ascii	"_temp_343\0"
	.align
_Label_380:
	.byte	'?'
	.ascii	"_temp_342\0"
	.align
_Label_381:
	.byte	'?'
	.ascii	"_temp_341\0"
	.align
_Label_382:
	.byte	'C'
	.ascii	"_temp_338\0"
	.align
_Label_383:
	.byte	'I'
	.ascii	"oldStatus\0"
	.align
! 
! ===============  FUNCTION PrintObjectAddr  ===============
! 
_function_200_PrintObjectAddr:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__function_200_PrintObjectAddr,r1
	push	r1
	mov	2,r1
_Label_3981:
	push	r0
	sub	r1,1,r1
	bne	_Label_3981
	mov	1055,r13		! source line 1055
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   _temp_384 = p		(4 bytes)
	load	[r14+8],r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_384  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	1059,r13		! source line 1059
	mov	"\0\0CE",r10
	call	printHex
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=32  sizeInBytes=1
	mov	32,r1
	storeb	r1,[r15+0]
!   Call the function
	mov	1060,r13		! source line 1060
	mov	"\0\0CE",r10
	call	printChar
! RETURN STATEMENT...
	mov	1060,r13		! source line 1060
	mov	"\0\0RE",r10
	add	r15,12,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__function_200_PrintObjectAddr:
	.word	_sourceFileName
	.word	_Label_385
	.word	4		! total size of parameters
	.word	8		! frame size = 8
	.word	_Label_386
	.word	8
	.word	4
	.word	_Label_387
	.word	-12
	.word	4
	.word	0
_Label_385:
	.ascii	"PrintObjectAddr\0"
	.align
_Label_386:
	.byte	'P'
	.ascii	"p\0"
	.align
_Label_387:
	.byte	'?'
	.ascii	"_temp_384\0"
	.align
! 
! ===============  FUNCTION ProcessFinish  ===============
! 
_P_Kernel_ProcessFinish:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__P_Kernel_ProcessFinish,r1
	push	r1
	mov	16,r1
_Label_3982:
	push	r0
	sub	r1,1,r1
	bne	_Label_3982
	mov	1065,r13		! source line 1065
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1077,r13		! source line 1077
	mov	"\0\0AS",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_388 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-52]
!   Data Move: thisProcess = *_temp_388  (sizeInBytes=4)
	load	[r14+-52],r1
	load	[r1],r1
	store	r1,[r14+-60]
! ASSIGNMENT STATEMENT...
	mov	1080,r13		! source line 1080
	mov	"\0\0AS",r10
!   if intIsZero (thisProcess) then goto _runtimeErrorNullPointer
	load	[r14+-60],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_389 = thisProcess + 28
	load	[r14+-60],r1
	add	r1,28,r1
	store	r1,[r14+-48]
!   Data Move: *_temp_389 = exitStatus  (sizeInBytes=4)
	load	[r14+8],r1
	load	[r14+-48],r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	1083,r13		! source line 1083
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=2  sizeInBytes=4
	mov	2,r1
	store	r1,[r15+0]
!   Call the function
	mov	1083,r13		! source line 1083
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=oldInterruptStatus  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-56]
! ASSIGNMENT STATEMENT...
	mov	1086,r13		! source line 1086
	mov	"\0\0AS",r10
!   if intIsZero (thisProcess) then goto _runtimeErrorNullPointer
	load	[r14+-60],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_390 = thisProcess + 24
	load	[r14+-60],r1
	add	r1,24,r1
	store	r1,[r14+-44]
!   Data Move: *_temp_390 = 0  (sizeInBytes=4)
	mov	0,r1
	load	[r14+-44],r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	1087,r13		! source line 1087
	mov	"\0\0AS",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_391 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-40]
!   Data Move: *_temp_391 = 0  (sizeInBytes=4)
	mov	0,r1
	load	[r14+-40],r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	1089,r13		! source line 1089
	mov	"\0\0AS",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_392 = _P_Kernel_currentThread + 4092
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4092,r1
	store	r1,[r14+-36]
!   Data Move: *_temp_392 = 0  (sizeInBytes=1)
	mov	0,r1
	load	[r14+-36],r2
	storeb	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	1092,r13		! source line 1092
	mov	"\0\0AS",r10
!   i = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-64]
! WHILE STATEMENT...
	mov	1092,r13		! source line 1092
	mov	"\0\0WH",r10
_Label_393:
!   if i >= 10 then goto _Label_395		(int)
	load	[r14+-64],r1
	mov	10,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_395
!	jmp	_Label_394
_Label_394:
	mov	1092,r13		! source line 1092
	mov	"\0\0WB",r10
! ASSIGNMENT STATEMENT...
	mov	1093,r13		! source line 1093
	mov	"\0\0AS",r10
!   if intIsZero (thisProcess) then goto _runtimeErrorNullPointer
	load	[r14+-60],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_396 = thisProcess + 124
	load	[r14+-60],r1
	add	r1,124,r1
	store	r1,[r14+-32]
!   Move address of _temp_396 [i ] into _temp_397
!     make sure index expr is >= 0
	load	[r14+-64],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-32],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	4,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-28]
!   Data Move: *_temp_397 = 0  (sizeInBytes=4)
	mov	0,r1
	load	[r14+-28],r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	1092,r13		! source line 1092
	mov	"\0\0AS",r10
!   i = i + 1		(int)
	load	[r14+-64],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-64]
! END WHILE...
	jmp	_Label_393
_Label_395:
! ASSIGNMENT STATEMENT...
	mov	1097,r13		! source line 1097
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=1  sizeInBytes=4
	mov	1,r1
	store	r1,[r15+0]
!   Call the function
	mov	1097,r13		! source line 1097
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=oldInterruptStatus  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-56]
! SEND STATEMENT...
	mov	1100,r13		! source line 1100
	mov	"\0\0SE",r10
!   if intIsZero (thisProcess) then goto _runtimeErrorNullPointer
	load	[r14+-60],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_399 = thisProcess + 32
	load	[r14+-60],r1
	add	r1,32,r1
	store	r1,[r14+-20]
!   _temp_398 = _temp_399		(4 bytes)
	load	[r14+-20],r1
	store	r1,[r14+-24]
!   _temp_400 = &_P_Kernel_frameManager
	set	_P_Kernel_frameManager,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=12  value=_temp_398  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+4]
!   Send message ReturnAllFrames
	load	[r14+-16],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,20,r2
	call	r2
! SEND STATEMENT...
	mov	1102,r13		! source line 1102
	mov	"\0\0SE",r10
!   _temp_401 = &_P_Kernel_processManager
	set	_P_Kernel_processManager,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=12  value=thisProcess  sizeInBytes=4
	load	[r14+-60],r1
	store	r1,[r15+4]
!   Send message TurnIntoZombie
	load	[r14+-12],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,24,r2
	call	r2
! CALL STATEMENT...
!   Call the function
	mov	1104,r13		! source line 1104
	mov	"\0\0CA",r10
	call	_P_Kernel_ThreadFinish
! RETURN STATEMENT...
	mov	1104,r13		! source line 1104
	mov	"\0\0RE",r10
	add	r15,68,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__P_Kernel_ProcessFinish:
	.word	_sourceFileName
	.word	_Label_402
	.word	4		! total size of parameters
	.word	64		! frame size = 64
	.word	_Label_403
	.word	8
	.word	4
	.word	_Label_404
	.word	-12
	.word	4
	.word	_Label_405
	.word	-16
	.word	4
	.word	_Label_406
	.word	-20
	.word	4
	.word	_Label_407
	.word	-24
	.word	4
	.word	_Label_408
	.word	-28
	.word	4
	.word	_Label_409
	.word	-32
	.word	4
	.word	_Label_410
	.word	-36
	.word	4
	.word	_Label_411
	.word	-40
	.word	4
	.word	_Label_412
	.word	-44
	.word	4
	.word	_Label_413
	.word	-48
	.word	4
	.word	_Label_414
	.word	-52
	.word	4
	.word	_Label_415
	.word	-56
	.word	4
	.word	_Label_416
	.word	-60
	.word	4
	.word	_Label_417
	.word	-64
	.word	4
	.word	0
_Label_402:
	.ascii	"ProcessFinish\0"
	.align
_Label_403:
	.byte	'I'
	.ascii	"exitStatus\0"
	.align
_Label_404:
	.byte	'?'
	.ascii	"_temp_401\0"
	.align
_Label_405:
	.byte	'?'
	.ascii	"_temp_400\0"
	.align
_Label_406:
	.byte	'?'
	.ascii	"_temp_399\0"
	.align
_Label_407:
	.byte	'?'
	.ascii	"_temp_398\0"
	.align
_Label_408:
	.byte	'?'
	.ascii	"_temp_397\0"
	.align
_Label_409:
	.byte	'?'
	.ascii	"_temp_396\0"
	.align
_Label_410:
	.byte	'?'
	.ascii	"_temp_392\0"
	.align
_Label_411:
	.byte	'?'
	.ascii	"_temp_391\0"
	.align
_Label_412:
	.byte	'?'
	.ascii	"_temp_390\0"
	.align
_Label_413:
	.byte	'?'
	.ascii	"_temp_389\0"
	.align
_Label_414:
	.byte	'?'
	.ascii	"_temp_388\0"
	.align
_Label_415:
	.byte	'I'
	.ascii	"oldInterruptStatus\0"
	.align
_Label_416:
	.byte	'P'
	.ascii	"thisProcess\0"
	.align
_Label_417:
	.byte	'I'
	.ascii	"i\0"
	.align
! 
! ===============  FUNCTION InitFirstProcess  ===============
! 
_P_Kernel_InitFirstProcess:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__P_Kernel_InitFirstProcess,r1
	push	r1
	mov	8,r1
_Label_3983:
	push	r0
	sub	r1,1,r1
	bne	_Label_3983
	mov	1110,r13		! source line 1110
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1115,r13		! source line 1115
	mov	"\0\0AS",r10
	mov	1115,r13		! source line 1115
	mov	"\0\0SE",r10
!   _temp_418 = &_P_Kernel_threadManager
	set	_P_Kernel_threadManager,r1
	store	r1,[r14+-24]
!   Send message GetANewThread
	load	[r14+-24],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
!   Retrieve Result: targetName=newThread  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-28]
! SEND STATEMENT...
	mov	1116,r13		! source line 1116
	mov	"\0\0SE",r10
!   _temp_419 = _StringConst_23
	set	_StringConst_23,r1
	store	r1,[r14+-20]
!   if intIsZero (newThread) then goto _runtimeErrorNullPointer
	load	[r14+-28],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Prepare Argument: offset=12  value=_temp_419  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+4]
!   Send message Init
	load	[r14+-28],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,4,r2
	call	r2
! SEND STATEMENT...
	mov	1117,r13		! source line 1117
	mov	"\0\0SE",r10
!   _temp_420 = _P_Kernel_StartUserProcess
	set	_P_Kernel_StartUserProcess,r1
	store	r1,[r14+-16]
!   _temp_421 = _StringConst_24
	set	_StringConst_24,r1
	store	r1,[r14+-12]
!   if intIsZero (newThread) then goto _runtimeErrorNullPointer
	load	[r14+-28],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Prepare Argument: offset=12  value=_temp_420  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=_temp_421  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+8]
!   Send message Fork
	load	[r14+-28],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! RETURN STATEMENT...
	mov	1117,r13		! source line 1117
	mov	"\0\0RE",r10
	add	r15,36,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__P_Kernel_InitFirstProcess:
	.word	_sourceFileName
	.word	_Label_422
	.word	0		! total size of parameters
	.word	32		! frame size = 32
	.word	_Label_423
	.word	-12
	.word	4
	.word	_Label_424
	.word	-16
	.word	4
	.word	_Label_425
	.word	-20
	.word	4
	.word	_Label_426
	.word	-24
	.word	4
	.word	_Label_427
	.word	-28
	.word	4
	.word	0
_Label_422:
	.ascii	"InitFirstProcess\0"
	.align
_Label_423:
	.byte	'?'
	.ascii	"_temp_421\0"
	.align
_Label_424:
	.byte	'?'
	.ascii	"_temp_420\0"
	.align
_Label_425:
	.byte	'?'
	.ascii	"_temp_419\0"
	.align
_Label_426:
	.byte	'?'
	.ascii	"_temp_418\0"
	.align
_Label_427:
	.byte	'P'
	.ascii	"newThread\0"
	.align
! 
! ===============  FUNCTION StartUserProcess  ===============
! 
_P_Kernel_StartUserProcess:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__P_Kernel_StartUserProcess,r1
	push	r1
	mov	25,r1
_Label_3984:
	push	r0
	sub	r1,1,r1
	bne	_Label_3984
	mov	1122,r13		! source line 1122
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1133,r13		! source line 1133
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=1  sizeInBytes=4
	mov	1,r1
	store	r1,[r15+0]
!   Call the function
	mov	1133,r13		! source line 1133
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=junk  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-96]
! ASSIGNMENT STATEMENT...
	mov	1136,r13		! source line 1136
	mov	"\0\0AS",r10
	mov	1136,r13		! source line 1136
	mov	"\0\0SE",r10
!   _temp_428 = &_P_Kernel_processManager
	set	_P_Kernel_processManager,r1
	store	r1,[r14+-72]
!   Send message GetANewProcess
	load	[r14+-72],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,16,r2
	call	r2
!   Retrieve Result: targetName=newProcess  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-76]
! ASSIGNMENT STATEMENT...
	mov	1137,r13		! source line 1137
	mov	"\0\0AS",r10
!   if intIsZero (newProcess) then goto _runtimeErrorNullPointer
	load	[r14+-76],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_429 = newProcess + 24
	load	[r14+-76],r1
	add	r1,24,r1
	store	r1,[r14+-68]
!   Data Move: *_temp_429 = _P_Kernel_currentThread  (sizeInBytes=4)
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	load	[r14+-68],r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	1138,r13		! source line 1138
	mov	"\0\0AS",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_430 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-64]
!   Data Move: *_temp_430 = newProcess  (sizeInBytes=4)
	load	[r14+-76],r1
	load	[r14+-64],r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	1141,r13		! source line 1141
	mov	"\0\0AS",r10
	mov	1141,r13		! source line 1141
	mov	"\0\0SE",r10
!   _temp_431 = _StringConst_25
	set	_StringConst_25,r1
	store	r1,[r14+-60]
!   _temp_432 = &_P_Kernel_fileManager
	set	_P_Kernel_fileManager,r1
	store	r1,[r14+-56]
!   Prepare Argument: offset=12  value=_temp_431  sizeInBytes=4
	load	[r14+-60],r1
	store	r1,[r15+4]
!   Send message Open
	load	[r14+-56],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,16,r2
	call	r2
!   Retrieve Result: targetName=openFile  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-80]
! SEND STATEMENT...
	mov	1144,r13		! source line 1144
	mov	"\0\0SE",r10
!   if intIsZero (newProcess) then goto _runtimeErrorNullPointer
	load	[r14+-76],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_433 = newProcess + 32
	load	[r14+-76],r1
	add	r1,32,r1
	store	r1,[r14+-52]
!   Send message Init
	load	[r14+-52],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,4,r2
	call	r2
! ASSIGNMENT STATEMENT...
	mov	1145,r13		! source line 1145
	mov	"\0\0AS",r10
	mov	1145,r13		! source line 1145
	mov	"\0\0SE",r10
!   if intIsZero (newProcess) then goto _runtimeErrorNullPointer
	load	[r14+-76],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_435 = newProcess + 32
	load	[r14+-76],r1
	add	r1,32,r1
	store	r1,[r14+-44]
!   _temp_434 = _temp_435		(4 bytes)
	load	[r14+-44],r1
	store	r1,[r14+-48]
!   if intIsZero (openFile) then goto _runtimeErrorNullPointer
	load	[r14+-80],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Prepare Argument: offset=12  value=_temp_434  sizeInBytes=4
	load	[r14+-48],r1
	store	r1,[r15+4]
!   Send message LoadExecutable
	load	[r14+-80],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,16,r2
	call	r2
!   Retrieve Result: targetName=initUserPC  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-84]
! SEND STATEMENT...
	mov	1148,r13		! source line 1148
	mov	"\0\0SE",r10
!   _temp_436 = &_P_Kernel_fileManager
	set	_P_Kernel_fileManager,r1
	store	r1,[r14+-40]
!   Prepare Argument: offset=12  value=openFile  sizeInBytes=4
	load	[r14+-80],r1
	store	r1,[r15+4]
!   Send message Close
	load	[r14+-40],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,20,r2
	call	r2
! ASSIGNMENT STATEMENT...
	mov	1151,r13		! source line 1151
	mov	"\0\0AS",r10
!   if intIsZero (newProcess) then goto _runtimeErrorNullPointer
	load	[r14+-76],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_438 = newProcess + 32
	load	[r14+-76],r1
	add	r1,32,r1
	store	r1,[r14+-32]
!   _temp_439 = _temp_438 + 4
	load	[r14+-32],r1
	add	r1,4,r1
	store	r1,[r14+-28]
!   Data Move: _temp_437 = *_temp_439  (sizeInBytes=4)
	load	[r14+-28],r1
	load	[r1],r1
	store	r1,[r14+-36]
!   initUserStackTop = _temp_437 * 8192		(int)
	load	[r14+-36],r1
	mov	8192,r2
	mul	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-88]
! ASSIGNMENT STATEMENT...
	mov	1154,r13		! source line 1154
	mov	"\0\0AS",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_440 = _P_Kernel_currentThread + 88
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,88,r1
	store	r1,[r14+-24]
!   Move address of _temp_440 [999 ] into _temp_441
!     make sure index expr is >= 0
	mov	999,r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-24],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	4,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-20]
!   initSystemStackTop = _temp_441		(4 bytes)
	load	[r14+-20],r1
	store	r1,[r14+-92]
! ASSIGNMENT STATEMENT...
	mov	1157,r13		! source line 1157
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=2  sizeInBytes=4
	mov	2,r1
	store	r1,[r15+0]
!   Call the function
	mov	1157,r13		! source line 1157
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=junk  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-96]
! SEND STATEMENT...
	mov	1158,r13		! source line 1158
	mov	"\0\0SE",r10
!   if intIsZero (newProcess) then goto _runtimeErrorNullPointer
	load	[r14+-76],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_442 = newProcess + 32
	load	[r14+-76],r1
	add	r1,32,r1
	store	r1,[r14+-16]
!   Send message SetToThisPageTable
	load	[r14+-16],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,72,r2
	call	r2
! ASSIGNMENT STATEMENT...
	mov	1159,r13		! source line 1159
	mov	"\0\0AS",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_443 = _P_Kernel_currentThread + 4092
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4092,r1
	store	r1,[r14+-12]
!   Data Move: *_temp_443 = 1  (sizeInBytes=1)
	mov	1,r1
	load	[r14+-12],r2
	storeb	r1,[r2]
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=initUserStackTop  sizeInBytes=4
	load	[r14+-88],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=initUserPC  sizeInBytes=4
	load	[r14+-84],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=initSystemStackTop  sizeInBytes=4
	load	[r14+-92],r1
	store	r1,[r15+8]
!   Call the function
	mov	1161,r13		! source line 1161
	mov	"\0\0CE",r10
	call	BecomeUserThread
! RETURN STATEMENT...
	mov	1161,r13		! source line 1161
	mov	"\0\0RE",r10
	add	r15,104,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__P_Kernel_StartUserProcess:
	.word	_sourceFileName
	.word	_Label_444
	.word	0		! total size of parameters
	.word	100		! frame size = 100
	.word	_Label_445
	.word	-12
	.word	4
	.word	_Label_446
	.word	-16
	.word	4
	.word	_Label_447
	.word	-20
	.word	4
	.word	_Label_448
	.word	-24
	.word	4
	.word	_Label_449
	.word	-28
	.word	4
	.word	_Label_450
	.word	-32
	.word	4
	.word	_Label_451
	.word	-36
	.word	4
	.word	_Label_452
	.word	-40
	.word	4
	.word	_Label_453
	.word	-44
	.word	4
	.word	_Label_454
	.word	-48
	.word	4
	.word	_Label_455
	.word	-52
	.word	4
	.word	_Label_456
	.word	-56
	.word	4
	.word	_Label_457
	.word	-60
	.word	4
	.word	_Label_458
	.word	-64
	.word	4
	.word	_Label_459
	.word	-68
	.word	4
	.word	_Label_460
	.word	-72
	.word	4
	.word	_Label_461
	.word	-76
	.word	4
	.word	_Label_462
	.word	-80
	.word	4
	.word	_Label_463
	.word	-84
	.word	4
	.word	_Label_464
	.word	-88
	.word	4
	.word	_Label_465
	.word	-92
	.word	4
	.word	_Label_466
	.word	-96
	.word	4
	.word	0
_Label_444:
	.ascii	"StartUserProcess\0"
	.align
_Label_445:
	.byte	'?'
	.ascii	"_temp_443\0"
	.align
_Label_446:
	.byte	'?'
	.ascii	"_temp_442\0"
	.align
_Label_447:
	.byte	'?'
	.ascii	"_temp_441\0"
	.align
_Label_448:
	.byte	'?'
	.ascii	"_temp_440\0"
	.align
_Label_449:
	.byte	'?'
	.ascii	"_temp_439\0"
	.align
_Label_450:
	.byte	'?'
	.ascii	"_temp_438\0"
	.align
_Label_451:
	.byte	'?'
	.ascii	"_temp_437\0"
	.align
_Label_452:
	.byte	'?'
	.ascii	"_temp_436\0"
	.align
_Label_453:
	.byte	'?'
	.ascii	"_temp_435\0"
	.align
_Label_454:
	.byte	'?'
	.ascii	"_temp_434\0"
	.align
_Label_455:
	.byte	'?'
	.ascii	"_temp_433\0"
	.align
_Label_456:
	.byte	'?'
	.ascii	"_temp_432\0"
	.align
_Label_457:
	.byte	'?'
	.ascii	"_temp_431\0"
	.align
_Label_458:
	.byte	'?'
	.ascii	"_temp_430\0"
	.align
_Label_459:
	.byte	'?'
	.ascii	"_temp_429\0"
	.align
_Label_460:
	.byte	'?'
	.ascii	"_temp_428\0"
	.align
_Label_461:
	.byte	'P'
	.ascii	"newProcess\0"
	.align
_Label_462:
	.byte	'P'
	.ascii	"openFile\0"
	.align
_Label_463:
	.byte	'I'
	.ascii	"initUserPC\0"
	.align
_Label_464:
	.byte	'I'
	.ascii	"initUserStackTop\0"
	.align
_Label_465:
	.byte	'I'
	.ascii	"initSystemStackTop\0"
	.align
_Label_466:
	.byte	'I'
	.ascii	"junk\0"
	.align
! 
! ===============  FUNCTION ResumeChildAfterFork  ===============
! 
_P_Kernel_ResumeChildAfterFork:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__P_Kernel_ResumeChildAfterFork,r1
	push	r1
	mov	17,r1
_Label_3985:
	push	r0
	sub	r1,1,r1
	bne	_Label_3985
	mov	1167,r13		! source line 1167
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1175,r13		! source line 1175
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=2  sizeInBytes=4
	mov	2,r1
	store	r1,[r15+0]
!   Call the function
	mov	1175,r13		! source line 1175
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=junk  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-56]
! SEND STATEMENT...
	mov	1178,r13		! source line 1178
	mov	"\0\0SE",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_468 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-48]
!   Data Move: _temp_467 = *_temp_468  (sizeInBytes=4)
	load	[r14+-48],r1
	load	[r1],r1
	store	r1,[r14+-52]
!   if intIsZero (_temp_467) then goto _runtimeErrorNullPointer
	load	[r14+-52],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_469 = _temp_467 + 32
	load	[r14+-52],r1
	add	r1,32,r1
	store	r1,[r14+-44]
!   Send message SetToThisPageTable
	load	[r14+-44],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,72,r2
	call	r2
! CALL STATEMENT...
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_471 = _P_Kernel_currentThread + 4096
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4096,r1
	store	r1,[r14+-36]
!   Move address of _temp_471 [0 ] into _temp_472
!     make sure index expr is >= 0
	mov	0,r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-36],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	4,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-32]
!   _temp_470 = _temp_472		(4 bytes)
	load	[r14+-32],r1
	store	r1,[r14+-40]
!   Prepare Argument: offset=8  value=_temp_470  sizeInBytes=4
	load	[r14+-40],r1
	store	r1,[r15+0]
!   Call the function
	mov	1181,r13		! source line 1181
	mov	"\0\0CE",r10
	call	RestoreUserRegs
! ASSIGNMENT STATEMENT...
	mov	1184,r13		! source line 1184
	mov	"\0\0AS",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_473 = _P_Kernel_currentThread + 4092
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4092,r1
	store	r1,[r14+-28]
!   Data Move: *_temp_473 = 1  (sizeInBytes=1)
	mov	1,r1
	load	[r14+-28],r2
	storeb	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	1187,r13		! source line 1187
	mov	"\0\0AS",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_474 = _P_Kernel_currentThread + 88
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,88,r1
	store	r1,[r14+-24]
!   Move address of _temp_474 [999 ] into _temp_475
!     make sure index expr is >= 0
	mov	999,r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-24],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	4,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-20]
!   systemStackTop = _temp_475		(4 bytes)
	load	[r14+-20],r1
	store	r1,[r14+-60]
! ASSIGNMENT STATEMENT...
	mov	1190,r13		! source line 1190
	mov	"\0\0AS",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_476 = _P_Kernel_currentThread + 4096
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4096,r1
	store	r1,[r14+-16]
!   Move address of _temp_476 [14 ] into _temp_477
!     make sure index expr is >= 0
	mov	14,r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-16],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	4,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-12]
!   Data Move: userStackTop = *_temp_477  (sizeInBytes=4)
	load	[r14+-12],r1
	load	[r1],r1
	store	r1,[r14+-64]
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=userStackTop  sizeInBytes=4
	load	[r14+-64],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=oldUserPC  sizeInBytes=4
	load	[r14+8],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=systemStackTop  sizeInBytes=4
	load	[r14+-60],r1
	store	r1,[r15+8]
!   Call the function
	mov	1192,r13		! source line 1192
	mov	"\0\0CE",r10
	call	BecomeUserThread
! RETURN STATEMENT...
	mov	1192,r13		! source line 1192
	mov	"\0\0RE",r10
	add	r15,72,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__P_Kernel_ResumeChildAfterFork:
	.word	_sourceFileName
	.word	_Label_478
	.word	4		! total size of parameters
	.word	68		! frame size = 68
	.word	_Label_479
	.word	8
	.word	4
	.word	_Label_480
	.word	-12
	.word	4
	.word	_Label_481
	.word	-16
	.word	4
	.word	_Label_482
	.word	-20
	.word	4
	.word	_Label_483
	.word	-24
	.word	4
	.word	_Label_484
	.word	-28
	.word	4
	.word	_Label_485
	.word	-32
	.word	4
	.word	_Label_486
	.word	-36
	.word	4
	.word	_Label_487
	.word	-40
	.word	4
	.word	_Label_488
	.word	-44
	.word	4
	.word	_Label_489
	.word	-48
	.word	4
	.word	_Label_490
	.word	-52
	.word	4
	.word	_Label_491
	.word	-56
	.word	4
	.word	_Label_492
	.word	-60
	.word	4
	.word	_Label_493
	.word	-64
	.word	4
	.word	0
_Label_478:
	.ascii	"ResumeChildAfterFork\0"
	.align
_Label_479:
	.byte	'I'
	.ascii	"oldUserPC\0"
	.align
_Label_480:
	.byte	'?'
	.ascii	"_temp_477\0"
	.align
_Label_481:
	.byte	'?'
	.ascii	"_temp_476\0"
	.align
_Label_482:
	.byte	'?'
	.ascii	"_temp_475\0"
	.align
_Label_483:
	.byte	'?'
	.ascii	"_temp_474\0"
	.align
_Label_484:
	.byte	'?'
	.ascii	"_temp_473\0"
	.align
_Label_485:
	.byte	'?'
	.ascii	"_temp_472\0"
	.align
_Label_486:
	.byte	'?'
	.ascii	"_temp_471\0"
	.align
_Label_487:
	.byte	'?'
	.ascii	"_temp_470\0"
	.align
_Label_488:
	.byte	'?'
	.ascii	"_temp_469\0"
	.align
_Label_489:
	.byte	'?'
	.ascii	"_temp_468\0"
	.align
_Label_490:
	.byte	'?'
	.ascii	"_temp_467\0"
	.align
_Label_491:
	.byte	'I'
	.ascii	"junk\0"
	.align
_Label_492:
	.byte	'I'
	.ascii	"systemStackTop\0"
	.align
_Label_493:
	.byte	'I'
	.ascii	"userStackTop\0"
	.align
! 
! ===============  FUNCTION SerialHandlerFunction  ===============
! 
_function_199_SerialHandlerFunction:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__function_199_SerialHandlerFunction,r1
	push	r1
	mov	2,r1
_Label_3986:
	push	r0
	sub	r1,1,r1
	bne	_Label_3986
	mov	1198,r13		! source line 1198
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! SEND STATEMENT...
	mov	1200,r13		! source line 1200
	mov	"\0\0SE",r10
!   _temp_494 = &_P_Kernel_serialDriver
	set	_P_Kernel_serialDriver,r1
	store	r1,[r14+-12]
!   Send message SerialHandler
	load	[r14+-12],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,16,r2
	call	r2
! RETURN STATEMENT...
	mov	1200,r13		! source line 1200
	mov	"\0\0RE",r10
	add	r15,12,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__function_199_SerialHandlerFunction:
	.word	_sourceFileName
	.word	_Label_495
	.word	4		! total size of parameters
	.word	8		! frame size = 8
	.word	_Label_496
	.word	8
	.word	4
	.word	_Label_497
	.word	-12
	.word	4
	.word	0
_Label_495:
	.ascii	"SerialHandlerFunction\0"
	.align
_Label_496:
	.byte	'I'
	.ascii	"ignore\0"
	.align
_Label_497:
	.byte	'?'
	.ascii	"_temp_494\0"
	.align
! 
! ===============  FUNCTION TimerInterruptHandler  ===============
! 
_P_Kernel_TimerInterruptHandler:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__P_Kernel_TimerInterruptHandler,r1
	push	r1
	mov	1,r1
_Label_3987:
	push	r0
	sub	r1,1,r1
	bne	_Label_3987
	mov	1686,r13		! source line 1686
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1696,r13		! source line 1696
	mov	"\0\0AS",r10
!   _P_Kernel_currentInterruptStatus = 2		(4 bytes)
	mov	2,r1
	set	_P_Kernel_currentInterruptStatus,r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	1698,r13		! source line 1698
	mov	"\0\0SE",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Send message Yield
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
! ASSIGNMENT STATEMENT...
	mov	1699,r13		! source line 1699
	mov	"\0\0AS",r10
!   _P_Kernel_currentInterruptStatus = 1		(4 bytes)
	mov	1,r1
	set	_P_Kernel_currentInterruptStatus,r2
	store	r1,[r2]
! RETURN STATEMENT...
	mov	1699,r13		! source line 1699
	mov	"\0\0RE",r10
	add	r15,8,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__P_Kernel_TimerInterruptHandler:
	.word	_sourceFileName
	.word	_Label_498
	.word	0		! total size of parameters
	.word	4		! frame size = 4
	.word	0
_Label_498:
	.ascii	"TimerInterruptHandler\0"
	.align
! 
! ===============  FUNCTION DiskInterruptHandler  ===============
! 
_P_Kernel_DiskInterruptHandler:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__P_Kernel_DiskInterruptHandler,r1
	push	r1
	mov	7,r1
_Label_3988:
	push	r0
	sub	r1,1,r1
	bne	_Label_3988
	mov	1704,r13		! source line 1704
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1715,r13		! source line 1715
	mov	"\0\0AS",r10
!   _P_Kernel_currentInterruptStatus = 2		(4 bytes)
	mov	2,r1
	set	_P_Kernel_currentInterruptStatus,r2
	store	r1,[r2]
! IF STATEMENT...
	mov	1717,r13		! source line 1717
	mov	"\0\0IF",r10
!   _temp_502 = &_P_Kernel_diskDriver
	set	_P_Kernel_diskDriver,r1
	store	r1,[r14+-28]
!   _temp_503 = _temp_502 + 24
	load	[r14+-28],r1
	add	r1,24,r1
	store	r1,[r14+-24]
!   Data Move: _temp_501 = *_temp_503  (sizeInBytes=4)
	load	[r14+-24],r1
	load	[r1],r1
	store	r1,[r14+-32]
!   if _temp_501 == 0 then goto _Label_500		(int)
	load	[r14+-32],r1
	mov	0,r2
	cmp	r1,r2
	be	_Label_500
!	jmp	_Label_499
_Label_499:
! THEN...
	mov	1718,r13		! source line 1718
	mov	"\0\0TN",r10
! SEND STATEMENT...
	mov	1718,r13		! source line 1718
	mov	"\0\0SE",r10
!   _temp_505 = &_P_Kernel_diskDriver
	set	_P_Kernel_diskDriver,r1
	store	r1,[r14+-16]
!   _temp_506 = _temp_505 + 24
	load	[r14+-16],r1
	add	r1,24,r1
	store	r1,[r14+-12]
!   Data Move: _temp_504 = *_temp_506  (sizeInBytes=4)
	load	[r14+-12],r1
	load	[r1],r1
	store	r1,[r14+-20]
!   if intIsZero (_temp_504) then goto _runtimeErrorNullPointer
	load	[r14+-20],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Send message Up
	load	[r14+-20],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
! END IF...
_Label_500:
! RETURN STATEMENT...
	mov	1717,r13		! source line 1717
	mov	"\0\0RE",r10
	add	r15,32,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__P_Kernel_DiskInterruptHandler:
	.word	_sourceFileName
	.word	_Label_507
	.word	0		! total size of parameters
	.word	28		! frame size = 28
	.word	_Label_508
	.word	-12
	.word	4
	.word	_Label_509
	.word	-16
	.word	4
	.word	_Label_510
	.word	-20
	.word	4
	.word	_Label_511
	.word	-24
	.word	4
	.word	_Label_512
	.word	-28
	.word	4
	.word	_Label_513
	.word	-32
	.word	4
	.word	0
_Label_507:
	.ascii	"DiskInterruptHandler\0"
	.align
_Label_508:
	.byte	'?'
	.ascii	"_temp_506\0"
	.align
_Label_509:
	.byte	'?'
	.ascii	"_temp_505\0"
	.align
_Label_510:
	.byte	'?'
	.ascii	"_temp_504\0"
	.align
_Label_511:
	.byte	'?'
	.ascii	"_temp_503\0"
	.align
_Label_512:
	.byte	'?'
	.ascii	"_temp_502\0"
	.align
_Label_513:
	.byte	'?'
	.ascii	"_temp_501\0"
	.align
! 
! ===============  FUNCTION SerialInterruptHandler  ===============
! 
_P_Kernel_SerialInterruptHandler:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__P_Kernel_SerialInterruptHandler,r1
	push	r1
	mov	3,r1
_Label_3989:
	push	r0
	sub	r1,1,r1
	bne	_Label_3989
	mov	1725,r13		! source line 1725
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1734,r13		! source line 1734
	mov	"\0\0AS",r10
!   _P_Kernel_currentInterruptStatus = 2		(4 bytes)
	mov	2,r1
	set	_P_Kernel_currentInterruptStatus,r2
	store	r1,[r2]
! IF STATEMENT...
	mov	1736,r13		! source line 1736
	mov	"\0\0IF",r10
!   if _P_Kernel_serialHasBeenInitialized then goto _Label_514 else goto _Label_515
	set	_P_Kernel_serialHasBeenInitialized,r1
	loadb	[r1],r1
	cmp	r1,0
	be	_Label_515
	jmp	_Label_514
_Label_514:
! THEN...
	mov	1737,r13		! source line 1737
	mov	"\0\0TN",r10
! SEND STATEMENT...
	mov	1737,r13		! source line 1737
	mov	"\0\0SE",r10
!   _temp_516 = &_P_Kernel_serialDriver
	set	_P_Kernel_serialDriver,r1
	store	r1,[r14+-16]
!   _temp_517 = _temp_516 + 124
	load	[r14+-16],r1
	add	r1,124,r1
	store	r1,[r14+-12]
!   Send message Up
	load	[r14+-12],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
! END IF...
_Label_515:
! RETURN STATEMENT...
	mov	1740,r13		! source line 1740
	mov	"\0\0RE",r10
	add	r15,16,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__P_Kernel_SerialInterruptHandler:
	.word	_sourceFileName
	.word	_Label_518
	.word	0		! total size of parameters
	.word	12		! frame size = 12
	.word	_Label_519
	.word	-12
	.word	4
	.word	_Label_520
	.word	-16
	.word	4
	.word	0
_Label_518:
	.ascii	"SerialInterruptHandler\0"
	.align
_Label_519:
	.byte	'?'
	.ascii	"_temp_517\0"
	.align
_Label_520:
	.byte	'?'
	.ascii	"_temp_516\0"
	.align
! 
! ===============  FUNCTION IllegalInstructionHandler  ===============
! 
_P_Kernel_IllegalInstructionHandler:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__P_Kernel_IllegalInstructionHandler,r1
	push	r1
	mov	2,r1
_Label_3990:
	push	r0
	sub	r1,1,r1
	bne	_Label_3990
	mov	1745,r13		! source line 1745
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1751,r13		! source line 1751
	mov	"\0\0AS",r10
!   _P_Kernel_currentInterruptStatus = 2		(4 bytes)
	mov	2,r1
	set	_P_Kernel_currentInterruptStatus,r2
	store	r1,[r2]
! CALL STATEMENT...
!   _temp_521 = _StringConst_26
	set	_StringConst_26,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_521  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	1752,r13		! source line 1752
	mov	"\0\0CA",r10
	call	_function_198_ErrorInUserProcess
! RETURN STATEMENT...
	mov	1752,r13		! source line 1752
	mov	"\0\0RE",r10
	add	r15,12,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__P_Kernel_IllegalInstructionHandler:
	.word	_sourceFileName
	.word	_Label_522
	.word	0		! total size of parameters
	.word	8		! frame size = 8
	.word	_Label_523
	.word	-12
	.word	4
	.word	0
_Label_522:
	.ascii	"IllegalInstructionHandler\0"
	.align
_Label_523:
	.byte	'?'
	.ascii	"_temp_521\0"
	.align
! 
! ===============  FUNCTION ArithmeticExceptionHandler  ===============
! 
_P_Kernel_ArithmeticExceptionHandler:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__P_Kernel_ArithmeticExceptionHandler,r1
	push	r1
	mov	2,r1
_Label_3991:
	push	r0
	sub	r1,1,r1
	bne	_Label_3991
	mov	1757,r13		! source line 1757
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1763,r13		! source line 1763
	mov	"\0\0AS",r10
!   _P_Kernel_currentInterruptStatus = 2		(4 bytes)
	mov	2,r1
	set	_P_Kernel_currentInterruptStatus,r2
	store	r1,[r2]
! CALL STATEMENT...
!   _temp_524 = _StringConst_27
	set	_StringConst_27,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_524  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	1764,r13		! source line 1764
	mov	"\0\0CA",r10
	call	_function_198_ErrorInUserProcess
! RETURN STATEMENT...
	mov	1764,r13		! source line 1764
	mov	"\0\0RE",r10
	add	r15,12,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__P_Kernel_ArithmeticExceptionHandler:
	.word	_sourceFileName
	.word	_Label_525
	.word	0		! total size of parameters
	.word	8		! frame size = 8
	.word	_Label_526
	.word	-12
	.word	4
	.word	0
_Label_525:
	.ascii	"ArithmeticExceptionHandler\0"
	.align
_Label_526:
	.byte	'?'
	.ascii	"_temp_524\0"
	.align
! 
! ===============  FUNCTION AddressExceptionHandler  ===============
! 
_P_Kernel_AddressExceptionHandler:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__P_Kernel_AddressExceptionHandler,r1
	push	r1
	mov	2,r1
_Label_3992:
	push	r0
	sub	r1,1,r1
	bne	_Label_3992
	mov	1769,r13		! source line 1769
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1775,r13		! source line 1775
	mov	"\0\0AS",r10
!   _P_Kernel_currentInterruptStatus = 2		(4 bytes)
	mov	2,r1
	set	_P_Kernel_currentInterruptStatus,r2
	store	r1,[r2]
! CALL STATEMENT...
!   _temp_527 = _StringConst_28
	set	_StringConst_28,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_527  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	1776,r13		! source line 1776
	mov	"\0\0CA",r10
	call	_function_198_ErrorInUserProcess
! RETURN STATEMENT...
	mov	1776,r13		! source line 1776
	mov	"\0\0RE",r10
	add	r15,12,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__P_Kernel_AddressExceptionHandler:
	.word	_sourceFileName
	.word	_Label_528
	.word	0		! total size of parameters
	.word	8		! frame size = 8
	.word	_Label_529
	.word	-12
	.word	4
	.word	0
_Label_528:
	.ascii	"AddressExceptionHandler\0"
	.align
_Label_529:
	.byte	'?'
	.ascii	"_temp_527\0"
	.align
! 
! ===============  FUNCTION PageInvalidExceptionHandler  ===============
! 
_P_Kernel_PageInvalidExceptionHandler:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__P_Kernel_PageInvalidExceptionHandler,r1
	push	r1
	mov	2,r1
_Label_3993:
	push	r0
	sub	r1,1,r1
	bne	_Label_3993
	mov	1781,r13		! source line 1781
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1787,r13		! source line 1787
	mov	"\0\0AS",r10
!   _P_Kernel_currentInterruptStatus = 2		(4 bytes)
	mov	2,r1
	set	_P_Kernel_currentInterruptStatus,r2
	store	r1,[r2]
! CALL STATEMENT...
!   _temp_530 = _StringConst_29
	set	_StringConst_29,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_530  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	1788,r13		! source line 1788
	mov	"\0\0CA",r10
	call	_function_198_ErrorInUserProcess
! RETURN STATEMENT...
	mov	1788,r13		! source line 1788
	mov	"\0\0RE",r10
	add	r15,12,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__P_Kernel_PageInvalidExceptionHandler:
	.word	_sourceFileName
	.word	_Label_531
	.word	0		! total size of parameters
	.word	8		! frame size = 8
	.word	_Label_532
	.word	-12
	.word	4
	.word	0
_Label_531:
	.ascii	"PageInvalidExceptionHandler\0"
	.align
_Label_532:
	.byte	'?'
	.ascii	"_temp_530\0"
	.align
! 
! ===============  FUNCTION PageReadonlyExceptionHandler  ===============
! 
_P_Kernel_PageReadonlyExceptionHandler:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__P_Kernel_PageReadonlyExceptionHandler,r1
	push	r1
	mov	2,r1
_Label_3994:
	push	r0
	sub	r1,1,r1
	bne	_Label_3994
	mov	1793,r13		! source line 1793
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1799,r13		! source line 1799
	mov	"\0\0AS",r10
!   _P_Kernel_currentInterruptStatus = 2		(4 bytes)
	mov	2,r1
	set	_P_Kernel_currentInterruptStatus,r2
	store	r1,[r2]
! CALL STATEMENT...
!   _temp_533 = _StringConst_30
	set	_StringConst_30,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_533  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	1800,r13		! source line 1800
	mov	"\0\0CA",r10
	call	_function_198_ErrorInUserProcess
! RETURN STATEMENT...
	mov	1800,r13		! source line 1800
	mov	"\0\0RE",r10
	add	r15,12,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__P_Kernel_PageReadonlyExceptionHandler:
	.word	_sourceFileName
	.word	_Label_534
	.word	0		! total size of parameters
	.word	8		! frame size = 8
	.word	_Label_535
	.word	-12
	.word	4
	.word	0
_Label_534:
	.ascii	"PageReadonlyExceptionHandler\0"
	.align
_Label_535:
	.byte	'?'
	.ascii	"_temp_533\0"
	.align
! 
! ===============  FUNCTION PrivilegedInstructionHandler  ===============
! 
_P_Kernel_PrivilegedInstructionHandler:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__P_Kernel_PrivilegedInstructionHandler,r1
	push	r1
	mov	2,r1
_Label_3995:
	push	r0
	sub	r1,1,r1
	bne	_Label_3995
	mov	1805,r13		! source line 1805
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1811,r13		! source line 1811
	mov	"\0\0AS",r10
!   _P_Kernel_currentInterruptStatus = 2		(4 bytes)
	mov	2,r1
	set	_P_Kernel_currentInterruptStatus,r2
	store	r1,[r2]
! CALL STATEMENT...
!   _temp_536 = _StringConst_31
	set	_StringConst_31,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_536  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	1812,r13		! source line 1812
	mov	"\0\0CA",r10
	call	_function_198_ErrorInUserProcess
! RETURN STATEMENT...
	mov	1812,r13		! source line 1812
	mov	"\0\0RE",r10
	add	r15,12,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__P_Kernel_PrivilegedInstructionHandler:
	.word	_sourceFileName
	.word	_Label_537
	.word	0		! total size of parameters
	.word	8		! frame size = 8
	.word	_Label_538
	.word	-12
	.word	4
	.word	0
_Label_537:
	.ascii	"PrivilegedInstructionHandler\0"
	.align
_Label_538:
	.byte	'?'
	.ascii	"_temp_536\0"
	.align
! 
! ===============  FUNCTION AlignmentExceptionHandler  ===============
! 
_P_Kernel_AlignmentExceptionHandler:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__P_Kernel_AlignmentExceptionHandler,r1
	push	r1
	mov	2,r1
_Label_3996:
	push	r0
	sub	r1,1,r1
	bne	_Label_3996
	mov	1817,r13		! source line 1817
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1823,r13		! source line 1823
	mov	"\0\0AS",r10
!   _P_Kernel_currentInterruptStatus = 2		(4 bytes)
	mov	2,r1
	set	_P_Kernel_currentInterruptStatus,r2
	store	r1,[r2]
! CALL STATEMENT...
!   _temp_539 = _StringConst_32
	set	_StringConst_32,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_539  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	1824,r13		! source line 1824
	mov	"\0\0CA",r10
	call	_function_198_ErrorInUserProcess
! RETURN STATEMENT...
	mov	1824,r13		! source line 1824
	mov	"\0\0RE",r10
	add	r15,12,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__P_Kernel_AlignmentExceptionHandler:
	.word	_sourceFileName
	.word	_Label_540
	.word	0		! total size of parameters
	.word	8		! frame size = 8
	.word	_Label_541
	.word	-12
	.word	4
	.word	0
_Label_540:
	.ascii	"AlignmentExceptionHandler\0"
	.align
_Label_541:
	.byte	'?'
	.ascii	"_temp_539\0"
	.align
! 
! ===============  FUNCTION ErrorInUserProcess  ===============
! 
_function_198_ErrorInUserProcess:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__function_198_ErrorInUserProcess,r1
	push	r1
	mov	8,r1
_Label_3997:
	push	r0
	sub	r1,1,r1
	bne	_Label_3997
	mov	1829,r13		! source line 1829
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   _temp_542 = _StringConst_33
	set	_StringConst_33,r1
	store	r1,[r14+-36]
!   Prepare Argument: offset=8  value=_temp_542  sizeInBytes=4
	load	[r14+-36],r1
	store	r1,[r15+0]
!   Call the function
	mov	1834,r13		! source line 1834
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=errorMessage  sizeInBytes=4
	load	[r14+8],r1
	store	r1,[r15+0]
!   Call the function
	mov	1835,r13		! source line 1835
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_543 = _StringConst_34
	set	_StringConst_34,r1
	store	r1,[r14+-32]
!   Prepare Argument: offset=8  value=_temp_543  sizeInBytes=4
	load	[r14+-32],r1
	store	r1,[r15+0]
!   Call the function
	mov	1836,r13		! source line 1836
	mov	"\0\0CE",r10
	call	print
! IF STATEMENT...
	mov	1839,r13		! source line 1839
	mov	"\0\0IF",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_547 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-24]
!   Data Move: _temp_546 = *_temp_547  (sizeInBytes=4)
	load	[r14+-24],r1
	load	[r1],r1
	store	r1,[r14+-28]
!   if _temp_546 == 0 then goto _Label_545		(int)
	load	[r14+-28],r1
	mov	0,r2
	cmp	r1,r2
	be	_Label_545
!	jmp	_Label_544
_Label_544:
! THEN...
	mov	1840,r13		! source line 1840
	mov	"\0\0TN",r10
! SEND STATEMENT...
	mov	1840,r13		! source line 1840
	mov	"\0\0SE",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_549 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-16]
!   Data Move: _temp_548 = *_temp_549  (sizeInBytes=4)
	load	[r14+-16],r1
	load	[r1],r1
	store	r1,[r14+-20]
!   if intIsZero (_temp_548) then goto _runtimeErrorNullPointer
	load	[r14+-20],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Send message Print
	load	[r14+-20],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
	jmp	_Label_550
_Label_545:
! ELSE...
	mov	1842,r13		! source line 1842
	mov	"\0\0EL",r10
! CALL STATEMENT...
!   _temp_551 = _StringConst_35
	set	_StringConst_35,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_551  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	1842,r13		! source line 1842
	mov	"\0\0CE",r10
	call	print
! END IF...
_Label_550:
! SEND STATEMENT...
	mov	1844,r13		! source line 1844
	mov	"\0\0SE",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Send message Print
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,24,r2
	call	r2
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=-1  sizeInBytes=4
	mov	-1,r1
	store	r1,[r15+0]
!   Call the function
	mov	1850,r13		! source line 1850
	mov	"\0\0CA",r10
	call	_P_Kernel_ProcessFinish
! RETURN STATEMENT...
	mov	1850,r13		! source line 1850
	mov	"\0\0RE",r10
	add	r15,36,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__function_198_ErrorInUserProcess:
	.word	_sourceFileName
	.word	_Label_552
	.word	4		! total size of parameters
	.word	32		! frame size = 32
	.word	_Label_553
	.word	8
	.word	4
	.word	_Label_554
	.word	-12
	.word	4
	.word	_Label_555
	.word	-16
	.word	4
	.word	_Label_556
	.word	-20
	.word	4
	.word	_Label_557
	.word	-24
	.word	4
	.word	_Label_558
	.word	-28
	.word	4
	.word	_Label_559
	.word	-32
	.word	4
	.word	_Label_560
	.word	-36
	.word	4
	.word	0
_Label_552:
	.ascii	"ErrorInUserProcess\0"
	.align
_Label_553:
	.byte	'P'
	.ascii	"errorMessage\0"
	.align
_Label_554:
	.byte	'?'
	.ascii	"_temp_551\0"
	.align
_Label_555:
	.byte	'?'
	.ascii	"_temp_549\0"
	.align
_Label_556:
	.byte	'?'
	.ascii	"_temp_548\0"
	.align
_Label_557:
	.byte	'?'
	.ascii	"_temp_547\0"
	.align
_Label_558:
	.byte	'?'
	.ascii	"_temp_546\0"
	.align
_Label_559:
	.byte	'?'
	.ascii	"_temp_543\0"
	.align
_Label_560:
	.byte	'?'
	.ascii	"_temp_542\0"
	.align
! 
! ===============  FUNCTION SyscallTrapHandler  ===============
! 
_P_Kernel_SyscallTrapHandler:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__P_Kernel_SyscallTrapHandler,r1
	push	r1
	mov	13,r1
_Label_3998:
	push	r0
	sub	r1,1,r1
	bne	_Label_3998
	mov	1855,r13		! source line 1855
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1862,r13		! source line 1862
	mov	"\0\0AS",r10
!   _P_Kernel_currentInterruptStatus = 2		(4 bytes)
	mov	2,r1
	set	_P_Kernel_currentInterruptStatus,r2
	store	r1,[r2]
! SWITCH STATEMENT (using an indirect jump table)...
	mov	1876,r13		! source line 1876
	mov	"\0\0SW",r10
!   Evaluate the switch expression...
	load	[r14+8],r1
!   If syscallCodeNum is not within 16-bits goto default code
	srl	r1,15,r2
	cmp	r2,0
	be	_Label_3999
	set	0x1ffff,r3
	cmp	r2,r3
	bne	_Label_561
_Label_3999:
!   If syscallCodeNum is < 1 (==smallestCaseValue) goto default code
	cmp	r1,1
	bl	_Label_561
!   If syscallCodeNum is > 12 (==greatestCaseValue) goto default code
	cmp	r1,12
	bg	_Label_561
!   r1 = (r1-lowValue) * 4 + jumpTableAddr
	sub	r1,1,r1
	sll	r1,2,r1
	set	_Label_575,r2
	add	r1,r2,r1
!   Jump indirect through the jump table
	jmp	r1
!   Jump table
_Label_575:
	jmp	_Label_567	! 1:	
	jmp	_Label_574	! 2:	
	jmp	_Label_564	! 3:	
	jmp	_Label_563	! 4:	
	jmp	_Label_566	! 5:	
	jmp	_Label_565	! 6:	
	jmp	_Label_568	! 7:	
	jmp	_Label_569	! 8:	
	jmp	_Label_570	! 9:	
	jmp	_Label_571	! 10:	
	jmp	_Label_572	! 11:	
	jmp	_Label_573	! 12:	
! CASE 4...
_Label_563:
! RETURN STATEMENT...
	mov	1878,r13		! source line 1878
	mov	"\0\0RE",r10
!   Call the function
	mov	1878,r13		! source line 1878
	mov	"\0\0CA",r10
	call	_P_Kernel_Handle_Sys_Fork
!   Retrieve Result: targetName=_temp_576  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-48]
!   ReturnResult: _temp_576  (sizeInBytes=4)
	load	[r14+-48],r1
	store	r1,[r14+8]
	add	r15,56,r15
	pop	r13
	pop	r14
	ret
! CASE 3...
_Label_564:
! CALL STATEMENT...
!   Call the function
	mov	1880,r13		! source line 1880
	mov	"\0\0CA",r10
	call	_P_Kernel_Handle_Sys_Yield
! RETURN STATEMENT...
	mov	1881,r13		! source line 1881
	mov	"\0\0RE",r10
!   ReturnResult: 0  (sizeInBytes=4)
	mov	0,r1
	store	r1,[r14+8]
	add	r15,56,r15
	pop	r13
	pop	r14
	ret
! CASE 6...
_Label_565:
! RETURN STATEMENT...
	mov	1883,r13		! source line 1883
	mov	"\0\0RE",r10
!   Prepare Argument: offset=8  value=arg1  sizeInBytes=4
	load	[r14+12],r1
	store	r1,[r15+0]
!   Call the function
	mov	1883,r13		! source line 1883
	mov	"\0\0CA",r10
	call	_P_Kernel_Handle_Sys_Exec
!   Retrieve Result: targetName=_temp_577  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-44]
!   ReturnResult: _temp_577  (sizeInBytes=4)
	load	[r14+-44],r1
	store	r1,[r14+8]
	add	r15,56,r15
	pop	r13
	pop	r14
	ret
! CASE 5...
_Label_566:
! RETURN STATEMENT...
	mov	1885,r13		! source line 1885
	mov	"\0\0RE",r10
!   Prepare Argument: offset=8  value=arg1  sizeInBytes=4
	load	[r14+12],r1
	store	r1,[r15+0]
!   Call the function
	mov	1885,r13		! source line 1885
	mov	"\0\0CA",r10
	call	_P_Kernel_Handle_Sys_Join
!   Retrieve Result: targetName=_temp_578  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-40]
!   ReturnResult: _temp_578  (sizeInBytes=4)
	load	[r14+-40],r1
	store	r1,[r14+8]
	add	r15,56,r15
	pop	r13
	pop	r14
	ret
! CASE 1...
_Label_567:
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=arg1  sizeInBytes=4
	load	[r14+12],r1
	store	r1,[r15+0]
!   Call the function
	mov	1887,r13		! source line 1887
	mov	"\0\0CA",r10
	call	_P_Kernel_Handle_Sys_Exit
! RETURN STATEMENT...
	mov	1888,r13		! source line 1888
	mov	"\0\0RE",r10
!   ReturnResult: 0  (sizeInBytes=4)
	mov	0,r1
	store	r1,[r14+8]
	add	r15,56,r15
	pop	r13
	pop	r14
	ret
! CASE 7...
_Label_568:
! RETURN STATEMENT...
	mov	1890,r13		! source line 1890
	mov	"\0\0RE",r10
!   Prepare Argument: offset=8  value=arg1  sizeInBytes=4
	load	[r14+12],r1
	store	r1,[r15+0]
!   Call the function
	mov	1890,r13		! source line 1890
	mov	"\0\0CA",r10
	call	_P_Kernel_Handle_Sys_Create
!   Retrieve Result: targetName=_temp_579  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-36]
!   ReturnResult: _temp_579  (sizeInBytes=4)
	load	[r14+-36],r1
	store	r1,[r14+8]
	add	r15,56,r15
	pop	r13
	pop	r14
	ret
! CASE 8...
_Label_569:
! RETURN STATEMENT...
	mov	1892,r13		! source line 1892
	mov	"\0\0RE",r10
!   Prepare Argument: offset=8  value=arg1  sizeInBytes=4
	load	[r14+12],r1
	store	r1,[r15+0]
!   Call the function
	mov	1892,r13		! source line 1892
	mov	"\0\0CA",r10
	call	_P_Kernel_Handle_Sys_Open
!   Retrieve Result: targetName=_temp_580  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-32]
!   ReturnResult: _temp_580  (sizeInBytes=4)
	load	[r14+-32],r1
	store	r1,[r14+8]
	add	r15,56,r15
	pop	r13
	pop	r14
	ret
! CASE 9...
_Label_570:
! RETURN STATEMENT...
	mov	1894,r13		! source line 1894
	mov	"\0\0RE",r10
!   Prepare Argument: offset=8  value=arg1  sizeInBytes=4
	load	[r14+12],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=arg2  sizeInBytes=4
	load	[r14+16],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=arg3  sizeInBytes=4
	load	[r14+20],r1
	store	r1,[r15+8]
!   Call the function
	mov	1894,r13		! source line 1894
	mov	"\0\0CA",r10
	call	_P_Kernel_Handle_Sys_Read
!   Retrieve Result: targetName=_temp_581  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-28]
!   ReturnResult: _temp_581  (sizeInBytes=4)
	load	[r14+-28],r1
	store	r1,[r14+8]
	add	r15,56,r15
	pop	r13
	pop	r14
	ret
! CASE 10...
_Label_571:
! RETURN STATEMENT...
	mov	1896,r13		! source line 1896
	mov	"\0\0RE",r10
!   Prepare Argument: offset=8  value=arg1  sizeInBytes=4
	load	[r14+12],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=arg2  sizeInBytes=4
	load	[r14+16],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=arg3  sizeInBytes=4
	load	[r14+20],r1
	store	r1,[r15+8]
!   Call the function
	mov	1896,r13		! source line 1896
	mov	"\0\0CA",r10
	call	_P_Kernel_Handle_Sys_Write
!   Retrieve Result: targetName=_temp_582  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-24]
!   ReturnResult: _temp_582  (sizeInBytes=4)
	load	[r14+-24],r1
	store	r1,[r14+8]
	add	r15,56,r15
	pop	r13
	pop	r14
	ret
! CASE 11...
_Label_572:
! RETURN STATEMENT...
	mov	1898,r13		! source line 1898
	mov	"\0\0RE",r10
!   Prepare Argument: offset=8  value=arg1  sizeInBytes=4
	load	[r14+12],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=arg2  sizeInBytes=4
	load	[r14+16],r1
	store	r1,[r15+4]
!   Call the function
	mov	1898,r13		! source line 1898
	mov	"\0\0CA",r10
	call	_P_Kernel_Handle_Sys_Seek
!   Retrieve Result: targetName=_temp_583  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-20]
!   ReturnResult: _temp_583  (sizeInBytes=4)
	load	[r14+-20],r1
	store	r1,[r14+8]
	add	r15,56,r15
	pop	r13
	pop	r14
	ret
! CASE 12...
_Label_573:
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=arg1  sizeInBytes=4
	load	[r14+12],r1
	store	r1,[r15+0]
!   Call the function
	mov	1900,r13		! source line 1900
	mov	"\0\0CA",r10
	call	_P_Kernel_Handle_Sys_Close
! RETURN STATEMENT...
	mov	1901,r13		! source line 1901
	mov	"\0\0RE",r10
!   ReturnResult: 0  (sizeInBytes=4)
	mov	0,r1
	store	r1,[r14+8]
	add	r15,56,r15
	pop	r13
	pop	r14
	ret
! CASE 2...
_Label_574:
! CALL STATEMENT...
!   Call the function
	mov	1903,r13		! source line 1903
	mov	"\0\0CA",r10
	call	_P_Kernel_Handle_Sys_Shutdown
! RETURN STATEMENT...
	mov	1904,r13		! source line 1904
	mov	"\0\0RE",r10
!   ReturnResult: 0  (sizeInBytes=4)
	mov	0,r1
	store	r1,[r14+8]
	add	r15,56,r15
	pop	r13
	pop	r14
	ret
! DEFAULT CASE...
_Label_561:
! CALL STATEMENT...
!   _temp_584 = _StringConst_36
	set	_StringConst_36,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_584  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+0]
!   Call the function
	mov	1906,r13		! source line 1906
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=syscallCodeNum  sizeInBytes=4
	load	[r14+8],r1
	store	r1,[r15+0]
!   Call the function
	mov	1907,r13		! source line 1907
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   Call the function
	mov	1908,r13		! source line 1908
	mov	"\0\0CA",r10
	call	_P_System_nl
! CALL STATEMENT...
!   _temp_585 = _StringConst_37
	set	_StringConst_37,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_585  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	1909,r13		! source line 1909
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END SWITCH...
_Label_562:
! RETURN STATEMENT...
	mov	1911,r13		! source line 1911
	mov	"\0\0RE",r10
!   ReturnResult: 0  (sizeInBytes=4)
	mov	0,r1
	store	r1,[r14+8]
	add	r15,56,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__P_Kernel_SyscallTrapHandler:
	.word	_sourceFileName
	.word	_Label_586
	.word	20		! total size of parameters
	.word	52		! frame size = 52
	.word	_Label_587
	.word	8
	.word	4
	.word	_Label_588
	.word	12
	.word	4
	.word	_Label_589
	.word	16
	.word	4
	.word	_Label_590
	.word	20
	.word	4
	.word	_Label_591
	.word	24
	.word	4
	.word	_Label_592
	.word	-12
	.word	4
	.word	_Label_593
	.word	-16
	.word	4
	.word	_Label_594
	.word	-20
	.word	4
	.word	_Label_595
	.word	-24
	.word	4
	.word	_Label_596
	.word	-28
	.word	4
	.word	_Label_597
	.word	-32
	.word	4
	.word	_Label_598
	.word	-36
	.word	4
	.word	_Label_599
	.word	-40
	.word	4
	.word	_Label_600
	.word	-44
	.word	4
	.word	_Label_601
	.word	-48
	.word	4
	.word	0
_Label_586:
	.ascii	"SyscallTrapHandler\0"
	.align
_Label_587:
	.byte	'I'
	.ascii	"syscallCodeNum\0"
	.align
_Label_588:
	.byte	'I'
	.ascii	"arg1\0"
	.align
_Label_589:
	.byte	'I'
	.ascii	"arg2\0"
	.align
_Label_590:
	.byte	'I'
	.ascii	"arg3\0"
	.align
_Label_591:
	.byte	'I'
	.ascii	"arg4\0"
	.align
_Label_592:
	.byte	'?'
	.ascii	"_temp_585\0"
	.align
_Label_593:
	.byte	'?'
	.ascii	"_temp_584\0"
	.align
_Label_594:
	.byte	'?'
	.ascii	"_temp_583\0"
	.align
_Label_595:
	.byte	'?'
	.ascii	"_temp_582\0"
	.align
_Label_596:
	.byte	'?'
	.ascii	"_temp_581\0"
	.align
_Label_597:
	.byte	'?'
	.ascii	"_temp_580\0"
	.align
_Label_598:
	.byte	'?'
	.ascii	"_temp_579\0"
	.align
_Label_599:
	.byte	'?'
	.ascii	"_temp_578\0"
	.align
_Label_600:
	.byte	'?'
	.ascii	"_temp_577\0"
	.align
_Label_601:
	.byte	'?'
	.ascii	"_temp_576\0"
	.align
! 
! ===============  FUNCTION Handle_Sys_Exit  ===============
! 
_P_Kernel_Handle_Sys_Exit:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__P_Kernel_Handle_Sys_Exit,r1
	push	r1
	mov	1,r1
_Label_4000:
	push	r0
	sub	r1,1,r1
	bne	_Label_4000
	mov	1916,r13		! source line 1916
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=returnStatus  sizeInBytes=4
	load	[r14+8],r1
	store	r1,[r15+0]
!   Call the function
	mov	1918,r13		! source line 1918
	mov	"\0\0CA",r10
	call	_P_Kernel_ProcessFinish
! RETURN STATEMENT...
	mov	1918,r13		! source line 1918
	mov	"\0\0RE",r10
	add	r15,8,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__P_Kernel_Handle_Sys_Exit:
	.word	_sourceFileName
	.word	_Label_602
	.word	4		! total size of parameters
	.word	4		! frame size = 4
	.word	_Label_603
	.word	8
	.word	4
	.word	0
_Label_602:
	.ascii	"Handle_Sys_Exit\0"
	.align
_Label_603:
	.byte	'I'
	.ascii	"returnStatus\0"
	.align
! 
! ===============  FUNCTION Handle_Sys_Shutdown  ===============
! 
_P_Kernel_Handle_Sys_Shutdown:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__P_Kernel_Handle_Sys_Shutdown,r1
	push	r1
	mov	2,r1
_Label_4001:
	push	r0
	sub	r1,1,r1
	bne	_Label_4001
	mov	1924,r13		! source line 1924
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   _temp_604 = _StringConst_38
	set	_StringConst_38,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_604  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	1925,r13		! source line 1925
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! RETURN STATEMENT...
	mov	1925,r13		! source line 1925
	mov	"\0\0RE",r10
	add	r15,12,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__P_Kernel_Handle_Sys_Shutdown:
	.word	_sourceFileName
	.word	_Label_605
	.word	0		! total size of parameters
	.word	8		! frame size = 8
	.word	_Label_606
	.word	-12
	.word	4
	.word	0
_Label_605:
	.ascii	"Handle_Sys_Shutdown\0"
	.align
_Label_606:
	.byte	'?'
	.ascii	"_temp_604\0"
	.align
! 
! ===============  FUNCTION Handle_Sys_Yield  ===============
! 
_P_Kernel_Handle_Sys_Yield:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__P_Kernel_Handle_Sys_Yield,r1
	push	r1
	mov	1,r1
_Label_4002:
	push	r0
	sub	r1,1,r1
	bne	_Label_4002
	mov	1930,r13		! source line 1930
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! SEND STATEMENT...
	mov	1932,r13		! source line 1932
	mov	"\0\0SE",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Send message Yield
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
! RETURN STATEMENT...
	mov	1933,r13		! source line 1933
	mov	"\0\0RE",r10
	add	r15,8,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__P_Kernel_Handle_Sys_Yield:
	.word	_sourceFileName
	.word	_Label_607
	.word	0		! total size of parameters
	.word	4		! frame size = 4
	.word	0
_Label_607:
	.ascii	"Handle_Sys_Yield\0"
	.align
! 
! ===============  FUNCTION Handle_Sys_Fork  ===============
! 
_P_Kernel_Handle_Sys_Fork:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__P_Kernel_Handle_Sys_Fork,r1
	push	r1
	mov	84,r1
_Label_4003:
	push	r0
	sub	r1,1,r1
	bne	_Label_4003
	mov	1940,r13		! source line 1940
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1953,r13		! source line 1953
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=2  sizeInBytes=4
	mov	2,r1
	store	r1,[r15+0]
!   Call the function
	mov	1953,r13		! source line 1953
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=junk  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-232]
! ASSIGNMENT STATEMENT...
	mov	1956,r13		! source line 1956
	mov	"\0\0AS",r10
	mov	1956,r13		! source line 1956
	mov	"\0\0SE",r10
!   _temp_608 = &_P_Kernel_processManager
	set	_P_Kernel_processManager,r1
	store	r1,[r14+-208]
!   Send message GetANewProcess
	load	[r14+-208],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,16,r2
	call	r2
!   Retrieve Result: targetName=childProcess  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-212]
! ASSIGNMENT STATEMENT...
	mov	1957,r13		! source line 1957
	mov	"\0\0AS",r10
	mov	1957,r13		! source line 1957
	mov	"\0\0SE",r10
!   _temp_609 = &_P_Kernel_threadManager
	set	_P_Kernel_threadManager,r1
	store	r1,[r14+-204]
!   Send message GetANewThread
	load	[r14+-204],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
!   Retrieve Result: targetName=childThread  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-216]
! ASSIGNMENT STATEMENT...
	mov	1960,r13		! source line 1960
	mov	"\0\0AS",r10
!   if intIsZero (childProcess) then goto _runtimeErrorNullPointer
	load	[r14+-212],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_610 = childProcess + 24
	load	[r14+-212],r1
	add	r1,24,r1
	store	r1,[r14+-200]
!   Data Move: *_temp_610 = childThread  (sizeInBytes=4)
	load	[r14+-216],r1
	load	[r14+-200],r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	1961,r13		! source line 1961
	mov	"\0\0AS",r10
!   if intIsZero (childProcess) then goto _runtimeErrorNullPointer
	load	[r14+-212],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_611 = childProcess + 16
	load	[r14+-212],r1
	add	r1,16,r1
	store	r1,[r14+-196]
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_614 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-184]
!   Data Move: _temp_613 = *_temp_614  (sizeInBytes=4)
	load	[r14+-184],r1
	load	[r1],r1
	store	r1,[r14+-188]
!   if intIsZero (_temp_613) then goto _runtimeErrorNullPointer
	load	[r14+-188],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_615 = _temp_613 + 12
	load	[r14+-188],r1
	add	r1,12,r1
	store	r1,[r14+-180]
!   Data Move: _temp_612 = *_temp_615  (sizeInBytes=4)
	load	[r14+-180],r1
	load	[r1],r1
	store	r1,[r14+-192]
!   Data Move: *_temp_611 = _temp_612  (sizeInBytes=4)
	load	[r14+-192],r1
	load	[r14+-196],r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	1964,r13		! source line 1964
	mov	"\0\0AS",r10
!   if intIsZero (childThread) then goto _runtimeErrorNullPointer
	load	[r14+-216],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_616 = childThread + 76
	load	[r14+-216],r1
	add	r1,76,r1
	store	r1,[r14+-176]
!   Data Move: *_temp_616 = 2  (sizeInBytes=4)
	mov	2,r1
	load	[r14+-176],r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	1965,r13		! source line 1965
	mov	"\0\0AS",r10
!   if intIsZero (childThread) then goto _runtimeErrorNullPointer
	load	[r14+-216],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_617 = childThread + 4160
	load	[r14+-216],r1
	add	r1,4160,r1
	store	r1,[r14+-172]
!   Data Move: *_temp_617 = childProcess  (sizeInBytes=4)
	load	[r14+-212],r1
	load	[r14+-172],r2
	store	r1,[r2]
! CALL STATEMENT...
!   if intIsZero (childThread) then goto _runtimeErrorNullPointer
	load	[r14+-216],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_619 = childThread + 4096
	load	[r14+-216],r1
	add	r1,4096,r1
	store	r1,[r14+-164]
!   Move address of _temp_619 [0 ] into _temp_620
!     make sure index expr is >= 0
	mov	0,r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-164],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	4,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-160]
!   _temp_618 = _temp_620		(4 bytes)
	load	[r14+-160],r1
	store	r1,[r14+-168]
!   Prepare Argument: offset=8  value=_temp_618  sizeInBytes=4
	load	[r14+-168],r1
	store	r1,[r15+0]
!   Call the function
	mov	1968,r13		! source line 1968
	mov	"\0\0CE",r10
	call	SaveUserRegs
! ASSIGNMENT STATEMENT...
	mov	1971,r13		! source line 1971
	mov	"\0\0AS",r10
!   i = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-228]
! WHILE STATEMENT...
	mov	1971,r13		! source line 1971
	mov	"\0\0WH",r10
_Label_621:
!   if i >= 10 then goto _Label_623		(int)
	load	[r14+-228],r1
	mov	10,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_623
!	jmp	_Label_622
_Label_622:
	mov	1971,r13		! source line 1971
	mov	"\0\0WB",r10
! ASSIGNMENT STATEMENT...
	mov	1972,r13		! source line 1972
	mov	"\0\0AS",r10
!   if intIsZero (childProcess) then goto _runtimeErrorNullPointer
	load	[r14+-212],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_624 = childProcess + 124
	load	[r14+-212],r1
	add	r1,124,r1
	store	r1,[r14+-156]
!   Move address of _temp_624 [i ] into _temp_625
!     make sure index expr is >= 0
	load	[r14+-228],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-156],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	4,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-152]
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_628 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-140]
!   Data Move: _temp_627 = *_temp_628  (sizeInBytes=4)
	load	[r14+-140],r1
	load	[r1],r1
	store	r1,[r14+-144]
!   if intIsZero (_temp_627) then goto _runtimeErrorNullPointer
	load	[r14+-144],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_629 = _temp_627 + 124
	load	[r14+-144],r1
	add	r1,124,r1
	store	r1,[r14+-136]
!   Move address of _temp_629 [i ] into _temp_630
!     make sure index expr is >= 0
	load	[r14+-228],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-136],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	4,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-132]
!   Data Move: _temp_626 = *_temp_630  (sizeInBytes=4)
	load	[r14+-132],r1
	load	[r1],r1
	store	r1,[r14+-148]
!   Data Move: *_temp_625 = _temp_626  (sizeInBytes=4)
	load	[r14+-148],r1
	load	[r14+-152],r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	1971,r13		! source line 1971
	mov	"\0\0AS",r10
!   i = i + 1		(int)
	load	[r14+-228],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-228]
! END WHILE...
	jmp	_Label_621
_Label_623:
! ASSIGNMENT STATEMENT...
	mov	1976,r13		! source line 1976
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=1  sizeInBytes=4
	mov	1,r1
	store	r1,[r15+0]
!   Call the function
	mov	1976,r13		! source line 1976
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=junk  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-232]
! ASSIGNMENT STATEMENT...
	mov	1979,r13		! source line 1979
	mov	"\0\0AS",r10
!   if intIsZero (childThread) then goto _runtimeErrorNullPointer
	load	[r14+-216],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_631 = childThread + 68
	load	[r14+-216],r1
	add	r1,68,r1
	store	r1,[r14+-128]
!   if intIsZero (childThread) then goto _runtimeErrorNullPointer
	load	[r14+-216],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_633 = childThread + 88
	load	[r14+-216],r1
	add	r1,88,r1
	store	r1,[r14+-120]
!   Move address of _temp_633 [999 ] into _temp_634
!     make sure index expr is >= 0
	mov	999,r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-120],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	4,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-116]
!   _temp_632 = _temp_634		(4 bytes)
	load	[r14+-116],r1
	store	r1,[r14+-124]
!   Data Move: *_temp_631 = _temp_632  (sizeInBytes=4)
	load	[r14+-124],r1
	load	[r14+-128],r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	1982,r13		! source line 1982
	mov	"\0\0AS",r10
!   NEW CLASS Constructor...
!   ZeroMemory: childAddrSpace = zeros  (sizeInBytes=92)
	add	r14,-332,r4
	mov	23,r3
_Label_4004:
	store	r0,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_4004
!   childAddrSpace = _P_Kernel_AddrSpace
	set	_P_Kernel_AddrSpace,r1
	store	r1,[r14+-332]
! SEND STATEMENT...
	mov	1983,r13		! source line 1983
	mov	"\0\0SE",r10
!   _temp_636 = &childAddrSpace
	add	r14,-332,r1
	store	r1,[r14+-108]
!   Send message Init
	load	[r14+-108],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,4,r2
	call	r2
! ASSIGNMENT STATEMENT...
	mov	1984,r13		! source line 1984
	mov	"\0\0AS",r10
!   if intIsZero (childProcess) then goto _runtimeErrorNullPointer
	load	[r14+-212],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_637 = childProcess + 32
	load	[r14+-212],r1
	add	r1,32,r1
	store	r1,[r14+-104]
!   Data Move: *_temp_637 = childAddrSpace  (sizeInBytes=92)
	add	r14,-332,r5
	load	[r14+-104],r4
	mov	23,r3
_Label_4005:
	load	[r5],r1
	add	r5,4,r5
	store	r1,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_4005
! ASSIGNMENT STATEMENT...
	mov	1987,r13		! source line 1987
	mov	"\0\0AS",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_639 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-96]
!   Data Move: _temp_638 = *_temp_639  (sizeInBytes=4)
	load	[r14+-96],r1
	load	[r1],r1
	store	r1,[r14+-100]
!   if intIsZero (_temp_638) then goto _runtimeErrorNullPointer
	load	[r14+-100],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_640 = _temp_638 + 32
	load	[r14+-100],r1
	add	r1,32,r1
	store	r1,[r14+-92]
!   _temp_641 = _temp_640 + 4
	load	[r14+-92],r1
	add	r1,4,r1
	store	r1,[r14+-88]
!   Data Move: numPagesRequired = *_temp_641  (sizeInBytes=4)
	load	[r14+-88],r1
	load	[r1],r1
	store	r1,[r14+-236]
! SEND STATEMENT...
	mov	1988,r13		! source line 1988
	mov	"\0\0SE",r10
!   if intIsZero (childProcess) then goto _runtimeErrorNullPointer
	load	[r14+-212],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_643 = childProcess + 32
	load	[r14+-212],r1
	add	r1,32,r1
	store	r1,[r14+-80]
!   _temp_642 = _temp_643		(4 bytes)
	load	[r14+-80],r1
	store	r1,[r14+-84]
!   _temp_644 = &_P_Kernel_frameManager
	set	_P_Kernel_frameManager,r1
	store	r1,[r14+-76]
!   Prepare Argument: offset=12  value=_temp_642  sizeInBytes=4
	load	[r14+-84],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=numPagesRequired  sizeInBytes=4
	load	[r14+-236],r1
	store	r1,[r15+8]
!   Send message GetNewFrames
	load	[r14+-76],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,16,r2
	call	r2
! ASSIGNMENT STATEMENT...
	mov	1991,r13		! source line 1991
	mov	"\0\0AS",r10
!   i = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-228]
! WHILE STATEMENT...
	mov	1991,r13		! source line 1991
	mov	"\0\0WH",r10
_Label_645:
!   if i >= numPagesRequired then goto _Label_647		(int)
	load	[r14+-228],r1
	load	[r14+-236],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_647
!	jmp	_Label_646
_Label_646:
	mov	1991,r13		! source line 1991
	mov	"\0\0WB",r10
! ASSIGNMENT STATEMENT...
	mov	1992,r13		! source line 1992
	mov	"\0\0AS",r10
	mov	1992,r13		! source line 1992
	mov	"\0\0SE",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_649 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-68]
!   Data Move: _temp_648 = *_temp_649  (sizeInBytes=4)
	load	[r14+-68],r1
	load	[r1],r1
	store	r1,[r14+-72]
!   if intIsZero (_temp_648) then goto _runtimeErrorNullPointer
	load	[r14+-72],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_650 = _temp_648 + 32
	load	[r14+-72],r1
	add	r1,32,r1
	store	r1,[r14+-64]
!   Prepare Argument: offset=12  value=i  sizeInBytes=4
	load	[r14+-228],r1
	store	r1,[r15+4]
!   Send message ExtractFrameAddr
	load	[r14+-64],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
!   Retrieve Result: targetName=parentFrameAddress  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-224]
! ASSIGNMENT STATEMENT...
	mov	1993,r13		! source line 1993
	mov	"\0\0AS",r10
	mov	1993,r13		! source line 1993
	mov	"\0\0SE",r10
!   if intIsZero (childProcess) then goto _runtimeErrorNullPointer
	load	[r14+-212],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_651 = childProcess + 32
	load	[r14+-212],r1
	add	r1,32,r1
	store	r1,[r14+-60]
!   Prepare Argument: offset=12  value=i  sizeInBytes=4
	load	[r14+-228],r1
	store	r1,[r15+4]
!   Send message ExtractFrameAddr
	load	[r14+-60],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
!   Retrieve Result: targetName=childFrameAddress  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-220]
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=childFrameAddress  sizeInBytes=4
	load	[r14+-220],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=parentFrameAddress  sizeInBytes=4
	load	[r14+-224],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=8192  sizeInBytes=4
	mov	8192,r1
	store	r1,[r15+8]
!   Call the function
	mov	1994,r13		! source line 1994
	mov	"\0\0CE",r10
	call	MemoryCopy
! IF STATEMENT...
	mov	1996,r13		! source line 1996
	mov	"\0\0IF",r10
	mov	1996,r13		! source line 1996
	mov	"\0\0SE",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_656 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-52]
!   Data Move: _temp_655 = *_temp_656  (sizeInBytes=4)
	load	[r14+-52],r1
	load	[r1],r1
	store	r1,[r14+-56]
!   if intIsZero (_temp_655) then goto _runtimeErrorNullPointer
	load	[r14+-56],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_657 = _temp_655 + 32
	load	[r14+-56],r1
	add	r1,32,r1
	store	r1,[r14+-48]
!   Prepare Argument: offset=12  value=i  sizeInBytes=4
	load	[r14+-228],r1
	store	r1,[r15+4]
!   Send message IsWritable
	load	[r14+-48],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,32,r2
	call	r2
!   Retrieve Result: targetName=_temp_654  sizeInBytes=1
	loadb	[r15],r1
	storeb	r1,[r14+-12]
!   _temp_658 = _temp_654 XOR 1		(bool)
	loadb	[r14+-12],r1
	mov	1,r2
	xor	r1,r2,r1
	storeb	r1,[r14+-11]
!   if _temp_658 then goto _Label_653 else goto _Label_652
	loadb	[r14+-11],r1
	cmp	r1,0
	be	_Label_652
	jmp	_Label_653
_Label_652:
! THEN...
	mov	1997,r13		! source line 1997
	mov	"\0\0TN",r10
! SEND STATEMENT...
	mov	1997,r13		! source line 1997
	mov	"\0\0SE",r10
!   if intIsZero (childProcess) then goto _runtimeErrorNullPointer
	load	[r14+-212],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_659 = childProcess + 32
	load	[r14+-212],r1
	add	r1,32,r1
	store	r1,[r14+-44]
!   Prepare Argument: offset=12  value=i  sizeInBytes=4
	load	[r14+-228],r1
	store	r1,[r15+4]
!   Send message SetWritable
	load	[r14+-44],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,48,r2
	call	r2
! END IF...
_Label_653:
! IF STATEMENT...
	mov	2000,r13		! source line 2000
	mov	"\0\0IF",r10
	mov	2000,r13		! source line 2000
	mov	"\0\0SE",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_664 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-36]
!   Data Move: _temp_663 = *_temp_664  (sizeInBytes=4)
	load	[r14+-36],r1
	load	[r1],r1
	store	r1,[r14+-40]
!   if intIsZero (_temp_663) then goto _runtimeErrorNullPointer
	load	[r14+-40],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_665 = _temp_663 + 32
	load	[r14+-40],r1
	add	r1,32,r1
	store	r1,[r14+-32]
!   Prepare Argument: offset=12  value=i  sizeInBytes=4
	load	[r14+-228],r1
	store	r1,[r15+4]
!   Send message IsWritable
	load	[r14+-32],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,32,r2
	call	r2
!   Retrieve Result: targetName=_temp_662  sizeInBytes=1
	loadb	[r15],r1
	storeb	r1,[r14+-10]
!   _temp_666 = _temp_662 XOR 0		(bool)
	loadb	[r14+-10],r1
	mov	0,r2
	xor	r1,r2,r1
	storeb	r1,[r14+-9]
!   if _temp_666 then goto _Label_661 else goto _Label_660
	loadb	[r14+-9],r1
	cmp	r1,0
	be	_Label_660
	jmp	_Label_661
_Label_660:
! THEN...
	mov	2001,r13		! source line 2001
	mov	"\0\0TN",r10
! SEND STATEMENT...
	mov	2001,r13		! source line 2001
	mov	"\0\0SE",r10
!   if intIsZero (childProcess) then goto _runtimeErrorNullPointer
	load	[r14+-212],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_667 = childProcess + 32
	load	[r14+-212],r1
	add	r1,32,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=12  value=i  sizeInBytes=4
	load	[r14+-228],r1
	store	r1,[r15+4]
!   Send message ClearWritable
	load	[r14+-28],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,64,r2
	call	r2
! END IF...
_Label_661:
! ASSIGNMENT STATEMENT...
	mov	1991,r13		! source line 1991
	mov	"\0\0AS",r10
!   i = i + 1		(int)
	load	[r14+-228],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-228]
! END WHILE...
	jmp	_Label_645
_Label_647:
! ASSIGNMENT STATEMENT...
	mov	2006,r13		! source line 2006
	mov	"\0\0AS",r10
!   Call the function
	mov	2006,r13		! source line 2006
	mov	"\0\0CE",r10
	call	GetOldUserPCFromSystemStack
!   Retrieve Result: targetName=oldUserPC  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-240]
! SEND STATEMENT...
	mov	2009,r13		! source line 2009
	mov	"\0\0SE",r10
!   _temp_668 = _P_Kernel_ResumeChildAfterFork
	set	_P_Kernel_ResumeChildAfterFork,r1
	store	r1,[r14+-24]
!   if intIsZero (childThread) then goto _runtimeErrorNullPointer
	load	[r14+-216],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Prepare Argument: offset=12  value=_temp_668  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=oldUserPC  sizeInBytes=4
	load	[r14+-240],r1
	store	r1,[r15+8]
!   Send message Fork
	load	[r14+-216],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! RETURN STATEMENT...
	mov	2011,r13		! source line 2011
	mov	"\0\0RE",r10
!   if intIsZero (childProcess) then goto _runtimeErrorNullPointer
	load	[r14+-212],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_670 = childProcess + 12
	load	[r14+-212],r1
	add	r1,12,r1
	store	r1,[r14+-16]
!   Data Move: _temp_669 = *_temp_670  (sizeInBytes=4)
	load	[r14+-16],r1
	load	[r1],r1
	store	r1,[r14+-20]
!   ReturnResult: _temp_669  (sizeInBytes=4)
	load	[r14+-20],r1
	store	r1,[r14+8]
	add	r15,340,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__P_Kernel_Handle_Sys_Fork:
	.word	_sourceFileName
	.word	_Label_671
	.word	0		! total size of parameters
	.word	336		! frame size = 336
	.word	_Label_672
	.word	-16
	.word	4
	.word	_Label_673
	.word	-20
	.word	4
	.word	_Label_674
	.word	-24
	.word	4
	.word	_Label_675
	.word	-28
	.word	4
	.word	_Label_676
	.word	-9
	.word	1
	.word	_Label_677
	.word	-32
	.word	4
	.word	_Label_678
	.word	-36
	.word	4
	.word	_Label_679
	.word	-40
	.word	4
	.word	_Label_680
	.word	-10
	.word	1
	.word	_Label_681
	.word	-44
	.word	4
	.word	_Label_682
	.word	-11
	.word	1
	.word	_Label_683
	.word	-48
	.word	4
	.word	_Label_684
	.word	-52
	.word	4
	.word	_Label_685
	.word	-56
	.word	4
	.word	_Label_686
	.word	-12
	.word	1
	.word	_Label_687
	.word	-60
	.word	4
	.word	_Label_688
	.word	-64
	.word	4
	.word	_Label_689
	.word	-68
	.word	4
	.word	_Label_690
	.word	-72
	.word	4
	.word	_Label_691
	.word	-76
	.word	4
	.word	_Label_692
	.word	-80
	.word	4
	.word	_Label_693
	.word	-84
	.word	4
	.word	_Label_694
	.word	-88
	.word	4
	.word	_Label_695
	.word	-92
	.word	4
	.word	_Label_696
	.word	-96
	.word	4
	.word	_Label_697
	.word	-100
	.word	4
	.word	_Label_698
	.word	-104
	.word	4
	.word	_Label_699
	.word	-108
	.word	4
	.word	_Label_700
	.word	-112
	.word	4
	.word	_Label_701
	.word	-116
	.word	4
	.word	_Label_702
	.word	-120
	.word	4
	.word	_Label_703
	.word	-124
	.word	4
	.word	_Label_704
	.word	-128
	.word	4
	.word	_Label_705
	.word	-132
	.word	4
	.word	_Label_706
	.word	-136
	.word	4
	.word	_Label_707
	.word	-140
	.word	4
	.word	_Label_708
	.word	-144
	.word	4
	.word	_Label_709
	.word	-148
	.word	4
	.word	_Label_710
	.word	-152
	.word	4
	.word	_Label_711
	.word	-156
	.word	4
	.word	_Label_712
	.word	-160
	.word	4
	.word	_Label_713
	.word	-164
	.word	4
	.word	_Label_714
	.word	-168
	.word	4
	.word	_Label_715
	.word	-172
	.word	4
	.word	_Label_716
	.word	-176
	.word	4
	.word	_Label_717
	.word	-180
	.word	4
	.word	_Label_718
	.word	-184
	.word	4
	.word	_Label_719
	.word	-188
	.word	4
	.word	_Label_720
	.word	-192
	.word	4
	.word	_Label_721
	.word	-196
	.word	4
	.word	_Label_722
	.word	-200
	.word	4
	.word	_Label_723
	.word	-204
	.word	4
	.word	_Label_724
	.word	-208
	.word	4
	.word	_Label_725
	.word	-212
	.word	4
	.word	_Label_726
	.word	-216
	.word	4
	.word	_Label_727
	.word	-220
	.word	4
	.word	_Label_728
	.word	-224
	.word	4
	.word	_Label_729
	.word	-228
	.word	4
	.word	_Label_730
	.word	-232
	.word	4
	.word	_Label_731
	.word	-236
	.word	4
	.word	_Label_732
	.word	-240
	.word	4
	.word	_Label_733
	.word	-332
	.word	92
	.word	0
_Label_671:
	.ascii	"Handle_Sys_Fork\0"
	.align
_Label_672:
	.byte	'?'
	.ascii	"_temp_670\0"
	.align
_Label_673:
	.byte	'?'
	.ascii	"_temp_669\0"
	.align
_Label_674:
	.byte	'?'
	.ascii	"_temp_668\0"
	.align
_Label_675:
	.byte	'?'
	.ascii	"_temp_667\0"
	.align
_Label_676:
	.byte	'C'
	.ascii	"_temp_666\0"
	.align
_Label_677:
	.byte	'?'
	.ascii	"_temp_665\0"
	.align
_Label_678:
	.byte	'?'
	.ascii	"_temp_664\0"
	.align
_Label_679:
	.byte	'?'
	.ascii	"_temp_663\0"
	.align
_Label_680:
	.byte	'C'
	.ascii	"_temp_662\0"
	.align
_Label_681:
	.byte	'?'
	.ascii	"_temp_659\0"
	.align
_Label_682:
	.byte	'C'
	.ascii	"_temp_658\0"
	.align
_Label_683:
	.byte	'?'
	.ascii	"_temp_657\0"
	.align
_Label_684:
	.byte	'?'
	.ascii	"_temp_656\0"
	.align
_Label_685:
	.byte	'?'
	.ascii	"_temp_655\0"
	.align
_Label_686:
	.byte	'C'
	.ascii	"_temp_654\0"
	.align
_Label_687:
	.byte	'?'
	.ascii	"_temp_651\0"
	.align
_Label_688:
	.byte	'?'
	.ascii	"_temp_650\0"
	.align
_Label_689:
	.byte	'?'
	.ascii	"_temp_649\0"
	.align
_Label_690:
	.byte	'?'
	.ascii	"_temp_648\0"
	.align
_Label_691:
	.byte	'?'
	.ascii	"_temp_644\0"
	.align
_Label_692:
	.byte	'?'
	.ascii	"_temp_643\0"
	.align
_Label_693:
	.byte	'?'
	.ascii	"_temp_642\0"
	.align
_Label_694:
	.byte	'?'
	.ascii	"_temp_641\0"
	.align
_Label_695:
	.byte	'?'
	.ascii	"_temp_640\0"
	.align
_Label_696:
	.byte	'?'
	.ascii	"_temp_639\0"
	.align
_Label_697:
	.byte	'?'
	.ascii	"_temp_638\0"
	.align
_Label_698:
	.byte	'?'
	.ascii	"_temp_637\0"
	.align
_Label_699:
	.byte	'?'
	.ascii	"_temp_636\0"
	.align
_Label_700:
	.byte	'?'
	.ascii	"_temp_635\0"
	.align
_Label_701:
	.byte	'?'
	.ascii	"_temp_634\0"
	.align
_Label_702:
	.byte	'?'
	.ascii	"_temp_633\0"
	.align
_Label_703:
	.byte	'?'
	.ascii	"_temp_632\0"
	.align
_Label_704:
	.byte	'?'
	.ascii	"_temp_631\0"
	.align
_Label_705:
	.byte	'?'
	.ascii	"_temp_630\0"
	.align
_Label_706:
	.byte	'?'
	.ascii	"_temp_629\0"
	.align
_Label_707:
	.byte	'?'
	.ascii	"_temp_628\0"
	.align
_Label_708:
	.byte	'?'
	.ascii	"_temp_627\0"
	.align
_Label_709:
	.byte	'?'
	.ascii	"_temp_626\0"
	.align
_Label_710:
	.byte	'?'
	.ascii	"_temp_625\0"
	.align
_Label_711:
	.byte	'?'
	.ascii	"_temp_624\0"
	.align
_Label_712:
	.byte	'?'
	.ascii	"_temp_620\0"
	.align
_Label_713:
	.byte	'?'
	.ascii	"_temp_619\0"
	.align
_Label_714:
	.byte	'?'
	.ascii	"_temp_618\0"
	.align
_Label_715:
	.byte	'?'
	.ascii	"_temp_617\0"
	.align
_Label_716:
	.byte	'?'
	.ascii	"_temp_616\0"
	.align
_Label_717:
	.byte	'?'
	.ascii	"_temp_615\0"
	.align
_Label_718:
	.byte	'?'
	.ascii	"_temp_614\0"
	.align
_Label_719:
	.byte	'?'
	.ascii	"_temp_613\0"
	.align
_Label_720:
	.byte	'?'
	.ascii	"_temp_612\0"
	.align
_Label_721:
	.byte	'?'
	.ascii	"_temp_611\0"
	.align
_Label_722:
	.byte	'?'
	.ascii	"_temp_610\0"
	.align
_Label_723:
	.byte	'?'
	.ascii	"_temp_609\0"
	.align
_Label_724:
	.byte	'?'
	.ascii	"_temp_608\0"
	.align
_Label_725:
	.byte	'P'
	.ascii	"childProcess\0"
	.align
_Label_726:
	.byte	'P'
	.ascii	"childThread\0"
	.align
_Label_727:
	.byte	'I'
	.ascii	"childFrameAddress\0"
	.align
_Label_728:
	.byte	'I'
	.ascii	"parentFrameAddress\0"
	.align
_Label_729:
	.byte	'I'
	.ascii	"i\0"
	.align
_Label_730:
	.byte	'I'
	.ascii	"junk\0"
	.align
_Label_731:
	.byte	'I'
	.ascii	"numPagesRequired\0"
	.align
_Label_732:
	.byte	'I'
	.ascii	"oldUserPC\0"
	.align
_Label_733:
	.byte	'O'
	.ascii	"childAddrSpace\0"
	.align
! 
! ===============  FUNCTION Handle_Sys_Join  ===============
! 
_P_Kernel_Handle_Sys_Join:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__P_Kernel_Handle_Sys_Join,r1
	push	r1
	mov	23,r1
_Label_4006:
	push	r0
	sub	r1,1,r1
	bne	_Label_4006
	mov	2017,r13		! source line 2017
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	2023,r13		! source line 2023
	mov	"\0\0AS",r10
!   i = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-92]
! WHILE STATEMENT...
	mov	2023,r13		! source line 2023
	mov	"\0\0WH",r10
_Label_734:
!   if i >= 10 then goto _Label_736		(int)
	load	[r14+-92],r1
	mov	10,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_736
!	jmp	_Label_735
_Label_735:
	mov	2023,r13		! source line 2023
	mov	"\0\0WB",r10
! IF STATEMENT...
	mov	2025,r13		! source line 2025
	mov	"\0\0IF",r10
!   _temp_741 = &_P_Kernel_processManager
	set	_P_Kernel_processManager,r1
	store	r1,[r14+-84]
!   _temp_742 = _temp_741 + 8
	load	[r14+-84],r1
	add	r1,8,r1
	store	r1,[r14+-80]
!   Move address of _temp_742 [i ] into _temp_743
!     make sure index expr is >= 0
	load	[r14+-92],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-80],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	168,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-76]
!   _temp_744 = _temp_743 + 12
	load	[r14+-76],r1
	add	r1,12,r1
	store	r1,[r14+-72]
!   Data Move: _temp_740 = *_temp_744  (sizeInBytes=4)
	load	[r14+-72],r1
	load	[r1],r1
	store	r1,[r14+-88]
!   if processID != _temp_740 then goto _Label_738		(int)
	load	[r14+8],r1
	load	[r14+-88],r2
	cmp	r1,r2
	bne	_Label_738
!	jmp	_Label_739
_Label_739:
!   if processID <= -1 then goto _Label_738		(int)
	load	[r14+8],r1
	mov	-1,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	ble	_Label_738
!	jmp	_Label_737
_Label_737:
! THEN...
	mov	2028,r13		! source line 2028
	mov	"\0\0TN",r10
! IF STATEMENT...
	mov	2028,r13		! source line 2028
	mov	"\0\0IF",r10
!   _temp_748 = &_P_Kernel_processManager
	set	_P_Kernel_processManager,r1
	store	r1,[r14+-64]
!   _temp_749 = _temp_748 + 8
	load	[r14+-64],r1
	add	r1,8,r1
	store	r1,[r14+-60]
!   Move address of _temp_749 [i ] into _temp_750
!     make sure index expr is >= 0
	load	[r14+-92],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-60],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	168,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-56]
!   _temp_751 = _temp_750 + 16
	load	[r14+-56],r1
	add	r1,16,r1
	store	r1,[r14+-52]
!   Data Move: _temp_747 = *_temp_751  (sizeInBytes=4)
	load	[r14+-52],r1
	load	[r1],r1
	store	r1,[r14+-68]
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_754 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-40]
!   Data Move: _temp_753 = *_temp_754  (sizeInBytes=4)
	load	[r14+-40],r1
	load	[r1],r1
	store	r1,[r14+-44]
!   if intIsZero (_temp_753) then goto _runtimeErrorNullPointer
	load	[r14+-44],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_755 = _temp_753 + 12
	load	[r14+-44],r1
	add	r1,12,r1
	store	r1,[r14+-36]
!   Data Move: _temp_752 = *_temp_755  (sizeInBytes=4)
	load	[r14+-36],r1
	load	[r1],r1
	store	r1,[r14+-48]
!   if _temp_747 != _temp_752 then goto _Label_746		(int)
	load	[r14+-68],r1
	load	[r14+-48],r2
	cmp	r1,r2
	bne	_Label_746
!	jmp	_Label_745
_Label_745:
! THEN...
	mov	2030,r13		! source line 2030
	mov	"\0\0TN",r10
! RETURN STATEMENT...
	mov	2030,r13		! source line 2030
	mov	"\0\0RE",r10
	mov	2030,r13		! source line 2030
	mov	"\0\0SE",r10
!   _temp_758 = &_P_Kernel_processManager
	set	_P_Kernel_processManager,r1
	store	r1,[r14+-24]
!   _temp_759 = _temp_758 + 8
	load	[r14+-24],r1
	add	r1,8,r1
	store	r1,[r14+-20]
!   Move address of _temp_759 [i ] into _temp_760
!     make sure index expr is >= 0
	load	[r14+-92],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-20],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	168,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-16]
!   _temp_757 = _temp_760		(4 bytes)
	load	[r14+-16],r1
	store	r1,[r14+-28]
!   _temp_761 = &_P_Kernel_processManager
	set	_P_Kernel_processManager,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=12  value=_temp_757  sizeInBytes=4
	load	[r14+-28],r1
	store	r1,[r15+4]
!   Send message WaitForZombie
	load	[r14+-12],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,28,r2
	call	r2
!   Retrieve Result: targetName=_temp_756  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-32]
!   ReturnResult: _temp_756  (sizeInBytes=4)
	load	[r14+-32],r1
	store	r1,[r14+8]
	add	r15,96,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_746:
! END IF...
_Label_738:
! ASSIGNMENT STATEMENT...
	mov	2023,r13		! source line 2023
	mov	"\0\0AS",r10
!   i = i + 1		(int)
	load	[r14+-92],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-92]
! END WHILE...
	jmp	_Label_734
_Label_736:
! RETURN STATEMENT...
	mov	2035,r13		! source line 2035
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,96,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__P_Kernel_Handle_Sys_Join:
	.word	_sourceFileName
	.word	_Label_762
	.word	4		! total size of parameters
	.word	92		! frame size = 92
	.word	_Label_763
	.word	8
	.word	4
	.word	_Label_764
	.word	-12
	.word	4
	.word	_Label_765
	.word	-16
	.word	4
	.word	_Label_766
	.word	-20
	.word	4
	.word	_Label_767
	.word	-24
	.word	4
	.word	_Label_768
	.word	-28
	.word	4
	.word	_Label_769
	.word	-32
	.word	4
	.word	_Label_770
	.word	-36
	.word	4
	.word	_Label_771
	.word	-40
	.word	4
	.word	_Label_772
	.word	-44
	.word	4
	.word	_Label_773
	.word	-48
	.word	4
	.word	_Label_774
	.word	-52
	.word	4
	.word	_Label_775
	.word	-56
	.word	4
	.word	_Label_776
	.word	-60
	.word	4
	.word	_Label_777
	.word	-64
	.word	4
	.word	_Label_778
	.word	-68
	.word	4
	.word	_Label_779
	.word	-72
	.word	4
	.word	_Label_780
	.word	-76
	.word	4
	.word	_Label_781
	.word	-80
	.word	4
	.word	_Label_782
	.word	-84
	.word	4
	.word	_Label_783
	.word	-88
	.word	4
	.word	_Label_784
	.word	-92
	.word	4
	.word	0
_Label_762:
	.ascii	"Handle_Sys_Join\0"
	.align
_Label_763:
	.byte	'I'
	.ascii	"processID\0"
	.align
_Label_764:
	.byte	'?'
	.ascii	"_temp_761\0"
	.align
_Label_765:
	.byte	'?'
	.ascii	"_temp_760\0"
	.align
_Label_766:
	.byte	'?'
	.ascii	"_temp_759\0"
	.align
_Label_767:
	.byte	'?'
	.ascii	"_temp_758\0"
	.align
_Label_768:
	.byte	'?'
	.ascii	"_temp_757\0"
	.align
_Label_769:
	.byte	'?'
	.ascii	"_temp_756\0"
	.align
_Label_770:
	.byte	'?'
	.ascii	"_temp_755\0"
	.align
_Label_771:
	.byte	'?'
	.ascii	"_temp_754\0"
	.align
_Label_772:
	.byte	'?'
	.ascii	"_temp_753\0"
	.align
_Label_773:
	.byte	'?'
	.ascii	"_temp_752\0"
	.align
_Label_774:
	.byte	'?'
	.ascii	"_temp_751\0"
	.align
_Label_775:
	.byte	'?'
	.ascii	"_temp_750\0"
	.align
_Label_776:
	.byte	'?'
	.ascii	"_temp_749\0"
	.align
_Label_777:
	.byte	'?'
	.ascii	"_temp_748\0"
	.align
_Label_778:
	.byte	'?'
	.ascii	"_temp_747\0"
	.align
_Label_779:
	.byte	'?'
	.ascii	"_temp_744\0"
	.align
_Label_780:
	.byte	'?'
	.ascii	"_temp_743\0"
	.align
_Label_781:
	.byte	'?'
	.ascii	"_temp_742\0"
	.align
_Label_782:
	.byte	'?'
	.ascii	"_temp_741\0"
	.align
_Label_783:
	.byte	'?'
	.ascii	"_temp_740\0"
	.align
_Label_784:
	.byte	'I'
	.ascii	"i\0"
	.align
! 
! ===============  FUNCTION Handle_Sys_Exec  ===============
! 
_P_Kernel_Handle_Sys_Exec:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__P_Kernel_Handle_Sys_Exec,r1
	push	r1
	mov	90,r1
_Label_4007:
	push	r0
	sub	r1,1,r1
	bne	_Label_4007
	mov	2040,r13		! source line 2040
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	2056,r13		! source line 2056
	mov	"\0\0AS",r10
!   _temp_785 = &container
	add	r14,-320,r1
	store	r1,[r14+-200]
!   NEW ARRAY Constructor...
!   _temp_787 = &_temp_786
	add	r14,-196,r1
	store	r1,[r14+-172]
!   _temp_787 = _temp_787 + 4
	load	[r14+-172],r1
	add	r1,4,r1
	store	r1,[r14+-172]
!   Next value...
	mov	20,r1
	store	r1,[r14+-168]
_Label_789:
!   Data Move: *_temp_787 = 97  (sizeInBytes=1)
	mov	97,r1
	load	[r14+-172],r2
	storeb	r1,[r2]
!   _temp_787 = _temp_787 + 1
	load	[r14+-172],r1
	add	r1,1,r1
	store	r1,[r14+-172]
!   _temp_788 = _temp_788 + -1
	load	[r14+-168],r1
	add	r1,-1,r1
	store	r1,[r14+-168]
!   if intNotZero (_temp_788) then goto _Label_789
	load	[r14+-168],r1
	cmp	r1,r0
	bne	_Label_789
!   Initialize the array size...
	mov	20,r1
	store	r1,[r14+-196]
!   _temp_790 = &_temp_786
	add	r14,-196,r1
	store	r1,[r14+-164]
!   make sure array has size 20
	load	[r14+-200],r1
	load	[r1],r1
	set	20, r2
	cmp	r1,0
	be	_Label_4008
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bne	_runtimeErrorWrongArraySize
_Label_4008:
!   make sure array has size 20
	load	[r14+-164],r1
	load	[r1],r1
	set	20, r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bne	_runtimeErrorWrongArraySize
!   Data Move: *_temp_785 = *_temp_790  (sizeInBytes=24)
	load	[r14+-164],r5
	load	[r14+-200],r4
	load	[r5],r1
	store	r1,[r4]
	load	[r5+4],r1
	store	r1,[r4+4]
	load	[r5+8],r1
	store	r1,[r4+8]
	load	[r5+12],r1
	store	r1,[r4+12]
	load	[r5+16],r1
	store	r1,[r4+16]
	load	[r5+20],r1
	store	r1,[r4+20]
! ASSIGNMENT STATEMENT...
	mov	2057,r13		! source line 2057
	mov	"\0\0AS",r10
!   filenamePointer = &container
	add	r14,-320,r1
	store	r1,[r14+-324]
! ASSIGNMENT STATEMENT...
	mov	2060,r13		! source line 2060
	mov	"\0\0AS",r10
	mov	2060,r13		! source line 2060
	mov	"\0\0SE",r10
!   _temp_791 = filename		(4 bytes)
	load	[r14+8],r1
	store	r1,[r14+-160]
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_793 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-152]
!   Data Move: _temp_792 = *_temp_793  (sizeInBytes=4)
	load	[r14+-152],r1
	load	[r1],r1
	store	r1,[r14+-156]
!   if intIsZero (_temp_792) then goto _runtimeErrorNullPointer
	load	[r14+-156],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_794 = _temp_792 + 32
	load	[r14+-156],r1
	add	r1,32,r1
	store	r1,[r14+-148]
!   Prepare Argument: offset=12  value=filenamePointer  sizeInBytes=4
	load	[r14+-324],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=_temp_791  sizeInBytes=4
	load	[r14+-160],r1
	store	r1,[r15+8]
!   Prepare Argument: offset=20  value=20  sizeInBytes=4
	mov	20,r1
	store	r1,[r15+12]
!   Send message GetStringFromVirtual
	load	[r14+-148],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,84,r2
	call	r2
!   Retrieve Result: targetName=numOfCharCopied  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-328]
! ASSIGNMENT STATEMENT...
	mov	2063,r13		! source line 2063
	mov	"\0\0AS",r10
!   NEW CLASS Constructor...
!   ZeroMemory: newAddrSpace = zeros  (sizeInBytes=92)
	add	r14,-292,r4
	mov	23,r3
_Label_4009:
	store	r0,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_4009
!   newAddrSpace = _P_Kernel_AddrSpace
	set	_P_Kernel_AddrSpace,r1
	store	r1,[r14+-292]
! SEND STATEMENT...
	mov	2064,r13		! source line 2064
	mov	"\0\0SE",r10
!   _temp_796 = &newAddrSpace
	add	r14,-292,r1
	store	r1,[r14+-140]
!   Send message Init
	load	[r14+-140],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,4,r2
	call	r2
! ASSIGNMENT STATEMENT...
	mov	2067,r13		! source line 2067
	mov	"\0\0AS",r10
	mov	2067,r13		! source line 2067
	mov	"\0\0SE",r10
!   _temp_797 = &_P_Kernel_fileManager
	set	_P_Kernel_fileManager,r1
	store	r1,[r14+-136]
!   Prepare Argument: offset=12  value=filenamePointer  sizeInBytes=4
	load	[r14+-324],r1
	store	r1,[r15+4]
!   Send message Open
	load	[r14+-136],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,16,r2
	call	r2
!   Retrieve Result: targetName=openFile  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-296]
! IF STATEMENT...
	mov	2070,r13		! source line 2070
	mov	"\0\0IF",r10
!   if intIsZero (openFile) then goto _Label_798
	load	[r14+-296],r1
	cmp	r1,r0
	be	_Label_798
	jmp	_Label_799
_Label_798:
! THEN...
	mov	2071,r13		! source line 2071
	mov	"\0\0TN",r10
! RETURN STATEMENT...
	mov	2071,r13		! source line 2071
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,364,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_799:
! ASSIGNMENT STATEMENT...
	mov	2075,r13		! source line 2075
	mov	"\0\0AS",r10
	mov	2075,r13		! source line 2075
	mov	"\0\0SE",r10
!   _temp_800 = &newAddrSpace
	add	r14,-292,r1
	store	r1,[r14+-132]
!   if intIsZero (openFile) then goto _runtimeErrorNullPointer
	load	[r14+-296],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Prepare Argument: offset=12  value=_temp_800  sizeInBytes=4
	load	[r14+-132],r1
	store	r1,[r15+4]
!   Send message LoadExecutable
	load	[r14+-296],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,16,r2
	call	r2
!   Retrieve Result: targetName=initUserPC  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-332]
! IF STATEMENT...
	mov	2078,r13		! source line 2078
	mov	"\0\0IF",r10
!   if initUserPC != -1 then goto _Label_802		(int)
	load	[r14+-332],r1
	mov	-1,r2
	cmp	r1,r2
	bne	_Label_802
!	jmp	_Label_801
_Label_801:
! THEN...
	mov	2079,r13		! source line 2079
	mov	"\0\0TN",r10
! RETURN STATEMENT...
	mov	2079,r13		! source line 2079
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,364,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_802:
! ASSIGNMENT STATEMENT...
	mov	2083,r13		! source line 2083
	mov	"\0\0AS",r10
!   emptySlotFound = 0		(1 byte)
	mov	0,r1
	storeb	r1,[r14+-10]
! ASSIGNMENT STATEMENT...
	mov	2084,r13		! source line 2084
	mov	"\0\0AS",r10
!   i = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-348]
! WHILE STATEMENT...
	mov	2084,r13		! source line 2084
	mov	"\0\0WH",r10
_Label_803:
!   if i >= 10 then goto _Label_805		(int)
	load	[r14+-348],r1
	mov	10,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_805
!	jmp	_Label_804
_Label_804:
	mov	2084,r13		! source line 2084
	mov	"\0\0WB",r10
! IF STATEMENT...
	mov	2085,r13		! source line 2085
	mov	"\0\0IF",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_810 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-120]
!   Data Move: _temp_809 = *_temp_810  (sizeInBytes=4)
	load	[r14+-120],r1
	load	[r1],r1
	store	r1,[r14+-124]
!   if intIsZero (_temp_809) then goto _runtimeErrorNullPointer
	load	[r14+-124],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_811 = _temp_809 + 124
	load	[r14+-124],r1
	add	r1,124,r1
	store	r1,[r14+-116]
!   Move address of _temp_811 [i ] into _temp_812
!     make sure index expr is >= 0
	load	[r14+-348],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-116],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	4,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-112]
!   Data Move: _temp_808 = *_temp_812  (sizeInBytes=4)
	load	[r14+-112],r1
	load	[r1],r1
	store	r1,[r14+-128]
!   if intIsZero (_temp_808) then goto _Label_806
	load	[r14+-128],r1
	cmp	r1,r0
	be	_Label_806
	jmp	_Label_807
_Label_806:
! THEN...
	mov	2086,r13		! source line 2086
	mov	"\0\0TN",r10
! ASSIGNMENT STATEMENT...
	mov	2086,r13		! source line 2086
	mov	"\0\0AS",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_814 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-104]
!   Data Move: _temp_813 = *_temp_814  (sizeInBytes=4)
	load	[r14+-104],r1
	load	[r1],r1
	store	r1,[r14+-108]
!   if intIsZero (_temp_813) then goto _runtimeErrorNullPointer
	load	[r14+-108],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_815 = _temp_813 + 124
	load	[r14+-108],r1
	add	r1,124,r1
	store	r1,[r14+-100]
!   Move address of _temp_815 [i ] into _temp_816
!     make sure index expr is >= 0
	load	[r14+-348],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-100],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	4,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-96]
!   Data Move: *_temp_816 = openFilePtr  (sizeInBytes=4)
	load	[r14+-352],r1
	load	[r14+-96],r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	2087,r13		! source line 2087
	mov	"\0\0AS",r10
!   emptySlotFound = 1		(1 byte)
	mov	1,r1
	storeb	r1,[r14+-10]
! BREAK STATEMENT...
	mov	2088,r13		! source line 2088
	mov	"\0\0BR",r10
	jmp	_Label_805
! END IF...
_Label_807:
! ASSIGNMENT STATEMENT...
	mov	2084,r13		! source line 2084
	mov	"\0\0AS",r10
!   i = i + 1		(int)
	load	[r14+-348],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-348]
! END WHILE...
	jmp	_Label_803
_Label_805:
! IF STATEMENT...
	mov	2093,r13		! source line 2093
	mov	"\0\0IF",r10
!   _temp_819 = emptySlotFound XOR 0		(bool)
	loadb	[r14+-10],r1
	mov	0,r2
	xor	r1,r2,r1
	storeb	r1,[r14+-9]
!   if _temp_819 then goto _Label_818 else goto _Label_817
	loadb	[r14+-9],r1
	cmp	r1,0
	be	_Label_817
	jmp	_Label_818
_Label_817:
! THEN...
	mov	2094,r13		! source line 2094
	mov	"\0\0TN",r10
! RETURN STATEMENT...
	mov	2094,r13		! source line 2094
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,364,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_818:
! SEND STATEMENT...
	mov	2098,r13		! source line 2098
	mov	"\0\0SE",r10
!   _temp_820 = &_P_Kernel_fileManager
	set	_P_Kernel_fileManager,r1
	store	r1,[r14+-92]
!   Prepare Argument: offset=12  value=openFile  sizeInBytes=4
	load	[r14+-296],r1
	store	r1,[r15+4]
!   Send message Close
	load	[r14+-92],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,20,r2
	call	r2
! SEND STATEMENT...
	mov	2101,r13		! source line 2101
	mov	"\0\0SE",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_823 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-80]
!   Data Move: _temp_822 = *_temp_823  (sizeInBytes=4)
	load	[r14+-80],r1
	load	[r1],r1
	store	r1,[r14+-84]
!   if intIsZero (_temp_822) then goto _runtimeErrorNullPointer
	load	[r14+-84],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_824 = _temp_822 + 32
	load	[r14+-84],r1
	add	r1,32,r1
	store	r1,[r14+-76]
!   _temp_821 = _temp_824		(4 bytes)
	load	[r14+-76],r1
	store	r1,[r14+-88]
!   _temp_825 = &_P_Kernel_frameManager
	set	_P_Kernel_frameManager,r1
	store	r1,[r14+-72]
!   Prepare Argument: offset=12  value=_temp_821  sizeInBytes=4
	load	[r14+-88],r1
	store	r1,[r15+4]
!   Send message ReturnAllFrames
	load	[r14+-72],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,20,r2
	call	r2
! ASSIGNMENT STATEMENT...
	mov	2104,r13		! source line 2104
	mov	"\0\0AS",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_827 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-64]
!   Data Move: _temp_826 = *_temp_827  (sizeInBytes=4)
	load	[r14+-64],r1
	load	[r1],r1
	store	r1,[r14+-68]
!   if intIsZero (_temp_826) then goto _runtimeErrorNullPointer
	load	[r14+-68],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_828 = _temp_826 + 32
	load	[r14+-68],r1
	add	r1,32,r1
	store	r1,[r14+-60]
!   Data Move: *_temp_828 = newAddrSpace  (sizeInBytes=92)
	add	r14,-292,r5
	load	[r14+-60],r4
	mov	23,r3
_Label_4010:
	load	[r5],r1
	add	r5,4,r5
	store	r1,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_4010
! ASSIGNMENT STATEMENT...
	mov	2107,r13		! source line 2107
	mov	"\0\0AS",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_831 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-48]
!   Data Move: _temp_830 = *_temp_831  (sizeInBytes=4)
	load	[r14+-48],r1
	load	[r1],r1
	store	r1,[r14+-52]
!   if intIsZero (_temp_830) then goto _runtimeErrorNullPointer
	load	[r14+-52],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_832 = _temp_830 + 32
	load	[r14+-52],r1
	add	r1,32,r1
	store	r1,[r14+-44]
!   _temp_833 = _temp_832 + 4
	load	[r14+-44],r1
	add	r1,4,r1
	store	r1,[r14+-40]
!   Data Move: _temp_829 = *_temp_833  (sizeInBytes=4)
	load	[r14+-40],r1
	load	[r1],r1
	store	r1,[r14+-56]
!   initUserStackTop = _temp_829 * 8192		(int)
	load	[r14+-56],r1
	mov	8192,r2
	mul	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-336]
! ASSIGNMENT STATEMENT...
	mov	2110,r13		! source line 2110
	mov	"\0\0AS",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_834 = _P_Kernel_currentThread + 88
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,88,r1
	store	r1,[r14+-36]
!   Move address of _temp_834 [999 ] into _temp_835
!     make sure index expr is >= 0
	mov	999,r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-36],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	4,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-32]
!   initSystemStackTop = _temp_835		(4 bytes)
	load	[r14+-32],r1
	store	r1,[r14+-340]
! ASSIGNMENT STATEMENT...
	mov	2113,r13		! source line 2113
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=2  sizeInBytes=4
	mov	2,r1
	store	r1,[r15+0]
!   Call the function
	mov	2113,r13		! source line 2113
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=junk  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-344]
! SEND STATEMENT...
	mov	2114,r13		! source line 2114
	mov	"\0\0SE",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_837 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-24]
!   Data Move: _temp_836 = *_temp_837  (sizeInBytes=4)
	load	[r14+-24],r1
	load	[r1],r1
	store	r1,[r14+-28]
!   if intIsZero (_temp_836) then goto _runtimeErrorNullPointer
	load	[r14+-28],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_838 = _temp_836 + 32
	load	[r14+-28],r1
	add	r1,32,r1
	store	r1,[r14+-20]
!   Send message SetToThisPageTable
	load	[r14+-20],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,72,r2
	call	r2
! ASSIGNMENT STATEMENT...
	mov	2115,r13		! source line 2115
	mov	"\0\0AS",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_839 = _P_Kernel_currentThread + 4092
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4092,r1
	store	r1,[r14+-16]
!   Data Move: *_temp_839 = 1  (sizeInBytes=1)
	mov	1,r1
	load	[r14+-16],r2
	storeb	r1,[r2]
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=initUserStackTop  sizeInBytes=4
	load	[r14+-336],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=initUserPC  sizeInBytes=4
	load	[r14+-332],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=initSystemStackTop  sizeInBytes=4
	load	[r14+-340],r1
	store	r1,[r15+8]
!   Call the function
	mov	2117,r13		! source line 2117
	mov	"\0\0CE",r10
	call	BecomeUserThread
! RETURN STATEMENT...
	mov	2119,r13		! source line 2119
	mov	"\0\0RE",r10
!   ReturnResult: 3000  (sizeInBytes=4)
	mov	3000,r1
	store	r1,[r14+8]
	add	r15,364,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__P_Kernel_Handle_Sys_Exec:
	.word	_sourceFileName
	.word	_Label_840
	.word	4		! total size of parameters
	.word	360		! frame size = 360
	.word	_Label_841
	.word	8
	.word	4
	.word	_Label_842
	.word	-16
	.word	4
	.word	_Label_843
	.word	-20
	.word	4
	.word	_Label_844
	.word	-24
	.word	4
	.word	_Label_845
	.word	-28
	.word	4
	.word	_Label_846
	.word	-32
	.word	4
	.word	_Label_847
	.word	-36
	.word	4
	.word	_Label_848
	.word	-40
	.word	4
	.word	_Label_849
	.word	-44
	.word	4
	.word	_Label_850
	.word	-48
	.word	4
	.word	_Label_851
	.word	-52
	.word	4
	.word	_Label_852
	.word	-56
	.word	4
	.word	_Label_853
	.word	-60
	.word	4
	.word	_Label_854
	.word	-64
	.word	4
	.word	_Label_855
	.word	-68
	.word	4
	.word	_Label_856
	.word	-72
	.word	4
	.word	_Label_857
	.word	-76
	.word	4
	.word	_Label_858
	.word	-80
	.word	4
	.word	_Label_859
	.word	-84
	.word	4
	.word	_Label_860
	.word	-88
	.word	4
	.word	_Label_861
	.word	-92
	.word	4
	.word	_Label_862
	.word	-9
	.word	1
	.word	_Label_863
	.word	-96
	.word	4
	.word	_Label_864
	.word	-100
	.word	4
	.word	_Label_865
	.word	-104
	.word	4
	.word	_Label_866
	.word	-108
	.word	4
	.word	_Label_867
	.word	-112
	.word	4
	.word	_Label_868
	.word	-116
	.word	4
	.word	_Label_869
	.word	-120
	.word	4
	.word	_Label_870
	.word	-124
	.word	4
	.word	_Label_871
	.word	-128
	.word	4
	.word	_Label_872
	.word	-132
	.word	4
	.word	_Label_873
	.word	-136
	.word	4
	.word	_Label_874
	.word	-140
	.word	4
	.word	_Label_875
	.word	-144
	.word	4
	.word	_Label_876
	.word	-148
	.word	4
	.word	_Label_877
	.word	-152
	.word	4
	.word	_Label_878
	.word	-156
	.word	4
	.word	_Label_879
	.word	-160
	.word	4
	.word	_Label_880
	.word	-164
	.word	4
	.word	_Label_881
	.word	-168
	.word	4
	.word	_Label_882
	.word	-172
	.word	4
	.word	_Label_883
	.word	-196
	.word	24
	.word	_Label_884
	.word	-200
	.word	4
	.word	_Label_885
	.word	-292
	.word	92
	.word	_Label_886
	.word	-296
	.word	4
	.word	_Label_887
	.word	-320
	.word	24
	.word	_Label_888
	.word	-324
	.word	4
	.word	_Label_889
	.word	-328
	.word	4
	.word	_Label_890
	.word	-332
	.word	4
	.word	_Label_891
	.word	-336
	.word	4
	.word	_Label_892
	.word	-340
	.word	4
	.word	_Label_893
	.word	-344
	.word	4
	.word	_Label_894
	.word	-10
	.word	1
	.word	_Label_895
	.word	-348
	.word	4
	.word	_Label_896
	.word	-352
	.word	4
	.word	0
_Label_840:
	.ascii	"Handle_Sys_Exec\0"
	.align
_Label_841:
	.byte	'P'
	.ascii	"filename\0"
	.align
_Label_842:
	.byte	'?'
	.ascii	"_temp_839\0"
	.align
_Label_843:
	.byte	'?'
	.ascii	"_temp_838\0"
	.align
_Label_844:
	.byte	'?'
	.ascii	"_temp_837\0"
	.align
_Label_845:
	.byte	'?'
	.ascii	"_temp_836\0"
	.align
_Label_846:
	.byte	'?'
	.ascii	"_temp_835\0"
	.align
_Label_847:
	.byte	'?'
	.ascii	"_temp_834\0"
	.align
_Label_848:
	.byte	'?'
	.ascii	"_temp_833\0"
	.align
_Label_849:
	.byte	'?'
	.ascii	"_temp_832\0"
	.align
_Label_850:
	.byte	'?'
	.ascii	"_temp_831\0"
	.align
_Label_851:
	.byte	'?'
	.ascii	"_temp_830\0"
	.align
_Label_852:
	.byte	'?'
	.ascii	"_temp_829\0"
	.align
_Label_853:
	.byte	'?'
	.ascii	"_temp_828\0"
	.align
_Label_854:
	.byte	'?'
	.ascii	"_temp_827\0"
	.align
_Label_855:
	.byte	'?'
	.ascii	"_temp_826\0"
	.align
_Label_856:
	.byte	'?'
	.ascii	"_temp_825\0"
	.align
_Label_857:
	.byte	'?'
	.ascii	"_temp_824\0"
	.align
_Label_858:
	.byte	'?'
	.ascii	"_temp_823\0"
	.align
_Label_859:
	.byte	'?'
	.ascii	"_temp_822\0"
	.align
_Label_860:
	.byte	'?'
	.ascii	"_temp_821\0"
	.align
_Label_861:
	.byte	'?'
	.ascii	"_temp_820\0"
	.align
_Label_862:
	.byte	'C'
	.ascii	"_temp_819\0"
	.align
_Label_863:
	.byte	'?'
	.ascii	"_temp_816\0"
	.align
_Label_864:
	.byte	'?'
	.ascii	"_temp_815\0"
	.align
_Label_865:
	.byte	'?'
	.ascii	"_temp_814\0"
	.align
_Label_866:
	.byte	'?'
	.ascii	"_temp_813\0"
	.align
_Label_867:
	.byte	'?'
	.ascii	"_temp_812\0"
	.align
_Label_868:
	.byte	'?'
	.ascii	"_temp_811\0"
	.align
_Label_869:
	.byte	'?'
	.ascii	"_temp_810\0"
	.align
_Label_870:
	.byte	'?'
	.ascii	"_temp_809\0"
	.align
_Label_871:
	.byte	'?'
	.ascii	"_temp_808\0"
	.align
_Label_872:
	.byte	'?'
	.ascii	"_temp_800\0"
	.align
_Label_873:
	.byte	'?'
	.ascii	"_temp_797\0"
	.align
_Label_874:
	.byte	'?'
	.ascii	"_temp_796\0"
	.align
_Label_875:
	.byte	'?'
	.ascii	"_temp_795\0"
	.align
_Label_876:
	.byte	'?'
	.ascii	"_temp_794\0"
	.align
_Label_877:
	.byte	'?'
	.ascii	"_temp_793\0"
	.align
_Label_878:
	.byte	'?'
	.ascii	"_temp_792\0"
	.align
_Label_879:
	.byte	'?'
	.ascii	"_temp_791\0"
	.align
_Label_880:
	.byte	'?'
	.ascii	"_temp_790\0"
	.align
_Label_881:
	.byte	'?'
	.ascii	"_temp_788\0"
	.align
_Label_882:
	.byte	'?'
	.ascii	"_temp_787\0"
	.align
_Label_883:
	.byte	'?'
	.ascii	"_temp_786\0"
	.align
_Label_884:
	.byte	'?'
	.ascii	"_temp_785\0"
	.align
_Label_885:
	.byte	'O'
	.ascii	"newAddrSpace\0"
	.align
_Label_886:
	.byte	'P'
	.ascii	"openFile\0"
	.align
_Label_887:
	.byte	'A'
	.ascii	"container\0"
	.align
_Label_888:
	.byte	'P'
	.ascii	"filenamePointer\0"
	.align
_Label_889:
	.byte	'I'
	.ascii	"numOfCharCopied\0"
	.align
_Label_890:
	.byte	'I'
	.ascii	"initUserPC\0"
	.align
_Label_891:
	.byte	'I'
	.ascii	"initUserStackTop\0"
	.align
_Label_892:
	.byte	'I'
	.ascii	"initSystemStackTop\0"
	.align
_Label_893:
	.byte	'I'
	.ascii	"junk\0"
	.align
_Label_894:
	.byte	'B'
	.ascii	"emptySlotFound\0"
	.align
_Label_895:
	.byte	'I'
	.ascii	"i\0"
	.align
_Label_896:
	.byte	'P'
	.ascii	"openFilePtr\0"
	.align
! 
! ===============  FUNCTION Handle_Sys_Create  ===============
! 
_P_Kernel_Handle_Sys_Create:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__P_Kernel_Handle_Sys_Create,r1
	push	r1
	mov	29,r1
_Label_4011:
	push	r0
	sub	r1,1,r1
	bne	_Label_4011
	mov	2124,r13		! source line 2124
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	2129,r13		! source line 2129
	mov	"\0\0AS",r10
!   _temp_897 = &container
	add	r14,-104,r1
	store	r1,[r14+-76]
!   NEW ARRAY Constructor...
!   _temp_899 = &_temp_898
	add	r14,-72,r1
	store	r1,[r14+-48]
!   _temp_899 = _temp_899 + 4
	load	[r14+-48],r1
	add	r1,4,r1
	store	r1,[r14+-48]
!   Next value...
	mov	20,r1
	store	r1,[r14+-44]
_Label_901:
!   Data Move: *_temp_899 = 97  (sizeInBytes=1)
	mov	97,r1
	load	[r14+-48],r2
	storeb	r1,[r2]
!   _temp_899 = _temp_899 + 1
	load	[r14+-48],r1
	add	r1,1,r1
	store	r1,[r14+-48]
!   _temp_900 = _temp_900 + -1
	load	[r14+-44],r1
	add	r1,-1,r1
	store	r1,[r14+-44]
!   if intNotZero (_temp_900) then goto _Label_901
	load	[r14+-44],r1
	cmp	r1,r0
	bne	_Label_901
!   Initialize the array size...
	mov	20,r1
	store	r1,[r14+-72]
!   _temp_902 = &_temp_898
	add	r14,-72,r1
	store	r1,[r14+-40]
!   make sure array has size 20
	load	[r14+-76],r1
	load	[r1],r1
	set	20, r2
	cmp	r1,0
	be	_Label_4012
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bne	_runtimeErrorWrongArraySize
_Label_4012:
!   make sure array has size 20
	load	[r14+-40],r1
	load	[r1],r1
	set	20, r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bne	_runtimeErrorWrongArraySize
!   Data Move: *_temp_897 = *_temp_902  (sizeInBytes=24)
	load	[r14+-40],r5
	load	[r14+-76],r4
	load	[r5],r1
	store	r1,[r4]
	load	[r5+4],r1
	store	r1,[r4+4]
	load	[r5+8],r1
	store	r1,[r4+8]
	load	[r5+12],r1
	store	r1,[r4+12]
	load	[r5+16],r1
	store	r1,[r4+16]
	load	[r5+20],r1
	store	r1,[r4+20]
! ASSIGNMENT STATEMENT...
	mov	2130,r13		! source line 2130
	mov	"\0\0AS",r10
!   kernelAddr = &container
	add	r14,-104,r1
	store	r1,[r14+-108]
! ASSIGNMENT STATEMENT...
	mov	2131,r13		! source line 2131
	mov	"\0\0AS",r10
	mov	2131,r13		! source line 2131
	mov	"\0\0SE",r10
!   _temp_903 = filename		(4 bytes)
	load	[r14+8],r1
	store	r1,[r14+-36]
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_905 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-28]
!   Data Move: _temp_904 = *_temp_905  (sizeInBytes=4)
	load	[r14+-28],r1
	load	[r1],r1
	store	r1,[r14+-32]
!   if intIsZero (_temp_904) then goto _runtimeErrorNullPointer
	load	[r14+-32],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_906 = _temp_904 + 32
	load	[r14+-32],r1
	add	r1,32,r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=12  value=kernelAddr  sizeInBytes=4
	load	[r14+-108],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=_temp_903  sizeInBytes=4
	load	[r14+-36],r1
	store	r1,[r15+8]
!   Prepare Argument: offset=20  value=20  sizeInBytes=4
	mov	20,r1
	store	r1,[r15+12]
!   Send message GetStringFromVirtual
	load	[r14+-24],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,84,r2
	call	r2
!   Retrieve Result: targetName=numOfCharCopied  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-80]
! CALL STATEMENT...
!   _temp_907 = _StringConst_39
	set	_StringConst_39,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_907  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   Call the function
	mov	2132,r13		! source line 2132
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_908 = _StringConst_40
	set	_StringConst_40,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_908  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=filename  sizeInBytes=4
	load	[r14+8],r1
	store	r1,[r15+4]
!   Call the function
	mov	2133,r13		! source line 2133
	mov	"\0\0CA",r10
	call	_P_System_printPtr
! CALL STATEMENT...
!   _temp_909 = _StringConst_41
	set	_StringConst_41,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_909  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	2134,r13		! source line 2134
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=kernelAddr  sizeInBytes=4
	load	[r14+-108],r1
	store	r1,[r15+0]
!   Call the function
	mov	2135,r13		! source line 2135
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Call the function
	mov	2136,r13		! source line 2136
	mov	"\0\0CA",r10
	call	_P_System_nl
! RETURN STATEMENT...
	mov	2138,r13		! source line 2138
	mov	"\0\0RE",r10
!   ReturnResult: 4000  (sizeInBytes=4)
	mov	4000,r1
	store	r1,[r14+8]
	add	r15,120,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__P_Kernel_Handle_Sys_Create:
	.word	_sourceFileName
	.word	_Label_910
	.word	4		! total size of parameters
	.word	116		! frame size = 116
	.word	_Label_911
	.word	8
	.word	4
	.word	_Label_912
	.word	-12
	.word	4
	.word	_Label_913
	.word	-16
	.word	4
	.word	_Label_914
	.word	-20
	.word	4
	.word	_Label_915
	.word	-24
	.word	4
	.word	_Label_916
	.word	-28
	.word	4
	.word	_Label_917
	.word	-32
	.word	4
	.word	_Label_918
	.word	-36
	.word	4
	.word	_Label_919
	.word	-40
	.word	4
	.word	_Label_920
	.word	-44
	.word	4
	.word	_Label_921
	.word	-48
	.word	4
	.word	_Label_922
	.word	-72
	.word	24
	.word	_Label_923
	.word	-76
	.word	4
	.word	_Label_924
	.word	-80
	.word	4
	.word	_Label_925
	.word	-104
	.word	24
	.word	_Label_926
	.word	-108
	.word	4
	.word	0
_Label_910:
	.ascii	"Handle_Sys_Create\0"
	.align
_Label_911:
	.byte	'P'
	.ascii	"filename\0"
	.align
_Label_912:
	.byte	'?'
	.ascii	"_temp_909\0"
	.align
_Label_913:
	.byte	'?'
	.ascii	"_temp_908\0"
	.align
_Label_914:
	.byte	'?'
	.ascii	"_temp_907\0"
	.align
_Label_915:
	.byte	'?'
	.ascii	"_temp_906\0"
	.align
_Label_916:
	.byte	'?'
	.ascii	"_temp_905\0"
	.align
_Label_917:
	.byte	'?'
	.ascii	"_temp_904\0"
	.align
_Label_918:
	.byte	'?'
	.ascii	"_temp_903\0"
	.align
_Label_919:
	.byte	'?'
	.ascii	"_temp_902\0"
	.align
_Label_920:
	.byte	'?'
	.ascii	"_temp_900\0"
	.align
_Label_921:
	.byte	'?'
	.ascii	"_temp_899\0"
	.align
_Label_922:
	.byte	'?'
	.ascii	"_temp_898\0"
	.align
_Label_923:
	.byte	'?'
	.ascii	"_temp_897\0"
	.align
_Label_924:
	.byte	'I'
	.ascii	"numOfCharCopied\0"
	.align
_Label_925:
	.byte	'A'
	.ascii	"container\0"
	.align
_Label_926:
	.byte	'P'
	.ascii	"kernelAddr\0"
	.align
! 
! ===============  FUNCTION Handle_Sys_Open  ===============
! 
_P_Kernel_Handle_Sys_Open:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__P_Kernel_Handle_Sys_Open,r1
	push	r1
	mov	47,r1
_Label_4013:
	push	r0
	sub	r1,1,r1
	bne	_Label_4013
	mov	2143,r13		! source line 2143
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	2155,r13		! source line 2155
	mov	"\0\0AS",r10
!   _temp_927 = &container
	add	r14,-164,r1
	store	r1,[r14+-136]
!   NEW ARRAY Constructor...
!   _temp_929 = &_temp_928
	add	r14,-132,r1
	store	r1,[r14+-108]
!   _temp_929 = _temp_929 + 4
	load	[r14+-108],r1
	add	r1,4,r1
	store	r1,[r14+-108]
!   Next value...
	mov	20,r1
	store	r1,[r14+-104]
_Label_931:
!   Data Move: *_temp_929 = 97  (sizeInBytes=1)
	mov	97,r1
	load	[r14+-108],r2
	storeb	r1,[r2]
!   _temp_929 = _temp_929 + 1
	load	[r14+-108],r1
	add	r1,1,r1
	store	r1,[r14+-108]
!   _temp_930 = _temp_930 + -1
	load	[r14+-104],r1
	add	r1,-1,r1
	store	r1,[r14+-104]
!   if intNotZero (_temp_930) then goto _Label_931
	load	[r14+-104],r1
	cmp	r1,r0
	bne	_Label_931
!   Initialize the array size...
	mov	20,r1
	store	r1,[r14+-132]
!   _temp_932 = &_temp_928
	add	r14,-132,r1
	store	r1,[r14+-100]
!   make sure array has size 20
	load	[r14+-136],r1
	load	[r1],r1
	set	20, r2
	cmp	r1,0
	be	_Label_4014
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bne	_runtimeErrorWrongArraySize
_Label_4014:
!   make sure array has size 20
	load	[r14+-100],r1
	load	[r1],r1
	set	20, r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bne	_runtimeErrorWrongArraySize
!   Data Move: *_temp_927 = *_temp_932  (sizeInBytes=24)
	load	[r14+-100],r5
	load	[r14+-136],r4
	load	[r5],r1
	store	r1,[r4]
	load	[r5+4],r1
	store	r1,[r4+4]
	load	[r5+8],r1
	store	r1,[r4+8]
	load	[r5+12],r1
	store	r1,[r4+12]
	load	[r5+16],r1
	store	r1,[r4+16]
	load	[r5+20],r1
	store	r1,[r4+20]
! ASSIGNMENT STATEMENT...
	mov	2156,r13		! source line 2156
	mov	"\0\0AS",r10
!   strKernelAddr = &container
	add	r14,-164,r1
	store	r1,[r14+-168]
! ASSIGNMENT STATEMENT...
	mov	2157,r13		! source line 2157
	mov	"\0\0AS",r10
	mov	2157,r13		! source line 2157
	mov	"\0\0SE",r10
!   _temp_933 = filename		(4 bytes)
	load	[r14+8],r1
	store	r1,[r14+-96]
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_935 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-88]
!   Data Move: _temp_934 = *_temp_935  (sizeInBytes=4)
	load	[r14+-88],r1
	load	[r1],r1
	store	r1,[r14+-92]
!   if intIsZero (_temp_934) then goto _runtimeErrorNullPointer
	load	[r14+-92],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_936 = _temp_934 + 32
	load	[r14+-92],r1
	add	r1,32,r1
	store	r1,[r14+-84]
!   Prepare Argument: offset=12  value=strKernelAddr  sizeInBytes=4
	load	[r14+-168],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=_temp_933  sizeInBytes=4
	load	[r14+-96],r1
	store	r1,[r15+8]
!   Prepare Argument: offset=20  value=20  sizeInBytes=4
	mov	20,r1
	store	r1,[r15+12]
!   Send message GetStringFromVirtual
	load	[r14+-84],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,84,r2
	call	r2
!   Retrieve Result: targetName=numOfCharCopied  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-140]
! IF STATEMENT...
	mov	2160,r13		! source line 2160
	mov	"\0\0IF",r10
!   if numOfCharCopied <= 20 then goto _Label_938		(int)
	load	[r14+-140],r1
	mov	20,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	ble	_Label_938
!	jmp	_Label_937
_Label_937:
! THEN...
	mov	2161,r13		! source line 2161
	mov	"\0\0TN",r10
! RETURN STATEMENT...
	mov	2161,r13		! source line 2161
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,192,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_938:
! ASSIGNMENT STATEMENT...
	mov	2165,r13		! source line 2165
	mov	"\0\0AS",r10
!   emptySlotFound = 0		(1 byte)
	mov	0,r1
	storeb	r1,[r14+-10]
! ASSIGNMENT STATEMENT...
	mov	2166,r13		! source line 2166
	mov	"\0\0AS",r10
!   i = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-172]
! WHILE STATEMENT...
	mov	2166,r13		! source line 2166
	mov	"\0\0WH",r10
_Label_939:
!   if i >= 10 then goto _Label_941		(int)
	load	[r14+-172],r1
	mov	10,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_941
!	jmp	_Label_940
_Label_940:
	mov	2166,r13		! source line 2166
	mov	"\0\0WB",r10
! IF STATEMENT...
	mov	2167,r13		! source line 2167
	mov	"\0\0IF",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_946 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-72]
!   Data Move: _temp_945 = *_temp_946  (sizeInBytes=4)
	load	[r14+-72],r1
	load	[r1],r1
	store	r1,[r14+-76]
!   if intIsZero (_temp_945) then goto _runtimeErrorNullPointer
	load	[r14+-76],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_947 = _temp_945 + 124
	load	[r14+-76],r1
	add	r1,124,r1
	store	r1,[r14+-68]
!   Move address of _temp_947 [i ] into _temp_948
!     make sure index expr is >= 0
	load	[r14+-172],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-68],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	4,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-64]
!   Data Move: _temp_944 = *_temp_948  (sizeInBytes=4)
	load	[r14+-64],r1
	load	[r1],r1
	store	r1,[r14+-80]
!   if intIsZero (_temp_944) then goto _Label_942
	load	[r14+-80],r1
	cmp	r1,r0
	be	_Label_942
	jmp	_Label_943
_Label_942:
! THEN...
	mov	2168,r13		! source line 2168
	mov	"\0\0TN",r10
! ASSIGNMENT STATEMENT...
	mov	2168,r13		! source line 2168
	mov	"\0\0AS",r10
!   emptySlotIndex = i		(4 bytes)
	load	[r14+-172],r1
	store	r1,[r14+-176]
! ASSIGNMENT STATEMENT...
	mov	2169,r13		! source line 2169
	mov	"\0\0AS",r10
!   emptySlotFound = 1		(1 byte)
	mov	1,r1
	storeb	r1,[r14+-10]
! BREAK STATEMENT...
	mov	2170,r13		! source line 2170
	mov	"\0\0BR",r10
	jmp	_Label_941
! END IF...
_Label_943:
! ASSIGNMENT STATEMENT...
	mov	2166,r13		! source line 2166
	mov	"\0\0AS",r10
!   i = i + 1		(int)
	load	[r14+-172],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-172]
! END WHILE...
	jmp	_Label_939
_Label_941:
! IF STATEMENT...
	mov	2175,r13		! source line 2175
	mov	"\0\0IF",r10
!   _temp_951 = emptySlotFound XOR 0		(bool)
	loadb	[r14+-10],r1
	mov	0,r2
	xor	r1,r2,r1
	storeb	r1,[r14+-9]
!   if _temp_951 then goto _Label_950 else goto _Label_949
	loadb	[r14+-9],r1
	cmp	r1,0
	be	_Label_949
	jmp	_Label_950
_Label_949:
! THEN...
	mov	2176,r13		! source line 2176
	mov	"\0\0TN",r10
! RETURN STATEMENT...
	mov	2176,r13		! source line 2176
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,192,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_950:
! IF STATEMENT...
	mov	2180,r13		! source line 2180
	mov	"\0\0IF",r10
!   _temp_954 = _StringConst_42
	set	_StringConst_42,r1
	store	r1,[r14+-60]
!   Prepare Argument: offset=8  value=strKernelAddr  sizeInBytes=4
	load	[r14+-168],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=_temp_954  sizeInBytes=4
	load	[r14+-60],r1
	store	r1,[r15+4]
!   Call the function
	mov	2180,r13		! source line 2180
	mov	"\0\0CA",r10
	call	_P_System_StrEqual
!   if result==true then goto _Label_952 else goto _Label_953
	loadb	[r15],r1
	cmp	r1,0
	be	_Label_953
	jmp	_Label_952
_Label_952:
! THEN...
	mov	2181,r13		! source line 2181
	mov	"\0\0TN",r10
! ASSIGNMENT STATEMENT...
	mov	2181,r13		! source line 2181
	mov	"\0\0AS",r10
!   _temp_955 = &_P_Kernel_fileManager
	set	_P_Kernel_fileManager,r1
	store	r1,[r14+-56]
!   _temp_956 = _temp_955 + 772
	load	[r14+-56],r1
	add	r1,772,r1
	store	r1,[r14+-52]
!   openFilePtr = _temp_956		(4 bytes)
	load	[r14+-52],r1
	store	r1,[r14+-180]
! ASSIGNMENT STATEMENT...
	mov	2182,r13		! source line 2182
	mov	"\0\0AS",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_958 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-44]
!   Data Move: _temp_957 = *_temp_958  (sizeInBytes=4)
	load	[r14+-44],r1
	load	[r1],r1
	store	r1,[r14+-48]
!   if intIsZero (_temp_957) then goto _runtimeErrorNullPointer
	load	[r14+-48],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_959 = _temp_957 + 124
	load	[r14+-48],r1
	add	r1,124,r1
	store	r1,[r14+-40]
!   Move address of _temp_959 [emptySlotIndex ] into _temp_960
!     make sure index expr is >= 0
	load	[r14+-176],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-40],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	4,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-36]
!   Data Move: *_temp_960 = openFilePtr  (sizeInBytes=4)
	load	[r14+-180],r1
	load	[r14+-36],r2
	store	r1,[r2]
! RETURN STATEMENT...
	mov	2183,r13		! source line 2183
	mov	"\0\0RE",r10
!   ReturnResult: emptySlotIndex  (sizeInBytes=4)
	load	[r14+-176],r1
	store	r1,[r14+8]
	add	r15,192,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_953:
! ASSIGNMENT STATEMENT...
	mov	2187,r13		! source line 2187
	mov	"\0\0AS",r10
	mov	2187,r13		! source line 2187
	mov	"\0\0SE",r10
!   _temp_961 = &_P_Kernel_fileManager
	set	_P_Kernel_fileManager,r1
	store	r1,[r14+-32]
!   Prepare Argument: offset=12  value=strKernelAddr  sizeInBytes=4
	load	[r14+-168],r1
	store	r1,[r15+4]
!   Send message Open
	load	[r14+-32],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,16,r2
	call	r2
!   Retrieve Result: targetName=openFilePtr  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-180]
! IF STATEMENT...
	mov	2190,r13		! source line 2190
	mov	"\0\0IF",r10
!   if intIsZero (openFilePtr) then goto _Label_962
	load	[r14+-180],r1
	cmp	r1,r0
	be	_Label_962
	jmp	_Label_963
_Label_962:
! THEN...
	mov	2191,r13		! source line 2191
	mov	"\0\0TN",r10
! RETURN STATEMENT...
	mov	2191,r13		! source line 2191
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,192,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_963:
! ASSIGNMENT STATEMENT...
	mov	2195,r13		! source line 2195
	mov	"\0\0AS",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_965 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-24]
!   Data Move: _temp_964 = *_temp_965  (sizeInBytes=4)
	load	[r14+-24],r1
	load	[r1],r1
	store	r1,[r14+-28]
!   if intIsZero (_temp_964) then goto _runtimeErrorNullPointer
	load	[r14+-28],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_966 = _temp_964 + 124
	load	[r14+-28],r1
	add	r1,124,r1
	store	r1,[r14+-20]
!   Move address of _temp_966 [emptySlotIndex ] into _temp_967
!     make sure index expr is >= 0
	load	[r14+-176],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-20],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	4,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-16]
!   Data Move: *_temp_967 = openFilePtr  (sizeInBytes=4)
	load	[r14+-180],r1
	load	[r14+-16],r2
	store	r1,[r2]
! RETURN STATEMENT...
	mov	2197,r13		! source line 2197
	mov	"\0\0RE",r10
!   ReturnResult: emptySlotIndex  (sizeInBytes=4)
	load	[r14+-176],r1
	store	r1,[r14+8]
	add	r15,192,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__P_Kernel_Handle_Sys_Open:
	.word	_sourceFileName
	.word	_Label_968
	.word	4		! total size of parameters
	.word	188		! frame size = 188
	.word	_Label_969
	.word	8
	.word	4
	.word	_Label_970
	.word	-16
	.word	4
	.word	_Label_971
	.word	-20
	.word	4
	.word	_Label_972
	.word	-24
	.word	4
	.word	_Label_973
	.word	-28
	.word	4
	.word	_Label_974
	.word	-32
	.word	4
	.word	_Label_975
	.word	-36
	.word	4
	.word	_Label_976
	.word	-40
	.word	4
	.word	_Label_977
	.word	-44
	.word	4
	.word	_Label_978
	.word	-48
	.word	4
	.word	_Label_979
	.word	-52
	.word	4
	.word	_Label_980
	.word	-56
	.word	4
	.word	_Label_981
	.word	-60
	.word	4
	.word	_Label_982
	.word	-9
	.word	1
	.word	_Label_983
	.word	-64
	.word	4
	.word	_Label_984
	.word	-68
	.word	4
	.word	_Label_985
	.word	-72
	.word	4
	.word	_Label_986
	.word	-76
	.word	4
	.word	_Label_987
	.word	-80
	.word	4
	.word	_Label_988
	.word	-84
	.word	4
	.word	_Label_989
	.word	-88
	.word	4
	.word	_Label_990
	.word	-92
	.word	4
	.word	_Label_991
	.word	-96
	.word	4
	.word	_Label_992
	.word	-100
	.word	4
	.word	_Label_993
	.word	-104
	.word	4
	.word	_Label_994
	.word	-108
	.word	4
	.word	_Label_995
	.word	-132
	.word	24
	.word	_Label_996
	.word	-136
	.word	4
	.word	_Label_997
	.word	-140
	.word	4
	.word	_Label_998
	.word	-164
	.word	24
	.word	_Label_999
	.word	-168
	.word	4
	.word	_Label_1000
	.word	-172
	.word	4
	.word	_Label_1001
	.word	-176
	.word	4
	.word	_Label_1002
	.word	-10
	.word	1
	.word	_Label_1003
	.word	-180
	.word	4
	.word	0
_Label_968:
	.ascii	"Handle_Sys_Open\0"
	.align
_Label_969:
	.byte	'P'
	.ascii	"filename\0"
	.align
_Label_970:
	.byte	'?'
	.ascii	"_temp_967\0"
	.align
_Label_971:
	.byte	'?'
	.ascii	"_temp_966\0"
	.align
_Label_972:
	.byte	'?'
	.ascii	"_temp_965\0"
	.align
_Label_973:
	.byte	'?'
	.ascii	"_temp_964\0"
	.align
_Label_974:
	.byte	'?'
	.ascii	"_temp_961\0"
	.align
_Label_975:
	.byte	'?'
	.ascii	"_temp_960\0"
	.align
_Label_976:
	.byte	'?'
	.ascii	"_temp_959\0"
	.align
_Label_977:
	.byte	'?'
	.ascii	"_temp_958\0"
	.align
_Label_978:
	.byte	'?'
	.ascii	"_temp_957\0"
	.align
_Label_979:
	.byte	'?'
	.ascii	"_temp_956\0"
	.align
_Label_980:
	.byte	'?'
	.ascii	"_temp_955\0"
	.align
_Label_981:
	.byte	'?'
	.ascii	"_temp_954\0"
	.align
_Label_982:
	.byte	'C'
	.ascii	"_temp_951\0"
	.align
_Label_983:
	.byte	'?'
	.ascii	"_temp_948\0"
	.align
_Label_984:
	.byte	'?'
	.ascii	"_temp_947\0"
	.align
_Label_985:
	.byte	'?'
	.ascii	"_temp_946\0"
	.align
_Label_986:
	.byte	'?'
	.ascii	"_temp_945\0"
	.align
_Label_987:
	.byte	'?'
	.ascii	"_temp_944\0"
	.align
_Label_988:
	.byte	'?'
	.ascii	"_temp_936\0"
	.align
_Label_989:
	.byte	'?'
	.ascii	"_temp_935\0"
	.align
_Label_990:
	.byte	'?'
	.ascii	"_temp_934\0"
	.align
_Label_991:
	.byte	'?'
	.ascii	"_temp_933\0"
	.align
_Label_992:
	.byte	'?'
	.ascii	"_temp_932\0"
	.align
_Label_993:
	.byte	'?'
	.ascii	"_temp_930\0"
	.align
_Label_994:
	.byte	'?'
	.ascii	"_temp_929\0"
	.align
_Label_995:
	.byte	'?'
	.ascii	"_temp_928\0"
	.align
_Label_996:
	.byte	'?'
	.ascii	"_temp_927\0"
	.align
_Label_997:
	.byte	'I'
	.ascii	"numOfCharCopied\0"
	.align
_Label_998:
	.byte	'A'
	.ascii	"container\0"
	.align
_Label_999:
	.byte	'P'
	.ascii	"strKernelAddr\0"
	.align
_Label_1000:
	.byte	'I'
	.ascii	"i\0"
	.align
_Label_1001:
	.byte	'I'
	.ascii	"emptySlotIndex\0"
	.align
_Label_1002:
	.byte	'B'
	.ascii	"emptySlotFound\0"
	.align
_Label_1003:
	.byte	'P'
	.ascii	"openFilePtr\0"
	.align
! 
! ===============  FUNCTION Handle_Sys_Read  ===============
! 
_P_Kernel_Handle_Sys_Read:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__P_Kernel_Handle_Sys_Read,r1
	push	r1
	mov	102,r1
_Label_4015:
	push	r0
	sub	r1,1,r1
	bne	_Label_4015
	mov	2202,r13		! source line 2202
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! IF STATEMENT...
	mov	2220,r13		! source line 2220
	mov	"\0\0IF",r10
!   if fileDesc < 10 then goto _Label_1006		(int)
	load	[r14+8],r1
	mov	10,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bl	_Label_1006
	jmp	_Label_1004
_Label_1006:
!   if fileDesc >= 0 then goto _Label_1005		(int)
	load	[r14+8],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_1005
!	jmp	_Label_1004
_Label_1004:
! THEN...
	mov	2221,r13		! source line 2221
	mov	"\0\0TN",r10
! RETURN STATEMENT...
	mov	2221,r13		! source line 2221
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,412,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_1005:
! ASSIGNMENT STATEMENT...
	mov	2225,r13		! source line 2225
	mov	"\0\0AS",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1008 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-348]
!   Data Move: _temp_1007 = *_temp_1008  (sizeInBytes=4)
	load	[r14+-348],r1
	load	[r1],r1
	store	r1,[r14+-352]
!   if intIsZero (_temp_1007) then goto _runtimeErrorNullPointer
	load	[r14+-352],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1009 = _temp_1007 + 124
	load	[r14+-352],r1
	add	r1,124,r1
	store	r1,[r14+-344]
!   Move address of _temp_1009 [fileDesc ] into _temp_1010
!     make sure index expr is >= 0
	load	[r14+8],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-344],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	4,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-340]
!   Data Move: openFilePtr = *_temp_1010  (sizeInBytes=4)
	load	[r14+-340],r1
	load	[r1],r1
	store	r1,[r14+-356]
! IF STATEMENT...
	mov	2226,r13		! source line 2226
	mov	"\0\0IF",r10
!   if intIsZero (openFilePtr) then goto _Label_1011
	load	[r14+-356],r1
	cmp	r1,r0
	be	_Label_1011
	jmp	_Label_1012
_Label_1011:
! THEN...
	mov	2227,r13		! source line 2227
	mov	"\0\0TN",r10
! RETURN STATEMENT...
	mov	2227,r13		! source line 2227
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,412,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_1012:
! IF STATEMENT...
	mov	2231,r13		! source line 2231
	mov	"\0\0IF",r10
!   if sizeInBytes >= 0 then goto _Label_1014		(int)
	load	[r14+16],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_1014
!	jmp	_Label_1013
_Label_1013:
! THEN...
	mov	2232,r13		! source line 2232
	mov	"\0\0TN",r10
! RETURN STATEMENT...
	mov	2232,r13		! source line 2232
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,412,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_1014:
! IF STATEMENT...
	mov	2236,r13		! source line 2236
	mov	"\0\0IF",r10
!   _temp_1018 = &_P_Kernel_fileManager
	set	_P_Kernel_fileManager,r1
	store	r1,[r14+-332]
!   _temp_1019 = _temp_1018 + 772
	load	[r14+-332],r1
	add	r1,772,r1
	store	r1,[r14+-328]
!   _temp_1017 = _temp_1019		(4 bytes)
	load	[r14+-328],r1
	store	r1,[r14+-336]
!   if openFilePtr != _temp_1017 then goto _Label_1016		(int)
	load	[r14+-356],r1
	load	[r14+-336],r2
	cmp	r1,r2
	bne	_Label_1016
!	jmp	_Label_1015
_Label_1015:
! THEN...
	mov	2238,r13		! source line 2238
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_1020 = _StringConst_43
	set	_StringConst_43,r1
	store	r1,[r14+-324]
!   Prepare Argument: offset=8  value=_temp_1020  sizeInBytes=4
	load	[r14+-324],r1
	store	r1,[r15+0]
!   Call the function
	mov	2238,r13		! source line 2238
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_1021 = _StringConst_44
	set	_StringConst_44,r1
	store	r1,[r14+-320]
!   Prepare Argument: offset=8  value=_temp_1021  sizeInBytes=4
	load	[r14+-320],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=sizeInBytes  sizeInBytes=4
	load	[r14+16],r1
	store	r1,[r15+4]
!   Call the function
	mov	2239,r13		! source line 2239
	mov	"\0\0CA",r10
	call	_P_System_printIntVar
! IF STATEMENT...
	mov	2241,r13		! source line 2241
	mov	"\0\0IF",r10
!   _temp_1025 = buffer		(4 bytes)
	load	[r14+12],r1
	store	r1,[r14+-316]
!   if _temp_1025 < 163840 then goto _Label_1024		(int)
	load	[r14+-316],r1
	set	163840,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bl	_Label_1024
	jmp	_Label_1022
_Label_1024:
!   _temp_1026 = buffer		(4 bytes)
	load	[r14+12],r1
	store	r1,[r14+-312]
!   if _temp_1026 >= 0 then goto _Label_1023		(int)
	load	[r14+-312],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_1023
!	jmp	_Label_1022
_Label_1022:
! THEN...
	mov	2242,r13		! source line 2242
	mov	"\0\0TN",r10
! RETURN STATEMENT...
	mov	2242,r13		! source line 2242
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,412,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_1023:
! ASSIGNMENT STATEMENT...
	mov	2246,r13		! source line 2246
	mov	"\0\0AS",r10
!   incomingChar = 62		(1 byte)
	mov	62,r1
	storeb	r1,[r14+-25]
! ASSIGNMENT STATEMENT...
	mov	2247,r13		! source line 2247
	mov	"\0\0AS",r10
!   copiedSoFar = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-392]
! ASSIGNMENT STATEMENT...
	mov	2248,r13		! source line 2248
	mov	"\0\0AS",r10
!   virtAddr = buffer		(4 bytes)
	load	[r14+12],r1
	store	r1,[r14+-360]
! ASSIGNMENT STATEMENT...
	mov	2249,r13		! source line 2249
	mov	"\0\0AS",r10
!   virtPage = virtAddr div 8192		(int)
	load	[r14+-360],r1
	mov	8192,r2
	cmp	r2,0
	be	_runtimeErrorZeroDivide
	div	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-364]
! ASSIGNMENT STATEMENT...
	mov	2250,r13		! source line 2250
	mov	"\0\0AS",r10
!   offset = virtAddr rem 8192		(int)
	load	[r14+-360],r1
	mov	8192,r2
	cmp	r2,0
	be	_runtimeErrorZeroDivide
	rem	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-368]
! IF STATEMENT...
	mov	2253,r13		! source line 2253
	mov	"\0\0IF",r10
!   if virtPage >= 0 then goto _Label_1030		(int)
	load	[r14+-364],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_1030
!	jmp	_Label_1031
_Label_1031:
!   if virtPage < 20 then goto _Label_1030		(int)
	load	[r14+-364],r1
	mov	20,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bl	_Label_1030
	jmp	_Label_1027
_Label_1030:
	mov	2253,r13		! source line 2253
	mov	"\0\0SE",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1034 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-304]
!   Data Move: _temp_1033 = *_temp_1034  (sizeInBytes=4)
	load	[r14+-304],r1
	load	[r1],r1
	store	r1,[r14+-308]
!   if intIsZero (_temp_1033) then goto _runtimeErrorNullPointer
	load	[r14+-308],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1035 = _temp_1033 + 32
	load	[r14+-308],r1
	add	r1,32,r1
	store	r1,[r14+-300]
!   Prepare Argument: offset=12  value=virtPage  sizeInBytes=4
	load	[r14+-364],r1
	store	r1,[r15+4]
!   Send message IsValid
	load	[r14+-300],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,36,r2
	call	r2
!   Retrieve Result: targetName=_temp_1032  sizeInBytes=1
	loadb	[r15],r1
	storeb	r1,[r14+-23]
!   _temp_1036 = _temp_1032 XOR 0		(bool)
	loadb	[r14+-23],r1
	mov	0,r2
	xor	r1,r2,r1
	storeb	r1,[r14+-22]
!   if _temp_1036 then goto _Label_1029 else goto _Label_1027
	loadb	[r14+-22],r1
	cmp	r1,0
	be	_Label_1027
	jmp	_Label_1029
_Label_1029:
	mov	2253,r13		! source line 2253
	mov	"\0\0SE",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1039 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-292]
!   Data Move: _temp_1038 = *_temp_1039  (sizeInBytes=4)
	load	[r14+-292],r1
	load	[r1],r1
	store	r1,[r14+-296]
!   if intIsZero (_temp_1038) then goto _runtimeErrorNullPointer
	load	[r14+-296],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1040 = _temp_1038 + 32
	load	[r14+-296],r1
	add	r1,32,r1
	store	r1,[r14+-288]
!   Prepare Argument: offset=12  value=virtPage  sizeInBytes=4
	load	[r14+-364],r1
	store	r1,[r15+4]
!   Send message IsWritable
	load	[r14+-288],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,32,r2
	call	r2
!   Retrieve Result: targetName=_temp_1037  sizeInBytes=1
	loadb	[r15],r1
	storeb	r1,[r14+-21]
!   _temp_1041 = _temp_1037 XOR 0		(bool)
	loadb	[r14+-21],r1
	mov	0,r2
	xor	r1,r2,r1
	storeb	r1,[r14+-20]
!   if _temp_1041 then goto _Label_1028 else goto _Label_1027
	loadb	[r14+-20],r1
	cmp	r1,0
	be	_Label_1027
	jmp	_Label_1028
_Label_1027:
! THEN...
	mov	2254,r13		! source line 2254
	mov	"\0\0TN",r10
! RETURN STATEMENT...
	mov	2254,r13		! source line 2254
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,412,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_1028:
! ASSIGNMENT STATEMENT...
	mov	2257,r13		! source line 2257
	mov	"\0\0AS",r10
	mov	2257,r13		! source line 2257
	mov	"\0\0SE",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1044 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-276]
!   Data Move: _temp_1043 = *_temp_1044  (sizeInBytes=4)
	load	[r14+-276],r1
	load	[r1],r1
	store	r1,[r14+-280]
!   if intIsZero (_temp_1043) then goto _runtimeErrorNullPointer
	load	[r14+-280],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1045 = _temp_1043 + 32
	load	[r14+-280],r1
	add	r1,32,r1
	store	r1,[r14+-272]
!   Prepare Argument: offset=12  value=virtPage  sizeInBytes=4
	load	[r14+-364],r1
	store	r1,[r15+4]
!   Send message ExtractFrameAddr
	load	[r14+-272],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
!   Retrieve Result: targetName=_temp_1042  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-284]
!   destAddr = _temp_1042 + offset		(int)
	load	[r14+-284],r1
	load	[r14+-368],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-396]
! CALL STATEMENT...
!   _temp_1046 = _StringConst_45
	set	_StringConst_45,r1
	store	r1,[r14+-268]
!   _temp_1048 = &_P_Kernel_serialDriver
	set	_P_Kernel_serialDriver,r1
	store	r1,[r14+-260]
!   _temp_1049 = _temp_1048 + 48
	load	[r14+-260],r1
	add	r1,48,r1
	store	r1,[r14+-256]
!   Data Move: _temp_1047 = *_temp_1049  (sizeInBytes=4)
	load	[r14+-256],r1
	load	[r1],r1
	store	r1,[r14+-264]
!   Prepare Argument: offset=8  value=_temp_1046  sizeInBytes=4
	load	[r14+-268],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=_temp_1047  sizeInBytes=4
	load	[r14+-264],r1
	store	r1,[r15+4]
!   Call the function
	mov	2258,r13		! source line 2258
	mov	"\0\0CA",r10
	call	_P_System_printIntVar
! WHILE STATEMENT...
	mov	2260,r13		! source line 2260
	mov	"\0\0WH",r10
_Label_1050:
!	jmp	_Label_1051
_Label_1051:
	mov	2260,r13		! source line 2260
	mov	"\0\0WB",r10
! IF STATEMENT...
	mov	2261,r13		! source line 2261
	mov	"\0\0IF",r10
!   _temp_1056 = incomingChar XOR 10		(bool)
	loadb	[r14+-25],r1
	mov	10,r2
	xor	r1,r2,r1
	storeb	r1,[r14+-19]
!   if _temp_1056 then goto _Label_1055 else goto _Label_1053
	loadb	[r14+-19],r1
	cmp	r1,0
	be	_Label_1053
	jmp	_Label_1055
_Label_1055:
!   _temp_1057 = incomingChar XOR 13		(bool)
	loadb	[r14+-25],r1
	mov	13,r2
	xor	r1,r2,r1
	storeb	r1,[r14+-18]
!   if _temp_1057 then goto _Label_1054 else goto _Label_1053
	loadb	[r14+-18],r1
	cmp	r1,0
	be	_Label_1053
	jmp	_Label_1054
_Label_1053:
! THEN...
	mov	2262,r13		! source line 2262
	mov	"\0\0TN",r10
! RETURN STATEMENT...
	mov	2262,r13		! source line 2262
	mov	"\0\0RE",r10
!   ReturnResult: copiedSoFar  (sizeInBytes=4)
	load	[r14+-392],r1
	store	r1,[r14+8]
	add	r15,412,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_1054:
! ASSIGNMENT STATEMENT...
	mov	2265,r13		! source line 2265
	mov	"\0\0AS",r10
	mov	2265,r13		! source line 2265
	mov	"\0\0SE",r10
!   _temp_1058 = &_P_Kernel_serialDriver
	set	_P_Kernel_serialDriver,r1
	store	r1,[r14+-252]
!   Send message GetChar
	load	[r14+-252],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
!   Retrieve Result: targetName=incomingChar  sizeInBytes=1
	loadb	[r15],r1
	storeb	r1,[r14+-25]
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=incomingChar  sizeInBytes=1
	loadb	[r14+-25],r1
	storeb	r1,[r15+0]
!   Call the function
	mov	2266,r13		! source line 2266
	mov	"\0\0CE",r10
	call	printChar
! IF STATEMENT...
	mov	2267,r13		! source line 2267
	mov	"\0\0IF",r10
!   _temp_1061 = incomingChar XOR 4		(bool)
	loadb	[r14+-25],r1
	mov	4,r2
	xor	r1,r2,r1
	storeb	r1,[r14+-17]
!   if _temp_1061 then goto _Label_1060 else goto _Label_1059
	loadb	[r14+-17],r1
	cmp	r1,0
	be	_Label_1059
	jmp	_Label_1060
_Label_1059:
! THEN...
	mov	2268,r13		! source line 2268
	mov	"\0\0TN",r10
! RETURN STATEMENT...
	mov	2268,r13		! source line 2268
	mov	"\0\0RE",r10
!   ReturnResult: copiedSoFar  (sizeInBytes=4)
	load	[r14+-392],r1
	store	r1,[r14+8]
	add	r15,412,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_1060:
! ASSIGNMENT STATEMENT...
	mov	2271,r13		! source line 2271
	mov	"\0\0AS",r10
!   if intIsZero (destAddr) then goto _runtimeErrorNullPointer
	load	[r14+-396],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Data Move: *destAddr = incomingChar  (sizeInBytes=1)
	loadb	[r14+-25],r1
	load	[r14+-396],r2
	storeb	r1,[r2]
! SEND STATEMENT...
	mov	2272,r13		! source line 2272
	mov	"\0\0SE",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1063 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-244]
!   Data Move: _temp_1062 = *_temp_1063  (sizeInBytes=4)
	load	[r14+-244],r1
	load	[r1],r1
	store	r1,[r14+-248]
!   if intIsZero (_temp_1062) then goto _runtimeErrorNullPointer
	load	[r14+-248],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1064 = _temp_1062 + 32
	load	[r14+-248],r1
	add	r1,32,r1
	store	r1,[r14+-240]
!   Prepare Argument: offset=12  value=virtPage  sizeInBytes=4
	load	[r14+-364],r1
	store	r1,[r15+4]
!   Send message SetDirty
	load	[r14+-240],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,40,r2
	call	r2
! SEND STATEMENT...
	mov	2273,r13		! source line 2273
	mov	"\0\0SE",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1066 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-232]
!   Data Move: _temp_1065 = *_temp_1066  (sizeInBytes=4)
	load	[r14+-232],r1
	load	[r1],r1
	store	r1,[r14+-236]
!   if intIsZero (_temp_1065) then goto _runtimeErrorNullPointer
	load	[r14+-236],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1067 = _temp_1065 + 32
	load	[r14+-236],r1
	add	r1,32,r1
	store	r1,[r14+-228]
!   Prepare Argument: offset=12  value=virtPage  sizeInBytes=4
	load	[r14+-364],r1
	store	r1,[r15+4]
!   Send message SetReferenced
	load	[r14+-228],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,44,r2
	call	r2
! ASSIGNMENT STATEMENT...
	mov	2274,r13		! source line 2274
	mov	"\0\0AS",r10
!   copiedSoFar = copiedSoFar + 1		(int)
	load	[r14+-392],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-392]
! IF STATEMENT...
	mov	2277,r13		! source line 2277
	mov	"\0\0IF",r10
!   if copiedSoFar != sizeInBytes then goto _Label_1069		(int)
	load	[r14+-392],r1
	load	[r14+16],r2
	cmp	r1,r2
	bne	_Label_1069
!	jmp	_Label_1068
_Label_1068:
! THEN...
	mov	2278,r13		! source line 2278
	mov	"\0\0TN",r10
! RETURN STATEMENT...
	mov	2278,r13		! source line 2278
	mov	"\0\0RE",r10
!   ReturnResult: copiedSoFar  (sizeInBytes=4)
	load	[r14+-392],r1
	store	r1,[r14+8]
	add	r15,412,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_1069:
! ASSIGNMENT STATEMENT...
	mov	2282,r13		! source line 2282
	mov	"\0\0AS",r10
!   virtAddr = virtAddr + 1		(int)
	load	[r14+-360],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-360]
! ASSIGNMENT STATEMENT...
	mov	2283,r13		! source line 2283
	mov	"\0\0AS",r10
!   virtPage = virtAddr div 8192		(int)
	load	[r14+-360],r1
	mov	8192,r2
	cmp	r2,0
	be	_runtimeErrorZeroDivide
	div	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-364]
! ASSIGNMENT STATEMENT...
	mov	2284,r13		! source line 2284
	mov	"\0\0AS",r10
!   offset = virtAddr rem 8192		(int)
	load	[r14+-360],r1
	mov	8192,r2
	cmp	r2,0
	be	_runtimeErrorZeroDivide
	rem	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-368]
! IF STATEMENT...
	mov	2287,r13		! source line 2287
	mov	"\0\0IF",r10
!   if virtPage >= 0 then goto _Label_1073		(int)
	load	[r14+-364],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_1073
!	jmp	_Label_1074
_Label_1074:
!   if virtPage < 20 then goto _Label_1073		(int)
	load	[r14+-364],r1
	mov	20,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bl	_Label_1073
	jmp	_Label_1070
_Label_1073:
	mov	2287,r13		! source line 2287
	mov	"\0\0SE",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1077 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-220]
!   Data Move: _temp_1076 = *_temp_1077  (sizeInBytes=4)
	load	[r14+-220],r1
	load	[r1],r1
	store	r1,[r14+-224]
!   if intIsZero (_temp_1076) then goto _runtimeErrorNullPointer
	load	[r14+-224],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1078 = _temp_1076 + 32
	load	[r14+-224],r1
	add	r1,32,r1
	store	r1,[r14+-216]
!   Prepare Argument: offset=12  value=virtPage  sizeInBytes=4
	load	[r14+-364],r1
	store	r1,[r15+4]
!   Send message IsValid
	load	[r14+-216],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,36,r2
	call	r2
!   Retrieve Result: targetName=_temp_1075  sizeInBytes=1
	loadb	[r15],r1
	storeb	r1,[r14+-16]
!   _temp_1079 = _temp_1075 XOR 0		(bool)
	loadb	[r14+-16],r1
	mov	0,r2
	xor	r1,r2,r1
	storeb	r1,[r14+-15]
!   if _temp_1079 then goto _Label_1072 else goto _Label_1070
	loadb	[r14+-15],r1
	cmp	r1,0
	be	_Label_1070
	jmp	_Label_1072
_Label_1072:
	mov	2287,r13		! source line 2287
	mov	"\0\0SE",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1082 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-208]
!   Data Move: _temp_1081 = *_temp_1082  (sizeInBytes=4)
	load	[r14+-208],r1
	load	[r1],r1
	store	r1,[r14+-212]
!   if intIsZero (_temp_1081) then goto _runtimeErrorNullPointer
	load	[r14+-212],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1083 = _temp_1081 + 32
	load	[r14+-212],r1
	add	r1,32,r1
	store	r1,[r14+-204]
!   Prepare Argument: offset=12  value=virtPage  sizeInBytes=4
	load	[r14+-364],r1
	store	r1,[r15+4]
!   Send message IsWritable
	load	[r14+-204],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,32,r2
	call	r2
!   Retrieve Result: targetName=_temp_1080  sizeInBytes=1
	loadb	[r15],r1
	storeb	r1,[r14+-14]
!   _temp_1084 = _temp_1080 XOR 0		(bool)
	loadb	[r14+-14],r1
	mov	0,r2
	xor	r1,r2,r1
	storeb	r1,[r14+-13]
!   if _temp_1084 then goto _Label_1071 else goto _Label_1070
	loadb	[r14+-13],r1
	cmp	r1,0
	be	_Label_1070
	jmp	_Label_1071
_Label_1070:
! THEN...
	mov	2288,r13		! source line 2288
	mov	"\0\0TN",r10
! RETURN STATEMENT...
	mov	2288,r13		! source line 2288
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,412,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_1071:
! ASSIGNMENT STATEMENT...
	mov	2291,r13		! source line 2291
	mov	"\0\0AS",r10
	mov	2291,r13		! source line 2291
	mov	"\0\0SE",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1087 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-192]
!   Data Move: _temp_1086 = *_temp_1087  (sizeInBytes=4)
	load	[r14+-192],r1
	load	[r1],r1
	store	r1,[r14+-196]
!   if intIsZero (_temp_1086) then goto _runtimeErrorNullPointer
	load	[r14+-196],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1088 = _temp_1086 + 32
	load	[r14+-196],r1
	add	r1,32,r1
	store	r1,[r14+-188]
!   Prepare Argument: offset=12  value=virtPage  sizeInBytes=4
	load	[r14+-364],r1
	store	r1,[r15+4]
!   Send message ExtractFrameAddr
	load	[r14+-188],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
!   Retrieve Result: targetName=_temp_1085  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-200]
!   destAddr = _temp_1085 + offset		(int)
	load	[r14+-200],r1
	load	[r14+-368],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-396]
! END WHILE...
	jmp	_Label_1050
_Label_1052:
! END IF...
_Label_1016:
! IF STATEMENT...
	mov	2299,r13		! source line 2299
	mov	"\0\0IF",r10
!   _temp_1092 = buffer		(4 bytes)
	load	[r14+12],r1
	store	r1,[r14+-184]
!   if _temp_1092 < 163840 then goto _Label_1091		(int)
	load	[r14+-184],r1
	set	163840,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bl	_Label_1091
	jmp	_Label_1089
_Label_1091:
!   _temp_1093 = buffer		(4 bytes)
	load	[r14+12],r1
	store	r1,[r14+-180]
!   if _temp_1093 >= 0 then goto _Label_1090		(int)
	load	[r14+-180],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_1090
!	jmp	_Label_1089
_Label_1089:
! THEN...
	mov	2300,r13		! source line 2300
	mov	"\0\0TN",r10
! RETURN STATEMENT...
	mov	2300,r13		! source line 2300
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,412,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_1090:
! ASSIGNMENT STATEMENT...
	mov	2305,r13		! source line 2305
	mov	"\0\0AS",r10
!   virtAddr = buffer		(4 bytes)
	load	[r14+12],r1
	store	r1,[r14+-360]
! ASSIGNMENT STATEMENT...
	mov	2306,r13		! source line 2306
	mov	"\0\0AS",r10
!   virtPage = virtAddr div 8192		(int)
	load	[r14+-360],r1
	mov	8192,r2
	cmp	r2,0
	be	_runtimeErrorZeroDivide
	div	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-364]
! ASSIGNMENT STATEMENT...
	mov	2307,r13		! source line 2307
	mov	"\0\0AS",r10
!   offset = virtAddr rem 8192		(int)
	load	[r14+-360],r1
	mov	8192,r2
	cmp	r2,0
	be	_runtimeErrorZeroDivide
	rem	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-368]
! ASSIGNMENT STATEMENT...
	mov	2308,r13		! source line 2308
	mov	"\0\0AS",r10
!   copiedSoFar = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-392]
! ASSIGNMENT STATEMENT...
	mov	2309,r13		! source line 2309
	mov	"\0\0AS",r10
!   chunkSize = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-372]
! ASSIGNMENT STATEMENT...
	mov	2312,r13		! source line 2312
	mov	"\0\0AS",r10
!   if intIsZero (openFilePtr) then goto _runtimeErrorNullPointer
	load	[r14+-356],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1094 = openFilePtr + 16
	load	[r14+-356],r1
	add	r1,16,r1
	store	r1,[r14+-176]
!   Data Move: currentPos = *_temp_1094  (sizeInBytes=4)
	load	[r14+-176],r1
	load	[r1],r1
	store	r1,[r14+-380]
! ASSIGNMENT STATEMENT...
	mov	2313,r13		! source line 2313
	mov	"\0\0AS",r10
!   nextPosInFile = currentPos		(4 bytes)
	load	[r14+-380],r1
	store	r1,[r14+-384]
! WHILE STATEMENT...
	mov	2318,r13		! source line 2318
	mov	"\0\0WH",r10
_Label_1095:
!	jmp	_Label_1096
_Label_1096:
	mov	2318,r13		! source line 2318
	mov	"\0\0WB",r10
! ASSIGNMENT STATEMENT...
	mov	2321,r13		! source line 2321
	mov	"\0\0AS",r10
!   thisChunkSize = 8192 - offset		(int)
	mov	8192,r1
	load	[r14+-368],r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-376]
! ASSIGNMENT STATEMENT...
	mov	2322,r13		! source line 2322
	mov	"\0\0AS",r10
!   if intIsZero (openFilePtr) then goto _runtimeErrorNullPointer
	load	[r14+-356],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1099 = openFilePtr + 20
	load	[r14+-356],r1
	add	r1,20,r1
	store	r1,[r14+-168]
!   Data Move: _temp_1098 = *_temp_1099  (sizeInBytes=4)
	load	[r14+-168],r1
	load	[r1],r1
	store	r1,[r14+-172]
!   if intIsZero (_temp_1098) then goto _runtimeErrorNullPointer
	load	[r14+-172],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1100 = _temp_1098 + 24
	load	[r14+-172],r1
	add	r1,24,r1
	store	r1,[r14+-164]
!   Data Move: sizeOfFileInBytes = *_temp_1100  (sizeInBytes=4)
	load	[r14+-164],r1
	load	[r1],r1
	store	r1,[r14+-388]
! IF STATEMENT...
	mov	2324,r13		! source line 2324
	mov	"\0\0IF",r10
!   _temp_1103 = nextPosInFile + thisChunkSize		(int)
	load	[r14+-384],r1
	load	[r14+-376],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-160]
!   if _temp_1103 <= sizeOfFileInBytes then goto _Label_1102		(int)
	load	[r14+-160],r1
	load	[r14+-388],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	ble	_Label_1102
!	jmp	_Label_1101
_Label_1101:
! THEN...
	mov	2325,r13		! source line 2325
	mov	"\0\0TN",r10
! ASSIGNMENT STATEMENT...
	mov	2325,r13		! source line 2325
	mov	"\0\0AS",r10
!   thisChunkSize = sizeOfFileInBytes - nextPosInFile		(int)
	load	[r14+-388],r1
	load	[r14+-384],r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-376]
! END IF...
_Label_1102:
! IF STATEMENT...
	mov	2328,r13		! source line 2328
	mov	"\0\0IF",r10
!   _temp_1106 = copiedSoFar + thisChunkSize		(int)
	load	[r14+-392],r1
	load	[r14+-376],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-156]
!   if _temp_1106 <= sizeInBytes then goto _Label_1105		(int)
	load	[r14+-156],r1
	load	[r14+16],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	ble	_Label_1105
!	jmp	_Label_1104
_Label_1104:
! THEN...
	mov	2329,r13		! source line 2329
	mov	"\0\0TN",r10
! ASSIGNMENT STATEMENT...
	mov	2329,r13		! source line 2329
	mov	"\0\0AS",r10
!   thisChunkSize = sizeInBytes - copiedSoFar		(int)
	load	[r14+16],r1
	load	[r14+-392],r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-376]
! END IF...
_Label_1105:
! IF STATEMENT...
	mov	2333,r13		! source line 2333
	mov	"\0\0IF",r10
!   if thisChunkSize > 0 then goto _Label_1108		(int)
	load	[r14+-376],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_1108
!	jmp	_Label_1107
_Label_1107:
! THEN...
	mov	2334,r13		! source line 2334
	mov	"\0\0TN",r10
! BREAK STATEMENT...
	mov	2334,r13		! source line 2334
	mov	"\0\0BR",r10
	jmp	_Label_1097
! END IF...
_Label_1108:
! IF STATEMENT...
	mov	2338,r13		! source line 2338
	mov	"\0\0IF",r10
!   if virtPage >= 0 then goto _Label_1112		(int)
	load	[r14+-364],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_1112
!	jmp	_Label_1113
_Label_1113:
!   if virtPage < 20 then goto _Label_1112		(int)
	load	[r14+-364],r1
	mov	20,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bl	_Label_1112
	jmp	_Label_1109
_Label_1112:
	mov	2338,r13		! source line 2338
	mov	"\0\0SE",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1116 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-148]
!   Data Move: _temp_1115 = *_temp_1116  (sizeInBytes=4)
	load	[r14+-148],r1
	load	[r1],r1
	store	r1,[r14+-152]
!   if intIsZero (_temp_1115) then goto _runtimeErrorNullPointer
	load	[r14+-152],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1117 = _temp_1115 + 32
	load	[r14+-152],r1
	add	r1,32,r1
	store	r1,[r14+-144]
!   Prepare Argument: offset=12  value=virtPage  sizeInBytes=4
	load	[r14+-364],r1
	store	r1,[r15+4]
!   Send message IsValid
	load	[r14+-144],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,36,r2
	call	r2
!   Retrieve Result: targetName=_temp_1114  sizeInBytes=1
	loadb	[r15],r1
	storeb	r1,[r14+-12]
!   _temp_1118 = _temp_1114 XOR 0		(bool)
	loadb	[r14+-12],r1
	mov	0,r2
	xor	r1,r2,r1
	storeb	r1,[r14+-11]
!   if _temp_1118 then goto _Label_1111 else goto _Label_1109
	loadb	[r14+-11],r1
	cmp	r1,0
	be	_Label_1109
	jmp	_Label_1111
_Label_1111:
	mov	2338,r13		! source line 2338
	mov	"\0\0SE",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1121 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-136]
!   Data Move: _temp_1120 = *_temp_1121  (sizeInBytes=4)
	load	[r14+-136],r1
	load	[r1],r1
	store	r1,[r14+-140]
!   if intIsZero (_temp_1120) then goto _runtimeErrorNullPointer
	load	[r14+-140],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1122 = _temp_1120 + 32
	load	[r14+-140],r1
	add	r1,32,r1
	store	r1,[r14+-132]
!   Prepare Argument: offset=12  value=virtPage  sizeInBytes=4
	load	[r14+-364],r1
	store	r1,[r15+4]
!   Send message IsWritable
	load	[r14+-132],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,32,r2
	call	r2
!   Retrieve Result: targetName=_temp_1119  sizeInBytes=1
	loadb	[r15],r1
	storeb	r1,[r14+-10]
!   _temp_1123 = _temp_1119 XOR 0		(bool)
	loadb	[r14+-10],r1
	mov	0,r2
	xor	r1,r2,r1
	storeb	r1,[r14+-9]
!   if _temp_1123 then goto _Label_1110 else goto _Label_1109
	loadb	[r14+-9],r1
	cmp	r1,0
	be	_Label_1109
	jmp	_Label_1110
_Label_1109:
! THEN...
	mov	2339,r13		! source line 2339
	mov	"\0\0TN",r10
! RETURN STATEMENT...
	mov	2339,r13		! source line 2339
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,412,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_1110:
! ASSIGNMENT STATEMENT...
	mov	2343,r13		! source line 2343
	mov	"\0\0AS",r10
!   nextPosInFile = nextPosInFile + thisChunkSize		(int)
	load	[r14+-384],r1
	load	[r14+-376],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-384]
! ASSIGNMENT STATEMENT...
	mov	2344,r13		! source line 2344
	mov	"\0\0AS",r10
!   copiedSoFar = copiedSoFar + thisChunkSize		(int)
	load	[r14+-392],r1
	load	[r14+-376],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-392]
! ASSIGNMENT STATEMENT...
	mov	2345,r13		! source line 2345
	mov	"\0\0AS",r10
!   virtPage = virtPage + 1		(int)
	load	[r14+-364],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-364]
! ASSIGNMENT STATEMENT...
	mov	2346,r13		! source line 2346
	mov	"\0\0AS",r10
!   offset = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-368]
! IF STATEMENT...
	mov	2349,r13		! source line 2349
	mov	"\0\0IF",r10
!   if copiedSoFar != sizeInBytes then goto _Label_1125		(int)
	load	[r14+-392],r1
	load	[r14+16],r2
	cmp	r1,r2
	bne	_Label_1125
!	jmp	_Label_1124
_Label_1124:
! THEN...
	mov	2350,r13		! source line 2350
	mov	"\0\0TN",r10
! BREAK STATEMENT...
	mov	2350,r13		! source line 2350
	mov	"\0\0BR",r10
	jmp	_Label_1097
! END IF...
_Label_1125:
! END WHILE...
	jmp	_Label_1095
_Label_1097:
! ASSIGNMENT STATEMENT...
	mov	2361,r13		! source line 2361
	mov	"\0\0AS",r10
!   virtAddr = buffer		(4 bytes)
	load	[r14+12],r1
	store	r1,[r14+-360]
! ASSIGNMENT STATEMENT...
	mov	2362,r13		! source line 2362
	mov	"\0\0AS",r10
!   virtPage = virtAddr div 8192		(int)
	load	[r14+-360],r1
	mov	8192,r2
	cmp	r2,0
	be	_runtimeErrorZeroDivide
	div	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-364]
! ASSIGNMENT STATEMENT...
	mov	2363,r13		! source line 2363
	mov	"\0\0AS",r10
!   offset = virtAddr rem 8192		(int)
	load	[r14+-360],r1
	mov	8192,r2
	cmp	r2,0
	be	_runtimeErrorZeroDivide
	rem	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-368]
! ASSIGNMENT STATEMENT...
	mov	2364,r13		! source line 2364
	mov	"\0\0AS",r10
!   copiedSoFar = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-392]
! ASSIGNMENT STATEMENT...
	mov	2365,r13		! source line 2365
	mov	"\0\0AS",r10
!   chunkSize = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-372]
! ASSIGNMENT STATEMENT...
	mov	2368,r13		! source line 2368
	mov	"\0\0AS",r10
!   if intIsZero (openFilePtr) then goto _runtimeErrorNullPointer
	load	[r14+-356],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1126 = openFilePtr + 16
	load	[r14+-356],r1
	add	r1,16,r1
	store	r1,[r14+-128]
!   Data Move: currentPos = *_temp_1126  (sizeInBytes=4)
	load	[r14+-128],r1
	load	[r1],r1
	store	r1,[r14+-380]
! ASSIGNMENT STATEMENT...
	mov	2369,r13		! source line 2369
	mov	"\0\0AS",r10
!   nextPosInFile = currentPos		(4 bytes)
	load	[r14+-380],r1
	store	r1,[r14+-384]
! WHILE STATEMENT...
	mov	2371,r13		! source line 2371
	mov	"\0\0WH",r10
_Label_1127:
!	jmp	_Label_1128
_Label_1128:
	mov	2371,r13		! source line 2371
	mov	"\0\0WB",r10
! ASSIGNMENT STATEMENT...
	mov	2374,r13		! source line 2374
	mov	"\0\0AS",r10
!   thisChunkSize = 8192 - offset		(int)
	mov	8192,r1
	load	[r14+-368],r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-376]
! ASSIGNMENT STATEMENT...
	mov	2375,r13		! source line 2375
	mov	"\0\0AS",r10
!   if intIsZero (openFilePtr) then goto _runtimeErrorNullPointer
	load	[r14+-356],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1131 = openFilePtr + 20
	load	[r14+-356],r1
	add	r1,20,r1
	store	r1,[r14+-120]
!   Data Move: _temp_1130 = *_temp_1131  (sizeInBytes=4)
	load	[r14+-120],r1
	load	[r1],r1
	store	r1,[r14+-124]
!   if intIsZero (_temp_1130) then goto _runtimeErrorNullPointer
	load	[r14+-124],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1132 = _temp_1130 + 24
	load	[r14+-124],r1
	add	r1,24,r1
	store	r1,[r14+-116]
!   Data Move: sizeOfFileInBytes = *_temp_1132  (sizeInBytes=4)
	load	[r14+-116],r1
	load	[r1],r1
	store	r1,[r14+-388]
! IF STATEMENT...
	mov	2377,r13		! source line 2377
	mov	"\0\0IF",r10
!   _temp_1135 = nextPosInFile + thisChunkSize		(int)
	load	[r14+-384],r1
	load	[r14+-376],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-112]
!   if _temp_1135 <= sizeOfFileInBytes then goto _Label_1134		(int)
	load	[r14+-112],r1
	load	[r14+-388],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	ble	_Label_1134
!	jmp	_Label_1133
_Label_1133:
! THEN...
	mov	2378,r13		! source line 2378
	mov	"\0\0TN",r10
! ASSIGNMENT STATEMENT...
	mov	2378,r13		! source line 2378
	mov	"\0\0AS",r10
!   thisChunkSize = sizeOfFileInBytes - nextPosInFile		(int)
	load	[r14+-388],r1
	load	[r14+-384],r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-376]
! END IF...
_Label_1134:
! IF STATEMENT...
	mov	2381,r13		! source line 2381
	mov	"\0\0IF",r10
!   _temp_1138 = copiedSoFar + thisChunkSize		(int)
	load	[r14+-392],r1
	load	[r14+-376],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-108]
!   if _temp_1138 <= sizeInBytes then goto _Label_1137		(int)
	load	[r14+-108],r1
	load	[r14+16],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	ble	_Label_1137
!	jmp	_Label_1136
_Label_1136:
! THEN...
	mov	2382,r13		! source line 2382
	mov	"\0\0TN",r10
! ASSIGNMENT STATEMENT...
	mov	2382,r13		! source line 2382
	mov	"\0\0AS",r10
!   thisChunkSize = sizeInBytes - copiedSoFar		(int)
	load	[r14+16],r1
	load	[r14+-392],r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-376]
! END IF...
_Label_1137:
! IF STATEMENT...
	mov	2386,r13		! source line 2386
	mov	"\0\0IF",r10
!   if thisChunkSize > 0 then goto _Label_1140		(int)
	load	[r14+-376],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_1140
!	jmp	_Label_1139
_Label_1139:
! THEN...
	mov	2387,r13		! source line 2387
	mov	"\0\0TN",r10
! BREAK STATEMENT...
	mov	2387,r13		! source line 2387
	mov	"\0\0BR",r10
	jmp	_Label_1129
! END IF...
_Label_1140:
! SEND STATEMENT...
	mov	2391,r13		! source line 2391
	mov	"\0\0SE",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1142 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-100]
!   Data Move: _temp_1141 = *_temp_1142  (sizeInBytes=4)
	load	[r14+-100],r1
	load	[r1],r1
	store	r1,[r14+-104]
!   if intIsZero (_temp_1141) then goto _runtimeErrorNullPointer
	load	[r14+-104],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1143 = _temp_1141 + 32
	load	[r14+-104],r1
	add	r1,32,r1
	store	r1,[r14+-96]
!   Prepare Argument: offset=12  value=virtPage  sizeInBytes=4
	load	[r14+-364],r1
	store	r1,[r15+4]
!   Send message SetDirty
	load	[r14+-96],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,40,r2
	call	r2
! SEND STATEMENT...
	mov	2392,r13		! source line 2392
	mov	"\0\0SE",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1145 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-88]
!   Data Move: _temp_1144 = *_temp_1145  (sizeInBytes=4)
	load	[r14+-88],r1
	load	[r1],r1
	store	r1,[r14+-92]
!   if intIsZero (_temp_1144) then goto _runtimeErrorNullPointer
	load	[r14+-92],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1146 = _temp_1144 + 32
	load	[r14+-92],r1
	add	r1,32,r1
	store	r1,[r14+-84]
!   Prepare Argument: offset=12  value=virtPage  sizeInBytes=4
	load	[r14+-364],r1
	store	r1,[r15+4]
!   Send message SetReferenced
	load	[r14+-84],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,44,r2
	call	r2
! ASSIGNMENT STATEMENT...
	mov	2393,r13		! source line 2393
	mov	"\0\0AS",r10
	mov	2393,r13		! source line 2393
	mov	"\0\0SE",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1149 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-72]
!   Data Move: _temp_1148 = *_temp_1149  (sizeInBytes=4)
	load	[r14+-72],r1
	load	[r1],r1
	store	r1,[r14+-76]
!   if intIsZero (_temp_1148) then goto _runtimeErrorNullPointer
	load	[r14+-76],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1150 = _temp_1148 + 32
	load	[r14+-76],r1
	add	r1,32,r1
	store	r1,[r14+-68]
!   Prepare Argument: offset=12  value=virtPage  sizeInBytes=4
	load	[r14+-364],r1
	store	r1,[r15+4]
!   Send message ExtractFrameAddr
	load	[r14+-68],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
!   Retrieve Result: targetName=_temp_1147  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-80]
!   destAddr = _temp_1147 + offset		(int)
	load	[r14+-80],r1
	load	[r14+-368],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-396]
! ASSIGNMENT STATEMENT...
	mov	2394,r13		! source line 2394
	mov	"\0\0AS",r10
	mov	2394,r13		! source line 2394
	mov	"\0\0SE",r10
!   _temp_1151 = &_P_Kernel_fileManager
	set	_P_Kernel_fileManager,r1
	store	r1,[r14+-64]
!   Prepare Argument: offset=12  value=openFilePtr  sizeInBytes=4
	load	[r14+-356],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=destAddr  sizeInBytes=4
	load	[r14+-396],r1
	store	r1,[r15+8]
!   Prepare Argument: offset=20  value=nextPosInFile  sizeInBytes=4
	load	[r14+-384],r1
	store	r1,[r15+12]
!   Prepare Argument: offset=24  value=thisChunkSize  sizeInBytes=4
	load	[r14+-376],r1
	store	r1,[r15+16]
!   Send message SynchRead
	load	[r14+-64],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,28,r2
	call	r2
!   Retrieve Result: targetName=synchReadStatus  sizeInBytes=1
	loadb	[r15],r1
	storeb	r1,[r14+-24]
! ASSIGNMENT STATEMENT...
	mov	2397,r13		! source line 2397
	mov	"\0\0AS",r10
!   nextPosInFile = nextPosInFile + thisChunkSize		(int)
	load	[r14+-384],r1
	load	[r14+-376],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-384]
! ASSIGNMENT STATEMENT...
	mov	2398,r13		! source line 2398
	mov	"\0\0AS",r10
!   copiedSoFar = copiedSoFar + thisChunkSize		(int)
	load	[r14+-392],r1
	load	[r14+-376],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-392]
! ASSIGNMENT STATEMENT...
	mov	2399,r13		! source line 2399
	mov	"\0\0AS",r10
!   virtPage = virtPage + 1		(int)
	load	[r14+-364],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-364]
! ASSIGNMENT STATEMENT...
	mov	2400,r13		! source line 2400
	mov	"\0\0AS",r10
!   offset = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-368]
! IF STATEMENT...
	mov	2403,r13		! source line 2403
	mov	"\0\0IF",r10
!   if copiedSoFar != sizeInBytes then goto _Label_1153		(int)
	load	[r14+-392],r1
	load	[r14+16],r2
	cmp	r1,r2
	bne	_Label_1153
!	jmp	_Label_1152
_Label_1152:
! THEN...
	mov	2404,r13		! source line 2404
	mov	"\0\0TN",r10
! ASSIGNMENT STATEMENT...
	mov	2404,r13		! source line 2404
	mov	"\0\0AS",r10
!   if intIsZero (openFilePtr) then goto _runtimeErrorNullPointer
	load	[r14+-356],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1154 = openFilePtr + 16
	load	[r14+-356],r1
	add	r1,16,r1
	store	r1,[r14+-60]
!   if intIsZero (openFilePtr) then goto _runtimeErrorNullPointer
	load	[r14+-356],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1157 = openFilePtr + 16
	load	[r14+-356],r1
	add	r1,16,r1
	store	r1,[r14+-48]
!   Data Move: _temp_1156 = *_temp_1157  (sizeInBytes=4)
	load	[r14+-48],r1
	load	[r1],r1
	store	r1,[r14+-52]
!   _temp_1155 = _temp_1156 + copiedSoFar		(int)
	load	[r14+-52],r1
	load	[r14+-392],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-56]
!   Data Move: *_temp_1154 = _temp_1155  (sizeInBytes=4)
	load	[r14+-56],r1
	load	[r14+-60],r2
	store	r1,[r2]
! RETURN STATEMENT...
	mov	2405,r13		! source line 2405
	mov	"\0\0RE",r10
!   ReturnResult: copiedSoFar  (sizeInBytes=4)
	load	[r14+-392],r1
	store	r1,[r14+8]
	add	r15,412,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_1153:
! END WHILE...
	jmp	_Label_1127
_Label_1129:
! ASSIGNMENT STATEMENT...
	mov	2410,r13		! source line 2410
	mov	"\0\0AS",r10
!   if intIsZero (openFilePtr) then goto _runtimeErrorNullPointer
	load	[r14+-356],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1158 = openFilePtr + 16
	load	[r14+-356],r1
	add	r1,16,r1
	store	r1,[r14+-44]
!   if intIsZero (openFilePtr) then goto _runtimeErrorNullPointer
	load	[r14+-356],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1161 = openFilePtr + 16
	load	[r14+-356],r1
	add	r1,16,r1
	store	r1,[r14+-32]
!   Data Move: _temp_1160 = *_temp_1161  (sizeInBytes=4)
	load	[r14+-32],r1
	load	[r1],r1
	store	r1,[r14+-36]
!   _temp_1159 = _temp_1160 + copiedSoFar		(int)
	load	[r14+-36],r1
	load	[r14+-392],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-40]
!   Data Move: *_temp_1158 = _temp_1159  (sizeInBytes=4)
	load	[r14+-40],r1
	load	[r14+-44],r2
	store	r1,[r2]
! RETURN STATEMENT...
	mov	2411,r13		! source line 2411
	mov	"\0\0RE",r10
!   ReturnResult: copiedSoFar  (sizeInBytes=4)
	load	[r14+-392],r1
	store	r1,[r14+8]
	add	r15,412,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__P_Kernel_Handle_Sys_Read:
	.word	_sourceFileName
	.word	_Label_1162
	.word	12		! total size of parameters
	.word	408		! frame size = 408
	.word	_Label_1163
	.word	8
	.word	4
	.word	_Label_1164
	.word	12
	.word	4
	.word	_Label_1165
	.word	16
	.word	4
	.word	_Label_1166
	.word	-32
	.word	4
	.word	_Label_1167
	.word	-36
	.word	4
	.word	_Label_1168
	.word	-40
	.word	4
	.word	_Label_1169
	.word	-44
	.word	4
	.word	_Label_1170
	.word	-48
	.word	4
	.word	_Label_1171
	.word	-52
	.word	4
	.word	_Label_1172
	.word	-56
	.word	4
	.word	_Label_1173
	.word	-60
	.word	4
	.word	_Label_1174
	.word	-64
	.word	4
	.word	_Label_1175
	.word	-68
	.word	4
	.word	_Label_1176
	.word	-72
	.word	4
	.word	_Label_1177
	.word	-76
	.word	4
	.word	_Label_1178
	.word	-80
	.word	4
	.word	_Label_1179
	.word	-84
	.word	4
	.word	_Label_1180
	.word	-88
	.word	4
	.word	_Label_1181
	.word	-92
	.word	4
	.word	_Label_1182
	.word	-96
	.word	4
	.word	_Label_1183
	.word	-100
	.word	4
	.word	_Label_1184
	.word	-104
	.word	4
	.word	_Label_1185
	.word	-108
	.word	4
	.word	_Label_1186
	.word	-112
	.word	4
	.word	_Label_1187
	.word	-116
	.word	4
	.word	_Label_1188
	.word	-120
	.word	4
	.word	_Label_1189
	.word	-124
	.word	4
	.word	_Label_1190
	.word	-128
	.word	4
	.word	_Label_1191
	.word	-9
	.word	1
	.word	_Label_1192
	.word	-132
	.word	4
	.word	_Label_1193
	.word	-136
	.word	4
	.word	_Label_1194
	.word	-140
	.word	4
	.word	_Label_1195
	.word	-10
	.word	1
	.word	_Label_1196
	.word	-11
	.word	1
	.word	_Label_1197
	.word	-144
	.word	4
	.word	_Label_1198
	.word	-148
	.word	4
	.word	_Label_1199
	.word	-152
	.word	4
	.word	_Label_1200
	.word	-12
	.word	1
	.word	_Label_1201
	.word	-156
	.word	4
	.word	_Label_1202
	.word	-160
	.word	4
	.word	_Label_1203
	.word	-164
	.word	4
	.word	_Label_1204
	.word	-168
	.word	4
	.word	_Label_1205
	.word	-172
	.word	4
	.word	_Label_1206
	.word	-176
	.word	4
	.word	_Label_1207
	.word	-180
	.word	4
	.word	_Label_1208
	.word	-184
	.word	4
	.word	_Label_1209
	.word	-188
	.word	4
	.word	_Label_1210
	.word	-192
	.word	4
	.word	_Label_1211
	.word	-196
	.word	4
	.word	_Label_1212
	.word	-200
	.word	4
	.word	_Label_1213
	.word	-13
	.word	1
	.word	_Label_1214
	.word	-204
	.word	4
	.word	_Label_1215
	.word	-208
	.word	4
	.word	_Label_1216
	.word	-212
	.word	4
	.word	_Label_1217
	.word	-14
	.word	1
	.word	_Label_1218
	.word	-15
	.word	1
	.word	_Label_1219
	.word	-216
	.word	4
	.word	_Label_1220
	.word	-220
	.word	4
	.word	_Label_1221
	.word	-224
	.word	4
	.word	_Label_1222
	.word	-16
	.word	1
	.word	_Label_1223
	.word	-228
	.word	4
	.word	_Label_1224
	.word	-232
	.word	4
	.word	_Label_1225
	.word	-236
	.word	4
	.word	_Label_1226
	.word	-240
	.word	4
	.word	_Label_1227
	.word	-244
	.word	4
	.word	_Label_1228
	.word	-248
	.word	4
	.word	_Label_1229
	.word	-17
	.word	1
	.word	_Label_1230
	.word	-252
	.word	4
	.word	_Label_1231
	.word	-18
	.word	1
	.word	_Label_1232
	.word	-19
	.word	1
	.word	_Label_1233
	.word	-256
	.word	4
	.word	_Label_1234
	.word	-260
	.word	4
	.word	_Label_1235
	.word	-264
	.word	4
	.word	_Label_1236
	.word	-268
	.word	4
	.word	_Label_1237
	.word	-272
	.word	4
	.word	_Label_1238
	.word	-276
	.word	4
	.word	_Label_1239
	.word	-280
	.word	4
	.word	_Label_1240
	.word	-284
	.word	4
	.word	_Label_1241
	.word	-20
	.word	1
	.word	_Label_1242
	.word	-288
	.word	4
	.word	_Label_1243
	.word	-292
	.word	4
	.word	_Label_1244
	.word	-296
	.word	4
	.word	_Label_1245
	.word	-21
	.word	1
	.word	_Label_1246
	.word	-22
	.word	1
	.word	_Label_1247
	.word	-300
	.word	4
	.word	_Label_1248
	.word	-304
	.word	4
	.word	_Label_1249
	.word	-308
	.word	4
	.word	_Label_1250
	.word	-23
	.word	1
	.word	_Label_1251
	.word	-312
	.word	4
	.word	_Label_1252
	.word	-316
	.word	4
	.word	_Label_1253
	.word	-320
	.word	4
	.word	_Label_1254
	.word	-324
	.word	4
	.word	_Label_1255
	.word	-328
	.word	4
	.word	_Label_1256
	.word	-332
	.word	4
	.word	_Label_1257
	.word	-336
	.word	4
	.word	_Label_1258
	.word	-340
	.word	4
	.word	_Label_1259
	.word	-344
	.word	4
	.word	_Label_1260
	.word	-348
	.word	4
	.word	_Label_1261
	.word	-352
	.word	4
	.word	_Label_1262
	.word	-356
	.word	4
	.word	_Label_1263
	.word	-360
	.word	4
	.word	_Label_1264
	.word	-364
	.word	4
	.word	_Label_1265
	.word	-368
	.word	4
	.word	_Label_1266
	.word	-372
	.word	4
	.word	_Label_1267
	.word	-376
	.word	4
	.word	_Label_1268
	.word	-380
	.word	4
	.word	_Label_1269
	.word	-384
	.word	4
	.word	_Label_1270
	.word	-388
	.word	4
	.word	_Label_1271
	.word	-392
	.word	4
	.word	_Label_1272
	.word	-396
	.word	4
	.word	_Label_1273
	.word	-24
	.word	1
	.word	_Label_1274
	.word	-25
	.word	1
	.word	0
_Label_1162:
	.ascii	"Handle_Sys_Read\0"
	.align
_Label_1163:
	.byte	'I'
	.ascii	"fileDesc\0"
	.align
_Label_1164:
	.byte	'P'
	.ascii	"buffer\0"
	.align
_Label_1165:
	.byte	'I'
	.ascii	"sizeInBytes\0"
	.align
_Label_1166:
	.byte	'?'
	.ascii	"_temp_1161\0"
	.align
_Label_1167:
	.byte	'?'
	.ascii	"_temp_1160\0"
	.align
_Label_1168:
	.byte	'?'
	.ascii	"_temp_1159\0"
	.align
_Label_1169:
	.byte	'?'
	.ascii	"_temp_1158\0"
	.align
_Label_1170:
	.byte	'?'
	.ascii	"_temp_1157\0"
	.align
_Label_1171:
	.byte	'?'
	.ascii	"_temp_1156\0"
	.align
_Label_1172:
	.byte	'?'
	.ascii	"_temp_1155\0"
	.align
_Label_1173:
	.byte	'?'
	.ascii	"_temp_1154\0"
	.align
_Label_1174:
	.byte	'?'
	.ascii	"_temp_1151\0"
	.align
_Label_1175:
	.byte	'?'
	.ascii	"_temp_1150\0"
	.align
_Label_1176:
	.byte	'?'
	.ascii	"_temp_1149\0"
	.align
_Label_1177:
	.byte	'?'
	.ascii	"_temp_1148\0"
	.align
_Label_1178:
	.byte	'?'
	.ascii	"_temp_1147\0"
	.align
_Label_1179:
	.byte	'?'
	.ascii	"_temp_1146\0"
	.align
_Label_1180:
	.byte	'?'
	.ascii	"_temp_1145\0"
	.align
_Label_1181:
	.byte	'?'
	.ascii	"_temp_1144\0"
	.align
_Label_1182:
	.byte	'?'
	.ascii	"_temp_1143\0"
	.align
_Label_1183:
	.byte	'?'
	.ascii	"_temp_1142\0"
	.align
_Label_1184:
	.byte	'?'
	.ascii	"_temp_1141\0"
	.align
_Label_1185:
	.byte	'?'
	.ascii	"_temp_1138\0"
	.align
_Label_1186:
	.byte	'?'
	.ascii	"_temp_1135\0"
	.align
_Label_1187:
	.byte	'?'
	.ascii	"_temp_1132\0"
	.align
_Label_1188:
	.byte	'?'
	.ascii	"_temp_1131\0"
	.align
_Label_1189:
	.byte	'?'
	.ascii	"_temp_1130\0"
	.align
_Label_1190:
	.byte	'?'
	.ascii	"_temp_1126\0"
	.align
_Label_1191:
	.byte	'C'
	.ascii	"_temp_1123\0"
	.align
_Label_1192:
	.byte	'?'
	.ascii	"_temp_1122\0"
	.align
_Label_1193:
	.byte	'?'
	.ascii	"_temp_1121\0"
	.align
_Label_1194:
	.byte	'?'
	.ascii	"_temp_1120\0"
	.align
_Label_1195:
	.byte	'C'
	.ascii	"_temp_1119\0"
	.align
_Label_1196:
	.byte	'C'
	.ascii	"_temp_1118\0"
	.align
_Label_1197:
	.byte	'?'
	.ascii	"_temp_1117\0"
	.align
_Label_1198:
	.byte	'?'
	.ascii	"_temp_1116\0"
	.align
_Label_1199:
	.byte	'?'
	.ascii	"_temp_1115\0"
	.align
_Label_1200:
	.byte	'C'
	.ascii	"_temp_1114\0"
	.align
_Label_1201:
	.byte	'?'
	.ascii	"_temp_1106\0"
	.align
_Label_1202:
	.byte	'?'
	.ascii	"_temp_1103\0"
	.align
_Label_1203:
	.byte	'?'
	.ascii	"_temp_1100\0"
	.align
_Label_1204:
	.byte	'?'
	.ascii	"_temp_1099\0"
	.align
_Label_1205:
	.byte	'?'
	.ascii	"_temp_1098\0"
	.align
_Label_1206:
	.byte	'?'
	.ascii	"_temp_1094\0"
	.align
_Label_1207:
	.byte	'?'
	.ascii	"_temp_1093\0"
	.align
_Label_1208:
	.byte	'?'
	.ascii	"_temp_1092\0"
	.align
_Label_1209:
	.byte	'?'
	.ascii	"_temp_1088\0"
	.align
_Label_1210:
	.byte	'?'
	.ascii	"_temp_1087\0"
	.align
_Label_1211:
	.byte	'?'
	.ascii	"_temp_1086\0"
	.align
_Label_1212:
	.byte	'?'
	.ascii	"_temp_1085\0"
	.align
_Label_1213:
	.byte	'C'
	.ascii	"_temp_1084\0"
	.align
_Label_1214:
	.byte	'?'
	.ascii	"_temp_1083\0"
	.align
_Label_1215:
	.byte	'?'
	.ascii	"_temp_1082\0"
	.align
_Label_1216:
	.byte	'?'
	.ascii	"_temp_1081\0"
	.align
_Label_1217:
	.byte	'C'
	.ascii	"_temp_1080\0"
	.align
_Label_1218:
	.byte	'C'
	.ascii	"_temp_1079\0"
	.align
_Label_1219:
	.byte	'?'
	.ascii	"_temp_1078\0"
	.align
_Label_1220:
	.byte	'?'
	.ascii	"_temp_1077\0"
	.align
_Label_1221:
	.byte	'?'
	.ascii	"_temp_1076\0"
	.align
_Label_1222:
	.byte	'C'
	.ascii	"_temp_1075\0"
	.align
_Label_1223:
	.byte	'?'
	.ascii	"_temp_1067\0"
	.align
_Label_1224:
	.byte	'?'
	.ascii	"_temp_1066\0"
	.align
_Label_1225:
	.byte	'?'
	.ascii	"_temp_1065\0"
	.align
_Label_1226:
	.byte	'?'
	.ascii	"_temp_1064\0"
	.align
_Label_1227:
	.byte	'?'
	.ascii	"_temp_1063\0"
	.align
_Label_1228:
	.byte	'?'
	.ascii	"_temp_1062\0"
	.align
_Label_1229:
	.byte	'C'
	.ascii	"_temp_1061\0"
	.align
_Label_1230:
	.byte	'?'
	.ascii	"_temp_1058\0"
	.align
_Label_1231:
	.byte	'C'
	.ascii	"_temp_1057\0"
	.align
_Label_1232:
	.byte	'C'
	.ascii	"_temp_1056\0"
	.align
_Label_1233:
	.byte	'?'
	.ascii	"_temp_1049\0"
	.align
_Label_1234:
	.byte	'?'
	.ascii	"_temp_1048\0"
	.align
_Label_1235:
	.byte	'?'
	.ascii	"_temp_1047\0"
	.align
_Label_1236:
	.byte	'?'
	.ascii	"_temp_1046\0"
	.align
_Label_1237:
	.byte	'?'
	.ascii	"_temp_1045\0"
	.align
_Label_1238:
	.byte	'?'
	.ascii	"_temp_1044\0"
	.align
_Label_1239:
	.byte	'?'
	.ascii	"_temp_1043\0"
	.align
_Label_1240:
	.byte	'?'
	.ascii	"_temp_1042\0"
	.align
_Label_1241:
	.byte	'C'
	.ascii	"_temp_1041\0"
	.align
_Label_1242:
	.byte	'?'
	.ascii	"_temp_1040\0"
	.align
_Label_1243:
	.byte	'?'
	.ascii	"_temp_1039\0"
	.align
_Label_1244:
	.byte	'?'
	.ascii	"_temp_1038\0"
	.align
_Label_1245:
	.byte	'C'
	.ascii	"_temp_1037\0"
	.align
_Label_1246:
	.byte	'C'
	.ascii	"_temp_1036\0"
	.align
_Label_1247:
	.byte	'?'
	.ascii	"_temp_1035\0"
	.align
_Label_1248:
	.byte	'?'
	.ascii	"_temp_1034\0"
	.align
_Label_1249:
	.byte	'?'
	.ascii	"_temp_1033\0"
	.align
_Label_1250:
	.byte	'C'
	.ascii	"_temp_1032\0"
	.align
_Label_1251:
	.byte	'?'
	.ascii	"_temp_1026\0"
	.align
_Label_1252:
	.byte	'?'
	.ascii	"_temp_1025\0"
	.align
_Label_1253:
	.byte	'?'
	.ascii	"_temp_1021\0"
	.align
_Label_1254:
	.byte	'?'
	.ascii	"_temp_1020\0"
	.align
_Label_1255:
	.byte	'?'
	.ascii	"_temp_1019\0"
	.align
_Label_1256:
	.byte	'?'
	.ascii	"_temp_1018\0"
	.align
_Label_1257:
	.byte	'?'
	.ascii	"_temp_1017\0"
	.align
_Label_1258:
	.byte	'?'
	.ascii	"_temp_1010\0"
	.align
_Label_1259:
	.byte	'?'
	.ascii	"_temp_1009\0"
	.align
_Label_1260:
	.byte	'?'
	.ascii	"_temp_1008\0"
	.align
_Label_1261:
	.byte	'?'
	.ascii	"_temp_1007\0"
	.align
_Label_1262:
	.byte	'P'
	.ascii	"openFilePtr\0"
	.align
_Label_1263:
	.byte	'I'
	.ascii	"virtAddr\0"
	.align
_Label_1264:
	.byte	'I'
	.ascii	"virtPage\0"
	.align
_Label_1265:
	.byte	'I'
	.ascii	"offset\0"
	.align
_Label_1266:
	.byte	'I'
	.ascii	"chunkSize\0"
	.align
_Label_1267:
	.byte	'I'
	.ascii	"thisChunkSize\0"
	.align
_Label_1268:
	.byte	'I'
	.ascii	"currentPos\0"
	.align
_Label_1269:
	.byte	'I'
	.ascii	"nextPosInFile\0"
	.align
_Label_1270:
	.byte	'I'
	.ascii	"sizeOfFileInBytes\0"
	.align
_Label_1271:
	.byte	'I'
	.ascii	"copiedSoFar\0"
	.align
_Label_1272:
	.byte	'I'
	.ascii	"destAddr\0"
	.align
_Label_1273:
	.byte	'B'
	.ascii	"synchReadStatus\0"
	.align
_Label_1274:
	.byte	'C'
	.ascii	"incomingChar\0"
	.align
! 
! ===============  FUNCTION Handle_Sys_Write  ===============
! 
_P_Kernel_Handle_Sys_Write:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__P_Kernel_Handle_Sys_Write,r1
	push	r1
	mov	52,r1
_Label_4016:
	push	r0
	sub	r1,1,r1
	bne	_Label_4016
	mov	2417,r13		! source line 2417
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! IF STATEMENT...
	mov	2435,r13		! source line 2435
	mov	"\0\0IF",r10
!   if fileDesc < 10 then goto _Label_1277		(int)
	load	[r14+8],r1
	mov	10,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bl	_Label_1277
	jmp	_Label_1275
_Label_1277:
!   if fileDesc >= 0 then goto _Label_1276		(int)
	load	[r14+8],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_1276
!	jmp	_Label_1275
_Label_1275:
! THEN...
	mov	2436,r13		! source line 2436
	mov	"\0\0TN",r10
! RETURN STATEMENT...
	mov	2436,r13		! source line 2436
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,212,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_1276:
! ASSIGNMENT STATEMENT...
	mov	2440,r13		! source line 2440
	mov	"\0\0AS",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1279 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-148]
!   Data Move: _temp_1278 = *_temp_1279  (sizeInBytes=4)
	load	[r14+-148],r1
	load	[r1],r1
	store	r1,[r14+-152]
!   if intIsZero (_temp_1278) then goto _runtimeErrorNullPointer
	load	[r14+-152],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1280 = _temp_1278 + 124
	load	[r14+-152],r1
	add	r1,124,r1
	store	r1,[r14+-144]
!   Move address of _temp_1280 [fileDesc ] into _temp_1281
!     make sure index expr is >= 0
	load	[r14+8],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-144],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	4,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-140]
!   Data Move: openFilePtr = *_temp_1281  (sizeInBytes=4)
	load	[r14+-140],r1
	load	[r1],r1
	store	r1,[r14+-156]
! IF STATEMENT...
	mov	2442,r13		! source line 2442
	mov	"\0\0IF",r10
!   if intIsZero (openFilePtr) then goto _Label_1282
	load	[r14+-156],r1
	cmp	r1,r0
	be	_Label_1282
	jmp	_Label_1283
_Label_1282:
! THEN...
	mov	2443,r13		! source line 2443
	mov	"\0\0TN",r10
! RETURN STATEMENT...
	mov	2443,r13		! source line 2443
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,212,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_1283:
! IF STATEMENT...
	mov	2447,r13		! source line 2447
	mov	"\0\0IF",r10
!   if sizeInBytes >= 0 then goto _Label_1285		(int)
	load	[r14+16],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_1285
!	jmp	_Label_1284
_Label_1284:
! THEN...
	mov	2448,r13		! source line 2448
	mov	"\0\0TN",r10
! RETURN STATEMENT...
	mov	2448,r13		! source line 2448
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,212,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_1285:
! ASSIGNMENT STATEMENT...
	mov	2514,r13		! source line 2514
	mov	"\0\0AS",r10
!   virtAddr = buffer		(4 bytes)
	load	[r14+12],r1
	store	r1,[r14+-160]
! ASSIGNMENT STATEMENT...
	mov	2515,r13		! source line 2515
	mov	"\0\0AS",r10
!   virtPage = virtAddr div 8192		(int)
	load	[r14+-160],r1
	mov	8192,r2
	cmp	r2,0
	be	_runtimeErrorZeroDivide
	div	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-164]
! ASSIGNMENT STATEMENT...
	mov	2516,r13		! source line 2516
	mov	"\0\0AS",r10
!   offset = virtAddr rem 8192		(int)
	load	[r14+-160],r1
	mov	8192,r2
	cmp	r2,0
	be	_runtimeErrorZeroDivide
	rem	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-168]
! ASSIGNMENT STATEMENT...
	mov	2517,r13		! source line 2517
	mov	"\0\0AS",r10
!   copiedSoFar = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-192]
! ASSIGNMENT STATEMENT...
	mov	2518,r13		! source line 2518
	mov	"\0\0AS",r10
!   chunkSize = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-172]
! ASSIGNMENT STATEMENT...
	mov	2521,r13		! source line 2521
	mov	"\0\0AS",r10
!   if intIsZero (openFilePtr) then goto _runtimeErrorNullPointer
	load	[r14+-156],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1286 = openFilePtr + 16
	load	[r14+-156],r1
	add	r1,16,r1
	store	r1,[r14+-136]
!   Data Move: currentPos = *_temp_1286  (sizeInBytes=4)
	load	[r14+-136],r1
	load	[r1],r1
	store	r1,[r14+-180]
! ASSIGNMENT STATEMENT...
	mov	2522,r13		! source line 2522
	mov	"\0\0AS",r10
!   nextPosInFile = currentPos		(4 bytes)
	load	[r14+-180],r1
	store	r1,[r14+-184]
! WHILE STATEMENT...
	mov	2527,r13		! source line 2527
	mov	"\0\0WH",r10
_Label_1287:
!	jmp	_Label_1288
_Label_1288:
	mov	2527,r13		! source line 2527
	mov	"\0\0WB",r10
! ASSIGNMENT STATEMENT...
	mov	2530,r13		! source line 2530
	mov	"\0\0AS",r10
!   thisChunkSize = 8192 - offset		(int)
	mov	8192,r1
	load	[r14+-168],r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-176]
! ASSIGNMENT STATEMENT...
	mov	2531,r13		! source line 2531
	mov	"\0\0AS",r10
!   if intIsZero (openFilePtr) then goto _runtimeErrorNullPointer
	load	[r14+-156],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1291 = openFilePtr + 20
	load	[r14+-156],r1
	add	r1,20,r1
	store	r1,[r14+-128]
!   Data Move: _temp_1290 = *_temp_1291  (sizeInBytes=4)
	load	[r14+-128],r1
	load	[r1],r1
	store	r1,[r14+-132]
!   if intIsZero (_temp_1290) then goto _runtimeErrorNullPointer
	load	[r14+-132],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1292 = _temp_1290 + 24
	load	[r14+-132],r1
	add	r1,24,r1
	store	r1,[r14+-124]
!   Data Move: sizeOfFileInBytes = *_temp_1292  (sizeInBytes=4)
	load	[r14+-124],r1
	load	[r1],r1
	store	r1,[r14+-188]
! IF STATEMENT...
	mov	2533,r13		! source line 2533
	mov	"\0\0IF",r10
!   _temp_1295 = nextPosInFile + thisChunkSize		(int)
	load	[r14+-184],r1
	load	[r14+-176],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-120]
!   if _temp_1295 <= sizeOfFileInBytes then goto _Label_1294		(int)
	load	[r14+-120],r1
	load	[r14+-188],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	ble	_Label_1294
!	jmp	_Label_1293
_Label_1293:
! THEN...
	mov	2534,r13		! source line 2534
	mov	"\0\0TN",r10
! ASSIGNMENT STATEMENT...
	mov	2534,r13		! source line 2534
	mov	"\0\0AS",r10
!   thisChunkSize = sizeOfFileInBytes - nextPosInFile		(int)
	load	[r14+-188],r1
	load	[r14+-184],r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-176]
! END IF...
_Label_1294:
! IF STATEMENT...
	mov	2537,r13		! source line 2537
	mov	"\0\0IF",r10
!   _temp_1298 = copiedSoFar + thisChunkSize		(int)
	load	[r14+-192],r1
	load	[r14+-176],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-116]
!   if _temp_1298 <= sizeInBytes then goto _Label_1297		(int)
	load	[r14+-116],r1
	load	[r14+16],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	ble	_Label_1297
!	jmp	_Label_1296
_Label_1296:
! THEN...
	mov	2538,r13		! source line 2538
	mov	"\0\0TN",r10
! ASSIGNMENT STATEMENT...
	mov	2538,r13		! source line 2538
	mov	"\0\0AS",r10
!   thisChunkSize = sizeInBytes - copiedSoFar		(int)
	load	[r14+16],r1
	load	[r14+-192],r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-176]
! END IF...
_Label_1297:
! IF STATEMENT...
	mov	2542,r13		! source line 2542
	mov	"\0\0IF",r10
!   if thisChunkSize > 0 then goto _Label_1300		(int)
	load	[r14+-176],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_1300
!	jmp	_Label_1299
_Label_1299:
! THEN...
	mov	2543,r13		! source line 2543
	mov	"\0\0TN",r10
! BREAK STATEMENT...
	mov	2543,r13		! source line 2543
	mov	"\0\0BR",r10
	jmp	_Label_1289
! END IF...
_Label_1300:
! IF STATEMENT...
	mov	2547,r13		! source line 2547
	mov	"\0\0IF",r10
!   if virtPage >= 0 then goto _Label_1303		(int)
	load	[r14+-164],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_1303
!	jmp	_Label_1304
_Label_1304:
!   if virtPage < 20 then goto _Label_1303		(int)
	load	[r14+-164],r1
	mov	20,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bl	_Label_1303
	jmp	_Label_1301
_Label_1303:
	mov	2547,r13		! source line 2547
	mov	"\0\0SE",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1307 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-108]
!   Data Move: _temp_1306 = *_temp_1307  (sizeInBytes=4)
	load	[r14+-108],r1
	load	[r1],r1
	store	r1,[r14+-112]
!   if intIsZero (_temp_1306) then goto _runtimeErrorNullPointer
	load	[r14+-112],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1308 = _temp_1306 + 32
	load	[r14+-112],r1
	add	r1,32,r1
	store	r1,[r14+-104]
!   Prepare Argument: offset=12  value=virtPage  sizeInBytes=4
	load	[r14+-164],r1
	store	r1,[r15+4]
!   Send message IsValid
	load	[r14+-104],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,36,r2
	call	r2
!   Retrieve Result: targetName=_temp_1305  sizeInBytes=1
	loadb	[r15],r1
	storeb	r1,[r14+-10]
!   _temp_1309 = _temp_1305 XOR 0		(bool)
	loadb	[r14+-10],r1
	mov	0,r2
	xor	r1,r2,r1
	storeb	r1,[r14+-9]
!   if _temp_1309 then goto _Label_1302 else goto _Label_1301
	loadb	[r14+-9],r1
	cmp	r1,0
	be	_Label_1301
	jmp	_Label_1302
_Label_1301:
! THEN...
	mov	2548,r13		! source line 2548
	mov	"\0\0TN",r10
! RETURN STATEMENT...
	mov	2548,r13		! source line 2548
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,212,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_1302:
! ASSIGNMENT STATEMENT...
	mov	2552,r13		! source line 2552
	mov	"\0\0AS",r10
!   nextPosInFile = nextPosInFile + thisChunkSize		(int)
	load	[r14+-184],r1
	load	[r14+-176],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-184]
! ASSIGNMENT STATEMENT...
	mov	2553,r13		! source line 2553
	mov	"\0\0AS",r10
!   copiedSoFar = copiedSoFar + thisChunkSize		(int)
	load	[r14+-192],r1
	load	[r14+-176],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-192]
! ASSIGNMENT STATEMENT...
	mov	2554,r13		! source line 2554
	mov	"\0\0AS",r10
!   virtPage = virtPage + 1		(int)
	load	[r14+-164],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-164]
! ASSIGNMENT STATEMENT...
	mov	2555,r13		! source line 2555
	mov	"\0\0AS",r10
!   offset = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-168]
! IF STATEMENT...
	mov	2558,r13		! source line 2558
	mov	"\0\0IF",r10
!   if copiedSoFar != sizeInBytes then goto _Label_1311		(int)
	load	[r14+-192],r1
	load	[r14+16],r2
	cmp	r1,r2
	bne	_Label_1311
!	jmp	_Label_1310
_Label_1310:
! THEN...
	mov	2559,r13		! source line 2559
	mov	"\0\0TN",r10
! BREAK STATEMENT...
	mov	2559,r13		! source line 2559
	mov	"\0\0BR",r10
	jmp	_Label_1289
! END IF...
_Label_1311:
! END WHILE...
	jmp	_Label_1287
_Label_1289:
! ASSIGNMENT STATEMENT...
	mov	2570,r13		! source line 2570
	mov	"\0\0AS",r10
!   virtAddr = buffer		(4 bytes)
	load	[r14+12],r1
	store	r1,[r14+-160]
! ASSIGNMENT STATEMENT...
	mov	2571,r13		! source line 2571
	mov	"\0\0AS",r10
!   virtPage = virtAddr div 8192		(int)
	load	[r14+-160],r1
	mov	8192,r2
	cmp	r2,0
	be	_runtimeErrorZeroDivide
	div	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-164]
! ASSIGNMENT STATEMENT...
	mov	2572,r13		! source line 2572
	mov	"\0\0AS",r10
!   offset = virtAddr rem 8192		(int)
	load	[r14+-160],r1
	mov	8192,r2
	cmp	r2,0
	be	_runtimeErrorZeroDivide
	rem	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-168]
! ASSIGNMENT STATEMENT...
	mov	2573,r13		! source line 2573
	mov	"\0\0AS",r10
!   copiedSoFar = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-192]
! ASSIGNMENT STATEMENT...
	mov	2574,r13		! source line 2574
	mov	"\0\0AS",r10
!   chunkSize = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-172]
! ASSIGNMENT STATEMENT...
	mov	2577,r13		! source line 2577
	mov	"\0\0AS",r10
!   if intIsZero (openFilePtr) then goto _runtimeErrorNullPointer
	load	[r14+-156],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1312 = openFilePtr + 16
	load	[r14+-156],r1
	add	r1,16,r1
	store	r1,[r14+-100]
!   Data Move: currentPos = *_temp_1312  (sizeInBytes=4)
	load	[r14+-100],r1
	load	[r1],r1
	store	r1,[r14+-180]
! ASSIGNMENT STATEMENT...
	mov	2578,r13		! source line 2578
	mov	"\0\0AS",r10
!   nextPosInFile = currentPos		(4 bytes)
	load	[r14+-180],r1
	store	r1,[r14+-184]
! WHILE STATEMENT...
	mov	2580,r13		! source line 2580
	mov	"\0\0WH",r10
_Label_1313:
!	jmp	_Label_1314
_Label_1314:
	mov	2580,r13		! source line 2580
	mov	"\0\0WB",r10
! ASSIGNMENT STATEMENT...
	mov	2583,r13		! source line 2583
	mov	"\0\0AS",r10
!   thisChunkSize = 8192 - offset		(int)
	mov	8192,r1
	load	[r14+-168],r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-176]
! ASSIGNMENT STATEMENT...
	mov	2584,r13		! source line 2584
	mov	"\0\0AS",r10
!   if intIsZero (openFilePtr) then goto _runtimeErrorNullPointer
	load	[r14+-156],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1317 = openFilePtr + 20
	load	[r14+-156],r1
	add	r1,20,r1
	store	r1,[r14+-92]
!   Data Move: _temp_1316 = *_temp_1317  (sizeInBytes=4)
	load	[r14+-92],r1
	load	[r1],r1
	store	r1,[r14+-96]
!   if intIsZero (_temp_1316) then goto _runtimeErrorNullPointer
	load	[r14+-96],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1318 = _temp_1316 + 24
	load	[r14+-96],r1
	add	r1,24,r1
	store	r1,[r14+-88]
!   Data Move: sizeOfFileInBytes = *_temp_1318  (sizeInBytes=4)
	load	[r14+-88],r1
	load	[r1],r1
	store	r1,[r14+-188]
! IF STATEMENT...
	mov	2586,r13		! source line 2586
	mov	"\0\0IF",r10
!   _temp_1321 = nextPosInFile + thisChunkSize		(int)
	load	[r14+-184],r1
	load	[r14+-176],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-84]
!   if _temp_1321 <= sizeOfFileInBytes then goto _Label_1320		(int)
	load	[r14+-84],r1
	load	[r14+-188],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	ble	_Label_1320
!	jmp	_Label_1319
_Label_1319:
! THEN...
	mov	2587,r13		! source line 2587
	mov	"\0\0TN",r10
! ASSIGNMENT STATEMENT...
	mov	2587,r13		! source line 2587
	mov	"\0\0AS",r10
!   thisChunkSize = sizeOfFileInBytes - nextPosInFile		(int)
	load	[r14+-188],r1
	load	[r14+-184],r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-176]
! END IF...
_Label_1320:
! IF STATEMENT...
	mov	2590,r13		! source line 2590
	mov	"\0\0IF",r10
!   _temp_1324 = copiedSoFar + thisChunkSize		(int)
	load	[r14+-192],r1
	load	[r14+-176],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-80]
!   if _temp_1324 <= sizeInBytes then goto _Label_1323		(int)
	load	[r14+-80],r1
	load	[r14+16],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	ble	_Label_1323
!	jmp	_Label_1322
_Label_1322:
! THEN...
	mov	2591,r13		! source line 2591
	mov	"\0\0TN",r10
! ASSIGNMENT STATEMENT...
	mov	2591,r13		! source line 2591
	mov	"\0\0AS",r10
!   thisChunkSize = sizeInBytes - copiedSoFar		(int)
	load	[r14+16],r1
	load	[r14+-192],r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-176]
! END IF...
_Label_1323:
! IF STATEMENT...
	mov	2595,r13		! source line 2595
	mov	"\0\0IF",r10
!   if thisChunkSize > 0 then goto _Label_1326		(int)
	load	[r14+-176],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_1326
!	jmp	_Label_1325
_Label_1325:
! THEN...
	mov	2596,r13		! source line 2596
	mov	"\0\0TN",r10
! BREAK STATEMENT...
	mov	2596,r13		! source line 2596
	mov	"\0\0BR",r10
	jmp	_Label_1315
! END IF...
_Label_1326:
! SEND STATEMENT...
	mov	2600,r13		! source line 2600
	mov	"\0\0SE",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1328 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-72]
!   Data Move: _temp_1327 = *_temp_1328  (sizeInBytes=4)
	load	[r14+-72],r1
	load	[r1],r1
	store	r1,[r14+-76]
!   if intIsZero (_temp_1327) then goto _runtimeErrorNullPointer
	load	[r14+-76],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1329 = _temp_1327 + 32
	load	[r14+-76],r1
	add	r1,32,r1
	store	r1,[r14+-68]
!   Prepare Argument: offset=12  value=virtPage  sizeInBytes=4
	load	[r14+-164],r1
	store	r1,[r15+4]
!   Send message SetReferenced
	load	[r14+-68],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,44,r2
	call	r2
! ASSIGNMENT STATEMENT...
	mov	2601,r13		! source line 2601
	mov	"\0\0AS",r10
	mov	2601,r13		! source line 2601
	mov	"\0\0SE",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1332 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-56]
!   Data Move: _temp_1331 = *_temp_1332  (sizeInBytes=4)
	load	[r14+-56],r1
	load	[r1],r1
	store	r1,[r14+-60]
!   if intIsZero (_temp_1331) then goto _runtimeErrorNullPointer
	load	[r14+-60],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1333 = _temp_1331 + 32
	load	[r14+-60],r1
	add	r1,32,r1
	store	r1,[r14+-52]
!   Prepare Argument: offset=12  value=virtPage  sizeInBytes=4
	load	[r14+-164],r1
	store	r1,[r15+4]
!   Send message ExtractFrameAddr
	load	[r14+-52],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
!   Retrieve Result: targetName=_temp_1330  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-64]
!   destAddr = _temp_1330 + offset		(int)
	load	[r14+-64],r1
	load	[r14+-168],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-196]
! ASSIGNMENT STATEMENT...
	mov	2602,r13		! source line 2602
	mov	"\0\0AS",r10
	mov	2602,r13		! source line 2602
	mov	"\0\0SE",r10
!   _temp_1334 = &_P_Kernel_fileManager
	set	_P_Kernel_fileManager,r1
	store	r1,[r14+-48]
!   Prepare Argument: offset=12  value=openFilePtr  sizeInBytes=4
	load	[r14+-156],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=destAddr  sizeInBytes=4
	load	[r14+-196],r1
	store	r1,[r15+8]
!   Prepare Argument: offset=20  value=nextPosInFile  sizeInBytes=4
	load	[r14+-184],r1
	store	r1,[r15+12]
!   Prepare Argument: offset=24  value=thisChunkSize  sizeInBytes=4
	load	[r14+-176],r1
	store	r1,[r15+16]
!   Send message SynchWrite
	load	[r14+-48],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,32,r2
	call	r2
!   Retrieve Result: targetName=SynchWriteStatus  sizeInBytes=1
	loadb	[r15],r1
	storeb	r1,[r14+-11]
! ASSIGNMENT STATEMENT...
	mov	2605,r13		! source line 2605
	mov	"\0\0AS",r10
!   nextPosInFile = nextPosInFile + thisChunkSize		(int)
	load	[r14+-184],r1
	load	[r14+-176],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-184]
! ASSIGNMENT STATEMENT...
	mov	2606,r13		! source line 2606
	mov	"\0\0AS",r10
!   copiedSoFar = copiedSoFar + thisChunkSize		(int)
	load	[r14+-192],r1
	load	[r14+-176],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-192]
! ASSIGNMENT STATEMENT...
	mov	2607,r13		! source line 2607
	mov	"\0\0AS",r10
!   virtPage = virtPage + 1		(int)
	load	[r14+-164],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-164]
! ASSIGNMENT STATEMENT...
	mov	2608,r13		! source line 2608
	mov	"\0\0AS",r10
!   offset = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-168]
! IF STATEMENT...
	mov	2611,r13		! source line 2611
	mov	"\0\0IF",r10
!   if copiedSoFar != sizeInBytes then goto _Label_1336		(int)
	load	[r14+-192],r1
	load	[r14+16],r2
	cmp	r1,r2
	bne	_Label_1336
!	jmp	_Label_1335
_Label_1335:
! THEN...
	mov	2612,r13		! source line 2612
	mov	"\0\0TN",r10
! ASSIGNMENT STATEMENT...
	mov	2612,r13		! source line 2612
	mov	"\0\0AS",r10
!   if intIsZero (openFilePtr) then goto _runtimeErrorNullPointer
	load	[r14+-156],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1337 = openFilePtr + 16
	load	[r14+-156],r1
	add	r1,16,r1
	store	r1,[r14+-44]
!   if intIsZero (openFilePtr) then goto _runtimeErrorNullPointer
	load	[r14+-156],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1340 = openFilePtr + 16
	load	[r14+-156],r1
	add	r1,16,r1
	store	r1,[r14+-32]
!   Data Move: _temp_1339 = *_temp_1340  (sizeInBytes=4)
	load	[r14+-32],r1
	load	[r1],r1
	store	r1,[r14+-36]
!   _temp_1338 = _temp_1339 + copiedSoFar		(int)
	load	[r14+-36],r1
	load	[r14+-192],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-40]
!   Data Move: *_temp_1337 = _temp_1338  (sizeInBytes=4)
	load	[r14+-40],r1
	load	[r14+-44],r2
	store	r1,[r2]
! RETURN STATEMENT...
	mov	2613,r13		! source line 2613
	mov	"\0\0RE",r10
!   ReturnResult: copiedSoFar  (sizeInBytes=4)
	load	[r14+-192],r1
	store	r1,[r14+8]
	add	r15,212,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_1336:
! END WHILE...
	jmp	_Label_1313
_Label_1315:
! ASSIGNMENT STATEMENT...
	mov	2618,r13		! source line 2618
	mov	"\0\0AS",r10
!   if intIsZero (openFilePtr) then goto _runtimeErrorNullPointer
	load	[r14+-156],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1341 = openFilePtr + 16
	load	[r14+-156],r1
	add	r1,16,r1
	store	r1,[r14+-28]
!   if intIsZero (openFilePtr) then goto _runtimeErrorNullPointer
	load	[r14+-156],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1344 = openFilePtr + 16
	load	[r14+-156],r1
	add	r1,16,r1
	store	r1,[r14+-16]
!   Data Move: _temp_1343 = *_temp_1344  (sizeInBytes=4)
	load	[r14+-16],r1
	load	[r1],r1
	store	r1,[r14+-20]
!   _temp_1342 = _temp_1343 + copiedSoFar		(int)
	load	[r14+-20],r1
	load	[r14+-192],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-24]
!   Data Move: *_temp_1341 = _temp_1342  (sizeInBytes=4)
	load	[r14+-24],r1
	load	[r14+-28],r2
	store	r1,[r2]
! RETURN STATEMENT...
	mov	2619,r13		! source line 2619
	mov	"\0\0RE",r10
!   ReturnResult: copiedSoFar  (sizeInBytes=4)
	load	[r14+-192],r1
	store	r1,[r14+8]
	add	r15,212,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__P_Kernel_Handle_Sys_Write:
	.word	_sourceFileName
	.word	_Label_1345
	.word	12		! total size of parameters
	.word	208		! frame size = 208
	.word	_Label_1346
	.word	8
	.word	4
	.word	_Label_1347
	.word	12
	.word	4
	.word	_Label_1348
	.word	16
	.word	4
	.word	_Label_1349
	.word	-16
	.word	4
	.word	_Label_1350
	.word	-20
	.word	4
	.word	_Label_1351
	.word	-24
	.word	4
	.word	_Label_1352
	.word	-28
	.word	4
	.word	_Label_1353
	.word	-32
	.word	4
	.word	_Label_1354
	.word	-36
	.word	4
	.word	_Label_1355
	.word	-40
	.word	4
	.word	_Label_1356
	.word	-44
	.word	4
	.word	_Label_1357
	.word	-48
	.word	4
	.word	_Label_1358
	.word	-52
	.word	4
	.word	_Label_1359
	.word	-56
	.word	4
	.word	_Label_1360
	.word	-60
	.word	4
	.word	_Label_1361
	.word	-64
	.word	4
	.word	_Label_1362
	.word	-68
	.word	4
	.word	_Label_1363
	.word	-72
	.word	4
	.word	_Label_1364
	.word	-76
	.word	4
	.word	_Label_1365
	.word	-80
	.word	4
	.word	_Label_1366
	.word	-84
	.word	4
	.word	_Label_1367
	.word	-88
	.word	4
	.word	_Label_1368
	.word	-92
	.word	4
	.word	_Label_1369
	.word	-96
	.word	4
	.word	_Label_1370
	.word	-100
	.word	4
	.word	_Label_1371
	.word	-9
	.word	1
	.word	_Label_1372
	.word	-104
	.word	4
	.word	_Label_1373
	.word	-108
	.word	4
	.word	_Label_1374
	.word	-112
	.word	4
	.word	_Label_1375
	.word	-10
	.word	1
	.word	_Label_1376
	.word	-116
	.word	4
	.word	_Label_1377
	.word	-120
	.word	4
	.word	_Label_1378
	.word	-124
	.word	4
	.word	_Label_1379
	.word	-128
	.word	4
	.word	_Label_1380
	.word	-132
	.word	4
	.word	_Label_1381
	.word	-136
	.word	4
	.word	_Label_1382
	.word	-140
	.word	4
	.word	_Label_1383
	.word	-144
	.word	4
	.word	_Label_1384
	.word	-148
	.word	4
	.word	_Label_1385
	.word	-152
	.word	4
	.word	_Label_1386
	.word	-156
	.word	4
	.word	_Label_1387
	.word	-160
	.word	4
	.word	_Label_1388
	.word	-164
	.word	4
	.word	_Label_1389
	.word	-168
	.word	4
	.word	_Label_1390
	.word	-172
	.word	4
	.word	_Label_1391
	.word	-176
	.word	4
	.word	_Label_1392
	.word	-180
	.word	4
	.word	_Label_1393
	.word	-184
	.word	4
	.word	_Label_1394
	.word	-188
	.word	4
	.word	_Label_1395
	.word	-192
	.word	4
	.word	_Label_1396
	.word	-196
	.word	4
	.word	_Label_1397
	.word	-11
	.word	1
	.word	0
_Label_1345:
	.ascii	"Handle_Sys_Write\0"
	.align
_Label_1346:
	.byte	'I'
	.ascii	"fileDesc\0"
	.align
_Label_1347:
	.byte	'P'
	.ascii	"buffer\0"
	.align
_Label_1348:
	.byte	'I'
	.ascii	"sizeInBytes\0"
	.align
_Label_1349:
	.byte	'?'
	.ascii	"_temp_1344\0"
	.align
_Label_1350:
	.byte	'?'
	.ascii	"_temp_1343\0"
	.align
_Label_1351:
	.byte	'?'
	.ascii	"_temp_1342\0"
	.align
_Label_1352:
	.byte	'?'
	.ascii	"_temp_1341\0"
	.align
_Label_1353:
	.byte	'?'
	.ascii	"_temp_1340\0"
	.align
_Label_1354:
	.byte	'?'
	.ascii	"_temp_1339\0"
	.align
_Label_1355:
	.byte	'?'
	.ascii	"_temp_1338\0"
	.align
_Label_1356:
	.byte	'?'
	.ascii	"_temp_1337\0"
	.align
_Label_1357:
	.byte	'?'
	.ascii	"_temp_1334\0"
	.align
_Label_1358:
	.byte	'?'
	.ascii	"_temp_1333\0"
	.align
_Label_1359:
	.byte	'?'
	.ascii	"_temp_1332\0"
	.align
_Label_1360:
	.byte	'?'
	.ascii	"_temp_1331\0"
	.align
_Label_1361:
	.byte	'?'
	.ascii	"_temp_1330\0"
	.align
_Label_1362:
	.byte	'?'
	.ascii	"_temp_1329\0"
	.align
_Label_1363:
	.byte	'?'
	.ascii	"_temp_1328\0"
	.align
_Label_1364:
	.byte	'?'
	.ascii	"_temp_1327\0"
	.align
_Label_1365:
	.byte	'?'
	.ascii	"_temp_1324\0"
	.align
_Label_1366:
	.byte	'?'
	.ascii	"_temp_1321\0"
	.align
_Label_1367:
	.byte	'?'
	.ascii	"_temp_1318\0"
	.align
_Label_1368:
	.byte	'?'
	.ascii	"_temp_1317\0"
	.align
_Label_1369:
	.byte	'?'
	.ascii	"_temp_1316\0"
	.align
_Label_1370:
	.byte	'?'
	.ascii	"_temp_1312\0"
	.align
_Label_1371:
	.byte	'C'
	.ascii	"_temp_1309\0"
	.align
_Label_1372:
	.byte	'?'
	.ascii	"_temp_1308\0"
	.align
_Label_1373:
	.byte	'?'
	.ascii	"_temp_1307\0"
	.align
_Label_1374:
	.byte	'?'
	.ascii	"_temp_1306\0"
	.align
_Label_1375:
	.byte	'C'
	.ascii	"_temp_1305\0"
	.align
_Label_1376:
	.byte	'?'
	.ascii	"_temp_1298\0"
	.align
_Label_1377:
	.byte	'?'
	.ascii	"_temp_1295\0"
	.align
_Label_1378:
	.byte	'?'
	.ascii	"_temp_1292\0"
	.align
_Label_1379:
	.byte	'?'
	.ascii	"_temp_1291\0"
	.align
_Label_1380:
	.byte	'?'
	.ascii	"_temp_1290\0"
	.align
_Label_1381:
	.byte	'?'
	.ascii	"_temp_1286\0"
	.align
_Label_1382:
	.byte	'?'
	.ascii	"_temp_1281\0"
	.align
_Label_1383:
	.byte	'?'
	.ascii	"_temp_1280\0"
	.align
_Label_1384:
	.byte	'?'
	.ascii	"_temp_1279\0"
	.align
_Label_1385:
	.byte	'?'
	.ascii	"_temp_1278\0"
	.align
_Label_1386:
	.byte	'P'
	.ascii	"openFilePtr\0"
	.align
_Label_1387:
	.byte	'I'
	.ascii	"virtAddr\0"
	.align
_Label_1388:
	.byte	'I'
	.ascii	"virtPage\0"
	.align
_Label_1389:
	.byte	'I'
	.ascii	"offset\0"
	.align
_Label_1390:
	.byte	'I'
	.ascii	"chunkSize\0"
	.align
_Label_1391:
	.byte	'I'
	.ascii	"thisChunkSize\0"
	.align
_Label_1392:
	.byte	'I'
	.ascii	"currentPos\0"
	.align
_Label_1393:
	.byte	'I'
	.ascii	"nextPosInFile\0"
	.align
_Label_1394:
	.byte	'I'
	.ascii	"sizeOfFileInBytes\0"
	.align
_Label_1395:
	.byte	'I'
	.ascii	"copiedSoFar\0"
	.align
_Label_1396:
	.byte	'I'
	.ascii	"destAddr\0"
	.align
_Label_1397:
	.byte	'B'
	.ascii	"SynchWriteStatus\0"
	.align
! 
! ===============  FUNCTION Handle_Sys_Seek  ===============
! 
_P_Kernel_Handle_Sys_Seek:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__P_Kernel_Handle_Sys_Seek,r1
	push	r1
	mov	24,r1
_Label_4017:
	push	r0
	sub	r1,1,r1
	bne	_Label_4017
	mov	2625,r13		! source line 2625
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! SEND STATEMENT...
	mov	2632,r13		! source line 2632
	mov	"\0\0SE",r10
!   _temp_1398 = &_P_Kernel_fileManager
	set	_P_Kernel_fileManager,r1
	store	r1,[r14+-92]
!   _temp_1399 = _temp_1398 + 4
	load	[r14+-92],r1
	add	r1,4,r1
	store	r1,[r14+-88]
!   Send message Lock
	load	[r14+-88],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! IF STATEMENT...
	mov	2635,r13		! source line 2635
	mov	"\0\0IF",r10
!   if fileDesc < 10 then goto _Label_1402		(int)
	load	[r14+8],r1
	mov	10,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bl	_Label_1402
	jmp	_Label_1400
_Label_1402:
!   if fileDesc >= 0 then goto _Label_1401		(int)
	load	[r14+8],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_1401
!	jmp	_Label_1400
_Label_1400:
! THEN...
	mov	2636,r13		! source line 2636
	mov	"\0\0TN",r10
! SEND STATEMENT...
	mov	2636,r13		! source line 2636
	mov	"\0\0SE",r10
!   _temp_1403 = &_P_Kernel_fileManager
	set	_P_Kernel_fileManager,r1
	store	r1,[r14+-84]
!   _temp_1404 = _temp_1403 + 4
	load	[r14+-84],r1
	add	r1,4,r1
	store	r1,[r14+-80]
!   Send message Unlock
	load	[r14+-80],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
! RETURN STATEMENT...
	mov	2637,r13		! source line 2637
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,100,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_1401:
! ASSIGNMENT STATEMENT...
	mov	2641,r13		! source line 2641
	mov	"\0\0AS",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1406 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-72]
!   Data Move: _temp_1405 = *_temp_1406  (sizeInBytes=4)
	load	[r14+-72],r1
	load	[r1],r1
	store	r1,[r14+-76]
!   if intIsZero (_temp_1405) then goto _runtimeErrorNullPointer
	load	[r14+-76],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1407 = _temp_1405 + 124
	load	[r14+-76],r1
	add	r1,124,r1
	store	r1,[r14+-68]
!   Move address of _temp_1407 [fileDesc ] into _temp_1408
!     make sure index expr is >= 0
	load	[r14+8],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-68],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	4,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-64]
!   Data Move: openFilePtr = *_temp_1408  (sizeInBytes=4)
	load	[r14+-64],r1
	load	[r1],r1
	store	r1,[r14+-96]
! IF STATEMENT...
	mov	2644,r13		! source line 2644
	mov	"\0\0IF",r10
!   if intIsZero (openFilePtr) then goto _Label_1409
	load	[r14+-96],r1
	cmp	r1,r0
	be	_Label_1409
	jmp	_Label_1410
_Label_1409:
! THEN...
	mov	2645,r13		! source line 2645
	mov	"\0\0TN",r10
! SEND STATEMENT...
	mov	2645,r13		! source line 2645
	mov	"\0\0SE",r10
!   _temp_1411 = &_P_Kernel_fileManager
	set	_P_Kernel_fileManager,r1
	store	r1,[r14+-60]
!   _temp_1412 = _temp_1411 + 4
	load	[r14+-60],r1
	add	r1,4,r1
	store	r1,[r14+-56]
!   Send message Unlock
	load	[r14+-56],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
! RETURN STATEMENT...
	mov	2646,r13		! source line 2646
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,100,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_1410:
! ASSIGNMENT STATEMENT...
	mov	2649,r13		! source line 2649
	mov	"\0\0AS",r10
!   if intIsZero (openFilePtr) then goto _runtimeErrorNullPointer
	load	[r14+-96],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1414 = openFilePtr + 20
	load	[r14+-96],r1
	add	r1,20,r1
	store	r1,[r14+-48]
!   Data Move: _temp_1413 = *_temp_1414  (sizeInBytes=4)
	load	[r14+-48],r1
	load	[r1],r1
	store	r1,[r14+-52]
!   if intIsZero (_temp_1413) then goto _runtimeErrorNullPointer
	load	[r14+-52],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1415 = _temp_1413 + 24
	load	[r14+-52],r1
	add	r1,24,r1
	store	r1,[r14+-44]
!   Data Move: sizeOfFileInBytes = *_temp_1415  (sizeInBytes=4)
	load	[r14+-44],r1
	load	[r1],r1
	store	r1,[r14+-100]
! IF STATEMENT...
	mov	2653,r13		! source line 2653
	mov	"\0\0IF",r10
!   if newCurrentPos != -1 then goto _Label_1417		(int)
	load	[r14+12],r1
	mov	-1,r2
	cmp	r1,r2
	bne	_Label_1417
!	jmp	_Label_1416
_Label_1416:
! THEN...
	mov	2654,r13		! source line 2654
	mov	"\0\0TN",r10
! ASSIGNMENT STATEMENT...
	mov	2654,r13		! source line 2654
	mov	"\0\0AS",r10
!   if intIsZero (openFilePtr) then goto _runtimeErrorNullPointer
	load	[r14+-96],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1418 = openFilePtr + 16
	load	[r14+-96],r1
	add	r1,16,r1
	store	r1,[r14+-40]
!   Data Move: *_temp_1418 = sizeOfFileInBytes  (sizeInBytes=4)
	load	[r14+-100],r1
	load	[r14+-40],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	2655,r13		! source line 2655
	mov	"\0\0SE",r10
!   _temp_1419 = &_P_Kernel_fileManager
	set	_P_Kernel_fileManager,r1
	store	r1,[r14+-36]
!   _temp_1420 = _temp_1419 + 4
	load	[r14+-36],r1
	add	r1,4,r1
	store	r1,[r14+-32]
!   Send message Unlock
	load	[r14+-32],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
! RETURN STATEMENT...
	mov	2656,r13		! source line 2656
	mov	"\0\0RE",r10
!   ReturnResult: sizeOfFileInBytes  (sizeInBytes=4)
	load	[r14+-100],r1
	store	r1,[r14+8]
	add	r15,100,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_1417:
! IF STATEMENT...
	mov	2660,r13		! source line 2660
	mov	"\0\0IF",r10
!   if newCurrentPos <= sizeOfFileInBytes then goto _Label_1423		(int)
	load	[r14+12],r1
	load	[r14+-100],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	ble	_Label_1423
	jmp	_Label_1421
_Label_1423:
!   if newCurrentPos >= -1 then goto _Label_1422		(int)
	load	[r14+12],r1
	mov	-1,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_1422
!	jmp	_Label_1421
_Label_1421:
! THEN...
	mov	2661,r13		! source line 2661
	mov	"\0\0TN",r10
! SEND STATEMENT...
	mov	2661,r13		! source line 2661
	mov	"\0\0SE",r10
!   _temp_1424 = &_P_Kernel_fileManager
	set	_P_Kernel_fileManager,r1
	store	r1,[r14+-28]
!   _temp_1425 = _temp_1424 + 4
	load	[r14+-28],r1
	add	r1,4,r1
	store	r1,[r14+-24]
!   Send message Unlock
	load	[r14+-24],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
! RETURN STATEMENT...
	mov	2662,r13		! source line 2662
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,100,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_1422:
! ASSIGNMENT STATEMENT...
	mov	2667,r13		! source line 2667
	mov	"\0\0AS",r10
!   if intIsZero (openFilePtr) then goto _runtimeErrorNullPointer
	load	[r14+-96],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1426 = openFilePtr + 16
	load	[r14+-96],r1
	add	r1,16,r1
	store	r1,[r14+-20]
!   Data Move: *_temp_1426 = newCurrentPos  (sizeInBytes=4)
	load	[r14+12],r1
	load	[r14+-20],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	2670,r13		! source line 2670
	mov	"\0\0SE",r10
!   _temp_1427 = &_P_Kernel_fileManager
	set	_P_Kernel_fileManager,r1
	store	r1,[r14+-16]
!   _temp_1428 = _temp_1427 + 4
	load	[r14+-16],r1
	add	r1,4,r1
	store	r1,[r14+-12]
!   Send message Unlock
	load	[r14+-12],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
! RETURN STATEMENT...
	mov	2672,r13		! source line 2672
	mov	"\0\0RE",r10
!   ReturnResult: newCurrentPos  (sizeInBytes=4)
	load	[r14+12],r1
	store	r1,[r14+8]
	add	r15,100,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__P_Kernel_Handle_Sys_Seek:
	.word	_sourceFileName
	.word	_Label_1429
	.word	8		! total size of parameters
	.word	96		! frame size = 96
	.word	_Label_1430
	.word	8
	.word	4
	.word	_Label_1431
	.word	12
	.word	4
	.word	_Label_1432
	.word	-12
	.word	4
	.word	_Label_1433
	.word	-16
	.word	4
	.word	_Label_1434
	.word	-20
	.word	4
	.word	_Label_1435
	.word	-24
	.word	4
	.word	_Label_1436
	.word	-28
	.word	4
	.word	_Label_1437
	.word	-32
	.word	4
	.word	_Label_1438
	.word	-36
	.word	4
	.word	_Label_1439
	.word	-40
	.word	4
	.word	_Label_1440
	.word	-44
	.word	4
	.word	_Label_1441
	.word	-48
	.word	4
	.word	_Label_1442
	.word	-52
	.word	4
	.word	_Label_1443
	.word	-56
	.word	4
	.word	_Label_1444
	.word	-60
	.word	4
	.word	_Label_1445
	.word	-64
	.word	4
	.word	_Label_1446
	.word	-68
	.word	4
	.word	_Label_1447
	.word	-72
	.word	4
	.word	_Label_1448
	.word	-76
	.word	4
	.word	_Label_1449
	.word	-80
	.word	4
	.word	_Label_1450
	.word	-84
	.word	4
	.word	_Label_1451
	.word	-88
	.word	4
	.word	_Label_1452
	.word	-92
	.word	4
	.word	_Label_1453
	.word	-96
	.word	4
	.word	_Label_1454
	.word	-100
	.word	4
	.word	0
_Label_1429:
	.ascii	"Handle_Sys_Seek\0"
	.align
_Label_1430:
	.byte	'I'
	.ascii	"fileDesc\0"
	.align
_Label_1431:
	.byte	'I'
	.ascii	"newCurrentPos\0"
	.align
_Label_1432:
	.byte	'?'
	.ascii	"_temp_1428\0"
	.align
_Label_1433:
	.byte	'?'
	.ascii	"_temp_1427\0"
	.align
_Label_1434:
	.byte	'?'
	.ascii	"_temp_1426\0"
	.align
_Label_1435:
	.byte	'?'
	.ascii	"_temp_1425\0"
	.align
_Label_1436:
	.byte	'?'
	.ascii	"_temp_1424\0"
	.align
_Label_1437:
	.byte	'?'
	.ascii	"_temp_1420\0"
	.align
_Label_1438:
	.byte	'?'
	.ascii	"_temp_1419\0"
	.align
_Label_1439:
	.byte	'?'
	.ascii	"_temp_1418\0"
	.align
_Label_1440:
	.byte	'?'
	.ascii	"_temp_1415\0"
	.align
_Label_1441:
	.byte	'?'
	.ascii	"_temp_1414\0"
	.align
_Label_1442:
	.byte	'?'
	.ascii	"_temp_1413\0"
	.align
_Label_1443:
	.byte	'?'
	.ascii	"_temp_1412\0"
	.align
_Label_1444:
	.byte	'?'
	.ascii	"_temp_1411\0"
	.align
_Label_1445:
	.byte	'?'
	.ascii	"_temp_1408\0"
	.align
_Label_1446:
	.byte	'?'
	.ascii	"_temp_1407\0"
	.align
_Label_1447:
	.byte	'?'
	.ascii	"_temp_1406\0"
	.align
_Label_1448:
	.byte	'?'
	.ascii	"_temp_1405\0"
	.align
_Label_1449:
	.byte	'?'
	.ascii	"_temp_1404\0"
	.align
_Label_1450:
	.byte	'?'
	.ascii	"_temp_1403\0"
	.align
_Label_1451:
	.byte	'?'
	.ascii	"_temp_1399\0"
	.align
_Label_1452:
	.byte	'?'
	.ascii	"_temp_1398\0"
	.align
_Label_1453:
	.byte	'P'
	.ascii	"openFilePtr\0"
	.align
_Label_1454:
	.byte	'I'
	.ascii	"sizeOfFileInBytes\0"
	.align
! 
! ===============  FUNCTION Handle_Sys_Close  ===============
! 
_P_Kernel_Handle_Sys_Close:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__P_Kernel_Handle_Sys_Close,r1
	push	r1
	mov	15,r1
_Label_4018:
	push	r0
	sub	r1,1,r1
	bne	_Label_4018
	mov	2678,r13		! source line 2678
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! IF STATEMENT...
	mov	2684,r13		! source line 2684
	mov	"\0\0IF",r10
!   if fileDesc < 10 then goto _Label_1457		(int)
	load	[r14+8],r1
	mov	10,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bl	_Label_1457
	jmp	_Label_1455
_Label_1457:
!   if fileDesc >= 0 then goto _Label_1456		(int)
	load	[r14+8],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_1456
!	jmp	_Label_1455
_Label_1455:
! THEN...
	mov	2685,r13		! source line 2685
	mov	"\0\0TN",r10
! RETURN STATEMENT...
	mov	2685,r13		! source line 2685
	mov	"\0\0RE",r10
	add	r15,64,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_1456:
! ASSIGNMENT STATEMENT...
	mov	2689,r13		! source line 2689
	mov	"\0\0AS",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1459 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-52]
!   Data Move: _temp_1458 = *_temp_1459  (sizeInBytes=4)
	load	[r14+-52],r1
	load	[r1],r1
	store	r1,[r14+-56]
!   if intIsZero (_temp_1458) then goto _runtimeErrorNullPointer
	load	[r14+-56],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1460 = _temp_1458 + 124
	load	[r14+-56],r1
	add	r1,124,r1
	store	r1,[r14+-48]
!   Move address of _temp_1460 [fileDesc ] into _temp_1461
!     make sure index expr is >= 0
	load	[r14+8],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-48],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	4,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-44]
!   Data Move: openFilePtr = *_temp_1461  (sizeInBytes=4)
	load	[r14+-44],r1
	load	[r1],r1
	store	r1,[r14+-60]
! ASSIGNMENT STATEMENT...
	mov	2692,r13		! source line 2692
	mov	"\0\0AS",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1463 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-36]
!   Data Move: _temp_1462 = *_temp_1463  (sizeInBytes=4)
	load	[r14+-36],r1
	load	[r1],r1
	store	r1,[r14+-40]
!   if intIsZero (_temp_1462) then goto _runtimeErrorNullPointer
	load	[r14+-40],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1464 = _temp_1462 + 124
	load	[r14+-40],r1
	add	r1,124,r1
	store	r1,[r14+-32]
!   Move address of _temp_1464 [fileDesc ] into _temp_1465
!     make sure index expr is >= 0
	load	[r14+8],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-32],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	4,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-28]
!   Data Move: *_temp_1465 = 0  (sizeInBytes=4)
	mov	0,r1
	load	[r14+-28],r2
	store	r1,[r2]
! IF STATEMENT...
	mov	2695,r13		! source line 2695
	mov	"\0\0IF",r10
!   if intIsZero (openFilePtr) then goto _Label_1467
	load	[r14+-60],r1
	cmp	r1,r0
	be	_Label_1467
!	jmp	_Label_1466
_Label_1466:
! THEN...
	mov	2697,r13		! source line 2697
	mov	"\0\0TN",r10
! IF STATEMENT...
	mov	2697,r13		! source line 2697
	mov	"\0\0IF",r10
!   _temp_1471 = &_P_Kernel_fileManager
	set	_P_Kernel_fileManager,r1
	store	r1,[r14+-20]
!   _temp_1472 = _temp_1471 + 772
	load	[r14+-20],r1
	add	r1,772,r1
	store	r1,[r14+-16]
!   _temp_1470 = _temp_1472		(4 bytes)
	load	[r14+-16],r1
	store	r1,[r14+-24]
!   if openFilePtr == _temp_1470 then goto _Label_1469		(int)
	load	[r14+-60],r1
	load	[r14+-24],r2
	cmp	r1,r2
	be	_Label_1469
!	jmp	_Label_1468
_Label_1468:
! THEN...
	mov	2698,r13		! source line 2698
	mov	"\0\0TN",r10
! SEND STATEMENT...
	mov	2698,r13		! source line 2698
	mov	"\0\0SE",r10
!   _temp_1473 = &_P_Kernel_fileManager
	set	_P_Kernel_fileManager,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=12  value=openFilePtr  sizeInBytes=4
	load	[r14+-60],r1
	store	r1,[r15+4]
!   Send message Close
	load	[r14+-12],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,20,r2
	call	r2
! END IF...
_Label_1469:
! END IF...
_Label_1467:
! RETURN STATEMENT...
	mov	2695,r13		! source line 2695
	mov	"\0\0RE",r10
	add	r15,64,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__P_Kernel_Handle_Sys_Close:
	.word	_sourceFileName
	.word	_Label_1474
	.word	4		! total size of parameters
	.word	60		! frame size = 60
	.word	_Label_1475
	.word	8
	.word	4
	.word	_Label_1476
	.word	-12
	.word	4
	.word	_Label_1477
	.word	-16
	.word	4
	.word	_Label_1478
	.word	-20
	.word	4
	.word	_Label_1479
	.word	-24
	.word	4
	.word	_Label_1480
	.word	-28
	.word	4
	.word	_Label_1481
	.word	-32
	.word	4
	.word	_Label_1482
	.word	-36
	.word	4
	.word	_Label_1483
	.word	-40
	.word	4
	.word	_Label_1484
	.word	-44
	.word	4
	.word	_Label_1485
	.word	-48
	.word	4
	.word	_Label_1486
	.word	-52
	.word	4
	.word	_Label_1487
	.word	-56
	.word	4
	.word	_Label_1488
	.word	-60
	.word	4
	.word	0
_Label_1474:
	.ascii	"Handle_Sys_Close\0"
	.align
_Label_1475:
	.byte	'I'
	.ascii	"fileDesc\0"
	.align
_Label_1476:
	.byte	'?'
	.ascii	"_temp_1473\0"
	.align
_Label_1477:
	.byte	'?'
	.ascii	"_temp_1472\0"
	.align
_Label_1478:
	.byte	'?'
	.ascii	"_temp_1471\0"
	.align
_Label_1479:
	.byte	'?'
	.ascii	"_temp_1470\0"
	.align
_Label_1480:
	.byte	'?'
	.ascii	"_temp_1465\0"
	.align
_Label_1481:
	.byte	'?'
	.ascii	"_temp_1464\0"
	.align
_Label_1482:
	.byte	'?'
	.ascii	"_temp_1463\0"
	.align
_Label_1483:
	.byte	'?'
	.ascii	"_temp_1462\0"
	.align
_Label_1484:
	.byte	'?'
	.ascii	"_temp_1461\0"
	.align
_Label_1485:
	.byte	'?'
	.ascii	"_temp_1460\0"
	.align
_Label_1486:
	.byte	'?'
	.ascii	"_temp_1459\0"
	.align
_Label_1487:
	.byte	'?'
	.ascii	"_temp_1458\0"
	.align
_Label_1488:
	.byte	'P'
	.ascii	"openFilePtr\0"
	.align
! 
! ===============  FUNCTION copyUnalignedWord  ===============
! 
_function_197_copyUnalignedWord:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__function_197_copyUnalignedWord,r1
	push	r1
	mov	9,r1
_Label_4019:
	push	r0
	sub	r1,1,r1
	bne	_Label_4019
	mov	3293,r13		! source line 3293
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	3295,r13		! source line 3295
	mov	"\0\0AS",r10
!   from = fromPtr		(4 bytes)
	load	[r14+12],r1
	store	r1,[r14+-40]
! ASSIGNMENT STATEMENT...
	mov	3296,r13		! source line 3296
	mov	"\0\0AS",r10
!   dest = destPtr		(4 bytes)
	load	[r14+8],r1
	store	r1,[r14+-44]
! ASSIGNMENT STATEMENT...
	mov	3297,r13		! source line 3297
	mov	"\0\0AS",r10
!   if intIsZero (dest) then goto _runtimeErrorNullPointer
	load	[r14+-44],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   if intIsZero (from) then goto _runtimeErrorNullPointer
	load	[r14+-40],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Data Move: _temp_1489 = *from  (sizeInBytes=1)
	load	[r14+-40],r1
	loadb	[r1],r1
	storeb	r1,[r14+-12]
!   Data Move: *dest = _temp_1489  (sizeInBytes=1)
	loadb	[r14+-12],r1
	load	[r14+-44],r2
	storeb	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	3298,r13		! source line 3298
	mov	"\0\0AS",r10
!   _temp_1490 = dest + 1		(int)
	load	[r14+-44],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-36]
!   if intIsZero (_temp_1490) then goto _runtimeErrorNullPointer
	load	[r14+-36],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1492 = from + 1		(int)
	load	[r14+-40],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-32]
!   if intIsZero (_temp_1492) then goto _runtimeErrorNullPointer
	load	[r14+-32],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Data Move: _temp_1491 = *_temp_1492  (sizeInBytes=1)
	load	[r14+-32],r1
	loadb	[r1],r1
	storeb	r1,[r14+-11]
!   Data Move: *_temp_1490 = _temp_1491  (sizeInBytes=1)
	loadb	[r14+-11],r1
	load	[r14+-36],r2
	storeb	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	3299,r13		! source line 3299
	mov	"\0\0AS",r10
!   _temp_1493 = dest + 2		(int)
	load	[r14+-44],r1
	mov	2,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-28]
!   if intIsZero (_temp_1493) then goto _runtimeErrorNullPointer
	load	[r14+-28],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1495 = from + 2		(int)
	load	[r14+-40],r1
	mov	2,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-24]
!   if intIsZero (_temp_1495) then goto _runtimeErrorNullPointer
	load	[r14+-24],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Data Move: _temp_1494 = *_temp_1495  (sizeInBytes=1)
	load	[r14+-24],r1
	loadb	[r1],r1
	storeb	r1,[r14+-10]
!   Data Move: *_temp_1493 = _temp_1494  (sizeInBytes=1)
	loadb	[r14+-10],r1
	load	[r14+-28],r2
	storeb	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	3300,r13		! source line 3300
	mov	"\0\0AS",r10
!   _temp_1496 = dest + 3		(int)
	load	[r14+-44],r1
	mov	3,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-20]
!   if intIsZero (_temp_1496) then goto _runtimeErrorNullPointer
	load	[r14+-20],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1498 = from + 3		(int)
	load	[r14+-40],r1
	mov	3,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-16]
!   if intIsZero (_temp_1498) then goto _runtimeErrorNullPointer
	load	[r14+-16],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Data Move: _temp_1497 = *_temp_1498  (sizeInBytes=1)
	load	[r14+-16],r1
	loadb	[r1],r1
	storeb	r1,[r14+-9]
!   Data Move: *_temp_1496 = _temp_1497  (sizeInBytes=1)
	loadb	[r14+-9],r1
	load	[r14+-20],r2
	storeb	r1,[r2]
! RETURN STATEMENT...
	mov	3300,r13		! source line 3300
	mov	"\0\0RE",r10
	add	r15,40,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__function_197_copyUnalignedWord:
	.word	_sourceFileName
	.word	_Label_1499
	.word	8		! total size of parameters
	.word	36		! frame size = 36
	.word	_Label_1500
	.word	8
	.word	4
	.word	_Label_1501
	.word	12
	.word	4
	.word	_Label_1502
	.word	-16
	.word	4
	.word	_Label_1503
	.word	-9
	.word	1
	.word	_Label_1504
	.word	-20
	.word	4
	.word	_Label_1505
	.word	-24
	.word	4
	.word	_Label_1506
	.word	-10
	.word	1
	.word	_Label_1507
	.word	-28
	.word	4
	.word	_Label_1508
	.word	-32
	.word	4
	.word	_Label_1509
	.word	-11
	.word	1
	.word	_Label_1510
	.word	-36
	.word	4
	.word	_Label_1511
	.word	-12
	.word	1
	.word	_Label_1512
	.word	-40
	.word	4
	.word	_Label_1513
	.word	-44
	.word	4
	.word	0
_Label_1499:
	.ascii	"copyUnalignedWord\0"
	.align
_Label_1500:
	.byte	'P'
	.ascii	"destPtr\0"
	.align
_Label_1501:
	.byte	'P'
	.ascii	"fromPtr\0"
	.align
_Label_1502:
	.byte	'?'
	.ascii	"_temp_1498\0"
	.align
_Label_1503:
	.byte	'C'
	.ascii	"_temp_1497\0"
	.align
_Label_1504:
	.byte	'?'
	.ascii	"_temp_1496\0"
	.align
_Label_1505:
	.byte	'?'
	.ascii	"_temp_1495\0"
	.align
_Label_1506:
	.byte	'C'
	.ascii	"_temp_1494\0"
	.align
_Label_1507:
	.byte	'?'
	.ascii	"_temp_1493\0"
	.align
_Label_1508:
	.byte	'?'
	.ascii	"_temp_1492\0"
	.align
_Label_1509:
	.byte	'C'
	.ascii	"_temp_1491\0"
	.align
_Label_1510:
	.byte	'?'
	.ascii	"_temp_1490\0"
	.align
_Label_1511:
	.byte	'C'
	.ascii	"_temp_1489\0"
	.align
_Label_1512:
	.byte	'P'
	.ascii	"from\0"
	.align
_Label_1513:
	.byte	'P'
	.ascii	"dest\0"
	.align
! 
! ===============  FUNCTION printFCB  ===============
! 
_function_196_printFCB:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__function_196_printFCB,r1
	push	r1
	mov	3,r1
_Label_4020:
	push	r0
	sub	r1,1,r1
	bne	_Label_4020
	mov	3303,r13		! source line 3303
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+8],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1515 = fcb + 12
	load	[r14+8],r1
	add	r1,12,r1
	store	r1,[r14+-12]
!   Data Move: _temp_1514 = *_temp_1515  (sizeInBytes=4)
	load	[r14+-12],r1
	load	[r1],r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_1514  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+0]
!   Call the function
	mov	3304,r13		! source line 3304
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=32  sizeInBytes=1
	mov	32,r1
	storeb	r1,[r15+0]
!   Call the function
	mov	3305,r13		! source line 3305
	mov	"\0\0CE",r10
	call	printChar
! RETURN STATEMENT...
	mov	3305,r13		! source line 3305
	mov	"\0\0RE",r10
	add	r15,16,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__function_196_printFCB:
	.word	_sourceFileName
	.word	_Label_1516
	.word	4		! total size of parameters
	.word	12		! frame size = 12
	.word	_Label_1517
	.word	8
	.word	4
	.word	_Label_1518
	.word	-12
	.word	4
	.word	_Label_1519
	.word	-16
	.word	4
	.word	0
_Label_1516:
	.ascii	"printFCB\0"
	.align
_Label_1517:
	.byte	'P'
	.ascii	"fcb\0"
	.align
_Label_1518:
	.byte	'?'
	.ascii	"_temp_1515\0"
	.align
_Label_1519:
	.byte	'?'
	.ascii	"_temp_1514\0"
	.align
! 
! ===============  FUNCTION printOpen  ===============
! 
_function_195_printOpen:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__function_195_printOpen,r1
	push	r1
	mov	4,r1
_Label_4021:
	push	r0
	sub	r1,1,r1
	bne	_Label_4021
	mov	3308,r13		! source line 3308
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   _temp_1520 = _StringConst_46
	set	_StringConst_46,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_1520  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   Call the function
	mov	3309,r13		! source line 3309
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_1521 = open		(4 bytes)
	load	[r14+8],r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_1521  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+0]
!   Call the function
	mov	3310,r13		! source line 3310
	mov	"\0\0CE",r10
	call	printHex
! CALL STATEMENT...
!   _temp_1522 = _StringConst_47
	set	_StringConst_47,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_1522  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	3311,r13		! source line 3311
	mov	"\0\0CE",r10
	call	print
! SEND STATEMENT...
	mov	3312,r13		! source line 3312
	mov	"\0\0SE",r10
!   if intIsZero (open) then goto _runtimeErrorNullPointer
	load	[r14+8],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Send message Print
	load	[r14+8],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,4,r2
	call	r2
! RETURN STATEMENT...
	mov	3312,r13		! source line 3312
	mov	"\0\0RE",r10
	add	r15,20,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__function_195_printOpen:
	.word	_sourceFileName
	.word	_Label_1523
	.word	4		! total size of parameters
	.word	16		! frame size = 16
	.word	_Label_1524
	.word	8
	.word	4
	.word	_Label_1525
	.word	-12
	.word	4
	.word	_Label_1526
	.word	-16
	.word	4
	.word	_Label_1527
	.word	-20
	.word	4
	.word	0
_Label_1523:
	.ascii	"printOpen\0"
	.align
_Label_1524:
	.byte	'P'
	.ascii	"open\0"
	.align
_Label_1525:
	.byte	'?'
	.ascii	"_temp_1522\0"
	.align
_Label_1526:
	.byte	'?'
	.ascii	"_temp_1521\0"
	.align
_Label_1527:
	.byte	'?'
	.ascii	"_temp_1520\0"
	.align
! 
! ===============  CLASS Semaphore  ===============
! 
! Dispatch Table:
! 
_P_Kernel_Semaphore:
	.word	_Label_1528
	jmp	_Method_P_Kernel_Semaphore_1	! 4:	Init
	jmp	_Method_P_Kernel_Semaphore_3	! 8:	Down
	jmp	_Method_P_Kernel_Semaphore_2	! 12:	Up
	.word	0
! 
! Class descriptor:
! 
_Label_1528:
	.word	1129070931		! Magic number 0x434c4153 == 'CLAS'
	.word	_Label_1529
	.word	_sourceFileName
	.word	129		! line number
	.word	20		! size of instances, in bytes
	.word	_P_Kernel_Semaphore
	.word	_P_System_Object
	.word	0
_Label_1529:
	.ascii	"Semaphore\0"
	.align
! 
! ===============  METHOD Init  ===============
! 
_Method_P_Kernel_Semaphore_1:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_Semaphore_1,r1
	push	r1
	mov	3,r1
_Label_4022:
	push	r0
	sub	r1,1,r1
	bne	_Label_4022
	mov	230,r13		! source line 230
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! IF STATEMENT...
	mov	231,r13		! source line 231
	mov	"\0\0IF",r10
!   if initialCount >= 0 then goto _Label_1531		(int)
	load	[r14+12],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_1531
!	jmp	_Label_1530
_Label_1530:
! THEN...
	mov	232,r13		! source line 232
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_1532 = _StringConst_48
	set	_StringConst_48,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_1532  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	232,r13		! source line 232
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END IF...
_Label_1531:
! ASSIGNMENT STATEMENT...
	mov	234,r13		! source line 234
	mov	"\0\0AS",r10
!   count = initialCount		(4 bytes)
	load	[r14+12],r1
	load	[r14+8],r2
	store	r1,[r2+4]
! ASSIGNMENT STATEMENT...
	mov	235,r13		! source line 235
	mov	"\0\0AS",r10
!   NEW CLASS Constructor...
!   ZeroMemory: waitingThreads = zeros  (sizeInBytes=12)
	load	[r14+8],r4
	add	r4,8,r4
	store	r0,[r4]
	store	r0,[r4+4]
	store	r0,[r4+8]
!   waitingThreads = _P_List_List
	set	_P_List_List,r1
	load	[r14+8],r2
	store	r1,[r2+8]
! RETURN STATEMENT...
	mov	235,r13		! source line 235
	mov	"\0\0RE",r10
	add	r15,16,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_Semaphore_1:
	.word	_sourceFileName
	.word	_Label_1534
	.word	8		! total size of parameters
	.word	12		! frame size = 12
	.word	_Label_1535
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1536
	.word	12
	.word	4
	.word	_Label_1537
	.word	-12
	.word	4
	.word	_Label_1538
	.word	-16
	.word	4
	.word	0
_Label_1534:
	.ascii	"Semaphore"
	.ascii	"::"
	.ascii	"Init\0"
	.align
_Label_1535:
	.ascii	"Pself\0"
	.align
_Label_1536:
	.byte	'I'
	.ascii	"initialCount\0"
	.align
_Label_1537:
	.byte	'?'
	.ascii	"_temp_1533\0"
	.align
_Label_1538:
	.byte	'?'
	.ascii	"_temp_1532\0"
	.align
! 
! ===============  METHOD Up  ===============
! 
_Method_P_Kernel_Semaphore_2:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_Semaphore_2,r1
	push	r1
	mov	8,r1
_Label_4023:
	push	r0
	sub	r1,1,r1
	bne	_Label_4023
	mov	240,r13		! source line 240
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	244,r13		! source line 244
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=2  sizeInBytes=4
	mov	2,r1
	store	r1,[r15+0]
!   Call the function
	mov	244,r13		! source line 244
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=oldIntStat  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-28]
! IF STATEMENT...
	mov	245,r13		! source line 245
	mov	"\0\0IF",r10
!   if count != 2147483647 then goto _Label_1540		(int)
	load	[r14+8],r1
	load	[r1+4],r1
	set	2147483647,r2
	cmp	r1,r2
	bne	_Label_1540
!	jmp	_Label_1539
_Label_1539:
! THEN...
	mov	246,r13		! source line 246
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_1541 = _StringConst_49
	set	_StringConst_49,r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=8  value=_temp_1541  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	246,r13		! source line 246
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END IF...
_Label_1540:
! ASSIGNMENT STATEMENT...
	mov	248,r13		! source line 248
	mov	"\0\0AS",r10
!   count = count + 1		(int)
	load	[r14+8],r1
	load	[r1+4],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	load	[r14+8],r2
	store	r1,[r2+4]
! IF STATEMENT...
	mov	249,r13		! source line 249
	mov	"\0\0IF",r10
!   if count > 0 then goto _Label_1543		(int)
	load	[r14+8],r1
	load	[r1+4],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_1543
!	jmp	_Label_1542
_Label_1542:
! THEN...
	mov	250,r13		! source line 250
	mov	"\0\0TN",r10
! ASSIGNMENT STATEMENT...
	mov	250,r13		! source line 250
	mov	"\0\0AS",r10
	mov	250,r13		! source line 250
	mov	"\0\0SE",r10
!   _temp_1544 = &waitingThreads
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-20]
!   Send message Remove
	load	[r14+-20],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
!   Retrieve Result: targetName=t  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-32]
! ASSIGNMENT STATEMENT...
	mov	251,r13		! source line 251
	mov	"\0\0AS",r10
!   if intIsZero (t) then goto _runtimeErrorNullPointer
	load	[r14+-32],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1545 = t + 76
	load	[r14+-32],r1
	add	r1,76,r1
	store	r1,[r14+-16]
!   Data Move: *_temp_1545 = 2  (sizeInBytes=4)
	mov	2,r1
	load	[r14+-16],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	252,r13		! source line 252
	mov	"\0\0SE",r10
!   _temp_1546 = &_P_Kernel_readyList
	set	_P_Kernel_readyList,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=12  value=t  sizeInBytes=4
	load	[r14+-32],r1
	store	r1,[r15+4]
!   Send message AddToEnd
	load	[r14+-12],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! END IF...
_Label_1543:
! ASSIGNMENT STATEMENT...
	mov	254,r13		! source line 254
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=oldIntStat  sizeInBytes=4
	load	[r14+-28],r1
	store	r1,[r15+0]
!   Call the function
	mov	254,r13		! source line 254
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=oldIntStat  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-28]
! RETURN STATEMENT...
	mov	254,r13		! source line 254
	mov	"\0\0RE",r10
	add	r15,36,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_Semaphore_2:
	.word	_sourceFileName
	.word	_Label_1547
	.word	4		! total size of parameters
	.word	32		! frame size = 32
	.word	_Label_1548
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1549
	.word	-12
	.word	4
	.word	_Label_1550
	.word	-16
	.word	4
	.word	_Label_1551
	.word	-20
	.word	4
	.word	_Label_1552
	.word	-24
	.word	4
	.word	_Label_1553
	.word	-28
	.word	4
	.word	_Label_1554
	.word	-32
	.word	4
	.word	0
_Label_1547:
	.ascii	"Semaphore"
	.ascii	"::"
	.ascii	"Up\0"
	.align
_Label_1548:
	.ascii	"Pself\0"
	.align
_Label_1549:
	.byte	'?'
	.ascii	"_temp_1546\0"
	.align
_Label_1550:
	.byte	'?'
	.ascii	"_temp_1545\0"
	.align
_Label_1551:
	.byte	'?'
	.ascii	"_temp_1544\0"
	.align
_Label_1552:
	.byte	'?'
	.ascii	"_temp_1541\0"
	.align
_Label_1553:
	.byte	'I'
	.ascii	"oldIntStat\0"
	.align
_Label_1554:
	.byte	'P'
	.ascii	"t\0"
	.align
! 
! ===============  METHOD Down  ===============
! 
_Method_P_Kernel_Semaphore_3:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_Semaphore_3,r1
	push	r1
	mov	5,r1
_Label_4024:
	push	r0
	sub	r1,1,r1
	bne	_Label_4024
	mov	259,r13		! source line 259
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	262,r13		! source line 262
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=2  sizeInBytes=4
	mov	2,r1
	store	r1,[r15+0]
!   Call the function
	mov	262,r13		! source line 262
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=oldIntStat  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-20]
! IF STATEMENT...
	mov	263,r13		! source line 263
	mov	"\0\0IF",r10
!   if count != -2147483648 then goto _Label_1556		(int)
	load	[r14+8],r1
	load	[r1+4],r1
	set	0x80000000,r2
	cmp	r1,r2
	bne	_Label_1556
!	jmp	_Label_1555
_Label_1555:
! THEN...
	mov	264,r13		! source line 264
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_1557 = _StringConst_50
	set	_StringConst_50,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_1557  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	264,r13		! source line 264
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END IF...
_Label_1556:
! ASSIGNMENT STATEMENT...
	mov	266,r13		! source line 266
	mov	"\0\0AS",r10
!   count = count - 1		(int)
	load	[r14+8],r1
	load	[r1+4],r1
	mov	1,r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	load	[r14+8],r2
	store	r1,[r2+4]
! IF STATEMENT...
	mov	267,r13		! source line 267
	mov	"\0\0IF",r10
!   if count >= 0 then goto _Label_1559		(int)
	load	[r14+8],r1
	load	[r1+4],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_1559
!	jmp	_Label_1558
_Label_1558:
! THEN...
	mov	268,r13		! source line 268
	mov	"\0\0TN",r10
! SEND STATEMENT...
	mov	268,r13		! source line 268
	mov	"\0\0SE",r10
!   _temp_1560 = &waitingThreads
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=12  value=_P_Kernel_currentThread  sizeInBytes=4
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	store	r1,[r15+4]
!   Send message AddToEnd
	load	[r14+-12],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! SEND STATEMENT...
	mov	269,r13		! source line 269
	mov	"\0\0SE",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Send message Sleep
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,16,r2
	call	r2
! END IF...
_Label_1559:
! ASSIGNMENT STATEMENT...
	mov	271,r13		! source line 271
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=oldIntStat  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   Call the function
	mov	271,r13		! source line 271
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=oldIntStat  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-20]
! RETURN STATEMENT...
	mov	271,r13		! source line 271
	mov	"\0\0RE",r10
	add	r15,24,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_Semaphore_3:
	.word	_sourceFileName
	.word	_Label_1561
	.word	4		! total size of parameters
	.word	20		! frame size = 20
	.word	_Label_1562
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1563
	.word	-12
	.word	4
	.word	_Label_1564
	.word	-16
	.word	4
	.word	_Label_1565
	.word	-20
	.word	4
	.word	0
_Label_1561:
	.ascii	"Semaphore"
	.ascii	"::"
	.ascii	"Down\0"
	.align
_Label_1562:
	.ascii	"Pself\0"
	.align
_Label_1563:
	.byte	'?'
	.ascii	"_temp_1560\0"
	.align
_Label_1564:
	.byte	'?'
	.ascii	"_temp_1557\0"
	.align
_Label_1565:
	.byte	'I'
	.ascii	"oldIntStat\0"
	.align
! 
! ===============  CLASS Mutex  ===============
! 
! Dispatch Table:
! 
_P_Kernel_Mutex:
	.word	_Label_1566
	jmp	_Method_P_Kernel_Mutex_1	! 4:	Init
	jmp	_Method_P_Kernel_Mutex_2	! 8:	Lock
	jmp	_Method_P_Kernel_Mutex_3	! 12:	Unlock
	jmp	_Method_P_Kernel_Mutex_4	! 16:	IsHeldByCurrentThread
	.word	0
! 
! Class descriptor:
! 
_Label_1566:
	.word	1129070931		! Magic number 0x434c4153 == 'CLAS'
	.word	_Label_1567
	.word	_sourceFileName
	.word	142		! line number
	.word	20		! size of instances, in bytes
	.word	_P_Kernel_Mutex
	.word	_P_System_Object
	.word	0
_Label_1567:
	.ascii	"Mutex\0"
	.align
! 
! ===============  METHOD Init  ===============
! 
_Method_P_Kernel_Mutex_1:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_Mutex_1,r1
	push	r1
	mov	1,r1
_Label_4025:
	push	r0
	sub	r1,1,r1
	bne	_Label_4025
	mov	294,r13		! source line 294
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	295,r13		! source line 295
	mov	"\0\0AS",r10
!   NEW CLASS Constructor...
!   ZeroMemory: waitingThreads = zeros  (sizeInBytes=12)
	load	[r14+8],r4
	add	r4,8,r4
	store	r0,[r4]
	store	r0,[r4+4]
	store	r0,[r4+8]
!   waitingThreads = _P_List_List
	set	_P_List_List,r1
	load	[r14+8],r2
	store	r1,[r2+8]
! RETURN STATEMENT...
	mov	295,r13		! source line 295
	mov	"\0\0RE",r10
	add	r15,8,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_Mutex_1:
	.word	_sourceFileName
	.word	_Label_1569
	.word	4		! total size of parameters
	.word	4		! frame size = 4
	.word	_Label_1570
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1571
	.word	-12
	.word	4
	.word	0
_Label_1569:
	.ascii	"Mutex"
	.ascii	"::"
	.ascii	"Init\0"
	.align
_Label_1570:
	.ascii	"Pself\0"
	.align
_Label_1571:
	.byte	'?'
	.ascii	"_temp_1568\0"
	.align
! 
! ===============  METHOD Lock  ===============
! 
_Method_P_Kernel_Mutex_2:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_Mutex_2,r1
	push	r1
	mov	6,r1
_Label_4026:
	push	r0
	sub	r1,1,r1
	bne	_Label_4026
	mov	300,r13		! source line 300
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! IF STATEMENT...
	mov	303,r13		! source line 303
	mov	"\0\0IF",r10
!   if heldBy != _P_Kernel_currentThread then goto _Label_1573		(int)
	load	[r14+8],r1
	load	[r1+4],r1
	set	_P_Kernel_currentThread,r2
	load	[r2],r2
	cmp	r1,r2
	bne	_Label_1573
!	jmp	_Label_1572
_Label_1572:
! THEN...
	mov	304,r13		! source line 304
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_1574 = _StringConst_51
	set	_StringConst_51,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_1574  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	304,r13		! source line 304
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END IF...
_Label_1573:
! ASSIGNMENT STATEMENT...
	mov	306,r13		! source line 306
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=2  sizeInBytes=4
	mov	2,r1
	store	r1,[r15+0]
!   Call the function
	mov	306,r13		! source line 306
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=oldIntStat  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-24]
! IF STATEMENT...
	mov	307,r13		! source line 307
	mov	"\0\0IF",r10
!   if heldBy == 0 then goto _Label_1578		(int)
	load	[r14+8],r1
	load	[r1+4],r1
	mov	0,r2
	cmp	r1,r2
	be	_Label_1578
!   _temp_1577 = 1		(1 byte)
	mov	1,r1
	storeb	r1,[r14+-9]
	jmp	_Label_1579
_Label_1578:
!   _temp_1577 = 0		(1 byte)
	mov	0,r1
	storeb	r1,[r14+-9]
_Label_1579:
!   if _temp_1577 then goto _Label_1576 else goto _Label_1575
	loadb	[r14+-9],r1
	cmp	r1,0
	be	_Label_1575
	jmp	_Label_1576
_Label_1575:
! THEN...
	mov	308,r13		! source line 308
	mov	"\0\0TN",r10
! ASSIGNMENT STATEMENT...
	mov	308,r13		! source line 308
	mov	"\0\0AS",r10
!   heldBy = _P_Kernel_currentThread		(4 bytes)
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	load	[r14+8],r2
	store	r1,[r2+4]
	jmp	_Label_1580
_Label_1576:
! ELSE...
	mov	310,r13		! source line 310
	mov	"\0\0EL",r10
! SEND STATEMENT...
	mov	310,r13		! source line 310
	mov	"\0\0SE",r10
!   _temp_1581 = &waitingThreads
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=12  value=_P_Kernel_currentThread  sizeInBytes=4
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	store	r1,[r15+4]
!   Send message AddToEnd
	load	[r14+-16],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! SEND STATEMENT...
	mov	311,r13		! source line 311
	mov	"\0\0SE",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Send message Sleep
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,16,r2
	call	r2
! END IF...
_Label_1580:
! ASSIGNMENT STATEMENT...
	mov	313,r13		! source line 313
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=oldIntStat  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+0]
!   Call the function
	mov	313,r13		! source line 313
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=oldIntStat  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-24]
! RETURN STATEMENT...
	mov	313,r13		! source line 313
	mov	"\0\0RE",r10
	add	r15,28,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_Mutex_2:
	.word	_sourceFileName
	.word	_Label_1582
	.word	4		! total size of parameters
	.word	24		! frame size = 24
	.word	_Label_1583
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1584
	.word	-16
	.word	4
	.word	_Label_1585
	.word	-9
	.word	1
	.word	_Label_1586
	.word	-20
	.word	4
	.word	_Label_1587
	.word	-24
	.word	4
	.word	0
_Label_1582:
	.ascii	"Mutex"
	.ascii	"::"
	.ascii	"Lock\0"
	.align
_Label_1583:
	.ascii	"Pself\0"
	.align
_Label_1584:
	.byte	'?'
	.ascii	"_temp_1581\0"
	.align
_Label_1585:
	.byte	'C'
	.ascii	"_temp_1577\0"
	.align
_Label_1586:
	.byte	'?'
	.ascii	"_temp_1574\0"
	.align
_Label_1587:
	.byte	'I'
	.ascii	"oldIntStat\0"
	.align
! 
! ===============  METHOD Unlock  ===============
! 
_Method_P_Kernel_Mutex_3:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_Mutex_3,r1
	push	r1
	mov	8,r1
_Label_4027:
	push	r0
	sub	r1,1,r1
	bne	_Label_4027
	mov	318,r13		! source line 318
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! IF STATEMENT...
	mov	322,r13		! source line 322
	mov	"\0\0IF",r10
!   if heldBy == _P_Kernel_currentThread then goto _Label_1589		(int)
	load	[r14+8],r1
	load	[r1+4],r1
	set	_P_Kernel_currentThread,r2
	load	[r2],r2
	cmp	r1,r2
	be	_Label_1589
!	jmp	_Label_1588
_Label_1588:
! THEN...
	mov	323,r13		! source line 323
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_1590 = _StringConst_52
	set	_StringConst_52,r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=8  value=_temp_1590  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	323,r13		! source line 323
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END IF...
_Label_1589:
! ASSIGNMENT STATEMENT...
	mov	325,r13		! source line 325
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=2  sizeInBytes=4
	mov	2,r1
	store	r1,[r15+0]
!   Call the function
	mov	325,r13		! source line 325
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=oldIntStat  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-28]
! ASSIGNMENT STATEMENT...
	mov	326,r13		! source line 326
	mov	"\0\0AS",r10
	mov	326,r13		! source line 326
	mov	"\0\0SE",r10
!   _temp_1591 = &waitingThreads
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-20]
!   Send message Remove
	load	[r14+-20],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
!   Retrieve Result: targetName=t  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-32]
! IF STATEMENT...
	mov	327,r13		! source line 327
	mov	"\0\0IF",r10
!   if t == 0 then goto _Label_1593		(int)
	load	[r14+-32],r1
	mov	0,r2
	cmp	r1,r2
	be	_Label_1593
!	jmp	_Label_1592
_Label_1592:
! THEN...
	mov	328,r13		! source line 328
	mov	"\0\0TN",r10
! ASSIGNMENT STATEMENT...
	mov	328,r13		! source line 328
	mov	"\0\0AS",r10
!   if intIsZero (t) then goto _runtimeErrorNullPointer
	load	[r14+-32],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1594 = t + 76
	load	[r14+-32],r1
	add	r1,76,r1
	store	r1,[r14+-16]
!   Data Move: *_temp_1594 = 2  (sizeInBytes=4)
	mov	2,r1
	load	[r14+-16],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	329,r13		! source line 329
	mov	"\0\0SE",r10
!   _temp_1595 = &_P_Kernel_readyList
	set	_P_Kernel_readyList,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=12  value=t  sizeInBytes=4
	load	[r14+-32],r1
	store	r1,[r15+4]
!   Send message AddToEnd
	load	[r14+-12],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! ASSIGNMENT STATEMENT...
	mov	330,r13		! source line 330
	mov	"\0\0AS",r10
!   heldBy = t		(4 bytes)
	load	[r14+-32],r1
	load	[r14+8],r2
	store	r1,[r2+4]
	jmp	_Label_1596
_Label_1593:
! ELSE...
	mov	332,r13		! source line 332
	mov	"\0\0EL",r10
! ASSIGNMENT STATEMENT...
	mov	332,r13		! source line 332
	mov	"\0\0AS",r10
!   heldBy = 0		(4 bytes)
	mov	0,r1
	load	[r14+8],r2
	store	r1,[r2+4]
! END IF...
_Label_1596:
! ASSIGNMENT STATEMENT...
	mov	334,r13		! source line 334
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=oldIntStat  sizeInBytes=4
	load	[r14+-28],r1
	store	r1,[r15+0]
!   Call the function
	mov	334,r13		! source line 334
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=oldIntStat  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-28]
! RETURN STATEMENT...
	mov	334,r13		! source line 334
	mov	"\0\0RE",r10
	add	r15,36,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_Mutex_3:
	.word	_sourceFileName
	.word	_Label_1597
	.word	4		! total size of parameters
	.word	32		! frame size = 32
	.word	_Label_1598
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1599
	.word	-12
	.word	4
	.word	_Label_1600
	.word	-16
	.word	4
	.word	_Label_1601
	.word	-20
	.word	4
	.word	_Label_1602
	.word	-24
	.word	4
	.word	_Label_1603
	.word	-28
	.word	4
	.word	_Label_1604
	.word	-32
	.word	4
	.word	0
_Label_1597:
	.ascii	"Mutex"
	.ascii	"::"
	.ascii	"Unlock\0"
	.align
_Label_1598:
	.ascii	"Pself\0"
	.align
_Label_1599:
	.byte	'?'
	.ascii	"_temp_1595\0"
	.align
_Label_1600:
	.byte	'?'
	.ascii	"_temp_1594\0"
	.align
_Label_1601:
	.byte	'?'
	.ascii	"_temp_1591\0"
	.align
_Label_1602:
	.byte	'?'
	.ascii	"_temp_1590\0"
	.align
_Label_1603:
	.byte	'I'
	.ascii	"oldIntStat\0"
	.align
_Label_1604:
	.byte	'P'
	.ascii	"t\0"
	.align
! 
! ===============  METHOD IsHeldByCurrentThread  ===============
! 
_Method_P_Kernel_Mutex_4:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_Mutex_4,r1
	push	r1
	mov	1,r1
_Label_4028:
	push	r0
	sub	r1,1,r1
	bne	_Label_4028
	mov	339,r13		! source line 339
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! RETURN STATEMENT...
	mov	340,r13		! source line 340
	mov	"\0\0RE",r10
!   if heldBy != _P_Kernel_currentThread then goto _Label_1607		(int)
	load	[r14+8],r1
	load	[r1+4],r1
	set	_P_Kernel_currentThread,r2
	load	[r2],r2
	cmp	r1,r2
	bne	_Label_1607
!	jmp	_Label_1606
_Label_1606:
!   _temp_1605 = 1		(1 byte)
	mov	1,r1
	storeb	r1,[r14+-9]
	jmp	_Label_1608
_Label_1607:
!   _temp_1605 = 0		(1 byte)
	mov	0,r1
	storeb	r1,[r14+-9]
_Label_1608:
!   ReturnResult: _temp_1605  (sizeInBytes=1)
	loadb	[r14+-9],r1
	storeb	r1,[r14+8]
	add	r15,8,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_Mutex_4:
	.word	_sourceFileName
	.word	_Label_1609
	.word	4		! total size of parameters
	.word	4		! frame size = 4
	.word	_Label_1610
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1611
	.word	-9
	.word	1
	.word	0
_Label_1609:
	.ascii	"Mutex"
	.ascii	"::"
	.ascii	"IsHeldByCurrentThread\0"
	.align
_Label_1610:
	.ascii	"Pself\0"
	.align
_Label_1611:
	.byte	'C'
	.ascii	"_temp_1605\0"
	.align
! 
! ===============  CLASS Condition  ===============
! 
! Dispatch Table:
! 
_P_Kernel_Condition:
	.word	_Label_1612
	jmp	_Method_P_Kernel_Condition_1	! 4:	Init
	jmp	_Method_P_Kernel_Condition_2	! 8:	Wait
	jmp	_Method_P_Kernel_Condition_3	! 12:	Signal
	jmp	_Method_P_Kernel_Condition_4	! 16:	Broadcast
	.word	0
! 
! Class descriptor:
! 
_Label_1612:
	.word	1129070931		! Magic number 0x434c4153 == 'CLAS'
	.word	_Label_1613
	.word	_sourceFileName
	.word	156		! line number
	.word	16		! size of instances, in bytes
	.word	_P_Kernel_Condition
	.word	_P_System_Object
	.word	0
_Label_1613:
	.ascii	"Condition\0"
	.align
! 
! ===============  METHOD Init  ===============
! 
_Method_P_Kernel_Condition_1:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_Condition_1,r1
	push	r1
	mov	1,r1
_Label_4029:
	push	r0
	sub	r1,1,r1
	bne	_Label_4029
	mov	380,r13		! source line 380
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	381,r13		! source line 381
	mov	"\0\0AS",r10
!   NEW CLASS Constructor...
!   ZeroMemory: waitingThreads = zeros  (sizeInBytes=12)
	load	[r14+8],r4
	add	r4,4,r4
	store	r0,[r4]
	store	r0,[r4+4]
	store	r0,[r4+8]
!   waitingThreads = _P_List_List
	set	_P_List_List,r1
	load	[r14+8],r2
	store	r1,[r2+4]
! RETURN STATEMENT...
	mov	381,r13		! source line 381
	mov	"\0\0RE",r10
	add	r15,8,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_Condition_1:
	.word	_sourceFileName
	.word	_Label_1615
	.word	4		! total size of parameters
	.word	4		! frame size = 4
	.word	_Label_1616
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1617
	.word	-12
	.word	4
	.word	0
_Label_1615:
	.ascii	"Condition"
	.ascii	"::"
	.ascii	"Init\0"
	.align
_Label_1616:
	.ascii	"Pself\0"
	.align
_Label_1617:
	.byte	'?'
	.ascii	"_temp_1614\0"
	.align
! 
! ===============  METHOD Wait  ===============
! 
_Method_P_Kernel_Condition_2:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_Condition_2,r1
	push	r1
	mov	6,r1
_Label_4030:
	push	r0
	sub	r1,1,r1
	bne	_Label_4030
	mov	386,r13		! source line 386
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! IF STATEMENT...
	mov	389,r13		! source line 389
	mov	"\0\0IF",r10
	mov	389,r13		! source line 389
	mov	"\0\0SE",r10
!   if intIsZero (mutex) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Send message IsHeldByCurrentThread
	load	[r14+12],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,16,r2
	call	r2
!   Retrieve Result: targetName=_temp_1620  sizeInBytes=1
	loadb	[r15],r1
	storeb	r1,[r14+-9]
!   if _temp_1620 then goto _Label_1619 else goto _Label_1618
	loadb	[r14+-9],r1
	cmp	r1,0
	be	_Label_1618
	jmp	_Label_1619
_Label_1618:
! THEN...
	mov	390,r13		! source line 390
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_1621 = _StringConst_53
	set	_StringConst_53,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_1621  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	390,r13		! source line 390
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END IF...
_Label_1619:
! ASSIGNMENT STATEMENT...
	mov	392,r13		! source line 392
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=2  sizeInBytes=4
	mov	2,r1
	store	r1,[r15+0]
!   Call the function
	mov	392,r13		! source line 392
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=oldIntStat  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-24]
! SEND STATEMENT...
	mov	393,r13		! source line 393
	mov	"\0\0SE",r10
!   if intIsZero (mutex) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Send message Unlock
	load	[r14+12],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
! SEND STATEMENT...
	mov	394,r13		! source line 394
	mov	"\0\0SE",r10
!   _temp_1622 = &waitingThreads
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=12  value=_P_Kernel_currentThread  sizeInBytes=4
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	store	r1,[r15+4]
!   Send message AddToEnd
	load	[r14+-16],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! SEND STATEMENT...
	mov	395,r13		! source line 395
	mov	"\0\0SE",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Send message Sleep
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,16,r2
	call	r2
! SEND STATEMENT...
	mov	396,r13		! source line 396
	mov	"\0\0SE",r10
!   if intIsZero (mutex) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Send message Lock
	load	[r14+12],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! ASSIGNMENT STATEMENT...
	mov	397,r13		! source line 397
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=oldIntStat  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+0]
!   Call the function
	mov	397,r13		! source line 397
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=oldIntStat  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-24]
! RETURN STATEMENT...
	mov	397,r13		! source line 397
	mov	"\0\0RE",r10
	add	r15,28,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_Condition_2:
	.word	_sourceFileName
	.word	_Label_1623
	.word	8		! total size of parameters
	.word	24		! frame size = 24
	.word	_Label_1624
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1625
	.word	12
	.word	4
	.word	_Label_1626
	.word	-16
	.word	4
	.word	_Label_1627
	.word	-20
	.word	4
	.word	_Label_1628
	.word	-9
	.word	1
	.word	_Label_1629
	.word	-24
	.word	4
	.word	0
_Label_1623:
	.ascii	"Condition"
	.ascii	"::"
	.ascii	"Wait\0"
	.align
_Label_1624:
	.ascii	"Pself\0"
	.align
_Label_1625:
	.byte	'P'
	.ascii	"mutex\0"
	.align
_Label_1626:
	.byte	'?'
	.ascii	"_temp_1622\0"
	.align
_Label_1627:
	.byte	'?'
	.ascii	"_temp_1621\0"
	.align
_Label_1628:
	.byte	'C'
	.ascii	"_temp_1620\0"
	.align
_Label_1629:
	.byte	'I'
	.ascii	"oldIntStat\0"
	.align
! 
! ===============  METHOD Signal  ===============
! 
_Method_P_Kernel_Condition_3:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_Condition_3,r1
	push	r1
	mov	9,r1
_Label_4031:
	push	r0
	sub	r1,1,r1
	bne	_Label_4031
	mov	402,r13		! source line 402
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! IF STATEMENT...
	mov	406,r13		! source line 406
	mov	"\0\0IF",r10
	mov	406,r13		! source line 406
	mov	"\0\0SE",r10
!   if intIsZero (mutex) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Send message IsHeldByCurrentThread
	load	[r14+12],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,16,r2
	call	r2
!   Retrieve Result: targetName=_temp_1632  sizeInBytes=1
	loadb	[r15],r1
	storeb	r1,[r14+-9]
!   if _temp_1632 then goto _Label_1631 else goto _Label_1630
	loadb	[r14+-9],r1
	cmp	r1,0
	be	_Label_1630
	jmp	_Label_1631
_Label_1630:
! THEN...
	mov	407,r13		! source line 407
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_1633 = _StringConst_54
	set	_StringConst_54,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=8  value=_temp_1633  sizeInBytes=4
	load	[r14+-28],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	407,r13		! source line 407
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END IF...
_Label_1631:
! ASSIGNMENT STATEMENT...
	mov	409,r13		! source line 409
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=2  sizeInBytes=4
	mov	2,r1
	store	r1,[r15+0]
!   Call the function
	mov	409,r13		! source line 409
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=oldIntStat  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-32]
! ASSIGNMENT STATEMENT...
	mov	410,r13		! source line 410
	mov	"\0\0AS",r10
	mov	410,r13		! source line 410
	mov	"\0\0SE",r10
!   _temp_1634 = &waitingThreads
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-24]
!   Send message Remove
	load	[r14+-24],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
!   Retrieve Result: targetName=t  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-36]
! IF STATEMENT...
	mov	411,r13		! source line 411
	mov	"\0\0IF",r10
!   if t == 0 then goto _Label_1636		(int)
	load	[r14+-36],r1
	mov	0,r2
	cmp	r1,r2
	be	_Label_1636
!	jmp	_Label_1635
_Label_1635:
! THEN...
	mov	412,r13		! source line 412
	mov	"\0\0TN",r10
! ASSIGNMENT STATEMENT...
	mov	412,r13		! source line 412
	mov	"\0\0AS",r10
!   if intIsZero (t) then goto _runtimeErrorNullPointer
	load	[r14+-36],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1637 = t + 76
	load	[r14+-36],r1
	add	r1,76,r1
	store	r1,[r14+-20]
!   Data Move: *_temp_1637 = 2  (sizeInBytes=4)
	mov	2,r1
	load	[r14+-20],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	413,r13		! source line 413
	mov	"\0\0SE",r10
!   _temp_1638 = &_P_Kernel_readyList
	set	_P_Kernel_readyList,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=12  value=t  sizeInBytes=4
	load	[r14+-36],r1
	store	r1,[r15+4]
!   Send message AddToEnd
	load	[r14+-16],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! END IF...
_Label_1636:
! ASSIGNMENT STATEMENT...
	mov	415,r13		! source line 415
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=oldIntStat  sizeInBytes=4
	load	[r14+-32],r1
	store	r1,[r15+0]
!   Call the function
	mov	415,r13		! source line 415
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=oldIntStat  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-32]
! RETURN STATEMENT...
	mov	415,r13		! source line 415
	mov	"\0\0RE",r10
	add	r15,40,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_Condition_3:
	.word	_sourceFileName
	.word	_Label_1639
	.word	8		! total size of parameters
	.word	36		! frame size = 36
	.word	_Label_1640
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1641
	.word	12
	.word	4
	.word	_Label_1642
	.word	-16
	.word	4
	.word	_Label_1643
	.word	-20
	.word	4
	.word	_Label_1644
	.word	-24
	.word	4
	.word	_Label_1645
	.word	-28
	.word	4
	.word	_Label_1646
	.word	-9
	.word	1
	.word	_Label_1647
	.word	-32
	.word	4
	.word	_Label_1648
	.word	-36
	.word	4
	.word	0
_Label_1639:
	.ascii	"Condition"
	.ascii	"::"
	.ascii	"Signal\0"
	.align
_Label_1640:
	.ascii	"Pself\0"
	.align
_Label_1641:
	.byte	'P'
	.ascii	"mutex\0"
	.align
_Label_1642:
	.byte	'?'
	.ascii	"_temp_1638\0"
	.align
_Label_1643:
	.byte	'?'
	.ascii	"_temp_1637\0"
	.align
_Label_1644:
	.byte	'?'
	.ascii	"_temp_1634\0"
	.align
_Label_1645:
	.byte	'?'
	.ascii	"_temp_1633\0"
	.align
_Label_1646:
	.byte	'C'
	.ascii	"_temp_1632\0"
	.align
_Label_1647:
	.byte	'I'
	.ascii	"oldIntStat\0"
	.align
_Label_1648:
	.byte	'P'
	.ascii	"t\0"
	.align
! 
! ===============  METHOD Broadcast  ===============
! 
_Method_P_Kernel_Condition_4:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_Condition_4,r1
	push	r1
	mov	9,r1
_Label_4032:
	push	r0
	sub	r1,1,r1
	bne	_Label_4032
	mov	420,r13		! source line 420
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! IF STATEMENT...
	mov	424,r13		! source line 424
	mov	"\0\0IF",r10
	mov	424,r13		! source line 424
	mov	"\0\0SE",r10
!   if intIsZero (mutex) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Send message IsHeldByCurrentThread
	load	[r14+12],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,16,r2
	call	r2
!   Retrieve Result: targetName=_temp_1651  sizeInBytes=1
	loadb	[r15],r1
	storeb	r1,[r14+-9]
!   if _temp_1651 then goto _Label_1650 else goto _Label_1649
	loadb	[r14+-9],r1
	cmp	r1,0
	be	_Label_1649
	jmp	_Label_1650
_Label_1649:
! THEN...
	mov	425,r13		! source line 425
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_1652 = _StringConst_55
	set	_StringConst_55,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=8  value=_temp_1652  sizeInBytes=4
	load	[r14+-28],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	425,r13		! source line 425
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END IF...
_Label_1650:
! ASSIGNMENT STATEMENT...
	mov	427,r13		! source line 427
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=2  sizeInBytes=4
	mov	2,r1
	store	r1,[r15+0]
!   Call the function
	mov	427,r13		! source line 427
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=oldIntStat  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-32]
! WHILE STATEMENT...
	mov	428,r13		! source line 428
	mov	"\0\0WH",r10
_Label_1653:
!	jmp	_Label_1654
_Label_1654:
	mov	428,r13		! source line 428
	mov	"\0\0WB",r10
! ASSIGNMENT STATEMENT...
	mov	429,r13		! source line 429
	mov	"\0\0AS",r10
	mov	429,r13		! source line 429
	mov	"\0\0SE",r10
!   _temp_1656 = &waitingThreads
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-24]
!   Send message Remove
	load	[r14+-24],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
!   Retrieve Result: targetName=t  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-36]
! IF STATEMENT...
	mov	431,r13		! source line 431
	mov	"\0\0IF",r10
!   if intIsZero (t) then goto _Label_1657
	load	[r14+-36],r1
	cmp	r1,r0
	be	_Label_1657
	jmp	_Label_1658
_Label_1657:
! THEN...
	mov	432,r13		! source line 432
	mov	"\0\0TN",r10
! BREAK STATEMENT...
	mov	432,r13		! source line 432
	mov	"\0\0BR",r10
	jmp	_Label_1655
! END IF...
_Label_1658:
! ASSIGNMENT STATEMENT...
	mov	434,r13		! source line 434
	mov	"\0\0AS",r10
!   if intIsZero (t) then goto _runtimeErrorNullPointer
	load	[r14+-36],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1659 = t + 76
	load	[r14+-36],r1
	add	r1,76,r1
	store	r1,[r14+-20]
!   Data Move: *_temp_1659 = 2  (sizeInBytes=4)
	mov	2,r1
	load	[r14+-20],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	435,r13		! source line 435
	mov	"\0\0SE",r10
!   _temp_1660 = &_P_Kernel_readyList
	set	_P_Kernel_readyList,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=12  value=t  sizeInBytes=4
	load	[r14+-36],r1
	store	r1,[r15+4]
!   Send message AddToEnd
	load	[r14+-16],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! END WHILE...
	jmp	_Label_1653
_Label_1655:
! ASSIGNMENT STATEMENT...
	mov	437,r13		! source line 437
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=oldIntStat  sizeInBytes=4
	load	[r14+-32],r1
	store	r1,[r15+0]
!   Call the function
	mov	437,r13		! source line 437
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=oldIntStat  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-32]
! RETURN STATEMENT...
	mov	437,r13		! source line 437
	mov	"\0\0RE",r10
	add	r15,40,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_Condition_4:
	.word	_sourceFileName
	.word	_Label_1661
	.word	8		! total size of parameters
	.word	36		! frame size = 36
	.word	_Label_1662
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1663
	.word	12
	.word	4
	.word	_Label_1664
	.word	-16
	.word	4
	.word	_Label_1665
	.word	-20
	.word	4
	.word	_Label_1666
	.word	-24
	.word	4
	.word	_Label_1667
	.word	-28
	.word	4
	.word	_Label_1668
	.word	-9
	.word	1
	.word	_Label_1669
	.word	-32
	.word	4
	.word	_Label_1670
	.word	-36
	.word	4
	.word	0
_Label_1661:
	.ascii	"Condition"
	.ascii	"::"
	.ascii	"Broadcast\0"
	.align
_Label_1662:
	.ascii	"Pself\0"
	.align
_Label_1663:
	.byte	'P'
	.ascii	"mutex\0"
	.align
_Label_1664:
	.byte	'?'
	.ascii	"_temp_1660\0"
	.align
_Label_1665:
	.byte	'?'
	.ascii	"_temp_1659\0"
	.align
_Label_1666:
	.byte	'?'
	.ascii	"_temp_1656\0"
	.align
_Label_1667:
	.byte	'?'
	.ascii	"_temp_1652\0"
	.align
_Label_1668:
	.byte	'C'
	.ascii	"_temp_1651\0"
	.align
_Label_1669:
	.byte	'I'
	.ascii	"oldIntStat\0"
	.align
_Label_1670:
	.byte	'P'
	.ascii	"t\0"
	.align
! 
! ===============  CLASS Thread  ===============
! 
! Dispatch Table:
! 
_P_Kernel_Thread:
	.word	_Label_1671
	jmp	_Method_P_Kernel_Thread_1	! 4:	Init
	jmp	_Method_P_Kernel_Thread_2	! 8:	Fork
	jmp	_Method_P_Kernel_Thread_3	! 12:	Yield
	jmp	_Method_P_Kernel_Thread_4	! 16:	Sleep
	jmp	_Method_P_Kernel_Thread_5	! 20:	CheckOverflow
	jmp	_Method_P_Kernel_Thread_6	! 24:	Print
	.word	0
! 
! Class descriptor:
! 
_Label_1671:
	.word	1129070931		! Magic number 0x434c4153 == 'CLAS'
	.word	_Label_1672
	.word	_sourceFileName
	.word	169		! line number
	.word	4164		! size of instances, in bytes
	.word	_P_Kernel_Thread
	.word	_P_List_Listable
	.word	_P_System_Object
	.word	0
_Label_1672:
	.ascii	"Thread\0"
	.align
! 
! ===============  METHOD Init  ===============
! 
_Method_P_Kernel_Thread_1:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_Thread_1,r1
	push	r1
	mov	45,r1
_Label_4033:
	push	r0
	sub	r1,1,r1
	bne	_Label_4033
	mov	448,r13		! source line 448
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	453,r13		! source line 453
	mov	"\0\0AS",r10
!   name = n		(4 bytes)
	load	[r14+12],r1
	load	[r14+8],r2
	store	r1,[r2+72]
! ASSIGNMENT STATEMENT...
	mov	454,r13		! source line 454
	mov	"\0\0AS",r10
!   status = 1		(4 bytes)
	mov	1,r1
	load	[r14+8],r2
	store	r1,[r2+76]
! ASSIGNMENT STATEMENT...
	mov	456,r13		! source line 456
	mov	"\0\0AS",r10
!   _temp_1673 = &systemStack
	load	[r14+8],r1
	add	r1,88,r1
	store	r1,[r14+-188]
!   if intIsZero (_temp_1673) then goto _runtimeErrorNullPointer
	load	[r14+-188],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Data Move: *_temp_1673 = 1000  (sizeInBytes=4)
	mov	1000,r1
	load	[r14+-188],r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	457,r13		! source line 457
	mov	"\0\0AS",r10
!   _temp_1674 = &systemStack
	load	[r14+8],r1
	add	r1,88,r1
	store	r1,[r14+-184]
!   Move address of _temp_1674 [0 ] into _temp_1675
!     make sure index expr is >= 0
	mov	0,r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-184],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	4,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-180]
!   Data Move: *_temp_1675 = 606348324  (sizeInBytes=4)
	set	606348324,r1
	load	[r14+-180],r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	458,r13		! source line 458
	mov	"\0\0AS",r10
!   _temp_1676 = &systemStack
	load	[r14+8],r1
	add	r1,88,r1
	store	r1,[r14+-176]
!   Move address of _temp_1676 [999 ] into _temp_1677
!     make sure index expr is >= 0
	mov	999,r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-176],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	4,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-172]
!   Data Move: *_temp_1677 = 606348324  (sizeInBytes=4)
	set	606348324,r1
	load	[r14+-172],r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	459,r13		! source line 459
	mov	"\0\0AS",r10
!   _temp_1678 = &systemStack
	load	[r14+8],r1
	add	r1,88,r1
	store	r1,[r14+-168]
!   Move address of _temp_1678 [999 ] into _temp_1679
!     make sure index expr is >= 0
	mov	999,r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-168],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	4,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-164]
!   stackTop = _temp_1679		(4 bytes)
	load	[r14+-164],r1
	load	[r14+8],r2
	store	r1,[r2+68]
! ASSIGNMENT STATEMENT...
	mov	460,r13		! source line 460
	mov	"\0\0AS",r10
!   _temp_1680 = &regs
	load	[r14+8],r1
	add	r1,12,r1
	store	r1,[r14+-160]
!   NEW ARRAY Constructor...
!   _temp_1682 = &_temp_1681
	add	r14,-156,r1
	store	r1,[r14+-100]
!   _temp_1682 = _temp_1682 + 4
	load	[r14+-100],r1
	add	r1,4,r1
	store	r1,[r14+-100]
!   Next value...
	mov	13,r1
	store	r1,[r14+-96]
_Label_1684:
!   Data Move: *_temp_1682 = 0  (sizeInBytes=4)
	mov	0,r1
	load	[r14+-100],r2
	store	r1,[r2]
!   _temp_1682 = _temp_1682 + 4
	load	[r14+-100],r1
	add	r1,4,r1
	store	r1,[r14+-100]
!   _temp_1683 = _temp_1683 + -1
	load	[r14+-96],r1
	add	r1,-1,r1
	store	r1,[r14+-96]
!   if intNotZero (_temp_1683) then goto _Label_1684
	load	[r14+-96],r1
	cmp	r1,r0
	bne	_Label_1684
!   Initialize the array size...
	mov	13,r1
	store	r1,[r14+-156]
!   _temp_1685 = &_temp_1681
	add	r14,-156,r1
	store	r1,[r14+-92]
!   make sure array has size 13
	load	[r14+-160],r1
	load	[r1],r1
	set	13, r2
	cmp	r1,0
	be	_Label_4034
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bne	_runtimeErrorWrongArraySize
_Label_4034:
!   make sure array has size 13
	load	[r14+-92],r1
	load	[r1],r1
	set	13, r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bne	_runtimeErrorWrongArraySize
!   Data Move: *_temp_1680 = *_temp_1685  (sizeInBytes=56)
	load	[r14+-92],r5
	load	[r14+-160],r4
	mov	14,r3
_Label_4035:
	load	[r5],r1
	add	r5,4,r5
	store	r1,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_4035
! ASSIGNMENT STATEMENT...
	mov	461,r13		! source line 461
	mov	"\0\0AS",r10
!   isUserThread = 0		(1 byte)
	mov	0,r1
	load	[r14+8],r2
	storeb	r1,[r2+4092]
! ASSIGNMENT STATEMENT...
	mov	462,r13		! source line 462
	mov	"\0\0AS",r10
!   _temp_1686 = &userRegs
	load	[r14+8],r1
	add	r1,4096,r1
	store	r1,[r14+-88]
!   NEW ARRAY Constructor...
!   _temp_1688 = &_temp_1687
	add	r14,-84,r1
	store	r1,[r14+-20]
!   _temp_1688 = _temp_1688 + 4
	load	[r14+-20],r1
	add	r1,4,r1
	store	r1,[r14+-20]
!   Next value...
	mov	15,r1
	store	r1,[r14+-16]
_Label_1690:
!   Data Move: *_temp_1688 = 0  (sizeInBytes=4)
	mov	0,r1
	load	[r14+-20],r2
	store	r1,[r2]
!   _temp_1688 = _temp_1688 + 4
	load	[r14+-20],r1
	add	r1,4,r1
	store	r1,[r14+-20]
!   _temp_1689 = _temp_1689 + -1
	load	[r14+-16],r1
	add	r1,-1,r1
	store	r1,[r14+-16]
!   if intNotZero (_temp_1689) then goto _Label_1690
	load	[r14+-16],r1
	cmp	r1,r0
	bne	_Label_1690
!   Initialize the array size...
	mov	15,r1
	store	r1,[r14+-84]
!   _temp_1691 = &_temp_1687
	add	r14,-84,r1
	store	r1,[r14+-12]
!   make sure array has size 15
	load	[r14+-88],r1
	load	[r1],r1
	set	15, r2
	cmp	r1,0
	be	_Label_4036
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bne	_runtimeErrorWrongArraySize
_Label_4036:
!   make sure array has size 15
	load	[r14+-12],r1
	load	[r1],r1
	set	15, r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bne	_runtimeErrorWrongArraySize
!   Data Move: *_temp_1686 = *_temp_1691  (sizeInBytes=64)
	load	[r14+-12],r5
	load	[r14+-88],r4
	mov	16,r3
_Label_4037:
	load	[r5],r1
	add	r5,4,r5
	store	r1,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_4037
! RETURN STATEMENT...
	mov	462,r13		! source line 462
	mov	"\0\0RE",r10
	add	r15,184,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_Thread_1:
	.word	_sourceFileName
	.word	_Label_1692
	.word	8		! total size of parameters
	.word	180		! frame size = 180
	.word	_Label_1693
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1694
	.word	12
	.word	4
	.word	_Label_1695
	.word	-12
	.word	4
	.word	_Label_1696
	.word	-16
	.word	4
	.word	_Label_1697
	.word	-20
	.word	4
	.word	_Label_1698
	.word	-84
	.word	64
	.word	_Label_1699
	.word	-88
	.word	4
	.word	_Label_1700
	.word	-92
	.word	4
	.word	_Label_1701
	.word	-96
	.word	4
	.word	_Label_1702
	.word	-100
	.word	4
	.word	_Label_1703
	.word	-156
	.word	56
	.word	_Label_1704
	.word	-160
	.word	4
	.word	_Label_1705
	.word	-164
	.word	4
	.word	_Label_1706
	.word	-168
	.word	4
	.word	_Label_1707
	.word	-172
	.word	4
	.word	_Label_1708
	.word	-176
	.word	4
	.word	_Label_1709
	.word	-180
	.word	4
	.word	_Label_1710
	.word	-184
	.word	4
	.word	_Label_1711
	.word	-188
	.word	4
	.word	0
_Label_1692:
	.ascii	"Thread"
	.ascii	"::"
	.ascii	"Init\0"
	.align
_Label_1693:
	.ascii	"Pself\0"
	.align
_Label_1694:
	.byte	'P'
	.ascii	"n\0"
	.align
_Label_1695:
	.byte	'?'
	.ascii	"_temp_1691\0"
	.align
_Label_1696:
	.byte	'?'
	.ascii	"_temp_1689\0"
	.align
_Label_1697:
	.byte	'?'
	.ascii	"_temp_1688\0"
	.align
_Label_1698:
	.byte	'?'
	.ascii	"_temp_1687\0"
	.align
_Label_1699:
	.byte	'?'
	.ascii	"_temp_1686\0"
	.align
_Label_1700:
	.byte	'?'
	.ascii	"_temp_1685\0"
	.align
_Label_1701:
	.byte	'?'
	.ascii	"_temp_1683\0"
	.align
_Label_1702:
	.byte	'?'
	.ascii	"_temp_1682\0"
	.align
_Label_1703:
	.byte	'?'
	.ascii	"_temp_1681\0"
	.align
_Label_1704:
	.byte	'?'
	.ascii	"_temp_1680\0"
	.align
_Label_1705:
	.byte	'?'
	.ascii	"_temp_1679\0"
	.align
_Label_1706:
	.byte	'?'
	.ascii	"_temp_1678\0"
	.align
_Label_1707:
	.byte	'?'
	.ascii	"_temp_1677\0"
	.align
_Label_1708:
	.byte	'?'
	.ascii	"_temp_1676\0"
	.align
_Label_1709:
	.byte	'?'
	.ascii	"_temp_1675\0"
	.align
_Label_1710:
	.byte	'?'
	.ascii	"_temp_1674\0"
	.align
_Label_1711:
	.byte	'?'
	.ascii	"_temp_1673\0"
	.align
! 
! ===============  METHOD Fork  ===============
! 
_Method_P_Kernel_Thread_2:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_Thread_2,r1
	push	r1
	mov	7,r1
_Label_4038:
	push	r0
	sub	r1,1,r1
	bne	_Label_4038
	mov	467,r13		! source line 467
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	478,r13		! source line 478
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=2  sizeInBytes=4
	mov	2,r1
	store	r1,[r15+0]
!   Call the function
	mov	478,r13		! source line 478
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=oldIntStat  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-24]
! ASSIGNMENT STATEMENT...
	mov	480,r13		! source line 480
	mov	"\0\0AS",r10
!   initialFunction = fun		(4 bytes)
	load	[r14+12],r1
	load	[r14+8],r2
	store	r1,[r2+80]
! ASSIGNMENT STATEMENT...
	mov	481,r13		! source line 481
	mov	"\0\0AS",r10
!   initialArgument = arg		(4 bytes)
	load	[r14+16],r1
	load	[r14+8],r2
	store	r1,[r2+84]
! ASSIGNMENT STATEMENT...
	mov	482,r13		! source line 482
	mov	"\0\0AS",r10
!   stackTop = stackTop - 4		(int)
	load	[r14+8],r1
	load	[r1+68],r1
	mov	4,r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	load	[r14+8],r2
	store	r1,[r2+68]
! ASSIGNMENT STATEMENT...
	mov	483,r13		! source line 483
	mov	"\0\0AS",r10
!   if intIsZero (stackTop) then goto _runtimeErrorNullPointer
	load	[r14+8],r1
	load	[r1+68],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1712 = ThreadStartUp
	set	ThreadStartUp,r1
	store	r1,[r14+-20]
!   Data Move: *stackTop = _temp_1712  (sizeInBytes=4)
	load	[r14+-20],r1
	load	[r14+8],r2
	load	[r2+68],r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	484,r13		! source line 484
	mov	"\0\0AS",r10
!   status = 2		(4 bytes)
	mov	2,r1
	load	[r14+8],r2
	store	r1,[r2+76]
! SEND STATEMENT...
	mov	485,r13		! source line 485
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-16]
!   _temp_1714 = &_P_Kernel_readyList
	set	_P_Kernel_readyList,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=12  value=_temp_1713  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+4]
!   Send message AddToEnd
	load	[r14+-12],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! ASSIGNMENT STATEMENT...
	mov	486,r13		! source line 486
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=oldIntStat  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+0]
!   Call the function
	mov	486,r13		! source line 486
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=junk  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-28]
! RETURN STATEMENT...
	mov	486,r13		! source line 486
	mov	"\0\0RE",r10
	add	r15,32,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_Thread_2:
	.word	_sourceFileName
	.word	_Label_1715
	.word	12		! total size of parameters
	.word	28		! frame size = 28
	.word	_Label_1716
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1717
	.word	12
	.word	4
	.word	_Label_1718
	.word	16
	.word	4
	.word	_Label_1719
	.word	-12
	.word	4
	.word	_Label_1720
	.word	-16
	.word	4
	.word	_Label_1721
	.word	-20
	.word	4
	.word	_Label_1722
	.word	-24
	.word	4
	.word	_Label_1723
	.word	-28
	.word	4
	.word	0
_Label_1715:
	.ascii	"Thread"
	.ascii	"::"
	.ascii	"Fork\0"
	.align
_Label_1716:
	.ascii	"Pself\0"
	.align
_Label_1717:
	.byte	'P'
	.ascii	"fun\0"
	.align
_Label_1718:
	.byte	'I'
	.ascii	"arg\0"
	.align
_Label_1719:
	.byte	'?'
	.ascii	"_temp_1714\0"
	.align
_Label_1720:
	.byte	'?'
	.ascii	"_temp_1713\0"
	.align
_Label_1721:
	.byte	'?'
	.ascii	"_temp_1712\0"
	.align
_Label_1722:
	.byte	'I'
	.ascii	"oldIntStat\0"
	.align
_Label_1723:
	.byte	'I'
	.ascii	"junk\0"
	.align
! 
! ===============  METHOD Yield  ===============
! 
_Method_P_Kernel_Thread_3:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_Thread_3,r1
	push	r1
	mov	11,r1
_Label_4039:
	push	r0
	sub	r1,1,r1
	bne	_Label_4039
	mov	491,r13		! source line 491
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! IF STATEMENT...
	mov	507,r13		! source line 507
	mov	"\0\0IF",r10
	load	[r14+8],r1
	store	r1,[r14+-32]
!   if _temp_1726 == _P_Kernel_currentThread then goto _Label_1725		(int)
	load	[r14+-32],r1
	set	_P_Kernel_currentThread,r2
	load	[r2],r2
	cmp	r1,r2
	be	_Label_1725
!	jmp	_Label_1724
_Label_1724:
! THEN...
	mov	508,r13		! source line 508
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_1727 = _StringConst_56
	set	_StringConst_56,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=8  value=_temp_1727  sizeInBytes=4
	load	[r14+-28],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	508,r13		! source line 508
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END IF...
_Label_1725:
! ASSIGNMENT STATEMENT...
	mov	510,r13		! source line 510
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=2  sizeInBytes=4
	mov	2,r1
	store	r1,[r15+0]
!   Call the function
	mov	510,r13		! source line 510
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=oldIntStat  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-40]
! ASSIGNMENT STATEMENT...
	mov	514,r13		! source line 514
	mov	"\0\0AS",r10
	mov	514,r13		! source line 514
	mov	"\0\0SE",r10
!   _temp_1728 = &_P_Kernel_readyList
	set	_P_Kernel_readyList,r1
	store	r1,[r14+-24]
!   Send message Remove
	load	[r14+-24],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
!   Retrieve Result: targetName=nextTh  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-36]
! IF STATEMENT...
	mov	515,r13		! source line 515
	mov	"\0\0IF",r10
!   if nextTh == 0 then goto _Label_1730		(int)
	load	[r14+-36],r1
	mov	0,r2
	cmp	r1,r2
	be	_Label_1730
!	jmp	_Label_1729
_Label_1729:
! THEN...
	mov	519,r13		! source line 519
	mov	"\0\0TN",r10
! IF STATEMENT...
	mov	519,r13		! source line 519
	mov	"\0\0IF",r10
!   if status != 4 then goto _Label_1732		(int)
	load	[r14+8],r1
	load	[r1+76],r1
	mov	4,r2
	cmp	r1,r2
	bne	_Label_1732
!	jmp	_Label_1731
_Label_1731:
! THEN...
	mov	520,r13		! source line 520
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_1733 = _StringConst_57
	set	_StringConst_57,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_1733  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	520,r13		! source line 520
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END IF...
_Label_1732:
! ASSIGNMENT STATEMENT...
	mov	522,r13		! source line 522
	mov	"\0\0AS",r10
!   status = 2		(4 bytes)
	mov	2,r1
	load	[r14+8],r2
	store	r1,[r2+76]
! SEND STATEMENT...
	mov	523,r13		! source line 523
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-16]
!   _temp_1735 = &_P_Kernel_readyList
	set	_P_Kernel_readyList,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=12  value=_temp_1734  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+4]
!   Send message AddToEnd
	load	[r14+-12],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=nextTh  sizeInBytes=4
	load	[r14+-36],r1
	store	r1,[r15+0]
!   Call the function
	mov	524,r13		! source line 524
	mov	"\0\0CA",r10
	call	_P_Kernel_Run
! END IF...
_Label_1730:
! ASSIGNMENT STATEMENT...
	mov	526,r13		! source line 526
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=oldIntStat  sizeInBytes=4
	load	[r14+-40],r1
	store	r1,[r15+0]
!   Call the function
	mov	526,r13		! source line 526
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=junk  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-44]
! RETURN STATEMENT...
	mov	526,r13		! source line 526
	mov	"\0\0RE",r10
	add	r15,48,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_Thread_3:
	.word	_sourceFileName
	.word	_Label_1736
	.word	4		! total size of parameters
	.word	44		! frame size = 44
	.word	_Label_1737
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1738
	.word	-12
	.word	4
	.word	_Label_1739
	.word	-16
	.word	4
	.word	_Label_1740
	.word	-20
	.word	4
	.word	_Label_1741
	.word	-24
	.word	4
	.word	_Label_1742
	.word	-28
	.word	4
	.word	_Label_1743
	.word	-32
	.word	4
	.word	_Label_1744
	.word	-36
	.word	4
	.word	_Label_1745
	.word	-40
	.word	4
	.word	_Label_1746
	.word	-44
	.word	4
	.word	0
_Label_1736:
	.ascii	"Thread"
	.ascii	"::"
	.ascii	"Yield\0"
	.align
_Label_1737:
	.ascii	"Pself\0"
	.align
_Label_1738:
	.byte	'?'
	.ascii	"_temp_1735\0"
	.align
_Label_1739:
	.byte	'?'
	.ascii	"_temp_1734\0"
	.align
_Label_1740:
	.byte	'?'
	.ascii	"_temp_1733\0"
	.align
_Label_1741:
	.byte	'?'
	.ascii	"_temp_1728\0"
	.align
_Label_1742:
	.byte	'?'
	.ascii	"_temp_1727\0"
	.align
_Label_1743:
	.byte	'?'
	.ascii	"_temp_1726\0"
	.align
_Label_1744:
	.byte	'P'
	.ascii	"nextTh\0"
	.align
_Label_1745:
	.byte	'I'
	.ascii	"oldIntStat\0"
	.align
_Label_1746:
	.byte	'I'
	.ascii	"junk\0"
	.align
! 
! ===============  METHOD Sleep  ===============
! 
_Method_P_Kernel_Thread_4:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_Thread_4,r1
	push	r1
	mov	7,r1
_Label_4040:
	push	r0
	sub	r1,1,r1
	bne	_Label_4040
	mov	531,r13		! source line 531
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! IF STATEMENT...
	mov	543,r13		! source line 543
	mov	"\0\0IF",r10
!   if _P_Kernel_currentInterruptStatus == 2 then goto _Label_1748		(int)
	set	_P_Kernel_currentInterruptStatus,r1
	load	[r1],r1
	mov	2,r2
	cmp	r1,r2
	be	_Label_1748
!	jmp	_Label_1747
_Label_1747:
! THEN...
	mov	544,r13		! source line 544
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_1749 = _StringConst_58
	set	_StringConst_58,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=8  value=_temp_1749  sizeInBytes=4
	load	[r14+-28],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	544,r13		! source line 544
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END IF...
_Label_1748:
! IF STATEMENT...
	mov	547,r13		! source line 547
	mov	"\0\0IF",r10
	load	[r14+8],r1
	store	r1,[r14+-24]
!   if _temp_1752 == _P_Kernel_currentThread then goto _Label_1751		(int)
	load	[r14+-24],r1
	set	_P_Kernel_currentThread,r2
	load	[r2],r2
	cmp	r1,r2
	be	_Label_1751
!	jmp	_Label_1750
_Label_1750:
! THEN...
	mov	548,r13		! source line 548
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_1753 = _StringConst_59
	set	_StringConst_59,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_1753  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	548,r13		! source line 548
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END IF...
_Label_1751:
! ASSIGNMENT STATEMENT...
	mov	553,r13		! source line 553
	mov	"\0\0AS",r10
!   status = 4		(4 bytes)
	mov	4,r1
	load	[r14+8],r2
	store	r1,[r2+76]
! ASSIGNMENT STATEMENT...
	mov	554,r13		! source line 554
	mov	"\0\0AS",r10
	mov	554,r13		! source line 554
	mov	"\0\0SE",r10
!   _temp_1754 = &_P_Kernel_readyList
	set	_P_Kernel_readyList,r1
	store	r1,[r14+-16]
!   Send message Remove
	load	[r14+-16],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
!   Retrieve Result: targetName=nextTh  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-32]
! IF STATEMENT...
	mov	555,r13		! source line 555
	mov	"\0\0IF",r10
!   if intIsZero (nextTh) then goto _Label_1755
	load	[r14+-32],r1
	cmp	r1,r0
	be	_Label_1755
	jmp	_Label_1756
_Label_1755:
! THEN...
	mov	556,r13		! source line 556
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_1757 = _StringConst_60
	set	_StringConst_60,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_1757  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	556,r13		! source line 556
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END IF...
_Label_1756:
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=nextTh  sizeInBytes=4
	load	[r14+-32],r1
	store	r1,[r15+0]
!   Call the function
	mov	558,r13		! source line 558
	mov	"\0\0CA",r10
	call	_P_Kernel_Run
! RETURN STATEMENT...
	mov	558,r13		! source line 558
	mov	"\0\0RE",r10
	add	r15,32,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_Thread_4:
	.word	_sourceFileName
	.word	_Label_1758
	.word	4		! total size of parameters
	.word	28		! frame size = 28
	.word	_Label_1759
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1760
	.word	-12
	.word	4
	.word	_Label_1761
	.word	-16
	.word	4
	.word	_Label_1762
	.word	-20
	.word	4
	.word	_Label_1763
	.word	-24
	.word	4
	.word	_Label_1764
	.word	-28
	.word	4
	.word	_Label_1765
	.word	-32
	.word	4
	.word	0
_Label_1758:
	.ascii	"Thread"
	.ascii	"::"
	.ascii	"Sleep\0"
	.align
_Label_1759:
	.ascii	"Pself\0"
	.align
_Label_1760:
	.byte	'?'
	.ascii	"_temp_1757\0"
	.align
_Label_1761:
	.byte	'?'
	.ascii	"_temp_1754\0"
	.align
_Label_1762:
	.byte	'?'
	.ascii	"_temp_1753\0"
	.align
_Label_1763:
	.byte	'?'
	.ascii	"_temp_1752\0"
	.align
_Label_1764:
	.byte	'?'
	.ascii	"_temp_1749\0"
	.align
_Label_1765:
	.byte	'P'
	.ascii	"nextTh\0"
	.align
! 
! ===============  METHOD CheckOverflow  ===============
! 
_Method_P_Kernel_Thread_5:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_Thread_5,r1
	push	r1
	mov	9,r1
_Label_4041:
	push	r0
	sub	r1,1,r1
	bne	_Label_4041
	mov	563,r13		! source line 563
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! IF STATEMENT...
	mov	569,r13		! source line 569
	mov	"\0\0IF",r10
!   _temp_1769 = &systemStack
	load	[r14+8],r1
	add	r1,88,r1
	store	r1,[r14+-36]
!   Move address of _temp_1769 [0 ] into _temp_1770
!     make sure index expr is >= 0
	mov	0,r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-36],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	4,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-32]
!   Data Move: _temp_1768 = *_temp_1770  (sizeInBytes=4)
	load	[r14+-32],r1
	load	[r1],r1
	store	r1,[r14+-40]
!   if _temp_1768 == 606348324 then goto _Label_1767		(int)
	load	[r14+-40],r1
	set	606348324,r2
	cmp	r1,r2
	be	_Label_1767
!	jmp	_Label_1766
_Label_1766:
! THEN...
	mov	570,r13		! source line 570
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_1771 = _StringConst_61
	set	_StringConst_61,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=8  value=_temp_1771  sizeInBytes=4
	load	[r14+-28],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	570,r13		! source line 570
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
	jmp	_Label_1772
_Label_1767:
! ELSE...
	mov	571,r13		! source line 571
	mov	"\0\0EL",r10
! IF STATEMENT...
	mov	571,r13		! source line 571
	mov	"\0\0IF",r10
!   _temp_1776 = &systemStack
	load	[r14+8],r1
	add	r1,88,r1
	store	r1,[r14+-20]
!   Move address of _temp_1776 [999 ] into _temp_1777
!     make sure index expr is >= 0
	mov	999,r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-20],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	4,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-16]
!   Data Move: _temp_1775 = *_temp_1777  (sizeInBytes=4)
	load	[r14+-16],r1
	load	[r1],r1
	store	r1,[r14+-24]
!   if _temp_1775 == 606348324 then goto _Label_1774		(int)
	load	[r14+-24],r1
	set	606348324,r2
	cmp	r1,r2
	be	_Label_1774
!	jmp	_Label_1773
_Label_1773:
! THEN...
	mov	572,r13		! source line 572
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_1778 = _StringConst_62
	set	_StringConst_62,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_1778  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	572,r13		! source line 572
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END IF...
_Label_1774:
! END IF...
_Label_1772:
! RETURN STATEMENT...
	mov	569,r13		! source line 569
	mov	"\0\0RE",r10
	add	r15,40,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_Thread_5:
	.word	_sourceFileName
	.word	_Label_1779
	.word	4		! total size of parameters
	.word	36		! frame size = 36
	.word	_Label_1780
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1781
	.word	-12
	.word	4
	.word	_Label_1782
	.word	-16
	.word	4
	.word	_Label_1783
	.word	-20
	.word	4
	.word	_Label_1784
	.word	-24
	.word	4
	.word	_Label_1785
	.word	-28
	.word	4
	.word	_Label_1786
	.word	-32
	.word	4
	.word	_Label_1787
	.word	-36
	.word	4
	.word	_Label_1788
	.word	-40
	.word	4
	.word	0
_Label_1779:
	.ascii	"Thread"
	.ascii	"::"
	.ascii	"CheckOverflow\0"
	.align
_Label_1780:
	.ascii	"Pself\0"
	.align
_Label_1781:
	.byte	'?'
	.ascii	"_temp_1778\0"
	.align
_Label_1782:
	.byte	'?'
	.ascii	"_temp_1777\0"
	.align
_Label_1783:
	.byte	'?'
	.ascii	"_temp_1776\0"
	.align
_Label_1784:
	.byte	'?'
	.ascii	"_temp_1775\0"
	.align
_Label_1785:
	.byte	'?'
	.ascii	"_temp_1771\0"
	.align
_Label_1786:
	.byte	'?'
	.ascii	"_temp_1770\0"
	.align
_Label_1787:
	.byte	'?'
	.ascii	"_temp_1769\0"
	.align
_Label_1788:
	.byte	'?'
	.ascii	"_temp_1768\0"
	.align
! 
! ===============  METHOD Print  ===============
! 
_Method_P_Kernel_Thread_6:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_Thread_6,r1
	push	r1
	mov	49,r1
_Label_4042:
	push	r0
	sub	r1,1,r1
	bne	_Label_4042
	mov	578,r13		! source line 578
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	584,r13		! source line 584
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=2  sizeInBytes=4
	mov	2,r1
	store	r1,[r15+0]
!   Call the function
	mov	584,r13		! source line 584
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=oldStatus  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-196]
! CALL STATEMENT...
!   _temp_1789 = _StringConst_63
	set	_StringConst_63,r1
	store	r1,[r14+-188]
!   Prepare Argument: offset=8  value=_temp_1789  sizeInBytes=4
	load	[r14+-188],r1
	store	r1,[r15+0]
!   Call the function
	mov	585,r13		! source line 585
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=name  sizeInBytes=4
	load	[r14+8],r1
	load	[r1+72],r1
	store	r1,[r15+0]
!   Call the function
	mov	586,r13		! source line 586
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_1790 = _StringConst_64
	set	_StringConst_64,r1
	store	r1,[r14+-184]
!   Prepare Argument: offset=8  value=_temp_1790  sizeInBytes=4
	load	[r14+-184],r1
	store	r1,[r15+0]
!   Call the function
	mov	587,r13		! source line 587
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
	load	[r14+8],r1
	store	r1,[r14+-180]
!   Prepare Argument: offset=8  value=_temp_1791  sizeInBytes=4
	load	[r14+-180],r1
	store	r1,[r15+0]
!   Call the function
	mov	588,r13		! source line 588
	mov	"\0\0CE",r10
	call	printHex
! CALL STATEMENT...
!   _temp_1792 = _StringConst_65
	set	_StringConst_65,r1
	store	r1,[r14+-176]
!   Prepare Argument: offset=8  value=_temp_1792  sizeInBytes=4
	load	[r14+-176],r1
	store	r1,[r15+0]
!   Call the function
	mov	589,r13		! source line 589
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_1793 = _StringConst_66
	set	_StringConst_66,r1
	store	r1,[r14+-172]
!   Prepare Argument: offset=8  value=_temp_1793  sizeInBytes=4
	load	[r14+-172],r1
	store	r1,[r15+0]
!   Call the function
	mov	590,r13		! source line 590
	mov	"\0\0CE",r10
	call	print
! FOR STATEMENT...
	mov	591,r13		! source line 591
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_1798 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-168]
!   Calculate and save the FOR-LOOP ending value
!   _temp_1799 = 12		(4 bytes)
	mov	12,r1
	store	r1,[r14+-164]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_1798  (sizeInBytes=4)
	load	[r14+-168],r1
	store	r1,[r14+-192]
_Label_1794:
!   Perform the FOR-LOOP termination test
!   if i > _temp_1799 then goto _Label_1797		
	load	[r14+-192],r1
	load	[r14+-164],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_1797
_Label_1795:
	mov	591,r13		! source line 591
	mov	"\0\0FB",r10
! CALL STATEMENT...
!   _temp_1800 = _StringConst_67
	set	_StringConst_67,r1
	store	r1,[r14+-160]
!   Prepare Argument: offset=8  value=_temp_1800  sizeInBytes=4
	load	[r14+-160],r1
	store	r1,[r15+0]
!   Call the function
	mov	592,r13		! source line 592
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_1801 = i + 2		(int)
	load	[r14+-192],r1
	mov	2,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-156]
!   Prepare Argument: offset=8  value=_temp_1801  sizeInBytes=4
	load	[r14+-156],r1
	store	r1,[r15+0]
!   Call the function
	mov	593,r13		! source line 593
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   _temp_1802 = _StringConst_68
	set	_StringConst_68,r1
	store	r1,[r14+-152]
!   Prepare Argument: offset=8  value=_temp_1802  sizeInBytes=4
	load	[r14+-152],r1
	store	r1,[r15+0]
!   Call the function
	mov	594,r13		! source line 594
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_1804 = &regs
	load	[r14+8],r1
	add	r1,12,r1
	store	r1,[r14+-144]
!   Move address of _temp_1804 [i ] into _temp_1805
!     make sure index expr is >= 0
	load	[r14+-192],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-144],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	4,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-140]
!   Data Move: _temp_1803 = *_temp_1805  (sizeInBytes=4)
	load	[r14+-140],r1
	load	[r1],r1
	store	r1,[r14+-148]
!   Prepare Argument: offset=8  value=_temp_1803  sizeInBytes=4
	load	[r14+-148],r1
	store	r1,[r15+0]
!   Call the function
	mov	595,r13		! source line 595
	mov	"\0\0CE",r10
	call	printHex
! CALL STATEMENT...
!   _temp_1806 = _StringConst_69
	set	_StringConst_69,r1
	store	r1,[r14+-136]
!   Prepare Argument: offset=8  value=_temp_1806  sizeInBytes=4
	load	[r14+-136],r1
	store	r1,[r15+0]
!   Call the function
	mov	596,r13		! source line 596
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_1808 = &regs
	load	[r14+8],r1
	add	r1,12,r1
	store	r1,[r14+-128]
!   Move address of _temp_1808 [i ] into _temp_1809
!     make sure index expr is >= 0
	load	[r14+-192],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-128],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	4,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-124]
!   Data Move: _temp_1807 = *_temp_1809  (sizeInBytes=4)
	load	[r14+-124],r1
	load	[r1],r1
	store	r1,[r14+-132]
!   Prepare Argument: offset=8  value=_temp_1807  sizeInBytes=4
	load	[r14+-132],r1
	store	r1,[r15+0]
!   Call the function
	mov	597,r13		! source line 597
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   _temp_1810 = _StringConst_70
	set	_StringConst_70,r1
	store	r1,[r14+-120]
!   Prepare Argument: offset=8  value=_temp_1810  sizeInBytes=4
	load	[r14+-120],r1
	store	r1,[r15+0]
!   Call the function
	mov	598,r13		! source line 598
	mov	"\0\0CE",r10
	call	print
!   Increment the FOR-LOOP index variable and jump back
_Label_1796:
!   i = i + 1
	load	[r14+-192],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-192]
	jmp	_Label_1794
! END FOR
_Label_1797:
! CALL STATEMENT...
!   _temp_1811 = _StringConst_71
	set	_StringConst_71,r1
	store	r1,[r14+-116]
!   _temp_1812 = stackTop		(4 bytes)
	load	[r14+8],r1
	load	[r1+68],r1
	store	r1,[r14+-112]
!   Prepare Argument: offset=8  value=_temp_1811  sizeInBytes=4
	load	[r14+-116],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=_temp_1812  sizeInBytes=4
	load	[r14+-112],r1
	store	r1,[r15+4]
!   Call the function
	mov	600,r13		! source line 600
	mov	"\0\0CA",r10
	call	_P_System_printHexVar
! CALL STATEMENT...
!   _temp_1813 = _StringConst_72
	set	_StringConst_72,r1
	store	r1,[r14+-108]
!   _temp_1815 = &systemStack
	load	[r14+8],r1
	add	r1,88,r1
	store	r1,[r14+-100]
!   Move address of _temp_1815 [0 ] into _temp_1816
!     make sure index expr is >= 0
	mov	0,r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-100],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	4,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-96]
!   _temp_1814 = _temp_1816		(4 bytes)
	load	[r14+-96],r1
	store	r1,[r14+-104]
!   Prepare Argument: offset=8  value=_temp_1813  sizeInBytes=4
	load	[r14+-108],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=_temp_1814  sizeInBytes=4
	load	[r14+-104],r1
	store	r1,[r15+4]
!   Call the function
	mov	601,r13		! source line 601
	mov	"\0\0CA",r10
	call	_P_System_printHexVar
! SWITCH STATEMENT (using series of tests)...
	mov	602,r13		! source line 602
	mov	"\0\0SW",r10
!   Evaluate the switch expression...
!   Branch to the right case label
	load	[r14+8],r1
	load	[r1+76],r1
	cmp	r1,1
	be	_Label_1819
	cmp	r1,2
	be	_Label_1820
	cmp	r1,3
	be	_Label_1821
	cmp	r1,4
	be	_Label_1822
	cmp	r1,5
	be	_Label_1823
	jmp	_Label_1817
! CASE 1...
_Label_1819:
! CALL STATEMENT...
!   _temp_1824 = _StringConst_73
	set	_StringConst_73,r1
	store	r1,[r14+-92]
!   Prepare Argument: offset=8  value=_temp_1824  sizeInBytes=4
	load	[r14+-92],r1
	store	r1,[r15+0]
!   Call the function
	mov	604,r13		! source line 604
	mov	"\0\0CE",r10
	call	print
! BREAK STATEMENT...
	mov	605,r13		! source line 605
	mov	"\0\0BR",r10
	jmp	_Label_1818
! CASE 2...
_Label_1820:
! CALL STATEMENT...
!   _temp_1825 = _StringConst_74
	set	_StringConst_74,r1
	store	r1,[r14+-88]
!   Prepare Argument: offset=8  value=_temp_1825  sizeInBytes=4
	load	[r14+-88],r1
	store	r1,[r15+0]
!   Call the function
	mov	607,r13		! source line 607
	mov	"\0\0CE",r10
	call	print
! BREAK STATEMENT...
	mov	608,r13		! source line 608
	mov	"\0\0BR",r10
	jmp	_Label_1818
! CASE 3...
_Label_1821:
! CALL STATEMENT...
!   _temp_1826 = _StringConst_75
	set	_StringConst_75,r1
	store	r1,[r14+-84]
!   Prepare Argument: offset=8  value=_temp_1826  sizeInBytes=4
	load	[r14+-84],r1
	store	r1,[r15+0]
!   Call the function
	mov	610,r13		! source line 610
	mov	"\0\0CE",r10
	call	print
! BREAK STATEMENT...
	mov	611,r13		! source line 611
	mov	"\0\0BR",r10
	jmp	_Label_1818
! CASE 4...
_Label_1822:
! CALL STATEMENT...
!   _temp_1827 = _StringConst_76
	set	_StringConst_76,r1
	store	r1,[r14+-80]
!   Prepare Argument: offset=8  value=_temp_1827  sizeInBytes=4
	load	[r14+-80],r1
	store	r1,[r15+0]
!   Call the function
	mov	613,r13		! source line 613
	mov	"\0\0CE",r10
	call	print
! BREAK STATEMENT...
	mov	614,r13		! source line 614
	mov	"\0\0BR",r10
	jmp	_Label_1818
! CASE 5...
_Label_1823:
! CALL STATEMENT...
!   _temp_1828 = _StringConst_77
	set	_StringConst_77,r1
	store	r1,[r14+-76]
!   Prepare Argument: offset=8  value=_temp_1828  sizeInBytes=4
	load	[r14+-76],r1
	store	r1,[r15+0]
!   Call the function
	mov	616,r13		! source line 616
	mov	"\0\0CE",r10
	call	print
! BREAK STATEMENT...
	mov	617,r13		! source line 617
	mov	"\0\0BR",r10
	jmp	_Label_1818
! DEFAULT CASE...
_Label_1817:
! CALL STATEMENT...
!   _temp_1829 = _StringConst_78
	set	_StringConst_78,r1
	store	r1,[r14+-72]
!   Prepare Argument: offset=8  value=_temp_1829  sizeInBytes=4
	load	[r14+-72],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	619,r13		! source line 619
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END SWITCH...
_Label_1818:
! CALL STATEMENT...
!   _temp_1830 = _StringConst_79
	set	_StringConst_79,r1
	store	r1,[r14+-68]
!   Prepare Argument: offset=8  value=_temp_1830  sizeInBytes=4
	load	[r14+-68],r1
	store	r1,[r15+0]
!   Call the function
	mov	621,r13		! source line 621
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=isUserThread  sizeInBytes=1
	load	[r14+8],r1
	loadb	[r1+4092],r1
	storeb	r1,[r15+0]
!   Call the function
	mov	622,r13		! source line 622
	mov	"\0\0CE",r10
	call	printBool
! CALL STATEMENT...
!   Call the function
	mov	623,r13		! source line 623
	mov	"\0\0CA",r10
	call	_P_System_nl
! CALL STATEMENT...
!   _temp_1831 = _StringConst_80
	set	_StringConst_80,r1
	store	r1,[r14+-64]
!   Prepare Argument: offset=8  value=_temp_1831  sizeInBytes=4
	load	[r14+-64],r1
	store	r1,[r15+0]
!   Call the function
	mov	624,r13		! source line 624
	mov	"\0\0CE",r10
	call	print
! FOR STATEMENT...
	mov	625,r13		! source line 625
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_1836 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-60]
!   Calculate and save the FOR-LOOP ending value
!   _temp_1837 = 14		(4 bytes)
	mov	14,r1
	store	r1,[r14+-56]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_1836  (sizeInBytes=4)
	load	[r14+-60],r1
	store	r1,[r14+-192]
_Label_1832:
!   Perform the FOR-LOOP termination test
!   if i > _temp_1837 then goto _Label_1835		
	load	[r14+-192],r1
	load	[r14+-56],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_1835
_Label_1833:
	mov	625,r13		! source line 625
	mov	"\0\0FB",r10
! CALL STATEMENT...
!   _temp_1838 = _StringConst_81
	set	_StringConst_81,r1
	store	r1,[r14+-52]
!   Prepare Argument: offset=8  value=_temp_1838  sizeInBytes=4
	load	[r14+-52],r1
	store	r1,[r15+0]
!   Call the function
	mov	626,r13		! source line 626
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_1839 = i + 1		(int)
	load	[r14+-192],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-48]
!   Prepare Argument: offset=8  value=_temp_1839  sizeInBytes=4
	load	[r14+-48],r1
	store	r1,[r15+0]
!   Call the function
	mov	627,r13		! source line 627
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   _temp_1840 = _StringConst_82
	set	_StringConst_82,r1
	store	r1,[r14+-44]
!   Prepare Argument: offset=8  value=_temp_1840  sizeInBytes=4
	load	[r14+-44],r1
	store	r1,[r15+0]
!   Call the function
	mov	628,r13		! source line 628
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_1842 = &userRegs
	load	[r14+8],r1
	add	r1,4096,r1
	store	r1,[r14+-36]
!   Move address of _temp_1842 [i ] into _temp_1843
!     make sure index expr is >= 0
	load	[r14+-192],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-36],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	4,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-32]
!   Data Move: _temp_1841 = *_temp_1843  (sizeInBytes=4)
	load	[r14+-32],r1
	load	[r1],r1
	store	r1,[r14+-40]
!   Prepare Argument: offset=8  value=_temp_1841  sizeInBytes=4
	load	[r14+-40],r1
	store	r1,[r15+0]
!   Call the function
	mov	629,r13		! source line 629
	mov	"\0\0CE",r10
	call	printHex
! CALL STATEMENT...
!   _temp_1844 = _StringConst_83
	set	_StringConst_83,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=8  value=_temp_1844  sizeInBytes=4
	load	[r14+-28],r1
	store	r1,[r15+0]
!   Call the function
	mov	630,r13		! source line 630
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_1846 = &userRegs
	load	[r14+8],r1
	add	r1,4096,r1
	store	r1,[r14+-20]
!   Move address of _temp_1846 [i ] into _temp_1847
!     make sure index expr is >= 0
	load	[r14+-192],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-20],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	4,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-16]
!   Data Move: _temp_1845 = *_temp_1847  (sizeInBytes=4)
	load	[r14+-16],r1
	load	[r1],r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=8  value=_temp_1845  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+0]
!   Call the function
	mov	631,r13		! source line 631
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   _temp_1848 = _StringConst_84
	set	_StringConst_84,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_1848  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	632,r13		! source line 632
	mov	"\0\0CE",r10
	call	print
!   Increment the FOR-LOOP index variable and jump back
_Label_1834:
!   i = i + 1
	load	[r14+-192],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-192]
	jmp	_Label_1832
! END FOR
_Label_1835:
! ASSIGNMENT STATEMENT...
	mov	634,r13		! source line 634
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=oldStatus  sizeInBytes=4
	load	[r14+-196],r1
	store	r1,[r15+0]
!   Call the function
	mov	634,r13		! source line 634
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=oldStatus  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-196]
! RETURN STATEMENT...
	mov	634,r13		! source line 634
	mov	"\0\0RE",r10
	add	r15,200,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_Thread_6:
	.word	_sourceFileName
	.word	_Label_1849
	.word	4		! total size of parameters
	.word	196		! frame size = 196
	.word	_Label_1850
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1851
	.word	-12
	.word	4
	.word	_Label_1852
	.word	-16
	.word	4
	.word	_Label_1853
	.word	-20
	.word	4
	.word	_Label_1854
	.word	-24
	.word	4
	.word	_Label_1855
	.word	-28
	.word	4
	.word	_Label_1856
	.word	-32
	.word	4
	.word	_Label_1857
	.word	-36
	.word	4
	.word	_Label_1858
	.word	-40
	.word	4
	.word	_Label_1859
	.word	-44
	.word	4
	.word	_Label_1860
	.word	-48
	.word	4
	.word	_Label_1861
	.word	-52
	.word	4
	.word	_Label_1862
	.word	-56
	.word	4
	.word	_Label_1863
	.word	-60
	.word	4
	.word	_Label_1864
	.word	-64
	.word	4
	.word	_Label_1865
	.word	-68
	.word	4
	.word	_Label_1866
	.word	-72
	.word	4
	.word	_Label_1867
	.word	-76
	.word	4
	.word	_Label_1868
	.word	-80
	.word	4
	.word	_Label_1869
	.word	-84
	.word	4
	.word	_Label_1870
	.word	-88
	.word	4
	.word	_Label_1871
	.word	-92
	.word	4
	.word	_Label_1872
	.word	-96
	.word	4
	.word	_Label_1873
	.word	-100
	.word	4
	.word	_Label_1874
	.word	-104
	.word	4
	.word	_Label_1875
	.word	-108
	.word	4
	.word	_Label_1876
	.word	-112
	.word	4
	.word	_Label_1877
	.word	-116
	.word	4
	.word	_Label_1878
	.word	-120
	.word	4
	.word	_Label_1879
	.word	-124
	.word	4
	.word	_Label_1880
	.word	-128
	.word	4
	.word	_Label_1881
	.word	-132
	.word	4
	.word	_Label_1882
	.word	-136
	.word	4
	.word	_Label_1883
	.word	-140
	.word	4
	.word	_Label_1884
	.word	-144
	.word	4
	.word	_Label_1885
	.word	-148
	.word	4
	.word	_Label_1886
	.word	-152
	.word	4
	.word	_Label_1887
	.word	-156
	.word	4
	.word	_Label_1888
	.word	-160
	.word	4
	.word	_Label_1889
	.word	-164
	.word	4
	.word	_Label_1890
	.word	-168
	.word	4
	.word	_Label_1891
	.word	-172
	.word	4
	.word	_Label_1892
	.word	-176
	.word	4
	.word	_Label_1893
	.word	-180
	.word	4
	.word	_Label_1894
	.word	-184
	.word	4
	.word	_Label_1895
	.word	-188
	.word	4
	.word	_Label_1896
	.word	-192
	.word	4
	.word	_Label_1897
	.word	-196
	.word	4
	.word	0
_Label_1849:
	.ascii	"Thread"
	.ascii	"::"
	.ascii	"Print\0"
	.align
_Label_1850:
	.ascii	"Pself\0"
	.align
_Label_1851:
	.byte	'?'
	.ascii	"_temp_1848\0"
	.align
_Label_1852:
	.byte	'?'
	.ascii	"_temp_1847\0"
	.align
_Label_1853:
	.byte	'?'
	.ascii	"_temp_1846\0"
	.align
_Label_1854:
	.byte	'?'
	.ascii	"_temp_1845\0"
	.align
_Label_1855:
	.byte	'?'
	.ascii	"_temp_1844\0"
	.align
_Label_1856:
	.byte	'?'
	.ascii	"_temp_1843\0"
	.align
_Label_1857:
	.byte	'?'
	.ascii	"_temp_1842\0"
	.align
_Label_1858:
	.byte	'?'
	.ascii	"_temp_1841\0"
	.align
_Label_1859:
	.byte	'?'
	.ascii	"_temp_1840\0"
	.align
_Label_1860:
	.byte	'?'
	.ascii	"_temp_1839\0"
	.align
_Label_1861:
	.byte	'?'
	.ascii	"_temp_1838\0"
	.align
_Label_1862:
	.byte	'?'
	.ascii	"_temp_1837\0"
	.align
_Label_1863:
	.byte	'?'
	.ascii	"_temp_1836\0"
	.align
_Label_1864:
	.byte	'?'
	.ascii	"_temp_1831\0"
	.align
_Label_1865:
	.byte	'?'
	.ascii	"_temp_1830\0"
	.align
_Label_1866:
	.byte	'?'
	.ascii	"_temp_1829\0"
	.align
_Label_1867:
	.byte	'?'
	.ascii	"_temp_1828\0"
	.align
_Label_1868:
	.byte	'?'
	.ascii	"_temp_1827\0"
	.align
_Label_1869:
	.byte	'?'
	.ascii	"_temp_1826\0"
	.align
_Label_1870:
	.byte	'?'
	.ascii	"_temp_1825\0"
	.align
_Label_1871:
	.byte	'?'
	.ascii	"_temp_1824\0"
	.align
_Label_1872:
	.byte	'?'
	.ascii	"_temp_1816\0"
	.align
_Label_1873:
	.byte	'?'
	.ascii	"_temp_1815\0"
	.align
_Label_1874:
	.byte	'?'
	.ascii	"_temp_1814\0"
	.align
_Label_1875:
	.byte	'?'
	.ascii	"_temp_1813\0"
	.align
_Label_1876:
	.byte	'?'
	.ascii	"_temp_1812\0"
	.align
_Label_1877:
	.byte	'?'
	.ascii	"_temp_1811\0"
	.align
_Label_1878:
	.byte	'?'
	.ascii	"_temp_1810\0"
	.align
_Label_1879:
	.byte	'?'
	.ascii	"_temp_1809\0"
	.align
_Label_1880:
	.byte	'?'
	.ascii	"_temp_1808\0"
	.align
_Label_1881:
	.byte	'?'
	.ascii	"_temp_1807\0"
	.align
_Label_1882:
	.byte	'?'
	.ascii	"_temp_1806\0"
	.align
_Label_1883:
	.byte	'?'
	.ascii	"_temp_1805\0"
	.align
_Label_1884:
	.byte	'?'
	.ascii	"_temp_1804\0"
	.align
_Label_1885:
	.byte	'?'
	.ascii	"_temp_1803\0"
	.align
_Label_1886:
	.byte	'?'
	.ascii	"_temp_1802\0"
	.align
_Label_1887:
	.byte	'?'
	.ascii	"_temp_1801\0"
	.align
_Label_1888:
	.byte	'?'
	.ascii	"_temp_1800\0"
	.align
_Label_1889:
	.byte	'?'
	.ascii	"_temp_1799\0"
	.align
_Label_1890:
	.byte	'?'
	.ascii	"_temp_1798\0"
	.align
_Label_1891:
	.byte	'?'
	.ascii	"_temp_1793\0"
	.align
_Label_1892:
	.byte	'?'
	.ascii	"_temp_1792\0"
	.align
_Label_1893:
	.byte	'?'
	.ascii	"_temp_1791\0"
	.align
_Label_1894:
	.byte	'?'
	.ascii	"_temp_1790\0"
	.align
_Label_1895:
	.byte	'?'
	.ascii	"_temp_1789\0"
	.align
_Label_1896:
	.byte	'I'
	.ascii	"i\0"
	.align
_Label_1897:
	.byte	'I'
	.ascii	"oldStatus\0"
	.align
! 
! ===============  CLASS ThreadManager  ===============
! 
! Dispatch Table:
! 
_P_Kernel_ThreadManager:
	.word	_Label_1898
	jmp	_Method_P_Kernel_ThreadManager_1	! 4:	Init
	jmp	_Method_P_Kernel_ThreadManager_2	! 8:	Print
	jmp	_Method_P_Kernel_ThreadManager_3	! 12:	GetANewThread
	jmp	_Method_P_Kernel_ThreadManager_4	! 16:	FreeThread
	.word	0
! 
! Class descriptor:
! 
_Label_1898:
	.word	1129070931		! Magic number 0x434c4153 == 'CLAS'
	.word	_Label_1899
	.word	_sourceFileName
	.word	196		! line number
	.word	41696		! size of instances, in bytes
	.word	_P_Kernel_ThreadManager
	.word	_P_System_Object
	.word	0
_Label_1899:
	.ascii	"ThreadManager\0"
	.align
! 
! ===============  METHOD Init  ===============
! 
_Method_P_Kernel_ThreadManager_1:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_ThreadManager_1,r1
	push	r1
	mov	11472,r1
_Label_4043:
	push	r0
	sub	r1,1,r1
	bne	_Label_4043
	mov	689,r13		! source line 689
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   _temp_1900 = _StringConst_85
	set	_StringConst_85,r1
	set	-45880,r2
	store	r1,[r14+r2]
!   Prepare Argument: offset=8  value=_temp_1900  sizeInBytes=4
	set	-45880,r1
	load	[r14+r1],r1
	store	r1,[r15+0]
!   Call the function
	mov	697,r13		! source line 697
	mov	"\0\0CE",r10
	call	print
! ASSIGNMENT STATEMENT...
	mov	698,r13		! source line 698
	mov	"\0\0AS",r10
!   _temp_1901 = &threadTable
	load	[r14+8],r1
	add	r1,4,r1
	set	-45876,r2
	store	r1,[r14+r2]
!   NEW ARRAY Constructor...
!   _temp_1903 = &_temp_1902
	set	-45872,r1
	add	r14,r1,r1
	store	r1,[r14+-4228]
!   _temp_1903 = _temp_1903 + 4
	load	[r14+-4228],r1
	add	r1,4,r1
	store	r1,[r14+-4228]
!   Next value...
!   NEW CLASS Constructor...
!   ZeroMemory: _temp_1905 = zeros  (sizeInBytes=4164)
	add	r14,-4220,r4
	mov	1041,r3
_Label_4044:
	store	r0,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_4044
!   _temp_1905 = _P_Kernel_Thread
	set	_P_Kernel_Thread,r1
	store	r1,[r14+-4220]
	mov	10,r1
	store	r1,[r14+-4224]
_Label_1907:
!   Data Move: *_temp_1903 = _temp_1905  (sizeInBytes=4164)
	add	r14,-4220,r5
	load	[r14+-4228],r4
	mov	1041,r3
_Label_4045:
	load	[r5],r1
	add	r5,4,r5
	store	r1,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_4045
!   _temp_1903 = _temp_1903 + 4164
	load	[r14+-4228],r1
	add	r1,4164,r1
	store	r1,[r14+-4228]
!   _temp_1904 = _temp_1904 + -1
	load	[r14+-4224],r1
	add	r1,-1,r1
	store	r1,[r14+-4224]
!   if intNotZero (_temp_1904) then goto _Label_1907
	load	[r14+-4224],r1
	cmp	r1,r0
	bne	_Label_1907
!   Initialize the array size...
	mov	10,r1
	set	-45872,r2
	store	r1,[r14+r2]
!   _temp_1908 = &_temp_1902
	set	-45872,r1
	add	r14,r1,r1
	store	r1,[r14+-52]
!   make sure array has size 10
	set	-45876,r1
	load	[r14+r1],r1
	load	[r1],r1
	set	10, r2
	cmp	r1,0
	be	_Label_4046
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bne	_runtimeErrorWrongArraySize
_Label_4046:
!   make sure array has size 10
	load	[r14+-52],r1
	load	[r1],r1
	set	10, r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bne	_runtimeErrorWrongArraySize
!   Data Move: *_temp_1901 = *_temp_1908  (sizeInBytes=41644)
	load	[r14+-52],r5
	set	-45876,r4
	load	[r14+r4],r4
	mov	10411,r3
_Label_4047:
	load	[r5],r1
	add	r5,4,r5
	store	r1,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_4047
! ASSIGNMENT STATEMENT...
	mov	699,r13		! source line 699
	mov	"\0\0AS",r10
!   NEW CLASS Constructor...
!   ZeroMemory: freeList = zeros  (sizeInBytes=12)
	set	41648,r11
	load	[r14+8],r4
	add	r4,r11,r4
	store	r0,[r4]
	store	r0,[r4+4]
	store	r0,[r4+8]
!   freeList = _P_List_List
	set	_P_List_List,r1
	load	[r14+8],r11
	set	41648,r2
	store	r1,[r11+r2]
! ASSIGNMENT STATEMENT...
	mov	700,r13		! source line 700
	mov	"\0\0AS",r10
!   i = 0		(4 bytes)
	mov	0,r1
	set	-45884,r2
	store	r1,[r14+r2]
! WHILE STATEMENT...
	mov	700,r13		! source line 700
	mov	"\0\0WH",r10
_Label_1910:
!   if i >= 10 then goto _Label_1912		(int)
	set	-45884,r1
	load	[r14+r1],r1
	mov	10,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_1912
!	jmp	_Label_1911
_Label_1911:
	mov	700,r13		! source line 700
	mov	"\0\0WB",r10
! ASSIGNMENT STATEMENT...
	mov	701,r13		! source line 701
	mov	"\0\0AS",r10
!   _temp_1913 = &threadTable
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-44]
!   Move address of _temp_1913 [i ] into _temp_1914
!     make sure index expr is >= 0
	set	-45884,r2
	load	[r14+r2],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-44],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	4164,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-40]
!   thread = _temp_1914		(4 bytes)
	load	[r14+-40],r1
	set	-45888,r2
	store	r1,[r14+r2]
! SEND STATEMENT...
	mov	702,r13		! source line 702
	mov	"\0\0SE",r10
!   _temp_1915 = _StringConst_86
	set	_StringConst_86,r1
	store	r1,[r14+-36]
!   if intIsZero (thread) then goto _runtimeErrorNullPointer
	set	-45888,r1
	load	[r14+r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Prepare Argument: offset=12  value=_temp_1915  sizeInBytes=4
	load	[r14+-36],r1
	store	r1,[r15+4]
!   Send message Init
	set	-45888,r1
	load	[r14+r1],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,4,r2
	call	r2
! ASSIGNMENT STATEMENT...
	mov	703,r13		! source line 703
	mov	"\0\0AS",r10
!   if intIsZero (thread) then goto _runtimeErrorNullPointer
	set	-45888,r1
	load	[r14+r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1916 = thread + 76
	set	-45888,r1
	load	[r14+r1],r1
	add	r1,76,r1
	store	r1,[r14+-32]
!   Data Move: *_temp_1916 = 5  (sizeInBytes=4)
	mov	5,r1
	load	[r14+-32],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	704,r13		! source line 704
	mov	"\0\0SE",r10
!   _temp_1917 = &freeList
	set	41648,r11
	load	[r14+8],r1
	add	r1,r11,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=12  value=thread  sizeInBytes=4
	set	-45888,r1
	load	[r14+r1],r1
	store	r1,[r15+4]
!   Send message AddToEnd
	load	[r14+-28],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! ASSIGNMENT STATEMENT...
	mov	700,r13		! source line 700
	mov	"\0\0AS",r10
!   i = i + 1		(int)
	set	-45884,r1
	load	[r14+r1],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	set	-45884,r2
	store	r1,[r14+r2]
! END WHILE...
	jmp	_Label_1910
_Label_1912:
! ASSIGNMENT STATEMENT...
	mov	706,r13		! source line 706
	mov	"\0\0AS",r10
!   NEW CLASS Constructor...
!   ZeroMemory: threadManagerLock = zeros  (sizeInBytes=20)
	set	41660,r11
	load	[r14+8],r4
	add	r4,r11,r4
	store	r0,[r4]
	store	r0,[r4+4]
	store	r0,[r4+8]
	store	r0,[r4+12]
	store	r0,[r4+16]
!   threadManagerLock = _P_Kernel_Mutex
	set	_P_Kernel_Mutex,r1
	load	[r14+8],r11
	set	41660,r2
	store	r1,[r11+r2]
! SEND STATEMENT...
	mov	707,r13		! source line 707
	mov	"\0\0SE",r10
!   _temp_1919 = &threadManagerLock
	set	41660,r11
	load	[r14+8],r1
	add	r1,r11,r1
	store	r1,[r14+-20]
!   Send message Init
	load	[r14+-20],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,4,r2
	call	r2
! ASSIGNMENT STATEMENT...
	mov	708,r13		! source line 708
	mov	"\0\0AS",r10
!   NEW CLASS Constructor...
!   ZeroMemory: aThreadBecameFree = zeros  (sizeInBytes=16)
	set	41680,r11
	load	[r14+8],r4
	add	r4,r11,r4
	store	r0,[r4]
	store	r0,[r4+4]
	store	r0,[r4+8]
	store	r0,[r4+12]
!   aThreadBecameFree = _P_Kernel_Condition
	set	_P_Kernel_Condition,r1
	load	[r14+8],r11
	set	41680,r2
	store	r1,[r11+r2]
! SEND STATEMENT...
	mov	709,r13		! source line 709
	mov	"\0\0SE",r10
!   _temp_1921 = &aThreadBecameFree
	set	41680,r11
	load	[r14+8],r1
	add	r1,r11,r1
	store	r1,[r14+-12]
!   Send message Init
	load	[r14+-12],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,4,r2
	call	r2
! RETURN STATEMENT...
	mov	709,r13		! source line 709
	mov	"\0\0RE",r10
	set	45892,r1
	add	r15,r1,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_ThreadManager_1:
	.word	_sourceFileName
	.word	_Label_1922
	.word	4		! total size of parameters
	.word	45888		! frame size = 45888
	.word	_Label_1923
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1924
	.word	-12
	.word	4
	.word	_Label_1925
	.word	-16
	.word	4
	.word	_Label_1926
	.word	-20
	.word	4
	.word	_Label_1927
	.word	-24
	.word	4
	.word	_Label_1928
	.word	-28
	.word	4
	.word	_Label_1929
	.word	-32
	.word	4
	.word	_Label_1930
	.word	-36
	.word	4
	.word	_Label_1931
	.word	-40
	.word	4
	.word	_Label_1932
	.word	-44
	.word	4
	.word	_Label_1933
	.word	-48
	.word	4
	.word	_Label_1934
	.word	-52
	.word	4
	.word	_Label_1935
	.word	-56
	.word	4
	.word	_Label_1936
	.word	-4220
	.word	4164
	.word	_Label_1937
	.word	-4224
	.word	4
	.word	_Label_1938
	.word	-4228
	.word	4
	.word	_Label_1939
	.word	-45872
	.word	41644
	.word	_Label_1940
	.word	-45876
	.word	4
	.word	_Label_1941
	.word	-45880
	.word	4
	.word	_Label_1942
	.word	-45884
	.word	4
	.word	_Label_1943
	.word	-45888
	.word	4
	.word	0
_Label_1922:
	.ascii	"ThreadManager"
	.ascii	"::"
	.ascii	"Init\0"
	.align
_Label_1923:
	.ascii	"Pself\0"
	.align
_Label_1924:
	.byte	'?'
	.ascii	"_temp_1921\0"
	.align
_Label_1925:
	.byte	'?'
	.ascii	"_temp_1920\0"
	.align
_Label_1926:
	.byte	'?'
	.ascii	"_temp_1919\0"
	.align
_Label_1927:
	.byte	'?'
	.ascii	"_temp_1918\0"
	.align
_Label_1928:
	.byte	'?'
	.ascii	"_temp_1917\0"
	.align
_Label_1929:
	.byte	'?'
	.ascii	"_temp_1916\0"
	.align
_Label_1930:
	.byte	'?'
	.ascii	"_temp_1915\0"
	.align
_Label_1931:
	.byte	'?'
	.ascii	"_temp_1914\0"
	.align
_Label_1932:
	.byte	'?'
	.ascii	"_temp_1913\0"
	.align
_Label_1933:
	.byte	'?'
	.ascii	"_temp_1909\0"
	.align
_Label_1934:
	.byte	'?'
	.ascii	"_temp_1908\0"
	.align
_Label_1935:
	.byte	'?'
	.ascii	"_temp_1906\0"
	.align
_Label_1936:
	.byte	'?'
	.ascii	"_temp_1905\0"
	.align
_Label_1937:
	.byte	'?'
	.ascii	"_temp_1904\0"
	.align
_Label_1938:
	.byte	'?'
	.ascii	"_temp_1903\0"
	.align
_Label_1939:
	.byte	'?'
	.ascii	"_temp_1902\0"
	.align
_Label_1940:
	.byte	'?'
	.ascii	"_temp_1901\0"
	.align
_Label_1941:
	.byte	'?'
	.ascii	"_temp_1900\0"
	.align
_Label_1942:
	.byte	'I'
	.ascii	"i\0"
	.align
_Label_1943:
	.byte	'P'
	.ascii	"thread\0"
	.align
! 
! ===============  METHOD Print  ===============
! 
_Method_P_Kernel_ThreadManager_2:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_ThreadManager_2,r1
	push	r1
	mov	15,r1
_Label_4048:
	push	r0
	sub	r1,1,r1
	bne	_Label_4048
	mov	714,r13		! source line 714
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	721,r13		! source line 721
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=2  sizeInBytes=4
	mov	2,r1
	store	r1,[r15+0]
!   Call the function
	mov	721,r13		! source line 721
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=oldStatus  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-60]
! CALL STATEMENT...
!   _temp_1944 = _StringConst_87
	set	_StringConst_87,r1
	store	r1,[r14+-52]
!   Prepare Argument: offset=8  value=_temp_1944  sizeInBytes=4
	load	[r14+-52],r1
	store	r1,[r15+0]
!   Call the function
	mov	722,r13		! source line 722
	mov	"\0\0CE",r10
	call	print
! FOR STATEMENT...
	mov	723,r13		! source line 723
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_1949 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-48]
!   Calculate and save the FOR-LOOP ending value
!   _temp_1950 = 9		(4 bytes)
	mov	9,r1
	store	r1,[r14+-44]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_1949  (sizeInBytes=4)
	load	[r14+-48],r1
	store	r1,[r14+-56]
_Label_1945:
!   Perform the FOR-LOOP termination test
!   if i > _temp_1950 then goto _Label_1948		
	load	[r14+-56],r1
	load	[r14+-44],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_1948
_Label_1946:
	mov	723,r13		! source line 723
	mov	"\0\0FB",r10
! CALL STATEMENT...
!   _temp_1951 = _StringConst_88
	set	_StringConst_88,r1
	store	r1,[r14+-40]
!   Prepare Argument: offset=8  value=_temp_1951  sizeInBytes=4
	load	[r14+-40],r1
	store	r1,[r15+0]
!   Call the function
	mov	724,r13		! source line 724
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=i  sizeInBytes=4
	load	[r14+-56],r1
	store	r1,[r15+0]
!   Call the function
	mov	725,r13		! source line 725
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   _temp_1952 = _StringConst_89
	set	_StringConst_89,r1
	store	r1,[r14+-36]
!   Prepare Argument: offset=8  value=_temp_1952  sizeInBytes=4
	load	[r14+-36],r1
	store	r1,[r15+0]
!   Call the function
	mov	726,r13		! source line 726
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_1954 = &threadTable
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-28]
!   Move address of _temp_1954 [i ] into _temp_1955
!     make sure index expr is >= 0
	load	[r14+-56],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-28],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	4164,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-24]
!   _temp_1953 = _temp_1955		(4 bytes)
	load	[r14+-24],r1
	store	r1,[r14+-32]
!   Prepare Argument: offset=8  value=_temp_1953  sizeInBytes=4
	load	[r14+-32],r1
	store	r1,[r15+0]
!   Call the function
	mov	727,r13		! source line 727
	mov	"\0\0CA",r10
	call	_function_201_ThreadPrintShort
!   Increment the FOR-LOOP index variable and jump back
_Label_1947:
!   i = i + 1
	load	[r14+-56],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-56]
	jmp	_Label_1945
! END FOR
_Label_1948:
! CALL STATEMENT...
!   _temp_1956 = _StringConst_90
	set	_StringConst_90,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_1956  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   Call the function
	mov	729,r13		! source line 729
	mov	"\0\0CE",r10
	call	print
! SEND STATEMENT...
	mov	730,r13		! source line 730
	mov	"\0\0SE",r10
!   _temp_1957 = _function_200_PrintObjectAddr
	set	_function_200_PrintObjectAddr,r1
	store	r1,[r14+-16]
!   _temp_1958 = &freeList
	set	41648,r11
	load	[r14+8],r1
	add	r1,r11,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=12  value=_temp_1957  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+4]
!   Send message ApplyToEach
	load	[r14+-12],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,20,r2
	call	r2
! CALL STATEMENT...
!   Call the function
	mov	731,r13		! source line 731
	mov	"\0\0CA",r10
	call	_P_System_nl
! ASSIGNMENT STATEMENT...
	mov	732,r13		! source line 732
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=oldStatus  sizeInBytes=4
	load	[r14+-60],r1
	store	r1,[r15+0]
!   Call the function
	mov	732,r13		! source line 732
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=oldStatus  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-60]
! RETURN STATEMENT...
	mov	732,r13		! source line 732
	mov	"\0\0RE",r10
	add	r15,64,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_ThreadManager_2:
	.word	_sourceFileName
	.word	_Label_1959
	.word	4		! total size of parameters
	.word	60		! frame size = 60
	.word	_Label_1960
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1961
	.word	-12
	.word	4
	.word	_Label_1962
	.word	-16
	.word	4
	.word	_Label_1963
	.word	-20
	.word	4
	.word	_Label_1964
	.word	-24
	.word	4
	.word	_Label_1965
	.word	-28
	.word	4
	.word	_Label_1966
	.word	-32
	.word	4
	.word	_Label_1967
	.word	-36
	.word	4
	.word	_Label_1968
	.word	-40
	.word	4
	.word	_Label_1969
	.word	-44
	.word	4
	.word	_Label_1970
	.word	-48
	.word	4
	.word	_Label_1971
	.word	-52
	.word	4
	.word	_Label_1972
	.word	-56
	.word	4
	.word	_Label_1973
	.word	-60
	.word	4
	.word	0
_Label_1959:
	.ascii	"ThreadManager"
	.ascii	"::"
	.ascii	"Print\0"
	.align
_Label_1960:
	.ascii	"Pself\0"
	.align
_Label_1961:
	.byte	'?'
	.ascii	"_temp_1958\0"
	.align
_Label_1962:
	.byte	'?'
	.ascii	"_temp_1957\0"
	.align
_Label_1963:
	.byte	'?'
	.ascii	"_temp_1956\0"
	.align
_Label_1964:
	.byte	'?'
	.ascii	"_temp_1955\0"
	.align
_Label_1965:
	.byte	'?'
	.ascii	"_temp_1954\0"
	.align
_Label_1966:
	.byte	'?'
	.ascii	"_temp_1953\0"
	.align
_Label_1967:
	.byte	'?'
	.ascii	"_temp_1952\0"
	.align
_Label_1968:
	.byte	'?'
	.ascii	"_temp_1951\0"
	.align
_Label_1969:
	.byte	'?'
	.ascii	"_temp_1950\0"
	.align
_Label_1970:
	.byte	'?'
	.ascii	"_temp_1949\0"
	.align
_Label_1971:
	.byte	'?'
	.ascii	"_temp_1944\0"
	.align
_Label_1972:
	.byte	'I'
	.ascii	"i\0"
	.align
_Label_1973:
	.byte	'I'
	.ascii	"oldStatus\0"
	.align
! 
! ===============  METHOD GetANewThread  ===============
! 
_Method_P_Kernel_ThreadManager_3:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_ThreadManager_3,r1
	push	r1
	mov	9,r1
_Label_4049:
	push	r0
	sub	r1,1,r1
	bne	_Label_4049
	mov	737,r13		! source line 737
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! SEND STATEMENT...
	mov	745,r13		! source line 745
	mov	"\0\0SE",r10
!   _temp_1974 = &threadManagerLock
	set	41660,r11
	load	[r14+8],r1
	add	r1,r11,r1
	store	r1,[r14+-32]
!   Send message Lock
	load	[r14+-32],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! ASSIGNMENT STATEMENT...
	mov	746,r13		! source line 746
	mov	"\0\0AS",r10
	mov	746,r13		! source line 746
	mov	"\0\0SE",r10
!   _temp_1975 = &freeList
	set	41648,r11
	load	[r14+8],r1
	add	r1,r11,r1
	store	r1,[r14+-28]
!   Send message Remove
	load	[r14+-28],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
!   Retrieve Result: targetName=thread  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-36]
! WHILE STATEMENT...
	mov	747,r13		! source line 747
	mov	"\0\0WH",r10
_Label_1976:
!   if intIsZero (thread) then goto _Label_1977
	load	[r14+-36],r1
	cmp	r1,r0
	be	_Label_1977
	jmp	_Label_1978
_Label_1977:
	mov	747,r13		! source line 747
	mov	"\0\0WB",r10
! SEND STATEMENT...
	mov	748,r13		! source line 748
	mov	"\0\0SE",r10
!   _temp_1979 = &threadManagerLock
	set	41660,r11
	load	[r14+8],r1
	add	r1,r11,r1
	store	r1,[r14+-24]
!   _temp_1980 = &aThreadBecameFree
	set	41680,r11
	load	[r14+8],r1
	add	r1,r11,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=12  value=_temp_1979  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+4]
!   Send message Wait
	load	[r14+-20],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! ASSIGNMENT STATEMENT...
	mov	749,r13		! source line 749
	mov	"\0\0AS",r10
	mov	749,r13		! source line 749
	mov	"\0\0SE",r10
!   _temp_1981 = &freeList
	set	41648,r11
	load	[r14+8],r1
	add	r1,r11,r1
	store	r1,[r14+-16]
!   Send message Remove
	load	[r14+-16],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
!   Retrieve Result: targetName=thread  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-36]
! END WHILE...
	jmp	_Label_1976
_Label_1978:
! SEND STATEMENT...
	mov	751,r13		! source line 751
	mov	"\0\0SE",r10
!   _temp_1982 = &threadManagerLock
	set	41660,r11
	load	[r14+8],r1
	add	r1,r11,r1
	store	r1,[r14+-12]
!   Send message Unlock
	load	[r14+-12],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
! RETURN STATEMENT...
	mov	752,r13		! source line 752
	mov	"\0\0RE",r10
!   ReturnResult: thread  (sizeInBytes=4)
	load	[r14+-36],r1
	store	r1,[r14+8]
	add	r15,40,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_ThreadManager_3:
	.word	_sourceFileName
	.word	_Label_1983
	.word	4		! total size of parameters
	.word	36		! frame size = 36
	.word	_Label_1984
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1985
	.word	-12
	.word	4
	.word	_Label_1986
	.word	-16
	.word	4
	.word	_Label_1987
	.word	-20
	.word	4
	.word	_Label_1988
	.word	-24
	.word	4
	.word	_Label_1989
	.word	-28
	.word	4
	.word	_Label_1990
	.word	-32
	.word	4
	.word	_Label_1991
	.word	-36
	.word	4
	.word	0
_Label_1983:
	.ascii	"ThreadManager"
	.ascii	"::"
	.ascii	"GetANewThread\0"
	.align
_Label_1984:
	.ascii	"Pself\0"
	.align
_Label_1985:
	.byte	'?'
	.ascii	"_temp_1982\0"
	.align
_Label_1986:
	.byte	'?'
	.ascii	"_temp_1981\0"
	.align
_Label_1987:
	.byte	'?'
	.ascii	"_temp_1980\0"
	.align
_Label_1988:
	.byte	'?'
	.ascii	"_temp_1979\0"
	.align
_Label_1989:
	.byte	'?'
	.ascii	"_temp_1975\0"
	.align
_Label_1990:
	.byte	'?'
	.ascii	"_temp_1974\0"
	.align
_Label_1991:
	.byte	'P'
	.ascii	"thread\0"
	.align
! 
! ===============  METHOD FreeThread  ===============
! 
_Method_P_Kernel_ThreadManager_4:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_ThreadManager_4,r1
	push	r1
	mov	7,r1
_Label_4050:
	push	r0
	sub	r1,1,r1
	bne	_Label_4050
	mov	757,r13		! source line 757
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! SEND STATEMENT...
	mov	762,r13		! source line 762
	mov	"\0\0SE",r10
!   _temp_1992 = &threadManagerLock
	set	41660,r11
	load	[r14+8],r1
	add	r1,r11,r1
	store	r1,[r14+-28]
!   Send message Lock
	load	[r14+-28],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! SEND STATEMENT...
	mov	763,r13		! source line 763
	mov	"\0\0SE",r10
!   _temp_1993 = &freeList
	set	41648,r11
	load	[r14+8],r1
	add	r1,r11,r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=12  value=th  sizeInBytes=4
	load	[r14+12],r1
	store	r1,[r15+4]
!   Send message AddToEnd
	load	[r14+-24],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! SEND STATEMENT...
	mov	764,r13		! source line 764
	mov	"\0\0SE",r10
!   _temp_1994 = &threadManagerLock
	set	41660,r11
	load	[r14+8],r1
	add	r1,r11,r1
	store	r1,[r14+-20]
!   _temp_1995 = &aThreadBecameFree
	set	41680,r11
	load	[r14+8],r1
	add	r1,r11,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=12  value=_temp_1994  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+4]
!   Send message Signal
	load	[r14+-16],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
! SEND STATEMENT...
	mov	765,r13		! source line 765
	mov	"\0\0SE",r10
!   _temp_1996 = &threadManagerLock
	set	41660,r11
	load	[r14+8],r1
	add	r1,r11,r1
	store	r1,[r14+-12]
!   Send message Unlock
	load	[r14+-12],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
! RETURN STATEMENT...
	mov	765,r13		! source line 765
	mov	"\0\0RE",r10
	add	r15,32,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_ThreadManager_4:
	.word	_sourceFileName
	.word	_Label_1997
	.word	8		! total size of parameters
	.word	28		! frame size = 28
	.word	_Label_1998
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1999
	.word	12
	.word	4
	.word	_Label_2000
	.word	-12
	.word	4
	.word	_Label_2001
	.word	-16
	.word	4
	.word	_Label_2002
	.word	-20
	.word	4
	.word	_Label_2003
	.word	-24
	.word	4
	.word	_Label_2004
	.word	-28
	.word	4
	.word	0
_Label_1997:
	.ascii	"ThreadManager"
	.ascii	"::"
	.ascii	"FreeThread\0"
	.align
_Label_1998:
	.ascii	"Pself\0"
	.align
_Label_1999:
	.byte	'P'
	.ascii	"th\0"
	.align
_Label_2000:
	.byte	'?'
	.ascii	"_temp_1996\0"
	.align
_Label_2001:
	.byte	'?'
	.ascii	"_temp_1995\0"
	.align
_Label_2002:
	.byte	'?'
	.ascii	"_temp_1994\0"
	.align
_Label_2003:
	.byte	'?'
	.ascii	"_temp_1993\0"
	.align
_Label_2004:
	.byte	'?'
	.ascii	"_temp_1992\0"
	.align
! 
! ===============  CLASS ProcessControlBlock  ===============
! 
! Dispatch Table:
! 
_P_Kernel_ProcessControlBlock:
	.word	_Label_2005
	jmp	_Method_P_Kernel_ProcessControlBlock_1	! 4:	Init
	jmp	_Method_P_Kernel_ProcessControlBlock_2	! 8:	Print
	jmp	_Method_P_Kernel_ProcessControlBlock_3	! 12:	PrintShort
	.word	0
! 
! Class descriptor:
! 
_Label_2005:
	.word	1129070931		! Magic number 0x434c4153 == 'CLAS'
	.word	_Label_2006
	.word	_sourceFileName
	.word	217		! line number
	.word	168		! size of instances, in bytes
	.word	_P_Kernel_ProcessControlBlock
	.word	_P_List_Listable
	.word	_P_System_Object
	.word	0
_Label_2006:
	.ascii	"ProcessControlBlock\0"
	.align
! 
! ===============  METHOD Init  ===============
! 
_Method_P_Kernel_ProcessControlBlock_1:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_ProcessControlBlock_1,r1
	push	r1
	mov	18,r1
_Label_4051:
	push	r0
	sub	r1,1,r1
	bne	_Label_4051
	mov	778,r13		! source line 778
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	779,r13		! source line 779
	mov	"\0\0AS",r10
!   pid = -1		(4 bytes)
	mov	-1,r1
	load	[r14+8],r2
	store	r1,[r2+12]
! ASSIGNMENT STATEMENT...
	mov	780,r13		! source line 780
	mov	"\0\0AS",r10
!   status = 3		(4 bytes)
	mov	3,r1
	load	[r14+8],r2
	store	r1,[r2+20]
! ASSIGNMENT STATEMENT...
	mov	781,r13		! source line 781
	mov	"\0\0AS",r10
!   NEW CLASS Constructor...
!   ZeroMemory: addrSpace = zeros  (sizeInBytes=92)
	load	[r14+8],r4
	add	r4,32,r4
	mov	23,r3
_Label_4052:
	store	r0,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_4052
!   addrSpace = _P_Kernel_AddrSpace
	set	_P_Kernel_AddrSpace,r1
	load	[r14+8],r2
	store	r1,[r2+32]
! SEND STATEMENT...
	mov	782,r13		! source line 782
	mov	"\0\0SE",r10
!   _temp_2008 = &addrSpace
	load	[r14+8],r1
	add	r1,32,r1
	store	r1,[r14+-72]
!   Send message Init
	load	[r14+-72],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,4,r2
	call	r2
! ASSIGNMENT STATEMENT...
	mov	785,r13		! source line 785
	mov	"\0\0AS",r10
!   _temp_2009 = &fileDescriptor
	load	[r14+8],r1
	add	r1,124,r1
	store	r1,[r14+-68]
!   NEW ARRAY Constructor...
!   _temp_2011 = &_temp_2010
	add	r14,-64,r1
	store	r1,[r14+-20]
!   _temp_2011 = _temp_2011 + 4
	load	[r14+-20],r1
	add	r1,4,r1
	store	r1,[r14+-20]
!   Next value...
	mov	10,r1
	store	r1,[r14+-16]
_Label_2013:
!   Data Move: *_temp_2011 = 0  (sizeInBytes=4)
	mov	0,r1
	load	[r14+-20],r2
	store	r1,[r2]
!   _temp_2011 = _temp_2011 + 4
	load	[r14+-20],r1
	add	r1,4,r1
	store	r1,[r14+-20]
!   _temp_2012 = _temp_2012 + -1
	load	[r14+-16],r1
	add	r1,-1,r1
	store	r1,[r14+-16]
!   if intNotZero (_temp_2012) then goto _Label_2013
	load	[r14+-16],r1
	cmp	r1,r0
	bne	_Label_2013
!   Initialize the array size...
	mov	10,r1
	store	r1,[r14+-64]
!   _temp_2014 = &_temp_2010
	add	r14,-64,r1
	store	r1,[r14+-12]
!   make sure array has size 10
	load	[r14+-68],r1
	load	[r1],r1
	set	10, r2
	cmp	r1,0
	be	_Label_4053
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bne	_runtimeErrorWrongArraySize
_Label_4053:
!   make sure array has size 10
	load	[r14+-12],r1
	load	[r1],r1
	set	10, r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bne	_runtimeErrorWrongArraySize
!   Data Move: *_temp_2009 = *_temp_2014  (sizeInBytes=44)
	load	[r14+-12],r5
	load	[r14+-68],r4
	mov	11,r3
_Label_4054:
	load	[r5],r1
	add	r5,4,r5
	store	r1,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_4054
! RETURN STATEMENT...
	mov	785,r13		! source line 785
	mov	"\0\0RE",r10
	add	r15,76,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_ProcessControlBlock_1:
	.word	_sourceFileName
	.word	_Label_2015
	.word	4		! total size of parameters
	.word	72		! frame size = 72
	.word	_Label_2016
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2017
	.word	-12
	.word	4
	.word	_Label_2018
	.word	-16
	.word	4
	.word	_Label_2019
	.word	-20
	.word	4
	.word	_Label_2020
	.word	-64
	.word	44
	.word	_Label_2021
	.word	-68
	.word	4
	.word	_Label_2022
	.word	-72
	.word	4
	.word	_Label_2023
	.word	-76
	.word	4
	.word	0
_Label_2015:
	.ascii	"ProcessControlBlock"
	.ascii	"::"
	.ascii	"Init\0"
	.align
_Label_2016:
	.ascii	"Pself\0"
	.align
_Label_2017:
	.byte	'?'
	.ascii	"_temp_2014\0"
	.align
_Label_2018:
	.byte	'?'
	.ascii	"_temp_2012\0"
	.align
_Label_2019:
	.byte	'?'
	.ascii	"_temp_2011\0"
	.align
_Label_2020:
	.byte	'?'
	.ascii	"_temp_2010\0"
	.align
_Label_2021:
	.byte	'?'
	.ascii	"_temp_2009\0"
	.align
_Label_2022:
	.byte	'?'
	.ascii	"_temp_2008\0"
	.align
_Label_2023:
	.byte	'?'
	.ascii	"_temp_2007\0"
	.align
! 
! ===============  METHOD Print  ===============
! 
_Method_P_Kernel_ProcessControlBlock_2:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_ProcessControlBlock_2,r1
	push	r1
	mov	4,r1
_Label_4055:
	push	r0
	sub	r1,1,r1
	bne	_Label_4055
	mov	792,r13		! source line 792
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! SEND STATEMENT...
	mov	797,r13		! source line 797
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-20]
!   if intIsZero (_temp_2024) then goto _runtimeErrorNullPointer
	load	[r14+-20],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Send message PrintShort
	load	[r14+-20],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
! SEND STATEMENT...
	mov	798,r13		! source line 798
	mov	"\0\0SE",r10
!   _temp_2025 = &addrSpace
	load	[r14+8],r1
	add	r1,32,r1
	store	r1,[r14+-16]
!   Send message Print
	load	[r14+-16],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! CALL STATEMENT...
!   _temp_2026 = _StringConst_91
	set	_StringConst_91,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_2026  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	799,r13		! source line 799
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=myThread  sizeInBytes=4
	load	[r14+8],r1
	load	[r1+24],r1
	store	r1,[r15+0]
!   Call the function
	mov	800,r13		! source line 800
	mov	"\0\0CA",r10
	call	_function_201_ThreadPrintShort
! CALL STATEMENT...
!   Call the function
	mov	810,r13		! source line 810
	mov	"\0\0CA",r10
	call	_P_System_nl
! RETURN STATEMENT...
	mov	810,r13		! source line 810
	mov	"\0\0RE",r10
	add	r15,20,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_ProcessControlBlock_2:
	.word	_sourceFileName
	.word	_Label_2027
	.word	4		! total size of parameters
	.word	16		! frame size = 16
	.word	_Label_2028
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2029
	.word	-12
	.word	4
	.word	_Label_2030
	.word	-16
	.word	4
	.word	_Label_2031
	.word	-20
	.word	4
	.word	0
_Label_2027:
	.ascii	"ProcessControlBlock"
	.ascii	"::"
	.ascii	"Print\0"
	.align
_Label_2028:
	.ascii	"Pself\0"
	.align
_Label_2029:
	.byte	'?'
	.ascii	"_temp_2026\0"
	.align
_Label_2030:
	.byte	'?'
	.ascii	"_temp_2025\0"
	.align
_Label_2031:
	.byte	'?'
	.ascii	"_temp_2024\0"
	.align
! 
! ===============  METHOD PrintShort  ===============
! 
_Method_P_Kernel_ProcessControlBlock_3:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_ProcessControlBlock_3,r1
	push	r1
	mov	11,r1
_Label_4056:
	push	r0
	sub	r1,1,r1
	bne	_Label_4056
	mov	815,r13		! source line 815
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   _temp_2032 = _StringConst_92
	set	_StringConst_92,r1
	store	r1,[r14+-48]
!   Prepare Argument: offset=8  value=_temp_2032  sizeInBytes=4
	load	[r14+-48],r1
	store	r1,[r15+0]
!   Call the function
	mov	819,r13		! source line 819
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
	load	[r14+8],r1
	store	r1,[r14+-44]
!   Prepare Argument: offset=8  value=_temp_2033  sizeInBytes=4
	load	[r14+-44],r1
	store	r1,[r15+0]
!   Call the function
	mov	820,r13		! source line 820
	mov	"\0\0CE",r10
	call	printHex
! CALL STATEMENT...
!   _temp_2034 = _StringConst_93
	set	_StringConst_93,r1
	store	r1,[r14+-40]
!   Prepare Argument: offset=8  value=_temp_2034  sizeInBytes=4
	load	[r14+-40],r1
	store	r1,[r15+0]
!   Call the function
	mov	821,r13		! source line 821
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=pid  sizeInBytes=4
	load	[r14+8],r1
	load	[r1+12],r1
	store	r1,[r15+0]
!   Call the function
	mov	822,r13		! source line 822
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   _temp_2035 = _StringConst_94
	set	_StringConst_94,r1
	store	r1,[r14+-36]
!   Prepare Argument: offset=8  value=_temp_2035  sizeInBytes=4
	load	[r14+-36],r1
	store	r1,[r15+0]
!   Call the function
	mov	823,r13		! source line 823
	mov	"\0\0CE",r10
	call	print
! IF STATEMENT...
	mov	824,r13		! source line 824
	mov	"\0\0IF",r10
!   if status != 1 then goto _Label_2037		(int)
	load	[r14+8],r1
	load	[r1+20],r1
	mov	1,r2
	cmp	r1,r2
	bne	_Label_2037
!	jmp	_Label_2036
_Label_2036:
! THEN...
	mov	825,r13		! source line 825
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_2038 = _StringConst_95
	set	_StringConst_95,r1
	store	r1,[r14+-32]
!   Prepare Argument: offset=8  value=_temp_2038  sizeInBytes=4
	load	[r14+-32],r1
	store	r1,[r15+0]
!   Call the function
	mov	825,r13		! source line 825
	mov	"\0\0CE",r10
	call	print
	jmp	_Label_2039
_Label_2037:
! ELSE...
	mov	826,r13		! source line 826
	mov	"\0\0EL",r10
! IF STATEMENT...
	mov	826,r13		! source line 826
	mov	"\0\0IF",r10
!   if status != 2 then goto _Label_2041		(int)
	load	[r14+8],r1
	load	[r1+20],r1
	mov	2,r2
	cmp	r1,r2
	bne	_Label_2041
!	jmp	_Label_2040
_Label_2040:
! THEN...
	mov	827,r13		! source line 827
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_2042 = _StringConst_96
	set	_StringConst_96,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=8  value=_temp_2042  sizeInBytes=4
	load	[r14+-28],r1
	store	r1,[r15+0]
!   Call the function
	mov	827,r13		! source line 827
	mov	"\0\0CE",r10
	call	print
	jmp	_Label_2043
_Label_2041:
! ELSE...
	mov	828,r13		! source line 828
	mov	"\0\0EL",r10
! IF STATEMENT...
	mov	828,r13		! source line 828
	mov	"\0\0IF",r10
!   if status != 3 then goto _Label_2045		(int)
	load	[r14+8],r1
	load	[r1+20],r1
	mov	3,r2
	cmp	r1,r2
	bne	_Label_2045
!	jmp	_Label_2044
_Label_2044:
! THEN...
	mov	829,r13		! source line 829
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_2046 = _StringConst_97
	set	_StringConst_97,r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=8  value=_temp_2046  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+0]
!   Call the function
	mov	829,r13		! source line 829
	mov	"\0\0CE",r10
	call	print
	jmp	_Label_2047
_Label_2045:
! ELSE...
	mov	831,r13		! source line 831
	mov	"\0\0EL",r10
! CALL STATEMENT...
!   _temp_2048 = _StringConst_98
	set	_StringConst_98,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_2048  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	831,r13		! source line 831
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END IF...
_Label_2047:
! END IF...
_Label_2043:
! END IF...
_Label_2039:
! CALL STATEMENT...
!   _temp_2049 = _StringConst_99
	set	_StringConst_99,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_2049  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+0]
!   Call the function
	mov	833,r13		! source line 833
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=parentsPid  sizeInBytes=4
	load	[r14+8],r1
	load	[r1+16],r1
	store	r1,[r15+0]
!   Call the function
	mov	834,r13		! source line 834
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   _temp_2050 = _StringConst_100
	set	_StringConst_100,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_2050  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	835,r13		! source line 835
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=exitStatus  sizeInBytes=4
	load	[r14+8],r1
	load	[r1+28],r1
	store	r1,[r15+0]
!   Call the function
	mov	836,r13		! source line 836
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   Call the function
	mov	837,r13		! source line 837
	mov	"\0\0CA",r10
	call	_P_System_nl
! RETURN STATEMENT...
	mov	837,r13		! source line 837
	mov	"\0\0RE",r10
	add	r15,48,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_ProcessControlBlock_3:
	.word	_sourceFileName
	.word	_Label_2051
	.word	4		! total size of parameters
	.word	44		! frame size = 44
	.word	_Label_2052
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2053
	.word	-12
	.word	4
	.word	_Label_2054
	.word	-16
	.word	4
	.word	_Label_2055
	.word	-20
	.word	4
	.word	_Label_2056
	.word	-24
	.word	4
	.word	_Label_2057
	.word	-28
	.word	4
	.word	_Label_2058
	.word	-32
	.word	4
	.word	_Label_2059
	.word	-36
	.word	4
	.word	_Label_2060
	.word	-40
	.word	4
	.word	_Label_2061
	.word	-44
	.word	4
	.word	_Label_2062
	.word	-48
	.word	4
	.word	0
_Label_2051:
	.ascii	"ProcessControlBlock"
	.ascii	"::"
	.ascii	"PrintShort\0"
	.align
_Label_2052:
	.ascii	"Pself\0"
	.align
_Label_2053:
	.byte	'?'
	.ascii	"_temp_2050\0"
	.align
_Label_2054:
	.byte	'?'
	.ascii	"_temp_2049\0"
	.align
_Label_2055:
	.byte	'?'
	.ascii	"_temp_2048\0"
	.align
_Label_2056:
	.byte	'?'
	.ascii	"_temp_2046\0"
	.align
_Label_2057:
	.byte	'?'
	.ascii	"_temp_2042\0"
	.align
_Label_2058:
	.byte	'?'
	.ascii	"_temp_2038\0"
	.align
_Label_2059:
	.byte	'?'
	.ascii	"_temp_2035\0"
	.align
_Label_2060:
	.byte	'?'
	.ascii	"_temp_2034\0"
	.align
_Label_2061:
	.byte	'?'
	.ascii	"_temp_2033\0"
	.align
_Label_2062:
	.byte	'?'
	.ascii	"_temp_2032\0"
	.align
! 
! ===============  CLASS ProcessManager  ===============
! 
! Dispatch Table:
! 
_P_Kernel_ProcessManager:
	.word	_Label_2063
	jmp	_Method_P_Kernel_ProcessManager_1	! 4:	Init
	jmp	_Method_P_Kernel_ProcessManager_2	! 8:	Print
	jmp	_Method_P_Kernel_ProcessManager_3	! 12:	PrintShort
	jmp	_Method_P_Kernel_ProcessManager_4	! 16:	GetANewProcess
	jmp	_Method_P_Kernel_ProcessManager_5	! 20:	FreeProcess
	jmp	_Method_P_Kernel_ProcessManager_6	! 24:	TurnIntoZombie
	jmp	_Method_P_Kernel_ProcessManager_7	! 28:	WaitForZombie
	.word	0
! 
! Class descriptor:
! 
_Label_2063:
	.word	1129070931		! Magic number 0x434c4153 == 'CLAS'
	.word	_Label_2064
	.word	_sourceFileName
	.word	237		! line number
	.word	1760		! size of instances, in bytes
	.word	_P_Kernel_ProcessManager
	.word	_P_System_Object
	.word	0
_Label_2064:
	.ascii	"ProcessManager\0"
	.align
! 
! ===============  METHOD Init  ===============
! 
_Method_P_Kernel_ProcessManager_1:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_ProcessManager_1,r1
	push	r1
	mov	483,r1
_Label_4057:
	push	r0
	sub	r1,1,r1
	bne	_Label_4057
	mov	848,r13		! source line 848
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   _temp_2065 = _StringConst_101
	set	_StringConst_101,r1
	store	r1,[r14+-1924]
!   Prepare Argument: offset=8  value=_temp_2065  sizeInBytes=4
	load	[r14+-1924],r1
	store	r1,[r15+0]
!   Call the function
	mov	856,r13		! source line 856
	mov	"\0\0CE",r10
	call	print
! ASSIGNMENT STATEMENT...
	mov	857,r13		! source line 857
	mov	"\0\0AS",r10
!   _temp_2066 = &processTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-1920]
!   NEW ARRAY Constructor...
!   _temp_2068 = &_temp_2067
	add	r14,-1916,r1
	store	r1,[r14+-232]
!   _temp_2068 = _temp_2068 + 4
	load	[r14+-232],r1
	add	r1,4,r1
	store	r1,[r14+-232]
!   Next value...
!   NEW CLASS Constructor...
!   ZeroMemory: _temp_2070 = zeros  (sizeInBytes=168)
	add	r14,-224,r4
	mov	42,r3
_Label_4058:
	store	r0,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_4058
!   _temp_2070 = _P_Kernel_ProcessControlBlock
	set	_P_Kernel_ProcessControlBlock,r1
	store	r1,[r14+-224]
	mov	10,r1
	store	r1,[r14+-228]
_Label_2072:
!   Data Move: *_temp_2068 = _temp_2070  (sizeInBytes=168)
	add	r14,-224,r5
	load	[r14+-232],r4
	mov	42,r3
_Label_4059:
	load	[r5],r1
	add	r5,4,r5
	store	r1,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_4059
!   _temp_2068 = _temp_2068 + 168
	load	[r14+-232],r1
	add	r1,168,r1
	store	r1,[r14+-232]
!   _temp_2069 = _temp_2069 + -1
	load	[r14+-228],r1
	add	r1,-1,r1
	store	r1,[r14+-228]
!   if intNotZero (_temp_2069) then goto _Label_2072
	load	[r14+-228],r1
	cmp	r1,r0
	bne	_Label_2072
!   Initialize the array size...
	mov	10,r1
	store	r1,[r14+-1916]
!   _temp_2073 = &_temp_2067
	add	r14,-1916,r1
	store	r1,[r14+-52]
!   make sure array has size 10
	load	[r14+-1920],r1
	load	[r1],r1
	set	10, r2
	cmp	r1,0
	be	_Label_4060
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bne	_runtimeErrorWrongArraySize
_Label_4060:
!   make sure array has size 10
	load	[r14+-52],r1
	load	[r1],r1
	set	10, r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bne	_runtimeErrorWrongArraySize
!   Data Move: *_temp_2066 = *_temp_2073  (sizeInBytes=1684)
	load	[r14+-52],r5
	load	[r14+-1920],r4
	mov	421,r3
_Label_4061:
	load	[r5],r1
	add	r5,4,r5
	store	r1,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_4061
! ASSIGNMENT STATEMENT...
	mov	858,r13		! source line 858
	mov	"\0\0AS",r10
!   NEW CLASS Constructor...
!   ZeroMemory: freeList = zeros  (sizeInBytes=12)
	load	[r14+8],r4
	add	r4,1728,r4
	store	r0,[r4]
	store	r0,[r4+4]
	store	r0,[r4+8]
!   freeList = _P_List_List
	set	_P_List_List,r1
	load	[r14+8],r2
	store	r1,[r2+1728]
! ASSIGNMENT STATEMENT...
	mov	859,r13		! source line 859
	mov	"\0\0AS",r10
!   pidCount = 0		(4 bytes)
	mov	0,r1
	load	[r14+8],r2
	store	r1,[r2+4]
! ASSIGNMENT STATEMENT...
	mov	860,r13		! source line 860
	mov	"\0\0AS",r10
!   i = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-1928]
! WHILE STATEMENT...
	mov	860,r13		! source line 860
	mov	"\0\0WH",r10
_Label_2075:
!   if i >= 10 then goto _Label_2077		(int)
	load	[r14+-1928],r1
	mov	10,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_2077
!	jmp	_Label_2076
_Label_2076:
	mov	860,r13		! source line 860
	mov	"\0\0WB",r10
! ASSIGNMENT STATEMENT...
	mov	861,r13		! source line 861
	mov	"\0\0AS",r10
!   _temp_2078 = &processTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-44]
!   Move address of _temp_2078 [i ] into _temp_2079
!     make sure index expr is >= 0
	load	[r14+-1928],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-44],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	168,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-40]
!   process = _temp_2079		(4 bytes)
	load	[r14+-40],r1
	store	r1,[r14+-1932]
! SEND STATEMENT...
	mov	862,r13		! source line 862
	mov	"\0\0SE",r10
!   if intIsZero (process) then goto _runtimeErrorNullPointer
	load	[r14+-1932],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Send message Init
	load	[r14+-1932],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,4,r2
	call	r2
! SEND STATEMENT...
	mov	863,r13		! source line 863
	mov	"\0\0SE",r10
!   _temp_2080 = &freeList
	load	[r14+8],r1
	add	r1,1728,r1
	store	r1,[r14+-36]
!   Prepare Argument: offset=12  value=process  sizeInBytes=4
	load	[r14+-1932],r1
	store	r1,[r15+4]
!   Send message AddToEnd
	load	[r14+-36],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! ASSIGNMENT STATEMENT...
	mov	860,r13		! source line 860
	mov	"\0\0AS",r10
!   i = i + 1		(int)
	load	[r14+-1928],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-1928]
! END WHILE...
	jmp	_Label_2075
_Label_2077:
! ASSIGNMENT STATEMENT...
	mov	865,r13		! source line 865
	mov	"\0\0AS",r10
!   NEW CLASS Constructor...
!   ZeroMemory: processManagerLock = zeros  (sizeInBytes=20)
	load	[r14+8],r4
	add	r4,1692,r4
	store	r0,[r4]
	store	r0,[r4+4]
	store	r0,[r4+8]
	store	r0,[r4+12]
	store	r0,[r4+16]
!   processManagerLock = _P_Kernel_Mutex
	set	_P_Kernel_Mutex,r1
	load	[r14+8],r2
	store	r1,[r2+1692]
! SEND STATEMENT...
	mov	866,r13		! source line 866
	mov	"\0\0SE",r10
!   _temp_2082 = &processManagerLock
	load	[r14+8],r1
	add	r1,1692,r1
	store	r1,[r14+-28]
!   Send message Init
	load	[r14+-28],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,4,r2
	call	r2
! ASSIGNMENT STATEMENT...
	mov	867,r13		! source line 867
	mov	"\0\0AS",r10
!   NEW CLASS Constructor...
!   ZeroMemory: aProcessBecameFree = zeros  (sizeInBytes=16)
	load	[r14+8],r4
	add	r4,1712,r4
	store	r0,[r4]
	store	r0,[r4+4]
	store	r0,[r4+8]
	store	r0,[r4+12]
!   aProcessBecameFree = _P_Kernel_Condition
	set	_P_Kernel_Condition,r1
	load	[r14+8],r2
	store	r1,[r2+1712]
! SEND STATEMENT...
	mov	868,r13		! source line 868
	mov	"\0\0SE",r10
!   _temp_2084 = &aProcessBecameFree
	load	[r14+8],r1
	add	r1,1712,r1
	store	r1,[r14+-20]
!   Send message Init
	load	[r14+-20],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,4,r2
	call	r2
! ASSIGNMENT STATEMENT...
	mov	869,r13		! source line 869
	mov	"\0\0AS",r10
!   NEW CLASS Constructor...
!   ZeroMemory: aProcessDied = zeros  (sizeInBytes=16)
	load	[r14+8],r4
	add	r4,1740,r4
	store	r0,[r4]
	store	r0,[r4+4]
	store	r0,[r4+8]
	store	r0,[r4+12]
!   aProcessDied = _P_Kernel_Condition
	set	_P_Kernel_Condition,r1
	load	[r14+8],r2
	store	r1,[r2+1740]
! SEND STATEMENT...
	mov	870,r13		! source line 870
	mov	"\0\0SE",r10
!   _temp_2086 = &aProcessDied
	load	[r14+8],r1
	add	r1,1740,r1
	store	r1,[r14+-12]
!   Send message Init
	load	[r14+-12],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,4,r2
	call	r2
! RETURN STATEMENT...
	mov	870,r13		! source line 870
	mov	"\0\0RE",r10
	add	r15,1936,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_ProcessManager_1:
	.word	_sourceFileName
	.word	_Label_2087
	.word	4		! total size of parameters
	.word	1932		! frame size = 1932
	.word	_Label_2088
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2089
	.word	-12
	.word	4
	.word	_Label_2090
	.word	-16
	.word	4
	.word	_Label_2091
	.word	-20
	.word	4
	.word	_Label_2092
	.word	-24
	.word	4
	.word	_Label_2093
	.word	-28
	.word	4
	.word	_Label_2094
	.word	-32
	.word	4
	.word	_Label_2095
	.word	-36
	.word	4
	.word	_Label_2096
	.word	-40
	.word	4
	.word	_Label_2097
	.word	-44
	.word	4
	.word	_Label_2098
	.word	-48
	.word	4
	.word	_Label_2099
	.word	-52
	.word	4
	.word	_Label_2100
	.word	-56
	.word	4
	.word	_Label_2101
	.word	-224
	.word	168
	.word	_Label_2102
	.word	-228
	.word	4
	.word	_Label_2103
	.word	-232
	.word	4
	.word	_Label_2104
	.word	-1916
	.word	1684
	.word	_Label_2105
	.word	-1920
	.word	4
	.word	_Label_2106
	.word	-1924
	.word	4
	.word	_Label_2107
	.word	-1928
	.word	4
	.word	_Label_2108
	.word	-1932
	.word	4
	.word	0
_Label_2087:
	.ascii	"ProcessManager"
	.ascii	"::"
	.ascii	"Init\0"
	.align
_Label_2088:
	.ascii	"Pself\0"
	.align
_Label_2089:
	.byte	'?'
	.ascii	"_temp_2086\0"
	.align
_Label_2090:
	.byte	'?'
	.ascii	"_temp_2085\0"
	.align
_Label_2091:
	.byte	'?'
	.ascii	"_temp_2084\0"
	.align
_Label_2092:
	.byte	'?'
	.ascii	"_temp_2083\0"
	.align
_Label_2093:
	.byte	'?'
	.ascii	"_temp_2082\0"
	.align
_Label_2094:
	.byte	'?'
	.ascii	"_temp_2081\0"
	.align
_Label_2095:
	.byte	'?'
	.ascii	"_temp_2080\0"
	.align
_Label_2096:
	.byte	'?'
	.ascii	"_temp_2079\0"
	.align
_Label_2097:
	.byte	'?'
	.ascii	"_temp_2078\0"
	.align
_Label_2098:
	.byte	'?'
	.ascii	"_temp_2074\0"
	.align
_Label_2099:
	.byte	'?'
	.ascii	"_temp_2073\0"
	.align
_Label_2100:
	.byte	'?'
	.ascii	"_temp_2071\0"
	.align
_Label_2101:
	.byte	'?'
	.ascii	"_temp_2070\0"
	.align
_Label_2102:
	.byte	'?'
	.ascii	"_temp_2069\0"
	.align
_Label_2103:
	.byte	'?'
	.ascii	"_temp_2068\0"
	.align
_Label_2104:
	.byte	'?'
	.ascii	"_temp_2067\0"
	.align
_Label_2105:
	.byte	'?'
	.ascii	"_temp_2066\0"
	.align
_Label_2106:
	.byte	'?'
	.ascii	"_temp_2065\0"
	.align
_Label_2107:
	.byte	'I'
	.ascii	"i\0"
	.align
_Label_2108:
	.byte	'P'
	.ascii	"process\0"
	.align
! 
! ===============  METHOD Print  ===============
! 
_Method_P_Kernel_ProcessManager_2:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_ProcessManager_2,r1
	push	r1
	mov	14,r1
_Label_4062:
	push	r0
	sub	r1,1,r1
	bne	_Label_4062
	mov	875,r13		! source line 875
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	882,r13		! source line 882
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=2  sizeInBytes=4
	mov	2,r1
	store	r1,[r15+0]
!   Call the function
	mov	882,r13		! source line 882
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=oldStatus  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-56]
! CALL STATEMENT...
!   _temp_2109 = _StringConst_102
	set	_StringConst_102,r1
	store	r1,[r14+-48]
!   Prepare Argument: offset=8  value=_temp_2109  sizeInBytes=4
	load	[r14+-48],r1
	store	r1,[r15+0]
!   Call the function
	mov	883,r13		! source line 883
	mov	"\0\0CE",r10
	call	print
! FOR STATEMENT...
	mov	884,r13		! source line 884
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_2114 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-44]
!   Calculate and save the FOR-LOOP ending value
!   _temp_2115 = 9		(4 bytes)
	mov	9,r1
	store	r1,[r14+-40]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_2114  (sizeInBytes=4)
	load	[r14+-44],r1
	store	r1,[r14+-52]
_Label_2110:
!   Perform the FOR-LOOP termination test
!   if i > _temp_2115 then goto _Label_2113		
	load	[r14+-52],r1
	load	[r14+-40],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_2113
_Label_2111:
	mov	884,r13		! source line 884
	mov	"\0\0FB",r10
! CALL STATEMENT...
!   _temp_2116 = _StringConst_103
	set	_StringConst_103,r1
	store	r1,[r14+-36]
!   Prepare Argument: offset=8  value=_temp_2116  sizeInBytes=4
	load	[r14+-36],r1
	store	r1,[r15+0]
!   Call the function
	mov	885,r13		! source line 885
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=i  sizeInBytes=4
	load	[r14+-52],r1
	store	r1,[r15+0]
!   Call the function
	mov	886,r13		! source line 886
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   _temp_2117 = _StringConst_104
	set	_StringConst_104,r1
	store	r1,[r14+-32]
!   Prepare Argument: offset=8  value=_temp_2117  sizeInBytes=4
	load	[r14+-32],r1
	store	r1,[r15+0]
!   Call the function
	mov	887,r13		! source line 887
	mov	"\0\0CE",r10
	call	print
! SEND STATEMENT...
	mov	888,r13		! source line 888
	mov	"\0\0SE",r10
!   _temp_2118 = &processTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-28]
!   Move address of _temp_2118 [i ] into _temp_2119
!     make sure index expr is >= 0
	load	[r14+-52],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-28],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	168,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-24]
!   Send message Print
	load	[r14+-24],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
!   Increment the FOR-LOOP index variable and jump back
_Label_2112:
!   i = i + 1
	load	[r14+-52],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-52]
	jmp	_Label_2110
! END FOR
_Label_2113:
! CALL STATEMENT...
!   _temp_2120 = _StringConst_105
	set	_StringConst_105,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_2120  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   Call the function
	mov	890,r13		! source line 890
	mov	"\0\0CE",r10
	call	print
! SEND STATEMENT...
	mov	891,r13		! source line 891
	mov	"\0\0SE",r10
!   _temp_2121 = _function_200_PrintObjectAddr
	set	_function_200_PrintObjectAddr,r1
	store	r1,[r14+-16]
!   _temp_2122 = &freeList
	load	[r14+8],r1
	add	r1,1728,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=12  value=_temp_2121  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+4]
!   Send message ApplyToEach
	load	[r14+-12],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,20,r2
	call	r2
! CALL STATEMENT...
!   Call the function
	mov	892,r13		! source line 892
	mov	"\0\0CA",r10
	call	_P_System_nl
! ASSIGNMENT STATEMENT...
	mov	893,r13		! source line 893
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=oldStatus  sizeInBytes=4
	load	[r14+-56],r1
	store	r1,[r15+0]
!   Call the function
	mov	893,r13		! source line 893
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=oldStatus  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-56]
! RETURN STATEMENT...
	mov	893,r13		! source line 893
	mov	"\0\0RE",r10
	add	r15,60,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_ProcessManager_2:
	.word	_sourceFileName
	.word	_Label_2123
	.word	4		! total size of parameters
	.word	56		! frame size = 56
	.word	_Label_2124
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2125
	.word	-12
	.word	4
	.word	_Label_2126
	.word	-16
	.word	4
	.word	_Label_2127
	.word	-20
	.word	4
	.word	_Label_2128
	.word	-24
	.word	4
	.word	_Label_2129
	.word	-28
	.word	4
	.word	_Label_2130
	.word	-32
	.word	4
	.word	_Label_2131
	.word	-36
	.word	4
	.word	_Label_2132
	.word	-40
	.word	4
	.word	_Label_2133
	.word	-44
	.word	4
	.word	_Label_2134
	.word	-48
	.word	4
	.word	_Label_2135
	.word	-52
	.word	4
	.word	_Label_2136
	.word	-56
	.word	4
	.word	0
_Label_2123:
	.ascii	"ProcessManager"
	.ascii	"::"
	.ascii	"Print\0"
	.align
_Label_2124:
	.ascii	"Pself\0"
	.align
_Label_2125:
	.byte	'?'
	.ascii	"_temp_2122\0"
	.align
_Label_2126:
	.byte	'?'
	.ascii	"_temp_2121\0"
	.align
_Label_2127:
	.byte	'?'
	.ascii	"_temp_2120\0"
	.align
_Label_2128:
	.byte	'?'
	.ascii	"_temp_2119\0"
	.align
_Label_2129:
	.byte	'?'
	.ascii	"_temp_2118\0"
	.align
_Label_2130:
	.byte	'?'
	.ascii	"_temp_2117\0"
	.align
_Label_2131:
	.byte	'?'
	.ascii	"_temp_2116\0"
	.align
_Label_2132:
	.byte	'?'
	.ascii	"_temp_2115\0"
	.align
_Label_2133:
	.byte	'?'
	.ascii	"_temp_2114\0"
	.align
_Label_2134:
	.byte	'?'
	.ascii	"_temp_2109\0"
	.align
_Label_2135:
	.byte	'I'
	.ascii	"i\0"
	.align
_Label_2136:
	.byte	'I'
	.ascii	"oldStatus\0"
	.align
! 
! ===============  METHOD PrintShort  ===============
! 
_Method_P_Kernel_ProcessManager_3:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_ProcessManager_3,r1
	push	r1
	mov	13,r1
_Label_4063:
	push	r0
	sub	r1,1,r1
	bne	_Label_4063
	mov	898,r13		! source line 898
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	905,r13		! source line 905
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=2  sizeInBytes=4
	mov	2,r1
	store	r1,[r15+0]
!   Call the function
	mov	905,r13		! source line 905
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=oldStatus  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-52]
! CALL STATEMENT...
!   _temp_2137 = _StringConst_106
	set	_StringConst_106,r1
	store	r1,[r14+-44]
!   Prepare Argument: offset=8  value=_temp_2137  sizeInBytes=4
	load	[r14+-44],r1
	store	r1,[r15+0]
!   Call the function
	mov	906,r13		! source line 906
	mov	"\0\0CE",r10
	call	print
! FOR STATEMENT...
	mov	907,r13		! source line 907
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_2142 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-40]
!   Calculate and save the FOR-LOOP ending value
!   _temp_2143 = 9		(4 bytes)
	mov	9,r1
	store	r1,[r14+-36]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_2142  (sizeInBytes=4)
	load	[r14+-40],r1
	store	r1,[r14+-48]
_Label_2138:
!   Perform the FOR-LOOP termination test
!   if i > _temp_2143 then goto _Label_2141		
	load	[r14+-48],r1
	load	[r14+-36],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_2141
_Label_2139:
	mov	907,r13		! source line 907
	mov	"\0\0FB",r10
! CALL STATEMENT...
!   _temp_2144 = _StringConst_107
	set	_StringConst_107,r1
	store	r1,[r14+-32]
!   Prepare Argument: offset=8  value=_temp_2144  sizeInBytes=4
	load	[r14+-32],r1
	store	r1,[r15+0]
!   Call the function
	mov	908,r13		! source line 908
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=i  sizeInBytes=4
	load	[r14+-48],r1
	store	r1,[r15+0]
!   Call the function
	mov	909,r13		! source line 909
	mov	"\0\0CE",r10
	call	printInt
! SEND STATEMENT...
	mov	910,r13		! source line 910
	mov	"\0\0SE",r10
!   _temp_2145 = &processTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-28]
!   Move address of _temp_2145 [i ] into _temp_2146
!     make sure index expr is >= 0
	load	[r14+-48],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-28],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	168,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-24]
!   Send message PrintShort
	load	[r14+-24],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
!   Increment the FOR-LOOP index variable and jump back
_Label_2140:
!   i = i + 1
	load	[r14+-48],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-48]
	jmp	_Label_2138
! END FOR
_Label_2141:
! CALL STATEMENT...
!   _temp_2147 = _StringConst_108
	set	_StringConst_108,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_2147  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   Call the function
	mov	912,r13		! source line 912
	mov	"\0\0CE",r10
	call	print
! SEND STATEMENT...
	mov	913,r13		! source line 913
	mov	"\0\0SE",r10
!   _temp_2148 = _function_200_PrintObjectAddr
	set	_function_200_PrintObjectAddr,r1
	store	r1,[r14+-16]
!   _temp_2149 = &freeList
	load	[r14+8],r1
	add	r1,1728,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=12  value=_temp_2148  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+4]
!   Send message ApplyToEach
	load	[r14+-12],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,20,r2
	call	r2
! CALL STATEMENT...
!   Call the function
	mov	914,r13		! source line 914
	mov	"\0\0CA",r10
	call	_P_System_nl
! ASSIGNMENT STATEMENT...
	mov	915,r13		! source line 915
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=oldStatus  sizeInBytes=4
	load	[r14+-52],r1
	store	r1,[r15+0]
!   Call the function
	mov	915,r13		! source line 915
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=oldStatus  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-52]
! RETURN STATEMENT...
	mov	915,r13		! source line 915
	mov	"\0\0RE",r10
	add	r15,56,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_ProcessManager_3:
	.word	_sourceFileName
	.word	_Label_2150
	.word	4		! total size of parameters
	.word	52		! frame size = 52
	.word	_Label_2151
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2152
	.word	-12
	.word	4
	.word	_Label_2153
	.word	-16
	.word	4
	.word	_Label_2154
	.word	-20
	.word	4
	.word	_Label_2155
	.word	-24
	.word	4
	.word	_Label_2156
	.word	-28
	.word	4
	.word	_Label_2157
	.word	-32
	.word	4
	.word	_Label_2158
	.word	-36
	.word	4
	.word	_Label_2159
	.word	-40
	.word	4
	.word	_Label_2160
	.word	-44
	.word	4
	.word	_Label_2161
	.word	-48
	.word	4
	.word	_Label_2162
	.word	-52
	.word	4
	.word	0
_Label_2150:
	.ascii	"ProcessManager"
	.ascii	"::"
	.ascii	"PrintShort\0"
	.align
_Label_2151:
	.ascii	"Pself\0"
	.align
_Label_2152:
	.byte	'?'
	.ascii	"_temp_2149\0"
	.align
_Label_2153:
	.byte	'?'
	.ascii	"_temp_2148\0"
	.align
_Label_2154:
	.byte	'?'
	.ascii	"_temp_2147\0"
	.align
_Label_2155:
	.byte	'?'
	.ascii	"_temp_2146\0"
	.align
_Label_2156:
	.byte	'?'
	.ascii	"_temp_2145\0"
	.align
_Label_2157:
	.byte	'?'
	.ascii	"_temp_2144\0"
	.align
_Label_2158:
	.byte	'?'
	.ascii	"_temp_2143\0"
	.align
_Label_2159:
	.byte	'?'
	.ascii	"_temp_2142\0"
	.align
_Label_2160:
	.byte	'?'
	.ascii	"_temp_2137\0"
	.align
_Label_2161:
	.byte	'I'
	.ascii	"i\0"
	.align
_Label_2162:
	.byte	'I'
	.ascii	"oldStatus\0"
	.align
! 
! ===============  METHOD GetANewProcess  ===============
! 
_Method_P_Kernel_ProcessManager_4:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_ProcessManager_4,r1
	push	r1
	mov	11,r1
_Label_4064:
	push	r0
	sub	r1,1,r1
	bne	_Label_4064
	mov	920,r13		! source line 920
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! SEND STATEMENT...
	mov	928,r13		! source line 928
	mov	"\0\0SE",r10
!   _temp_2163 = &processManagerLock
	load	[r14+8],r1
	add	r1,1692,r1
	store	r1,[r14+-40]
!   Send message Lock
	load	[r14+-40],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! ASSIGNMENT STATEMENT...
	mov	929,r13		! source line 929
	mov	"\0\0AS",r10
	mov	929,r13		! source line 929
	mov	"\0\0SE",r10
!   _temp_2164 = &freeList
	load	[r14+8],r1
	add	r1,1728,r1
	store	r1,[r14+-36]
!   Send message Remove
	load	[r14+-36],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
!   Retrieve Result: targetName=process  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-44]
! WHILE STATEMENT...
	mov	930,r13		! source line 930
	mov	"\0\0WH",r10
_Label_2165:
!   if intIsZero (process) then goto _Label_2166
	load	[r14+-44],r1
	cmp	r1,r0
	be	_Label_2166
	jmp	_Label_2167
_Label_2166:
	mov	930,r13		! source line 930
	mov	"\0\0WB",r10
! SEND STATEMENT...
	mov	931,r13		! source line 931
	mov	"\0\0SE",r10
!   _temp_2168 = &processManagerLock
	load	[r14+8],r1
	add	r1,1692,r1
	store	r1,[r14+-32]
!   _temp_2169 = &aProcessBecameFree
	load	[r14+8],r1
	add	r1,1712,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=12  value=_temp_2168  sizeInBytes=4
	load	[r14+-32],r1
	store	r1,[r15+4]
!   Send message Wait
	load	[r14+-28],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! ASSIGNMENT STATEMENT...
	mov	932,r13		! source line 932
	mov	"\0\0AS",r10
	mov	932,r13		! source line 932
	mov	"\0\0SE",r10
!   _temp_2170 = &freeList
	load	[r14+8],r1
	add	r1,1728,r1
	store	r1,[r14+-24]
!   Send message Remove
	load	[r14+-24],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
!   Retrieve Result: targetName=process  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-44]
! END WHILE...
	jmp	_Label_2165
_Label_2167:
! ASSIGNMENT STATEMENT...
	mov	934,r13		! source line 934
	mov	"\0\0AS",r10
!   if intIsZero (process) then goto _runtimeErrorNullPointer
	load	[r14+-44],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2171 = process + 20
	load	[r14+-44],r1
	add	r1,20,r1
	store	r1,[r14+-20]
!   Data Move: *_temp_2171 = 1  (sizeInBytes=4)
	mov	1,r1
	load	[r14+-20],r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	935,r13		! source line 935
	mov	"\0\0AS",r10
!   pidCount = pidCount + 1		(int)
	load	[r14+8],r1
	load	[r1+4],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	load	[r14+8],r2
	store	r1,[r2+4]
! ASSIGNMENT STATEMENT...
	mov	936,r13		! source line 936
	mov	"\0\0AS",r10
!   if intIsZero (process) then goto _runtimeErrorNullPointer
	load	[r14+-44],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2172 = process + 12
	load	[r14+-44],r1
	add	r1,12,r1
	store	r1,[r14+-16]
!   Data Move: *_temp_2172 = pidCount  (sizeInBytes=4)
	load	[r14+8],r1
	load	[r1+4],r1
	load	[r14+-16],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	937,r13		! source line 937
	mov	"\0\0SE",r10
!   _temp_2173 = &processManagerLock
	load	[r14+8],r1
	add	r1,1692,r1
	store	r1,[r14+-12]
!   Send message Unlock
	load	[r14+-12],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
! RETURN STATEMENT...
	mov	938,r13		! source line 938
	mov	"\0\0RE",r10
!   ReturnResult: process  (sizeInBytes=4)
	load	[r14+-44],r1
	store	r1,[r14+8]
	add	r15,48,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_ProcessManager_4:
	.word	_sourceFileName
	.word	_Label_2174
	.word	4		! total size of parameters
	.word	44		! frame size = 44
	.word	_Label_2175
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2176
	.word	-12
	.word	4
	.word	_Label_2177
	.word	-16
	.word	4
	.word	_Label_2178
	.word	-20
	.word	4
	.word	_Label_2179
	.word	-24
	.word	4
	.word	_Label_2180
	.word	-28
	.word	4
	.word	_Label_2181
	.word	-32
	.word	4
	.word	_Label_2182
	.word	-36
	.word	4
	.word	_Label_2183
	.word	-40
	.word	4
	.word	_Label_2184
	.word	-44
	.word	4
	.word	0
_Label_2174:
	.ascii	"ProcessManager"
	.ascii	"::"
	.ascii	"GetANewProcess\0"
	.align
_Label_2175:
	.ascii	"Pself\0"
	.align
_Label_2176:
	.byte	'?'
	.ascii	"_temp_2173\0"
	.align
_Label_2177:
	.byte	'?'
	.ascii	"_temp_2172\0"
	.align
_Label_2178:
	.byte	'?'
	.ascii	"_temp_2171\0"
	.align
_Label_2179:
	.byte	'?'
	.ascii	"_temp_2170\0"
	.align
_Label_2180:
	.byte	'?'
	.ascii	"_temp_2169\0"
	.align
_Label_2181:
	.byte	'?'
	.ascii	"_temp_2168\0"
	.align
_Label_2182:
	.byte	'?'
	.ascii	"_temp_2164\0"
	.align
_Label_2183:
	.byte	'?'
	.ascii	"_temp_2163\0"
	.align
_Label_2184:
	.byte	'P'
	.ascii	"process\0"
	.align
! 
! ===============  METHOD FreeProcess  ===============
! 
_Method_P_Kernel_ProcessManager_5:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_ProcessManager_5,r1
	push	r1
	mov	9,r1
_Label_4065:
	push	r0
	sub	r1,1,r1
	bne	_Label_4065
	mov	943,r13		! source line 943
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   _temp_2185 = _StringConst_109
	set	_StringConst_109,r1
	store	r1,[r14+-36]
!   Prepare Argument: offset=8  value=_temp_2185  sizeInBytes=4
	load	[r14+-36],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	948,r13		! source line 948
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! SEND STATEMENT...
	mov	949,r13		! source line 949
	mov	"\0\0SE",r10
!   _temp_2186 = &processManagerLock
	load	[r14+8],r1
	add	r1,1692,r1
	store	r1,[r14+-32]
!   Send message Lock
	load	[r14+-32],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! SEND STATEMENT...
	mov	950,r13		! source line 950
	mov	"\0\0SE",r10
!   _temp_2187 = &freeList
	load	[r14+8],r1
	add	r1,1728,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=12  value=p  sizeInBytes=4
	load	[r14+12],r1
	store	r1,[r15+4]
!   Send message AddToEnd
	load	[r14+-28],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! ASSIGNMENT STATEMENT...
	mov	951,r13		! source line 951
	mov	"\0\0AS",r10
!   if intIsZero (p) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2188 = p + 20
	load	[r14+12],r1
	add	r1,20,r1
	store	r1,[r14+-24]
!   Data Move: *_temp_2188 = 3  (sizeInBytes=4)
	mov	3,r1
	load	[r14+-24],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	953,r13		! source line 953
	mov	"\0\0SE",r10
!   _temp_2189 = &processManagerLock
	load	[r14+8],r1
	add	r1,1692,r1
	store	r1,[r14+-20]
!   _temp_2190 = &aProcessBecameFree
	load	[r14+8],r1
	add	r1,1712,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=12  value=_temp_2189  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+4]
!   Send message Signal
	load	[r14+-16],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
! SEND STATEMENT...
	mov	954,r13		! source line 954
	mov	"\0\0SE",r10
!   _temp_2191 = &processManagerLock
	load	[r14+8],r1
	add	r1,1692,r1
	store	r1,[r14+-12]
!   Send message Unlock
	load	[r14+-12],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
! RETURN STATEMENT...
	mov	954,r13		! source line 954
	mov	"\0\0RE",r10
	add	r15,40,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_ProcessManager_5:
	.word	_sourceFileName
	.word	_Label_2192
	.word	8		! total size of parameters
	.word	36		! frame size = 36
	.word	_Label_2193
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2194
	.word	12
	.word	4
	.word	_Label_2195
	.word	-12
	.word	4
	.word	_Label_2196
	.word	-16
	.word	4
	.word	_Label_2197
	.word	-20
	.word	4
	.word	_Label_2198
	.word	-24
	.word	4
	.word	_Label_2199
	.word	-28
	.word	4
	.word	_Label_2200
	.word	-32
	.word	4
	.word	_Label_2201
	.word	-36
	.word	4
	.word	0
_Label_2192:
	.ascii	"ProcessManager"
	.ascii	"::"
	.ascii	"FreeProcess\0"
	.align
_Label_2193:
	.ascii	"Pself\0"
	.align
_Label_2194:
	.byte	'P'
	.ascii	"p\0"
	.align
_Label_2195:
	.byte	'?'
	.ascii	"_temp_2191\0"
	.align
_Label_2196:
	.byte	'?'
	.ascii	"_temp_2190\0"
	.align
_Label_2197:
	.byte	'?'
	.ascii	"_temp_2189\0"
	.align
_Label_2198:
	.byte	'?'
	.ascii	"_temp_2188\0"
	.align
_Label_2199:
	.byte	'?'
	.ascii	"_temp_2187\0"
	.align
_Label_2200:
	.byte	'?'
	.ascii	"_temp_2186\0"
	.align
_Label_2201:
	.byte	'?'
	.ascii	"_temp_2185\0"
	.align
! 
! ===============  METHOD TurnIntoZombie  ===============
! 
_Method_P_Kernel_ProcessManager_6:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_ProcessManager_6,r1
	push	r1
	mov	51,r1
_Label_4066:
	push	r0
	sub	r1,1,r1
	bne	_Label_4066
	mov	960,r13		! source line 960
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! SEND STATEMENT...
	mov	968,r13		! source line 968
	mov	"\0\0SE",r10
!   _temp_2202 = &processManagerLock
	load	[r14+8],r1
	add	r1,1692,r1
	store	r1,[r14+-192]
!   Send message Lock
	load	[r14+-192],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! ASSIGNMENT STATEMENT...
	mov	971,r13		! source line 971
	mov	"\0\0AS",r10
!   if intIsZero (p) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2203 = p + 12
	load	[r14+12],r1
	add	r1,12,r1
	store	r1,[r14+-188]
!   Data Move: myPid = *_temp_2203  (sizeInBytes=4)
	load	[r14+-188],r1
	load	[r1],r1
	store	r1,[r14+-200]
! ASSIGNMENT STATEMENT...
	mov	973,r13		! source line 973
	mov	"\0\0AS",r10
!   i = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-196]
! WHILE STATEMENT...
	mov	973,r13		! source line 973
	mov	"\0\0WH",r10
_Label_2204:
!   if i >= 10 then goto _Label_2206		(int)
	load	[r14+-196],r1
	mov	10,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_2206
!	jmp	_Label_2205
_Label_2205:
	mov	973,r13		! source line 973
	mov	"\0\0WB",r10
! IF STATEMENT...
	mov	974,r13		! source line 974
	mov	"\0\0IF",r10
!   _temp_2211 = &processTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-180]
!   Move address of _temp_2211 [i ] into _temp_2212
!     make sure index expr is >= 0
	load	[r14+-196],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-180],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	168,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-176]
!   _temp_2213 = _temp_2212 + 16
	load	[r14+-176],r1
	add	r1,16,r1
	store	r1,[r14+-172]
!   Data Move: _temp_2210 = *_temp_2213  (sizeInBytes=4)
	load	[r14+-172],r1
	load	[r1],r1
	store	r1,[r14+-184]
!   if _temp_2210 != myPid then goto _Label_2208		(int)
	load	[r14+-184],r1
	load	[r14+-200],r2
	cmp	r1,r2
	bne	_Label_2208
!	jmp	_Label_2209
_Label_2209:
!   _temp_2215 = &processTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-164]
!   Move address of _temp_2215 [i ] into _temp_2216
!     make sure index expr is >= 0
	load	[r14+-196],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-164],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	168,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-160]
!   _temp_2217 = _temp_2216 + 20
	load	[r14+-160],r1
	add	r1,20,r1
	store	r1,[r14+-156]
!   Data Move: _temp_2214 = *_temp_2217  (sizeInBytes=4)
	load	[r14+-156],r1
	load	[r1],r1
	store	r1,[r14+-168]
!   if _temp_2214 != 2 then goto _Label_2208		(int)
	load	[r14+-168],r1
	mov	2,r2
	cmp	r1,r2
	bne	_Label_2208
!	jmp	_Label_2207
_Label_2207:
! THEN...
	mov	975,r13		! source line 975
	mov	"\0\0TN",r10
! ASSIGNMENT STATEMENT...
	mov	975,r13		! source line 975
	mov	"\0\0AS",r10
!   _temp_2218 = &processTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-152]
!   Move address of _temp_2218 [i ] into _temp_2219
!     make sure index expr is >= 0
	load	[r14+-196],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-152],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	168,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-148]
!   _temp_2220 = _temp_2219 + 20
	load	[r14+-148],r1
	add	r1,20,r1
	store	r1,[r14+-144]
!   Data Move: *_temp_2220 = 3  (sizeInBytes=4)
	mov	3,r1
	load	[r14+-144],r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	976,r13		! source line 976
	mov	"\0\0AS",r10
!   _temp_2221 = &processTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-140]
!   Move address of _temp_2221 [i ] into _temp_2222
!     make sure index expr is >= 0
	load	[r14+-196],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-140],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	168,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-136]
!   _temp_2223 = _temp_2222 + 12
	load	[r14+-136],r1
	add	r1,12,r1
	store	r1,[r14+-132]
!   Data Move: *_temp_2223 = -1  (sizeInBytes=4)
	mov	-1,r1
	load	[r14+-132],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	977,r13		! source line 977
	mov	"\0\0SE",r10
!   _temp_2225 = &processTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-124]
!   Move address of _temp_2225 [i ] into _temp_2226
!     make sure index expr is >= 0
	load	[r14+-196],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-124],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	168,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-120]
!   _temp_2224 = _temp_2226		(4 bytes)
	load	[r14+-120],r1
	store	r1,[r14+-128]
!   _temp_2227 = &freeList
	load	[r14+8],r1
	add	r1,1728,r1
	store	r1,[r14+-116]
!   Prepare Argument: offset=12  value=_temp_2224  sizeInBytes=4
	load	[r14+-128],r1
	store	r1,[r15+4]
!   Send message AddToEnd
	load	[r14+-116],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! SEND STATEMENT...
	mov	978,r13		! source line 978
	mov	"\0\0SE",r10
!   _temp_2228 = &processManagerLock
	load	[r14+8],r1
	add	r1,1692,r1
	store	r1,[r14+-112]
!   _temp_2229 = &aProcessBecameFree
	load	[r14+8],r1
	add	r1,1712,r1
	store	r1,[r14+-108]
!   Prepare Argument: offset=12  value=_temp_2228  sizeInBytes=4
	load	[r14+-112],r1
	store	r1,[r15+4]
!   Send message Signal
	load	[r14+-108],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
! END IF...
_Label_2208:
! ASSIGNMENT STATEMENT...
	mov	973,r13		! source line 973
	mov	"\0\0AS",r10
!   i = i + 1		(int)
	load	[r14+-196],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-196]
! END WHILE...
	jmp	_Label_2204
_Label_2206:
! ASSIGNMENT STATEMENT...
	mov	983,r13		! source line 983
	mov	"\0\0AS",r10
!   if intIsZero (p) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2230 = p + 16
	load	[r14+12],r1
	add	r1,16,r1
	store	r1,[r14+-104]
!   Data Move: parentPid = *_temp_2230  (sizeInBytes=4)
	load	[r14+-104],r1
	load	[r1],r1
	store	r1,[r14+-204]
! ASSIGNMENT STATEMENT...
	mov	985,r13		! source line 985
	mov	"\0\0AS",r10
!   i = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-196]
! WHILE STATEMENT...
	mov	985,r13		! source line 985
	mov	"\0\0WH",r10
_Label_2231:
!   if i >= 10 then goto _Label_2233		(int)
	load	[r14+-196],r1
	mov	10,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_2233
!	jmp	_Label_2232
_Label_2232:
	mov	985,r13		! source line 985
	mov	"\0\0WB",r10
! IF STATEMENT...
	mov	986,r13		! source line 986
	mov	"\0\0IF",r10
!   _temp_2237 = &processTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-96]
!   Move address of _temp_2237 [i ] into _temp_2238
!     make sure index expr is >= 0
	load	[r14+-196],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-96],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	168,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-92]
!   _temp_2239 = _temp_2238 + 12
	load	[r14+-92],r1
	add	r1,12,r1
	store	r1,[r14+-88]
!   Data Move: _temp_2236 = *_temp_2239  (sizeInBytes=4)
	load	[r14+-88],r1
	load	[r1],r1
	store	r1,[r14+-100]
!   if _temp_2236 != parentPid then goto _Label_2235		(int)
	load	[r14+-100],r1
	load	[r14+-204],r2
	cmp	r1,r2
	bne	_Label_2235
!	jmp	_Label_2234
_Label_2234:
! THEN...
	mov	988,r13		! source line 988
	mov	"\0\0TN",r10
! ASSIGNMENT STATEMENT...
	mov	988,r13		! source line 988
	mov	"\0\0AS",r10
!   parentFound = 1		(1 byte)
	mov	1,r1
	storeb	r1,[r14+-10]
! IF STATEMENT...
	mov	990,r13		! source line 990
	mov	"\0\0IF",r10
!   _temp_2243 = &processTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-80]
!   Move address of _temp_2243 [i ] into _temp_2244
!     make sure index expr is >= 0
	load	[r14+-196],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-80],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	168,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-76]
!   _temp_2245 = _temp_2244 + 20
	load	[r14+-76],r1
	add	r1,20,r1
	store	r1,[r14+-72]
!   Data Move: _temp_2242 = *_temp_2245  (sizeInBytes=4)
	load	[r14+-72],r1
	load	[r1],r1
	store	r1,[r14+-84]
!   if _temp_2242 != 1 then goto _Label_2241		(int)
	load	[r14+-84],r1
	mov	1,r2
	cmp	r1,r2
	bne	_Label_2241
!	jmp	_Label_2240
_Label_2240:
! THEN...
	mov	991,r13		! source line 991
	mov	"\0\0TN",r10
! ASSIGNMENT STATEMENT...
	mov	991,r13		! source line 991
	mov	"\0\0AS",r10
!   if intIsZero (p) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2246 = p + 20
	load	[r14+12],r1
	add	r1,20,r1
	store	r1,[r14+-68]
!   Data Move: *_temp_2246 = 2  (sizeInBytes=4)
	mov	2,r1
	load	[r14+-68],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	992,r13		! source line 992
	mov	"\0\0SE",r10
!   _temp_2247 = &processManagerLock
	load	[r14+8],r1
	add	r1,1692,r1
	store	r1,[r14+-64]
!   _temp_2248 = &aProcessDied
	load	[r14+8],r1
	add	r1,1740,r1
	store	r1,[r14+-60]
!   Prepare Argument: offset=12  value=_temp_2247  sizeInBytes=4
	load	[r14+-64],r1
	store	r1,[r15+4]
!   Send message Broadcast
	load	[r14+-60],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,16,r2
	call	r2
	jmp	_Label_2249
_Label_2241:
! ELSE...
	mov	996,r13		! source line 996
	mov	"\0\0EL",r10
! ASSIGNMENT STATEMENT...
	mov	996,r13		! source line 996
	mov	"\0\0AS",r10
!   if intIsZero (p) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2250 = p + 20
	load	[r14+12],r1
	add	r1,20,r1
	store	r1,[r14+-56]
!   Data Move: *_temp_2250 = 3  (sizeInBytes=4)
	mov	3,r1
	load	[r14+-56],r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	997,r13		! source line 997
	mov	"\0\0AS",r10
!   if intIsZero (p) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2251 = p + 12
	load	[r14+12],r1
	add	r1,12,r1
	store	r1,[r14+-52]
!   Data Move: *_temp_2251 = -1  (sizeInBytes=4)
	mov	-1,r1
	load	[r14+-52],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	998,r13		! source line 998
	mov	"\0\0SE",r10
!   _temp_2252 = &freeList
	load	[r14+8],r1
	add	r1,1728,r1
	store	r1,[r14+-48]
!   Prepare Argument: offset=12  value=p  sizeInBytes=4
	load	[r14+12],r1
	store	r1,[r15+4]
!   Send message AddToEnd
	load	[r14+-48],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! SEND STATEMENT...
	mov	999,r13		! source line 999
	mov	"\0\0SE",r10
!   _temp_2253 = &processManagerLock
	load	[r14+8],r1
	add	r1,1692,r1
	store	r1,[r14+-44]
!   _temp_2254 = &aProcessBecameFree
	load	[r14+8],r1
	add	r1,1712,r1
	store	r1,[r14+-40]
!   Prepare Argument: offset=12  value=_temp_2253  sizeInBytes=4
	load	[r14+-44],r1
	store	r1,[r15+4]
!   Send message Signal
	load	[r14+-40],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
! END IF...
_Label_2249:
! END IF...
_Label_2235:
! ASSIGNMENT STATEMENT...
	mov	985,r13		! source line 985
	mov	"\0\0AS",r10
!   i = i + 1		(int)
	load	[r14+-196],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-196]
! END WHILE...
	jmp	_Label_2231
_Label_2233:
! IF STATEMENT...
	mov	1004,r13		! source line 1004
	mov	"\0\0IF",r10
!   _temp_2257 = parentFound XOR 0		(bool)
	loadb	[r14+-10],r1
	mov	0,r2
	xor	r1,r2,r1
	storeb	r1,[r14+-9]
!   if _temp_2257 then goto _Label_2256 else goto _Label_2255
	loadb	[r14+-9],r1
	cmp	r1,0
	be	_Label_2255
	jmp	_Label_2256
_Label_2255:
! THEN...
	mov	1005,r13		! source line 1005
	mov	"\0\0TN",r10
! ASSIGNMENT STATEMENT...
	mov	1005,r13		! source line 1005
	mov	"\0\0AS",r10
!   if intIsZero (p) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2258 = p + 20
	load	[r14+12],r1
	add	r1,20,r1
	store	r1,[r14+-36]
!   Data Move: *_temp_2258 = 3  (sizeInBytes=4)
	mov	3,r1
	load	[r14+-36],r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	1006,r13		! source line 1006
	mov	"\0\0AS",r10
!   if intIsZero (p) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2259 = p + 12
	load	[r14+12],r1
	add	r1,12,r1
	store	r1,[r14+-32]
!   Data Move: *_temp_2259 = -1  (sizeInBytes=4)
	mov	-1,r1
	load	[r14+-32],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	1007,r13		! source line 1007
	mov	"\0\0SE",r10
!   _temp_2260 = &freeList
	load	[r14+8],r1
	add	r1,1728,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=12  value=p  sizeInBytes=4
	load	[r14+12],r1
	store	r1,[r15+4]
!   Send message AddToEnd
	load	[r14+-28],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! SEND STATEMENT...
	mov	1008,r13		! source line 1008
	mov	"\0\0SE",r10
!   _temp_2261 = &processManagerLock
	load	[r14+8],r1
	add	r1,1692,r1
	store	r1,[r14+-24]
!   _temp_2262 = &aProcessBecameFree
	load	[r14+8],r1
	add	r1,1712,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=12  value=_temp_2261  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+4]
!   Send message Signal
	load	[r14+-20],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
! END IF...
_Label_2256:
! SEND STATEMENT...
	mov	1011,r13		! source line 1011
	mov	"\0\0SE",r10
!   _temp_2263 = &processManagerLock
	load	[r14+8],r1
	add	r1,1692,r1
	store	r1,[r14+-16]
!   Send message Unlock
	load	[r14+-16],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
! RETURN STATEMENT...
	mov	1011,r13		! source line 1011
	mov	"\0\0RE",r10
	add	r15,208,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_ProcessManager_6:
	.word	_sourceFileName
	.word	_Label_2264
	.word	8		! total size of parameters
	.word	204		! frame size = 204
	.word	_Label_2265
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2266
	.word	12
	.word	4
	.word	_Label_2267
	.word	-16
	.word	4
	.word	_Label_2268
	.word	-20
	.word	4
	.word	_Label_2269
	.word	-24
	.word	4
	.word	_Label_2270
	.word	-28
	.word	4
	.word	_Label_2271
	.word	-32
	.word	4
	.word	_Label_2272
	.word	-36
	.word	4
	.word	_Label_2273
	.word	-9
	.word	1
	.word	_Label_2274
	.word	-40
	.word	4
	.word	_Label_2275
	.word	-44
	.word	4
	.word	_Label_2276
	.word	-48
	.word	4
	.word	_Label_2277
	.word	-52
	.word	4
	.word	_Label_2278
	.word	-56
	.word	4
	.word	_Label_2279
	.word	-60
	.word	4
	.word	_Label_2280
	.word	-64
	.word	4
	.word	_Label_2281
	.word	-68
	.word	4
	.word	_Label_2282
	.word	-72
	.word	4
	.word	_Label_2283
	.word	-76
	.word	4
	.word	_Label_2284
	.word	-80
	.word	4
	.word	_Label_2285
	.word	-84
	.word	4
	.word	_Label_2286
	.word	-88
	.word	4
	.word	_Label_2287
	.word	-92
	.word	4
	.word	_Label_2288
	.word	-96
	.word	4
	.word	_Label_2289
	.word	-100
	.word	4
	.word	_Label_2290
	.word	-104
	.word	4
	.word	_Label_2291
	.word	-108
	.word	4
	.word	_Label_2292
	.word	-112
	.word	4
	.word	_Label_2293
	.word	-116
	.word	4
	.word	_Label_2294
	.word	-120
	.word	4
	.word	_Label_2295
	.word	-124
	.word	4
	.word	_Label_2296
	.word	-128
	.word	4
	.word	_Label_2297
	.word	-132
	.word	4
	.word	_Label_2298
	.word	-136
	.word	4
	.word	_Label_2299
	.word	-140
	.word	4
	.word	_Label_2300
	.word	-144
	.word	4
	.word	_Label_2301
	.word	-148
	.word	4
	.word	_Label_2302
	.word	-152
	.word	4
	.word	_Label_2303
	.word	-156
	.word	4
	.word	_Label_2304
	.word	-160
	.word	4
	.word	_Label_2305
	.word	-164
	.word	4
	.word	_Label_2306
	.word	-168
	.word	4
	.word	_Label_2307
	.word	-172
	.word	4
	.word	_Label_2308
	.word	-176
	.word	4
	.word	_Label_2309
	.word	-180
	.word	4
	.word	_Label_2310
	.word	-184
	.word	4
	.word	_Label_2311
	.word	-188
	.word	4
	.word	_Label_2312
	.word	-192
	.word	4
	.word	_Label_2313
	.word	-196
	.word	4
	.word	_Label_2314
	.word	-200
	.word	4
	.word	_Label_2315
	.word	-204
	.word	4
	.word	_Label_2316
	.word	-10
	.word	1
	.word	0
_Label_2264:
	.ascii	"ProcessManager"
	.ascii	"::"
	.ascii	"TurnIntoZombie\0"
	.align
_Label_2265:
	.ascii	"Pself\0"
	.align
_Label_2266:
	.byte	'P'
	.ascii	"p\0"
	.align
_Label_2267:
	.byte	'?'
	.ascii	"_temp_2263\0"
	.align
_Label_2268:
	.byte	'?'
	.ascii	"_temp_2262\0"
	.align
_Label_2269:
	.byte	'?'
	.ascii	"_temp_2261\0"
	.align
_Label_2270:
	.byte	'?'
	.ascii	"_temp_2260\0"
	.align
_Label_2271:
	.byte	'?'
	.ascii	"_temp_2259\0"
	.align
_Label_2272:
	.byte	'?'
	.ascii	"_temp_2258\0"
	.align
_Label_2273:
	.byte	'C'
	.ascii	"_temp_2257\0"
	.align
_Label_2274:
	.byte	'?'
	.ascii	"_temp_2254\0"
	.align
_Label_2275:
	.byte	'?'
	.ascii	"_temp_2253\0"
	.align
_Label_2276:
	.byte	'?'
	.ascii	"_temp_2252\0"
	.align
_Label_2277:
	.byte	'?'
	.ascii	"_temp_2251\0"
	.align
_Label_2278:
	.byte	'?'
	.ascii	"_temp_2250\0"
	.align
_Label_2279:
	.byte	'?'
	.ascii	"_temp_2248\0"
	.align
_Label_2280:
	.byte	'?'
	.ascii	"_temp_2247\0"
	.align
_Label_2281:
	.byte	'?'
	.ascii	"_temp_2246\0"
	.align
_Label_2282:
	.byte	'?'
	.ascii	"_temp_2245\0"
	.align
_Label_2283:
	.byte	'?'
	.ascii	"_temp_2244\0"
	.align
_Label_2284:
	.byte	'?'
	.ascii	"_temp_2243\0"
	.align
_Label_2285:
	.byte	'?'
	.ascii	"_temp_2242\0"
	.align
_Label_2286:
	.byte	'?'
	.ascii	"_temp_2239\0"
	.align
_Label_2287:
	.byte	'?'
	.ascii	"_temp_2238\0"
	.align
_Label_2288:
	.byte	'?'
	.ascii	"_temp_2237\0"
	.align
_Label_2289:
	.byte	'?'
	.ascii	"_temp_2236\0"
	.align
_Label_2290:
	.byte	'?'
	.ascii	"_temp_2230\0"
	.align
_Label_2291:
	.byte	'?'
	.ascii	"_temp_2229\0"
	.align
_Label_2292:
	.byte	'?'
	.ascii	"_temp_2228\0"
	.align
_Label_2293:
	.byte	'?'
	.ascii	"_temp_2227\0"
	.align
_Label_2294:
	.byte	'?'
	.ascii	"_temp_2226\0"
	.align
_Label_2295:
	.byte	'?'
	.ascii	"_temp_2225\0"
	.align
_Label_2296:
	.byte	'?'
	.ascii	"_temp_2224\0"
	.align
_Label_2297:
	.byte	'?'
	.ascii	"_temp_2223\0"
	.align
_Label_2298:
	.byte	'?'
	.ascii	"_temp_2222\0"
	.align
_Label_2299:
	.byte	'?'
	.ascii	"_temp_2221\0"
	.align
_Label_2300:
	.byte	'?'
	.ascii	"_temp_2220\0"
	.align
_Label_2301:
	.byte	'?'
	.ascii	"_temp_2219\0"
	.align
_Label_2302:
	.byte	'?'
	.ascii	"_temp_2218\0"
	.align
_Label_2303:
	.byte	'?'
	.ascii	"_temp_2217\0"
	.align
_Label_2304:
	.byte	'?'
	.ascii	"_temp_2216\0"
	.align
_Label_2305:
	.byte	'?'
	.ascii	"_temp_2215\0"
	.align
_Label_2306:
	.byte	'?'
	.ascii	"_temp_2214\0"
	.align
_Label_2307:
	.byte	'?'
	.ascii	"_temp_2213\0"
	.align
_Label_2308:
	.byte	'?'
	.ascii	"_temp_2212\0"
	.align
_Label_2309:
	.byte	'?'
	.ascii	"_temp_2211\0"
	.align
_Label_2310:
	.byte	'?'
	.ascii	"_temp_2210\0"
	.align
_Label_2311:
	.byte	'?'
	.ascii	"_temp_2203\0"
	.align
_Label_2312:
	.byte	'?'
	.ascii	"_temp_2202\0"
	.align
_Label_2313:
	.byte	'I'
	.ascii	"i\0"
	.align
_Label_2314:
	.byte	'I'
	.ascii	"myPid\0"
	.align
_Label_2315:
	.byte	'I'
	.ascii	"parentPid\0"
	.align
_Label_2316:
	.byte	'B'
	.ascii	"parentFound\0"
	.align
! 
! ===============  METHOD WaitForZombie  ===============
! 
_Method_P_Kernel_ProcessManager_7:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_ProcessManager_7,r1
	push	r1
	mov	15,r1
_Label_4067:
	push	r0
	sub	r1,1,r1
	bne	_Label_4067
	mov	1018,r13		! source line 1018
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! SEND STATEMENT...
	mov	1023,r13		! source line 1023
	mov	"\0\0SE",r10
!   _temp_2317 = &processManagerLock
	load	[r14+8],r1
	add	r1,1692,r1
	store	r1,[r14+-56]
!   Send message Lock
	load	[r14+-56],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! ASSIGNMENT STATEMENT...
	mov	1025,r13		! source line 1025
	mov	"\0\0AS",r10
!   exitStatus = -1		(4 bytes)
	mov	-1,r1
	store	r1,[r14+-60]
! WHILE STATEMENT...
	mov	1029,r13		! source line 1029
	mov	"\0\0WH",r10
_Label_2318:
!   if intIsZero (proc) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2322 = proc + 20
	load	[r14+12],r1
	add	r1,20,r1
	store	r1,[r14+-48]
!   Data Move: _temp_2321 = *_temp_2322  (sizeInBytes=4)
	load	[r14+-48],r1
	load	[r1],r1
	store	r1,[r14+-52]
!   if _temp_2321 == 2 then goto _Label_2320		(int)
	load	[r14+-52],r1
	mov	2,r2
	cmp	r1,r2
	be	_Label_2320
!	jmp	_Label_2319
_Label_2319:
	mov	1029,r13		! source line 1029
	mov	"\0\0WB",r10
! SEND STATEMENT...
	mov	1031,r13		! source line 1031
	mov	"\0\0SE",r10
!   _temp_2323 = &processManagerLock
	load	[r14+8],r1
	add	r1,1692,r1
	store	r1,[r14+-44]
!   _temp_2324 = &aProcessDied
	load	[r14+8],r1
	add	r1,1740,r1
	store	r1,[r14+-40]
!   Prepare Argument: offset=12  value=_temp_2323  sizeInBytes=4
	load	[r14+-44],r1
	store	r1,[r15+4]
!   Send message Wait
	load	[r14+-40],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! END WHILE...
	jmp	_Label_2318
_Label_2320:
! ASSIGNMENT STATEMENT...
	mov	1037,r13		! source line 1037
	mov	"\0\0AS",r10
!   if intIsZero (proc) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2325 = proc + 28
	load	[r14+12],r1
	add	r1,28,r1
	store	r1,[r14+-36]
!   Data Move: exitStatus = *_temp_2325  (sizeInBytes=4)
	load	[r14+-36],r1
	load	[r1],r1
	store	r1,[r14+-60]
! ASSIGNMENT STATEMENT...
	mov	1040,r13		! source line 1040
	mov	"\0\0AS",r10
!   if intIsZero (proc) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2326 = proc + 20
	load	[r14+12],r1
	add	r1,20,r1
	store	r1,[r14+-32]
!   Data Move: *_temp_2326 = 3  (sizeInBytes=4)
	mov	3,r1
	load	[r14+-32],r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	1041,r13		! source line 1041
	mov	"\0\0AS",r10
!   if intIsZero (proc) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2327 = proc + 12
	load	[r14+12],r1
	add	r1,12,r1
	store	r1,[r14+-28]
!   Data Move: *_temp_2327 = -1  (sizeInBytes=4)
	mov	-1,r1
	load	[r14+-28],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	1042,r13		! source line 1042
	mov	"\0\0SE",r10
!   _temp_2328 = &freeList
	load	[r14+8],r1
	add	r1,1728,r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=12  value=proc  sizeInBytes=4
	load	[r14+12],r1
	store	r1,[r15+4]
!   Send message AddToEnd
	load	[r14+-24],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! SEND STATEMENT...
	mov	1043,r13		! source line 1043
	mov	"\0\0SE",r10
!   _temp_2329 = &processManagerLock
	load	[r14+8],r1
	add	r1,1692,r1
	store	r1,[r14+-20]
!   _temp_2330 = &aProcessBecameFree
	load	[r14+8],r1
	add	r1,1712,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=12  value=_temp_2329  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+4]
!   Send message Signal
	load	[r14+-16],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
! SEND STATEMENT...
	mov	1045,r13		! source line 1045
	mov	"\0\0SE",r10
!   _temp_2331 = &processManagerLock
	load	[r14+8],r1
	add	r1,1692,r1
	store	r1,[r14+-12]
!   Send message Unlock
	load	[r14+-12],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
! RETURN STATEMENT...
	mov	1047,r13		! source line 1047
	mov	"\0\0RE",r10
!   ReturnResult: exitStatus  (sizeInBytes=4)
	load	[r14+-60],r1
	store	r1,[r14+8]
	add	r15,64,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_ProcessManager_7:
	.word	_sourceFileName
	.word	_Label_2332
	.word	8		! total size of parameters
	.word	60		! frame size = 60
	.word	_Label_2333
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2334
	.word	12
	.word	4
	.word	_Label_2335
	.word	-12
	.word	4
	.word	_Label_2336
	.word	-16
	.word	4
	.word	_Label_2337
	.word	-20
	.word	4
	.word	_Label_2338
	.word	-24
	.word	4
	.word	_Label_2339
	.word	-28
	.word	4
	.word	_Label_2340
	.word	-32
	.word	4
	.word	_Label_2341
	.word	-36
	.word	4
	.word	_Label_2342
	.word	-40
	.word	4
	.word	_Label_2343
	.word	-44
	.word	4
	.word	_Label_2344
	.word	-48
	.word	4
	.word	_Label_2345
	.word	-52
	.word	4
	.word	_Label_2346
	.word	-56
	.word	4
	.word	_Label_2347
	.word	-60
	.word	4
	.word	0
_Label_2332:
	.ascii	"ProcessManager"
	.ascii	"::"
	.ascii	"WaitForZombie\0"
	.align
_Label_2333:
	.ascii	"Pself\0"
	.align
_Label_2334:
	.byte	'P'
	.ascii	"proc\0"
	.align
_Label_2335:
	.byte	'?'
	.ascii	"_temp_2331\0"
	.align
_Label_2336:
	.byte	'?'
	.ascii	"_temp_2330\0"
	.align
_Label_2337:
	.byte	'?'
	.ascii	"_temp_2329\0"
	.align
_Label_2338:
	.byte	'?'
	.ascii	"_temp_2328\0"
	.align
_Label_2339:
	.byte	'?'
	.ascii	"_temp_2327\0"
	.align
_Label_2340:
	.byte	'?'
	.ascii	"_temp_2326\0"
	.align
_Label_2341:
	.byte	'?'
	.ascii	"_temp_2325\0"
	.align
_Label_2342:
	.byte	'?'
	.ascii	"_temp_2324\0"
	.align
_Label_2343:
	.byte	'?'
	.ascii	"_temp_2323\0"
	.align
_Label_2344:
	.byte	'?'
	.ascii	"_temp_2322\0"
	.align
_Label_2345:
	.byte	'?'
	.ascii	"_temp_2321\0"
	.align
_Label_2346:
	.byte	'?'
	.ascii	"_temp_2317\0"
	.align
_Label_2347:
	.byte	'I'
	.ascii	"exitStatus\0"
	.align
! 
! ===============  CLASS FrameManager  ===============
! 
! Dispatch Table:
! 
_P_Kernel_FrameManager:
	.word	_Label_2348
	jmp	_Method_P_Kernel_FrameManager_1	! 4:	Init
	jmp	_Method_P_Kernel_FrameManager_2	! 8:	Print
	jmp	_Method_P_Kernel_FrameManager_3	! 12:	GetAFrame
	jmp	_Method_P_Kernel_FrameManager_4	! 16:	GetNewFrames
	jmp	_Method_P_Kernel_FrameManager_5	! 20:	ReturnAllFrames
	.word	0
! 
! Class descriptor:
! 
_Label_2348:
	.word	1129070931		! Magic number 0x434c4153 == 'CLAS'
	.word	_Label_2349
	.word	_sourceFileName
	.word	261		! line number
	.word	56		! size of instances, in bytes
	.word	_P_Kernel_FrameManager
	.word	_P_System_Object
	.word	0
_Label_2349:
	.ascii	"FrameManager\0"
	.align
! 
! ===============  METHOD Init  ===============
! 
_Method_P_Kernel_FrameManager_1:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_FrameManager_1,r1
	push	r1
	mov	14,r1
_Label_4068:
	push	r0
	sub	r1,1,r1
	bne	_Label_4068
	mov	1211,r13		! source line 1211
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   _temp_2350 = _StringConst_110
	set	_StringConst_110,r1
	store	r1,[r14+-52]
!   Prepare Argument: offset=8  value=_temp_2350  sizeInBytes=4
	load	[r14+-52],r1
	store	r1,[r15+0]
!   Call the function
	mov	1217,r13		! source line 1217
	mov	"\0\0CE",r10
	call	print
! ASSIGNMENT STATEMENT...
	mov	1218,r13		! source line 1218
	mov	"\0\0AS",r10
!   NEW CLASS Constructor...
!   ZeroMemory: framesInUse = zeros  (sizeInBytes=12)
	load	[r14+8],r4
	add	r4,4,r4
	store	r0,[r4]
	store	r0,[r4+4]
	store	r0,[r4+8]
!   framesInUse = _P_BitMap_BitMap
	set	_P_BitMap_BitMap,r1
	load	[r14+8],r2
	store	r1,[r2+4]
! SEND STATEMENT...
	mov	1219,r13		! source line 1219
	mov	"\0\0SE",r10
!   _temp_2352 = &framesInUse
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-44]
!   Prepare Argument: offset=12  value=512  sizeInBytes=4
	mov	512,r1
	store	r1,[r15+4]
!   Send message Init
	load	[r14+-44],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,4,r2
	call	r2
! ASSIGNMENT STATEMENT...
	mov	1220,r13		! source line 1220
	mov	"\0\0AS",r10
!   numberFreeFrames = 512		(4 bytes)
	mov	512,r1
	load	[r14+8],r2
	store	r1,[r2+16]
! ASSIGNMENT STATEMENT...
	mov	1221,r13		! source line 1221
	mov	"\0\0AS",r10
!   NEW CLASS Constructor...
!   ZeroMemory: frameManagerLock = zeros  (sizeInBytes=20)
	load	[r14+8],r4
	add	r4,20,r4
	store	r0,[r4]
	store	r0,[r4+4]
	store	r0,[r4+8]
	store	r0,[r4+12]
	store	r0,[r4+16]
!   frameManagerLock = _P_Kernel_Mutex
	set	_P_Kernel_Mutex,r1
	load	[r14+8],r2
	store	r1,[r2+20]
! SEND STATEMENT...
	mov	1222,r13		! source line 1222
	mov	"\0\0SE",r10
!   _temp_2354 = &frameManagerLock
	load	[r14+8],r1
	add	r1,20,r1
	store	r1,[r14+-36]
!   Send message Init
	load	[r14+-36],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,4,r2
	call	r2
! ASSIGNMENT STATEMENT...
	mov	1223,r13		! source line 1223
	mov	"\0\0AS",r10
!   NEW CLASS Constructor...
!   ZeroMemory: newFramesAvailable = zeros  (sizeInBytes=16)
	load	[r14+8],r4
	add	r4,40,r4
	store	r0,[r4]
	store	r0,[r4+4]
	store	r0,[r4+8]
	store	r0,[r4+12]
!   newFramesAvailable = _P_Kernel_Condition
	set	_P_Kernel_Condition,r1
	load	[r14+8],r2
	store	r1,[r2+40]
! SEND STATEMENT...
	mov	1224,r13		! source line 1224
	mov	"\0\0SE",r10
!   _temp_2356 = &newFramesAvailable
	load	[r14+8],r1
	add	r1,40,r1
	store	r1,[r14+-28]
!   Send message Init
	load	[r14+-28],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,4,r2
	call	r2
! FOR STATEMENT...
	mov	1230,r13		! source line 1230
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_2361 = 1048576		(4 bytes)
	set	1048576,r1
	store	r1,[r14+-24]
!   Calculate and save the FOR-LOOP ending value
!   _temp_2362 = 1048876		(4 bytes)
	set	1048876,r1
	store	r1,[r14+-20]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_2361  (sizeInBytes=4)
	load	[r14+-24],r1
	store	r1,[r14+-56]
_Label_2357:
!   Perform the FOR-LOOP termination test
!   if i > _temp_2362 then goto _Label_2360		
	load	[r14+-56],r1
	load	[r14+-20],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_2360
_Label_2358:
	mov	1230,r13		! source line 1230
	mov	"\0\0FB",r10
! IF STATEMENT...
	mov	1233,r13		! source line 1233
	mov	"\0\0IF",r10
!   if intIsZero (i) then goto _runtimeErrorNullPointer
	load	[r14+-56],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Data Move: _temp_2365 = *i  (sizeInBytes=4)
	load	[r14+-56],r1
	load	[r1],r1
	store	r1,[r14+-16]
!   if intIsZero (_temp_2365) then goto _Label_2364
	load	[r14+-16],r1
	cmp	r1,r0
	be	_Label_2364
!	jmp	_Label_2363
_Label_2363:
! THEN...
	mov	1234,r13		! source line 1234
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_2366 = _StringConst_111
	set	_StringConst_111,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_2366  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	1234,r13		! source line 1234
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END IF...
_Label_2364:
!   Increment the FOR-LOOP index variable and jump back
_Label_2359:
!   i = i + 4
	load	[r14+-56],r1
	add	r1,4,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-56]
	jmp	_Label_2357
! END FOR
_Label_2360:
! RETURN STATEMENT...
	mov	1230,r13		! source line 1230
	mov	"\0\0RE",r10
	add	r15,60,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_FrameManager_1:
	.word	_sourceFileName
	.word	_Label_2367
	.word	4		! total size of parameters
	.word	56		! frame size = 56
	.word	_Label_2368
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2369
	.word	-12
	.word	4
	.word	_Label_2370
	.word	-16
	.word	4
	.word	_Label_2371
	.word	-20
	.word	4
	.word	_Label_2372
	.word	-24
	.word	4
	.word	_Label_2373
	.word	-28
	.word	4
	.word	_Label_2374
	.word	-32
	.word	4
	.word	_Label_2375
	.word	-36
	.word	4
	.word	_Label_2376
	.word	-40
	.word	4
	.word	_Label_2377
	.word	-44
	.word	4
	.word	_Label_2378
	.word	-48
	.word	4
	.word	_Label_2379
	.word	-52
	.word	4
	.word	_Label_2380
	.word	-56
	.word	4
	.word	0
_Label_2367:
	.ascii	"FrameManager"
	.ascii	"::"
	.ascii	"Init\0"
	.align
_Label_2368:
	.ascii	"Pself\0"
	.align
_Label_2369:
	.byte	'?'
	.ascii	"_temp_2366\0"
	.align
_Label_2370:
	.byte	'?'
	.ascii	"_temp_2365\0"
	.align
_Label_2371:
	.byte	'?'
	.ascii	"_temp_2362\0"
	.align
_Label_2372:
	.byte	'?'
	.ascii	"_temp_2361\0"
	.align
_Label_2373:
	.byte	'?'
	.ascii	"_temp_2356\0"
	.align
_Label_2374:
	.byte	'?'
	.ascii	"_temp_2355\0"
	.align
_Label_2375:
	.byte	'?'
	.ascii	"_temp_2354\0"
	.align
_Label_2376:
	.byte	'?'
	.ascii	"_temp_2353\0"
	.align
_Label_2377:
	.byte	'?'
	.ascii	"_temp_2352\0"
	.align
_Label_2378:
	.byte	'?'
	.ascii	"_temp_2351\0"
	.align
_Label_2379:
	.byte	'?'
	.ascii	"_temp_2350\0"
	.align
_Label_2380:
	.byte	'I'
	.ascii	"i\0"
	.align
! 
! ===============  METHOD Print  ===============
! 
_Method_P_Kernel_FrameManager_2:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_FrameManager_2,r1
	push	r1
	mov	8,r1
_Label_4069:
	push	r0
	sub	r1,1,r1
	bne	_Label_4069
	mov	1241,r13		! source line 1241
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! SEND STATEMENT...
	mov	1245,r13		! source line 1245
	mov	"\0\0SE",r10
!   _temp_2381 = &frameManagerLock
	load	[r14+8],r1
	add	r1,20,r1
	store	r1,[r14+-32]
!   Send message Lock
	load	[r14+-32],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! CALL STATEMENT...
!   _temp_2382 = _StringConst_112
	set	_StringConst_112,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=8  value=_temp_2382  sizeInBytes=4
	load	[r14+-28],r1
	store	r1,[r15+0]
!   Call the function
	mov	1246,r13		! source line 1246
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_2383 = _StringConst_113
	set	_StringConst_113,r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=8  value=_temp_2383  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=numberFreeFrames  sizeInBytes=4
	load	[r14+8],r1
	load	[r1+16],r1
	store	r1,[r15+4]
!   Call the function
	mov	1247,r13		! source line 1247
	mov	"\0\0CA",r10
	call	_P_System_printIntVar
! CALL STATEMENT...
!   _temp_2384 = _StringConst_114
	set	_StringConst_114,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_2384  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   Call the function
	mov	1248,r13		! source line 1248
	mov	"\0\0CE",r10
	call	print
! SEND STATEMENT...
	mov	1249,r13		! source line 1249
	mov	"\0\0SE",r10
!   _temp_2385 = &framesInUse
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-16]
!   Send message Print
	load	[r14+-16],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,20,r2
	call	r2
! SEND STATEMENT...
	mov	1250,r13		! source line 1250
	mov	"\0\0SE",r10
!   _temp_2386 = &frameManagerLock
	load	[r14+8],r1
	add	r1,20,r1
	store	r1,[r14+-12]
!   Send message Unlock
	load	[r14+-12],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
! RETURN STATEMENT...
	mov	1250,r13		! source line 1250
	mov	"\0\0RE",r10
	add	r15,36,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_FrameManager_2:
	.word	_sourceFileName
	.word	_Label_2387
	.word	4		! total size of parameters
	.word	32		! frame size = 32
	.word	_Label_2388
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2389
	.word	-12
	.word	4
	.word	_Label_2390
	.word	-16
	.word	4
	.word	_Label_2391
	.word	-20
	.word	4
	.word	_Label_2392
	.word	-24
	.word	4
	.word	_Label_2393
	.word	-28
	.word	4
	.word	_Label_2394
	.word	-32
	.word	4
	.word	0
_Label_2387:
	.ascii	"FrameManager"
	.ascii	"::"
	.ascii	"Print\0"
	.align
_Label_2388:
	.ascii	"Pself\0"
	.align
_Label_2389:
	.byte	'?'
	.ascii	"_temp_2386\0"
	.align
_Label_2390:
	.byte	'?'
	.ascii	"_temp_2385\0"
	.align
_Label_2391:
	.byte	'?'
	.ascii	"_temp_2384\0"
	.align
_Label_2392:
	.byte	'?'
	.ascii	"_temp_2383\0"
	.align
_Label_2393:
	.byte	'?'
	.ascii	"_temp_2382\0"
	.align
_Label_2394:
	.byte	'?'
	.ascii	"_temp_2381\0"
	.align
! 
! ===============  METHOD GetAFrame  ===============
! 
_Method_P_Kernel_FrameManager_3:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_FrameManager_3,r1
	push	r1
	mov	10,r1
_Label_4070:
	push	r0
	sub	r1,1,r1
	bne	_Label_4070
	mov	1255,r13		! source line 1255
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! SEND STATEMENT...
	mov	1263,r13		! source line 1263
	mov	"\0\0SE",r10
!   _temp_2395 = &frameManagerLock
	load	[r14+8],r1
	add	r1,20,r1
	store	r1,[r14+-32]
!   Send message Lock
	load	[r14+-32],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! WHILE STATEMENT...
	mov	1266,r13		! source line 1266
	mov	"\0\0WH",r10
_Label_2396:
!   if numberFreeFrames >= 1 then goto _Label_2398		(int)
	load	[r14+8],r1
	load	[r1+16],r1
	mov	1,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_2398
!	jmp	_Label_2397
_Label_2397:
	mov	1266,r13		! source line 1266
	mov	"\0\0WB",r10
! SEND STATEMENT...
	mov	1267,r13		! source line 1267
	mov	"\0\0SE",r10
!   _temp_2399 = &frameManagerLock
	load	[r14+8],r1
	add	r1,20,r1
	store	r1,[r14+-28]
!   _temp_2400 = &newFramesAvailable
	load	[r14+8],r1
	add	r1,40,r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=12  value=_temp_2399  sizeInBytes=4
	load	[r14+-28],r1
	store	r1,[r15+4]
!   Send message Wait
	load	[r14+-24],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! END WHILE...
	jmp	_Label_2396
_Label_2398:
! ASSIGNMENT STATEMENT...
	mov	1271,r13		! source line 1271
	mov	"\0\0AS",r10
	mov	1271,r13		! source line 1271
	mov	"\0\0SE",r10
!   _temp_2401 = &framesInUse
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-20]
!   Send message FindZeroAndSet
	load	[r14+-20],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,32,r2
	call	r2
!   Retrieve Result: targetName=f  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-36]
! ASSIGNMENT STATEMENT...
	mov	1272,r13		! source line 1272
	mov	"\0\0AS",r10
!   numberFreeFrames = numberFreeFrames - 1		(int)
	load	[r14+8],r1
	load	[r1+16],r1
	mov	1,r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	load	[r14+8],r2
	store	r1,[r2+16]
! SEND STATEMENT...
	mov	1275,r13		! source line 1275
	mov	"\0\0SE",r10
!   _temp_2402 = &frameManagerLock
	load	[r14+8],r1
	add	r1,20,r1
	store	r1,[r14+-16]
!   Send message Unlock
	load	[r14+-16],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
! ASSIGNMENT STATEMENT...
	mov	1278,r13		! source line 1278
	mov	"\0\0AS",r10
!   _temp_2403 = f * 8192		(int)
	load	[r14+-36],r1
	mov	8192,r2
	mul	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-12]
!   frameAddr = 1048576 + _temp_2403		(int)
	set	1048576,r1
	load	[r14+-12],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-40]
! RETURN STATEMENT...
	mov	1280,r13		! source line 1280
	mov	"\0\0RE",r10
!   ReturnResult: frameAddr  (sizeInBytes=4)
	load	[r14+-40],r1
	store	r1,[r14+8]
	add	r15,44,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_FrameManager_3:
	.word	_sourceFileName
	.word	_Label_2404
	.word	4		! total size of parameters
	.word	40		! frame size = 40
	.word	_Label_2405
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2406
	.word	-12
	.word	4
	.word	_Label_2407
	.word	-16
	.word	4
	.word	_Label_2408
	.word	-20
	.word	4
	.word	_Label_2409
	.word	-24
	.word	4
	.word	_Label_2410
	.word	-28
	.word	4
	.word	_Label_2411
	.word	-32
	.word	4
	.word	_Label_2412
	.word	-36
	.word	4
	.word	_Label_2413
	.word	-40
	.word	4
	.word	0
_Label_2404:
	.ascii	"FrameManager"
	.ascii	"::"
	.ascii	"GetAFrame\0"
	.align
_Label_2405:
	.ascii	"Pself\0"
	.align
_Label_2406:
	.byte	'?'
	.ascii	"_temp_2403\0"
	.align
_Label_2407:
	.byte	'?'
	.ascii	"_temp_2402\0"
	.align
_Label_2408:
	.byte	'?'
	.ascii	"_temp_2401\0"
	.align
_Label_2409:
	.byte	'?'
	.ascii	"_temp_2400\0"
	.align
_Label_2410:
	.byte	'?'
	.ascii	"_temp_2399\0"
	.align
_Label_2411:
	.byte	'?'
	.ascii	"_temp_2395\0"
	.align
_Label_2412:
	.byte	'I'
	.ascii	"f\0"
	.align
_Label_2413:
	.byte	'I'
	.ascii	"frameAddr\0"
	.align
! 
! ===============  METHOD GetNewFrames  ===============
! 
_Method_P_Kernel_FrameManager_4:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_FrameManager_4,r1
	push	r1
	mov	13,r1
_Label_4071:
	push	r0
	sub	r1,1,r1
	bne	_Label_4071
	mov	1285,r13		! source line 1285
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! SEND STATEMENT...
	mov	1290,r13		! source line 1290
	mov	"\0\0SE",r10
!   _temp_2414 = &frameManagerLock
	load	[r14+8],r1
	add	r1,20,r1
	store	r1,[r14+-36]
!   Send message Lock
	load	[r14+-36],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! WHILE STATEMENT...
	mov	1292,r13		! source line 1292
	mov	"\0\0WH",r10
_Label_2415:
!   if numberFreeFrames >= numFramesNeeded then goto _Label_2417		(int)
	load	[r14+8],r1
	load	[r1+16],r1
	load	[r14+16],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_2417
!	jmp	_Label_2416
_Label_2416:
	mov	1292,r13		! source line 1292
	mov	"\0\0WB",r10
! SEND STATEMENT...
	mov	1293,r13		! source line 1293
	mov	"\0\0SE",r10
!   _temp_2418 = &frameManagerLock
	load	[r14+8],r1
	add	r1,20,r1
	store	r1,[r14+-32]
!   _temp_2419 = &newFramesAvailable
	load	[r14+8],r1
	add	r1,40,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=12  value=_temp_2418  sizeInBytes=4
	load	[r14+-32],r1
	store	r1,[r15+4]
!   Send message Wait
	load	[r14+-28],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! END WHILE...
	jmp	_Label_2415
_Label_2417:
! ASSIGNMENT STATEMENT...
	mov	1296,r13		! source line 1296
	mov	"\0\0AS",r10
!   i = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-40]
! WHILE STATEMENT...
	mov	1296,r13		! source line 1296
	mov	"\0\0WH",r10
_Label_2420:
!   if i >= numFramesNeeded then goto _Label_2422		(int)
	load	[r14+-40],r1
	load	[r14+16],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_2422
!	jmp	_Label_2421
_Label_2421:
	mov	1296,r13		! source line 1296
	mov	"\0\0WB",r10
! ASSIGNMENT STATEMENT...
	mov	1297,r13		! source line 1297
	mov	"\0\0AS",r10
	mov	1297,r13		! source line 1297
	mov	"\0\0SE",r10
!   _temp_2423 = &framesInUse
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-24]
!   Send message FindZeroAndSet
	load	[r14+-24],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,32,r2
	call	r2
!   Retrieve Result: targetName=f  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-44]
! ASSIGNMENT STATEMENT...
	mov	1298,r13		! source line 1298
	mov	"\0\0AS",r10
!   _temp_2424 = f * 8192		(int)
	load	[r14+-44],r1
	mov	8192,r2
	mul	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-20]
!   frameAddr = 1048576 + _temp_2424		(int)
	set	1048576,r1
	load	[r14+-20],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-48]
! SEND STATEMENT...
	mov	1299,r13		! source line 1299
	mov	"\0\0SE",r10
!   if intIsZero (aPageTable) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Prepare Argument: offset=12  value=i  sizeInBytes=4
	load	[r14+-40],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=frameAddr  sizeInBytes=4
	load	[r14+-48],r1
	store	r1,[r15+8]
!   Send message SetFrameAddr
	load	[r14+12],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,20,r2
	call	r2
! ASSIGNMENT STATEMENT...
	mov	1300,r13		! source line 1300
	mov	"\0\0AS",r10
!   numberFreeFrames = numberFreeFrames - 1		(int)
	load	[r14+8],r1
	load	[r1+16],r1
	mov	1,r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	load	[r14+8],r2
	store	r1,[r2+16]
! ASSIGNMENT STATEMENT...
	mov	1296,r13		! source line 1296
	mov	"\0\0AS",r10
!   i = i + 1		(int)
	load	[r14+-40],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-40]
! END WHILE...
	jmp	_Label_2420
_Label_2422:
! ASSIGNMENT STATEMENT...
	mov	1302,r13		! source line 1302
	mov	"\0\0AS",r10
!   if intIsZero (aPageTable) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2425 = aPageTable + 4
	load	[r14+12],r1
	add	r1,4,r1
	store	r1,[r14+-16]
!   Data Move: *_temp_2425 = numFramesNeeded  (sizeInBytes=4)
	load	[r14+16],r1
	load	[r14+-16],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	1303,r13		! source line 1303
	mov	"\0\0SE",r10
!   _temp_2426 = &frameManagerLock
	load	[r14+8],r1
	add	r1,20,r1
	store	r1,[r14+-12]
!   Send message Unlock
	load	[r14+-12],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
! RETURN STATEMENT...
	mov	1303,r13		! source line 1303
	mov	"\0\0RE",r10
	add	r15,56,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_FrameManager_4:
	.word	_sourceFileName
	.word	_Label_2427
	.word	12		! total size of parameters
	.word	52		! frame size = 52
	.word	_Label_2428
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2429
	.word	12
	.word	4
	.word	_Label_2430
	.word	16
	.word	4
	.word	_Label_2431
	.word	-12
	.word	4
	.word	_Label_2432
	.word	-16
	.word	4
	.word	_Label_2433
	.word	-20
	.word	4
	.word	_Label_2434
	.word	-24
	.word	4
	.word	_Label_2435
	.word	-28
	.word	4
	.word	_Label_2436
	.word	-32
	.word	4
	.word	_Label_2437
	.word	-36
	.word	4
	.word	_Label_2438
	.word	-40
	.word	4
	.word	_Label_2439
	.word	-44
	.word	4
	.word	_Label_2440
	.word	-48
	.word	4
	.word	0
_Label_2427:
	.ascii	"FrameManager"
	.ascii	"::"
	.ascii	"GetNewFrames\0"
	.align
_Label_2428:
	.ascii	"Pself\0"
	.align
_Label_2429:
	.byte	'P'
	.ascii	"aPageTable\0"
	.align
_Label_2430:
	.byte	'I'
	.ascii	"numFramesNeeded\0"
	.align
_Label_2431:
	.byte	'?'
	.ascii	"_temp_2426\0"
	.align
_Label_2432:
	.byte	'?'
	.ascii	"_temp_2425\0"
	.align
_Label_2433:
	.byte	'?'
	.ascii	"_temp_2424\0"
	.align
_Label_2434:
	.byte	'?'
	.ascii	"_temp_2423\0"
	.align
_Label_2435:
	.byte	'?'
	.ascii	"_temp_2419\0"
	.align
_Label_2436:
	.byte	'?'
	.ascii	"_temp_2418\0"
	.align
_Label_2437:
	.byte	'?'
	.ascii	"_temp_2414\0"
	.align
_Label_2438:
	.byte	'I'
	.ascii	"i\0"
	.align
_Label_2439:
	.byte	'I'
	.ascii	"f\0"
	.align
_Label_2440:
	.byte	'I'
	.ascii	"frameAddr\0"
	.align
! 
! ===============  METHOD ReturnAllFrames  ===============
! 
_Method_P_Kernel_FrameManager_5:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_FrameManager_5,r1
	push	r1
	mov	13,r1
_Label_4072:
	push	r0
	sub	r1,1,r1
	bne	_Label_4072
	mov	1308,r13		! source line 1308
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! SEND STATEMENT...
	mov	1314,r13		! source line 1314
	mov	"\0\0SE",r10
!   _temp_2441 = &frameManagerLock
	load	[r14+8],r1
	add	r1,20,r1
	store	r1,[r14+-36]
!   Send message Lock
	load	[r14+-36],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! ASSIGNMENT STATEMENT...
	mov	1315,r13		! source line 1315
	mov	"\0\0AS",r10
!   if intIsZero (aPageTable) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2442 = aPageTable + 4
	load	[r14+12],r1
	add	r1,4,r1
	store	r1,[r14+-32]
!   Data Move: pageToBeReturned = *_temp_2442  (sizeInBytes=4)
	load	[r14+-32],r1
	load	[r1],r1
	store	r1,[r14+-40]
! ASSIGNMENT STATEMENT...
	mov	1316,r13		! source line 1316
	mov	"\0\0AS",r10
!   i = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-44]
! WHILE STATEMENT...
	mov	1316,r13		! source line 1316
	mov	"\0\0WH",r10
_Label_2443:
!   if i >= pageToBeReturned then goto _Label_2445		(int)
	load	[r14+-44],r1
	load	[r14+-40],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_2445
!	jmp	_Label_2444
_Label_2444:
	mov	1316,r13		! source line 1316
	mov	"\0\0WB",r10
! ASSIGNMENT STATEMENT...
	mov	1317,r13		! source line 1317
	mov	"\0\0AS",r10
	mov	1317,r13		! source line 1317
	mov	"\0\0SE",r10
!   if intIsZero (aPageTable) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Prepare Argument: offset=12  value=i  sizeInBytes=4
	load	[r14+-44],r1
	store	r1,[r15+4]
!   Send message ExtractFrameAddr
	load	[r14+12],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
!   Retrieve Result: targetName=frameAddr  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-48]
! ASSIGNMENT STATEMENT...
	mov	1318,r13		! source line 1318
	mov	"\0\0AS",r10
!   _temp_2446 = frameAddr - 1048576		(int)
	load	[r14+-48],r1
	set	1048576,r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-28]
!   bitNumber = _temp_2446 div 8192		(int)
	load	[r14+-28],r1
	mov	8192,r2
	cmp	r2,0
	be	_runtimeErrorZeroDivide
	div	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-52]
! SEND STATEMENT...
	mov	1319,r13		! source line 1319
	mov	"\0\0SE",r10
!   _temp_2447 = &framesInUse
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=12  value=bitNumber  sizeInBytes=4
	load	[r14+-52],r1
	store	r1,[r15+4]
!   Send message ClearBit
	load	[r14+-24],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
! ASSIGNMENT STATEMENT...
	mov	1320,r13		! source line 1320
	mov	"\0\0AS",r10
!   numberFreeFrames = numberFreeFrames + 1		(int)
	load	[r14+8],r1
	load	[r1+16],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	load	[r14+8],r2
	store	r1,[r2+16]
! SEND STATEMENT...
	mov	1321,r13		! source line 1321
	mov	"\0\0SE",r10
!   _temp_2448 = &frameManagerLock
	load	[r14+8],r1
	add	r1,20,r1
	store	r1,[r14+-20]
!   _temp_2449 = &newFramesAvailable
	load	[r14+8],r1
	add	r1,40,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=12  value=_temp_2448  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+4]
!   Send message Broadcast
	load	[r14+-16],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,16,r2
	call	r2
! ASSIGNMENT STATEMENT...
	mov	1316,r13		! source line 1316
	mov	"\0\0AS",r10
!   i = i + 1		(int)
	load	[r14+-44],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-44]
! END WHILE...
	jmp	_Label_2443
_Label_2445:
! SEND STATEMENT...
	mov	1323,r13		! source line 1323
	mov	"\0\0SE",r10
!   _temp_2450 = &frameManagerLock
	load	[r14+8],r1
	add	r1,20,r1
	store	r1,[r14+-12]
!   Send message Unlock
	load	[r14+-12],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
! RETURN STATEMENT...
	mov	1323,r13		! source line 1323
	mov	"\0\0RE",r10
	add	r15,56,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_FrameManager_5:
	.word	_sourceFileName
	.word	_Label_2451
	.word	8		! total size of parameters
	.word	52		! frame size = 52
	.word	_Label_2452
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2453
	.word	12
	.word	4
	.word	_Label_2454
	.word	-12
	.word	4
	.word	_Label_2455
	.word	-16
	.word	4
	.word	_Label_2456
	.word	-20
	.word	4
	.word	_Label_2457
	.word	-24
	.word	4
	.word	_Label_2458
	.word	-28
	.word	4
	.word	_Label_2459
	.word	-32
	.word	4
	.word	_Label_2460
	.word	-36
	.word	4
	.word	_Label_2461
	.word	-40
	.word	4
	.word	_Label_2462
	.word	-44
	.word	4
	.word	_Label_2463
	.word	-48
	.word	4
	.word	_Label_2464
	.word	-52
	.word	4
	.word	0
_Label_2451:
	.ascii	"FrameManager"
	.ascii	"::"
	.ascii	"ReturnAllFrames\0"
	.align
_Label_2452:
	.ascii	"Pself\0"
	.align
_Label_2453:
	.byte	'P'
	.ascii	"aPageTable\0"
	.align
_Label_2454:
	.byte	'?'
	.ascii	"_temp_2450\0"
	.align
_Label_2455:
	.byte	'?'
	.ascii	"_temp_2449\0"
	.align
_Label_2456:
	.byte	'?'
	.ascii	"_temp_2448\0"
	.align
_Label_2457:
	.byte	'?'
	.ascii	"_temp_2447\0"
	.align
_Label_2458:
	.byte	'?'
	.ascii	"_temp_2446\0"
	.align
_Label_2459:
	.byte	'?'
	.ascii	"_temp_2442\0"
	.align
_Label_2460:
	.byte	'?'
	.ascii	"_temp_2441\0"
	.align
_Label_2461:
	.byte	'I'
	.ascii	"pageToBeReturned\0"
	.align
_Label_2462:
	.byte	'I'
	.ascii	"i\0"
	.align
_Label_2463:
	.byte	'I'
	.ascii	"frameAddr\0"
	.align
_Label_2464:
	.byte	'I'
	.ascii	"bitNumber\0"
	.align
! 
! ===============  CLASS AddrSpace  ===============
! 
! Dispatch Table:
! 
_P_Kernel_AddrSpace:
	.word	_Label_2465
	jmp	_Method_P_Kernel_AddrSpace_1	! 4:	Init
	jmp	_Method_P_Kernel_AddrSpace_2	! 8:	Print
	jmp	_Method_P_Kernel_AddrSpace_3	! 12:	ExtractFrameAddr
	jmp	_Method_P_Kernel_AddrSpace_4	! 16:	ExtractUndefinedBits
	jmp	_Method_P_Kernel_AddrSpace_5	! 20:	SetFrameAddr
	jmp	_Method_P_Kernel_AddrSpace_6	! 24:	IsDirty
	jmp	_Method_P_Kernel_AddrSpace_7	! 28:	IsReferenced
	jmp	_Method_P_Kernel_AddrSpace_8	! 32:	IsWritable
	jmp	_Method_P_Kernel_AddrSpace_9	! 36:	IsValid
	jmp	_Method_P_Kernel_AddrSpace_10	! 40:	SetDirty
	jmp	_Method_P_Kernel_AddrSpace_11	! 44:	SetReferenced
	jmp	_Method_P_Kernel_AddrSpace_12	! 48:	SetWritable
	jmp	_Method_P_Kernel_AddrSpace_13	! 52:	SetValid
	jmp	_Method_P_Kernel_AddrSpace_14	! 56:	ClearDirty
	jmp	_Method_P_Kernel_AddrSpace_15	! 60:	ClearReferenced
	jmp	_Method_P_Kernel_AddrSpace_16	! 64:	ClearWritable
	jmp	_Method_P_Kernel_AddrSpace_17	! 68:	ClearValid
	jmp	_Method_P_Kernel_AddrSpace_18	! 72:	SetToThisPageTable
	jmp	_Method_P_Kernel_AddrSpace_19	! 76:	CopyBytesFromVirtual
	jmp	_Method_P_Kernel_AddrSpace_20	! 80:	CopyBytesToVirtual
	jmp	_Method_P_Kernel_AddrSpace_21	! 84:	GetStringFromVirtual
	.word	0
! 
! Class descriptor:
! 
_Label_2465:
	.word	1129070931		! Magic number 0x434c4153 == 'CLAS'
	.word	_Label_2466
	.word	_sourceFileName
	.word	280		! line number
	.word	92		! size of instances, in bytes
	.word	_P_Kernel_AddrSpace
	.word	_P_System_Object
	.word	0
_Label_2466:
	.ascii	"AddrSpace\0"
	.align
! 
! ===============  METHOD Init  ===============
! 
_Method_P_Kernel_AddrSpace_1:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_AddrSpace_1,r1
	push	r1
	mov	25,r1
_Label_4073:
	push	r0
	sub	r1,1,r1
	bne	_Label_4073
	mov	1334,r13		! source line 1334
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1338,r13		! source line 1338
	mov	"\0\0AS",r10
!   numberOfPages = 0		(4 bytes)
	mov	0,r1
	load	[r14+8],r2
	store	r1,[r2+4]
! ASSIGNMENT STATEMENT...
	mov	1339,r13		! source line 1339
	mov	"\0\0AS",r10
!   _temp_2467 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-108]
!   NEW ARRAY Constructor...
!   _temp_2469 = &_temp_2468
	add	r14,-104,r1
	store	r1,[r14+-20]
!   _temp_2469 = _temp_2469 + 4
	load	[r14+-20],r1
	add	r1,4,r1
	store	r1,[r14+-20]
!   Next value...
	mov	20,r1
	store	r1,[r14+-16]
_Label_2471:
!   Data Move: *_temp_2469 = 3  (sizeInBytes=4)
	mov	3,r1
	load	[r14+-20],r2
	store	r1,[r2]
!   _temp_2469 = _temp_2469 + 4
	load	[r14+-20],r1
	add	r1,4,r1
	store	r1,[r14+-20]
!   _temp_2470 = _temp_2470 + -1
	load	[r14+-16],r1
	add	r1,-1,r1
	store	r1,[r14+-16]
!   if intNotZero (_temp_2470) then goto _Label_2471
	load	[r14+-16],r1
	cmp	r1,r0
	bne	_Label_2471
!   Initialize the array size...
	mov	20,r1
	store	r1,[r14+-104]
!   _temp_2472 = &_temp_2468
	add	r14,-104,r1
	store	r1,[r14+-12]
!   make sure array has size 20
	load	[r14+-108],r1
	load	[r1],r1
	set	20, r2
	cmp	r1,0
	be	_Label_4074
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bne	_runtimeErrorWrongArraySize
_Label_4074:
!   make sure array has size 20
	load	[r14+-12],r1
	load	[r1],r1
	set	20, r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bne	_runtimeErrorWrongArraySize
!   Data Move: *_temp_2467 = *_temp_2472  (sizeInBytes=84)
	load	[r14+-12],r5
	load	[r14+-108],r4
	mov	21,r3
_Label_4075:
	load	[r5],r1
	add	r5,4,r5
	store	r1,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_4075
! RETURN STATEMENT...
	mov	1339,r13		! source line 1339
	mov	"\0\0RE",r10
	add	r15,104,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_AddrSpace_1:
	.word	_sourceFileName
	.word	_Label_2473
	.word	4		! total size of parameters
	.word	100		! frame size = 100
	.word	_Label_2474
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2475
	.word	-12
	.word	4
	.word	_Label_2476
	.word	-16
	.word	4
	.word	_Label_2477
	.word	-20
	.word	4
	.word	_Label_2478
	.word	-104
	.word	84
	.word	_Label_2479
	.word	-108
	.word	4
	.word	0
_Label_2473:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"Init\0"
	.align
_Label_2474:
	.ascii	"Pself\0"
	.align
_Label_2475:
	.byte	'?'
	.ascii	"_temp_2472\0"
	.align
_Label_2476:
	.byte	'?'
	.ascii	"_temp_2470\0"
	.align
_Label_2477:
	.byte	'?'
	.ascii	"_temp_2469\0"
	.align
_Label_2478:
	.byte	'?'
	.ascii	"_temp_2468\0"
	.align
_Label_2479:
	.byte	'?'
	.ascii	"_temp_2467\0"
	.align
! 
! ===============  METHOD Print  ===============
! 
_Method_P_Kernel_AddrSpace_2:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_AddrSpace_2,r1
	push	r1
	mov	42,r1
_Label_4076:
	push	r0
	sub	r1,1,r1
	bne	_Label_4076
	mov	1344,r13		! source line 1344
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   _temp_2480 = _StringConst_115
	set	_StringConst_115,r1
	store	r1,[r14+-164]
!   Prepare Argument: offset=8  value=_temp_2480  sizeInBytes=4
	load	[r14+-164],r1
	store	r1,[r15+0]
!   Call the function
	mov	1349,r13		! source line 1349
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_2481 = _StringConst_116
	set	_StringConst_116,r1
	store	r1,[r14+-160]
!   Prepare Argument: offset=8  value=_temp_2481  sizeInBytes=4
	load	[r14+-160],r1
	store	r1,[r15+0]
!   Call the function
	mov	1350,r13		! source line 1350
	mov	"\0\0CE",r10
	call	print
! FOR STATEMENT...
	mov	1351,r13		! source line 1351
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_2486 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-156]
!   Calculate and save the FOR-LOOP ending value
!   _temp_2487 = numberOfPages - 1		(int)
	load	[r14+8],r1
	load	[r1+4],r1
	mov	1,r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-152]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_2486  (sizeInBytes=4)
	load	[r14+-156],r1
	store	r1,[r14+-168]
_Label_2482:
!   Perform the FOR-LOOP termination test
!   if i > _temp_2487 then goto _Label_2485		
	load	[r14+-168],r1
	load	[r14+-152],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_2485
_Label_2483:
	mov	1351,r13		! source line 1351
	mov	"\0\0FB",r10
! CALL STATEMENT...
!   _temp_2488 = _StringConst_117
	set	_StringConst_117,r1
	store	r1,[r14+-148]
!   Prepare Argument: offset=8  value=_temp_2488  sizeInBytes=4
	load	[r14+-148],r1
	store	r1,[r15+0]
!   Call the function
	mov	1352,r13		! source line 1352
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_2490 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-140]
!   Move address of _temp_2490 [i ] into _temp_2491
!     make sure index expr is >= 0
	load	[r14+-168],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-140],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	4,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-136]
!   _temp_2489 = _temp_2491		(4 bytes)
	load	[r14+-136],r1
	store	r1,[r14+-144]
!   Prepare Argument: offset=8  value=_temp_2489  sizeInBytes=4
	load	[r14+-144],r1
	store	r1,[r15+0]
!   Call the function
	mov	1353,r13		! source line 1353
	mov	"\0\0CE",r10
	call	printHex
! CALL STATEMENT...
!   _temp_2492 = _StringConst_118
	set	_StringConst_118,r1
	store	r1,[r14+-132]
!   Prepare Argument: offset=8  value=_temp_2492  sizeInBytes=4
	load	[r14+-132],r1
	store	r1,[r15+0]
!   Call the function
	mov	1354,r13		! source line 1354
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_2494 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-124]
!   Move address of _temp_2494 [i ] into _temp_2495
!     make sure index expr is >= 0
	load	[r14+-168],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-124],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	4,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-120]
!   Data Move: _temp_2493 = *_temp_2495  (sizeInBytes=4)
	load	[r14+-120],r1
	load	[r1],r1
	store	r1,[r14+-128]
!   Prepare Argument: offset=8  value=_temp_2493  sizeInBytes=4
	load	[r14+-128],r1
	store	r1,[r15+0]
!   Call the function
	mov	1355,r13		! source line 1355
	mov	"\0\0CE",r10
	call	printHex
! CALL STATEMENT...
!   _temp_2496 = _StringConst_119
	set	_StringConst_119,r1
	store	r1,[r14+-116]
!   Prepare Argument: offset=8  value=_temp_2496  sizeInBytes=4
	load	[r14+-116],r1
	store	r1,[r15+0]
!   Call the function
	mov	1356,r13		! source line 1356
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_2497 = i * 8192		(int)
	load	[r14+-168],r1
	mov	8192,r2
	mul	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-112]
!   Prepare Argument: offset=8  value=_temp_2497  sizeInBytes=4
	load	[r14+-112],r1
	store	r1,[r15+0]
!   Call the function
	mov	1357,r13		! source line 1357
	mov	"\0\0CE",r10
	call	printHex
! CALL STATEMENT...
!   _temp_2498 = _StringConst_120
	set	_StringConst_120,r1
	store	r1,[r14+-108]
!   Prepare Argument: offset=8  value=_temp_2498  sizeInBytes=4
	load	[r14+-108],r1
	store	r1,[r15+0]
!   Call the function
	mov	1358,r13		! source line 1358
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
	mov	1359,r13		! source line 1359
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-100]
!   if intIsZero (_temp_2500) then goto _runtimeErrorNullPointer
	load	[r14+-100],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Prepare Argument: offset=12  value=i  sizeInBytes=4
	load	[r14+-168],r1
	store	r1,[r15+4]
!   Send message ExtractFrameAddr
	load	[r14+-100],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
!   Retrieve Result: targetName=_temp_2499  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-104]
!   Prepare Argument: offset=8  value=_temp_2499  sizeInBytes=4
	load	[r14+-104],r1
	store	r1,[r15+0]
!   Call the function
	mov	1359,r13		! source line 1359
	mov	"\0\0CE",r10
	call	printHex
! CALL STATEMENT...
!   _temp_2501 = _StringConst_121
	set	_StringConst_121,r1
	store	r1,[r14+-96]
!   Prepare Argument: offset=8  value=_temp_2501  sizeInBytes=4
	load	[r14+-96],r1
	store	r1,[r15+0]
!   Call the function
	mov	1360,r13		! source line 1360
	mov	"\0\0CE",r10
	call	print
! IF STATEMENT...
	mov	1361,r13		! source line 1361
	mov	"\0\0IF",r10
	mov	1361,r13		! source line 1361
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-88]
!   if intIsZero (_temp_2505) then goto _runtimeErrorNullPointer
	load	[r14+-88],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Prepare Argument: offset=12  value=i  sizeInBytes=4
	load	[r14+-168],r1
	store	r1,[r15+4]
!   Send message ExtractUndefinedBits
	load	[r14+-88],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,16,r2
	call	r2
!   Retrieve Result: targetName=_temp_2504  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-92]
!   if intIsZero (_temp_2504) then goto _Label_2503
	load	[r14+-92],r1
	cmp	r1,r0
	be	_Label_2503
!	jmp	_Label_2502
_Label_2502:
! THEN...
	mov	1362,r13		! source line 1362
	mov	"\0\0TN",r10
! CALL STATEMENT...
	mov	1362,r13		! source line 1362
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-80]
!   if intIsZero (_temp_2507) then goto _runtimeErrorNullPointer
	load	[r14+-80],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Prepare Argument: offset=12  value=i  sizeInBytes=4
	load	[r14+-168],r1
	store	r1,[r15+4]
!   Send message ExtractUndefinedBits
	load	[r14+-80],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,16,r2
	call	r2
!   Retrieve Result: targetName=_temp_2506  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-84]
!   Prepare Argument: offset=8  value=_temp_2506  sizeInBytes=4
	load	[r14+-84],r1
	store	r1,[r15+0]
!   Call the function
	mov	1362,r13		! source line 1362
	mov	"\0\0CE",r10
	call	printHex
	jmp	_Label_2508
_Label_2503:
! ELSE...
	mov	1364,r13		! source line 1364
	mov	"\0\0EL",r10
! CALL STATEMENT...
!   _temp_2509 = _StringConst_122
	set	_StringConst_122,r1
	store	r1,[r14+-76]
!   Prepare Argument: offset=8  value=_temp_2509  sizeInBytes=4
	load	[r14+-76],r1
	store	r1,[r15+0]
!   Call the function
	mov	1364,r13		! source line 1364
	mov	"\0\0CE",r10
	call	print
! END IF...
_Label_2508:
! CALL STATEMENT...
!   _temp_2510 = _StringConst_123
	set	_StringConst_123,r1
	store	r1,[r14+-72]
!   Prepare Argument: offset=8  value=_temp_2510  sizeInBytes=4
	load	[r14+-72],r1
	store	r1,[r15+0]
!   Call the function
	mov	1366,r13		! source line 1366
	mov	"\0\0CE",r10
	call	print
! IF STATEMENT...
	mov	1367,r13		! source line 1367
	mov	"\0\0IF",r10
	mov	1367,r13		! source line 1367
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-68]
!   if intIsZero (_temp_2513) then goto _runtimeErrorNullPointer
	load	[r14+-68],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Prepare Argument: offset=12  value=i  sizeInBytes=4
	load	[r14+-168],r1
	store	r1,[r15+4]
!   Send message IsDirty
	load	[r14+-68],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,24,r2
	call	r2
!   if result==true then goto _Label_2511 else goto _Label_2512
	loadb	[r15],r1
	cmp	r1,0
	be	_Label_2512
	jmp	_Label_2511
_Label_2511:
! THEN...
	mov	1368,r13		! source line 1368
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_2514 = _StringConst_124
	set	_StringConst_124,r1
	store	r1,[r14+-64]
!   Prepare Argument: offset=8  value=_temp_2514  sizeInBytes=4
	load	[r14+-64],r1
	store	r1,[r15+0]
!   Call the function
	mov	1368,r13		! source line 1368
	mov	"\0\0CE",r10
	call	print
	jmp	_Label_2515
_Label_2512:
! ELSE...
	mov	1370,r13		! source line 1370
	mov	"\0\0EL",r10
! CALL STATEMENT...
!   _temp_2516 = _StringConst_125
	set	_StringConst_125,r1
	store	r1,[r14+-60]
!   Prepare Argument: offset=8  value=_temp_2516  sizeInBytes=4
	load	[r14+-60],r1
	store	r1,[r15+0]
!   Call the function
	mov	1370,r13		! source line 1370
	mov	"\0\0CE",r10
	call	print
! END IF...
_Label_2515:
! CALL STATEMENT...
!   _temp_2517 = _StringConst_126
	set	_StringConst_126,r1
	store	r1,[r14+-56]
!   Prepare Argument: offset=8  value=_temp_2517  sizeInBytes=4
	load	[r14+-56],r1
	store	r1,[r15+0]
!   Call the function
	mov	1372,r13		! source line 1372
	mov	"\0\0CE",r10
	call	print
! IF STATEMENT...
	mov	1373,r13		! source line 1373
	mov	"\0\0IF",r10
	mov	1373,r13		! source line 1373
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-52]
!   if intIsZero (_temp_2520) then goto _runtimeErrorNullPointer
	load	[r14+-52],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Prepare Argument: offset=12  value=i  sizeInBytes=4
	load	[r14+-168],r1
	store	r1,[r15+4]
!   Send message IsReferenced
	load	[r14+-52],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,28,r2
	call	r2
!   if result==true then goto _Label_2518 else goto _Label_2519
	loadb	[r15],r1
	cmp	r1,0
	be	_Label_2519
	jmp	_Label_2518
_Label_2518:
! THEN...
	mov	1374,r13		! source line 1374
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_2521 = _StringConst_127
	set	_StringConst_127,r1
	store	r1,[r14+-48]
!   Prepare Argument: offset=8  value=_temp_2521  sizeInBytes=4
	load	[r14+-48],r1
	store	r1,[r15+0]
!   Call the function
	mov	1374,r13		! source line 1374
	mov	"\0\0CE",r10
	call	print
	jmp	_Label_2522
_Label_2519:
! ELSE...
	mov	1376,r13		! source line 1376
	mov	"\0\0EL",r10
! CALL STATEMENT...
!   _temp_2523 = _StringConst_128
	set	_StringConst_128,r1
	store	r1,[r14+-44]
!   Prepare Argument: offset=8  value=_temp_2523  sizeInBytes=4
	load	[r14+-44],r1
	store	r1,[r15+0]
!   Call the function
	mov	1376,r13		! source line 1376
	mov	"\0\0CE",r10
	call	print
! END IF...
_Label_2522:
! CALL STATEMENT...
!   _temp_2524 = _StringConst_129
	set	_StringConst_129,r1
	store	r1,[r14+-40]
!   Prepare Argument: offset=8  value=_temp_2524  sizeInBytes=4
	load	[r14+-40],r1
	store	r1,[r15+0]
!   Call the function
	mov	1378,r13		! source line 1378
	mov	"\0\0CE",r10
	call	print
! IF STATEMENT...
	mov	1379,r13		! source line 1379
	mov	"\0\0IF",r10
	mov	1379,r13		! source line 1379
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-36]
!   if intIsZero (_temp_2527) then goto _runtimeErrorNullPointer
	load	[r14+-36],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Prepare Argument: offset=12  value=i  sizeInBytes=4
	load	[r14+-168],r1
	store	r1,[r15+4]
!   Send message IsWritable
	load	[r14+-36],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,32,r2
	call	r2
!   if result==true then goto _Label_2525 else goto _Label_2526
	loadb	[r15],r1
	cmp	r1,0
	be	_Label_2526
	jmp	_Label_2525
_Label_2525:
! THEN...
	mov	1380,r13		! source line 1380
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_2528 = _StringConst_130
	set	_StringConst_130,r1
	store	r1,[r14+-32]
!   Prepare Argument: offset=8  value=_temp_2528  sizeInBytes=4
	load	[r14+-32],r1
	store	r1,[r15+0]
!   Call the function
	mov	1380,r13		! source line 1380
	mov	"\0\0CE",r10
	call	print
	jmp	_Label_2529
_Label_2526:
! ELSE...
	mov	1382,r13		! source line 1382
	mov	"\0\0EL",r10
! CALL STATEMENT...
!   _temp_2530 = _StringConst_131
	set	_StringConst_131,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=8  value=_temp_2530  sizeInBytes=4
	load	[r14+-28],r1
	store	r1,[r15+0]
!   Call the function
	mov	1382,r13		! source line 1382
	mov	"\0\0CE",r10
	call	print
! END IF...
_Label_2529:
! CALL STATEMENT...
!   _temp_2531 = _StringConst_132
	set	_StringConst_132,r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=8  value=_temp_2531  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+0]
!   Call the function
	mov	1384,r13		! source line 1384
	mov	"\0\0CE",r10
	call	print
! IF STATEMENT...
	mov	1385,r13		! source line 1385
	mov	"\0\0IF",r10
	mov	1385,r13		! source line 1385
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-20]
!   if intIsZero (_temp_2534) then goto _runtimeErrorNullPointer
	load	[r14+-20],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Prepare Argument: offset=12  value=i  sizeInBytes=4
	load	[r14+-168],r1
	store	r1,[r15+4]
!   Send message IsValid
	load	[r14+-20],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,36,r2
	call	r2
!   if result==true then goto _Label_2532 else goto _Label_2533
	loadb	[r15],r1
	cmp	r1,0
	be	_Label_2533
	jmp	_Label_2532
_Label_2532:
! THEN...
	mov	1386,r13		! source line 1386
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_2535 = _StringConst_133
	set	_StringConst_133,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_2535  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+0]
!   Call the function
	mov	1386,r13		! source line 1386
	mov	"\0\0CE",r10
	call	print
	jmp	_Label_2536
_Label_2533:
! ELSE...
	mov	1388,r13		! source line 1388
	mov	"\0\0EL",r10
! CALL STATEMENT...
!   _temp_2537 = _StringConst_134
	set	_StringConst_134,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_2537  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	1388,r13		! source line 1388
	mov	"\0\0CE",r10
	call	print
! END IF...
_Label_2536:
! CALL STATEMENT...
!   Call the function
	mov	1390,r13		! source line 1390
	mov	"\0\0CA",r10
	call	_P_System_nl
!   Increment the FOR-LOOP index variable and jump back
_Label_2484:
!   i = i + 1
	load	[r14+-168],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-168]
	jmp	_Label_2482
! END FOR
_Label_2485:
! RETURN STATEMENT...
	mov	1351,r13		! source line 1351
	mov	"\0\0RE",r10
	add	r15,172,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_AddrSpace_2:
	.word	_sourceFileName
	.word	_Label_2538
	.word	4		! total size of parameters
	.word	168		! frame size = 168
	.word	_Label_2539
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2540
	.word	-12
	.word	4
	.word	_Label_2541
	.word	-16
	.word	4
	.word	_Label_2542
	.word	-20
	.word	4
	.word	_Label_2543
	.word	-24
	.word	4
	.word	_Label_2544
	.word	-28
	.word	4
	.word	_Label_2545
	.word	-32
	.word	4
	.word	_Label_2546
	.word	-36
	.word	4
	.word	_Label_2547
	.word	-40
	.word	4
	.word	_Label_2548
	.word	-44
	.word	4
	.word	_Label_2549
	.word	-48
	.word	4
	.word	_Label_2550
	.word	-52
	.word	4
	.word	_Label_2551
	.word	-56
	.word	4
	.word	_Label_2552
	.word	-60
	.word	4
	.word	_Label_2553
	.word	-64
	.word	4
	.word	_Label_2554
	.word	-68
	.word	4
	.word	_Label_2555
	.word	-72
	.word	4
	.word	_Label_2556
	.word	-76
	.word	4
	.word	_Label_2557
	.word	-80
	.word	4
	.word	_Label_2558
	.word	-84
	.word	4
	.word	_Label_2559
	.word	-88
	.word	4
	.word	_Label_2560
	.word	-92
	.word	4
	.word	_Label_2561
	.word	-96
	.word	4
	.word	_Label_2562
	.word	-100
	.word	4
	.word	_Label_2563
	.word	-104
	.word	4
	.word	_Label_2564
	.word	-108
	.word	4
	.word	_Label_2565
	.word	-112
	.word	4
	.word	_Label_2566
	.word	-116
	.word	4
	.word	_Label_2567
	.word	-120
	.word	4
	.word	_Label_2568
	.word	-124
	.word	4
	.word	_Label_2569
	.word	-128
	.word	4
	.word	_Label_2570
	.word	-132
	.word	4
	.word	_Label_2571
	.word	-136
	.word	4
	.word	_Label_2572
	.word	-140
	.word	4
	.word	_Label_2573
	.word	-144
	.word	4
	.word	_Label_2574
	.word	-148
	.word	4
	.word	_Label_2575
	.word	-152
	.word	4
	.word	_Label_2576
	.word	-156
	.word	4
	.word	_Label_2577
	.word	-160
	.word	4
	.word	_Label_2578
	.word	-164
	.word	4
	.word	_Label_2579
	.word	-168
	.word	4
	.word	0
_Label_2538:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"Print\0"
	.align
_Label_2539:
	.ascii	"Pself\0"
	.align
_Label_2540:
	.byte	'?'
	.ascii	"_temp_2537\0"
	.align
_Label_2541:
	.byte	'?'
	.ascii	"_temp_2535\0"
	.align
_Label_2542:
	.byte	'?'
	.ascii	"_temp_2534\0"
	.align
_Label_2543:
	.byte	'?'
	.ascii	"_temp_2531\0"
	.align
_Label_2544:
	.byte	'?'
	.ascii	"_temp_2530\0"
	.align
_Label_2545:
	.byte	'?'
	.ascii	"_temp_2528\0"
	.align
_Label_2546:
	.byte	'?'
	.ascii	"_temp_2527\0"
	.align
_Label_2547:
	.byte	'?'
	.ascii	"_temp_2524\0"
	.align
_Label_2548:
	.byte	'?'
	.ascii	"_temp_2523\0"
	.align
_Label_2549:
	.byte	'?'
	.ascii	"_temp_2521\0"
	.align
_Label_2550:
	.byte	'?'
	.ascii	"_temp_2520\0"
	.align
_Label_2551:
	.byte	'?'
	.ascii	"_temp_2517\0"
	.align
_Label_2552:
	.byte	'?'
	.ascii	"_temp_2516\0"
	.align
_Label_2553:
	.byte	'?'
	.ascii	"_temp_2514\0"
	.align
_Label_2554:
	.byte	'?'
	.ascii	"_temp_2513\0"
	.align
_Label_2555:
	.byte	'?'
	.ascii	"_temp_2510\0"
	.align
_Label_2556:
	.byte	'?'
	.ascii	"_temp_2509\0"
	.align
_Label_2557:
	.byte	'?'
	.ascii	"_temp_2507\0"
	.align
_Label_2558:
	.byte	'?'
	.ascii	"_temp_2506\0"
	.align
_Label_2559:
	.byte	'?'
	.ascii	"_temp_2505\0"
	.align
_Label_2560:
	.byte	'?'
	.ascii	"_temp_2504\0"
	.align
_Label_2561:
	.byte	'?'
	.ascii	"_temp_2501\0"
	.align
_Label_2562:
	.byte	'?'
	.ascii	"_temp_2500\0"
	.align
_Label_2563:
	.byte	'?'
	.ascii	"_temp_2499\0"
	.align
_Label_2564:
	.byte	'?'
	.ascii	"_temp_2498\0"
	.align
_Label_2565:
	.byte	'?'
	.ascii	"_temp_2497\0"
	.align
_Label_2566:
	.byte	'?'
	.ascii	"_temp_2496\0"
	.align
_Label_2567:
	.byte	'?'
	.ascii	"_temp_2495\0"
	.align
_Label_2568:
	.byte	'?'
	.ascii	"_temp_2494\0"
	.align
_Label_2569:
	.byte	'?'
	.ascii	"_temp_2493\0"
	.align
_Label_2570:
	.byte	'?'
	.ascii	"_temp_2492\0"
	.align
_Label_2571:
	.byte	'?'
	.ascii	"_temp_2491\0"
	.align
_Label_2572:
	.byte	'?'
	.ascii	"_temp_2490\0"
	.align
_Label_2573:
	.byte	'?'
	.ascii	"_temp_2489\0"
	.align
_Label_2574:
	.byte	'?'
	.ascii	"_temp_2488\0"
	.align
_Label_2575:
	.byte	'?'
	.ascii	"_temp_2487\0"
	.align
_Label_2576:
	.byte	'?'
	.ascii	"_temp_2486\0"
	.align
_Label_2577:
	.byte	'?'
	.ascii	"_temp_2481\0"
	.align
_Label_2578:
	.byte	'?'
	.ascii	"_temp_2480\0"
	.align
_Label_2579:
	.byte	'I'
	.ascii	"i\0"
	.align
! 
! ===============  METHOD ExtractFrameAddr  ===============
! 
_Method_P_Kernel_AddrSpace_3:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_AddrSpace_3,r1
	push	r1
	mov	4,r1
_Label_4077:
	push	r0
	sub	r1,1,r1
	bne	_Label_4077
	mov	1396,r13		! source line 1396
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! RETURN STATEMENT...
	mov	1401,r13		! source line 1401
	mov	"\0\0RE",r10
!   _temp_2582 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-16]
!   Move address of _temp_2582 [entry ] into _temp_2583
!     make sure index expr is >= 0
	load	[r14+12],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-16],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	4,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-12]
!   Data Move: _temp_2581 = *_temp_2583  (sizeInBytes=4)
	load	[r14+-12],r1
	load	[r1],r1
	store	r1,[r14+-20]
!   _temp_2580 = _temp_2581 AND -8192		(int)
	load	[r14+-20],r1
	mov	-8192,r2
	and	r1,r2,r1
	store	r1,[r14+-24]
!   ReturnResult: _temp_2580  (sizeInBytes=4)
	load	[r14+-24],r1
	store	r1,[r14+8]
	add	r15,20,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_AddrSpace_3:
	.word	_sourceFileName
	.word	_Label_2584
	.word	8		! total size of parameters
	.word	16		! frame size = 16
	.word	_Label_2585
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2586
	.word	12
	.word	4
	.word	_Label_2587
	.word	-12
	.word	4
	.word	_Label_2588
	.word	-16
	.word	4
	.word	_Label_2589
	.word	-20
	.word	4
	.word	_Label_2590
	.word	-24
	.word	4
	.word	0
_Label_2584:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"ExtractFrameAddr\0"
	.align
_Label_2585:
	.ascii	"Pself\0"
	.align
_Label_2586:
	.byte	'I'
	.ascii	"entry\0"
	.align
_Label_2587:
	.byte	'?'
	.ascii	"_temp_2583\0"
	.align
_Label_2588:
	.byte	'?'
	.ascii	"_temp_2582\0"
	.align
_Label_2589:
	.byte	'?'
	.ascii	"_temp_2581\0"
	.align
_Label_2590:
	.byte	'?'
	.ascii	"_temp_2580\0"
	.align
! 
! ===============  METHOD ExtractUndefinedBits  ===============
! 
_Method_P_Kernel_AddrSpace_4:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_AddrSpace_4,r1
	push	r1
	mov	4,r1
_Label_4078:
	push	r0
	sub	r1,1,r1
	bne	_Label_4078
	mov	1406,r13		! source line 1406
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! RETURN STATEMENT...
	mov	1410,r13		! source line 1410
	mov	"\0\0RE",r10
!   _temp_2593 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-16]
!   Move address of _temp_2593 [entry ] into _temp_2594
!     make sure index expr is >= 0
	load	[r14+12],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-16],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	4,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-12]
!   Data Move: _temp_2592 = *_temp_2594  (sizeInBytes=4)
	load	[r14+-12],r1
	load	[r1],r1
	store	r1,[r14+-20]
!   _temp_2591 = _temp_2592 AND 8176		(int)
	load	[r14+-20],r1
	mov	8176,r2
	and	r1,r2,r1
	store	r1,[r14+-24]
!   ReturnResult: _temp_2591  (sizeInBytes=4)
	load	[r14+-24],r1
	store	r1,[r14+8]
	add	r15,20,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_AddrSpace_4:
	.word	_sourceFileName
	.word	_Label_2595
	.word	8		! total size of parameters
	.word	16		! frame size = 16
	.word	_Label_2596
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2597
	.word	12
	.word	4
	.word	_Label_2598
	.word	-12
	.word	4
	.word	_Label_2599
	.word	-16
	.word	4
	.word	_Label_2600
	.word	-20
	.word	4
	.word	_Label_2601
	.word	-24
	.word	4
	.word	0
_Label_2595:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"ExtractUndefinedBits\0"
	.align
_Label_2596:
	.ascii	"Pself\0"
	.align
_Label_2597:
	.byte	'I'
	.ascii	"entry\0"
	.align
_Label_2598:
	.byte	'?'
	.ascii	"_temp_2594\0"
	.align
_Label_2599:
	.byte	'?'
	.ascii	"_temp_2593\0"
	.align
_Label_2600:
	.byte	'?'
	.ascii	"_temp_2592\0"
	.align
_Label_2601:
	.byte	'?'
	.ascii	"_temp_2591\0"
	.align
! 
! ===============  METHOD SetFrameAddr  ===============
! 
_Method_P_Kernel_AddrSpace_5:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_AddrSpace_5,r1
	push	r1
	mov	7,r1
_Label_4079:
	push	r0
	sub	r1,1,r1
	bne	_Label_4079
	mov	1415,r13		! source line 1415
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1420,r13		! source line 1420
	mov	"\0\0AS",r10
!   _temp_2602 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-36]
!   Move address of _temp_2602 [entry ] into _temp_2603
!     make sure index expr is >= 0
	load	[r14+12],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-36],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	4,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-32]
!   _temp_2607 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-16]
!   Move address of _temp_2607 [entry ] into _temp_2608
!     make sure index expr is >= 0
	load	[r14+12],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-16],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	4,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-12]
!   Data Move: _temp_2606 = *_temp_2608  (sizeInBytes=4)
	load	[r14+-12],r1
	load	[r1],r1
	store	r1,[r14+-20]
!   _temp_2605 = _temp_2606 AND 8191		(int)
	load	[r14+-20],r1
	mov	8191,r2
	and	r1,r2,r1
	store	r1,[r14+-24]
!   _temp_2604 = _temp_2605 OR frameAddr		(int)
	load	[r14+-24],r1
	load	[r14+16],r2
	or	r1,r2,r1
	store	r1,[r14+-28]
!   Data Move: *_temp_2603 = _temp_2604  (sizeInBytes=4)
	load	[r14+-28],r1
	load	[r14+-32],r2
	store	r1,[r2]
! RETURN STATEMENT...
	mov	1420,r13		! source line 1420
	mov	"\0\0RE",r10
	add	r15,32,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_AddrSpace_5:
	.word	_sourceFileName
	.word	_Label_2609
	.word	12		! total size of parameters
	.word	28		! frame size = 28
	.word	_Label_2610
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2611
	.word	12
	.word	4
	.word	_Label_2612
	.word	16
	.word	4
	.word	_Label_2613
	.word	-12
	.word	4
	.word	_Label_2614
	.word	-16
	.word	4
	.word	_Label_2615
	.word	-20
	.word	4
	.word	_Label_2616
	.word	-24
	.word	4
	.word	_Label_2617
	.word	-28
	.word	4
	.word	_Label_2618
	.word	-32
	.word	4
	.word	_Label_2619
	.word	-36
	.word	4
	.word	0
_Label_2609:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"SetFrameAddr\0"
	.align
_Label_2610:
	.ascii	"Pself\0"
	.align
_Label_2611:
	.byte	'I'
	.ascii	"entry\0"
	.align
_Label_2612:
	.byte	'I'
	.ascii	"frameAddr\0"
	.align
_Label_2613:
	.byte	'?'
	.ascii	"_temp_2608\0"
	.align
_Label_2614:
	.byte	'?'
	.ascii	"_temp_2607\0"
	.align
_Label_2615:
	.byte	'?'
	.ascii	"_temp_2606\0"
	.align
_Label_2616:
	.byte	'?'
	.ascii	"_temp_2605\0"
	.align
_Label_2617:
	.byte	'?'
	.ascii	"_temp_2604\0"
	.align
_Label_2618:
	.byte	'?'
	.ascii	"_temp_2603\0"
	.align
_Label_2619:
	.byte	'?'
	.ascii	"_temp_2602\0"
	.align
! 
! ===============  METHOD IsDirty  ===============
! 
_Method_P_Kernel_AddrSpace_6:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_AddrSpace_6,r1
	push	r1
	mov	5,r1
_Label_4080:
	push	r0
	sub	r1,1,r1
	bne	_Label_4080
	mov	1425,r13		! source line 1425
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! RETURN STATEMENT...
	mov	1429,r13		! source line 1429
	mov	"\0\0RE",r10
!   _temp_2623 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-20]
!   Move address of _temp_2623 [entry ] into _temp_2624
!     make sure index expr is >= 0
	load	[r14+12],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-20],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	4,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-16]
!   Data Move: _temp_2622 = *_temp_2624  (sizeInBytes=4)
	load	[r14+-16],r1
	load	[r1],r1
	store	r1,[r14+-24]
!   _temp_2621 = _temp_2622 AND 8		(int)
	load	[r14+-24],r1
	mov	8,r2
	and	r1,r2,r1
	store	r1,[r14+-28]
!   if intIsZero (_temp_2621) then goto _Label_2625
	load	[r14+-28],r1
	cmp	r1,r0
	be	_Label_2625
!   _temp_2620 = 1		(1 byte)
	mov	1,r1
	storeb	r1,[r14+-9]
	jmp	_Label_2626
_Label_2625:
!   _temp_2620 = 0		(1 byte)
	mov	0,r1
	storeb	r1,[r14+-9]
_Label_2626:
!   ReturnResult: _temp_2620  (sizeInBytes=1)
	loadb	[r14+-9],r1
	storeb	r1,[r14+8]
	add	r15,24,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_AddrSpace_6:
	.word	_sourceFileName
	.word	_Label_2627
	.word	8		! total size of parameters
	.word	20		! frame size = 20
	.word	_Label_2628
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2629
	.word	12
	.word	4
	.word	_Label_2630
	.word	-16
	.word	4
	.word	_Label_2631
	.word	-20
	.word	4
	.word	_Label_2632
	.word	-24
	.word	4
	.word	_Label_2633
	.word	-28
	.word	4
	.word	_Label_2634
	.word	-9
	.word	1
	.word	0
_Label_2627:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"IsDirty\0"
	.align
_Label_2628:
	.ascii	"Pself\0"
	.align
_Label_2629:
	.byte	'I'
	.ascii	"entry\0"
	.align
_Label_2630:
	.byte	'?'
	.ascii	"_temp_2624\0"
	.align
_Label_2631:
	.byte	'?'
	.ascii	"_temp_2623\0"
	.align
_Label_2632:
	.byte	'?'
	.ascii	"_temp_2622\0"
	.align
_Label_2633:
	.byte	'?'
	.ascii	"_temp_2621\0"
	.align
_Label_2634:
	.byte	'C'
	.ascii	"_temp_2620\0"
	.align
! 
! ===============  METHOD IsReferenced  ===============
! 
_Method_P_Kernel_AddrSpace_7:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_AddrSpace_7,r1
	push	r1
	mov	5,r1
_Label_4081:
	push	r0
	sub	r1,1,r1
	bne	_Label_4081
	mov	1434,r13		! source line 1434
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! RETURN STATEMENT...
	mov	1438,r13		! source line 1438
	mov	"\0\0RE",r10
!   _temp_2638 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-20]
!   Move address of _temp_2638 [entry ] into _temp_2639
!     make sure index expr is >= 0
	load	[r14+12],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-20],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	4,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-16]
!   Data Move: _temp_2637 = *_temp_2639  (sizeInBytes=4)
	load	[r14+-16],r1
	load	[r1],r1
	store	r1,[r14+-24]
!   _temp_2636 = _temp_2637 AND 4		(int)
	load	[r14+-24],r1
	mov	4,r2
	and	r1,r2,r1
	store	r1,[r14+-28]
!   if intIsZero (_temp_2636) then goto _Label_2640
	load	[r14+-28],r1
	cmp	r1,r0
	be	_Label_2640
!   _temp_2635 = 1		(1 byte)
	mov	1,r1
	storeb	r1,[r14+-9]
	jmp	_Label_2641
_Label_2640:
!   _temp_2635 = 0		(1 byte)
	mov	0,r1
	storeb	r1,[r14+-9]
_Label_2641:
!   ReturnResult: _temp_2635  (sizeInBytes=1)
	loadb	[r14+-9],r1
	storeb	r1,[r14+8]
	add	r15,24,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_AddrSpace_7:
	.word	_sourceFileName
	.word	_Label_2642
	.word	8		! total size of parameters
	.word	20		! frame size = 20
	.word	_Label_2643
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2644
	.word	12
	.word	4
	.word	_Label_2645
	.word	-16
	.word	4
	.word	_Label_2646
	.word	-20
	.word	4
	.word	_Label_2647
	.word	-24
	.word	4
	.word	_Label_2648
	.word	-28
	.word	4
	.word	_Label_2649
	.word	-9
	.word	1
	.word	0
_Label_2642:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"IsReferenced\0"
	.align
_Label_2643:
	.ascii	"Pself\0"
	.align
_Label_2644:
	.byte	'I'
	.ascii	"entry\0"
	.align
_Label_2645:
	.byte	'?'
	.ascii	"_temp_2639\0"
	.align
_Label_2646:
	.byte	'?'
	.ascii	"_temp_2638\0"
	.align
_Label_2647:
	.byte	'?'
	.ascii	"_temp_2637\0"
	.align
_Label_2648:
	.byte	'?'
	.ascii	"_temp_2636\0"
	.align
_Label_2649:
	.byte	'C'
	.ascii	"_temp_2635\0"
	.align
! 
! ===============  METHOD IsWritable  ===============
! 
_Method_P_Kernel_AddrSpace_8:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_AddrSpace_8,r1
	push	r1
	mov	5,r1
_Label_4082:
	push	r0
	sub	r1,1,r1
	bne	_Label_4082
	mov	1443,r13		! source line 1443
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! RETURN STATEMENT...
	mov	1447,r13		! source line 1447
	mov	"\0\0RE",r10
!   _temp_2653 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-20]
!   Move address of _temp_2653 [entry ] into _temp_2654
!     make sure index expr is >= 0
	load	[r14+12],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-20],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	4,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-16]
!   Data Move: _temp_2652 = *_temp_2654  (sizeInBytes=4)
	load	[r14+-16],r1
	load	[r1],r1
	store	r1,[r14+-24]
!   _temp_2651 = _temp_2652 AND 2		(int)
	load	[r14+-24],r1
	mov	2,r2
	and	r1,r2,r1
	store	r1,[r14+-28]
!   if intIsZero (_temp_2651) then goto _Label_2655
	load	[r14+-28],r1
	cmp	r1,r0
	be	_Label_2655
!   _temp_2650 = 1		(1 byte)
	mov	1,r1
	storeb	r1,[r14+-9]
	jmp	_Label_2656
_Label_2655:
!   _temp_2650 = 0		(1 byte)
	mov	0,r1
	storeb	r1,[r14+-9]
_Label_2656:
!   ReturnResult: _temp_2650  (sizeInBytes=1)
	loadb	[r14+-9],r1
	storeb	r1,[r14+8]
	add	r15,24,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_AddrSpace_8:
	.word	_sourceFileName
	.word	_Label_2657
	.word	8		! total size of parameters
	.word	20		! frame size = 20
	.word	_Label_2658
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2659
	.word	12
	.word	4
	.word	_Label_2660
	.word	-16
	.word	4
	.word	_Label_2661
	.word	-20
	.word	4
	.word	_Label_2662
	.word	-24
	.word	4
	.word	_Label_2663
	.word	-28
	.word	4
	.word	_Label_2664
	.word	-9
	.word	1
	.word	0
_Label_2657:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"IsWritable\0"
	.align
_Label_2658:
	.ascii	"Pself\0"
	.align
_Label_2659:
	.byte	'I'
	.ascii	"entry\0"
	.align
_Label_2660:
	.byte	'?'
	.ascii	"_temp_2654\0"
	.align
_Label_2661:
	.byte	'?'
	.ascii	"_temp_2653\0"
	.align
_Label_2662:
	.byte	'?'
	.ascii	"_temp_2652\0"
	.align
_Label_2663:
	.byte	'?'
	.ascii	"_temp_2651\0"
	.align
_Label_2664:
	.byte	'C'
	.ascii	"_temp_2650\0"
	.align
! 
! ===============  METHOD IsValid  ===============
! 
_Method_P_Kernel_AddrSpace_9:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_AddrSpace_9,r1
	push	r1
	mov	5,r1
_Label_4083:
	push	r0
	sub	r1,1,r1
	bne	_Label_4083
	mov	1452,r13		! source line 1452
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! RETURN STATEMENT...
	mov	1456,r13		! source line 1456
	mov	"\0\0RE",r10
!   _temp_2668 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-20]
!   Move address of _temp_2668 [entry ] into _temp_2669
!     make sure index expr is >= 0
	load	[r14+12],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-20],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	4,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-16]
!   Data Move: _temp_2667 = *_temp_2669  (sizeInBytes=4)
	load	[r14+-16],r1
	load	[r1],r1
	store	r1,[r14+-24]
!   _temp_2666 = _temp_2667 AND 1		(int)
	load	[r14+-24],r1
	mov	1,r2
	and	r1,r2,r1
	store	r1,[r14+-28]
!   if intIsZero (_temp_2666) then goto _Label_2670
	load	[r14+-28],r1
	cmp	r1,r0
	be	_Label_2670
!   _temp_2665 = 1		(1 byte)
	mov	1,r1
	storeb	r1,[r14+-9]
	jmp	_Label_2671
_Label_2670:
!   _temp_2665 = 0		(1 byte)
	mov	0,r1
	storeb	r1,[r14+-9]
_Label_2671:
!   ReturnResult: _temp_2665  (sizeInBytes=1)
	loadb	[r14+-9],r1
	storeb	r1,[r14+8]
	add	r15,24,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_AddrSpace_9:
	.word	_sourceFileName
	.word	_Label_2672
	.word	8		! total size of parameters
	.word	20		! frame size = 20
	.word	_Label_2673
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2674
	.word	12
	.word	4
	.word	_Label_2675
	.word	-16
	.word	4
	.word	_Label_2676
	.word	-20
	.word	4
	.word	_Label_2677
	.word	-24
	.word	4
	.word	_Label_2678
	.word	-28
	.word	4
	.word	_Label_2679
	.word	-9
	.word	1
	.word	0
_Label_2672:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"IsValid\0"
	.align
_Label_2673:
	.ascii	"Pself\0"
	.align
_Label_2674:
	.byte	'I'
	.ascii	"entry\0"
	.align
_Label_2675:
	.byte	'?'
	.ascii	"_temp_2669\0"
	.align
_Label_2676:
	.byte	'?'
	.ascii	"_temp_2668\0"
	.align
_Label_2677:
	.byte	'?'
	.ascii	"_temp_2667\0"
	.align
_Label_2678:
	.byte	'?'
	.ascii	"_temp_2666\0"
	.align
_Label_2679:
	.byte	'C'
	.ascii	"_temp_2665\0"
	.align
! 
! ===============  METHOD SetDirty  ===============
! 
_Method_P_Kernel_AddrSpace_10:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_AddrSpace_10,r1
	push	r1
	mov	6,r1
_Label_4084:
	push	r0
	sub	r1,1,r1
	bne	_Label_4084
	mov	1461,r13		! source line 1461
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1465,r13		! source line 1465
	mov	"\0\0AS",r10
!   _temp_2680 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-32]
!   Move address of _temp_2680 [entry ] into _temp_2681
!     make sure index expr is >= 0
	load	[r14+12],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-32],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	4,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-28]
!   _temp_2684 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-16]
!   Move address of _temp_2684 [entry ] into _temp_2685
!     make sure index expr is >= 0
	load	[r14+12],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-16],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	4,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-12]
!   Data Move: _temp_2683 = *_temp_2685  (sizeInBytes=4)
	load	[r14+-12],r1
	load	[r1],r1
	store	r1,[r14+-20]
!   _temp_2682 = _temp_2683 OR 8		(int)
	load	[r14+-20],r1
	mov	8,r2
	or	r1,r2,r1
	store	r1,[r14+-24]
!   Data Move: *_temp_2681 = _temp_2682  (sizeInBytes=4)
	load	[r14+-24],r1
	load	[r14+-28],r2
	store	r1,[r2]
! RETURN STATEMENT...
	mov	1465,r13		! source line 1465
	mov	"\0\0RE",r10
	add	r15,28,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_AddrSpace_10:
	.word	_sourceFileName
	.word	_Label_2686
	.word	8		! total size of parameters
	.word	24		! frame size = 24
	.word	_Label_2687
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2688
	.word	12
	.word	4
	.word	_Label_2689
	.word	-12
	.word	4
	.word	_Label_2690
	.word	-16
	.word	4
	.word	_Label_2691
	.word	-20
	.word	4
	.word	_Label_2692
	.word	-24
	.word	4
	.word	_Label_2693
	.word	-28
	.word	4
	.word	_Label_2694
	.word	-32
	.word	4
	.word	0
_Label_2686:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"SetDirty\0"
	.align
_Label_2687:
	.ascii	"Pself\0"
	.align
_Label_2688:
	.byte	'I'
	.ascii	"entry\0"
	.align
_Label_2689:
	.byte	'?'
	.ascii	"_temp_2685\0"
	.align
_Label_2690:
	.byte	'?'
	.ascii	"_temp_2684\0"
	.align
_Label_2691:
	.byte	'?'
	.ascii	"_temp_2683\0"
	.align
_Label_2692:
	.byte	'?'
	.ascii	"_temp_2682\0"
	.align
_Label_2693:
	.byte	'?'
	.ascii	"_temp_2681\0"
	.align
_Label_2694:
	.byte	'?'
	.ascii	"_temp_2680\0"
	.align
! 
! ===============  METHOD SetReferenced  ===============
! 
_Method_P_Kernel_AddrSpace_11:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_AddrSpace_11,r1
	push	r1
	mov	6,r1
_Label_4085:
	push	r0
	sub	r1,1,r1
	bne	_Label_4085
	mov	1470,r13		! source line 1470
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1474,r13		! source line 1474
	mov	"\0\0AS",r10
!   _temp_2695 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-32]
!   Move address of _temp_2695 [entry ] into _temp_2696
!     make sure index expr is >= 0
	load	[r14+12],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-32],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	4,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-28]
!   _temp_2699 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-16]
!   Move address of _temp_2699 [entry ] into _temp_2700
!     make sure index expr is >= 0
	load	[r14+12],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-16],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	4,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-12]
!   Data Move: _temp_2698 = *_temp_2700  (sizeInBytes=4)
	load	[r14+-12],r1
	load	[r1],r1
	store	r1,[r14+-20]
!   _temp_2697 = _temp_2698 OR 4		(int)
	load	[r14+-20],r1
	mov	4,r2
	or	r1,r2,r1
	store	r1,[r14+-24]
!   Data Move: *_temp_2696 = _temp_2697  (sizeInBytes=4)
	load	[r14+-24],r1
	load	[r14+-28],r2
	store	r1,[r2]
! RETURN STATEMENT...
	mov	1474,r13		! source line 1474
	mov	"\0\0RE",r10
	add	r15,28,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_AddrSpace_11:
	.word	_sourceFileName
	.word	_Label_2701
	.word	8		! total size of parameters
	.word	24		! frame size = 24
	.word	_Label_2702
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2703
	.word	12
	.word	4
	.word	_Label_2704
	.word	-12
	.word	4
	.word	_Label_2705
	.word	-16
	.word	4
	.word	_Label_2706
	.word	-20
	.word	4
	.word	_Label_2707
	.word	-24
	.word	4
	.word	_Label_2708
	.word	-28
	.word	4
	.word	_Label_2709
	.word	-32
	.word	4
	.word	0
_Label_2701:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"SetReferenced\0"
	.align
_Label_2702:
	.ascii	"Pself\0"
	.align
_Label_2703:
	.byte	'I'
	.ascii	"entry\0"
	.align
_Label_2704:
	.byte	'?'
	.ascii	"_temp_2700\0"
	.align
_Label_2705:
	.byte	'?'
	.ascii	"_temp_2699\0"
	.align
_Label_2706:
	.byte	'?'
	.ascii	"_temp_2698\0"
	.align
_Label_2707:
	.byte	'?'
	.ascii	"_temp_2697\0"
	.align
_Label_2708:
	.byte	'?'
	.ascii	"_temp_2696\0"
	.align
_Label_2709:
	.byte	'?'
	.ascii	"_temp_2695\0"
	.align
! 
! ===============  METHOD SetWritable  ===============
! 
_Method_P_Kernel_AddrSpace_12:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_AddrSpace_12,r1
	push	r1
	mov	6,r1
_Label_4086:
	push	r0
	sub	r1,1,r1
	bne	_Label_4086
	mov	1479,r13		! source line 1479
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1483,r13		! source line 1483
	mov	"\0\0AS",r10
!   _temp_2710 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-32]
!   Move address of _temp_2710 [entry ] into _temp_2711
!     make sure index expr is >= 0
	load	[r14+12],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-32],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	4,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-28]
!   _temp_2714 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-16]
!   Move address of _temp_2714 [entry ] into _temp_2715
!     make sure index expr is >= 0
	load	[r14+12],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-16],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	4,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-12]
!   Data Move: _temp_2713 = *_temp_2715  (sizeInBytes=4)
	load	[r14+-12],r1
	load	[r1],r1
	store	r1,[r14+-20]
!   _temp_2712 = _temp_2713 OR 2		(int)
	load	[r14+-20],r1
	mov	2,r2
	or	r1,r2,r1
	store	r1,[r14+-24]
!   Data Move: *_temp_2711 = _temp_2712  (sizeInBytes=4)
	load	[r14+-24],r1
	load	[r14+-28],r2
	store	r1,[r2]
! RETURN STATEMENT...
	mov	1483,r13		! source line 1483
	mov	"\0\0RE",r10
	add	r15,28,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_AddrSpace_12:
	.word	_sourceFileName
	.word	_Label_2716
	.word	8		! total size of parameters
	.word	24		! frame size = 24
	.word	_Label_2717
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2718
	.word	12
	.word	4
	.word	_Label_2719
	.word	-12
	.word	4
	.word	_Label_2720
	.word	-16
	.word	4
	.word	_Label_2721
	.word	-20
	.word	4
	.word	_Label_2722
	.word	-24
	.word	4
	.word	_Label_2723
	.word	-28
	.word	4
	.word	_Label_2724
	.word	-32
	.word	4
	.word	0
_Label_2716:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"SetWritable\0"
	.align
_Label_2717:
	.ascii	"Pself\0"
	.align
_Label_2718:
	.byte	'I'
	.ascii	"entry\0"
	.align
_Label_2719:
	.byte	'?'
	.ascii	"_temp_2715\0"
	.align
_Label_2720:
	.byte	'?'
	.ascii	"_temp_2714\0"
	.align
_Label_2721:
	.byte	'?'
	.ascii	"_temp_2713\0"
	.align
_Label_2722:
	.byte	'?'
	.ascii	"_temp_2712\0"
	.align
_Label_2723:
	.byte	'?'
	.ascii	"_temp_2711\0"
	.align
_Label_2724:
	.byte	'?'
	.ascii	"_temp_2710\0"
	.align
! 
! ===============  METHOD SetValid  ===============
! 
_Method_P_Kernel_AddrSpace_13:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_AddrSpace_13,r1
	push	r1
	mov	6,r1
_Label_4087:
	push	r0
	sub	r1,1,r1
	bne	_Label_4087
	mov	1488,r13		! source line 1488
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1492,r13		! source line 1492
	mov	"\0\0AS",r10
!   _temp_2725 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-32]
!   Move address of _temp_2725 [entry ] into _temp_2726
!     make sure index expr is >= 0
	load	[r14+12],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-32],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	4,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-28]
!   _temp_2729 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-16]
!   Move address of _temp_2729 [entry ] into _temp_2730
!     make sure index expr is >= 0
	load	[r14+12],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-16],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	4,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-12]
!   Data Move: _temp_2728 = *_temp_2730  (sizeInBytes=4)
	load	[r14+-12],r1
	load	[r1],r1
	store	r1,[r14+-20]
!   _temp_2727 = _temp_2728 OR 1		(int)
	load	[r14+-20],r1
	mov	1,r2
	or	r1,r2,r1
	store	r1,[r14+-24]
!   Data Move: *_temp_2726 = _temp_2727  (sizeInBytes=4)
	load	[r14+-24],r1
	load	[r14+-28],r2
	store	r1,[r2]
! RETURN STATEMENT...
	mov	1492,r13		! source line 1492
	mov	"\0\0RE",r10
	add	r15,28,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_AddrSpace_13:
	.word	_sourceFileName
	.word	_Label_2731
	.word	8		! total size of parameters
	.word	24		! frame size = 24
	.word	_Label_2732
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2733
	.word	12
	.word	4
	.word	_Label_2734
	.word	-12
	.word	4
	.word	_Label_2735
	.word	-16
	.word	4
	.word	_Label_2736
	.word	-20
	.word	4
	.word	_Label_2737
	.word	-24
	.word	4
	.word	_Label_2738
	.word	-28
	.word	4
	.word	_Label_2739
	.word	-32
	.word	4
	.word	0
_Label_2731:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"SetValid\0"
	.align
_Label_2732:
	.ascii	"Pself\0"
	.align
_Label_2733:
	.byte	'I'
	.ascii	"entry\0"
	.align
_Label_2734:
	.byte	'?'
	.ascii	"_temp_2730\0"
	.align
_Label_2735:
	.byte	'?'
	.ascii	"_temp_2729\0"
	.align
_Label_2736:
	.byte	'?'
	.ascii	"_temp_2728\0"
	.align
_Label_2737:
	.byte	'?'
	.ascii	"_temp_2727\0"
	.align
_Label_2738:
	.byte	'?'
	.ascii	"_temp_2726\0"
	.align
_Label_2739:
	.byte	'?'
	.ascii	"_temp_2725\0"
	.align
! 
! ===============  METHOD ClearDirty  ===============
! 
_Method_P_Kernel_AddrSpace_14:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_AddrSpace_14,r1
	push	r1
	mov	6,r1
_Label_4088:
	push	r0
	sub	r1,1,r1
	bne	_Label_4088
	mov	1497,r13		! source line 1497
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1501,r13		! source line 1501
	mov	"\0\0AS",r10
!   _temp_2740 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-32]
!   Move address of _temp_2740 [entry ] into _temp_2741
!     make sure index expr is >= 0
	load	[r14+12],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-32],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	4,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-28]
!   _temp_2744 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-16]
!   Move address of _temp_2744 [entry ] into _temp_2745
!     make sure index expr is >= 0
	load	[r14+12],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-16],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	4,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-12]
!   Data Move: _temp_2743 = *_temp_2745  (sizeInBytes=4)
	load	[r14+-12],r1
	load	[r1],r1
	store	r1,[r14+-20]
!   _temp_2742 = _temp_2743 AND -9		(int)
	load	[r14+-20],r1
	mov	-9,r2
	and	r1,r2,r1
	store	r1,[r14+-24]
!   Data Move: *_temp_2741 = _temp_2742  (sizeInBytes=4)
	load	[r14+-24],r1
	load	[r14+-28],r2
	store	r1,[r2]
! RETURN STATEMENT...
	mov	1501,r13		! source line 1501
	mov	"\0\0RE",r10
	add	r15,28,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_AddrSpace_14:
	.word	_sourceFileName
	.word	_Label_2746
	.word	8		! total size of parameters
	.word	24		! frame size = 24
	.word	_Label_2747
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2748
	.word	12
	.word	4
	.word	_Label_2749
	.word	-12
	.word	4
	.word	_Label_2750
	.word	-16
	.word	4
	.word	_Label_2751
	.word	-20
	.word	4
	.word	_Label_2752
	.word	-24
	.word	4
	.word	_Label_2753
	.word	-28
	.word	4
	.word	_Label_2754
	.word	-32
	.word	4
	.word	0
_Label_2746:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"ClearDirty\0"
	.align
_Label_2747:
	.ascii	"Pself\0"
	.align
_Label_2748:
	.byte	'I'
	.ascii	"entry\0"
	.align
_Label_2749:
	.byte	'?'
	.ascii	"_temp_2745\0"
	.align
_Label_2750:
	.byte	'?'
	.ascii	"_temp_2744\0"
	.align
_Label_2751:
	.byte	'?'
	.ascii	"_temp_2743\0"
	.align
_Label_2752:
	.byte	'?'
	.ascii	"_temp_2742\0"
	.align
_Label_2753:
	.byte	'?'
	.ascii	"_temp_2741\0"
	.align
_Label_2754:
	.byte	'?'
	.ascii	"_temp_2740\0"
	.align
! 
! ===============  METHOD ClearReferenced  ===============
! 
_Method_P_Kernel_AddrSpace_15:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_AddrSpace_15,r1
	push	r1
	mov	6,r1
_Label_4089:
	push	r0
	sub	r1,1,r1
	bne	_Label_4089
	mov	1506,r13		! source line 1506
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1510,r13		! source line 1510
	mov	"\0\0AS",r10
!   _temp_2755 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-32]
!   Move address of _temp_2755 [entry ] into _temp_2756
!     make sure index expr is >= 0
	load	[r14+12],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-32],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	4,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-28]
!   _temp_2759 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-16]
!   Move address of _temp_2759 [entry ] into _temp_2760
!     make sure index expr is >= 0
	load	[r14+12],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-16],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	4,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-12]
!   Data Move: _temp_2758 = *_temp_2760  (sizeInBytes=4)
	load	[r14+-12],r1
	load	[r1],r1
	store	r1,[r14+-20]
!   _temp_2757 = _temp_2758 AND -5		(int)
	load	[r14+-20],r1
	mov	-5,r2
	and	r1,r2,r1
	store	r1,[r14+-24]
!   Data Move: *_temp_2756 = _temp_2757  (sizeInBytes=4)
	load	[r14+-24],r1
	load	[r14+-28],r2
	store	r1,[r2]
! RETURN STATEMENT...
	mov	1510,r13		! source line 1510
	mov	"\0\0RE",r10
	add	r15,28,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_AddrSpace_15:
	.word	_sourceFileName
	.word	_Label_2761
	.word	8		! total size of parameters
	.word	24		! frame size = 24
	.word	_Label_2762
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2763
	.word	12
	.word	4
	.word	_Label_2764
	.word	-12
	.word	4
	.word	_Label_2765
	.word	-16
	.word	4
	.word	_Label_2766
	.word	-20
	.word	4
	.word	_Label_2767
	.word	-24
	.word	4
	.word	_Label_2768
	.word	-28
	.word	4
	.word	_Label_2769
	.word	-32
	.word	4
	.word	0
_Label_2761:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"ClearReferenced\0"
	.align
_Label_2762:
	.ascii	"Pself\0"
	.align
_Label_2763:
	.byte	'I'
	.ascii	"entry\0"
	.align
_Label_2764:
	.byte	'?'
	.ascii	"_temp_2760\0"
	.align
_Label_2765:
	.byte	'?'
	.ascii	"_temp_2759\0"
	.align
_Label_2766:
	.byte	'?'
	.ascii	"_temp_2758\0"
	.align
_Label_2767:
	.byte	'?'
	.ascii	"_temp_2757\0"
	.align
_Label_2768:
	.byte	'?'
	.ascii	"_temp_2756\0"
	.align
_Label_2769:
	.byte	'?'
	.ascii	"_temp_2755\0"
	.align
! 
! ===============  METHOD ClearWritable  ===============
! 
_Method_P_Kernel_AddrSpace_16:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_AddrSpace_16,r1
	push	r1
	mov	6,r1
_Label_4090:
	push	r0
	sub	r1,1,r1
	bne	_Label_4090
	mov	1515,r13		! source line 1515
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1519,r13		! source line 1519
	mov	"\0\0AS",r10
!   _temp_2770 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-32]
!   Move address of _temp_2770 [entry ] into _temp_2771
!     make sure index expr is >= 0
	load	[r14+12],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-32],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	4,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-28]
!   _temp_2774 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-16]
!   Move address of _temp_2774 [entry ] into _temp_2775
!     make sure index expr is >= 0
	load	[r14+12],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-16],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	4,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-12]
!   Data Move: _temp_2773 = *_temp_2775  (sizeInBytes=4)
	load	[r14+-12],r1
	load	[r1],r1
	store	r1,[r14+-20]
!   _temp_2772 = _temp_2773 AND -3		(int)
	load	[r14+-20],r1
	mov	-3,r2
	and	r1,r2,r1
	store	r1,[r14+-24]
!   Data Move: *_temp_2771 = _temp_2772  (sizeInBytes=4)
	load	[r14+-24],r1
	load	[r14+-28],r2
	store	r1,[r2]
! RETURN STATEMENT...
	mov	1519,r13		! source line 1519
	mov	"\0\0RE",r10
	add	r15,28,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_AddrSpace_16:
	.word	_sourceFileName
	.word	_Label_2776
	.word	8		! total size of parameters
	.word	24		! frame size = 24
	.word	_Label_2777
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2778
	.word	12
	.word	4
	.word	_Label_2779
	.word	-12
	.word	4
	.word	_Label_2780
	.word	-16
	.word	4
	.word	_Label_2781
	.word	-20
	.word	4
	.word	_Label_2782
	.word	-24
	.word	4
	.word	_Label_2783
	.word	-28
	.word	4
	.word	_Label_2784
	.word	-32
	.word	4
	.word	0
_Label_2776:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"ClearWritable\0"
	.align
_Label_2777:
	.ascii	"Pself\0"
	.align
_Label_2778:
	.byte	'I'
	.ascii	"entry\0"
	.align
_Label_2779:
	.byte	'?'
	.ascii	"_temp_2775\0"
	.align
_Label_2780:
	.byte	'?'
	.ascii	"_temp_2774\0"
	.align
_Label_2781:
	.byte	'?'
	.ascii	"_temp_2773\0"
	.align
_Label_2782:
	.byte	'?'
	.ascii	"_temp_2772\0"
	.align
_Label_2783:
	.byte	'?'
	.ascii	"_temp_2771\0"
	.align
_Label_2784:
	.byte	'?'
	.ascii	"_temp_2770\0"
	.align
! 
! ===============  METHOD ClearValid  ===============
! 
_Method_P_Kernel_AddrSpace_17:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_AddrSpace_17,r1
	push	r1
	mov	6,r1
_Label_4091:
	push	r0
	sub	r1,1,r1
	bne	_Label_4091
	mov	1524,r13		! source line 1524
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1528,r13		! source line 1528
	mov	"\0\0AS",r10
!   _temp_2785 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-32]
!   Move address of _temp_2785 [entry ] into _temp_2786
!     make sure index expr is >= 0
	load	[r14+12],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-32],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	4,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-28]
!   _temp_2789 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-16]
!   Move address of _temp_2789 [entry ] into _temp_2790
!     make sure index expr is >= 0
	load	[r14+12],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-16],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	4,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-12]
!   Data Move: _temp_2788 = *_temp_2790  (sizeInBytes=4)
	load	[r14+-12],r1
	load	[r1],r1
	store	r1,[r14+-20]
!   _temp_2787 = _temp_2788 AND -2		(int)
	load	[r14+-20],r1
	mov	-2,r2
	and	r1,r2,r1
	store	r1,[r14+-24]
!   Data Move: *_temp_2786 = _temp_2787  (sizeInBytes=4)
	load	[r14+-24],r1
	load	[r14+-28],r2
	store	r1,[r2]
! RETURN STATEMENT...
	mov	1528,r13		! source line 1528
	mov	"\0\0RE",r10
	add	r15,28,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_AddrSpace_17:
	.word	_sourceFileName
	.word	_Label_2791
	.word	8		! total size of parameters
	.word	24		! frame size = 24
	.word	_Label_2792
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2793
	.word	12
	.word	4
	.word	_Label_2794
	.word	-12
	.word	4
	.word	_Label_2795
	.word	-16
	.word	4
	.word	_Label_2796
	.word	-20
	.word	4
	.word	_Label_2797
	.word	-24
	.word	4
	.word	_Label_2798
	.word	-28
	.word	4
	.word	_Label_2799
	.word	-32
	.word	4
	.word	0
_Label_2791:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"ClearValid\0"
	.align
_Label_2792:
	.ascii	"Pself\0"
	.align
_Label_2793:
	.byte	'I'
	.ascii	"entry\0"
	.align
_Label_2794:
	.byte	'?'
	.ascii	"_temp_2790\0"
	.align
_Label_2795:
	.byte	'?'
	.ascii	"_temp_2789\0"
	.align
_Label_2796:
	.byte	'?'
	.ascii	"_temp_2788\0"
	.align
_Label_2797:
	.byte	'?'
	.ascii	"_temp_2787\0"
	.align
_Label_2798:
	.byte	'?'
	.ascii	"_temp_2786\0"
	.align
_Label_2799:
	.byte	'?'
	.ascii	"_temp_2785\0"
	.align
! 
! ===============  METHOD SetToThisPageTable  ===============
! 
_Method_P_Kernel_AddrSpace_18:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_AddrSpace_18,r1
	push	r1
	mov	6,r1
_Label_4092:
	push	r0
	sub	r1,1,r1
	bne	_Label_4092
	mov	1533,r13		! source line 1533
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   _temp_2801 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-20]
!   Move address of _temp_2801 [0 ] into _temp_2802
!     make sure index expr is >= 0
	mov	0,r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-20],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	4,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-16]
!   _temp_2800 = _temp_2802		(4 bytes)
	load	[r14+-16],r1
	store	r1,[r14+-24]
!   _temp_2803 = numberOfPages * 4		(int)
	load	[r14+8],r1
	load	[r1+4],r1
	mov	4,r2
	mul	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_2800  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=_temp_2803  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+4]
!   Call the function
	mov	1539,r13		! source line 1539
	mov	"\0\0CE",r10
	call	LoadPageTableRegs
! RETURN STATEMENT...
	mov	1539,r13		! source line 1539
	mov	"\0\0RE",r10
	add	r15,28,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_AddrSpace_18:
	.word	_sourceFileName
	.word	_Label_2804
	.word	4		! total size of parameters
	.word	24		! frame size = 24
	.word	_Label_2805
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2806
	.word	-12
	.word	4
	.word	_Label_2807
	.word	-16
	.word	4
	.word	_Label_2808
	.word	-20
	.word	4
	.word	_Label_2809
	.word	-24
	.word	4
	.word	0
_Label_2804:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"SetToThisPageTable\0"
	.align
_Label_2805:
	.ascii	"Pself\0"
	.align
_Label_2806:
	.byte	'?'
	.ascii	"_temp_2803\0"
	.align
_Label_2807:
	.byte	'?'
	.ascii	"_temp_2802\0"
	.align
_Label_2808:
	.byte	'?'
	.ascii	"_temp_2801\0"
	.align
_Label_2809:
	.byte	'?'
	.ascii	"_temp_2800\0"
	.align
! 
! ===============  METHOD CopyBytesFromVirtual  ===============
! 
_Method_P_Kernel_AddrSpace_19:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_AddrSpace_19,r1
	push	r1
	mov	12,r1
_Label_4093:
	push	r0
	sub	r1,1,r1
	bne	_Label_4093
	mov	1544,r13		! source line 1544
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! IF STATEMENT...
	mov	1559,r13		! source line 1559
	mov	"\0\0IF",r10
!   if intIsZero (numBytes) then goto _Label_2810
	load	[r14+20],r1
	cmp	r1,r0
	be	_Label_2810
	jmp	_Label_2811
_Label_2810:
! THEN...
	mov	1560,r13		! source line 1560
	mov	"\0\0TN",r10
! RETURN STATEMENT...
	mov	1560,r13		! source line 1560
	mov	"\0\0RE",r10
!   ReturnResult: 0  (sizeInBytes=4)
	mov	0,r1
	store	r1,[r14+8]
	add	r15,52,r15
	pop	r13
	pop	r14
	ret
	jmp	_Label_2812
_Label_2811:
! ELSE...
	mov	1561,r13		! source line 1561
	mov	"\0\0EL",r10
! IF STATEMENT...
	mov	1561,r13		! source line 1561
	mov	"\0\0IF",r10
!   if numBytes >= 0 then goto _Label_2814		(int)
	load	[r14+20],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_2814
!	jmp	_Label_2813
_Label_2813:
! THEN...
	mov	1562,r13		! source line 1562
	mov	"\0\0TN",r10
! RETURN STATEMENT...
	mov	1562,r13		! source line 1562
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,52,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_2814:
! END IF...
_Label_2812:
! ASSIGNMENT STATEMENT...
	mov	1564,r13		! source line 1564
	mov	"\0\0AS",r10
!   virtPage = virtAddr div 8192		(int)
	load	[r14+16],r1
	mov	8192,r2
	cmp	r2,0
	be	_runtimeErrorZeroDivide
	div	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-40]
! ASSIGNMENT STATEMENT...
	mov	1565,r13		! source line 1565
	mov	"\0\0AS",r10
!   offset = virtAddr rem 8192		(int)
	load	[r14+16],r1
	mov	8192,r2
	cmp	r2,0
	be	_runtimeErrorZeroDivide
	rem	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-44]
! WHILE STATEMENT...
	mov	1568,r13		! source line 1568
	mov	"\0\0WH",r10
_Label_2815:
!	jmp	_Label_2816
_Label_2816:
	mov	1568,r13		! source line 1568
	mov	"\0\0WB",r10
! IF STATEMENT...
	mov	1569,r13		! source line 1569
	mov	"\0\0IF",r10
!   if virtPage < numberOfPages then goto _Label_2819		(int)
	load	[r14+-40],r1
	load	[r14+8],r2
	load	[r2+4],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bl	_Label_2819
!	jmp	_Label_2818
_Label_2818:
! THEN...
	mov	1570,r13		! source line 1570
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_2820 = _StringConst_135
	set	_StringConst_135,r1
	store	r1,[r14+-32]
!   Prepare Argument: offset=8  value=_temp_2820  sizeInBytes=4
	load	[r14+-32],r1
	store	r1,[r15+0]
!   Call the function
	mov	1570,r13		! source line 1570
	mov	"\0\0CE",r10
	call	print
! RETURN STATEMENT...
	mov	1571,r13		! source line 1571
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,52,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_2819:
! IF STATEMENT...
	mov	1573,r13		! source line 1573
	mov	"\0\0IF",r10
	mov	1573,r13		! source line 1573
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-28]
!   if intIsZero (_temp_2824) then goto _runtimeErrorNullPointer
	load	[r14+-28],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Prepare Argument: offset=12  value=virtPage  sizeInBytes=4
	load	[r14+-40],r1
	store	r1,[r15+4]
!   Send message IsValid
	load	[r14+-28],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,36,r2
	call	r2
!   Retrieve Result: targetName=_temp_2823  sizeInBytes=1
	loadb	[r15],r1
	storeb	r1,[r14+-10]
!   if _temp_2823 then goto _Label_2822 else goto _Label_2821
	loadb	[r14+-10],r1
	cmp	r1,0
	be	_Label_2821
	jmp	_Label_2822
_Label_2821:
! THEN...
	mov	1574,r13		! source line 1574
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_2825 = _StringConst_136
	set	_StringConst_136,r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=8  value=_temp_2825  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+0]
!   Call the function
	mov	1574,r13		! source line 1574
	mov	"\0\0CE",r10
	call	print
! RETURN STATEMENT...
	mov	1575,r13		! source line 1575
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,52,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_2822:
! ASSIGNMENT STATEMENT...
	mov	1577,r13		! source line 1577
	mov	"\0\0AS",r10
	mov	1577,r13		! source line 1577
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-16]
!   if intIsZero (_temp_2827) then goto _runtimeErrorNullPointer
	load	[r14+-16],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Prepare Argument: offset=12  value=virtPage  sizeInBytes=4
	load	[r14+-40],r1
	store	r1,[r15+4]
!   Send message ExtractFrameAddr
	load	[r14+-16],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
!   Retrieve Result: targetName=_temp_2826  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-20]
!   fromAddr = _temp_2826 + offset		(int)
	load	[r14+-20],r1
	load	[r14+-44],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-48]
! WHILE STATEMENT...
	mov	1579,r13		! source line 1579
	mov	"\0\0WH",r10
_Label_2828:
!   if offset >= 8192 then goto _Label_2830		(int)
	load	[r14+-44],r1
	mov	8192,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_2830
!	jmp	_Label_2829
_Label_2829:
	mov	1579,r13		! source line 1579
	mov	"\0\0WB",r10
! ASSIGNMENT STATEMENT...
	mov	1582,r13		! source line 1582
	mov	"\0\0AS",r10
!   if intIsZero (kernelAddr) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   if intIsZero (fromAddr) then goto _runtimeErrorNullPointer
	load	[r14+-48],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Data Move: _temp_2831 = *fromAddr  (sizeInBytes=1)
	load	[r14+-48],r1
	loadb	[r1],r1
	storeb	r1,[r14+-9]
!   Data Move: *kernelAddr = _temp_2831  (sizeInBytes=1)
	loadb	[r14+-9],r1
	load	[r14+12],r2
	storeb	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	1583,r13		! source line 1583
	mov	"\0\0AS",r10
!   offset = offset + 1		(int)
	load	[r14+-44],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-44]
! ASSIGNMENT STATEMENT...
	mov	1584,r13		! source line 1584
	mov	"\0\0AS",r10
!   kernelAddr = kernelAddr + 1		(int)
	load	[r14+12],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+12]
! ASSIGNMENT STATEMENT...
	mov	1585,r13		! source line 1585
	mov	"\0\0AS",r10
!   fromAddr = fromAddr + 1		(int)
	load	[r14+-48],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-48]
! ASSIGNMENT STATEMENT...
	mov	1586,r13		! source line 1586
	mov	"\0\0AS",r10
!   copiedSoFar = copiedSoFar + 1		(int)
	load	[r14+-36],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-36]
! IF STATEMENT...
	mov	1587,r13		! source line 1587
	mov	"\0\0IF",r10
!   if copiedSoFar != numBytes then goto _Label_2833		(int)
	load	[r14+-36],r1
	load	[r14+20],r2
	cmp	r1,r2
	bne	_Label_2833
!	jmp	_Label_2832
_Label_2832:
! THEN...
	mov	1588,r13		! source line 1588
	mov	"\0\0TN",r10
! RETURN STATEMENT...
	mov	1588,r13		! source line 1588
	mov	"\0\0RE",r10
!   ReturnResult: copiedSoFar  (sizeInBytes=4)
	load	[r14+-36],r1
	store	r1,[r14+8]
	add	r15,52,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_2833:
! END WHILE...
	jmp	_Label_2828
_Label_2830:
! ASSIGNMENT STATEMENT...
	mov	1591,r13		! source line 1591
	mov	"\0\0AS",r10
!   virtPage = virtPage + 1		(int)
	load	[r14+-40],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-40]
! ASSIGNMENT STATEMENT...
	mov	1592,r13		! source line 1592
	mov	"\0\0AS",r10
!   offset = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-44]
! END WHILE...
	jmp	_Label_2815
_Label_2817:
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_AddrSpace_19:
	.word	_sourceFileName
	.word	_Label_2834
	.word	16		! total size of parameters
	.word	48		! frame size = 48
	.word	_Label_2835
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2836
	.word	12
	.word	4
	.word	_Label_2837
	.word	16
	.word	4
	.word	_Label_2838
	.word	20
	.word	4
	.word	_Label_2839
	.word	-9
	.word	1
	.word	_Label_2840
	.word	-16
	.word	4
	.word	_Label_2841
	.word	-20
	.word	4
	.word	_Label_2842
	.word	-24
	.word	4
	.word	_Label_2843
	.word	-28
	.word	4
	.word	_Label_2844
	.word	-10
	.word	1
	.word	_Label_2845
	.word	-32
	.word	4
	.word	_Label_2846
	.word	-36
	.word	4
	.word	_Label_2847
	.word	-40
	.word	4
	.word	_Label_2848
	.word	-44
	.word	4
	.word	_Label_2849
	.word	-48
	.word	4
	.word	0
_Label_2834:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"CopyBytesFromVirtual\0"
	.align
_Label_2835:
	.ascii	"Pself\0"
	.align
_Label_2836:
	.byte	'I'
	.ascii	"kernelAddr\0"
	.align
_Label_2837:
	.byte	'I'
	.ascii	"virtAddr\0"
	.align
_Label_2838:
	.byte	'I'
	.ascii	"numBytes\0"
	.align
_Label_2839:
	.byte	'C'
	.ascii	"_temp_2831\0"
	.align
_Label_2840:
	.byte	'?'
	.ascii	"_temp_2827\0"
	.align
_Label_2841:
	.byte	'?'
	.ascii	"_temp_2826\0"
	.align
_Label_2842:
	.byte	'?'
	.ascii	"_temp_2825\0"
	.align
_Label_2843:
	.byte	'?'
	.ascii	"_temp_2824\0"
	.align
_Label_2844:
	.byte	'C'
	.ascii	"_temp_2823\0"
	.align
_Label_2845:
	.byte	'?'
	.ascii	"_temp_2820\0"
	.align
_Label_2846:
	.byte	'I'
	.ascii	"copiedSoFar\0"
	.align
_Label_2847:
	.byte	'I'
	.ascii	"virtPage\0"
	.align
_Label_2848:
	.byte	'I'
	.ascii	"offset\0"
	.align
_Label_2849:
	.byte	'I'
	.ascii	"fromAddr\0"
	.align
! 
! ===============  METHOD CopyBytesToVirtual  ===============
! 
_Method_P_Kernel_AddrSpace_20:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_AddrSpace_20,r1
	push	r1
	mov	11,r1
_Label_4094:
	push	r0
	sub	r1,1,r1
	bne	_Label_4094
	mov	1598,r13		! source line 1598
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! IF STATEMENT...
	mov	1609,r13		! source line 1609
	mov	"\0\0IF",r10
!   if intIsZero (numBytes) then goto _Label_2850
	load	[r14+20],r1
	cmp	r1,r0
	be	_Label_2850
	jmp	_Label_2851
_Label_2850:
! THEN...
	mov	1610,r13		! source line 1610
	mov	"\0\0TN",r10
! RETURN STATEMENT...
	mov	1610,r13		! source line 1610
	mov	"\0\0RE",r10
!   ReturnResult: 0  (sizeInBytes=4)
	mov	0,r1
	store	r1,[r14+8]
	add	r15,48,r15
	pop	r13
	pop	r14
	ret
	jmp	_Label_2852
_Label_2851:
! ELSE...
	mov	1611,r13		! source line 1611
	mov	"\0\0EL",r10
! IF STATEMENT...
	mov	1611,r13		! source line 1611
	mov	"\0\0IF",r10
!   if numBytes >= 0 then goto _Label_2854		(int)
	load	[r14+20],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_2854
!	jmp	_Label_2853
_Label_2853:
! THEN...
	mov	1612,r13		! source line 1612
	mov	"\0\0TN",r10
! RETURN STATEMENT...
	mov	1612,r13		! source line 1612
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,48,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_2854:
! END IF...
_Label_2852:
! ASSIGNMENT STATEMENT...
	mov	1614,r13		! source line 1614
	mov	"\0\0AS",r10
!   virtPage = virtAddr div 8192		(int)
	load	[r14+12],r1
	mov	8192,r2
	cmp	r2,0
	be	_runtimeErrorZeroDivide
	div	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-36]
! ASSIGNMENT STATEMENT...
	mov	1615,r13		! source line 1615
	mov	"\0\0AS",r10
!   offset = virtAddr rem 8192		(int)
	load	[r14+12],r1
	mov	8192,r2
	cmp	r2,0
	be	_runtimeErrorZeroDivide
	rem	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-40]
! WHILE STATEMENT...
	mov	1616,r13		! source line 1616
	mov	"\0\0WH",r10
_Label_2855:
!	jmp	_Label_2856
_Label_2856:
	mov	1616,r13		! source line 1616
	mov	"\0\0WB",r10
! IF STATEMENT...
	mov	1617,r13		! source line 1617
	mov	"\0\0IF",r10
!   if virtPage < numberOfPages then goto _Label_2861		(int)
	load	[r14+-36],r1
	load	[r14+8],r2
	load	[r2+4],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bl	_Label_2861
	jmp	_Label_2858
_Label_2861:
	mov	1618,r13		! source line 1618
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-28]
!   if intIsZero (_temp_2863) then goto _runtimeErrorNullPointer
	load	[r14+-28],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Prepare Argument: offset=12  value=virtPage  sizeInBytes=4
	load	[r14+-36],r1
	store	r1,[r15+4]
!   Send message IsValid
	load	[r14+-28],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,36,r2
	call	r2
!   Retrieve Result: targetName=_temp_2862  sizeInBytes=1
	loadb	[r15],r1
	storeb	r1,[r14+-11]
!   if _temp_2862 then goto _Label_2860 else goto _Label_2858
	loadb	[r14+-11],r1
	cmp	r1,0
	be	_Label_2858
	jmp	_Label_2860
_Label_2860:
	mov	1619,r13		! source line 1619
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-24]
!   if intIsZero (_temp_2865) then goto _runtimeErrorNullPointer
	load	[r14+-24],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Prepare Argument: offset=12  value=virtPage  sizeInBytes=4
	load	[r14+-36],r1
	store	r1,[r15+4]
!   Send message IsWritable
	load	[r14+-24],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,32,r2
	call	r2
!   Retrieve Result: targetName=_temp_2864  sizeInBytes=1
	loadb	[r15],r1
	storeb	r1,[r14+-10]
!   if _temp_2864 then goto _Label_2859 else goto _Label_2858
	loadb	[r14+-10],r1
	cmp	r1,0
	be	_Label_2858
	jmp	_Label_2859
_Label_2858:
! THEN...
	mov	1620,r13		! source line 1620
	mov	"\0\0TN",r10
! RETURN STATEMENT...
	mov	1620,r13		! source line 1620
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,48,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_2859:
! ASSIGNMENT STATEMENT...
	mov	1622,r13		! source line 1622
	mov	"\0\0AS",r10
	mov	1622,r13		! source line 1622
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-16]
!   if intIsZero (_temp_2867) then goto _runtimeErrorNullPointer
	load	[r14+-16],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Prepare Argument: offset=12  value=virtPage  sizeInBytes=4
	load	[r14+-36],r1
	store	r1,[r15+4]
!   Send message ExtractFrameAddr
	load	[r14+-16],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
!   Retrieve Result: targetName=_temp_2866  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-20]
!   destAddr = _temp_2866 + offset		(int)
	load	[r14+-20],r1
	load	[r14+-40],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-44]
! WHILE STATEMENT...
	mov	1623,r13		! source line 1623
	mov	"\0\0WH",r10
_Label_2868:
!   if offset >= 8192 then goto _Label_2870		(int)
	load	[r14+-40],r1
	mov	8192,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_2870
!	jmp	_Label_2869
_Label_2869:
	mov	1623,r13		! source line 1623
	mov	"\0\0WB",r10
! ASSIGNMENT STATEMENT...
	mov	1624,r13		! source line 1624
	mov	"\0\0AS",r10
!   if intIsZero (destAddr) then goto _runtimeErrorNullPointer
	load	[r14+-44],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   if intIsZero (kernelAddr) then goto _runtimeErrorNullPointer
	load	[r14+16],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Data Move: _temp_2871 = *kernelAddr  (sizeInBytes=1)
	load	[r14+16],r1
	loadb	[r1],r1
	storeb	r1,[r14+-9]
!   Data Move: *destAddr = _temp_2871  (sizeInBytes=1)
	loadb	[r14+-9],r1
	load	[r14+-44],r2
	storeb	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	1625,r13		! source line 1625
	mov	"\0\0AS",r10
!   offset = offset + 1		(int)
	load	[r14+-40],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-40]
! ASSIGNMENT STATEMENT...
	mov	1626,r13		! source line 1626
	mov	"\0\0AS",r10
!   kernelAddr = kernelAddr + 1		(int)
	load	[r14+16],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+16]
! ASSIGNMENT STATEMENT...
	mov	1627,r13		! source line 1627
	mov	"\0\0AS",r10
!   destAddr = destAddr + 1		(int)
	load	[r14+-44],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-44]
! ASSIGNMENT STATEMENT...
	mov	1628,r13		! source line 1628
	mov	"\0\0AS",r10
!   copiedSoFar = copiedSoFar + 1		(int)
	load	[r14+-32],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-32]
! IF STATEMENT...
	mov	1629,r13		! source line 1629
	mov	"\0\0IF",r10
!   if copiedSoFar != numBytes then goto _Label_2873		(int)
	load	[r14+-32],r1
	load	[r14+20],r2
	cmp	r1,r2
	bne	_Label_2873
!	jmp	_Label_2872
_Label_2872:
! THEN...
	mov	1630,r13		! source line 1630
	mov	"\0\0TN",r10
! RETURN STATEMENT...
	mov	1630,r13		! source line 1630
	mov	"\0\0RE",r10
!   ReturnResult: copiedSoFar  (sizeInBytes=4)
	load	[r14+-32],r1
	store	r1,[r14+8]
	add	r15,48,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_2873:
! END WHILE...
	jmp	_Label_2868
_Label_2870:
! ASSIGNMENT STATEMENT...
	mov	1633,r13		! source line 1633
	mov	"\0\0AS",r10
!   virtPage = virtPage + 1		(int)
	load	[r14+-36],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-36]
! ASSIGNMENT STATEMENT...
	mov	1634,r13		! source line 1634
	mov	"\0\0AS",r10
!   offset = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-40]
! END WHILE...
	jmp	_Label_2855
_Label_2857:
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_AddrSpace_20:
	.word	_sourceFileName
	.word	_Label_2874
	.word	16		! total size of parameters
	.word	44		! frame size = 44
	.word	_Label_2875
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2876
	.word	12
	.word	4
	.word	_Label_2877
	.word	16
	.word	4
	.word	_Label_2878
	.word	20
	.word	4
	.word	_Label_2879
	.word	-9
	.word	1
	.word	_Label_2880
	.word	-16
	.word	4
	.word	_Label_2881
	.word	-20
	.word	4
	.word	_Label_2882
	.word	-24
	.word	4
	.word	_Label_2883
	.word	-10
	.word	1
	.word	_Label_2884
	.word	-28
	.word	4
	.word	_Label_2885
	.word	-11
	.word	1
	.word	_Label_2886
	.word	-32
	.word	4
	.word	_Label_2887
	.word	-36
	.word	4
	.word	_Label_2888
	.word	-40
	.word	4
	.word	_Label_2889
	.word	-44
	.word	4
	.word	0
_Label_2874:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"CopyBytesToVirtual\0"
	.align
_Label_2875:
	.ascii	"Pself\0"
	.align
_Label_2876:
	.byte	'I'
	.ascii	"virtAddr\0"
	.align
_Label_2877:
	.byte	'I'
	.ascii	"kernelAddr\0"
	.align
_Label_2878:
	.byte	'I'
	.ascii	"numBytes\0"
	.align
_Label_2879:
	.byte	'C'
	.ascii	"_temp_2871\0"
	.align
_Label_2880:
	.byte	'?'
	.ascii	"_temp_2867\0"
	.align
_Label_2881:
	.byte	'?'
	.ascii	"_temp_2866\0"
	.align
_Label_2882:
	.byte	'?'
	.ascii	"_temp_2865\0"
	.align
_Label_2883:
	.byte	'C'
	.ascii	"_temp_2864\0"
	.align
_Label_2884:
	.byte	'?'
	.ascii	"_temp_2863\0"
	.align
_Label_2885:
	.byte	'C'
	.ascii	"_temp_2862\0"
	.align
_Label_2886:
	.byte	'I'
	.ascii	"copiedSoFar\0"
	.align
_Label_2887:
	.byte	'I'
	.ascii	"virtPage\0"
	.align
_Label_2888:
	.byte	'I'
	.ascii	"offset\0"
	.align
_Label_2889:
	.byte	'I'
	.ascii	"destAddr\0"
	.align
! 
! ===============  METHOD GetStringFromVirtual  ===============
! 
_Method_P_Kernel_AddrSpace_21:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_AddrSpace_21,r1
	push	r1
	mov	13,r1
_Label_4095:
	push	r0
	sub	r1,1,r1
	bne	_Label_4095
	mov	1640,r13		! source line 1640
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! IF STATEMENT...
	mov	1664,r13		! source line 1664
	mov	"\0\0IF",r10
	mov	1664,r13		! source line 1664
	mov	"\0\0SE",r10
!   _temp_2893 = &sourceSize
	add	r14,-44,r1
	store	r1,[r14+-36]
	load	[r14+8],r1
	store	r1,[r14+-32]
!   if intIsZero (_temp_2894) then goto _runtimeErrorNullPointer
	load	[r14+-32],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Prepare Argument: offset=12  value=_temp_2893  sizeInBytes=4
	load	[r14+-36],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=virtAddr  sizeInBytes=4
	load	[r14+16],r1
	store	r1,[r15+8]
!   Prepare Argument: offset=20  value=4  sizeInBytes=4
	mov	4,r1
	store	r1,[r15+12]
!   Send message CopyBytesFromVirtual
	load	[r14+-32],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,76,r2
	call	r2
!   Retrieve Result: targetName=_temp_2892  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-40]
!   if _temp_2892 >= 4 then goto _Label_2891		(int)
	load	[r14+-40],r1
	mov	4,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_2891
!	jmp	_Label_2890
_Label_2890:
! THEN...
	mov	1667,r13		! source line 1667
	mov	"\0\0TN",r10
! RETURN STATEMENT...
	mov	1667,r13		! source line 1667
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,56,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_2891:
! IF STATEMENT...
	mov	1671,r13		! source line 1671
	mov	"\0\0IF",r10
!   if sourceSize <= maxSize then goto _Label_2896		(int)
	load	[r14+-44],r1
	load	[r14+20],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	ble	_Label_2896
!	jmp	_Label_2895
_Label_2895:
! THEN...
	mov	1672,r13		! source line 1672
	mov	"\0\0TN",r10
! RETURN STATEMENT...
	mov	1672,r13		! source line 1672
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,56,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_2896:
! ASSIGNMENT STATEMENT...
	mov	1675,r13		! source line 1675
	mov	"\0\0AS",r10
!   if intIsZero (kernelAddr) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Data Move: *kernelAddr = sourceSize  (sizeInBytes=4)
	load	[r14+-44],r1
	load	[r14+12],r2
	store	r1,[r2]
! RETURN STATEMENT...
	mov	1677,r13		! source line 1677
	mov	"\0\0RE",r10
	mov	1677,r13		! source line 1677
	mov	"\0\0SE",r10
!   _temp_2899 = kernelAddr		(4 bytes)
	load	[r14+12],r1
	store	r1,[r14+-20]
!   _temp_2898 = _temp_2899 + 4		(int)
	load	[r14+-20],r1
	mov	4,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-24]
!   _temp_2900 = virtAddr + 4		(int)
	load	[r14+16],r1
	mov	4,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-16]
	load	[r14+8],r1
	store	r1,[r14+-12]
!   if intIsZero (_temp_2901) then goto _runtimeErrorNullPointer
	load	[r14+-12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Prepare Argument: offset=12  value=_temp_2898  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=_temp_2900  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+8]
!   Prepare Argument: offset=20  value=sourceSize  sizeInBytes=4
	load	[r14+-44],r1
	store	r1,[r15+12]
!   Send message CopyBytesFromVirtual
	load	[r14+-12],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,76,r2
	call	r2
!   Retrieve Result: targetName=_temp_2897  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-28]
!   ReturnResult: _temp_2897  (sizeInBytes=4)
	load	[r14+-28],r1
	store	r1,[r14+8]
	add	r15,56,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_AddrSpace_21:
	.word	_sourceFileName
	.word	_Label_2902
	.word	16		! total size of parameters
	.word	52		! frame size = 52
	.word	_Label_2903
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2904
	.word	12
	.word	4
	.word	_Label_2905
	.word	16
	.word	4
	.word	_Label_2906
	.word	20
	.word	4
	.word	_Label_2907
	.word	-12
	.word	4
	.word	_Label_2908
	.word	-16
	.word	4
	.word	_Label_2909
	.word	-20
	.word	4
	.word	_Label_2910
	.word	-24
	.word	4
	.word	_Label_2911
	.word	-28
	.word	4
	.word	_Label_2912
	.word	-32
	.word	4
	.word	_Label_2913
	.word	-36
	.word	4
	.word	_Label_2914
	.word	-40
	.word	4
	.word	_Label_2915
	.word	-44
	.word	4
	.word	0
_Label_2902:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"GetStringFromVirtual\0"
	.align
_Label_2903:
	.ascii	"Pself\0"
	.align
_Label_2904:
	.byte	'P'
	.ascii	"kernelAddr\0"
	.align
_Label_2905:
	.byte	'I'
	.ascii	"virtAddr\0"
	.align
_Label_2906:
	.byte	'I'
	.ascii	"maxSize\0"
	.align
_Label_2907:
	.byte	'?'
	.ascii	"_temp_2901\0"
	.align
_Label_2908:
	.byte	'?'
	.ascii	"_temp_2900\0"
	.align
_Label_2909:
	.byte	'?'
	.ascii	"_temp_2899\0"
	.align
_Label_2910:
	.byte	'?'
	.ascii	"_temp_2898\0"
	.align
_Label_2911:
	.byte	'?'
	.ascii	"_temp_2897\0"
	.align
_Label_2912:
	.byte	'?'
	.ascii	"_temp_2894\0"
	.align
_Label_2913:
	.byte	'?'
	.ascii	"_temp_2893\0"
	.align
_Label_2914:
	.byte	'?'
	.ascii	"_temp_2892\0"
	.align
_Label_2915:
	.byte	'I'
	.ascii	"sourceSize\0"
	.align
! 
! ===============  CLASS DiskDriver  ===============
! 
! Dispatch Table:
! 
_P_Kernel_DiskDriver:
	.word	_Label_2916
	jmp	_Method_P_Kernel_DiskDriver_1	! 4:	Init
	jmp	_Method_P_Kernel_DiskDriver_2	! 8:	SynchReadSector
	jmp	_Method_P_Kernel_DiskDriver_3	! 12:	StartReadSector
	jmp	_Method_P_Kernel_DiskDriver_4	! 16:	SynchWriteSector
	jmp	_Method_P_Kernel_DiskDriver_5	! 20:	StartWriteSector
	.word	0
! 
! Class descriptor:
! 
_Label_2916:
	.word	1129070931		! Magic number 0x434c4153 == 'CLAS'
	.word	_Label_2917
	.word	_sourceFileName
	.word	313		! line number
	.word	68		! size of instances, in bytes
	.word	_P_Kernel_DiskDriver
	.word	_P_System_Object
	.word	0
_Label_2917:
	.ascii	"DiskDriver\0"
	.align
! 
! ===============  METHOD Init  ===============
! 
_Method_P_Kernel_DiskDriver_1:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_DiskDriver_1,r1
	push	r1
	mov	7,r1
_Label_4096:
	push	r0
	sub	r1,1,r1
	bne	_Label_4096
	mov	2728,r13		! source line 2728
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   _temp_2918 = _StringConst_137
	set	_StringConst_137,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=8  value=_temp_2918  sizeInBytes=4
	load	[r14+-28],r1
	store	r1,[r15+0]
!   Call the function
	mov	2729,r13		! source line 2729
	mov	"\0\0CE",r10
	call	print
! ASSIGNMENT STATEMENT...
	mov	2730,r13		! source line 2730
	mov	"\0\0AS",r10
!   DISK_STATUS_WORD_ADDRESS = 16776968		(4 bytes)
	set	16776968,r1
	load	[r14+8],r2
	store	r1,[r2+4]
! ASSIGNMENT STATEMENT...
	mov	2731,r13		! source line 2731
	mov	"\0\0AS",r10
!   DISK_COMMAND_WORD_ADDRESS = 16776968		(4 bytes)
	set	16776968,r1
	load	[r14+8],r2
	store	r1,[r2+8]
! ASSIGNMENT STATEMENT...
	mov	2732,r13		! source line 2732
	mov	"\0\0AS",r10
!   DISK_MEMORY_ADDRESS_REGISTER = 16776972		(4 bytes)
	set	16776972,r1
	load	[r14+8],r2
	store	r1,[r2+12]
! ASSIGNMENT STATEMENT...
	mov	2733,r13		! source line 2733
	mov	"\0\0AS",r10
!   DISK_SECTOR_NUMBER_REGISTER = 16776976		(4 bytes)
	set	16776976,r1
	load	[r14+8],r2
	store	r1,[r2+16]
! ASSIGNMENT STATEMENT...
	mov	2734,r13		! source line 2734
	mov	"\0\0AS",r10
!   DISK_SECTOR_COUNT_REGISTER = 16776980		(4 bytes)
	set	16776980,r1
	load	[r14+8],r2
	store	r1,[r2+20]
! ASSIGNMENT STATEMENT...
	mov	2735,r13		! source line 2735
	mov	"\0\0AS",r10
!   semToSignalOnCompletion = 0		(4 bytes)
	mov	0,r1
	load	[r14+8],r2
	store	r1,[r2+24]
! ASSIGNMENT STATEMENT...
	mov	2736,r13		! source line 2736
	mov	"\0\0AS",r10
!   NEW CLASS Constructor...
!   ZeroMemory: semUsedInSynchMethods = zeros  (sizeInBytes=20)
	load	[r14+8],r4
	add	r4,28,r4
	store	r0,[r4]
	store	r0,[r4+4]
	store	r0,[r4+8]
	store	r0,[r4+12]
	store	r0,[r4+16]
!   semUsedInSynchMethods = _P_Kernel_Semaphore
	set	_P_Kernel_Semaphore,r1
	load	[r14+8],r2
	store	r1,[r2+28]
! SEND STATEMENT...
	mov	2737,r13		! source line 2737
	mov	"\0\0SE",r10
!   _temp_2920 = &semUsedInSynchMethods
	load	[r14+8],r1
	add	r1,28,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=12  value=0  sizeInBytes=4
	mov	0,r1
	store	r1,[r15+4]
!   Send message Init
	load	[r14+-20],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,4,r2
	call	r2
! ASSIGNMENT STATEMENT...
	mov	2738,r13		! source line 2738
	mov	"\0\0AS",r10
!   NEW CLASS Constructor...
!   ZeroMemory: diskBusy = zeros  (sizeInBytes=20)
	load	[r14+8],r4
	add	r4,48,r4
	store	r0,[r4]
	store	r0,[r4+4]
	store	r0,[r4+8]
	store	r0,[r4+12]
	store	r0,[r4+16]
!   diskBusy = _P_Kernel_Mutex
	set	_P_Kernel_Mutex,r1
	load	[r14+8],r2
	store	r1,[r2+48]
! SEND STATEMENT...
	mov	2739,r13		! source line 2739
	mov	"\0\0SE",r10
!   _temp_2922 = &diskBusy
	load	[r14+8],r1
	add	r1,48,r1
	store	r1,[r14+-12]
!   Send message Init
	load	[r14+-12],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,4,r2
	call	r2
! RETURN STATEMENT...
	mov	2739,r13		! source line 2739
	mov	"\0\0RE",r10
	add	r15,32,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_DiskDriver_1:
	.word	_sourceFileName
	.word	_Label_2923
	.word	4		! total size of parameters
	.word	28		! frame size = 28
	.word	_Label_2924
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2925
	.word	-12
	.word	4
	.word	_Label_2926
	.word	-16
	.word	4
	.word	_Label_2927
	.word	-20
	.word	4
	.word	_Label_2928
	.word	-24
	.word	4
	.word	_Label_2929
	.word	-28
	.word	4
	.word	0
_Label_2923:
	.ascii	"DiskDriver"
	.ascii	"::"
	.ascii	"Init\0"
	.align
_Label_2924:
	.ascii	"Pself\0"
	.align
_Label_2925:
	.byte	'?'
	.ascii	"_temp_2922\0"
	.align
_Label_2926:
	.byte	'?'
	.ascii	"_temp_2921\0"
	.align
_Label_2927:
	.byte	'?'
	.ascii	"_temp_2920\0"
	.align
_Label_2928:
	.byte	'?'
	.ascii	"_temp_2919\0"
	.align
_Label_2929:
	.byte	'?'
	.ascii	"_temp_2918\0"
	.align
! 
! ===============  METHOD SynchReadSector  ===============
! 
_Method_P_Kernel_DiskDriver_2:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_DiskDriver_2,r1
	push	r1
	mov	16,r1
_Label_4097:
	push	r0
	sub	r1,1,r1
	bne	_Label_4097
	mov	2744,r13		! source line 2744
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! SEND STATEMENT...
	mov	2757,r13		! source line 2757
	mov	"\0\0SE",r10
!   _temp_2930 = &diskBusy
	load	[r14+8],r1
	add	r1,48,r1
	store	r1,[r14+-52]
!   Send message Lock
	load	[r14+-52],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! WHILE STATEMENT...
	mov	2758,r13		! source line 2758
	mov	"\0\0WH",r10
_Label_2931:
!	jmp	_Label_2932
_Label_2932:
	mov	2758,r13		! source line 2758
	mov	"\0\0WB",r10
! SEND STATEMENT...
	mov	2760,r13		! source line 2760
	mov	"\0\0SE",r10
!   _temp_2934 = &semUsedInSynchMethods
	load	[r14+8],r1
	add	r1,28,r1
	store	r1,[r14+-48]
	load	[r14+8],r1
	store	r1,[r14+-44]
!   if intIsZero (_temp_2935) then goto _runtimeErrorNullPointer
	load	[r14+-44],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Prepare Argument: offset=12  value=sectorAddr  sizeInBytes=4
	load	[r14+12],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=numberOfSectors  sizeInBytes=4
	load	[r14+16],r1
	store	r1,[r15+8]
!   Prepare Argument: offset=20  value=memoryAddr  sizeInBytes=4
	load	[r14+20],r1
	store	r1,[r15+12]
!   Prepare Argument: offset=24  value=_temp_2934  sizeInBytes=4
	load	[r14+-48],r1
	store	r1,[r15+16]
!   Send message StartReadSector
	load	[r14+-44],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
! SEND STATEMENT...
	mov	2762,r13		! source line 2762
	mov	"\0\0SE",r10
!   _temp_2936 = &semUsedInSynchMethods
	load	[r14+8],r1
	add	r1,28,r1
	store	r1,[r14+-40]
!   Send message Down
	load	[r14+-40],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! SWITCH STATEMENT (using series of tests)...
	mov	2765,r13		! source line 2765
	mov	"\0\0SW",r10
!   Evaluate the switch expression...
!   if intIsZero (DISK_STATUS_WORD_ADDRESS) then goto _runtimeErrorNullPointer
	load	[r14+8],r1
	load	[r1+4],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Data Move: _temp_2945 = *DISK_STATUS_WORD_ADDRESS  (sizeInBytes=4)
	load	[r14+8],r1
	load	[r1+4],r1
	load	[r1],r1
	store	r1,[r14+-36]
!   Branch to the right case label
	load	[r14+-36],r1
	cmp	r1,1
	be	_Label_2939
	cmp	r1,2
	be	_Label_2940
	cmp	r1,3
	be	_Label_2941
	cmp	r1,4
	be	_Label_2942
	cmp	r1,5
	be	_Label_2943
	cmp	r1,6
	be	_Label_2944
	jmp	_Label_2937
! CASE 1...
_Label_2939:
! SEND STATEMENT...
	mov	2767,r13		! source line 2767
	mov	"\0\0SE",r10
!   _temp_2946 = &diskBusy
	load	[r14+8],r1
	add	r1,48,r1
	store	r1,[r14+-32]
!   Send message Unlock
	load	[r14+-32],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
! RETURN STATEMENT...
	mov	2768,r13		! source line 2768
	mov	"\0\0RE",r10
	add	r15,68,r15
	pop	r13
	pop	r14
	ret
! CASE 2...
_Label_2940:
! CALL STATEMENT...
!   _temp_2947 = _StringConst_138
	set	_StringConst_138,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=8  value=_temp_2947  sizeInBytes=4
	load	[r14+-28],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	2770,r13		! source line 2770
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! CASE 3...
_Label_2941:
! CALL STATEMENT...
!   _temp_2948 = _StringConst_139
	set	_StringConst_139,r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=8  value=_temp_2948  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	2772,r13		! source line 2772
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! CASE 4...
_Label_2942:
! CALL STATEMENT...
!   _temp_2949 = _StringConst_140
	set	_StringConst_140,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_2949  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	2774,r13		! source line 2774
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! CASE 5...
_Label_2943:
! BREAK STATEMENT...
	mov	2778,r13		! source line 2778
	mov	"\0\0BR",r10
	jmp	_Label_2938
! CASE 6...
_Label_2944:
! CALL STATEMENT...
!   _temp_2950 = _StringConst_141
	set	_StringConst_141,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_2950  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	2780,r13		! source line 2780
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! DEFAULT CASE...
_Label_2937:
! CALL STATEMENT...
!   _temp_2951 = _StringConst_142
	set	_StringConst_142,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_2951  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	2782,r13		! source line 2782
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END SWITCH...
_Label_2938:
! END WHILE...
	jmp	_Label_2931
_Label_2933:
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_DiskDriver_2:
	.word	_sourceFileName
	.word	_Label_2952
	.word	16		! total size of parameters
	.word	64		! frame size = 64
	.word	_Label_2953
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2954
	.word	12
	.word	4
	.word	_Label_2955
	.word	16
	.word	4
	.word	_Label_2956
	.word	20
	.word	4
	.word	_Label_2957
	.word	-12
	.word	4
	.word	_Label_2958
	.word	-16
	.word	4
	.word	_Label_2959
	.word	-20
	.word	4
	.word	_Label_2960
	.word	-24
	.word	4
	.word	_Label_2961
	.word	-28
	.word	4
	.word	_Label_2962
	.word	-32
	.word	4
	.word	_Label_2963
	.word	-36
	.word	4
	.word	_Label_2964
	.word	-40
	.word	4
	.word	_Label_2965
	.word	-44
	.word	4
	.word	_Label_2966
	.word	-48
	.word	4
	.word	_Label_2967
	.word	-52
	.word	4
	.word	0
_Label_2952:
	.ascii	"DiskDriver"
	.ascii	"::"
	.ascii	"SynchReadSector\0"
	.align
_Label_2953:
	.ascii	"Pself\0"
	.align
_Label_2954:
	.byte	'I'
	.ascii	"sectorAddr\0"
	.align
_Label_2955:
	.byte	'I'
	.ascii	"numberOfSectors\0"
	.align
_Label_2956:
	.byte	'I'
	.ascii	"memoryAddr\0"
	.align
_Label_2957:
	.byte	'?'
	.ascii	"_temp_2951\0"
	.align
_Label_2958:
	.byte	'?'
	.ascii	"_temp_2950\0"
	.align
_Label_2959:
	.byte	'?'
	.ascii	"_temp_2949\0"
	.align
_Label_2960:
	.byte	'?'
	.ascii	"_temp_2948\0"
	.align
_Label_2961:
	.byte	'?'
	.ascii	"_temp_2947\0"
	.align
_Label_2962:
	.byte	'?'
	.ascii	"_temp_2946\0"
	.align
_Label_2963:
	.byte	'?'
	.ascii	"_temp_2945\0"
	.align
_Label_2964:
	.byte	'?'
	.ascii	"_temp_2936\0"
	.align
_Label_2965:
	.byte	'?'
	.ascii	"_temp_2935\0"
	.align
_Label_2966:
	.byte	'?'
	.ascii	"_temp_2934\0"
	.align
_Label_2967:
	.byte	'?'
	.ascii	"_temp_2930\0"
	.align
! 
! ===============  METHOD StartReadSector  ===============
! 
_Method_P_Kernel_DiskDriver_3:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_DiskDriver_3,r1
	push	r1
	mov	2791,r13		! source line 2791
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	2806,r13		! source line 2806
	mov	"\0\0AS",r10
!   semToSignalOnCompletion = whoCares		(4 bytes)
	load	[r14+24],r1
	load	[r14+8],r2
	store	r1,[r2+24]
! ASSIGNMENT STATEMENT...
	mov	2809,r13		! source line 2809
	mov	"\0\0AS",r10
!   if intIsZero (DISK_MEMORY_ADDRESS_REGISTER) then goto _runtimeErrorNullPointer
	load	[r14+8],r1
	load	[r1+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Data Move: *DISK_MEMORY_ADDRESS_REGISTER = memoryAddr  (sizeInBytes=4)
	load	[r14+20],r1
	load	[r14+8],r2
	load	[r2+12],r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	2810,r13		! source line 2810
	mov	"\0\0AS",r10
!   if intIsZero (DISK_SECTOR_NUMBER_REGISTER) then goto _runtimeErrorNullPointer
	load	[r14+8],r1
	load	[r1+16],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Data Move: *DISK_SECTOR_NUMBER_REGISTER = sectorAddr  (sizeInBytes=4)
	load	[r14+12],r1
	load	[r14+8],r2
	load	[r2+16],r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	2811,r13		! source line 2811
	mov	"\0\0AS",r10
!   if intIsZero (DISK_SECTOR_COUNT_REGISTER) then goto _runtimeErrorNullPointer
	load	[r14+8],r1
	load	[r1+20],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Data Move: *DISK_SECTOR_COUNT_REGISTER = numberOfSectors  (sizeInBytes=4)
	load	[r14+16],r1
	load	[r14+8],r2
	load	[r2+20],r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	2812,r13		! source line 2812
	mov	"\0\0AS",r10
!   if intIsZero (DISK_COMMAND_WORD_ADDRESS) then goto _runtimeErrorNullPointer
	load	[r14+8],r1
	load	[r1+8],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Data Move: *DISK_COMMAND_WORD_ADDRESS = 1  (sizeInBytes=4)
	mov	1,r1
	load	[r14+8],r2
	load	[r2+8],r2
	store	r1,[r2]
! RETURN STATEMENT...
	mov	2812,r13		! source line 2812
	mov	"\0\0RE",r10
	add	r15,4,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_DiskDriver_3:
	.word	_sourceFileName
	.word	_Label_2968
	.word	20		! total size of parameters
	.word	0		! frame size = 0
	.word	_Label_2969
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2970
	.word	12
	.word	4
	.word	_Label_2971
	.word	16
	.word	4
	.word	_Label_2972
	.word	20
	.word	4
	.word	_Label_2973
	.word	24
	.word	4
	.word	0
_Label_2968:
	.ascii	"DiskDriver"
	.ascii	"::"
	.ascii	"StartReadSector\0"
	.align
_Label_2969:
	.ascii	"Pself\0"
	.align
_Label_2970:
	.byte	'I'
	.ascii	"sectorAddr\0"
	.align
_Label_2971:
	.byte	'I'
	.ascii	"numberOfSectors\0"
	.align
_Label_2972:
	.byte	'I'
	.ascii	"memoryAddr\0"
	.align
_Label_2973:
	.byte	'P'
	.ascii	"whoCares\0"
	.align
! 
! ===============  METHOD SynchWriteSector  ===============
! 
_Method_P_Kernel_DiskDriver_4:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_DiskDriver_4,r1
	push	r1
	mov	16,r1
_Label_4098:
	push	r0
	sub	r1,1,r1
	bne	_Label_4098
	mov	2817,r13		! source line 2817
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! SEND STATEMENT...
	mov	2829,r13		! source line 2829
	mov	"\0\0SE",r10
!   _temp_2974 = &diskBusy
	load	[r14+8],r1
	add	r1,48,r1
	store	r1,[r14+-52]
!   Send message Lock
	load	[r14+-52],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! WHILE STATEMENT...
	mov	2830,r13		! source line 2830
	mov	"\0\0WH",r10
_Label_2975:
!	jmp	_Label_2976
_Label_2976:
	mov	2830,r13		! source line 2830
	mov	"\0\0WB",r10
! SEND STATEMENT...
	mov	2831,r13		! source line 2831
	mov	"\0\0SE",r10
!   _temp_2978 = &semUsedInSynchMethods
	load	[r14+8],r1
	add	r1,28,r1
	store	r1,[r14+-48]
	load	[r14+8],r1
	store	r1,[r14+-44]
!   if intIsZero (_temp_2979) then goto _runtimeErrorNullPointer
	load	[r14+-44],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Prepare Argument: offset=12  value=sectorAddr  sizeInBytes=4
	load	[r14+12],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=numberOfSectors  sizeInBytes=4
	load	[r14+16],r1
	store	r1,[r15+8]
!   Prepare Argument: offset=20  value=memoryAddr  sizeInBytes=4
	load	[r14+20],r1
	store	r1,[r15+12]
!   Prepare Argument: offset=24  value=_temp_2978  sizeInBytes=4
	load	[r14+-48],r1
	store	r1,[r15+16]
!   Send message StartWriteSector
	load	[r14+-44],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,20,r2
	call	r2
! SEND STATEMENT...
	mov	2833,r13		! source line 2833
	mov	"\0\0SE",r10
!   _temp_2980 = &semUsedInSynchMethods
	load	[r14+8],r1
	add	r1,28,r1
	store	r1,[r14+-40]
!   Send message Down
	load	[r14+-40],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! SWITCH STATEMENT (using series of tests)...
	mov	2836,r13		! source line 2836
	mov	"\0\0SW",r10
!   Evaluate the switch expression...
!   if intIsZero (DISK_STATUS_WORD_ADDRESS) then goto _runtimeErrorNullPointer
	load	[r14+8],r1
	load	[r1+4],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Data Move: _temp_2989 = *DISK_STATUS_WORD_ADDRESS  (sizeInBytes=4)
	load	[r14+8],r1
	load	[r1+4],r1
	load	[r1],r1
	store	r1,[r14+-36]
!   Branch to the right case label
	load	[r14+-36],r1
	cmp	r1,1
	be	_Label_2983
	cmp	r1,2
	be	_Label_2984
	cmp	r1,3
	be	_Label_2985
	cmp	r1,4
	be	_Label_2986
	cmp	r1,5
	be	_Label_2987
	cmp	r1,6
	be	_Label_2988
	jmp	_Label_2981
! CASE 1...
_Label_2983:
! SEND STATEMENT...
	mov	2838,r13		! source line 2838
	mov	"\0\0SE",r10
!   _temp_2990 = &diskBusy
	load	[r14+8],r1
	add	r1,48,r1
	store	r1,[r14+-32]
!   Send message Unlock
	load	[r14+-32],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
! RETURN STATEMENT...
	mov	2839,r13		! source line 2839
	mov	"\0\0RE",r10
	add	r15,68,r15
	pop	r13
	pop	r14
	ret
! CASE 2...
_Label_2984:
! CALL STATEMENT...
!   _temp_2991 = _StringConst_143
	set	_StringConst_143,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=8  value=_temp_2991  sizeInBytes=4
	load	[r14+-28],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	2841,r13		! source line 2841
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! CASE 3...
_Label_2985:
! CALL STATEMENT...
!   _temp_2992 = _StringConst_144
	set	_StringConst_144,r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=8  value=_temp_2992  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	2843,r13		! source line 2843
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! CASE 4...
_Label_2986:
! CALL STATEMENT...
!   _temp_2993 = _StringConst_145
	set	_StringConst_145,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_2993  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	2845,r13		! source line 2845
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! CASE 5...
_Label_2987:
! BREAK STATEMENT...
	mov	2849,r13		! source line 2849
	mov	"\0\0BR",r10
	jmp	_Label_2982
! CASE 6...
_Label_2988:
! CALL STATEMENT...
!   _temp_2994 = _StringConst_146
	set	_StringConst_146,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_2994  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	2851,r13		! source line 2851
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! DEFAULT CASE...
_Label_2981:
! CALL STATEMENT...
!   _temp_2995 = _StringConst_147
	set	_StringConst_147,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_2995  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	2853,r13		! source line 2853
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END SWITCH...
_Label_2982:
! END WHILE...
	jmp	_Label_2975
_Label_2977:
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_DiskDriver_4:
	.word	_sourceFileName
	.word	_Label_2996
	.word	16		! total size of parameters
	.word	64		! frame size = 64
	.word	_Label_2997
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2998
	.word	12
	.word	4
	.word	_Label_2999
	.word	16
	.word	4
	.word	_Label_3000
	.word	20
	.word	4
	.word	_Label_3001
	.word	-12
	.word	4
	.word	_Label_3002
	.word	-16
	.word	4
	.word	_Label_3003
	.word	-20
	.word	4
	.word	_Label_3004
	.word	-24
	.word	4
	.word	_Label_3005
	.word	-28
	.word	4
	.word	_Label_3006
	.word	-32
	.word	4
	.word	_Label_3007
	.word	-36
	.word	4
	.word	_Label_3008
	.word	-40
	.word	4
	.word	_Label_3009
	.word	-44
	.word	4
	.word	_Label_3010
	.word	-48
	.word	4
	.word	_Label_3011
	.word	-52
	.word	4
	.word	0
_Label_2996:
	.ascii	"DiskDriver"
	.ascii	"::"
	.ascii	"SynchWriteSector\0"
	.align
_Label_2997:
	.ascii	"Pself\0"
	.align
_Label_2998:
	.byte	'I'
	.ascii	"sectorAddr\0"
	.align
_Label_2999:
	.byte	'I'
	.ascii	"numberOfSectors\0"
	.align
_Label_3000:
	.byte	'I'
	.ascii	"memoryAddr\0"
	.align
_Label_3001:
	.byte	'?'
	.ascii	"_temp_2995\0"
	.align
_Label_3002:
	.byte	'?'
	.ascii	"_temp_2994\0"
	.align
_Label_3003:
	.byte	'?'
	.ascii	"_temp_2993\0"
	.align
_Label_3004:
	.byte	'?'
	.ascii	"_temp_2992\0"
	.align
_Label_3005:
	.byte	'?'
	.ascii	"_temp_2991\0"
	.align
_Label_3006:
	.byte	'?'
	.ascii	"_temp_2990\0"
	.align
_Label_3007:
	.byte	'?'
	.ascii	"_temp_2989\0"
	.align
_Label_3008:
	.byte	'?'
	.ascii	"_temp_2980\0"
	.align
_Label_3009:
	.byte	'?'
	.ascii	"_temp_2979\0"
	.align
_Label_3010:
	.byte	'?'
	.ascii	"_temp_2978\0"
	.align
_Label_3011:
	.byte	'?'
	.ascii	"_temp_2974\0"
	.align
! 
! ===============  METHOD StartWriteSector  ===============
! 
_Method_P_Kernel_DiskDriver_5:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_DiskDriver_5,r1
	push	r1
	mov	2862,r13		! source line 2862
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	2877,r13		! source line 2877
	mov	"\0\0AS",r10
!   semToSignalOnCompletion = whoCares		(4 bytes)
	load	[r14+24],r1
	load	[r14+8],r2
	store	r1,[r2+24]
! ASSIGNMENT STATEMENT...
	mov	2879,r13		! source line 2879
	mov	"\0\0AS",r10
!   if intIsZero (DISK_MEMORY_ADDRESS_REGISTER) then goto _runtimeErrorNullPointer
	load	[r14+8],r1
	load	[r1+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Data Move: *DISK_MEMORY_ADDRESS_REGISTER = memoryAddr  (sizeInBytes=4)
	load	[r14+20],r1
	load	[r14+8],r2
	load	[r2+12],r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	2880,r13		! source line 2880
	mov	"\0\0AS",r10
!   if intIsZero (DISK_SECTOR_NUMBER_REGISTER) then goto _runtimeErrorNullPointer
	load	[r14+8],r1
	load	[r1+16],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Data Move: *DISK_SECTOR_NUMBER_REGISTER = sectorAddr  (sizeInBytes=4)
	load	[r14+12],r1
	load	[r14+8],r2
	load	[r2+16],r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	2881,r13		! source line 2881
	mov	"\0\0AS",r10
!   if intIsZero (DISK_SECTOR_COUNT_REGISTER) then goto _runtimeErrorNullPointer
	load	[r14+8],r1
	load	[r1+20],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Data Move: *DISK_SECTOR_COUNT_REGISTER = numberOfSectors  (sizeInBytes=4)
	load	[r14+16],r1
	load	[r14+8],r2
	load	[r2+20],r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	2882,r13		! source line 2882
	mov	"\0\0AS",r10
!   if intIsZero (DISK_COMMAND_WORD_ADDRESS) then goto _runtimeErrorNullPointer
	load	[r14+8],r1
	load	[r1+8],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Data Move: *DISK_COMMAND_WORD_ADDRESS = 2  (sizeInBytes=4)
	mov	2,r1
	load	[r14+8],r2
	load	[r2+8],r2
	store	r1,[r2]
! RETURN STATEMENT...
	mov	2882,r13		! source line 2882
	mov	"\0\0RE",r10
	add	r15,4,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_DiskDriver_5:
	.word	_sourceFileName
	.word	_Label_3012
	.word	20		! total size of parameters
	.word	0		! frame size = 0
	.word	_Label_3013
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_3014
	.word	12
	.word	4
	.word	_Label_3015
	.word	16
	.word	4
	.word	_Label_3016
	.word	20
	.word	4
	.word	_Label_3017
	.word	24
	.word	4
	.word	0
_Label_3012:
	.ascii	"DiskDriver"
	.ascii	"::"
	.ascii	"StartWriteSector\0"
	.align
_Label_3013:
	.ascii	"Pself\0"
	.align
_Label_3014:
	.byte	'I'
	.ascii	"sectorAddr\0"
	.align
_Label_3015:
	.byte	'I'
	.ascii	"numberOfSectors\0"
	.align
_Label_3016:
	.byte	'I'
	.ascii	"memoryAddr\0"
	.align
_Label_3017:
	.byte	'P'
	.ascii	"whoCares\0"
	.align
! 
! ===============  CLASS FileManager  ===============
! 
! Dispatch Table:
! 
_P_Kernel_FileManager:
	.word	_Label_3018
	jmp	_Method_P_Kernel_FileManager_1	! 4:	Init
	jmp	_Method_P_Kernel_FileManager_2	! 8:	Print
	jmp	_Method_P_Kernel_FileManager_4	! 12:	FindFCB
	jmp	_Method_P_Kernel_FileManager_3	! 16:	Open
	jmp	_Method_P_Kernel_FileManager_5	! 20:	Close
	jmp	_Method_P_Kernel_FileManager_6	! 24:	Flush
	jmp	_Method_P_Kernel_FileManager_7	! 28:	SynchRead
	jmp	_Method_P_Kernel_FileManager_8	! 32:	SynchWrite
	.word	0
! 
! Class descriptor:
! 
_Label_3018:
	.word	1129070931		! Magic number 0x434c4153 == 'CLAS'
	.word	_Label_3019
	.word	_sourceFileName
	.word	336		! line number
	.word	800		! size of instances, in bytes
	.word	_P_Kernel_FileManager
	.word	_P_System_Object
	.word	0
_Label_3019:
	.ascii	"FileManager\0"
	.align
! 
! ===============  METHOD Init  ===============
! 
_Method_P_Kernel_FileManager_1:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_FileManager_1,r1
	push	r1
	mov	238,r1
_Label_4099:
	push	r0
	sub	r1,1,r1
	bne	_Label_4099
	mov	2893,r13		! source line 2893
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   _temp_3020 = _StringConst_148
	set	_StringConst_148,r1
	store	r1,[r14+-940]
!   Prepare Argument: offset=8  value=_temp_3020  sizeInBytes=4
	load	[r14+-940],r1
	store	r1,[r15+0]
!   Call the function
	mov	2900,r13		! source line 2900
	mov	"\0\0CE",r10
	call	print
! ASSIGNMENT STATEMENT...
	mov	2901,r13		! source line 2901
	mov	"\0\0AS",r10
!   NEW CLASS Constructor...
!   ZeroMemory: fileManagerLock = zeros  (sizeInBytes=20)
	load	[r14+8],r4
	add	r4,4,r4
	store	r0,[r4]
	store	r0,[r4+4]
	store	r0,[r4+8]
	store	r0,[r4+12]
	store	r0,[r4+16]
!   fileManagerLock = _P_Kernel_Mutex
	set	_P_Kernel_Mutex,r1
	load	[r14+8],r2
	store	r1,[r2+4]
! SEND STATEMENT...
	mov	2902,r13		! source line 2902
	mov	"\0\0SE",r10
!   _temp_3022 = &fileManagerLock
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-932]
!   Send message Init
	load	[r14+-932],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,4,r2
	call	r2
! ASSIGNMENT STATEMENT...
	mov	2905,r13		! source line 2905
	mov	"\0\0AS",r10
!   NEW CLASS Constructor...
!   ZeroMemory: fcbFreeList = zeros  (sizeInBytes=12)
	load	[r14+8],r4
	add	r4,444,r4
	store	r0,[r4]
	store	r0,[r4+4]
	store	r0,[r4+8]
!   fcbFreeList = _P_List_List
	set	_P_List_List,r1
	load	[r14+8],r2
	store	r1,[r2+444]
! ASSIGNMENT STATEMENT...
	mov	2906,r13		! source line 2906
	mov	"\0\0AS",r10
!   NEW CLASS Constructor...
!   ZeroMemory: anFCBBecameFree = zeros  (sizeInBytes=16)
	load	[r14+8],r4
	add	r4,428,r4
	store	r0,[r4]
	store	r0,[r4+4]
	store	r0,[r4+8]
	store	r0,[r4+12]
!   anFCBBecameFree = _P_Kernel_Condition
	set	_P_Kernel_Condition,r1
	load	[r14+8],r2
	store	r1,[r2+428]
! SEND STATEMENT...
	mov	2907,r13		! source line 2907
	mov	"\0\0SE",r10
!   _temp_3025 = &anFCBBecameFree
	load	[r14+8],r1
	add	r1,428,r1
	store	r1,[r14+-920]
!   Send message Init
	load	[r14+-920],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,4,r2
	call	r2
! ASSIGNMENT STATEMENT...
	mov	2908,r13		! source line 2908
	mov	"\0\0AS",r10
!   _temp_3026 = &fcbTable
	load	[r14+8],r1
	add	r1,24,r1
	store	r1,[r14+-916]
!   NEW ARRAY Constructor...
!   _temp_3028 = &_temp_3027
	add	r14,-912,r1
	store	r1,[r14+-508]
!   _temp_3028 = _temp_3028 + 4
	load	[r14+-508],r1
	add	r1,4,r1
	store	r1,[r14+-508]
!   Next value...
!   NEW CLASS Constructor...
!   ZeroMemory: _temp_3030 = zeros  (sizeInBytes=40)
	add	r14,-500,r4
	mov	10,r3
_Label_4100:
	store	r0,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_4100
!   _temp_3030 = _P_Kernel_FileControlBlock
	set	_P_Kernel_FileControlBlock,r1
	store	r1,[r14+-500]
	mov	10,r1
	store	r1,[r14+-504]
_Label_3032:
!   Data Move: *_temp_3028 = _temp_3030  (sizeInBytes=40)
	add	r14,-500,r5
	load	[r14+-508],r4
	mov	10,r3
_Label_4101:
	load	[r5],r1
	add	r5,4,r5
	store	r1,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_4101
!   _temp_3028 = _temp_3028 + 40
	load	[r14+-508],r1
	add	r1,40,r1
	store	r1,[r14+-508]
!   _temp_3029 = _temp_3029 + -1
	load	[r14+-504],r1
	add	r1,-1,r1
	store	r1,[r14+-504]
!   if intNotZero (_temp_3029) then goto _Label_3032
	load	[r14+-504],r1
	cmp	r1,r0
	bne	_Label_3032
!   Initialize the array size...
	mov	10,r1
	store	r1,[r14+-912]
!   _temp_3033 = &_temp_3027
	add	r14,-912,r1
	store	r1,[r14+-456]
!   make sure array has size 10
	load	[r14+-916],r1
	load	[r1],r1
	set	10, r2
	cmp	r1,0
	be	_Label_4102
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bne	_runtimeErrorWrongArraySize
_Label_4102:
!   make sure array has size 10
	load	[r14+-456],r1
	load	[r1],r1
	set	10, r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bne	_runtimeErrorWrongArraySize
!   Data Move: *_temp_3026 = *_temp_3033  (sizeInBytes=404)
	load	[r14+-456],r5
	load	[r14+-916],r4
	mov	101,r3
_Label_4103:
	load	[r5],r1
	add	r5,4,r5
	store	r1,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_4103
! FOR STATEMENT...
	mov	2910,r13		! source line 2910
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_3038 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-452]
!   Calculate and save the FOR-LOOP ending value
!   _temp_3039 = 9		(4 bytes)
	mov	9,r1
	store	r1,[r14+-448]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_3038  (sizeInBytes=4)
	load	[r14+-452],r1
	store	r1,[r14+-944]
_Label_3034:
!   Perform the FOR-LOOP termination test
!   if i > _temp_3039 then goto _Label_3037		
	load	[r14+-944],r1
	load	[r14+-448],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_3037
_Label_3035:
	mov	2910,r13		! source line 2910
	mov	"\0\0FB",r10
! ASSIGNMENT STATEMENT...
	mov	2911,r13		! source line 2911
	mov	"\0\0AS",r10
!   _temp_3040 = &fcbTable
	load	[r14+8],r1
	add	r1,24,r1
	store	r1,[r14+-444]
!   Move address of _temp_3040 [i ] into _temp_3041
!     make sure index expr is >= 0
	load	[r14+-944],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-444],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	40,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-440]
!   _temp_3042 = _temp_3041 + 12
	load	[r14+-440],r1
	add	r1,12,r1
	store	r1,[r14+-436]
!   Data Move: *_temp_3042 = i  (sizeInBytes=4)
	load	[r14+-944],r1
	load	[r14+-436],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	2912,r13		! source line 2912
	mov	"\0\0SE",r10
!   _temp_3043 = &fcbTable
	load	[r14+8],r1
	add	r1,24,r1
	store	r1,[r14+-432]
!   Move address of _temp_3043 [i ] into _temp_3044
!     make sure index expr is >= 0
	load	[r14+-944],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-432],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	40,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-428]
!   Send message Init
	load	[r14+-428],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,4,r2
	call	r2
! SEND STATEMENT...
	mov	2913,r13		! source line 2913
	mov	"\0\0SE",r10
!   _temp_3046 = &fcbTable
	load	[r14+8],r1
	add	r1,24,r1
	store	r1,[r14+-420]
!   Move address of _temp_3046 [i ] into _temp_3047
!     make sure index expr is >= 0
	load	[r14+-944],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-420],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	40,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-416]
!   _temp_3045 = _temp_3047		(4 bytes)
	load	[r14+-416],r1
	store	r1,[r14+-424]
!   _temp_3048 = &fcbFreeList
	load	[r14+8],r1
	add	r1,444,r1
	store	r1,[r14+-412]
!   Prepare Argument: offset=12  value=_temp_3045  sizeInBytes=4
	load	[r14+-424],r1
	store	r1,[r15+4]
!   Send message AddToEnd
	load	[r14+-412],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
!   Increment the FOR-LOOP index variable and jump back
_Label_3036:
!   i = i + 1
	load	[r14+-944],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-944]
	jmp	_Label_3034
! END FOR
_Label_3037:
! ASSIGNMENT STATEMENT...
	mov	2917,r13		! source line 2917
	mov	"\0\0AS",r10
!   NEW CLASS Constructor...
!   ZeroMemory: openFileFreeList = zeros  (sizeInBytes=12)
	load	[r14+8],r4
	add	r4,756,r4
	store	r0,[r4]
	store	r0,[r4+4]
	store	r0,[r4+8]
!   openFileFreeList = _P_List_List
	set	_P_List_List,r1
	load	[r14+8],r2
	store	r1,[r2+756]
! ASSIGNMENT STATEMENT...
	mov	2918,r13		! source line 2918
	mov	"\0\0AS",r10
!   NEW CLASS Constructor...
!   ZeroMemory: anOpenFileBecameFree = zeros  (sizeInBytes=16)
	load	[r14+8],r4
	add	r4,740,r4
	store	r0,[r4]
	store	r0,[r4+4]
	store	r0,[r4+8]
	store	r0,[r4+12]
!   anOpenFileBecameFree = _P_Kernel_Condition
	set	_P_Kernel_Condition,r1
	load	[r14+8],r2
	store	r1,[r2+740]
! SEND STATEMENT...
	mov	2919,r13		! source line 2919
	mov	"\0\0SE",r10
!   _temp_3051 = &anOpenFileBecameFree
	load	[r14+8],r1
	add	r1,740,r1
	store	r1,[r14+-400]
!   Send message Init
	load	[r14+-400],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,4,r2
	call	r2
! ASSIGNMENT STATEMENT...
	mov	2920,r13		! source line 2920
	mov	"\0\0AS",r10
!   _temp_3052 = &openFileTable
	load	[r14+8],r1
	add	r1,456,r1
	store	r1,[r14+-396]
!   NEW ARRAY Constructor...
!   _temp_3054 = &_temp_3053
	add	r14,-392,r1
	store	r1,[r14+-108]
!   _temp_3054 = _temp_3054 + 4
	load	[r14+-108],r1
	add	r1,4,r1
	store	r1,[r14+-108]
!   Next value...
!   NEW CLASS Constructor...
!   ZeroMemory: _temp_3056 = zeros  (sizeInBytes=28)
	add	r14,-100,r4
	mov	7,r3
_Label_4104:
	store	r0,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_4104
!   _temp_3056 = _P_Kernel_OpenFile
	set	_P_Kernel_OpenFile,r1
	store	r1,[r14+-100]
	mov	10,r1
	store	r1,[r14+-104]
_Label_3058:
!   Data Move: *_temp_3054 = _temp_3056  (sizeInBytes=28)
	add	r14,-100,r5
	load	[r14+-108],r4
	mov	7,r3
_Label_4105:
	load	[r5],r1
	add	r5,4,r5
	store	r1,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_4105
!   _temp_3054 = _temp_3054 + 28
	load	[r14+-108],r1
	add	r1,28,r1
	store	r1,[r14+-108]
!   _temp_3055 = _temp_3055 + -1
	load	[r14+-104],r1
	add	r1,-1,r1
	store	r1,[r14+-104]
!   if intNotZero (_temp_3055) then goto _Label_3058
	load	[r14+-104],r1
	cmp	r1,r0
	bne	_Label_3058
!   Initialize the array size...
	mov	10,r1
	store	r1,[r14+-392]
!   _temp_3059 = &_temp_3053
	add	r14,-392,r1
	store	r1,[r14+-68]
!   make sure array has size 10
	load	[r14+-396],r1
	load	[r1],r1
	set	10, r2
	cmp	r1,0
	be	_Label_4106
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bne	_runtimeErrorWrongArraySize
_Label_4106:
!   make sure array has size 10
	load	[r14+-68],r1
	load	[r1],r1
	set	10, r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bne	_runtimeErrorWrongArraySize
!   Data Move: *_temp_3052 = *_temp_3059  (sizeInBytes=284)
	load	[r14+-68],r5
	load	[r14+-396],r4
	mov	71,r3
_Label_4107:
	load	[r5],r1
	add	r5,4,r5
	store	r1,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_4107
! FOR STATEMENT...
	mov	2922,r13		! source line 2922
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_3064 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-64]
!   Calculate and save the FOR-LOOP ending value
!   _temp_3065 = 9		(4 bytes)
	mov	9,r1
	store	r1,[r14+-60]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_3064  (sizeInBytes=4)
	load	[r14+-64],r1
	store	r1,[r14+-944]
_Label_3060:
!   Perform the FOR-LOOP termination test
!   if i > _temp_3065 then goto _Label_3063		
	load	[r14+-944],r1
	load	[r14+-60],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_3063
_Label_3061:
	mov	2922,r13		! source line 2922
	mov	"\0\0FB",r10
! ASSIGNMENT STATEMENT...
	mov	2923,r13		! source line 2923
	mov	"\0\0AS",r10
!   _temp_3066 = &openFileTable
	load	[r14+8],r1
	add	r1,456,r1
	store	r1,[r14+-56]
!   Move address of _temp_3066 [i ] into _temp_3067
!     make sure index expr is >= 0
	load	[r14+-944],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-56],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	28,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-52]
!   _temp_3068 = _temp_3067 + 12
	load	[r14+-52],r1
	add	r1,12,r1
	store	r1,[r14+-48]
!   Data Move: *_temp_3068 = 1  (sizeInBytes=4)
	mov	1,r1
	load	[r14+-48],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	2924,r13		! source line 2924
	mov	"\0\0SE",r10
!   _temp_3070 = &openFileTable
	load	[r14+8],r1
	add	r1,456,r1
	store	r1,[r14+-40]
!   Move address of _temp_3070 [i ] into _temp_3071
!     make sure index expr is >= 0
	load	[r14+-944],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-40],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	28,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-36]
!   _temp_3069 = _temp_3071		(4 bytes)
	load	[r14+-36],r1
	store	r1,[r14+-44]
!   _temp_3072 = &openFileFreeList
	load	[r14+8],r1
	add	r1,756,r1
	store	r1,[r14+-32]
!   Prepare Argument: offset=12  value=_temp_3069  sizeInBytes=4
	load	[r14+-44],r1
	store	r1,[r15+4]
!   Send message AddToEnd
	load	[r14+-32],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
!   Increment the FOR-LOOP index variable and jump back
_Label_3062:
!   i = i + 1
	load	[r14+-944],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-944]
	jmp	_Label_3060
! END FOR
_Label_3063:
! ASSIGNMENT STATEMENT...
	mov	2928,r13		! source line 2928
	mov	"\0\0AS",r10
!   NEW CLASS Constructor...
!   ZeroMemory: serialTerminalFile = zeros  (sizeInBytes=28)
	load	[r14+8],r4
	add	r4,772,r4
	mov	7,r3
_Label_4108:
	store	r0,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_4108
!   serialTerminalFile = _P_Kernel_OpenFile
	set	_P_Kernel_OpenFile,r1
	load	[r14+8],r2
	store	r1,[r2+772]
! ASSIGNMENT STATEMENT...
	mov	2929,r13		! source line 2929
	mov	"\0\0AS",r10
!   _temp_3074 = &serialTerminalFile
	load	[r14+8],r1
	add	r1,772,r1
	store	r1,[r14+-24]
!   _temp_3075 = _temp_3074 + 12
	load	[r14+-24],r1
	add	r1,12,r1
	store	r1,[r14+-20]
!   Data Move: *_temp_3075 = 2  (sizeInBytes=4)
	mov	2,r1
	load	[r14+-20],r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	2934,r13		! source line 2934
	mov	"\0\0AS",r10
	mov	2934,r13		! source line 2934
	mov	"\0\0SE",r10
!   _temp_3076 = &_P_Kernel_frameManager
	set	_P_Kernel_frameManager,r1
	store	r1,[r14+-16]
!   Send message GetAFrame
	load	[r14+-16],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
!   Retrieve Result: targetName=directoryFrame  sizeInBytes=4
	load	[r15],r1
	load	[r14+8],r2
	store	r1,[r2+768]
! SEND STATEMENT...
	mov	2935,r13		! source line 2935
	mov	"\0\0SE",r10
!   _temp_3077 = &_P_Kernel_diskDriver
	set	_P_Kernel_diskDriver,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=12  value=0  sizeInBytes=4
	mov	0,r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=1  sizeInBytes=4
	mov	1,r1
	store	r1,[r15+8]
!   Prepare Argument: offset=20  value=directoryFrame  sizeInBytes=4
	load	[r14+8],r1
	load	[r1+768],r1
	store	r1,[r15+12]
!   Send message SynchReadSector
	load	[r14+-12],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! RETURN STATEMENT...
	mov	2935,r13		! source line 2935
	mov	"\0\0RE",r10
	add	r15,956,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_FileManager_1:
	.word	_sourceFileName
	.word	_Label_3078
	.word	4		! total size of parameters
	.word	952		! frame size = 952
	.word	_Label_3079
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_3080
	.word	-12
	.word	4
	.word	_Label_3081
	.word	-16
	.word	4
	.word	_Label_3082
	.word	-20
	.word	4
	.word	_Label_3083
	.word	-24
	.word	4
	.word	_Label_3084
	.word	-28
	.word	4
	.word	_Label_3085
	.word	-32
	.word	4
	.word	_Label_3086
	.word	-36
	.word	4
	.word	_Label_3087
	.word	-40
	.word	4
	.word	_Label_3088
	.word	-44
	.word	4
	.word	_Label_3089
	.word	-48
	.word	4
	.word	_Label_3090
	.word	-52
	.word	4
	.word	_Label_3091
	.word	-56
	.word	4
	.word	_Label_3092
	.word	-60
	.word	4
	.word	_Label_3093
	.word	-64
	.word	4
	.word	_Label_3094
	.word	-68
	.word	4
	.word	_Label_3095
	.word	-72
	.word	4
	.word	_Label_3096
	.word	-100
	.word	28
	.word	_Label_3097
	.word	-104
	.word	4
	.word	_Label_3098
	.word	-108
	.word	4
	.word	_Label_3099
	.word	-392
	.word	284
	.word	_Label_3100
	.word	-396
	.word	4
	.word	_Label_3101
	.word	-400
	.word	4
	.word	_Label_3102
	.word	-404
	.word	4
	.word	_Label_3103
	.word	-408
	.word	4
	.word	_Label_3104
	.word	-412
	.word	4
	.word	_Label_3105
	.word	-416
	.word	4
	.word	_Label_3106
	.word	-420
	.word	4
	.word	_Label_3107
	.word	-424
	.word	4
	.word	_Label_3108
	.word	-428
	.word	4
	.word	_Label_3109
	.word	-432
	.word	4
	.word	_Label_3110
	.word	-436
	.word	4
	.word	_Label_3111
	.word	-440
	.word	4
	.word	_Label_3112
	.word	-444
	.word	4
	.word	_Label_3113
	.word	-448
	.word	4
	.word	_Label_3114
	.word	-452
	.word	4
	.word	_Label_3115
	.word	-456
	.word	4
	.word	_Label_3116
	.word	-460
	.word	4
	.word	_Label_3117
	.word	-500
	.word	40
	.word	_Label_3118
	.word	-504
	.word	4
	.word	_Label_3119
	.word	-508
	.word	4
	.word	_Label_3120
	.word	-912
	.word	404
	.word	_Label_3121
	.word	-916
	.word	4
	.word	_Label_3122
	.word	-920
	.word	4
	.word	_Label_3123
	.word	-924
	.word	4
	.word	_Label_3124
	.word	-928
	.word	4
	.word	_Label_3125
	.word	-932
	.word	4
	.word	_Label_3126
	.word	-936
	.word	4
	.word	_Label_3127
	.word	-940
	.word	4
	.word	_Label_3128
	.word	-944
	.word	4
	.word	0
_Label_3078:
	.ascii	"FileManager"
	.ascii	"::"
	.ascii	"Init\0"
	.align
_Label_3079:
	.ascii	"Pself\0"
	.align
_Label_3080:
	.byte	'?'
	.ascii	"_temp_3077\0"
	.align
_Label_3081:
	.byte	'?'
	.ascii	"_temp_3076\0"
	.align
_Label_3082:
	.byte	'?'
	.ascii	"_temp_3075\0"
	.align
_Label_3083:
	.byte	'?'
	.ascii	"_temp_3074\0"
	.align
_Label_3084:
	.byte	'?'
	.ascii	"_temp_3073\0"
	.align
_Label_3085:
	.byte	'?'
	.ascii	"_temp_3072\0"
	.align
_Label_3086:
	.byte	'?'
	.ascii	"_temp_3071\0"
	.align
_Label_3087:
	.byte	'?'
	.ascii	"_temp_3070\0"
	.align
_Label_3088:
	.byte	'?'
	.ascii	"_temp_3069\0"
	.align
_Label_3089:
	.byte	'?'
	.ascii	"_temp_3068\0"
	.align
_Label_3090:
	.byte	'?'
	.ascii	"_temp_3067\0"
	.align
_Label_3091:
	.byte	'?'
	.ascii	"_temp_3066\0"
	.align
_Label_3092:
	.byte	'?'
	.ascii	"_temp_3065\0"
	.align
_Label_3093:
	.byte	'?'
	.ascii	"_temp_3064\0"
	.align
_Label_3094:
	.byte	'?'
	.ascii	"_temp_3059\0"
	.align
_Label_3095:
	.byte	'?'
	.ascii	"_temp_3057\0"
	.align
_Label_3096:
	.byte	'?'
	.ascii	"_temp_3056\0"
	.align
_Label_3097:
	.byte	'?'
	.ascii	"_temp_3055\0"
	.align
_Label_3098:
	.byte	'?'
	.ascii	"_temp_3054\0"
	.align
_Label_3099:
	.byte	'?'
	.ascii	"_temp_3053\0"
	.align
_Label_3100:
	.byte	'?'
	.ascii	"_temp_3052\0"
	.align
_Label_3101:
	.byte	'?'
	.ascii	"_temp_3051\0"
	.align
_Label_3102:
	.byte	'?'
	.ascii	"_temp_3050\0"
	.align
_Label_3103:
	.byte	'?'
	.ascii	"_temp_3049\0"
	.align
_Label_3104:
	.byte	'?'
	.ascii	"_temp_3048\0"
	.align
_Label_3105:
	.byte	'?'
	.ascii	"_temp_3047\0"
	.align
_Label_3106:
	.byte	'?'
	.ascii	"_temp_3046\0"
	.align
_Label_3107:
	.byte	'?'
	.ascii	"_temp_3045\0"
	.align
_Label_3108:
	.byte	'?'
	.ascii	"_temp_3044\0"
	.align
_Label_3109:
	.byte	'?'
	.ascii	"_temp_3043\0"
	.align
_Label_3110:
	.byte	'?'
	.ascii	"_temp_3042\0"
	.align
_Label_3111:
	.byte	'?'
	.ascii	"_temp_3041\0"
	.align
_Label_3112:
	.byte	'?'
	.ascii	"_temp_3040\0"
	.align
_Label_3113:
	.byte	'?'
	.ascii	"_temp_3039\0"
	.align
_Label_3114:
	.byte	'?'
	.ascii	"_temp_3038\0"
	.align
_Label_3115:
	.byte	'?'
	.ascii	"_temp_3033\0"
	.align
_Label_3116:
	.byte	'?'
	.ascii	"_temp_3031\0"
	.align
_Label_3117:
	.byte	'?'
	.ascii	"_temp_3030\0"
	.align
_Label_3118:
	.byte	'?'
	.ascii	"_temp_3029\0"
	.align
_Label_3119:
	.byte	'?'
	.ascii	"_temp_3028\0"
	.align
_Label_3120:
	.byte	'?'
	.ascii	"_temp_3027\0"
	.align
_Label_3121:
	.byte	'?'
	.ascii	"_temp_3026\0"
	.align
_Label_3122:
	.byte	'?'
	.ascii	"_temp_3025\0"
	.align
_Label_3123:
	.byte	'?'
	.ascii	"_temp_3024\0"
	.align
_Label_3124:
	.byte	'?'
	.ascii	"_temp_3023\0"
	.align
_Label_3125:
	.byte	'?'
	.ascii	"_temp_3022\0"
	.align
_Label_3126:
	.byte	'?'
	.ascii	"_temp_3021\0"
	.align
_Label_3127:
	.byte	'?'
	.ascii	"_temp_3020\0"
	.align
_Label_3128:
	.byte	'I'
	.ascii	"i\0"
	.align
! 
! ===============  METHOD Print  ===============
! 
_Method_P_Kernel_FileManager_2:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_FileManager_2,r1
	push	r1
	mov	29,r1
_Label_4109:
	push	r0
	sub	r1,1,r1
	bne	_Label_4109
	mov	2942,r13		! source line 2942
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! SEND STATEMENT...
	mov	2944,r13		! source line 2944
	mov	"\0\0SE",r10
!   _temp_3129 = &fileManagerLock
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-112]
!   Send message Lock
	load	[r14+-112],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! CALL STATEMENT...
!   _temp_3130 = _StringConst_149
	set	_StringConst_149,r1
	store	r1,[r14+-108]
!   Prepare Argument: offset=8  value=_temp_3130  sizeInBytes=4
	load	[r14+-108],r1
	store	r1,[r15+0]
!   Call the function
	mov	2945,r13		! source line 2945
	mov	"\0\0CE",r10
	call	print
! FOR STATEMENT...
	mov	2946,r13		! source line 2946
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_3135 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-104]
!   Calculate and save the FOR-LOOP ending value
!   _temp_3136 = 9		(4 bytes)
	mov	9,r1
	store	r1,[r14+-100]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_3135  (sizeInBytes=4)
	load	[r14+-104],r1
	store	r1,[r14+-116]
_Label_3131:
!   Perform the FOR-LOOP termination test
!   if i > _temp_3136 then goto _Label_3134		
	load	[r14+-116],r1
	load	[r14+-100],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_3134
_Label_3132:
	mov	2946,r13		! source line 2946
	mov	"\0\0FB",r10
! CALL STATEMENT...
!   _temp_3137 = _StringConst_150
	set	_StringConst_150,r1
	store	r1,[r14+-96]
!   Prepare Argument: offset=8  value=_temp_3137  sizeInBytes=4
	load	[r14+-96],r1
	store	r1,[r15+0]
!   Call the function
	mov	2947,r13		! source line 2947
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=i  sizeInBytes=4
	load	[r14+-116],r1
	store	r1,[r15+0]
!   Call the function
	mov	2948,r13		! source line 2948
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   _temp_3138 = _StringConst_151
	set	_StringConst_151,r1
	store	r1,[r14+-92]
!   Prepare Argument: offset=8  value=_temp_3138  sizeInBytes=4
	load	[r14+-92],r1
	store	r1,[r15+0]
!   Call the function
	mov	2949,r13		! source line 2949
	mov	"\0\0CE",r10
	call	print
! SEND STATEMENT...
	mov	2950,r13		! source line 2950
	mov	"\0\0SE",r10
!   _temp_3139 = &fcbTable
	load	[r14+8],r1
	add	r1,24,r1
	store	r1,[r14+-88]
!   Move address of _temp_3139 [i ] into _temp_3140
!     make sure index expr is >= 0
	load	[r14+-116],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-88],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	40,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-84]
!   Send message Print
	load	[r14+-84],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
!   Increment the FOR-LOOP index variable and jump back
_Label_3133:
!   i = i + 1
	load	[r14+-116],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-116]
	jmp	_Label_3131
! END FOR
_Label_3134:
! CALL STATEMENT...
!   _temp_3141 = _StringConst_152
	set	_StringConst_152,r1
	store	r1,[r14+-80]
!   Prepare Argument: offset=8  value=_temp_3141  sizeInBytes=4
	load	[r14+-80],r1
	store	r1,[r15+0]
!   Call the function
	mov	2952,r13		! source line 2952
	mov	"\0\0CE",r10
	call	print
! SEND STATEMENT...
	mov	2953,r13		! source line 2953
	mov	"\0\0SE",r10
!   _temp_3142 = _function_196_printFCB
	set	_function_196_printFCB,r1
	store	r1,[r14+-76]
!   _temp_3143 = &fcbFreeList
	load	[r14+8],r1
	add	r1,444,r1
	store	r1,[r14+-72]
!   Prepare Argument: offset=12  value=_temp_3142  sizeInBytes=4
	load	[r14+-76],r1
	store	r1,[r15+4]
!   Send message ApplyToEach
	load	[r14+-72],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,20,r2
	call	r2
! CALL STATEMENT...
!   Call the function
	mov	2954,r13		! source line 2954
	mov	"\0\0CA",r10
	call	_P_System_nl
! CALL STATEMENT...
!   _temp_3144 = _StringConst_153
	set	_StringConst_153,r1
	store	r1,[r14+-68]
!   Prepare Argument: offset=8  value=_temp_3144  sizeInBytes=4
	load	[r14+-68],r1
	store	r1,[r15+0]
!   Call the function
	mov	2955,r13		! source line 2955
	mov	"\0\0CE",r10
	call	print
! FOR STATEMENT...
	mov	2956,r13		! source line 2956
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_3149 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-64]
!   Calculate and save the FOR-LOOP ending value
!   _temp_3150 = 9		(4 bytes)
	mov	9,r1
	store	r1,[r14+-60]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_3149  (sizeInBytes=4)
	load	[r14+-64],r1
	store	r1,[r14+-116]
_Label_3145:
!   Perform the FOR-LOOP termination test
!   if i > _temp_3150 then goto _Label_3148		
	load	[r14+-116],r1
	load	[r14+-60],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_3148
_Label_3146:
	mov	2956,r13		! source line 2956
	mov	"\0\0FB",r10
! CALL STATEMENT...
!   _temp_3151 = _StringConst_154
	set	_StringConst_154,r1
	store	r1,[r14+-56]
!   Prepare Argument: offset=8  value=_temp_3151  sizeInBytes=4
	load	[r14+-56],r1
	store	r1,[r15+0]
!   Call the function
	mov	2957,r13		! source line 2957
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=i  sizeInBytes=4
	load	[r14+-116],r1
	store	r1,[r15+0]
!   Call the function
	mov	2958,r13		! source line 2958
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   _temp_3152 = _StringConst_155
	set	_StringConst_155,r1
	store	r1,[r14+-52]
!   Prepare Argument: offset=8  value=_temp_3152  sizeInBytes=4
	load	[r14+-52],r1
	store	r1,[r15+0]
!   Call the function
	mov	2959,r13		! source line 2959
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_3154 = &openFileTable
	load	[r14+8],r1
	add	r1,456,r1
	store	r1,[r14+-44]
!   Move address of _temp_3154 [i ] into _temp_3155
!     make sure index expr is >= 0
	load	[r14+-116],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-44],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	28,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-40]
!   _temp_3153 = _temp_3155		(4 bytes)
	load	[r14+-40],r1
	store	r1,[r14+-48]
!   Prepare Argument: offset=8  value=_temp_3153  sizeInBytes=4
	load	[r14+-48],r1
	store	r1,[r15+0]
!   Call the function
	mov	2960,r13		! source line 2960
	mov	"\0\0CE",r10
	call	printHex
! CALL STATEMENT...
!   _temp_3156 = _StringConst_156
	set	_StringConst_156,r1
	store	r1,[r14+-36]
!   Prepare Argument: offset=8  value=_temp_3156  sizeInBytes=4
	load	[r14+-36],r1
	store	r1,[r15+0]
!   Call the function
	mov	2961,r13		! source line 2961
	mov	"\0\0CE",r10
	call	print
! SEND STATEMENT...
	mov	2962,r13		! source line 2962
	mov	"\0\0SE",r10
!   _temp_3157 = &openFileTable
	load	[r14+8],r1
	add	r1,456,r1
	store	r1,[r14+-32]
!   Move address of _temp_3157 [i ] into _temp_3158
!     make sure index expr is >= 0
	load	[r14+-116],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-32],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	28,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-28]
!   Send message Print
	load	[r14+-28],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,4,r2
	call	r2
!   Increment the FOR-LOOP index variable and jump back
_Label_3147:
!   i = i + 1
	load	[r14+-116],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-116]
	jmp	_Label_3145
! END FOR
_Label_3148:
! CALL STATEMENT...
!   _temp_3159 = _StringConst_157
	set	_StringConst_157,r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=8  value=_temp_3159  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+0]
!   Call the function
	mov	2964,r13		! source line 2964
	mov	"\0\0CE",r10
	call	print
! SEND STATEMENT...
	mov	2965,r13		! source line 2965
	mov	"\0\0SE",r10
!   _temp_3160 = _function_195_printOpen
	set	_function_195_printOpen,r1
	store	r1,[r14+-20]
!   _temp_3161 = &openFileFreeList
	load	[r14+8],r1
	add	r1,756,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=12  value=_temp_3160  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+4]
!   Send message ApplyToEach
	load	[r14+-16],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,20,r2
	call	r2
! SEND STATEMENT...
	mov	2966,r13		! source line 2966
	mov	"\0\0SE",r10
!   _temp_3162 = &fileManagerLock
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-12]
!   Send message Unlock
	load	[r14+-12],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
! RETURN STATEMENT...
	mov	2966,r13		! source line 2966
	mov	"\0\0RE",r10
	add	r15,120,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_FileManager_2:
	.word	_sourceFileName
	.word	_Label_3163
	.word	4		! total size of parameters
	.word	116		! frame size = 116
	.word	_Label_3164
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_3165
	.word	-12
	.word	4
	.word	_Label_3166
	.word	-16
	.word	4
	.word	_Label_3167
	.word	-20
	.word	4
	.word	_Label_3168
	.word	-24
	.word	4
	.word	_Label_3169
	.word	-28
	.word	4
	.word	_Label_3170
	.word	-32
	.word	4
	.word	_Label_3171
	.word	-36
	.word	4
	.word	_Label_3172
	.word	-40
	.word	4
	.word	_Label_3173
	.word	-44
	.word	4
	.word	_Label_3174
	.word	-48
	.word	4
	.word	_Label_3175
	.word	-52
	.word	4
	.word	_Label_3176
	.word	-56
	.word	4
	.word	_Label_3177
	.word	-60
	.word	4
	.word	_Label_3178
	.word	-64
	.word	4
	.word	_Label_3179
	.word	-68
	.word	4
	.word	_Label_3180
	.word	-72
	.word	4
	.word	_Label_3181
	.word	-76
	.word	4
	.word	_Label_3182
	.word	-80
	.word	4
	.word	_Label_3183
	.word	-84
	.word	4
	.word	_Label_3184
	.word	-88
	.word	4
	.word	_Label_3185
	.word	-92
	.word	4
	.word	_Label_3186
	.word	-96
	.word	4
	.word	_Label_3187
	.word	-100
	.word	4
	.word	_Label_3188
	.word	-104
	.word	4
	.word	_Label_3189
	.word	-108
	.word	4
	.word	_Label_3190
	.word	-112
	.word	4
	.word	_Label_3191
	.word	-116
	.word	4
	.word	0
_Label_3163:
	.ascii	"FileManager"
	.ascii	"::"
	.ascii	"Print\0"
	.align
_Label_3164:
	.ascii	"Pself\0"
	.align
_Label_3165:
	.byte	'?'
	.ascii	"_temp_3162\0"
	.align
_Label_3166:
	.byte	'?'
	.ascii	"_temp_3161\0"
	.align
_Label_3167:
	.byte	'?'
	.ascii	"_temp_3160\0"
	.align
_Label_3168:
	.byte	'?'
	.ascii	"_temp_3159\0"
	.align
_Label_3169:
	.byte	'?'
	.ascii	"_temp_3158\0"
	.align
_Label_3170:
	.byte	'?'
	.ascii	"_temp_3157\0"
	.align
_Label_3171:
	.byte	'?'
	.ascii	"_temp_3156\0"
	.align
_Label_3172:
	.byte	'?'
	.ascii	"_temp_3155\0"
	.align
_Label_3173:
	.byte	'?'
	.ascii	"_temp_3154\0"
	.align
_Label_3174:
	.byte	'?'
	.ascii	"_temp_3153\0"
	.align
_Label_3175:
	.byte	'?'
	.ascii	"_temp_3152\0"
	.align
_Label_3176:
	.byte	'?'
	.ascii	"_temp_3151\0"
	.align
_Label_3177:
	.byte	'?'
	.ascii	"_temp_3150\0"
	.align
_Label_3178:
	.byte	'?'
	.ascii	"_temp_3149\0"
	.align
_Label_3179:
	.byte	'?'
	.ascii	"_temp_3144\0"
	.align
_Label_3180:
	.byte	'?'
	.ascii	"_temp_3143\0"
	.align
_Label_3181:
	.byte	'?'
	.ascii	"_temp_3142\0"
	.align
_Label_3182:
	.byte	'?'
	.ascii	"_temp_3141\0"
	.align
_Label_3183:
	.byte	'?'
	.ascii	"_temp_3140\0"
	.align
_Label_3184:
	.byte	'?'
	.ascii	"_temp_3139\0"
	.align
_Label_3185:
	.byte	'?'
	.ascii	"_temp_3138\0"
	.align
_Label_3186:
	.byte	'?'
	.ascii	"_temp_3137\0"
	.align
_Label_3187:
	.byte	'?'
	.ascii	"_temp_3136\0"
	.align
_Label_3188:
	.byte	'?'
	.ascii	"_temp_3135\0"
	.align
_Label_3189:
	.byte	'?'
	.ascii	"_temp_3130\0"
	.align
_Label_3190:
	.byte	'?'
	.ascii	"_temp_3129\0"
	.align
_Label_3191:
	.byte	'I'
	.ascii	"i\0"
	.align
! 
! ===============  METHOD Open  ===============
! 
_Method_P_Kernel_FileManager_3:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_FileManager_3,r1
	push	r1
	mov	14,r1
_Label_4110:
	push	r0
	sub	r1,1,r1
	bne	_Label_4110
	mov	2971,r13		! source line 2971
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	2988,r13		! source line 2988
	mov	"\0\0AS",r10
	mov	2988,r13		! source line 2988
	mov	"\0\0SE",r10
!   _temp_3192 = &_P_Kernel_fileManager
	set	_P_Kernel_fileManager,r1
	store	r1,[r14+-48]
!   Prepare Argument: offset=12  value=filename  sizeInBytes=4
	load	[r14+12],r1
	store	r1,[r15+4]
!   Send message FindFCB
	load	[r14+-48],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
!   Retrieve Result: targetName=fcb  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-56]
! IF STATEMENT...
	mov	2989,r13		! source line 2989
	mov	"\0\0IF",r10
!   if intIsZero (fcb) then goto _Label_3193
	load	[r14+-56],r1
	cmp	r1,r0
	be	_Label_3193
	jmp	_Label_3194
_Label_3193:
! THEN...
	mov	2990,r13		! source line 2990
	mov	"\0\0TN",r10
! RETURN STATEMENT...
	mov	2990,r13		! source line 2990
	mov	"\0\0RE",r10
!   ReturnResult: 0  (sizeInBytes=4)
	mov	0,r1
	store	r1,[r14+8]
	add	r15,60,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_3194:
! SEND STATEMENT...
	mov	2994,r13		! source line 2994
	mov	"\0\0SE",r10
!   _temp_3195 = &fileManagerLock
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-44]
!   Send message Lock
	load	[r14+-44],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! WHILE STATEMENT...
	mov	2995,r13		! source line 2995
	mov	"\0\0WH",r10
_Label_3196:
	mov	2995,r13		! source line 2995
	mov	"\0\0SE",r10
!   _temp_3199 = &openFileFreeList
	load	[r14+8],r1
	add	r1,756,r1
	store	r1,[r14+-40]
!   Send message IsEmpty
	load	[r14+-40],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,16,r2
	call	r2
!   if result==true then goto _Label_3197 else goto _Label_3198
	loadb	[r15],r1
	cmp	r1,0
	be	_Label_3198
	jmp	_Label_3197
_Label_3197:
	mov	2995,r13		! source line 2995
	mov	"\0\0WB",r10
! SEND STATEMENT...
	mov	2996,r13		! source line 2996
	mov	"\0\0SE",r10
!   _temp_3200 = &fileManagerLock
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-36]
!   _temp_3201 = &anOpenFileBecameFree
	load	[r14+8],r1
	add	r1,740,r1
	store	r1,[r14+-32]
!   Prepare Argument: offset=12  value=_temp_3200  sizeInBytes=4
	load	[r14+-36],r1
	store	r1,[r15+4]
!   Send message Wait
	load	[r14+-32],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! END WHILE...
	jmp	_Label_3196
_Label_3198:
! ASSIGNMENT STATEMENT...
	mov	2998,r13		! source line 2998
	mov	"\0\0AS",r10
	mov	2998,r13		! source line 2998
	mov	"\0\0SE",r10
!   _temp_3202 = &openFileFreeList
	load	[r14+8],r1
	add	r1,756,r1
	store	r1,[r14+-28]
!   Send message Remove
	load	[r14+-28],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
!   Retrieve Result: targetName=open  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-52]
! ASSIGNMENT STATEMENT...
	mov	3001,r13		! source line 3001
	mov	"\0\0AS",r10
!   if intIsZero (open) then goto _runtimeErrorNullPointer
	load	[r14+-52],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3203 = open + 20
	load	[r14+-52],r1
	add	r1,20,r1
	store	r1,[r14+-24]
!   Data Move: *_temp_3203 = fcb  (sizeInBytes=4)
	load	[r14+-56],r1
	load	[r14+-24],r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	3002,r13		! source line 3002
	mov	"\0\0AS",r10
!   if intIsZero (open) then goto _runtimeErrorNullPointer
	load	[r14+-52],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3204 = open + 24
	load	[r14+-52],r1
	add	r1,24,r1
	store	r1,[r14+-20]
!   Data Move: *_temp_3204 = 1  (sizeInBytes=4)
	mov	1,r1
	load	[r14+-20],r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	3005,r13		! source line 3005
	mov	"\0\0AS",r10
!   if intIsZero (open) then goto _runtimeErrorNullPointer
	load	[r14+-52],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3205 = open + 16
	load	[r14+-52],r1
	add	r1,16,r1
	store	r1,[r14+-16]
!   Data Move: *_temp_3205 = 0  (sizeInBytes=4)
	mov	0,r1
	load	[r14+-16],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	3007,r13		! source line 3007
	mov	"\0\0SE",r10
!   _temp_3206 = &fileManagerLock
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-12]
!   Send message Unlock
	load	[r14+-12],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
! RETURN STATEMENT...
	mov	3008,r13		! source line 3008
	mov	"\0\0RE",r10
!   ReturnResult: open  (sizeInBytes=4)
	load	[r14+-52],r1
	store	r1,[r14+8]
	add	r15,60,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_FileManager_3:
	.word	_sourceFileName
	.word	_Label_3207
	.word	8		! total size of parameters
	.word	56		! frame size = 56
	.word	_Label_3208
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_3209
	.word	12
	.word	4
	.word	_Label_3210
	.word	-12
	.word	4
	.word	_Label_3211
	.word	-16
	.word	4
	.word	_Label_3212
	.word	-20
	.word	4
	.word	_Label_3213
	.word	-24
	.word	4
	.word	_Label_3214
	.word	-28
	.word	4
	.word	_Label_3215
	.word	-32
	.word	4
	.word	_Label_3216
	.word	-36
	.word	4
	.word	_Label_3217
	.word	-40
	.word	4
	.word	_Label_3218
	.word	-44
	.word	4
	.word	_Label_3219
	.word	-48
	.word	4
	.word	_Label_3220
	.word	-52
	.word	4
	.word	_Label_3221
	.word	-56
	.word	4
	.word	0
_Label_3207:
	.ascii	"FileManager"
	.ascii	"::"
	.ascii	"Open\0"
	.align
_Label_3208:
	.ascii	"Pself\0"
	.align
_Label_3209:
	.byte	'P'
	.ascii	"filename\0"
	.align
_Label_3210:
	.byte	'?'
	.ascii	"_temp_3206\0"
	.align
_Label_3211:
	.byte	'?'
	.ascii	"_temp_3205\0"
	.align
_Label_3212:
	.byte	'?'
	.ascii	"_temp_3204\0"
	.align
_Label_3213:
	.byte	'?'
	.ascii	"_temp_3203\0"
	.align
_Label_3214:
	.byte	'?'
	.ascii	"_temp_3202\0"
	.align
_Label_3215:
	.byte	'?'
	.ascii	"_temp_3201\0"
	.align
_Label_3216:
	.byte	'?'
	.ascii	"_temp_3200\0"
	.align
_Label_3217:
	.byte	'?'
	.ascii	"_temp_3199\0"
	.align
_Label_3218:
	.byte	'?'
	.ascii	"_temp_3195\0"
	.align
_Label_3219:
	.byte	'?'
	.ascii	"_temp_3192\0"
	.align
_Label_3220:
	.byte	'P'
	.ascii	"open\0"
	.align
_Label_3221:
	.byte	'P'
	.ascii	"fcb\0"
	.align
! 
! ===============  METHOD FindFCB  ===============
! 
_Method_P_Kernel_FileManager_4:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_FileManager_4,r1
	push	r1
	mov	41,r1
_Label_4111:
	push	r0
	sub	r1,1,r1
	bne	_Label_4111
	mov	3013,r13		! source line 3013
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	3038,r13		! source line 3038
	mov	"\0\0AS",r10
!   p = directoryFrame		(4 bytes)
	load	[r14+8],r1
	load	[r1+768],r1
	store	r1,[r14+-160]
! ASSIGNMENT STATEMENT...
	mov	3041,r13		! source line 3041
	mov	"\0\0AS",r10
!   if intIsZero (p) then goto _runtimeErrorNullPointer
	load	[r14+-160],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Data Move: i = *p  (sizeInBytes=4)
	load	[r14+-160],r1
	load	[r1],r1
	store	r1,[r14+-136]
! ASSIGNMENT STATEMENT...
	mov	3042,r13		! source line 3042
	mov	"\0\0AS",r10
!   p = p + 4		(int)
	load	[r14+-160],r1
	mov	4,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-160]
! IF STATEMENT...
	mov	3043,r13		! source line 3043
	mov	"\0\0IF",r10
!   if i == 1937012066 then goto _Label_3223		(int)
	load	[r14+-136],r1
	set	1937012066,r2
	cmp	r1,r2
	be	_Label_3223
!	jmp	_Label_3222
_Label_3222:
! THEN...
	mov	3044,r13		! source line 3044
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_3224 = _StringConst_158
	set	_StringConst_158,r1
	store	r1,[r14+-132]
!   Prepare Argument: offset=8  value=_temp_3224  sizeInBytes=4
	load	[r14+-132],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	3044,r13		! source line 3044
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END IF...
_Label_3223:
! ASSIGNMENT STATEMENT...
	mov	3048,r13		! source line 3048
	mov	"\0\0AS",r10
!   if intIsZero (p) then goto _runtimeErrorNullPointer
	load	[r14+-160],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Data Move: numFiles = *p  (sizeInBytes=4)
	load	[r14+-160],r1
	load	[r1],r1
	store	r1,[r14+-144]
! ASSIGNMENT STATEMENT...
	mov	3049,r13		! source line 3049
	mov	"\0\0AS",r10
!   p = p + 4		(int)
	load	[r14+-160],r1
	mov	4,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-160]
! ASSIGNMENT STATEMENT...
	mov	3050,r13		! source line 3050
	mov	"\0\0AS",r10
!   if intIsZero (p) then goto _runtimeErrorNullPointer
	load	[r14+-160],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Data Move: i = *p  (sizeInBytes=4)
	load	[r14+-160],r1
	load	[r1],r1
	store	r1,[r14+-136]
! ASSIGNMENT STATEMENT...
	mov	3051,r13		! source line 3051
	mov	"\0\0AS",r10
!   p = p + 4		(int)
	load	[r14+-160],r1
	mov	4,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-160]
! WHILE STATEMENT...
	mov	3054,r13		! source line 3054
	mov	"\0\0WH",r10
_Label_3225:
!   if numFiles <= 0 then goto _Label_3227		(int)
	load	[r14+-144],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	ble	_Label_3227
!	jmp	_Label_3226
_Label_3226:
	mov	3054,r13		! source line 3054
	mov	"\0\0WB",r10
! CALL STATEMENT...
!   _temp_3228 = &start
	add	r14,-140,r1
	store	r1,[r14+-128]
!   Prepare Argument: offset=8  value=_temp_3228  sizeInBytes=4
	load	[r14+-128],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=p  sizeInBytes=4
	load	[r14+-160],r1
	store	r1,[r15+4]
!   Call the function
	mov	3055,r13		! source line 3055
	mov	"\0\0CA",r10
	call	_function_197_copyUnalignedWord
! ASSIGNMENT STATEMENT...
	mov	3056,r13		! source line 3056
	mov	"\0\0AS",r10
!   p = p + 4		(int)
	load	[r14+-160],r1
	mov	4,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-160]
! CALL STATEMENT...
!   _temp_3229 = &fileLen
	add	r14,-148,r1
	store	r1,[r14+-124]
!   Prepare Argument: offset=8  value=_temp_3229  sizeInBytes=4
	load	[r14+-124],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=p  sizeInBytes=4
	load	[r14+-160],r1
	store	r1,[r15+4]
!   Call the function
	mov	3057,r13		! source line 3057
	mov	"\0\0CA",r10
	call	_function_197_copyUnalignedWord
! ASSIGNMENT STATEMENT...
	mov	3058,r13		! source line 3058
	mov	"\0\0AS",r10
!   p = p + 4		(int)
	load	[r14+-160],r1
	mov	4,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-160]
! CALL STATEMENT...
!   _temp_3230 = &fileNameLen
	add	r14,-152,r1
	store	r1,[r14+-120]
!   Prepare Argument: offset=8  value=_temp_3230  sizeInBytes=4
	load	[r14+-120],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=p  sizeInBytes=4
	load	[r14+-160],r1
	store	r1,[r15+4]
!   Call the function
	mov	3059,r13		! source line 3059
	mov	"\0\0CA",r10
	call	_function_197_copyUnalignedWord
! ASSIGNMENT STATEMENT...
	mov	3060,r13		! source line 3060
	mov	"\0\0AS",r10
!   p = p + 4		(int)
	load	[r14+-160],r1
	mov	4,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-160]
! IF STATEMENT...
	mov	3061,r13		! source line 3061
	mov	"\0\0IF",r10
!   if intIsZero (filename) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Data Move: _temp_3234 = *filename  (sizeInBytes=4)
	load	[r14+12],r1
	load	[r1],r1
	store	r1,[r14+-116]
!   if fileNameLen != _temp_3234 then goto _Label_3232		(int)
	load	[r14+-152],r1
	load	[r14+-116],r2
	cmp	r1,r2
	bne	_Label_3232
!	jmp	_Label_3233
_Label_3233:
!   if intIsZero (filename) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Move address of filename [0 ] into _temp_3236
!     make sure index expr is >= 0
	mov	0,r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+12],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	1,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-108]
!   _temp_3235 = _temp_3236		(4 bytes)
	load	[r14+-108],r1
	store	r1,[r14+-112]
!   Prepare Argument: offset=8  value=p  sizeInBytes=4
	load	[r14+-160],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=_temp_3235  sizeInBytes=4
	load	[r14+-112],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=fileNameLen  sizeInBytes=4
	load	[r14+-152],r1
	store	r1,[r15+8]
!   Call the function
	mov	3062,r13		! source line 3062
	mov	"\0\0CA",r10
	call	_P_System_MemoryEqual
!   if result==true then goto _Label_3231 else goto _Label_3232
	loadb	[r15],r1
	cmp	r1,0
	be	_Label_3232
	jmp	_Label_3231
_Label_3231:
! THEN...
	mov	3063,r13		! source line 3063
	mov	"\0\0TN",r10
! BREAK STATEMENT...
	mov	3063,r13		! source line 3063
	mov	"\0\0BR",r10
	jmp	_Label_3227
! END IF...
_Label_3232:
! ASSIGNMENT STATEMENT...
	mov	3065,r13		! source line 3065
	mov	"\0\0AS",r10
!   p = p + fileNameLen		(int)
	load	[r14+-160],r1
	load	[r14+-152],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-160]
! ASSIGNMENT STATEMENT...
	mov	3066,r13		! source line 3066
	mov	"\0\0AS",r10
!   numFiles = numFiles - 1		(int)
	load	[r14+-144],r1
	mov	1,r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-144]
! END WHILE...
	jmp	_Label_3225
_Label_3227:
! IF STATEMENT...
	mov	3070,r13		! source line 3070
	mov	"\0\0IF",r10
!   if numFiles > 0 then goto _Label_3238		(int)
	load	[r14+-144],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_3238
!	jmp	_Label_3237
_Label_3237:
! THEN...
	mov	3071,r13		! source line 3071
	mov	"\0\0TN",r10
! RETURN STATEMENT...
	mov	3071,r13		! source line 3071
	mov	"\0\0RE",r10
!   ReturnResult: 0  (sizeInBytes=4)
	mov	0,r1
	store	r1,[r14+8]
	add	r15,168,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_3238:
! SEND STATEMENT...
	mov	3074,r13		! source line 3074
	mov	"\0\0SE",r10
!   _temp_3239 = &fileManagerLock
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-104]
!   Send message Lock
	load	[r14+-104],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! FOR STATEMENT...
	mov	3076,r13		! source line 3076
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_3244 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-100]
!   Calculate and save the FOR-LOOP ending value
!   _temp_3245 = 9		(4 bytes)
	mov	9,r1
	store	r1,[r14+-96]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_3244  (sizeInBytes=4)
	load	[r14+-100],r1
	store	r1,[r14+-136]
_Label_3240:
!   Perform the FOR-LOOP termination test
!   if i > _temp_3245 then goto _Label_3243		
	load	[r14+-136],r1
	load	[r14+-96],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_3243
_Label_3241:
	mov	3076,r13		! source line 3076
	mov	"\0\0FB",r10
! ASSIGNMENT STATEMENT...
	mov	3077,r13		! source line 3077
	mov	"\0\0AS",r10
!   _temp_3246 = &fcbTable
	load	[r14+8],r1
	add	r1,24,r1
	store	r1,[r14+-92]
!   Move address of _temp_3246 [i ] into _temp_3247
!     make sure index expr is >= 0
	load	[r14+-136],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-92],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	40,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-88]
!   fcb = _temp_3247		(4 bytes)
	load	[r14+-88],r1
	store	r1,[r14+-156]
! IF STATEMENT...
	mov	3078,r13		! source line 3078
	mov	"\0\0IF",r10
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-156],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3251 = fcb + 20
	load	[r14+-156],r1
	add	r1,20,r1
	store	r1,[r14+-80]
!   Data Move: _temp_3250 = *_temp_3251  (sizeInBytes=4)
	load	[r14+-80],r1
	load	[r1],r1
	store	r1,[r14+-84]
!   if _temp_3250 != start then goto _Label_3249		(int)
	load	[r14+-84],r1
	load	[r14+-140],r2
	cmp	r1,r2
	bne	_Label_3249
!	jmp	_Label_3248
_Label_3248:
! THEN...
	mov	3079,r13		! source line 3079
	mov	"\0\0TN",r10
! ASSIGNMENT STATEMENT...
	mov	3079,r13		! source line 3079
	mov	"\0\0AS",r10
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-156],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3252 = fcb + 16
	load	[r14+-156],r1
	add	r1,16,r1
	store	r1,[r14+-76]
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-156],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3255 = fcb + 16
	load	[r14+-156],r1
	add	r1,16,r1
	store	r1,[r14+-64]
!   Data Move: _temp_3254 = *_temp_3255  (sizeInBytes=4)
	load	[r14+-64],r1
	load	[r1],r1
	store	r1,[r14+-68]
!   _temp_3253 = _temp_3254 + 1		(int)
	load	[r14+-68],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-72]
!   Data Move: *_temp_3252 = _temp_3253  (sizeInBytes=4)
	load	[r14+-72],r1
	load	[r14+-76],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	3080,r13		! source line 3080
	mov	"\0\0SE",r10
!   _temp_3256 = &fileManagerLock
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-60]
!   Send message Unlock
	load	[r14+-60],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
! RETURN STATEMENT...
	mov	3081,r13		! source line 3081
	mov	"\0\0RE",r10
!   ReturnResult: fcb  (sizeInBytes=4)
	load	[r14+-156],r1
	store	r1,[r14+8]
	add	r15,168,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_3249:
!   Increment the FOR-LOOP index variable and jump back
_Label_3242:
!   i = i + 1
	load	[r14+-136],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-136]
	jmp	_Label_3240
! END FOR
_Label_3243:
! WHILE STATEMENT...
	mov	3086,r13		! source line 3086
	mov	"\0\0WH",r10
_Label_3257:
	mov	3086,r13		! source line 3086
	mov	"\0\0SE",r10
!   _temp_3260 = &fcbFreeList
	load	[r14+8],r1
	add	r1,444,r1
	store	r1,[r14+-56]
!   Send message IsEmpty
	load	[r14+-56],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,16,r2
	call	r2
!   if result==true then goto _Label_3258 else goto _Label_3259
	loadb	[r15],r1
	cmp	r1,0
	be	_Label_3259
	jmp	_Label_3258
_Label_3258:
	mov	3086,r13		! source line 3086
	mov	"\0\0WB",r10
! SEND STATEMENT...
	mov	3087,r13		! source line 3087
	mov	"\0\0SE",r10
!   _temp_3261 = &fileManagerLock
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-52]
!   _temp_3262 = &anFCBBecameFree
	load	[r14+8],r1
	add	r1,428,r1
	store	r1,[r14+-48]
!   Prepare Argument: offset=12  value=_temp_3261  sizeInBytes=4
	load	[r14+-52],r1
	store	r1,[r15+4]
!   Send message Wait
	load	[r14+-48],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! END WHILE...
	jmp	_Label_3257
_Label_3259:
! ASSIGNMENT STATEMENT...
	mov	3089,r13		! source line 3089
	mov	"\0\0AS",r10
	mov	3089,r13		! source line 3089
	mov	"\0\0SE",r10
!   _temp_3263 = &fcbFreeList
	load	[r14+8],r1
	add	r1,444,r1
	store	r1,[r14+-44]
!   Send message Remove
	load	[r14+-44],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
!   Retrieve Result: targetName=fcb  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-156]
! SEND STATEMENT...
	mov	3092,r13		! source line 3092
	mov	"\0\0SE",r10
!   _temp_3264 = &fileManagerLock
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-40]
!   Send message Unlock
	load	[r14+-40],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
! ASSIGNMENT STATEMENT...
	mov	3095,r13		! source line 3095
	mov	"\0\0AS",r10
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-156],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3265 = fcb + 20
	load	[r14+-156],r1
	add	r1,20,r1
	store	r1,[r14+-36]
!   Data Move: *_temp_3265 = start  (sizeInBytes=4)
	load	[r14+-140],r1
	load	[r14+-36],r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	3096,r13		! source line 3096
	mov	"\0\0AS",r10
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-156],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3266 = fcb + 24
	load	[r14+-156],r1
	add	r1,24,r1
	store	r1,[r14+-32]
!   Data Move: *_temp_3266 = fileLen  (sizeInBytes=4)
	load	[r14+-148],r1
	load	[r14+-32],r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	3097,r13		! source line 3097
	mov	"\0\0AS",r10
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-156],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3267 = fcb + 16
	load	[r14+-156],r1
	add	r1,16,r1
	store	r1,[r14+-28]
!   Data Move: *_temp_3267 = 1  (sizeInBytes=4)
	mov	1,r1
	load	[r14+-28],r2
	store	r1,[r2]
! IF STATEMENT...
	mov	3098,r13		! source line 3098
	mov	"\0\0IF",r10
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-156],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3272 = fcb + 32
	load	[r14+-156],r1
	add	r1,32,r1
	store	r1,[r14+-20]
!   Data Move: _temp_3271 = *_temp_3272  (sizeInBytes=4)
	load	[r14+-20],r1
	load	[r1],r1
	store	r1,[r14+-24]
!   if _temp_3271 < 0 then goto _Label_3270		(int)
	load	[r14+-24],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bl	_Label_3270
	jmp	_Label_3268
_Label_3270:
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-156],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3273 = fcb + 36
	load	[r14+-156],r1
	add	r1,36,r1
	store	r1,[r14+-16]
!   if boolIsZero (_temp_3273 ) then goto _Label_3269		(int)
	load	[r14+-16],r1
	loadb	[r1],r1
	cmp	r1,r0
	be	_Label_3269
!	jmp	_Label_3268
_Label_3268:
! THEN...
	mov	3099,r13		! source line 3099
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_3274 = _StringConst_159
	set	_StringConst_159,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_3274  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	3099,r13		! source line 3099
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END IF...
_Label_3269:
! RETURN STATEMENT...
	mov	3101,r13		! source line 3101
	mov	"\0\0RE",r10
!   ReturnResult: fcb  (sizeInBytes=4)
	load	[r14+-156],r1
	store	r1,[r14+8]
	add	r15,168,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_FileManager_4:
	.word	_sourceFileName
	.word	_Label_3275
	.word	8		! total size of parameters
	.word	164		! frame size = 164
	.word	_Label_3276
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_3277
	.word	12
	.word	4
	.word	_Label_3278
	.word	-12
	.word	4
	.word	_Label_3279
	.word	-16
	.word	4
	.word	_Label_3280
	.word	-20
	.word	4
	.word	_Label_3281
	.word	-24
	.word	4
	.word	_Label_3282
	.word	-28
	.word	4
	.word	_Label_3283
	.word	-32
	.word	4
	.word	_Label_3284
	.word	-36
	.word	4
	.word	_Label_3285
	.word	-40
	.word	4
	.word	_Label_3286
	.word	-44
	.word	4
	.word	_Label_3287
	.word	-48
	.word	4
	.word	_Label_3288
	.word	-52
	.word	4
	.word	_Label_3289
	.word	-56
	.word	4
	.word	_Label_3290
	.word	-60
	.word	4
	.word	_Label_3291
	.word	-64
	.word	4
	.word	_Label_3292
	.word	-68
	.word	4
	.word	_Label_3293
	.word	-72
	.word	4
	.word	_Label_3294
	.word	-76
	.word	4
	.word	_Label_3295
	.word	-80
	.word	4
	.word	_Label_3296
	.word	-84
	.word	4
	.word	_Label_3297
	.word	-88
	.word	4
	.word	_Label_3298
	.word	-92
	.word	4
	.word	_Label_3299
	.word	-96
	.word	4
	.word	_Label_3300
	.word	-100
	.word	4
	.word	_Label_3301
	.word	-104
	.word	4
	.word	_Label_3302
	.word	-108
	.word	4
	.word	_Label_3303
	.word	-112
	.word	4
	.word	_Label_3304
	.word	-116
	.word	4
	.word	_Label_3305
	.word	-120
	.word	4
	.word	_Label_3306
	.word	-124
	.word	4
	.word	_Label_3307
	.word	-128
	.word	4
	.word	_Label_3308
	.word	-132
	.word	4
	.word	_Label_3309
	.word	-136
	.word	4
	.word	_Label_3310
	.word	-140
	.word	4
	.word	_Label_3311
	.word	-144
	.word	4
	.word	_Label_3312
	.word	-148
	.word	4
	.word	_Label_3313
	.word	-152
	.word	4
	.word	_Label_3314
	.word	-156
	.word	4
	.word	_Label_3315
	.word	-160
	.word	4
	.word	0
_Label_3275:
	.ascii	"FileManager"
	.ascii	"::"
	.ascii	"FindFCB\0"
	.align
_Label_3276:
	.ascii	"Pself\0"
	.align
_Label_3277:
	.byte	'P'
	.ascii	"filename\0"
	.align
_Label_3278:
	.byte	'?'
	.ascii	"_temp_3274\0"
	.align
_Label_3279:
	.byte	'?'
	.ascii	"_temp_3273\0"
	.align
_Label_3280:
	.byte	'?'
	.ascii	"_temp_3272\0"
	.align
_Label_3281:
	.byte	'?'
	.ascii	"_temp_3271\0"
	.align
_Label_3282:
	.byte	'?'
	.ascii	"_temp_3267\0"
	.align
_Label_3283:
	.byte	'?'
	.ascii	"_temp_3266\0"
	.align
_Label_3284:
	.byte	'?'
	.ascii	"_temp_3265\0"
	.align
_Label_3285:
	.byte	'?'
	.ascii	"_temp_3264\0"
	.align
_Label_3286:
	.byte	'?'
	.ascii	"_temp_3263\0"
	.align
_Label_3287:
	.byte	'?'
	.ascii	"_temp_3262\0"
	.align
_Label_3288:
	.byte	'?'
	.ascii	"_temp_3261\0"
	.align
_Label_3289:
	.byte	'?'
	.ascii	"_temp_3260\0"
	.align
_Label_3290:
	.byte	'?'
	.ascii	"_temp_3256\0"
	.align
_Label_3291:
	.byte	'?'
	.ascii	"_temp_3255\0"
	.align
_Label_3292:
	.byte	'?'
	.ascii	"_temp_3254\0"
	.align
_Label_3293:
	.byte	'?'
	.ascii	"_temp_3253\0"
	.align
_Label_3294:
	.byte	'?'
	.ascii	"_temp_3252\0"
	.align
_Label_3295:
	.byte	'?'
	.ascii	"_temp_3251\0"
	.align
_Label_3296:
	.byte	'?'
	.ascii	"_temp_3250\0"
	.align
_Label_3297:
	.byte	'?'
	.ascii	"_temp_3247\0"
	.align
_Label_3298:
	.byte	'?'
	.ascii	"_temp_3246\0"
	.align
_Label_3299:
	.byte	'?'
	.ascii	"_temp_3245\0"
	.align
_Label_3300:
	.byte	'?'
	.ascii	"_temp_3244\0"
	.align
_Label_3301:
	.byte	'?'
	.ascii	"_temp_3239\0"
	.align
_Label_3302:
	.byte	'?'
	.ascii	"_temp_3236\0"
	.align
_Label_3303:
	.byte	'?'
	.ascii	"_temp_3235\0"
	.align
_Label_3304:
	.byte	'?'
	.ascii	"_temp_3234\0"
	.align
_Label_3305:
	.byte	'?'
	.ascii	"_temp_3230\0"
	.align
_Label_3306:
	.byte	'?'
	.ascii	"_temp_3229\0"
	.align
_Label_3307:
	.byte	'?'
	.ascii	"_temp_3228\0"
	.align
_Label_3308:
	.byte	'?'
	.ascii	"_temp_3224\0"
	.align
_Label_3309:
	.byte	'I'
	.ascii	"i\0"
	.align
_Label_3310:
	.byte	'I'
	.ascii	"start\0"
	.align
_Label_3311:
	.byte	'I'
	.ascii	"numFiles\0"
	.align
_Label_3312:
	.byte	'I'
	.ascii	"fileLen\0"
	.align
_Label_3313:
	.byte	'I'
	.ascii	"fileNameLen\0"
	.align
_Label_3314:
	.byte	'P'
	.ascii	"fcb\0"
	.align
_Label_3315:
	.byte	'P'
	.ascii	"p\0"
	.align
! 
! ===============  METHOD Close  ===============
! 
_Method_P_Kernel_FileManager_5:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_FileManager_5,r1
	push	r1
	mov	26,r1
_Label_4112:
	push	r0
	sub	r1,1,r1
	bne	_Label_4112
	mov	3114,r13		! source line 3114
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! IF STATEMENT...
	mov	3116,r13		! source line 3116
	mov	"\0\0IF",r10
!   _temp_3318 = &serialTerminalFile
	load	[r14+8],r1
	add	r1,772,r1
	store	r1,[r14+-100]
!   if open != _temp_3318 then goto _Label_3317		(int)
	load	[r14+12],r1
	load	[r14+-100],r2
	cmp	r1,r2
	bne	_Label_3317
!	jmp	_Label_3316
_Label_3316:
! THEN...
	mov	3117,r13		! source line 3117
	mov	"\0\0TN",r10
! RETURN STATEMENT...
	mov	3117,r13		! source line 3117
	mov	"\0\0RE",r10
	add	r15,108,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_3317:
! SEND STATEMENT...
	mov	3119,r13		! source line 3119
	mov	"\0\0SE",r10
!   _temp_3319 = &fileManagerLock
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-96]
!   Send message Lock
	load	[r14+-96],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! SEND STATEMENT...
	mov	3120,r13		! source line 3120
	mov	"\0\0SE",r10
!   _temp_3320 = &_P_Kernel_fileManager
	set	_P_Kernel_fileManager,r1
	store	r1,[r14+-92]
!   Prepare Argument: offset=12  value=open  sizeInBytes=4
	load	[r14+12],r1
	store	r1,[r15+4]
!   Send message Flush
	load	[r14+-92],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,24,r2
	call	r2
! ASSIGNMENT STATEMENT...
	mov	3121,r13		! source line 3121
	mov	"\0\0AS",r10
!   if intIsZero (open) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3321 = open + 20
	load	[r14+12],r1
	add	r1,20,r1
	store	r1,[r14+-88]
!   Data Move: fcb = *_temp_3321  (sizeInBytes=4)
	load	[r14+-88],r1
	load	[r1],r1
	store	r1,[r14+-104]
! ASSIGNMENT STATEMENT...
	mov	3122,r13		! source line 3122
	mov	"\0\0AS",r10
!   if intIsZero (open) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3322 = open + 24
	load	[r14+12],r1
	add	r1,24,r1
	store	r1,[r14+-84]
!   if intIsZero (open) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3325 = open + 24
	load	[r14+12],r1
	add	r1,24,r1
	store	r1,[r14+-72]
!   Data Move: _temp_3324 = *_temp_3325  (sizeInBytes=4)
	load	[r14+-72],r1
	load	[r1],r1
	store	r1,[r14+-76]
!   _temp_3323 = _temp_3324 - 1		(int)
	load	[r14+-76],r1
	mov	1,r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-80]
!   Data Move: *_temp_3322 = _temp_3323  (sizeInBytes=4)
	load	[r14+-80],r1
	load	[r14+-84],r2
	store	r1,[r2]
! IF STATEMENT...
	mov	3123,r13		! source line 3123
	mov	"\0\0IF",r10
!   if intIsZero (open) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3329 = open + 24
	load	[r14+12],r1
	add	r1,24,r1
	store	r1,[r14+-64]
!   Data Move: _temp_3328 = *_temp_3329  (sizeInBytes=4)
	load	[r14+-64],r1
	load	[r1],r1
	store	r1,[r14+-68]
!   if _temp_3328 > 0 then goto _Label_3327		(int)
	load	[r14+-68],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_3327
!	jmp	_Label_3326
_Label_3326:
! THEN...
	mov	3124,r13		! source line 3124
	mov	"\0\0TN",r10
! SEND STATEMENT...
	mov	3124,r13		! source line 3124
	mov	"\0\0SE",r10
!   _temp_3330 = &openFileFreeList
	load	[r14+8],r1
	add	r1,756,r1
	store	r1,[r14+-60]
!   Prepare Argument: offset=12  value=open  sizeInBytes=4
	load	[r14+12],r1
	store	r1,[r15+4]
!   Send message AddToEnd
	load	[r14+-60],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! SEND STATEMENT...
	mov	3125,r13		! source line 3125
	mov	"\0\0SE",r10
!   _temp_3331 = &fileManagerLock
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-56]
!   _temp_3332 = &anOpenFileBecameFree
	load	[r14+8],r1
	add	r1,740,r1
	store	r1,[r14+-52]
!   Prepare Argument: offset=12  value=_temp_3331  sizeInBytes=4
	load	[r14+-56],r1
	store	r1,[r15+4]
!   Send message Signal
	load	[r14+-52],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
! ASSIGNMENT STATEMENT...
	mov	3126,r13		! source line 3126
	mov	"\0\0AS",r10
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-104],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3333 = fcb + 16
	load	[r14+-104],r1
	add	r1,16,r1
	store	r1,[r14+-48]
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-104],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3336 = fcb + 16
	load	[r14+-104],r1
	add	r1,16,r1
	store	r1,[r14+-36]
!   Data Move: _temp_3335 = *_temp_3336  (sizeInBytes=4)
	load	[r14+-36],r1
	load	[r1],r1
	store	r1,[r14+-40]
!   _temp_3334 = _temp_3335 - 1		(int)
	load	[r14+-40],r1
	mov	1,r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-44]
!   Data Move: *_temp_3333 = _temp_3334  (sizeInBytes=4)
	load	[r14+-44],r1
	load	[r14+-48],r2
	store	r1,[r2]
! IF STATEMENT...
	mov	3127,r13		! source line 3127
	mov	"\0\0IF",r10
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-104],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3340 = fcb + 16
	load	[r14+-104],r1
	add	r1,16,r1
	store	r1,[r14+-28]
!   Data Move: _temp_3339 = *_temp_3340  (sizeInBytes=4)
	load	[r14+-28],r1
	load	[r1],r1
	store	r1,[r14+-32]
!   if _temp_3339 > 0 then goto _Label_3338		(int)
	load	[r14+-32],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_3338
!	jmp	_Label_3337
_Label_3337:
! THEN...
	mov	3128,r13		! source line 3128
	mov	"\0\0TN",r10
! SEND STATEMENT...
	mov	3128,r13		! source line 3128
	mov	"\0\0SE",r10
!   _temp_3341 = &fcbFreeList
	load	[r14+8],r1
	add	r1,444,r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=12  value=fcb  sizeInBytes=4
	load	[r14+-104],r1
	store	r1,[r15+4]
!   Send message AddToEnd
	load	[r14+-24],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! SEND STATEMENT...
	mov	3129,r13		! source line 3129
	mov	"\0\0SE",r10
!   _temp_3342 = &fileManagerLock
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-20]
!   _temp_3343 = &anFCBBecameFree
	load	[r14+8],r1
	add	r1,428,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=12  value=_temp_3342  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+4]
!   Send message Signal
	load	[r14+-16],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
! END IF...
_Label_3338:
! END IF...
_Label_3327:
! SEND STATEMENT...
	mov	3132,r13		! source line 3132
	mov	"\0\0SE",r10
!   _temp_3344 = &fileManagerLock
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-12]
!   Send message Unlock
	load	[r14+-12],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
! RETURN STATEMENT...
	mov	3132,r13		! source line 3132
	mov	"\0\0RE",r10
	add	r15,108,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_FileManager_5:
	.word	_sourceFileName
	.word	_Label_3345
	.word	8		! total size of parameters
	.word	104		! frame size = 104
	.word	_Label_3346
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_3347
	.word	12
	.word	4
	.word	_Label_3348
	.word	-12
	.word	4
	.word	_Label_3349
	.word	-16
	.word	4
	.word	_Label_3350
	.word	-20
	.word	4
	.word	_Label_3351
	.word	-24
	.word	4
	.word	_Label_3352
	.word	-28
	.word	4
	.word	_Label_3353
	.word	-32
	.word	4
	.word	_Label_3354
	.word	-36
	.word	4
	.word	_Label_3355
	.word	-40
	.word	4
	.word	_Label_3356
	.word	-44
	.word	4
	.word	_Label_3357
	.word	-48
	.word	4
	.word	_Label_3358
	.word	-52
	.word	4
	.word	_Label_3359
	.word	-56
	.word	4
	.word	_Label_3360
	.word	-60
	.word	4
	.word	_Label_3361
	.word	-64
	.word	4
	.word	_Label_3362
	.word	-68
	.word	4
	.word	_Label_3363
	.word	-72
	.word	4
	.word	_Label_3364
	.word	-76
	.word	4
	.word	_Label_3365
	.word	-80
	.word	4
	.word	_Label_3366
	.word	-84
	.word	4
	.word	_Label_3367
	.word	-88
	.word	4
	.word	_Label_3368
	.word	-92
	.word	4
	.word	_Label_3369
	.word	-96
	.word	4
	.word	_Label_3370
	.word	-100
	.word	4
	.word	_Label_3371
	.word	-104
	.word	4
	.word	0
_Label_3345:
	.ascii	"FileManager"
	.ascii	"::"
	.ascii	"Close\0"
	.align
_Label_3346:
	.ascii	"Pself\0"
	.align
_Label_3347:
	.byte	'P'
	.ascii	"open\0"
	.align
_Label_3348:
	.byte	'?'
	.ascii	"_temp_3344\0"
	.align
_Label_3349:
	.byte	'?'
	.ascii	"_temp_3343\0"
	.align
_Label_3350:
	.byte	'?'
	.ascii	"_temp_3342\0"
	.align
_Label_3351:
	.byte	'?'
	.ascii	"_temp_3341\0"
	.align
_Label_3352:
	.byte	'?'
	.ascii	"_temp_3340\0"
	.align
_Label_3353:
	.byte	'?'
	.ascii	"_temp_3339\0"
	.align
_Label_3354:
	.byte	'?'
	.ascii	"_temp_3336\0"
	.align
_Label_3355:
	.byte	'?'
	.ascii	"_temp_3335\0"
	.align
_Label_3356:
	.byte	'?'
	.ascii	"_temp_3334\0"
	.align
_Label_3357:
	.byte	'?'
	.ascii	"_temp_3333\0"
	.align
_Label_3358:
	.byte	'?'
	.ascii	"_temp_3332\0"
	.align
_Label_3359:
	.byte	'?'
	.ascii	"_temp_3331\0"
	.align
_Label_3360:
	.byte	'?'
	.ascii	"_temp_3330\0"
	.align
_Label_3361:
	.byte	'?'
	.ascii	"_temp_3329\0"
	.align
_Label_3362:
	.byte	'?'
	.ascii	"_temp_3328\0"
	.align
_Label_3363:
	.byte	'?'
	.ascii	"_temp_3325\0"
	.align
_Label_3364:
	.byte	'?'
	.ascii	"_temp_3324\0"
	.align
_Label_3365:
	.byte	'?'
	.ascii	"_temp_3323\0"
	.align
_Label_3366:
	.byte	'?'
	.ascii	"_temp_3322\0"
	.align
_Label_3367:
	.byte	'?'
	.ascii	"_temp_3321\0"
	.align
_Label_3368:
	.byte	'?'
	.ascii	"_temp_3320\0"
	.align
_Label_3369:
	.byte	'?'
	.ascii	"_temp_3319\0"
	.align
_Label_3370:
	.byte	'?'
	.ascii	"_temp_3318\0"
	.align
_Label_3371:
	.byte	'P'
	.ascii	"fcb\0"
	.align
! 
! ===============  METHOD Flush  ===============
! 
_Method_P_Kernel_FileManager_6:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_FileManager_6,r1
	push	r1
	mov	29,r1
_Label_4113:
	push	r0
	sub	r1,1,r1
	bne	_Label_4113
	mov	3137,r13		! source line 3137
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! IF STATEMENT...
	mov	3142,r13		! source line 3142
	mov	"\0\0IF",r10
!   if intIsZero (open) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3375 = open + 20
	load	[r14+12],r1
	add	r1,20,r1
	store	r1,[r14+-104]
!   Data Move: _temp_3374 = *_temp_3375  (sizeInBytes=4)
	load	[r14+-104],r1
	load	[r1],r1
	store	r1,[r14+-108]
!   if intIsZero (_temp_3374) then goto _runtimeErrorNullPointer
	load	[r14+-108],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3376 = _temp_3374 + 36
	load	[r14+-108],r1
	add	r1,36,r1
	store	r1,[r14+-100]
!   if boolIsZero (_temp_3376 ) then goto _Label_3373		(int)
	load	[r14+-100],r1
	loadb	[r1],r1
	cmp	r1,r0
	be	_Label_3373
!	jmp	_Label_3372
_Label_3372:
! THEN...
	mov	3143,r13		! source line 3143
	mov	"\0\0TN",r10
! IF STATEMENT...
	mov	3143,r13		! source line 3143
	mov	"\0\0IF",r10
!   if intIsZero (open) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3381 = open + 20
	load	[r14+12],r1
	add	r1,20,r1
	store	r1,[r14+-88]
!   Data Move: _temp_3380 = *_temp_3381  (sizeInBytes=4)
	load	[r14+-88],r1
	load	[r1],r1
	store	r1,[r14+-92]
!   if intIsZero (_temp_3380) then goto _runtimeErrorNullPointer
	load	[r14+-92],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3382 = _temp_3380 + 32
	load	[r14+-92],r1
	add	r1,32,r1
	store	r1,[r14+-84]
!   Data Move: _temp_3379 = *_temp_3382  (sizeInBytes=4)
	load	[r14+-84],r1
	load	[r1],r1
	store	r1,[r14+-96]
!   if _temp_3379 >= 0 then goto _Label_3378		(int)
	load	[r14+-96],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_3378
!	jmp	_Label_3377
_Label_3377:
! THEN...
	mov	3144,r13		! source line 3144
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_3383 = _StringConst_160
	set	_StringConst_160,r1
	store	r1,[r14+-80]
!   Prepare Argument: offset=8  value=_temp_3383  sizeInBytes=4
	load	[r14+-80],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	3144,r13		! source line 3144
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END IF...
_Label_3378:
! ASSIGNMENT STATEMENT...
	mov	3146,r13		! source line 3146
	mov	"\0\0AS",r10
!   if intIsZero (open) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3385 = open + 20
	load	[r14+12],r1
	add	r1,20,r1
	store	r1,[r14+-72]
!   Data Move: _temp_3384 = *_temp_3385  (sizeInBytes=4)
	load	[r14+-72],r1
	load	[r1],r1
	store	r1,[r14+-76]
!   if intIsZero (_temp_3384) then goto _runtimeErrorNullPointer
	load	[r14+-76],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3386 = _temp_3384 + 36
	load	[r14+-76],r1
	add	r1,36,r1
	store	r1,[r14+-68]
!   Data Move: *_temp_3386 = 0  (sizeInBytes=1)
	mov	0,r1
	load	[r14+-68],r2
	storeb	r1,[r2]
! SEND STATEMENT...
	mov	3147,r13		! source line 3147
	mov	"\0\0SE",r10
!   if intIsZero (open) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3390 = open + 20
	load	[r14+12],r1
	add	r1,20,r1
	store	r1,[r14+-52]
!   Data Move: _temp_3389 = *_temp_3390  (sizeInBytes=4)
	load	[r14+-52],r1
	load	[r1],r1
	store	r1,[r14+-56]
!   if intIsZero (_temp_3389) then goto _runtimeErrorNullPointer
	load	[r14+-56],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3391 = _temp_3389 + 32
	load	[r14+-56],r1
	add	r1,32,r1
	store	r1,[r14+-48]
!   Data Move: _temp_3388 = *_temp_3391  (sizeInBytes=4)
	load	[r14+-48],r1
	load	[r1],r1
	store	r1,[r14+-60]
!   if intIsZero (open) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3394 = open + 20
	load	[r14+12],r1
	add	r1,20,r1
	store	r1,[r14+-36]
!   Data Move: _temp_3393 = *_temp_3394  (sizeInBytes=4)
	load	[r14+-36],r1
	load	[r1],r1
	store	r1,[r14+-40]
!   if intIsZero (_temp_3393) then goto _runtimeErrorNullPointer
	load	[r14+-40],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3395 = _temp_3393 + 20
	load	[r14+-40],r1
	add	r1,20,r1
	store	r1,[r14+-32]
!   Data Move: _temp_3392 = *_temp_3395  (sizeInBytes=4)
	load	[r14+-32],r1
	load	[r1],r1
	store	r1,[r14+-44]
!   _temp_3387 = _temp_3388 + _temp_3392		(int)
	load	[r14+-60],r1
	load	[r14+-44],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-64]
!   if intIsZero (open) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3398 = open + 20
	load	[r14+12],r1
	add	r1,20,r1
	store	r1,[r14+-20]
!   Data Move: _temp_3397 = *_temp_3398  (sizeInBytes=4)
	load	[r14+-20],r1
	load	[r1],r1
	store	r1,[r14+-24]
!   if intIsZero (_temp_3397) then goto _runtimeErrorNullPointer
	load	[r14+-24],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3399 = _temp_3397 + 28
	load	[r14+-24],r1
	add	r1,28,r1
	store	r1,[r14+-16]
!   Data Move: _temp_3396 = *_temp_3399  (sizeInBytes=4)
	load	[r14+-16],r1
	load	[r1],r1
	store	r1,[r14+-28]
!   _temp_3400 = &_P_Kernel_diskDriver
	set	_P_Kernel_diskDriver,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=12  value=_temp_3387  sizeInBytes=4
	load	[r14+-64],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=1  sizeInBytes=4
	mov	1,r1
	store	r1,[r15+8]
!   Prepare Argument: offset=20  value=_temp_3396  sizeInBytes=4
	load	[r14+-28],r1
	store	r1,[r15+12]
!   Send message SynchWriteSector
	load	[r14+-12],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,16,r2
	call	r2
! END IF...
_Label_3373:
! RETURN STATEMENT...
	mov	3142,r13		! source line 3142
	mov	"\0\0RE",r10
	add	r15,120,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_FileManager_6:
	.word	_sourceFileName
	.word	_Label_3401
	.word	8		! total size of parameters
	.word	116		! frame size = 116
	.word	_Label_3402
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_3403
	.word	12
	.word	4
	.word	_Label_3404
	.word	-12
	.word	4
	.word	_Label_3405
	.word	-16
	.word	4
	.word	_Label_3406
	.word	-20
	.word	4
	.word	_Label_3407
	.word	-24
	.word	4
	.word	_Label_3408
	.word	-28
	.word	4
	.word	_Label_3409
	.word	-32
	.word	4
	.word	_Label_3410
	.word	-36
	.word	4
	.word	_Label_3411
	.word	-40
	.word	4
	.word	_Label_3412
	.word	-44
	.word	4
	.word	_Label_3413
	.word	-48
	.word	4
	.word	_Label_3414
	.word	-52
	.word	4
	.word	_Label_3415
	.word	-56
	.word	4
	.word	_Label_3416
	.word	-60
	.word	4
	.word	_Label_3417
	.word	-64
	.word	4
	.word	_Label_3418
	.word	-68
	.word	4
	.word	_Label_3419
	.word	-72
	.word	4
	.word	_Label_3420
	.word	-76
	.word	4
	.word	_Label_3421
	.word	-80
	.word	4
	.word	_Label_3422
	.word	-84
	.word	4
	.word	_Label_3423
	.word	-88
	.word	4
	.word	_Label_3424
	.word	-92
	.word	4
	.word	_Label_3425
	.word	-96
	.word	4
	.word	_Label_3426
	.word	-100
	.word	4
	.word	_Label_3427
	.word	-104
	.word	4
	.word	_Label_3428
	.word	-108
	.word	4
	.word	0
_Label_3401:
	.ascii	"FileManager"
	.ascii	"::"
	.ascii	"Flush\0"
	.align
_Label_3402:
	.ascii	"Pself\0"
	.align
_Label_3403:
	.byte	'P'
	.ascii	"open\0"
	.align
_Label_3404:
	.byte	'?'
	.ascii	"_temp_3400\0"
	.align
_Label_3405:
	.byte	'?'
	.ascii	"_temp_3399\0"
	.align
_Label_3406:
	.byte	'?'
	.ascii	"_temp_3398\0"
	.align
_Label_3407:
	.byte	'?'
	.ascii	"_temp_3397\0"
	.align
_Label_3408:
	.byte	'?'
	.ascii	"_temp_3396\0"
	.align
_Label_3409:
	.byte	'?'
	.ascii	"_temp_3395\0"
	.align
_Label_3410:
	.byte	'?'
	.ascii	"_temp_3394\0"
	.align
_Label_3411:
	.byte	'?'
	.ascii	"_temp_3393\0"
	.align
_Label_3412:
	.byte	'?'
	.ascii	"_temp_3392\0"
	.align
_Label_3413:
	.byte	'?'
	.ascii	"_temp_3391\0"
	.align
_Label_3414:
	.byte	'?'
	.ascii	"_temp_3390\0"
	.align
_Label_3415:
	.byte	'?'
	.ascii	"_temp_3389\0"
	.align
_Label_3416:
	.byte	'?'
	.ascii	"_temp_3388\0"
	.align
_Label_3417:
	.byte	'?'
	.ascii	"_temp_3387\0"
	.align
_Label_3418:
	.byte	'?'
	.ascii	"_temp_3386\0"
	.align
_Label_3419:
	.byte	'?'
	.ascii	"_temp_3385\0"
	.align
_Label_3420:
	.byte	'?'
	.ascii	"_temp_3384\0"
	.align
_Label_3421:
	.byte	'?'
	.ascii	"_temp_3383\0"
	.align
_Label_3422:
	.byte	'?'
	.ascii	"_temp_3382\0"
	.align
_Label_3423:
	.byte	'?'
	.ascii	"_temp_3381\0"
	.align
_Label_3424:
	.byte	'?'
	.ascii	"_temp_3380\0"
	.align
_Label_3425:
	.byte	'?'
	.ascii	"_temp_3379\0"
	.align
_Label_3426:
	.byte	'?'
	.ascii	"_temp_3376\0"
	.align
_Label_3427:
	.byte	'?'
	.ascii	"_temp_3375\0"
	.align
_Label_3428:
	.byte	'?'
	.ascii	"_temp_3374\0"
	.align
! 
! ===============  METHOD SynchRead  ===============
! 
_Method_P_Kernel_FileManager_7:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_FileManager_7,r1
	push	r1
	mov	34,r1
_Label_4114:
	push	r0
	sub	r1,1,r1
	bne	_Label_4114
	mov	3156,r13		! source line 3156
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! SEND STATEMENT...
	mov	3171,r13		! source line 3171
	mov	"\0\0SE",r10
!   _temp_3429 = &fileManagerLock
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-108]
!   Send message Lock
	load	[r14+-108],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! IF STATEMENT...
	mov	3172,r13		! source line 3172
	mov	"\0\0IF",r10
!   if open == 0 then goto _Label_3435		(int)
	load	[r14+12],r1
	mov	0,r2
	cmp	r1,r2
	be	_Label_3435
!   _temp_3434 = 1		(1 byte)
	mov	1,r1
	storeb	r1,[r14+-10]
	jmp	_Label_3436
_Label_3435:
!   _temp_3434 = 0		(1 byte)
	mov	0,r1
	storeb	r1,[r14+-10]
_Label_3436:
!   if _temp_3434 then goto _Label_3433 else goto _Label_3430
	loadb	[r14+-10],r1
	cmp	r1,0
	be	_Label_3430
	jmp	_Label_3433
_Label_3433:
!   if intIsZero (open) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3439 = open + 20
	load	[r14+12],r1
	add	r1,20,r1
	store	r1,[r14+-100]
!   Data Move: _temp_3438 = *_temp_3439  (sizeInBytes=4)
	load	[r14+-100],r1
	load	[r1],r1
	store	r1,[r14+-104]
!   if _temp_3438 == 0 then goto _Label_3440		(int)
	load	[r14+-104],r1
	mov	0,r2
	cmp	r1,r2
	be	_Label_3440
!   _temp_3437 = 1		(1 byte)
	mov	1,r1
	storeb	r1,[r14+-9]
	jmp	_Label_3441
_Label_3440:
!   _temp_3437 = 0		(1 byte)
	mov	0,r1
	storeb	r1,[r14+-9]
_Label_3441:
!   if _temp_3437 then goto _Label_3432 else goto _Label_3430
	loadb	[r14+-9],r1
	cmp	r1,0
	be	_Label_3430
	jmp	_Label_3432
_Label_3432:
!   if intIsZero (open) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3444 = open + 20
	load	[r14+12],r1
	add	r1,20,r1
	store	r1,[r14+-88]
!   Data Move: _temp_3443 = *_temp_3444  (sizeInBytes=4)
	load	[r14+-88],r1
	load	[r1],r1
	store	r1,[r14+-92]
!   if intIsZero (_temp_3443) then goto _runtimeErrorNullPointer
	load	[r14+-92],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3445 = _temp_3443 + 20
	load	[r14+-92],r1
	add	r1,20,r1
	store	r1,[r14+-84]
!   Data Move: _temp_3442 = *_temp_3445  (sizeInBytes=4)
	load	[r14+-84],r1
	load	[r1],r1
	store	r1,[r14+-96]
!   if _temp_3442 >= 0 then goto _Label_3431		(int)
	load	[r14+-96],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_3431
!	jmp	_Label_3430
_Label_3430:
! THEN...
	mov	3173,r13		! source line 3173
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_3446 = _StringConst_161
	set	_StringConst_161,r1
	store	r1,[r14+-80]
!   Prepare Argument: offset=8  value=_temp_3446  sizeInBytes=4
	load	[r14+-80],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	3173,r13		! source line 3173
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END IF...
_Label_3431:
! ASSIGNMENT STATEMENT...
	mov	3175,r13		! source line 3175
	mov	"\0\0AS",r10
!   if intIsZero (open) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3447 = open + 20
	load	[r14+12],r1
	add	r1,20,r1
	store	r1,[r14+-76]
!   Data Move: fcb = *_temp_3447  (sizeInBytes=4)
	load	[r14+-76],r1
	load	[r1],r1
	store	r1,[r14+-128]
! WHILE STATEMENT...
	mov	3176,r13		! source line 3176
	mov	"\0\0WH",r10
_Label_3448:
!   if numBytes <= 0 then goto _Label_3450		(int)
	load	[r14+24],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	ble	_Label_3450
!	jmp	_Label_3449
_Label_3449:
	mov	3176,r13		! source line 3176
	mov	"\0\0WB",r10
! ASSIGNMENT STATEMENT...
	mov	3185,r13		! source line 3185
	mov	"\0\0AS",r10
!   sector = bytePos div 8192		(int)
	load	[r14+20],r1
	mov	8192,r2
	cmp	r2,0
	be	_runtimeErrorZeroDivide
	div	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-112]
! ASSIGNMENT STATEMENT...
	mov	3186,r13		! source line 3186
	mov	"\0\0AS",r10
!   offset = bytePos rem 8192		(int)
	load	[r14+20],r1
	mov	8192,r2
	cmp	r2,0
	be	_runtimeErrorZeroDivide
	rem	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-116]
! IF STATEMENT...
	mov	3190,r13		! source line 3190
	mov	"\0\0IF",r10
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-128],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3454 = fcb + 32
	load	[r14+-128],r1
	add	r1,32,r1
	store	r1,[r14+-68]
!   Data Move: _temp_3453 = *_temp_3454  (sizeInBytes=4)
	load	[r14+-68],r1
	load	[r1],r1
	store	r1,[r14+-72]
!   if _temp_3453 == sector then goto _Label_3452		(int)
	load	[r14+-72],r1
	load	[r14+-112],r2
	cmp	r1,r2
	be	_Label_3452
!	jmp	_Label_3451
_Label_3451:
! THEN...
	mov	3191,r13		! source line 3191
	mov	"\0\0TN",r10
! SEND STATEMENT...
	mov	3191,r13		! source line 3191
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-64]
!   if intIsZero (_temp_3455) then goto _runtimeErrorNullPointer
	load	[r14+-64],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Prepare Argument: offset=12  value=open  sizeInBytes=4
	load	[r14+12],r1
	store	r1,[r15+4]
!   Send message Flush
	load	[r14+-64],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,24,r2
	call	r2
! SEND STATEMENT...
	mov	3193,r13		! source line 3193
	mov	"\0\0SE",r10
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-128],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3458 = fcb + 20
	load	[r14+-128],r1
	add	r1,20,r1
	store	r1,[r14+-52]
!   Data Move: _temp_3457 = *_temp_3458  (sizeInBytes=4)
	load	[r14+-52],r1
	load	[r1],r1
	store	r1,[r14+-56]
!   _temp_3456 = sector + _temp_3457		(int)
	load	[r14+-112],r1
	load	[r14+-56],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-60]
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-128],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3460 = fcb + 28
	load	[r14+-128],r1
	add	r1,28,r1
	store	r1,[r14+-44]
!   Data Move: _temp_3459 = *_temp_3460  (sizeInBytes=4)
	load	[r14+-44],r1
	load	[r1],r1
	store	r1,[r14+-48]
!   _temp_3461 = &_P_Kernel_diskDriver
	set	_P_Kernel_diskDriver,r1
	store	r1,[r14+-40]
!   Prepare Argument: offset=12  value=_temp_3456  sizeInBytes=4
	load	[r14+-60],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=1  sizeInBytes=4
	mov	1,r1
	store	r1,[r15+8]
!   Prepare Argument: offset=20  value=_temp_3459  sizeInBytes=4
	load	[r14+-48],r1
	store	r1,[r15+12]
!   Send message SynchReadSector
	load	[r14+-40],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! ASSIGNMENT STATEMENT...
	mov	3196,r13		! source line 3196
	mov	"\0\0AS",r10
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-128],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3462 = fcb + 32
	load	[r14+-128],r1
	add	r1,32,r1
	store	r1,[r14+-36]
!   Data Move: *_temp_3462 = sector  (sizeInBytes=4)
	load	[r14+-112],r1
	load	[r14+-36],r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	3197,r13		! source line 3197
	mov	"\0\0AS",r10
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-128],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3463 = fcb + 36
	load	[r14+-128],r1
	add	r1,36,r1
	store	r1,[r14+-32]
!   Data Move: *_temp_3463 = 0  (sizeInBytes=1)
	mov	0,r1
	load	[r14+-32],r2
	storeb	r1,[r2]
! END IF...
_Label_3452:
! ASSIGNMENT STATEMENT...
	mov	3199,r13		! source line 3199
	mov	"\0\0AS",r10
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-128],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3465 = fcb + 28
	load	[r14+-128],r1
	add	r1,28,r1
	store	r1,[r14+-24]
!   Data Move: _temp_3464 = *_temp_3465  (sizeInBytes=4)
	load	[r14+-24],r1
	load	[r1],r1
	store	r1,[r14+-28]
!   posInBuffer = _temp_3464 + offset		(int)
	load	[r14+-28],r1
	load	[r14+-116],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-120]
! ASSIGNMENT STATEMENT...
	mov	3200,r13		! source line 3200
	mov	"\0\0AS",r10
!   _temp_3466 = 8192 - offset		(int)
	mov	8192,r1
	load	[r14+-116],r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=numBytes  sizeInBytes=4
	load	[r14+24],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=_temp_3466  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+4]
!   Call the function
	mov	3200,r13		! source line 3200
	mov	"\0\0CA",r10
	call	_P_System_Min
!   Retrieve Result: targetName=bytesToMove  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-124]
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=targetAddr  sizeInBytes=4
	load	[r14+16],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=posInBuffer  sizeInBytes=4
	load	[r14+-120],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=bytesToMove  sizeInBytes=4
	load	[r14+-124],r1
	store	r1,[r15+8]
!   Call the function
	mov	3204,r13		! source line 3204
	mov	"\0\0CE",r10
	call	MemoryCopy
! ASSIGNMENT STATEMENT...
	mov	3205,r13		! source line 3205
	mov	"\0\0AS",r10
!   targetAddr = targetAddr + bytesToMove		(int)
	load	[r14+16],r1
	load	[r14+-124],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+16]
! ASSIGNMENT STATEMENT...
	mov	3206,r13		! source line 3206
	mov	"\0\0AS",r10
!   bytePos = bytePos + bytesToMove		(int)
	load	[r14+20],r1
	load	[r14+-124],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+20]
! ASSIGNMENT STATEMENT...
	mov	3207,r13		! source line 3207
	mov	"\0\0AS",r10
!   numBytes = numBytes - bytesToMove		(int)
	load	[r14+24],r1
	load	[r14+-124],r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+24]
! END WHILE...
	jmp	_Label_3448
_Label_3450:
! SEND STATEMENT...
	mov	3214,r13		! source line 3214
	mov	"\0\0SE",r10
!   _temp_3467 = &fileManagerLock
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-16]
!   Send message Unlock
	load	[r14+-16],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
! RETURN STATEMENT...
	mov	3215,r13		! source line 3215
	mov	"\0\0RE",r10
!   ReturnResult: 1  (sizeInBytes=1)
	mov	1,r1
	storeb	r1,[r14+8]
	add	r15,140,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_FileManager_7:
	.word	_sourceFileName
	.word	_Label_3468
	.word	20		! total size of parameters
	.word	136		! frame size = 136
	.word	_Label_3469
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_3470
	.word	12
	.word	4
	.word	_Label_3471
	.word	16
	.word	4
	.word	_Label_3472
	.word	20
	.word	4
	.word	_Label_3473
	.word	24
	.word	4
	.word	_Label_3474
	.word	-16
	.word	4
	.word	_Label_3475
	.word	-20
	.word	4
	.word	_Label_3476
	.word	-24
	.word	4
	.word	_Label_3477
	.word	-28
	.word	4
	.word	_Label_3478
	.word	-32
	.word	4
	.word	_Label_3479
	.word	-36
	.word	4
	.word	_Label_3480
	.word	-40
	.word	4
	.word	_Label_3481
	.word	-44
	.word	4
	.word	_Label_3482
	.word	-48
	.word	4
	.word	_Label_3483
	.word	-52
	.word	4
	.word	_Label_3484
	.word	-56
	.word	4
	.word	_Label_3485
	.word	-60
	.word	4
	.word	_Label_3486
	.word	-64
	.word	4
	.word	_Label_3487
	.word	-68
	.word	4
	.word	_Label_3488
	.word	-72
	.word	4
	.word	_Label_3489
	.word	-76
	.word	4
	.word	_Label_3490
	.word	-80
	.word	4
	.word	_Label_3491
	.word	-84
	.word	4
	.word	_Label_3492
	.word	-88
	.word	4
	.word	_Label_3493
	.word	-92
	.word	4
	.word	_Label_3494
	.word	-96
	.word	4
	.word	_Label_3495
	.word	-100
	.word	4
	.word	_Label_3496
	.word	-104
	.word	4
	.word	_Label_3497
	.word	-9
	.word	1
	.word	_Label_3498
	.word	-10
	.word	1
	.word	_Label_3499
	.word	-108
	.word	4
	.word	_Label_3500
	.word	-112
	.word	4
	.word	_Label_3501
	.word	-116
	.word	4
	.word	_Label_3502
	.word	-120
	.word	4
	.word	_Label_3503
	.word	-124
	.word	4
	.word	_Label_3504
	.word	-128
	.word	4
	.word	0
_Label_3468:
	.ascii	"FileManager"
	.ascii	"::"
	.ascii	"SynchRead\0"
	.align
_Label_3469:
	.ascii	"Pself\0"
	.align
_Label_3470:
	.byte	'P'
	.ascii	"open\0"
	.align
_Label_3471:
	.byte	'I'
	.ascii	"targetAddr\0"
	.align
_Label_3472:
	.byte	'I'
	.ascii	"bytePos\0"
	.align
_Label_3473:
	.byte	'I'
	.ascii	"numBytes\0"
	.align
_Label_3474:
	.byte	'?'
	.ascii	"_temp_3467\0"
	.align
_Label_3475:
	.byte	'?'
	.ascii	"_temp_3466\0"
	.align
_Label_3476:
	.byte	'?'
	.ascii	"_temp_3465\0"
	.align
_Label_3477:
	.byte	'?'
	.ascii	"_temp_3464\0"
	.align
_Label_3478:
	.byte	'?'
	.ascii	"_temp_3463\0"
	.align
_Label_3479:
	.byte	'?'
	.ascii	"_temp_3462\0"
	.align
_Label_3480:
	.byte	'?'
	.ascii	"_temp_3461\0"
	.align
_Label_3481:
	.byte	'?'
	.ascii	"_temp_3460\0"
	.align
_Label_3482:
	.byte	'?'
	.ascii	"_temp_3459\0"
	.align
_Label_3483:
	.byte	'?'
	.ascii	"_temp_3458\0"
	.align
_Label_3484:
	.byte	'?'
	.ascii	"_temp_3457\0"
	.align
_Label_3485:
	.byte	'?'
	.ascii	"_temp_3456\0"
	.align
_Label_3486:
	.byte	'?'
	.ascii	"_temp_3455\0"
	.align
_Label_3487:
	.byte	'?'
	.ascii	"_temp_3454\0"
	.align
_Label_3488:
	.byte	'?'
	.ascii	"_temp_3453\0"
	.align
_Label_3489:
	.byte	'?'
	.ascii	"_temp_3447\0"
	.align
_Label_3490:
	.byte	'?'
	.ascii	"_temp_3446\0"
	.align
_Label_3491:
	.byte	'?'
	.ascii	"_temp_3445\0"
	.align
_Label_3492:
	.byte	'?'
	.ascii	"_temp_3444\0"
	.align
_Label_3493:
	.byte	'?'
	.ascii	"_temp_3443\0"
	.align
_Label_3494:
	.byte	'?'
	.ascii	"_temp_3442\0"
	.align
_Label_3495:
	.byte	'?'
	.ascii	"_temp_3439\0"
	.align
_Label_3496:
	.byte	'?'
	.ascii	"_temp_3438\0"
	.align
_Label_3497:
	.byte	'C'
	.ascii	"_temp_3437\0"
	.align
_Label_3498:
	.byte	'C'
	.ascii	"_temp_3434\0"
	.align
_Label_3499:
	.byte	'?'
	.ascii	"_temp_3429\0"
	.align
_Label_3500:
	.byte	'I'
	.ascii	"sector\0"
	.align
_Label_3501:
	.byte	'I'
	.ascii	"offset\0"
	.align
_Label_3502:
	.byte	'I'
	.ascii	"posInBuffer\0"
	.align
_Label_3503:
	.byte	'I'
	.ascii	"bytesToMove\0"
	.align
_Label_3504:
	.byte	'P'
	.ascii	"fcb\0"
	.align
! 
! ===============  METHOD SynchWrite  ===============
! 
_Method_P_Kernel_FileManager_8:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_FileManager_8,r1
	push	r1
	mov	36,r1
_Label_4115:
	push	r0
	sub	r1,1,r1
	bne	_Label_4115
	mov	3220,r13		! source line 3220
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! SEND STATEMENT...
	mov	3236,r13		! source line 3236
	mov	"\0\0SE",r10
!   _temp_3505 = &fileManagerLock
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-116]
!   Send message Lock
	load	[r14+-116],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! IF STATEMENT...
	mov	3237,r13		! source line 3237
	mov	"\0\0IF",r10
!   if open == 0 then goto _Label_3511		(int)
	load	[r14+12],r1
	mov	0,r2
	cmp	r1,r2
	be	_Label_3511
!   _temp_3510 = 1		(1 byte)
	mov	1,r1
	storeb	r1,[r14+-10]
	jmp	_Label_3512
_Label_3511:
!   _temp_3510 = 0		(1 byte)
	mov	0,r1
	storeb	r1,[r14+-10]
_Label_3512:
!   if _temp_3510 then goto _Label_3509 else goto _Label_3506
	loadb	[r14+-10],r1
	cmp	r1,0
	be	_Label_3506
	jmp	_Label_3509
_Label_3509:
!   if intIsZero (open) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3515 = open + 20
	load	[r14+12],r1
	add	r1,20,r1
	store	r1,[r14+-108]
!   Data Move: _temp_3514 = *_temp_3515  (sizeInBytes=4)
	load	[r14+-108],r1
	load	[r1],r1
	store	r1,[r14+-112]
!   if _temp_3514 == 0 then goto _Label_3516		(int)
	load	[r14+-112],r1
	mov	0,r2
	cmp	r1,r2
	be	_Label_3516
!   _temp_3513 = 1		(1 byte)
	mov	1,r1
	storeb	r1,[r14+-9]
	jmp	_Label_3517
_Label_3516:
!   _temp_3513 = 0		(1 byte)
	mov	0,r1
	storeb	r1,[r14+-9]
_Label_3517:
!   if _temp_3513 then goto _Label_3508 else goto _Label_3506
	loadb	[r14+-9],r1
	cmp	r1,0
	be	_Label_3506
	jmp	_Label_3508
_Label_3508:
!   if intIsZero (open) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3520 = open + 20
	load	[r14+12],r1
	add	r1,20,r1
	store	r1,[r14+-96]
!   Data Move: _temp_3519 = *_temp_3520  (sizeInBytes=4)
	load	[r14+-96],r1
	load	[r1],r1
	store	r1,[r14+-100]
!   if intIsZero (_temp_3519) then goto _runtimeErrorNullPointer
	load	[r14+-100],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3521 = _temp_3519 + 20
	load	[r14+-100],r1
	add	r1,20,r1
	store	r1,[r14+-92]
!   Data Move: _temp_3518 = *_temp_3521  (sizeInBytes=4)
	load	[r14+-92],r1
	load	[r1],r1
	store	r1,[r14+-104]
!   if _temp_3518 >= 0 then goto _Label_3507		(int)
	load	[r14+-104],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_3507
!	jmp	_Label_3506
_Label_3506:
! THEN...
	mov	3238,r13		! source line 3238
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_3522 = _StringConst_162
	set	_StringConst_162,r1
	store	r1,[r14+-88]
!   Prepare Argument: offset=8  value=_temp_3522  sizeInBytes=4
	load	[r14+-88],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	3238,r13		! source line 3238
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END IF...
_Label_3507:
! ASSIGNMENT STATEMENT...
	mov	3240,r13		! source line 3240
	mov	"\0\0AS",r10
!   if intIsZero (open) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3523 = open + 20
	load	[r14+12],r1
	add	r1,20,r1
	store	r1,[r14+-84]
!   Data Move: fcb = *_temp_3523  (sizeInBytes=4)
	load	[r14+-84],r1
	load	[r1],r1
	store	r1,[r14+-136]
! WHILE STATEMENT...
	mov	3241,r13		! source line 3241
	mov	"\0\0WH",r10
_Label_3524:
!   if numBytes <= 0 then goto _Label_3526		(int)
	load	[r14+24],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	ble	_Label_3526
!	jmp	_Label_3525
_Label_3525:
	mov	3241,r13		! source line 3241
	mov	"\0\0WB",r10
! ASSIGNMENT STATEMENT...
	mov	3250,r13		! source line 3250
	mov	"\0\0AS",r10
!   sector = bytePos div 8192		(int)
	load	[r14+20],r1
	mov	8192,r2
	cmp	r2,0
	be	_runtimeErrorZeroDivide
	div	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-120]
! ASSIGNMENT STATEMENT...
	mov	3251,r13		! source line 3251
	mov	"\0\0AS",r10
!   offset = bytePos rem 8192		(int)
	load	[r14+20],r1
	mov	8192,r2
	cmp	r2,0
	be	_runtimeErrorZeroDivide
	rem	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-124]
! IF STATEMENT...
	mov	3255,r13		! source line 3255
	mov	"\0\0IF",r10
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-136],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3530 = fcb + 32
	load	[r14+-136],r1
	add	r1,32,r1
	store	r1,[r14+-76]
!   Data Move: _temp_3529 = *_temp_3530  (sizeInBytes=4)
	load	[r14+-76],r1
	load	[r1],r1
	store	r1,[r14+-80]
!   if _temp_3529 == sector then goto _Label_3528		(int)
	load	[r14+-80],r1
	load	[r14+-120],r2
	cmp	r1,r2
	be	_Label_3528
!	jmp	_Label_3527
_Label_3527:
! THEN...
	mov	3257,r13		! source line 3257
	mov	"\0\0TN",r10
! SEND STATEMENT...
	mov	3257,r13		! source line 3257
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-72]
!   if intIsZero (_temp_3531) then goto _runtimeErrorNullPointer
	load	[r14+-72],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Prepare Argument: offset=12  value=open  sizeInBytes=4
	load	[r14+12],r1
	store	r1,[r15+4]
!   Send message Flush
	load	[r14+-72],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,24,r2
	call	r2
! END IF...
_Label_3528:
! ASSIGNMENT STATEMENT...
	mov	3259,r13		! source line 3259
	mov	"\0\0AS",r10
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-136],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3533 = fcb + 28
	load	[r14+-136],r1
	add	r1,28,r1
	store	r1,[r14+-64]
!   Data Move: _temp_3532 = *_temp_3533  (sizeInBytes=4)
	load	[r14+-64],r1
	load	[r1],r1
	store	r1,[r14+-68]
!   posInBuffer = _temp_3532 + offset		(int)
	load	[r14+-68],r1
	load	[r14+-124],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-128]
! ASSIGNMENT STATEMENT...
	mov	3260,r13		! source line 3260
	mov	"\0\0AS",r10
!   _temp_3534 = 8192 - offset		(int)
	mov	8192,r1
	load	[r14+-124],r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-60]
!   Prepare Argument: offset=8  value=numBytes  sizeInBytes=4
	load	[r14+24],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=_temp_3534  sizeInBytes=4
	load	[r14+-60],r1
	store	r1,[r15+4]
!   Call the function
	mov	3260,r13		! source line 3260
	mov	"\0\0CA",r10
	call	_P_System_Min
!   Retrieve Result: targetName=bytesToMove  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-132]
! IF STATEMENT...
	mov	3261,r13		! source line 3261
	mov	"\0\0IF",r10
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-136],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3538 = fcb + 32
	load	[r14+-136],r1
	add	r1,32,r1
	store	r1,[r14+-52]
!   Data Move: _temp_3537 = *_temp_3538  (sizeInBytes=4)
	load	[r14+-52],r1
	load	[r1],r1
	store	r1,[r14+-56]
!   if _temp_3537 != sector then goto _Label_3536		(int)
	load	[r14+-56],r1
	load	[r14+-120],r2
	cmp	r1,r2
	bne	_Label_3536
!	jmp	_Label_3535
_Label_3535:
	jmp	_Label_3539
_Label_3536:
! ELSE...
	mov	3263,r13		! source line 3263
	mov	"\0\0EL",r10
! IF STATEMENT...
	mov	3263,r13		! source line 3263
	mov	"\0\0IF",r10
!   if intIsZero (offset) then goto _Label_3542
	load	[r14+-124],r1
	cmp	r1,r0
	be	_Label_3542
	jmp	_Label_3541
_Label_3542:
!   if bytesToMove != 8192 then goto _Label_3541		(int)
	load	[r14+-132],r1
	mov	8192,r2
	cmp	r1,r2
	bne	_Label_3541
!	jmp	_Label_3540
_Label_3540:
	jmp	_Label_3543
_Label_3541:
! ELSE...
	mov	3267,r13		! source line 3267
	mov	"\0\0EL",r10
! SEND STATEMENT...
	mov	3267,r13		! source line 3267
	mov	"\0\0SE",r10
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-136],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3546 = fcb + 20
	load	[r14+-136],r1
	add	r1,20,r1
	store	r1,[r14+-40]
!   Data Move: _temp_3545 = *_temp_3546  (sizeInBytes=4)
	load	[r14+-40],r1
	load	[r1],r1
	store	r1,[r14+-44]
!   _temp_3544 = sector + _temp_3545		(int)
	load	[r14+-120],r1
	load	[r14+-44],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-48]
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-136],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3548 = fcb + 28
	load	[r14+-136],r1
	add	r1,28,r1
	store	r1,[r14+-32]
!   Data Move: _temp_3547 = *_temp_3548  (sizeInBytes=4)
	load	[r14+-32],r1
	load	[r1],r1
	store	r1,[r14+-36]
!   _temp_3549 = &_P_Kernel_diskDriver
	set	_P_Kernel_diskDriver,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=12  value=_temp_3544  sizeInBytes=4
	load	[r14+-48],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=1  sizeInBytes=4
	mov	1,r1
	store	r1,[r15+8]
!   Prepare Argument: offset=20  value=_temp_3547  sizeInBytes=4
	load	[r14+-36],r1
	store	r1,[r15+12]
!   Send message SynchReadSector
	load	[r14+-28],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! END IF...
_Label_3543:
! END IF...
_Label_3539:
! ASSIGNMENT STATEMENT...
	mov	3271,r13		! source line 3271
	mov	"\0\0AS",r10
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-136],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3550 = fcb + 32
	load	[r14+-136],r1
	add	r1,32,r1
	store	r1,[r14+-24]
!   Data Move: *_temp_3550 = sector  (sizeInBytes=4)
	load	[r14+-120],r1
	load	[r14+-24],r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	3272,r13		! source line 3272
	mov	"\0\0AS",r10
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-136],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3551 = fcb + 36
	load	[r14+-136],r1
	add	r1,36,r1
	store	r1,[r14+-20]
!   Data Move: *_temp_3551 = 1  (sizeInBytes=1)
	mov	1,r1
	load	[r14+-20],r2
	storeb	r1,[r2]
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=posInBuffer  sizeInBytes=4
	load	[r14+-128],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=sourceAddr  sizeInBytes=4
	load	[r14+16],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=bytesToMove  sizeInBytes=4
	load	[r14+-132],r1
	store	r1,[r15+8]
!   Call the function
	mov	3276,r13		! source line 3276
	mov	"\0\0CE",r10
	call	MemoryCopy
! ASSIGNMENT STATEMENT...
	mov	3277,r13		! source line 3277
	mov	"\0\0AS",r10
!   sourceAddr = sourceAddr + bytesToMove		(int)
	load	[r14+16],r1
	load	[r14+-132],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+16]
! ASSIGNMENT STATEMENT...
	mov	3278,r13		! source line 3278
	mov	"\0\0AS",r10
!   bytePos = bytePos + bytesToMove		(int)
	load	[r14+20],r1
	load	[r14+-132],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+20]
! ASSIGNMENT STATEMENT...
	mov	3279,r13		! source line 3279
	mov	"\0\0AS",r10
!   numBytes = numBytes - bytesToMove		(int)
	load	[r14+24],r1
	load	[r14+-132],r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+24]
! END WHILE...
	jmp	_Label_3524
_Label_3526:
! SEND STATEMENT...
	mov	3286,r13		! source line 3286
	mov	"\0\0SE",r10
!   _temp_3552 = &fileManagerLock
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-16]
!   Send message Unlock
	load	[r14+-16],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
! RETURN STATEMENT...
	mov	3288,r13		! source line 3288
	mov	"\0\0RE",r10
!   ReturnResult: 1  (sizeInBytes=1)
	mov	1,r1
	storeb	r1,[r14+8]
	add	r15,148,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_FileManager_8:
	.word	_sourceFileName
	.word	_Label_3553
	.word	20		! total size of parameters
	.word	144		! frame size = 144
	.word	_Label_3554
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_3555
	.word	12
	.word	4
	.word	_Label_3556
	.word	16
	.word	4
	.word	_Label_3557
	.word	20
	.word	4
	.word	_Label_3558
	.word	24
	.word	4
	.word	_Label_3559
	.word	-16
	.word	4
	.word	_Label_3560
	.word	-20
	.word	4
	.word	_Label_3561
	.word	-24
	.word	4
	.word	_Label_3562
	.word	-28
	.word	4
	.word	_Label_3563
	.word	-32
	.word	4
	.word	_Label_3564
	.word	-36
	.word	4
	.word	_Label_3565
	.word	-40
	.word	4
	.word	_Label_3566
	.word	-44
	.word	4
	.word	_Label_3567
	.word	-48
	.word	4
	.word	_Label_3568
	.word	-52
	.word	4
	.word	_Label_3569
	.word	-56
	.word	4
	.word	_Label_3570
	.word	-60
	.word	4
	.word	_Label_3571
	.word	-64
	.word	4
	.word	_Label_3572
	.word	-68
	.word	4
	.word	_Label_3573
	.word	-72
	.word	4
	.word	_Label_3574
	.word	-76
	.word	4
	.word	_Label_3575
	.word	-80
	.word	4
	.word	_Label_3576
	.word	-84
	.word	4
	.word	_Label_3577
	.word	-88
	.word	4
	.word	_Label_3578
	.word	-92
	.word	4
	.word	_Label_3579
	.word	-96
	.word	4
	.word	_Label_3580
	.word	-100
	.word	4
	.word	_Label_3581
	.word	-104
	.word	4
	.word	_Label_3582
	.word	-108
	.word	4
	.word	_Label_3583
	.word	-112
	.word	4
	.word	_Label_3584
	.word	-9
	.word	1
	.word	_Label_3585
	.word	-10
	.word	1
	.word	_Label_3586
	.word	-116
	.word	4
	.word	_Label_3587
	.word	-120
	.word	4
	.word	_Label_3588
	.word	-124
	.word	4
	.word	_Label_3589
	.word	-128
	.word	4
	.word	_Label_3590
	.word	-132
	.word	4
	.word	_Label_3591
	.word	-136
	.word	4
	.word	0
_Label_3553:
	.ascii	"FileManager"
	.ascii	"::"
	.ascii	"SynchWrite\0"
	.align
_Label_3554:
	.ascii	"Pself\0"
	.align
_Label_3555:
	.byte	'P'
	.ascii	"open\0"
	.align
_Label_3556:
	.byte	'I'
	.ascii	"sourceAddr\0"
	.align
_Label_3557:
	.byte	'I'
	.ascii	"bytePos\0"
	.align
_Label_3558:
	.byte	'I'
	.ascii	"numBytes\0"
	.align
_Label_3559:
	.byte	'?'
	.ascii	"_temp_3552\0"
	.align
_Label_3560:
	.byte	'?'
	.ascii	"_temp_3551\0"
	.align
_Label_3561:
	.byte	'?'
	.ascii	"_temp_3550\0"
	.align
_Label_3562:
	.byte	'?'
	.ascii	"_temp_3549\0"
	.align
_Label_3563:
	.byte	'?'
	.ascii	"_temp_3548\0"
	.align
_Label_3564:
	.byte	'?'
	.ascii	"_temp_3547\0"
	.align
_Label_3565:
	.byte	'?'
	.ascii	"_temp_3546\0"
	.align
_Label_3566:
	.byte	'?'
	.ascii	"_temp_3545\0"
	.align
_Label_3567:
	.byte	'?'
	.ascii	"_temp_3544\0"
	.align
_Label_3568:
	.byte	'?'
	.ascii	"_temp_3538\0"
	.align
_Label_3569:
	.byte	'?'
	.ascii	"_temp_3537\0"
	.align
_Label_3570:
	.byte	'?'
	.ascii	"_temp_3534\0"
	.align
_Label_3571:
	.byte	'?'
	.ascii	"_temp_3533\0"
	.align
_Label_3572:
	.byte	'?'
	.ascii	"_temp_3532\0"
	.align
_Label_3573:
	.byte	'?'
	.ascii	"_temp_3531\0"
	.align
_Label_3574:
	.byte	'?'
	.ascii	"_temp_3530\0"
	.align
_Label_3575:
	.byte	'?'
	.ascii	"_temp_3529\0"
	.align
_Label_3576:
	.byte	'?'
	.ascii	"_temp_3523\0"
	.align
_Label_3577:
	.byte	'?'
	.ascii	"_temp_3522\0"
	.align
_Label_3578:
	.byte	'?'
	.ascii	"_temp_3521\0"
	.align
_Label_3579:
	.byte	'?'
	.ascii	"_temp_3520\0"
	.align
_Label_3580:
	.byte	'?'
	.ascii	"_temp_3519\0"
	.align
_Label_3581:
	.byte	'?'
	.ascii	"_temp_3518\0"
	.align
_Label_3582:
	.byte	'?'
	.ascii	"_temp_3515\0"
	.align
_Label_3583:
	.byte	'?'
	.ascii	"_temp_3514\0"
	.align
_Label_3584:
	.byte	'C'
	.ascii	"_temp_3513\0"
	.align
_Label_3585:
	.byte	'C'
	.ascii	"_temp_3510\0"
	.align
_Label_3586:
	.byte	'?'
	.ascii	"_temp_3505\0"
	.align
_Label_3587:
	.byte	'I'
	.ascii	"sector\0"
	.align
_Label_3588:
	.byte	'I'
	.ascii	"offset\0"
	.align
_Label_3589:
	.byte	'I'
	.ascii	"posInBuffer\0"
	.align
_Label_3590:
	.byte	'I'
	.ascii	"bytesToMove\0"
	.align
_Label_3591:
	.byte	'P'
	.ascii	"fcb\0"
	.align
! 
! ===============  CLASS FileControlBlock  ===============
! 
! Dispatch Table:
! 
_P_Kernel_FileControlBlock:
	.word	_Label_3592
	jmp	_Method_P_Kernel_FileControlBlock_1	! 4:	Init
	jmp	_Method_P_Kernel_FileControlBlock_2	! 8:	Print
	.word	0
! 
! Class descriptor:
! 
_Label_3592:
	.word	1129070931		! Magic number 0x434c4153 == 'CLAS'
	.word	_Label_3593
	.word	_sourceFileName
	.word	361		! line number
	.word	40		! size of instances, in bytes
	.word	_P_Kernel_FileControlBlock
	.word	_P_List_Listable
	.word	_P_System_Object
	.word	0
_Label_3593:
	.ascii	"FileControlBlock\0"
	.align
! 
! ===============  METHOD Init  ===============
! 
_Method_P_Kernel_FileControlBlock_1:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_FileControlBlock_1,r1
	push	r1
	mov	2,r1
_Label_4116:
	push	r0
	sub	r1,1,r1
	bne	_Label_4116
	mov	3324,r13		! source line 3324
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	3325,r13		! source line 3325
	mov	"\0\0AS",r10
!   numberOfUsers = 0		(4 bytes)
	mov	0,r1
	load	[r14+8],r2
	store	r1,[r2+16]
! ASSIGNMENT STATEMENT...
	mov	3326,r13		! source line 3326
	mov	"\0\0AS",r10
	mov	3326,r13		! source line 3326
	mov	"\0\0SE",r10
!   _temp_3594 = &_P_Kernel_frameManager
	set	_P_Kernel_frameManager,r1
	store	r1,[r14+-12]
!   Send message GetAFrame
	load	[r14+-12],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
!   Retrieve Result: targetName=bufferPtr  sizeInBytes=4
	load	[r15],r1
	load	[r14+8],r2
	store	r1,[r2+28]
! ASSIGNMENT STATEMENT...
	mov	3327,r13		! source line 3327
	mov	"\0\0AS",r10
!   relativeSectorInBuffer = -1		(4 bytes)
	mov	-1,r1
	load	[r14+8],r2
	store	r1,[r2+32]
! ASSIGNMENT STATEMENT...
	mov	3328,r13		! source line 3328
	mov	"\0\0AS",r10
!   bufferIsDirty = 0		(1 byte)
	mov	0,r1
	load	[r14+8],r2
	storeb	r1,[r2+36]
! ASSIGNMENT STATEMENT...
	mov	3329,r13		! source line 3329
	mov	"\0\0AS",r10
!   startingSectorOfFile = -1		(4 bytes)
	mov	-1,r1
	load	[r14+8],r2
	store	r1,[r2+20]
! RETURN STATEMENT...
	mov	3329,r13		! source line 3329
	mov	"\0\0RE",r10
	add	r15,12,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_FileControlBlock_1:
	.word	_sourceFileName
	.word	_Label_3595
	.word	4		! total size of parameters
	.word	8		! frame size = 8
	.word	_Label_3596
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_3597
	.word	-12
	.word	4
	.word	0
_Label_3595:
	.ascii	"FileControlBlock"
	.ascii	"::"
	.ascii	"Init\0"
	.align
_Label_3596:
	.ascii	"Pself\0"
	.align
_Label_3597:
	.byte	'?'
	.ascii	"_temp_3594\0"
	.align
! 
! ===============  METHOD Print  ===============
! 
_Method_P_Kernel_FileControlBlock_2:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_FileControlBlock_2,r1
	push	r1
	mov	7,r1
_Label_4117:
	push	r0
	sub	r1,1,r1
	bne	_Label_4117
	mov	3334,r13		! source line 3334
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   _temp_3598 = _StringConst_163
	set	_StringConst_163,r1
	store	r1,[r14+-32]
!   Prepare Argument: offset=8  value=_temp_3598  sizeInBytes=4
	load	[r14+-32],r1
	store	r1,[r15+0]
!   Call the function
	mov	3335,r13		! source line 3335
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=fcbID  sizeInBytes=4
	load	[r14+8],r1
	load	[r1+12],r1
	store	r1,[r15+0]
!   Call the function
	mov	3336,r13		! source line 3336
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   _temp_3599 = _StringConst_164
	set	_StringConst_164,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=8  value=_temp_3599  sizeInBytes=4
	load	[r14+-28],r1
	store	r1,[r15+0]
!   Call the function
	mov	3337,r13		! source line 3337
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=numberOfUsers  sizeInBytes=4
	load	[r14+8],r1
	load	[r1+16],r1
	store	r1,[r15+0]
!   Call the function
	mov	3338,r13		! source line 3338
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   _temp_3600 = _StringConst_165
	set	_StringConst_165,r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=8  value=_temp_3600  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+0]
!   Call the function
	mov	3339,r13		! source line 3339
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=startingSectorOfFile  sizeInBytes=4
	load	[r14+8],r1
	load	[r1+20],r1
	store	r1,[r15+0]
!   Call the function
	mov	3340,r13		! source line 3340
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   _temp_3601 = _StringConst_166
	set	_StringConst_166,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_3601  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   Call the function
	mov	3341,r13		! source line 3341
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=sizeOfFileInBytes  sizeInBytes=4
	load	[r14+8],r1
	load	[r1+24],r1
	store	r1,[r15+0]
!   Call the function
	mov	3342,r13		! source line 3342
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   _temp_3602 = _StringConst_167
	set	_StringConst_167,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_3602  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+0]
!   Call the function
	mov	3343,r13		! source line 3343
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=bufferPtr  sizeInBytes=4
	load	[r14+8],r1
	load	[r1+28],r1
	store	r1,[r15+0]
!   Call the function
	mov	3344,r13		! source line 3344
	mov	"\0\0CE",r10
	call	printHex
! CALL STATEMENT...
!   _temp_3603 = _StringConst_168
	set	_StringConst_168,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_3603  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	3345,r13		! source line 3345
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=relativeSectorInBuffer  sizeInBytes=4
	load	[r14+8],r1
	load	[r1+32],r1
	store	r1,[r15+0]
!   Call the function
	mov	3346,r13		! source line 3346
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   Call the function
	mov	3347,r13		! source line 3347
	mov	"\0\0CA",r10
	call	_P_System_nl
! RETURN STATEMENT...
	mov	3347,r13		! source line 3347
	mov	"\0\0RE",r10
	add	r15,32,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_FileControlBlock_2:
	.word	_sourceFileName
	.word	_Label_3604
	.word	4		! total size of parameters
	.word	28		! frame size = 28
	.word	_Label_3605
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_3606
	.word	-12
	.word	4
	.word	_Label_3607
	.word	-16
	.word	4
	.word	_Label_3608
	.word	-20
	.word	4
	.word	_Label_3609
	.word	-24
	.word	4
	.word	_Label_3610
	.word	-28
	.word	4
	.word	_Label_3611
	.word	-32
	.word	4
	.word	0
_Label_3604:
	.ascii	"FileControlBlock"
	.ascii	"::"
	.ascii	"Print\0"
	.align
_Label_3605:
	.ascii	"Pself\0"
	.align
_Label_3606:
	.byte	'?'
	.ascii	"_temp_3603\0"
	.align
_Label_3607:
	.byte	'?'
	.ascii	"_temp_3602\0"
	.align
_Label_3608:
	.byte	'?'
	.ascii	"_temp_3601\0"
	.align
_Label_3609:
	.byte	'?'
	.ascii	"_temp_3600\0"
	.align
_Label_3610:
	.byte	'?'
	.ascii	"_temp_3599\0"
	.align
_Label_3611:
	.byte	'?'
	.ascii	"_temp_3598\0"
	.align
! 
! ===============  CLASS OpenFile  ===============
! 
! Dispatch Table:
! 
_P_Kernel_OpenFile:
	.word	_Label_3612
	jmp	_Method_P_Kernel_OpenFile_1	! 4:	Print
	jmp	_Method_P_Kernel_OpenFile_2	! 8:	ReadBytes
	jmp	_Method_P_Kernel_OpenFile_3	! 12:	ReadInt
	jmp	_Method_P_Kernel_OpenFile_4	! 16:	LoadExecutable
	.word	0
! 
! Class descriptor:
! 
_Label_3612:
	.word	1129070931		! Magic number 0x434c4153 == 'CLAS'
	.word	_Label_3613
	.word	_sourceFileName
	.word	378		! line number
	.word	28		! size of instances, in bytes
	.word	_P_Kernel_OpenFile
	.word	_P_List_Listable
	.word	_P_System_Object
	.word	0
_Label_3613:
	.ascii	"OpenFile\0"
	.align
! 
! ===============  METHOD Print  ===============
! 
_Method_P_Kernel_OpenFile_1:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_OpenFile_1,r1
	push	r1
	mov	4,r1
_Label_4118:
	push	r0
	sub	r1,1,r1
	bne	_Label_4118
	mov	3358,r13		! source line 3358
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   _temp_3614 = _StringConst_169
	set	_StringConst_169,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_3614  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   Call the function
	mov	3359,r13		! source line 3359
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=currentPos  sizeInBytes=4
	load	[r14+8],r1
	load	[r1+16],r1
	store	r1,[r15+0]
!   Call the function
	mov	3360,r13		! source line 3360
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   _temp_3615 = _StringConst_170
	set	_StringConst_170,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_3615  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+0]
!   Call the function
	mov	3361,r13		! source line 3361
	mov	"\0\0CE",r10
	call	print
! IF STATEMENT...
	mov	3362,r13		! source line 3362
	mov	"\0\0IF",r10
!   if fcb == 0 then goto _Label_3617		(int)
	load	[r14+8],r1
	load	[r1+20],r1
	mov	0,r2
	cmp	r1,r2
	be	_Label_3617
!	jmp	_Label_3616
_Label_3616:
! THEN...
	mov	3363,r13		! source line 3363
	mov	"\0\0TN",r10
! SEND STATEMENT...
	mov	3363,r13		! source line 3363
	mov	"\0\0SE",r10
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+8],r1
	load	[r1+20],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Send message Print
	load	[r14+8],r1
	load	[r1+20],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
	jmp	_Label_3618
_Label_3617:
! ELSE...
	mov	3365,r13		! source line 3365
	mov	"\0\0EL",r10
! CALL STATEMENT...
!   _temp_3619 = _StringConst_171
	set	_StringConst_171,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_3619  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	3365,r13		! source line 3365
	mov	"\0\0CE",r10
	call	print
! END IF...
_Label_3618:
! RETURN STATEMENT...
	mov	3362,r13		! source line 3362
	mov	"\0\0RE",r10
	add	r15,20,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_OpenFile_1:
	.word	_sourceFileName
	.word	_Label_3620
	.word	4		! total size of parameters
	.word	16		! frame size = 16
	.word	_Label_3621
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_3622
	.word	-12
	.word	4
	.word	_Label_3623
	.word	-16
	.word	4
	.word	_Label_3624
	.word	-20
	.word	4
	.word	0
_Label_3620:
	.ascii	"OpenFile"
	.ascii	"::"
	.ascii	"Print\0"
	.align
_Label_3621:
	.ascii	"Pself\0"
	.align
_Label_3622:
	.byte	'?'
	.ascii	"_temp_3619\0"
	.align
_Label_3623:
	.byte	'?'
	.ascii	"_temp_3615\0"
	.align
_Label_3624:
	.byte	'?'
	.ascii	"_temp_3614\0"
	.align
! 
! ===============  METHOD ReadBytes  ===============
! 
_Method_P_Kernel_OpenFile_2:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_OpenFile_2,r1
	push	r1
	mov	13,r1
_Label_4119:
	push	r0
	sub	r1,1,r1
	bne	_Label_4119
	mov	3371,r13		! source line 3371
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! SEND STATEMENT...
	mov	3381,r13		! source line 3381
	mov	"\0\0SE",r10
!   _temp_3625 = &_P_Kernel_fileManager
	set	_P_Kernel_fileManager,r1
	store	r1,[r14+-36]
!   _temp_3626 = _temp_3625 + 4
	load	[r14+-36],r1
	add	r1,4,r1
	store	r1,[r14+-32]
!   Send message Lock
	load	[r14+-32],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! ASSIGNMENT STATEMENT...
	mov	3382,r13		! source line 3382
	mov	"\0\0AS",r10
!   pos = currentPos		(4 bytes)
	load	[r14+8],r1
	load	[r1+16],r1
	store	r1,[r14+-40]
! ASSIGNMENT STATEMENT...
	mov	3383,r13		! source line 3383
	mov	"\0\0AS",r10
!   currentPos = currentPos + numBytes		(int)
	load	[r14+8],r1
	load	[r1+16],r1
	load	[r14+16],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	load	[r14+8],r2
	store	r1,[r2+16]
! SEND STATEMENT...
	mov	3384,r13		! source line 3384
	mov	"\0\0SE",r10
!   _temp_3627 = &_P_Kernel_fileManager
	set	_P_Kernel_fileManager,r1
	store	r1,[r14+-28]
!   _temp_3628 = _temp_3627 + 4
	load	[r14+-28],r1
	add	r1,4,r1
	store	r1,[r14+-24]
!   Send message Unlock
	load	[r14+-24],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
! RETURN STATEMENT...
	mov	3385,r13		! source line 3385
	mov	"\0\0RE",r10
	mov	3385,r13		! source line 3385
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-20]
!   _temp_3631 = &_P_Kernel_fileManager
	set	_P_Kernel_fileManager,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=12  value=_temp_3630  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=targetAddr  sizeInBytes=4
	load	[r14+12],r1
	store	r1,[r15+8]
!   Prepare Argument: offset=20  value=pos  sizeInBytes=4
	load	[r14+-40],r1
	store	r1,[r15+12]
!   Prepare Argument: offset=24  value=numBytes  sizeInBytes=4
	load	[r14+16],r1
	store	r1,[r15+16]
!   Send message SynchRead
	load	[r14+-16],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,28,r2
	call	r2
!   Retrieve Result: targetName=_temp_3629  sizeInBytes=1
	loadb	[r15],r1
	storeb	r1,[r14+-9]
!   ReturnResult: _temp_3629  (sizeInBytes=1)
	loadb	[r14+-9],r1
	storeb	r1,[r14+8]
	add	r15,56,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_OpenFile_2:
	.word	_sourceFileName
	.word	_Label_3632
	.word	12		! total size of parameters
	.word	52		! frame size = 52
	.word	_Label_3633
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_3634
	.word	12
	.word	4
	.word	_Label_3635
	.word	16
	.word	4
	.word	_Label_3636
	.word	-16
	.word	4
	.word	_Label_3637
	.word	-20
	.word	4
	.word	_Label_3638
	.word	-9
	.word	1
	.word	_Label_3639
	.word	-24
	.word	4
	.word	_Label_3640
	.word	-28
	.word	4
	.word	_Label_3641
	.word	-32
	.word	4
	.word	_Label_3642
	.word	-36
	.word	4
	.word	_Label_3643
	.word	-40
	.word	4
	.word	0
_Label_3632:
	.ascii	"OpenFile"
	.ascii	"::"
	.ascii	"ReadBytes\0"
	.align
_Label_3633:
	.ascii	"Pself\0"
	.align
_Label_3634:
	.byte	'I'
	.ascii	"targetAddr\0"
	.align
_Label_3635:
	.byte	'I'
	.ascii	"numBytes\0"
	.align
_Label_3636:
	.byte	'?'
	.ascii	"_temp_3631\0"
	.align
_Label_3637:
	.byte	'?'
	.ascii	"_temp_3630\0"
	.align
_Label_3638:
	.byte	'C'
	.ascii	"_temp_3629\0"
	.align
_Label_3639:
	.byte	'?'
	.ascii	"_temp_3628\0"
	.align
_Label_3640:
	.byte	'?'
	.ascii	"_temp_3627\0"
	.align
_Label_3641:
	.byte	'?'
	.ascii	"_temp_3626\0"
	.align
_Label_3642:
	.byte	'?'
	.ascii	"_temp_3625\0"
	.align
_Label_3643:
	.byte	'I'
	.ascii	"pos\0"
	.align
! 
! ===============  METHOD ReadInt  ===============
! 
_Method_P_Kernel_OpenFile_3:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_OpenFile_3,r1
	push	r1
	mov	8,r1
_Label_4120:
	push	r0
	sub	r1,1,r1
	bne	_Label_4120
	mov	3390,r13		! source line 3390
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! IF STATEMENT...
	mov	3395,r13		! source line 3395
	mov	"\0\0IF",r10
	mov	3395,r13		! source line 3395
	mov	"\0\0SE",r10
!   _temp_3647 = &i
	add	r14,-28,r1
	store	r1,[r14+-24]
	load	[r14+8],r1
	store	r1,[r14+-20]
!   if intIsZero (_temp_3648) then goto _runtimeErrorNullPointer
	load	[r14+-20],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Prepare Argument: offset=12  value=_temp_3647  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=4  sizeInBytes=4
	mov	4,r1
	store	r1,[r15+8]
!   Send message ReadBytes
	load	[r14+-20],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
!   Retrieve Result: targetName=_temp_3646  sizeInBytes=1
	loadb	[r15],r1
	storeb	r1,[r14+-9]
!   if _temp_3646 then goto _Label_3645 else goto _Label_3644
	loadb	[r14+-9],r1
	cmp	r1,0
	be	_Label_3644
	jmp	_Label_3645
_Label_3644:
! THEN...
	mov	3396,r13		! source line 3396
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_3649 = _StringConst_172
	set	_StringConst_172,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_3649  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	3396,r13		! source line 3396
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END IF...
_Label_3645:
! RETURN STATEMENT...
	mov	3398,r13		! source line 3398
	mov	"\0\0RE",r10
!   ReturnResult: i  (sizeInBytes=4)
	load	[r14+-28],r1
	store	r1,[r14+8]
	add	r15,36,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_OpenFile_3:
	.word	_sourceFileName
	.word	_Label_3650
	.word	4		! total size of parameters
	.word	32		! frame size = 32
	.word	_Label_3651
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_3652
	.word	-16
	.word	4
	.word	_Label_3653
	.word	-20
	.word	4
	.word	_Label_3654
	.word	-24
	.word	4
	.word	_Label_3655
	.word	-9
	.word	1
	.word	_Label_3656
	.word	-28
	.word	4
	.word	0
_Label_3650:
	.ascii	"OpenFile"
	.ascii	"::"
	.ascii	"ReadInt\0"
	.align
_Label_3651:
	.ascii	"Pself\0"
	.align
_Label_3652:
	.byte	'?'
	.ascii	"_temp_3649\0"
	.align
_Label_3653:
	.byte	'?'
	.ascii	"_temp_3648\0"
	.align
_Label_3654:
	.byte	'?'
	.ascii	"_temp_3647\0"
	.align
_Label_3655:
	.byte	'C'
	.ascii	"_temp_3646\0"
	.align
_Label_3656:
	.byte	'I'
	.ascii	"i\0"
	.align
! 
! ===============  METHOD LoadExecutable  ===============
! 
_Method_P_Kernel_OpenFile_4:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_OpenFile_4,r1
	push	r1
	mov	68,r1
_Label_4121:
	push	r0
	sub	r1,1,r1
	bne	_Label_4121
	mov	3403,r13		! source line 3403
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! IF STATEMENT...
	mov	3429,r13		! source line 3429
	mov	"\0\0IF",r10
!   if intIsZero (addrSpace) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3660 = addrSpace + 4
	load	[r14+12],r1
	add	r1,4,r1
	store	r1,[r14+-216]
!   Data Move: _temp_3659 = *_temp_3660  (sizeInBytes=4)
	load	[r14+-216],r1
	load	[r1],r1
	store	r1,[r14+-220]
!   if intIsZero (_temp_3659) then goto _Label_3658
	load	[r14+-220],r1
	cmp	r1,r0
	be	_Label_3658
!	jmp	_Label_3657
_Label_3657:
! THEN...
	mov	3430,r13		! source line 3430
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_3661 = _StringConst_173
	set	_StringConst_173,r1
	store	r1,[r14+-212]
!   Prepare Argument: offset=8  value=_temp_3661  sizeInBytes=4
	load	[r14+-212],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	3430,r13		! source line 3430
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END IF...
_Label_3658:
! IF STATEMENT...
	mov	3434,r13		! source line 3434
	mov	"\0\0IF",r10
	mov	3434,r13		! source line 3434
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-204]
!   if intIsZero (_temp_3665) then goto _runtimeErrorNullPointer
	load	[r14+-204],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Send message ReadInt
	load	[r14+-204],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
!   Retrieve Result: targetName=_temp_3664  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-208]
!   if _temp_3664 == 1112300152 then goto _Label_3663		(int)
	load	[r14+-208],r1
	set	1112300152,r2
	cmp	r1,r2
	be	_Label_3663
!	jmp	_Label_3662
_Label_3662:
! THEN...
	mov	3435,r13		! source line 3435
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_3666 = _StringConst_174
	set	_StringConst_174,r1
	store	r1,[r14+-200]
!   Prepare Argument: offset=8  value=_temp_3666  sizeInBytes=4
	load	[r14+-200],r1
	store	r1,[r15+0]
!   Call the function
	mov	3435,r13		! source line 3435
	mov	"\0\0CE",r10
	call	print
! RETURN STATEMENT...
	mov	3436,r13		! source line 3436
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,276,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_3663:
! ASSIGNMENT STATEMENT...
	mov	3440,r13		! source line 3440
	mov	"\0\0AS",r10
	mov	3440,r13		! source line 3440
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-196]
!   if intIsZero (_temp_3667) then goto _runtimeErrorNullPointer
	load	[r14+-196],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Send message ReadInt
	load	[r14+-196],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
!   Retrieve Result: targetName=textSize  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-232]
! ASSIGNMENT STATEMENT...
	mov	3441,r13		! source line 3441
	mov	"\0\0AS",r10
	mov	3441,r13		! source line 3441
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-192]
!   if intIsZero (_temp_3668) then goto _runtimeErrorNullPointer
	load	[r14+-192],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Send message ReadInt
	load	[r14+-192],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
!   Retrieve Result: targetName=dataSize  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-236]
! ASSIGNMENT STATEMENT...
	mov	3442,r13		! source line 3442
	mov	"\0\0AS",r10
	mov	3442,r13		! source line 3442
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-188]
!   if intIsZero (_temp_3669) then goto _runtimeErrorNullPointer
	load	[r14+-188],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Send message ReadInt
	load	[r14+-188],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
!   Retrieve Result: targetName=bssSize  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-240]
! ASSIGNMENT STATEMENT...
	mov	3443,r13		! source line 3443
	mov	"\0\0AS",r10
	mov	3443,r13		! source line 3443
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-184]
!   if intIsZero (_temp_3670) then goto _runtimeErrorNullPointer
	load	[r14+-184],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Send message ReadInt
	load	[r14+-184],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
!   Retrieve Result: targetName=textStart  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-244]
! ASSIGNMENT STATEMENT...
	mov	3444,r13		! source line 3444
	mov	"\0\0AS",r10
	mov	3444,r13		! source line 3444
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-180]
!   if intIsZero (_temp_3671) then goto _runtimeErrorNullPointer
	load	[r14+-180],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Send message ReadInt
	load	[r14+-180],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
!   Retrieve Result: targetName=dataStart  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-248]
! ASSIGNMENT STATEMENT...
	mov	3445,r13		! source line 3445
	mov	"\0\0AS",r10
	mov	3445,r13		! source line 3445
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-176]
!   if intIsZero (_temp_3672) then goto _runtimeErrorNullPointer
	load	[r14+-176],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Send message ReadInt
	load	[r14+-176],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
!   Retrieve Result: targetName=bssStart  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-252]
! IF STATEMENT...
	mov	3448,r13		! source line 3448
	mov	"\0\0IF",r10
!   _temp_3675 = textSize rem 8192		(int)
	load	[r14+-232],r1
	mov	8192,r2
	cmp	r2,0
	be	_runtimeErrorZeroDivide
	rem	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-172]
!   if intIsZero (_temp_3675) then goto _Label_3674
	load	[r14+-172],r1
	cmp	r1,r0
	be	_Label_3674
!	jmp	_Label_3673
_Label_3673:
! THEN...
	mov	3449,r13		! source line 3449
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_3676 = _StringConst_175
	set	_StringConst_175,r1
	store	r1,[r14+-168]
!   Prepare Argument: offset=8  value=_temp_3676  sizeInBytes=4
	load	[r14+-168],r1
	store	r1,[r15+0]
!   Call the function
	mov	3449,r13		! source line 3449
	mov	"\0\0CE",r10
	call	print
! RETURN STATEMENT...
	mov	3450,r13		! source line 3450
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,276,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_3674:
! ASSIGNMENT STATEMENT...
	mov	3452,r13		! source line 3452
	mov	"\0\0AS",r10
!   textSizeInPages = textSize div 8192		(int)
	load	[r14+-232],r1
	mov	8192,r2
	cmp	r2,0
	be	_runtimeErrorZeroDivide
	div	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-260]
! IF STATEMENT...
	mov	3456,r13		! source line 3456
	mov	"\0\0IF",r10
!   if intIsZero (textStart) then goto _Label_3678
	load	[r14+-244],r1
	cmp	r1,r0
	be	_Label_3678
!	jmp	_Label_3677
_Label_3677:
! THEN...
	mov	3457,r13		! source line 3457
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_3679 = _StringConst_176
	set	_StringConst_176,r1
	store	r1,[r14+-164]
!   Prepare Argument: offset=8  value=_temp_3679  sizeInBytes=4
	load	[r14+-164],r1
	store	r1,[r15+0]
!   Call the function
	mov	3457,r13		! source line 3457
	mov	"\0\0CE",r10
	call	print
! RETURN STATEMENT...
	mov	3458,r13		! source line 3458
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,276,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_3678:
! IF STATEMENT...
	mov	3462,r13		! source line 3462
	mov	"\0\0IF",r10
!   _temp_3682 = dataSize rem 8192		(int)
	load	[r14+-236],r1
	mov	8192,r2
	cmp	r2,0
	be	_runtimeErrorZeroDivide
	rem	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-160]
!   if intIsZero (_temp_3682) then goto _Label_3681
	load	[r14+-160],r1
	cmp	r1,r0
	be	_Label_3681
!	jmp	_Label_3680
_Label_3680:
! THEN...
	mov	3463,r13		! source line 3463
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_3683 = _StringConst_177
	set	_StringConst_177,r1
	store	r1,[r14+-156]
!   Prepare Argument: offset=8  value=_temp_3683  sizeInBytes=4
	load	[r14+-156],r1
	store	r1,[r15+0]
!   Call the function
	mov	3463,r13		! source line 3463
	mov	"\0\0CE",r10
	call	print
! RETURN STATEMENT...
	mov	3464,r13		! source line 3464
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,276,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_3681:
! IF STATEMENT...
	mov	3466,r13		! source line 3466
	mov	"\0\0IF",r10
!   _temp_3686 = textStart + textSize		(int)
	load	[r14+-244],r1
	load	[r14+-232],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-152]
!   if dataStart == _temp_3686 then goto _Label_3685		(int)
	load	[r14+-248],r1
	load	[r14+-152],r2
	cmp	r1,r2
	be	_Label_3685
!	jmp	_Label_3684
_Label_3684:
! THEN...
	mov	3467,r13		! source line 3467
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_3687 = _StringConst_178
	set	_StringConst_178,r1
	store	r1,[r14+-148]
!   Prepare Argument: offset=8  value=_temp_3687  sizeInBytes=4
	load	[r14+-148],r1
	store	r1,[r15+0]
!   Call the function
	mov	3467,r13		! source line 3467
	mov	"\0\0CE",r10
	call	print
! RETURN STATEMENT...
	mov	3468,r13		! source line 3468
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,276,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_3685:
! ASSIGNMENT STATEMENT...
	mov	3470,r13		! source line 3470
	mov	"\0\0AS",r10
!   dataSizeInPages = dataSize div 8192		(int)
	load	[r14+-236],r1
	mov	8192,r2
	cmp	r2,0
	be	_runtimeErrorZeroDivide
	div	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-264]
! IF STATEMENT...
	mov	3473,r13		! source line 3473
	mov	"\0\0IF",r10
!   _temp_3690 = bssSize rem 8192		(int)
	load	[r14+-240],r1
	mov	8192,r2
	cmp	r2,0
	be	_runtimeErrorZeroDivide
	rem	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-144]
!   if intIsZero (_temp_3690) then goto _Label_3689
	load	[r14+-144],r1
	cmp	r1,r0
	be	_Label_3689
!	jmp	_Label_3688
_Label_3688:
! THEN...
	mov	3474,r13		! source line 3474
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_3691 = _StringConst_179
	set	_StringConst_179,r1
	store	r1,[r14+-140]
!   Prepare Argument: offset=8  value=_temp_3691  sizeInBytes=4
	load	[r14+-140],r1
	store	r1,[r15+0]
!   Call the function
	mov	3474,r13		! source line 3474
	mov	"\0\0CE",r10
	call	print
! RETURN STATEMENT...
	mov	3475,r13		! source line 3475
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,276,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_3689:
! IF STATEMENT...
	mov	3477,r13		! source line 3477
	mov	"\0\0IF",r10
!   _temp_3694 = dataStart + dataSize		(int)
	load	[r14+-248],r1
	load	[r14+-236],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-136]
!   if bssStart == _temp_3694 then goto _Label_3693		(int)
	load	[r14+-252],r1
	load	[r14+-136],r2
	cmp	r1,r2
	be	_Label_3693
!	jmp	_Label_3692
_Label_3692:
! THEN...
	mov	3478,r13		! source line 3478
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_3695 = _StringConst_180
	set	_StringConst_180,r1
	store	r1,[r14+-132]
!   Prepare Argument: offset=8  value=_temp_3695  sizeInBytes=4
	load	[r14+-132],r1
	store	r1,[r15+0]
!   Call the function
	mov	3478,r13		! source line 3478
	mov	"\0\0CE",r10
	call	print
! RETURN STATEMENT...
	mov	3479,r13		! source line 3479
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,276,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_3693:
! ASSIGNMENT STATEMENT...
	mov	3481,r13		! source line 3481
	mov	"\0\0AS",r10
!   bssSizeInPages = bssSize div 8192		(int)
	load	[r14+-240],r1
	mov	8192,r2
	cmp	r2,0
	be	_runtimeErrorZeroDivide
	div	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-268]
! ASSIGNMENT STATEMENT...
	mov	3484,r13		! source line 3484
	mov	"\0\0AS",r10
!   _temp_3698 = textSizeInPages + dataSizeInPages		(int)
	load	[r14+-260],r1
	load	[r14+-264],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-120]
!   _temp_3697 = _temp_3698 + bssSizeInPages		(int)
	load	[r14+-120],r1
	load	[r14+-268],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-124]
!   _temp_3696 = _temp_3697 + 1		(int)
	load	[r14+-124],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-128]
!   i = _temp_3696 + 0		(int)
	load	[r14+-128],r1
	mov	0,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-256]
! IF STATEMENT...
	mov	3499,r13		! source line 3499
	mov	"\0\0IF",r10
!   if i <= 20 then goto _Label_3700		(int)
	load	[r14+-256],r1
	mov	20,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	ble	_Label_3700
!	jmp	_Label_3699
_Label_3699:
! THEN...
	mov	3500,r13		! source line 3500
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_3701 = _StringConst_181
	set	_StringConst_181,r1
	store	r1,[r14+-116]
!   Prepare Argument: offset=8  value=_temp_3701  sizeInBytes=4
	load	[r14+-116],r1
	store	r1,[r15+0]
!   Call the function
	mov	3500,r13		! source line 3500
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_3702 = _StringConst_182
	set	_StringConst_182,r1
	store	r1,[r14+-112]
!   Prepare Argument: offset=8  value=_temp_3702  sizeInBytes=4
	load	[r14+-112],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=i  sizeInBytes=4
	load	[r14+-256],r1
	store	r1,[r15+4]
!   Call the function
	mov	3501,r13		! source line 3501
	mov	"\0\0CA",r10
	call	_P_System_printIntVar
! CALL STATEMENT...
!   _temp_3703 = _StringConst_183
	set	_StringConst_183,r1
	store	r1,[r14+-108]
!   Prepare Argument: offset=8  value=_temp_3703  sizeInBytes=4
	load	[r14+-108],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=20  sizeInBytes=4
	mov	20,r1
	store	r1,[r15+4]
!   Call the function
	mov	3502,r13		! source line 3502
	mov	"\0\0CA",r10
	call	_P_System_printIntVar
! RETURN STATEMENT...
	mov	3503,r13		! source line 3503
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,276,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_3700:
! SEND STATEMENT...
	mov	3506,r13		! source line 3506
	mov	"\0\0SE",r10
!   _temp_3704 = &_P_Kernel_frameManager
	set	_P_Kernel_frameManager,r1
	store	r1,[r14+-104]
!   Prepare Argument: offset=12  value=addrSpace  sizeInBytes=4
	load	[r14+12],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=i  sizeInBytes=4
	load	[r14+-256],r1
	store	r1,[r15+8]
!   Send message GetNewFrames
	load	[r14+-104],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,16,r2
	call	r2
! IF STATEMENT...
	mov	3512,r13		! source line 3512
	mov	"\0\0IF",r10
	mov	3512,r13		! source line 3512
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-96]
!   if intIsZero (_temp_3708) then goto _runtimeErrorNullPointer
	load	[r14+-96],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Send message ReadInt
	load	[r14+-96],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
!   Retrieve Result: targetName=_temp_3707  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-100]
!   if _temp_3707 == 707406378 then goto _Label_3706		(int)
	load	[r14+-100],r1
	set	707406378,r2
	cmp	r1,r2
	be	_Label_3706
!	jmp	_Label_3705
_Label_3705:
! THEN...
	mov	3513,r13		! source line 3513
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_3709 = _StringConst_184
	set	_StringConst_184,r1
	store	r1,[r14+-92]
!   Prepare Argument: offset=8  value=_temp_3709  sizeInBytes=4
	load	[r14+-92],r1
	store	r1,[r15+0]
!   Call the function
	mov	3513,r13		! source line 3513
	mov	"\0\0CE",r10
	call	print
! SEND STATEMENT...
	mov	3514,r13		! source line 3514
	mov	"\0\0SE",r10
!   _temp_3710 = &_P_Kernel_frameManager
	set	_P_Kernel_frameManager,r1
	store	r1,[r14+-88]
!   Prepare Argument: offset=12  value=addrSpace  sizeInBytes=4
	load	[r14+12],r1
	store	r1,[r15+4]
!   Send message ReturnAllFrames
	load	[r14+-88],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,20,r2
	call	r2
! RETURN STATEMENT...
	mov	3515,r13		! source line 3515
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,276,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_3706:
! ASSIGNMENT STATEMENT...
	mov	3519,r13		! source line 3519
	mov	"\0\0AS",r10
!   nextVirtPage = textStart div 8192		(int)
	load	[r14+-244],r1
	mov	8192,r2
	cmp	r2,0
	be	_runtimeErrorZeroDivide
	div	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-224]
! FOR STATEMENT...
	mov	3520,r13		! source line 3520
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_3715 = 1		(4 bytes)
	mov	1,r1
	store	r1,[r14+-84]
!   Calculate and save the FOR-LOOP ending value
!   _temp_3716 = textSizeInPages		(4 bytes)
	load	[r14+-260],r1
	store	r1,[r14+-80]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_3715  (sizeInBytes=4)
	load	[r14+-84],r1
	store	r1,[r14+-256]
_Label_3711:
!   Perform the FOR-LOOP termination test
!   if i > _temp_3716 then goto _Label_3714		
	load	[r14+-256],r1
	load	[r14+-80],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_3714
_Label_3712:
	mov	3520,r13		! source line 3520
	mov	"\0\0FB",r10
! ASSIGNMENT STATEMENT...
	mov	3521,r13		! source line 3521
	mov	"\0\0AS",r10
	mov	3521,r13		! source line 3521
	mov	"\0\0SE",r10
!   if intIsZero (addrSpace) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Prepare Argument: offset=12  value=nextVirtPage  sizeInBytes=4
	load	[r14+-224],r1
	store	r1,[r15+4]
!   Send message ExtractFrameAddr
	load	[r14+12],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
!   Retrieve Result: targetName=addr  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-228]
! IF STATEMENT...
	mov	3524,r13		! source line 3524
	mov	"\0\0IF",r10
	mov	3524,r13		! source line 3524
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-76]
!   if intIsZero (_temp_3720) then goto _runtimeErrorNullPointer
	load	[r14+-76],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Prepare Argument: offset=12  value=addr  sizeInBytes=4
	load	[r14+-228],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=8192  sizeInBytes=4
	mov	8192,r1
	store	r1,[r15+8]
!   Send message ReadBytes
	load	[r14+-76],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
!   Retrieve Result: targetName=_temp_3719  sizeInBytes=1
	loadb	[r15],r1
	storeb	r1,[r14+-10]
!   if _temp_3719 then goto _Label_3718 else goto _Label_3717
	loadb	[r14+-10],r1
	cmp	r1,0
	be	_Label_3717
	jmp	_Label_3718
_Label_3717:
! THEN...
	mov	3525,r13		! source line 3525
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_3721 = _StringConst_185
	set	_StringConst_185,r1
	store	r1,[r14+-72]
!   Prepare Argument: offset=8  value=_temp_3721  sizeInBytes=4
	load	[r14+-72],r1
	store	r1,[r15+0]
!   Call the function
	mov	3525,r13		! source line 3525
	mov	"\0\0CE",r10
	call	print
! SEND STATEMENT...
	mov	3526,r13		! source line 3526
	mov	"\0\0SE",r10
!   _temp_3722 = &_P_Kernel_frameManager
	set	_P_Kernel_frameManager,r1
	store	r1,[r14+-68]
!   Prepare Argument: offset=12  value=addrSpace  sizeInBytes=4
	load	[r14+12],r1
	store	r1,[r15+4]
!   Send message ReturnAllFrames
	load	[r14+-68],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,20,r2
	call	r2
! RETURN STATEMENT...
	mov	3527,r13		! source line 3527
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,276,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_3718:
! SEND STATEMENT...
	mov	3529,r13		! source line 3529
	mov	"\0\0SE",r10
!   if intIsZero (addrSpace) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Prepare Argument: offset=12  value=nextVirtPage  sizeInBytes=4
	load	[r14+-224],r1
	store	r1,[r15+4]
!   Send message ClearWritable
	load	[r14+12],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,64,r2
	call	r2
! ASSIGNMENT STATEMENT...
	mov	3530,r13		! source line 3530
	mov	"\0\0AS",r10
!   nextVirtPage = nextVirtPage + 1		(int)
	load	[r14+-224],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-224]
!   Increment the FOR-LOOP index variable and jump back
_Label_3713:
!   i = i + 1
	load	[r14+-256],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-256]
	jmp	_Label_3711
! END FOR
_Label_3714:
! IF STATEMENT...
	mov	3534,r13		! source line 3534
	mov	"\0\0IF",r10
	mov	3534,r13		! source line 3534
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-60]
!   if intIsZero (_temp_3726) then goto _runtimeErrorNullPointer
	load	[r14+-60],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Send message ReadInt
	load	[r14+-60],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
!   Retrieve Result: targetName=_temp_3725  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-64]
!   if _temp_3725 == 707406378 then goto _Label_3724		(int)
	load	[r14+-64],r1
	set	707406378,r2
	cmp	r1,r2
	be	_Label_3724
!	jmp	_Label_3723
_Label_3723:
! THEN...
	mov	3535,r13		! source line 3535
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_3727 = _StringConst_186
	set	_StringConst_186,r1
	store	r1,[r14+-56]
!   Prepare Argument: offset=8  value=_temp_3727  sizeInBytes=4
	load	[r14+-56],r1
	store	r1,[r15+0]
!   Call the function
	mov	3535,r13		! source line 3535
	mov	"\0\0CE",r10
	call	print
! SEND STATEMENT...
	mov	3536,r13		! source line 3536
	mov	"\0\0SE",r10
!   _temp_3728 = &_P_Kernel_frameManager
	set	_P_Kernel_frameManager,r1
	store	r1,[r14+-52]
!   Prepare Argument: offset=12  value=addrSpace  sizeInBytes=4
	load	[r14+12],r1
	store	r1,[r15+4]
!   Send message ReturnAllFrames
	load	[r14+-52],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,20,r2
	call	r2
! RETURN STATEMENT...
	mov	3537,r13		! source line 3537
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,276,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_3724:
! FOR STATEMENT...
	mov	3541,r13		! source line 3541
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_3733 = 1		(4 bytes)
	mov	1,r1
	store	r1,[r14+-48]
!   Calculate and save the FOR-LOOP ending value
!   _temp_3734 = dataSizeInPages		(4 bytes)
	load	[r14+-264],r1
	store	r1,[r14+-44]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_3733  (sizeInBytes=4)
	load	[r14+-48],r1
	store	r1,[r14+-256]
_Label_3729:
!   Perform the FOR-LOOP termination test
!   if i > _temp_3734 then goto _Label_3732		
	load	[r14+-256],r1
	load	[r14+-44],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_3732
_Label_3730:
	mov	3541,r13		! source line 3541
	mov	"\0\0FB",r10
! ASSIGNMENT STATEMENT...
	mov	3542,r13		! source line 3542
	mov	"\0\0AS",r10
	mov	3542,r13		! source line 3542
	mov	"\0\0SE",r10
!   if intIsZero (addrSpace) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Prepare Argument: offset=12  value=nextVirtPage  sizeInBytes=4
	load	[r14+-224],r1
	store	r1,[r15+4]
!   Send message ExtractFrameAddr
	load	[r14+12],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
!   Retrieve Result: targetName=addr  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-228]
! IF STATEMENT...
	mov	3545,r13		! source line 3545
	mov	"\0\0IF",r10
	mov	3545,r13		! source line 3545
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-40]
!   if intIsZero (_temp_3738) then goto _runtimeErrorNullPointer
	load	[r14+-40],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Prepare Argument: offset=12  value=addr  sizeInBytes=4
	load	[r14+-228],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=8192  sizeInBytes=4
	mov	8192,r1
	store	r1,[r15+8]
!   Send message ReadBytes
	load	[r14+-40],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
!   Retrieve Result: targetName=_temp_3737  sizeInBytes=1
	loadb	[r15],r1
	storeb	r1,[r14+-9]
!   if _temp_3737 then goto _Label_3736 else goto _Label_3735
	loadb	[r14+-9],r1
	cmp	r1,0
	be	_Label_3735
	jmp	_Label_3736
_Label_3735:
! THEN...
	mov	3546,r13		! source line 3546
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_3739 = _StringConst_187
	set	_StringConst_187,r1
	store	r1,[r14+-36]
!   Prepare Argument: offset=8  value=_temp_3739  sizeInBytes=4
	load	[r14+-36],r1
	store	r1,[r15+0]
!   Call the function
	mov	3546,r13		! source line 3546
	mov	"\0\0CE",r10
	call	print
! SEND STATEMENT...
	mov	3547,r13		! source line 3547
	mov	"\0\0SE",r10
!   _temp_3740 = &_P_Kernel_frameManager
	set	_P_Kernel_frameManager,r1
	store	r1,[r14+-32]
!   Prepare Argument: offset=12  value=addrSpace  sizeInBytes=4
	load	[r14+12],r1
	store	r1,[r15+4]
!   Send message ReturnAllFrames
	load	[r14+-32],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,20,r2
	call	r2
! RETURN STATEMENT...
	mov	3548,r13		! source line 3548
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,276,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_3736:
! ASSIGNMENT STATEMENT...
	mov	3550,r13		! source line 3550
	mov	"\0\0AS",r10
!   nextVirtPage = nextVirtPage + 1		(int)
	load	[r14+-224],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-224]
!   Increment the FOR-LOOP index variable and jump back
_Label_3731:
!   i = i + 1
	load	[r14+-256],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-256]
	jmp	_Label_3729
! END FOR
_Label_3732:
! IF STATEMENT...
	mov	3554,r13		! source line 3554
	mov	"\0\0IF",r10
	mov	3554,r13		! source line 3554
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-24]
!   if intIsZero (_temp_3744) then goto _runtimeErrorNullPointer
	load	[r14+-24],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Send message ReadInt
	load	[r14+-24],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
!   Retrieve Result: targetName=_temp_3743  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-28]
!   if _temp_3743 == 707406378 then goto _Label_3742		(int)
	load	[r14+-28],r1
	set	707406378,r2
	cmp	r1,r2
	be	_Label_3742
!	jmp	_Label_3741
_Label_3741:
! THEN...
	mov	3555,r13		! source line 3555
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_3745 = _StringConst_188
	set	_StringConst_188,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_3745  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   Call the function
	mov	3555,r13		! source line 3555
	mov	"\0\0CE",r10
	call	print
! SEND STATEMENT...
	mov	3556,r13		! source line 3556
	mov	"\0\0SE",r10
!   _temp_3746 = &_P_Kernel_frameManager
	set	_P_Kernel_frameManager,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=12  value=addrSpace  sizeInBytes=4
	load	[r14+12],r1
	store	r1,[r15+4]
!   Send message ReturnAllFrames
	load	[r14+-16],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,20,r2
	call	r2
! RETURN STATEMENT...
	mov	3557,r13		! source line 3557
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,276,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_3742:
! ASSIGNMENT STATEMENT...
	mov	3561,r13		! source line 3561
	mov	"\0\0AS",r10
	mov	3561,r13		! source line 3561
	mov	"\0\0SE",r10
!   if intIsZero (addrSpace) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Prepare Argument: offset=12  value=nextVirtPage  sizeInBytes=4
	load	[r14+-224],r1
	store	r1,[r15+4]
!   Send message ExtractFrameAddr
	load	[r14+12],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
!   Retrieve Result: targetName=addr  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-228]
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=addr  sizeInBytes=4
	load	[r14+-228],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=bssSize  sizeInBytes=4
	load	[r14+-240],r1
	store	r1,[r15+4]
!   Call the function
	mov	3565,r13		! source line 3565
	mov	"\0\0CE",r10
	call	MemoryZero
! RETURN STATEMENT...
	mov	3568,r13		! source line 3568
	mov	"\0\0RE",r10
!   ReturnResult: textStart  (sizeInBytes=4)
	load	[r14+-244],r1
	store	r1,[r14+8]
	add	r15,276,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_OpenFile_4:
	.word	_sourceFileName
	.word	_Label_3747
	.word	8		! total size of parameters
	.word	272		! frame size = 272
	.word	_Label_3748
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_3749
	.word	12
	.word	4
	.word	_Label_3750
	.word	-16
	.word	4
	.word	_Label_3751
	.word	-20
	.word	4
	.word	_Label_3752
	.word	-24
	.word	4
	.word	_Label_3753
	.word	-28
	.word	4
	.word	_Label_3754
	.word	-32
	.word	4
	.word	_Label_3755
	.word	-36
	.word	4
	.word	_Label_3756
	.word	-40
	.word	4
	.word	_Label_3757
	.word	-9
	.word	1
	.word	_Label_3758
	.word	-44
	.word	4
	.word	_Label_3759
	.word	-48
	.word	4
	.word	_Label_3760
	.word	-52
	.word	4
	.word	_Label_3761
	.word	-56
	.word	4
	.word	_Label_3762
	.word	-60
	.word	4
	.word	_Label_3763
	.word	-64
	.word	4
	.word	_Label_3764
	.word	-68
	.word	4
	.word	_Label_3765
	.word	-72
	.word	4
	.word	_Label_3766
	.word	-76
	.word	4
	.word	_Label_3767
	.word	-10
	.word	1
	.word	_Label_3768
	.word	-80
	.word	4
	.word	_Label_3769
	.word	-84
	.word	4
	.word	_Label_3770
	.word	-88
	.word	4
	.word	_Label_3771
	.word	-92
	.word	4
	.word	_Label_3772
	.word	-96
	.word	4
	.word	_Label_3773
	.word	-100
	.word	4
	.word	_Label_3774
	.word	-104
	.word	4
	.word	_Label_3775
	.word	-108
	.word	4
	.word	_Label_3776
	.word	-112
	.word	4
	.word	_Label_3777
	.word	-116
	.word	4
	.word	_Label_3778
	.word	-120
	.word	4
	.word	_Label_3779
	.word	-124
	.word	4
	.word	_Label_3780
	.word	-128
	.word	4
	.word	_Label_3781
	.word	-132
	.word	4
	.word	_Label_3782
	.word	-136
	.word	4
	.word	_Label_3783
	.word	-140
	.word	4
	.word	_Label_3784
	.word	-144
	.word	4
	.word	_Label_3785
	.word	-148
	.word	4
	.word	_Label_3786
	.word	-152
	.word	4
	.word	_Label_3787
	.word	-156
	.word	4
	.word	_Label_3788
	.word	-160
	.word	4
	.word	_Label_3789
	.word	-164
	.word	4
	.word	_Label_3790
	.word	-168
	.word	4
	.word	_Label_3791
	.word	-172
	.word	4
	.word	_Label_3792
	.word	-176
	.word	4
	.word	_Label_3793
	.word	-180
	.word	4
	.word	_Label_3794
	.word	-184
	.word	4
	.word	_Label_3795
	.word	-188
	.word	4
	.word	_Label_3796
	.word	-192
	.word	4
	.word	_Label_3797
	.word	-196
	.word	4
	.word	_Label_3798
	.word	-200
	.word	4
	.word	_Label_3799
	.word	-204
	.word	4
	.word	_Label_3800
	.word	-208
	.word	4
	.word	_Label_3801
	.word	-212
	.word	4
	.word	_Label_3802
	.word	-216
	.word	4
	.word	_Label_3803
	.word	-220
	.word	4
	.word	_Label_3804
	.word	-224
	.word	4
	.word	_Label_3805
	.word	-228
	.word	4
	.word	_Label_3806
	.word	-232
	.word	4
	.word	_Label_3807
	.word	-236
	.word	4
	.word	_Label_3808
	.word	-240
	.word	4
	.word	_Label_3809
	.word	-244
	.word	4
	.word	_Label_3810
	.word	-248
	.word	4
	.word	_Label_3811
	.word	-252
	.word	4
	.word	_Label_3812
	.word	-256
	.word	4
	.word	_Label_3813
	.word	-260
	.word	4
	.word	_Label_3814
	.word	-264
	.word	4
	.word	_Label_3815
	.word	-268
	.word	4
	.word	0
_Label_3747:
	.ascii	"OpenFile"
	.ascii	"::"
	.ascii	"LoadExecutable\0"
	.align
_Label_3748:
	.ascii	"Pself\0"
	.align
_Label_3749:
	.byte	'P'
	.ascii	"addrSpace\0"
	.align
_Label_3750:
	.byte	'?'
	.ascii	"_temp_3746\0"
	.align
_Label_3751:
	.byte	'?'
	.ascii	"_temp_3745\0"
	.align
_Label_3752:
	.byte	'?'
	.ascii	"_temp_3744\0"
	.align
_Label_3753:
	.byte	'?'
	.ascii	"_temp_3743\0"
	.align
_Label_3754:
	.byte	'?'
	.ascii	"_temp_3740\0"
	.align
_Label_3755:
	.byte	'?'
	.ascii	"_temp_3739\0"
	.align
_Label_3756:
	.byte	'?'
	.ascii	"_temp_3738\0"
	.align
_Label_3757:
	.byte	'C'
	.ascii	"_temp_3737\0"
	.align
_Label_3758:
	.byte	'?'
	.ascii	"_temp_3734\0"
	.align
_Label_3759:
	.byte	'?'
	.ascii	"_temp_3733\0"
	.align
_Label_3760:
	.byte	'?'
	.ascii	"_temp_3728\0"
	.align
_Label_3761:
	.byte	'?'
	.ascii	"_temp_3727\0"
	.align
_Label_3762:
	.byte	'?'
	.ascii	"_temp_3726\0"
	.align
_Label_3763:
	.byte	'?'
	.ascii	"_temp_3725\0"
	.align
_Label_3764:
	.byte	'?'
	.ascii	"_temp_3722\0"
	.align
_Label_3765:
	.byte	'?'
	.ascii	"_temp_3721\0"
	.align
_Label_3766:
	.byte	'?'
	.ascii	"_temp_3720\0"
	.align
_Label_3767:
	.byte	'C'
	.ascii	"_temp_3719\0"
	.align
_Label_3768:
	.byte	'?'
	.ascii	"_temp_3716\0"
	.align
_Label_3769:
	.byte	'?'
	.ascii	"_temp_3715\0"
	.align
_Label_3770:
	.byte	'?'
	.ascii	"_temp_3710\0"
	.align
_Label_3771:
	.byte	'?'
	.ascii	"_temp_3709\0"
	.align
_Label_3772:
	.byte	'?'
	.ascii	"_temp_3708\0"
	.align
_Label_3773:
	.byte	'?'
	.ascii	"_temp_3707\0"
	.align
_Label_3774:
	.byte	'?'
	.ascii	"_temp_3704\0"
	.align
_Label_3775:
	.byte	'?'
	.ascii	"_temp_3703\0"
	.align
_Label_3776:
	.byte	'?'
	.ascii	"_temp_3702\0"
	.align
_Label_3777:
	.byte	'?'
	.ascii	"_temp_3701\0"
	.align
_Label_3778:
	.byte	'?'
	.ascii	"_temp_3698\0"
	.align
_Label_3779:
	.byte	'?'
	.ascii	"_temp_3697\0"
	.align
_Label_3780:
	.byte	'?'
	.ascii	"_temp_3696\0"
	.align
_Label_3781:
	.byte	'?'
	.ascii	"_temp_3695\0"
	.align
_Label_3782:
	.byte	'?'
	.ascii	"_temp_3694\0"
	.align
_Label_3783:
	.byte	'?'
	.ascii	"_temp_3691\0"
	.align
_Label_3784:
	.byte	'?'
	.ascii	"_temp_3690\0"
	.align
_Label_3785:
	.byte	'?'
	.ascii	"_temp_3687\0"
	.align
_Label_3786:
	.byte	'?'
	.ascii	"_temp_3686\0"
	.align
_Label_3787:
	.byte	'?'
	.ascii	"_temp_3683\0"
	.align
_Label_3788:
	.byte	'?'
	.ascii	"_temp_3682\0"
	.align
_Label_3789:
	.byte	'?'
	.ascii	"_temp_3679\0"
	.align
_Label_3790:
	.byte	'?'
	.ascii	"_temp_3676\0"
	.align
_Label_3791:
	.byte	'?'
	.ascii	"_temp_3675\0"
	.align
_Label_3792:
	.byte	'?'
	.ascii	"_temp_3672\0"
	.align
_Label_3793:
	.byte	'?'
	.ascii	"_temp_3671\0"
	.align
_Label_3794:
	.byte	'?'
	.ascii	"_temp_3670\0"
	.align
_Label_3795:
	.byte	'?'
	.ascii	"_temp_3669\0"
	.align
_Label_3796:
	.byte	'?'
	.ascii	"_temp_3668\0"
	.align
_Label_3797:
	.byte	'?'
	.ascii	"_temp_3667\0"
	.align
_Label_3798:
	.byte	'?'
	.ascii	"_temp_3666\0"
	.align
_Label_3799:
	.byte	'?'
	.ascii	"_temp_3665\0"
	.align
_Label_3800:
	.byte	'?'
	.ascii	"_temp_3664\0"
	.align
_Label_3801:
	.byte	'?'
	.ascii	"_temp_3661\0"
	.align
_Label_3802:
	.byte	'?'
	.ascii	"_temp_3660\0"
	.align
_Label_3803:
	.byte	'?'
	.ascii	"_temp_3659\0"
	.align
_Label_3804:
	.byte	'I'
	.ascii	"nextVirtPage\0"
	.align
_Label_3805:
	.byte	'I'
	.ascii	"addr\0"
	.align
_Label_3806:
	.byte	'I'
	.ascii	"textSize\0"
	.align
_Label_3807:
	.byte	'I'
	.ascii	"dataSize\0"
	.align
_Label_3808:
	.byte	'I'
	.ascii	"bssSize\0"
	.align
_Label_3809:
	.byte	'I'
	.ascii	"textStart\0"
	.align
_Label_3810:
	.byte	'I'
	.ascii	"dataStart\0"
	.align
_Label_3811:
	.byte	'I'
	.ascii	"bssStart\0"
	.align
_Label_3812:
	.byte	'I'
	.ascii	"i\0"
	.align
_Label_3813:
	.byte	'I'
	.ascii	"textSizeInPages\0"
	.align
_Label_3814:
	.byte	'I'
	.ascii	"dataSizeInPages\0"
	.align
_Label_3815:
	.byte	'I'
	.ascii	"bssSizeInPages\0"
	.align
! 
! ===============  CLASS SerialDriver  ===============
! 
! Dispatch Table:
! 
_P_Kernel_SerialDriver:
	.word	_Label_3816
	jmp	_Method_P_Kernel_SerialDriver_1	! 4:	Init
	jmp	_Method_P_Kernel_SerialDriver_3	! 8:	PutChar
	jmp	_Method_P_Kernel_SerialDriver_2	! 12:	GetChar
	jmp	_Method_P_Kernel_SerialDriver_4	! 16:	SerialHandler
	.word	0
! 
! Class descriptor:
! 
_Label_3816:
	.word	1129070931		! Magic number 0x434c4153 == 'CLAS'
	.word	_Label_3817
	.word	_sourceFileName
	.word	402		! line number
	.word	4308		! size of instances, in bytes
	.word	_P_Kernel_SerialDriver
	.word	_P_System_Object
	.word	0
_Label_3817:
	.ascii	"SerialDriver\0"
	.align
! 
! ===============  METHOD Init  ===============
! 
_Method_P_Kernel_SerialDriver_1:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_SerialDriver_1,r1
	push	r1
	mov	33,r1
_Label_4122:
	push	r0
	sub	r1,1,r1
	bne	_Label_4122
	mov	3579,r13		! source line 3579
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   _temp_3818 = _StringConst_189
	set	_StringConst_189,r1
	store	r1,[r14+-128]
!   Prepare Argument: offset=8  value=_temp_3818  sizeInBytes=4
	load	[r14+-128],r1
	store	r1,[r15+0]
!   Call the function
	mov	3581,r13		! source line 3581
	mov	"\0\0CE",r10
	call	print
! ASSIGNMENT STATEMENT...
	mov	3584,r13		! source line 3584
	mov	"\0\0AS",r10
!   serial_status_word_address = 16776964		(4 bytes)
	set	16776964,r1
	load	[r14+8],r2
	store	r1,[r2+4]
! ASSIGNMENT STATEMENT...
	mov	3585,r13		! source line 3585
	mov	"\0\0AS",r10
!   serial_data_word_address = 16776964		(4 bytes)
	set	16776964,r1
	load	[r14+8],r2
	store	r1,[r2+8]
! ASSIGNMENT STATEMENT...
	mov	3588,r13		! source line 3588
	mov	"\0\0AS",r10
!   NEW CLASS Constructor...
!   ZeroMemory: serialLock = zeros  (sizeInBytes=20)
	load	[r14+8],r4
	add	r4,12,r4
	store	r0,[r4]
	store	r0,[r4+4]
	store	r0,[r4+8]
	store	r0,[r4+12]
	store	r0,[r4+16]
!   serialLock = _P_Kernel_Mutex
	set	_P_Kernel_Mutex,r1
	load	[r14+8],r2
	store	r1,[r2+12]
! SEND STATEMENT...
	mov	3589,r13		! source line 3589
	mov	"\0\0SE",r10
!   _temp_3820 = &serialLock
	load	[r14+8],r1
	add	r1,12,r1
	store	r1,[r14+-120]
!   Send message Init
	load	[r14+-120],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,4,r2
	call	r2
! ASSIGNMENT STATEMENT...
	mov	3591,r13		! source line 3591
	mov	"\0\0AS",r10
!   _temp_3821 = &getBuffer
	load	[r14+8],r1
	add	r1,32,r1
	store	r1,[r14+-116]
!   NEW ARRAY Constructor...
!   _temp_3823 = &_temp_3822
	add	r14,-112,r1
	store	r1,[r14+-96]
!   _temp_3823 = _temp_3823 + 4
	load	[r14+-96],r1
	add	r1,4,r1
	store	r1,[r14+-96]
!   Next value...
	mov	10,r1
	store	r1,[r14+-92]
_Label_3825:
!   Data Move: *_temp_3823 = 97  (sizeInBytes=1)
	mov	97,r1
	load	[r14+-96],r2
	storeb	r1,[r2]
!   _temp_3823 = _temp_3823 + 1
	load	[r14+-96],r1
	add	r1,1,r1
	store	r1,[r14+-96]
!   _temp_3824 = _temp_3824 + -1
	load	[r14+-92],r1
	add	r1,-1,r1
	store	r1,[r14+-92]
!   if intNotZero (_temp_3824) then goto _Label_3825
	load	[r14+-92],r1
	cmp	r1,r0
	bne	_Label_3825
!   Initialize the array size...
	mov	10,r1
	store	r1,[r14+-112]
!   _temp_3826 = &_temp_3822
	add	r14,-112,r1
	store	r1,[r14+-88]
!   make sure array has size 10
	load	[r14+-116],r1
	load	[r1],r1
	set	10, r2
	cmp	r1,0
	be	_Label_4123
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bne	_runtimeErrorWrongArraySize
_Label_4123:
!   make sure array has size 10
	load	[r14+-88],r1
	load	[r1],r1
	set	10, r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bne	_runtimeErrorWrongArraySize
!   Data Move: *_temp_3821 = *_temp_3826  (sizeInBytes=16)
	load	[r14+-88],r5
	load	[r14+-116],r4
	load	[r5],r1
	store	r1,[r4]
	load	[r5+4],r1
	store	r1,[r4+4]
	load	[r5+8],r1
	store	r1,[r4+8]
	load	[r5+12],r1
	store	r1,[r4+12]
! ASSIGNMENT STATEMENT...
	mov	3592,r13		! source line 3592
	mov	"\0\0AS",r10
!   getBufferSize = 0		(4 bytes)
	mov	0,r1
	load	[r14+8],r2
	store	r1,[r2+48]
! ASSIGNMENT STATEMENT...
	mov	3593,r13		! source line 3593
	mov	"\0\0AS",r10
!   getBufferNextIn = 0		(4 bytes)
	mov	0,r1
	load	[r14+8],r2
	store	r1,[r2+52]
! ASSIGNMENT STATEMENT...
	mov	3594,r13		! source line 3594
	mov	"\0\0AS",r10
!   getBufferNextOut = 0		(4 bytes)
	mov	0,r1
	load	[r14+8],r2
	store	r1,[r2+56]
! ASSIGNMENT STATEMENT...
	mov	3595,r13		! source line 3595
	mov	"\0\0AS",r10
!   NEW CLASS Constructor...
!   ZeroMemory: getCharacterAvail = zeros  (sizeInBytes=16)
	load	[r14+8],r4
	add	r4,60,r4
	store	r0,[r4]
	store	r0,[r4+4]
	store	r0,[r4+8]
	store	r0,[r4+12]
!   getCharacterAvail = _P_Kernel_Condition
	set	_P_Kernel_Condition,r1
	load	[r14+8],r2
	store	r1,[r2+60]
! SEND STATEMENT...
	mov	3596,r13		! source line 3596
	mov	"\0\0SE",r10
!   _temp_3828 = &getCharacterAvail
	load	[r14+8],r1
	add	r1,60,r1
	store	r1,[r14+-80]
!   Send message Init
	load	[r14+-80],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,4,r2
	call	r2
! ASSIGNMENT STATEMENT...
	mov	3598,r13		! source line 3598
	mov	"\0\0AS",r10
!   _temp_3829 = &putBuffer
	load	[r14+8],r1
	add	r1,76,r1
	store	r1,[r14+-76]
!   NEW ARRAY Constructor...
!   _temp_3831 = &_temp_3830
	add	r14,-72,r1
	store	r1,[r14+-56]
!   _temp_3831 = _temp_3831 + 4
	load	[r14+-56],r1
	add	r1,4,r1
	store	r1,[r14+-56]
!   Next value...
	mov	10,r1
	store	r1,[r14+-52]
_Label_3833:
!   Data Move: *_temp_3831 = 97  (sizeInBytes=1)
	mov	97,r1
	load	[r14+-56],r2
	storeb	r1,[r2]
!   _temp_3831 = _temp_3831 + 1
	load	[r14+-56],r1
	add	r1,1,r1
	store	r1,[r14+-56]
!   _temp_3832 = _temp_3832 + -1
	load	[r14+-52],r1
	add	r1,-1,r1
	store	r1,[r14+-52]
!   if intNotZero (_temp_3832) then goto _Label_3833
	load	[r14+-52],r1
	cmp	r1,r0
	bne	_Label_3833
!   Initialize the array size...
	mov	10,r1
	store	r1,[r14+-72]
!   _temp_3834 = &_temp_3830
	add	r14,-72,r1
	store	r1,[r14+-48]
!   make sure array has size 10
	load	[r14+-76],r1
	load	[r1],r1
	set	10, r2
	cmp	r1,0
	be	_Label_4124
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bne	_runtimeErrorWrongArraySize
_Label_4124:
!   make sure array has size 10
	load	[r14+-48],r1
	load	[r1],r1
	set	10, r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bne	_runtimeErrorWrongArraySize
!   Data Move: *_temp_3829 = *_temp_3834  (sizeInBytes=16)
	load	[r14+-48],r5
	load	[r14+-76],r4
	load	[r5],r1
	store	r1,[r4]
	load	[r5+4],r1
	store	r1,[r4+4]
	load	[r5+8],r1
	store	r1,[r4+8]
	load	[r5+12],r1
	store	r1,[r4+12]
! ASSIGNMENT STATEMENT...
	mov	3599,r13		! source line 3599
	mov	"\0\0AS",r10
!   putBufferSize = 0		(4 bytes)
	mov	0,r1
	load	[r14+8],r2
	store	r1,[r2+92]
! ASSIGNMENT STATEMENT...
	mov	3600,r13		! source line 3600
	mov	"\0\0AS",r10
!   putBufferNextIn = 0		(4 bytes)
	mov	0,r1
	load	[r14+8],r2
	store	r1,[r2+96]
! ASSIGNMENT STATEMENT...
	mov	3601,r13		! source line 3601
	mov	"\0\0AS",r10
!   putBufferNextOut = 0		(4 bytes)
	mov	0,r1
	load	[r14+8],r2
	store	r1,[r2+100]
! ASSIGNMENT STATEMENT...
	mov	3602,r13		! source line 3602
	mov	"\0\0AS",r10
!   NEW CLASS Constructor...
!   ZeroMemory: putBufferSem = zeros  (sizeInBytes=20)
	load	[r14+8],r4
	add	r4,104,r4
	store	r0,[r4]
	store	r0,[r4+4]
	store	r0,[r4+8]
	store	r0,[r4+12]
	store	r0,[r4+16]
!   putBufferSem = _P_Kernel_Semaphore
	set	_P_Kernel_Semaphore,r1
	load	[r14+8],r2
	store	r1,[r2+104]
! SEND STATEMENT...
	mov	3603,r13		! source line 3603
	mov	"\0\0SE",r10
!   _temp_3836 = &putBufferSem
	load	[r14+8],r1
	add	r1,104,r1
	store	r1,[r14+-40]
!   Prepare Argument: offset=12  value=10  sizeInBytes=4
	mov	10,r1
	store	r1,[r15+4]
!   Send message Init
	load	[r14+-40],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,4,r2
	call	r2
! ASSIGNMENT STATEMENT...
	mov	3605,r13		! source line 3605
	mov	"\0\0AS",r10
!   NEW CLASS Constructor...
!   ZeroMemory: serialNeedsAttention = zeros  (sizeInBytes=20)
	load	[r14+8],r4
	add	r4,124,r4
	store	r0,[r4]
	store	r0,[r4+4]
	store	r0,[r4+8]
	store	r0,[r4+12]
	store	r0,[r4+16]
!   serialNeedsAttention = _P_Kernel_Semaphore
	set	_P_Kernel_Semaphore,r1
	load	[r14+8],r2
	store	r1,[r2+124]
! SEND STATEMENT...
	mov	3606,r13		! source line 3606
	mov	"\0\0SE",r10
!   _temp_3838 = &serialNeedsAttention
	load	[r14+8],r1
	add	r1,124,r1
	store	r1,[r14+-32]
!   Prepare Argument: offset=12  value=0  sizeInBytes=4
	mov	0,r1
	store	r1,[r15+4]
!   Send message Init
	load	[r14+-32],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,4,r2
	call	r2
! ASSIGNMENT STATEMENT...
	mov	3608,r13		! source line 3608
	mov	"\0\0AS",r10
!   NEW CLASS Constructor...
!   ZeroMemory: serialHandlerThread = zeros  (sizeInBytes=4164)
	load	[r14+8],r4
	add	r4,144,r4
	mov	1041,r3
_Label_4125:
	store	r0,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_4125
!   serialHandlerThread = _P_Kernel_Thread
	set	_P_Kernel_Thread,r1
	load	[r14+8],r2
	store	r1,[r2+144]
! SEND STATEMENT...
	mov	3609,r13		! source line 3609
	mov	"\0\0SE",r10
!   _temp_3840 = _StringConst_190
	set	_StringConst_190,r1
	store	r1,[r14+-24]
!   _temp_3841 = &serialHandlerThread
	load	[r14+8],r1
	add	r1,144,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=12  value=_temp_3840  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+4]
!   Send message Init
	load	[r14+-20],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,4,r2
	call	r2
! SEND STATEMENT...
	mov	3610,r13		! source line 3610
	mov	"\0\0SE",r10
!   _temp_3842 = _function_199_SerialHandlerFunction
	set	_function_199_SerialHandlerFunction,r1
	store	r1,[r14+-16]
!   _temp_3843 = &serialHandlerThread
	load	[r14+8],r1
	add	r1,144,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=12  value=_temp_3842  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=0  sizeInBytes=4
	mov	0,r1
	store	r1,[r15+8]
!   Send message Fork
	load	[r14+-12],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! ASSIGNMENT STATEMENT...
	mov	3612,r13		! source line 3612
	mov	"\0\0AS",r10
!   _P_Kernel_serialHasBeenInitialized = 1		(1 byte)
	mov	1,r1
	set	_P_Kernel_serialHasBeenInitialized,r2
	storeb	r1,[r2]
! RETURN STATEMENT...
	mov	3614,r13		! source line 3614
	mov	"\0\0RE",r10
	add	r15,136,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_SerialDriver_1:
	.word	_sourceFileName
	.word	_Label_3844
	.word	4		! total size of parameters
	.word	132		! frame size = 132
	.word	_Label_3845
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_3846
	.word	-12
	.word	4
	.word	_Label_3847
	.word	-16
	.word	4
	.word	_Label_3848
	.word	-20
	.word	4
	.word	_Label_3849
	.word	-24
	.word	4
	.word	_Label_3850
	.word	-28
	.word	4
	.word	_Label_3851
	.word	-32
	.word	4
	.word	_Label_3852
	.word	-36
	.word	4
	.word	_Label_3853
	.word	-40
	.word	4
	.word	_Label_3854
	.word	-44
	.word	4
	.word	_Label_3855
	.word	-48
	.word	4
	.word	_Label_3856
	.word	-52
	.word	4
	.word	_Label_3857
	.word	-56
	.word	4
	.word	_Label_3858
	.word	-72
	.word	16
	.word	_Label_3859
	.word	-76
	.word	4
	.word	_Label_3860
	.word	-80
	.word	4
	.word	_Label_3861
	.word	-84
	.word	4
	.word	_Label_3862
	.word	-88
	.word	4
	.word	_Label_3863
	.word	-92
	.word	4
	.word	_Label_3864
	.word	-96
	.word	4
	.word	_Label_3865
	.word	-112
	.word	16
	.word	_Label_3866
	.word	-116
	.word	4
	.word	_Label_3867
	.word	-120
	.word	4
	.word	_Label_3868
	.word	-124
	.word	4
	.word	_Label_3869
	.word	-128
	.word	4
	.word	0
_Label_3844:
	.ascii	"SerialDriver"
	.ascii	"::"
	.ascii	"Init\0"
	.align
_Label_3845:
	.ascii	"Pself\0"
	.align
_Label_3846:
	.byte	'?'
	.ascii	"_temp_3843\0"
	.align
_Label_3847:
	.byte	'?'
	.ascii	"_temp_3842\0"
	.align
_Label_3848:
	.byte	'?'
	.ascii	"_temp_3841\0"
	.align
_Label_3849:
	.byte	'?'
	.ascii	"_temp_3840\0"
	.align
_Label_3850:
	.byte	'?'
	.ascii	"_temp_3839\0"
	.align
_Label_3851:
	.byte	'?'
	.ascii	"_temp_3838\0"
	.align
_Label_3852:
	.byte	'?'
	.ascii	"_temp_3837\0"
	.align
_Label_3853:
	.byte	'?'
	.ascii	"_temp_3836\0"
	.align
_Label_3854:
	.byte	'?'
	.ascii	"_temp_3835\0"
	.align
_Label_3855:
	.byte	'?'
	.ascii	"_temp_3834\0"
	.align
_Label_3856:
	.byte	'?'
	.ascii	"_temp_3832\0"
	.align
_Label_3857:
	.byte	'?'
	.ascii	"_temp_3831\0"
	.align
_Label_3858:
	.byte	'?'
	.ascii	"_temp_3830\0"
	.align
_Label_3859:
	.byte	'?'
	.ascii	"_temp_3829\0"
	.align
_Label_3860:
	.byte	'?'
	.ascii	"_temp_3828\0"
	.align
_Label_3861:
	.byte	'?'
	.ascii	"_temp_3827\0"
	.align
_Label_3862:
	.byte	'?'
	.ascii	"_temp_3826\0"
	.align
_Label_3863:
	.byte	'?'
	.ascii	"_temp_3824\0"
	.align
_Label_3864:
	.byte	'?'
	.ascii	"_temp_3823\0"
	.align
_Label_3865:
	.byte	'?'
	.ascii	"_temp_3822\0"
	.align
_Label_3866:
	.byte	'?'
	.ascii	"_temp_3821\0"
	.align
_Label_3867:
	.byte	'?'
	.ascii	"_temp_3820\0"
	.align
_Label_3868:
	.byte	'?'
	.ascii	"_temp_3819\0"
	.align
_Label_3869:
	.byte	'?'
	.ascii	"_temp_3818\0"
	.align
! 
! ===============  METHOD GetChar  ===============
! 
_Method_P_Kernel_SerialDriver_2:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_SerialDriver_2,r1
	push	r1
	mov	11,r1
_Label_4126:
	push	r0
	sub	r1,1,r1
	bne	_Label_4126
	mov	3620,r13		! source line 3620
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! SEND STATEMENT...
	mov	3624,r13		! source line 3624
	mov	"\0\0SE",r10
!   _temp_3870 = &serialLock
	load	[r14+8],r1
	add	r1,12,r1
	store	r1,[r14+-44]
!   Send message Lock
	load	[r14+-44],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! IF STATEMENT...
	mov	3627,r13		! source line 3627
	mov	"\0\0IF",r10
!   if intIsZero (getBufferSize) then goto _Label_3871
	load	[r14+8],r1
	load	[r1+48],r1
	cmp	r1,r0
	be	_Label_3871
	jmp	_Label_3872
_Label_3871:
! THEN...
	mov	3628,r13		! source line 3628
	mov	"\0\0TN",r10
! SEND STATEMENT...
	mov	3628,r13		! source line 3628
	mov	"\0\0SE",r10
!   _temp_3873 = &serialLock
	load	[r14+8],r1
	add	r1,12,r1
	store	r1,[r14+-40]
!   _temp_3874 = &getCharacterAvail
	load	[r14+8],r1
	add	r1,60,r1
	store	r1,[r14+-36]
!   Prepare Argument: offset=12  value=_temp_3873  sizeInBytes=4
	load	[r14+-40],r1
	store	r1,[r15+4]
!   Send message Wait
	load	[r14+-36],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! END IF...
_Label_3872:
! ASSIGNMENT STATEMENT...
	mov	3631,r13		! source line 3631
	mov	"\0\0AS",r10
!   _temp_3875 = &getBuffer
	load	[r14+8],r1
	add	r1,32,r1
	store	r1,[r14+-32]
!   Move address of _temp_3875 [getBufferNextOut ] into _temp_3876
!     make sure index expr is >= 0
	load	[r14+8],r2
	load	[r2+56],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-32],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	1,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-28]
!   Data Move: incomingChar = *_temp_3876  (sizeInBytes=1)
	load	[r14+-28],r1
	loadb	[r1],r1
	storeb	r1,[r14+-9]
! ASSIGNMENT STATEMENT...
	mov	3632,r13		! source line 3632
	mov	"\0\0AS",r10
!   _temp_3877 = getBufferNextOut + 1		(int)
	load	[r14+8],r1
	load	[r1+56],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-24]
!   getBufferNextOut = _temp_3877 rem 10		(int)
	load	[r14+-24],r1
	mov	10,r2
	cmp	r2,0
	be	_runtimeErrorZeroDivide
	rem	r1,r2,r1
	bvs	_runtimeErrorOverflow
	load	[r14+8],r2
	store	r1,[r2+56]
! ASSIGNMENT STATEMENT...
	mov	3633,r13		! source line 3633
	mov	"\0\0AS",r10
!   _temp_3878 = getBufferNextIn - getBufferNextOut		(int)
	load	[r14+8],r1
	load	[r1+52],r1
	load	[r14+8],r2
	load	[r2+56],r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-20]
!   getBufferSize = _temp_3878 rem 10		(int)
	load	[r14+-20],r1
	mov	10,r2
	cmp	r2,0
	be	_runtimeErrorZeroDivide
	rem	r1,r2,r1
	bvs	_runtimeErrorOverflow
	load	[r14+8],r2
	store	r1,[r2+48]
! SEND STATEMENT...
	mov	3635,r13		! source line 3635
	mov	"\0\0SE",r10
!   _temp_3879 = &serialLock
	load	[r14+8],r1
	add	r1,12,r1
	store	r1,[r14+-16]
!   Send message Unlock
	load	[r14+-16],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
! RETURN STATEMENT...
	mov	3637,r13		! source line 3637
	mov	"\0\0RE",r10
!   ReturnResult: incomingChar  (sizeInBytes=1)
	loadb	[r14+-9],r1
	storeb	r1,[r14+8]
	add	r15,48,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_SerialDriver_2:
	.word	_sourceFileName
	.word	_Label_3880
	.word	4		! total size of parameters
	.word	44		! frame size = 44
	.word	_Label_3881
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_3882
	.word	-16
	.word	4
	.word	_Label_3883
	.word	-20
	.word	4
	.word	_Label_3884
	.word	-24
	.word	4
	.word	_Label_3885
	.word	-28
	.word	4
	.word	_Label_3886
	.word	-32
	.word	4
	.word	_Label_3887
	.word	-36
	.word	4
	.word	_Label_3888
	.word	-40
	.word	4
	.word	_Label_3889
	.word	-44
	.word	4
	.word	_Label_3890
	.word	-9
	.word	1
	.word	0
_Label_3880:
	.ascii	"SerialDriver"
	.ascii	"::"
	.ascii	"GetChar\0"
	.align
_Label_3881:
	.ascii	"Pself\0"
	.align
_Label_3882:
	.byte	'?'
	.ascii	"_temp_3879\0"
	.align
_Label_3883:
	.byte	'?'
	.ascii	"_temp_3878\0"
	.align
_Label_3884:
	.byte	'?'
	.ascii	"_temp_3877\0"
	.align
_Label_3885:
	.byte	'?'
	.ascii	"_temp_3876\0"
	.align
_Label_3886:
	.byte	'?'
	.ascii	"_temp_3875\0"
	.align
_Label_3887:
	.byte	'?'
	.ascii	"_temp_3874\0"
	.align
_Label_3888:
	.byte	'?'
	.ascii	"_temp_3873\0"
	.align
_Label_3889:
	.byte	'?'
	.ascii	"_temp_3870\0"
	.align
_Label_3890:
	.byte	'C'
	.ascii	"incomingChar\0"
	.align
! 
! ===============  METHOD PutChar  ===============
! 
_Method_P_Kernel_SerialDriver_3:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_SerialDriver_3,r1
	push	r1
	mov	10,r1
_Label_4127:
	push	r0
	sub	r1,1,r1
	bne	_Label_4127
	mov	3643,r13		! source line 3643
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! SEND STATEMENT...
	mov	3645,r13		! source line 3645
	mov	"\0\0SE",r10
!   _temp_3891 = &serialLock
	load	[r14+8],r1
	add	r1,12,r1
	store	r1,[r14+-44]
!   Send message Lock
	load	[r14+-44],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! IF STATEMENT...
	mov	3648,r13		! source line 3648
	mov	"\0\0IF",r10
!   if putBufferSize != 10 then goto _Label_3893		(int)
	load	[r14+8],r1
	load	[r1+92],r1
	mov	10,r2
	cmp	r1,r2
	bne	_Label_3893
!	jmp	_Label_3892
_Label_3892:
! THEN...
	mov	3649,r13		! source line 3649
	mov	"\0\0TN",r10
! SEND STATEMENT...
	mov	3649,r13		! source line 3649
	mov	"\0\0SE",r10
!   _temp_3894 = &putBufferSem
	load	[r14+8],r1
	add	r1,104,r1
	store	r1,[r14+-40]
!   Send message Down
	load	[r14+-40],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! END IF...
_Label_3893:
! SEND STATEMENT...
	mov	3652,r13		! source line 3652
	mov	"\0\0SE",r10
!   _temp_3895 = &serialLock
	load	[r14+8],r1
	add	r1,12,r1
	store	r1,[r14+-36]
!   Send message Lock
	load	[r14+-36],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! ASSIGNMENT STATEMENT...
	mov	3654,r13		! source line 3654
	mov	"\0\0AS",r10
!   _temp_3896 = &putBuffer
	load	[r14+8],r1
	add	r1,76,r1
	store	r1,[r14+-32]
!   Move address of _temp_3896 [putBufferNextIn ] into _temp_3897
!     make sure index expr is >= 0
	load	[r14+8],r2
	load	[r2+96],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-32],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	1,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-28]
!   Data Move: *_temp_3897 = value  (sizeInBytes=1)
	loadb	[r14+12],r1
	load	[r14+-28],r2
	storeb	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	3655,r13		! source line 3655
	mov	"\0\0AS",r10
!   _temp_3898 = putBufferNextIn + 1		(int)
	load	[r14+8],r1
	load	[r1+96],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-24]
!   putBufferNextIn = _temp_3898 rem 10		(int)
	load	[r14+-24],r1
	mov	10,r2
	cmp	r2,0
	be	_runtimeErrorZeroDivide
	rem	r1,r2,r1
	bvs	_runtimeErrorOverflow
	load	[r14+8],r2
	store	r1,[r2+96]
! ASSIGNMENT STATEMENT...
	mov	3656,r13		! source line 3656
	mov	"\0\0AS",r10
!   _temp_3899 = putBufferNextIn - putBufferNextOut		(int)
	load	[r14+8],r1
	load	[r1+96],r1
	load	[r14+8],r2
	load	[r2+100],r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-20]
!   putBufferSize = _temp_3899 rem 10		(int)
	load	[r14+-20],r1
	mov	10,r2
	cmp	r2,0
	be	_runtimeErrorZeroDivide
	rem	r1,r2,r1
	bvs	_runtimeErrorOverflow
	load	[r14+8],r2
	store	r1,[r2+92]
! SEND STATEMENT...
	mov	3658,r13		! source line 3658
	mov	"\0\0SE",r10
!   _temp_3900 = &serialLock
	load	[r14+8],r1
	add	r1,12,r1
	store	r1,[r14+-16]
!   Send message Unlock
	load	[r14+-16],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
! SEND STATEMENT...
	mov	3660,r13		! source line 3660
	mov	"\0\0SE",r10
!   _temp_3901 = &serialNeedsAttention
	load	[r14+8],r1
	add	r1,124,r1
	store	r1,[r14+-12]
!   Send message Up
	load	[r14+-12],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
! RETURN STATEMENT...
	mov	3662,r13		! source line 3662
	mov	"\0\0RE",r10
	add	r15,44,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_SerialDriver_3:
	.word	_sourceFileName
	.word	_Label_3902
	.word	8		! total size of parameters
	.word	40		! frame size = 40
	.word	_Label_3903
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_3904
	.word	12
	.word	1
	.word	_Label_3905
	.word	-12
	.word	4
	.word	_Label_3906
	.word	-16
	.word	4
	.word	_Label_3907
	.word	-20
	.word	4
	.word	_Label_3908
	.word	-24
	.word	4
	.word	_Label_3909
	.word	-28
	.word	4
	.word	_Label_3910
	.word	-32
	.word	4
	.word	_Label_3911
	.word	-36
	.word	4
	.word	_Label_3912
	.word	-40
	.word	4
	.word	_Label_3913
	.word	-44
	.word	4
	.word	0
_Label_3902:
	.ascii	"SerialDriver"
	.ascii	"::"
	.ascii	"PutChar\0"
	.align
_Label_3903:
	.ascii	"Pself\0"
	.align
_Label_3904:
	.byte	'C'
	.ascii	"value\0"
	.align
_Label_3905:
	.byte	'?'
	.ascii	"_temp_3901\0"
	.align
_Label_3906:
	.byte	'?'
	.ascii	"_temp_3900\0"
	.align
_Label_3907:
	.byte	'?'
	.ascii	"_temp_3899\0"
	.align
_Label_3908:
	.byte	'?'
	.ascii	"_temp_3898\0"
	.align
_Label_3909:
	.byte	'?'
	.ascii	"_temp_3897\0"
	.align
_Label_3910:
	.byte	'?'
	.ascii	"_temp_3896\0"
	.align
_Label_3911:
	.byte	'?'
	.ascii	"_temp_3895\0"
	.align
_Label_3912:
	.byte	'?'
	.ascii	"_temp_3894\0"
	.align
_Label_3913:
	.byte	'?'
	.ascii	"_temp_3891\0"
	.align
! 
! ===============  METHOD SerialHandler  ===============
! 
_Method_P_Kernel_SerialDriver_4:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_SerialDriver_4,r1
	push	r1
	mov	26,r1
_Label_4128:
	push	r0
	sub	r1,1,r1
	bne	_Label_4128
	mov	3668,r13		! source line 3668
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! SEND STATEMENT...
	mov	3678,r13		! source line 3678
	mov	"\0\0SE",r10
!   _temp_3914 = &serialNeedsAttention
	load	[r14+8],r1
	add	r1,124,r1
	store	r1,[r14+-92]
!   Send message Down
	load	[r14+-92],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! ASSIGNMENT STATEMENT...
	mov	3680,r13		! source line 3680
	mov	"\0\0AS",r10
!   if intIsZero (serial_status_word_address) then goto _runtimeErrorNullPointer
	load	[r14+8],r1
	load	[r1+4],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Data Move: serial_status_word = *serial_status_word_address  (sizeInBytes=4)
	load	[r14+8],r1
	load	[r1+4],r1
	load	[r1],r1
	store	r1,[r14+-96]
! ASSIGNMENT STATEMENT...
	mov	3683,r13		! source line 3683
	mov	"\0\0AS",r10
!   character_available_bit = serial_status_word AND 1		(int)
	load	[r14+-96],r1
	mov	1,r2
	and	r1,r2,r1
	store	r1,[r14+-100]
! IF STATEMENT...
	mov	3686,r13		! source line 3686
	mov	"\0\0IF",r10
!   if character_available_bit != 1 then goto _Label_3916		(int)
	load	[r14+-100],r1
	mov	1,r2
	cmp	r1,r2
	bne	_Label_3916
!	jmp	_Label_3915
_Label_3915:
! THEN...
	mov	3688,r13		! source line 3688
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_3917 = _StringConst_191
	set	_StringConst_191,r1
	store	r1,[r14+-88]
!   Prepare Argument: offset=8  value=_temp_3917  sizeInBytes=4
	load	[r14+-88],r1
	store	r1,[r15+0]
!   Call the function
	mov	3688,r13		! source line 3688
	mov	"\0\0CE",r10
	call	print
! SEND STATEMENT...
	mov	3691,r13		! source line 3691
	mov	"\0\0SE",r10
!   _temp_3918 = &serialLock
	load	[r14+8],r1
	add	r1,12,r1
	store	r1,[r14+-84]
!   Send message Lock
	load	[r14+-84],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! ASSIGNMENT STATEMENT...
	mov	3694,r13		! source line 3694
	mov	"\0\0AS",r10
!   if intIsZero (serial_data_word_address) then goto _runtimeErrorNullPointer
	load	[r14+8],r1
	load	[r1+8],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Data Move: _temp_3919 = *serial_data_word_address  (sizeInBytes=4)
	load	[r14+8],r1
	load	[r1+8],r1
	load	[r1],r1
	store	r1,[r14+-80]
!   inChar = intToChar (_temp_3919)
	load	[r14+-80],r1
	storeb	r1,[r14+-9]
! IF STATEMENT...
	mov	3697,r13		! source line 3697
	mov	"\0\0IF",r10
!   if getBufferSize != 10 then goto _Label_3921		(int)
	load	[r14+8],r1
	load	[r1+48],r1
	mov	10,r2
	cmp	r1,r2
	bne	_Label_3921
!	jmp	_Label_3920
_Label_3920:
! THEN...
	mov	3698,r13		! source line 3698
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_3922 = _StringConst_192
	set	_StringConst_192,r1
	store	r1,[r14+-76]
!   Prepare Argument: offset=8  value=_temp_3922  sizeInBytes=4
	load	[r14+-76],r1
	store	r1,[r15+0]
!   Call the function
	mov	3698,r13		! source line 3698
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=inChar  sizeInBytes=1
	loadb	[r14+-9],r1
	storeb	r1,[r15+0]
!   Call the function
	mov	3699,r13		! source line 3699
	mov	"\0\0CE",r10
	call	printChar
! CALL STATEMENT...
!   _temp_3923 = _StringConst_193
	set	_StringConst_193,r1
	store	r1,[r14+-72]
!   Prepare Argument: offset=8  value=_temp_3923  sizeInBytes=4
	load	[r14+-72],r1
	store	r1,[r15+0]
!   Call the function
	mov	3700,r13		! source line 3700
	mov	"\0\0CE",r10
	call	print
	jmp	_Label_3924
_Label_3921:
! ELSE...
	mov	3704,r13		! source line 3704
	mov	"\0\0EL",r10
! ASSIGNMENT STATEMENT...
	mov	3704,r13		! source line 3704
	mov	"\0\0AS",r10
!   _temp_3925 = &getBuffer
	load	[r14+8],r1
	add	r1,32,r1
	store	r1,[r14+-68]
!   Move address of _temp_3925 [getBufferNextIn ] into _temp_3926
!     make sure index expr is >= 0
	load	[r14+8],r2
	load	[r2+52],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-68],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	1,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-64]
!   Data Move: *_temp_3926 = inChar  (sizeInBytes=1)
	loadb	[r14+-9],r1
	load	[r14+-64],r2
	storeb	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	3705,r13		! source line 3705
	mov	"\0\0AS",r10
!   _temp_3927 = getBufferNextIn + 1		(int)
	load	[r14+8],r1
	load	[r1+52],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-60]
!   getBufferNextIn = _temp_3927 rem 10		(int)
	load	[r14+-60],r1
	mov	10,r2
	cmp	r2,0
	be	_runtimeErrorZeroDivide
	rem	r1,r2,r1
	bvs	_runtimeErrorOverflow
	load	[r14+8],r2
	store	r1,[r2+52]
! SEND STATEMENT...
	mov	3706,r13		! source line 3706
	mov	"\0\0SE",r10
!   _temp_3928 = &serialLock
	load	[r14+8],r1
	add	r1,12,r1
	store	r1,[r14+-56]
!   _temp_3929 = &getCharacterAvail
	load	[r14+8],r1
	add	r1,60,r1
	store	r1,[r14+-52]
!   Prepare Argument: offset=12  value=_temp_3928  sizeInBytes=4
	load	[r14+-56],r1
	store	r1,[r15+4]
!   Send message Signal
	load	[r14+-52],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
! END IF...
_Label_3924:
! SEND STATEMENT...
	mov	3709,r13		! source line 3709
	mov	"\0\0SE",r10
!   _temp_3930 = &serialLock
	load	[r14+8],r1
	add	r1,12,r1
	store	r1,[r14+-48]
!   Send message Unlock
	load	[r14+-48],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
! END IF...
_Label_3916:
! ASSIGNMENT STATEMENT...
	mov	3714,r13		! source line 3714
	mov	"\0\0AS",r10
!   output_ready_bit = serial_status_word AND 2		(int)
	load	[r14+-96],r1
	mov	2,r2
	and	r1,r2,r1
	store	r1,[r14+-104]
! IF STATEMENT...
	mov	3716,r13		! source line 3716
	mov	"\0\0IF",r10
!   if output_ready_bit != 1 then goto _Label_3932		(int)
	load	[r14+-104],r1
	mov	1,r2
	cmp	r1,r2
	bne	_Label_3932
!	jmp	_Label_3931
_Label_3931:
! THEN...
	mov	3718,r13		! source line 3718
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_3933 = _StringConst_194
	set	_StringConst_194,r1
	store	r1,[r14+-44]
!   Prepare Argument: offset=8  value=_temp_3933  sizeInBytes=4
	load	[r14+-44],r1
	store	r1,[r15+0]
!   Call the function
	mov	3718,r13		! source line 3718
	mov	"\0\0CE",r10
	call	print
! SEND STATEMENT...
	mov	3720,r13		! source line 3720
	mov	"\0\0SE",r10
!   _temp_3934 = &serialLock
	load	[r14+8],r1
	add	r1,12,r1
	store	r1,[r14+-40]
!   Send message Lock
	load	[r14+-40],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! IF STATEMENT...
	mov	3723,r13		! source line 3723
	mov	"\0\0IF",r10
!   if intIsZero (putBufferSize) then goto _Label_3936
	load	[r14+8],r1
	load	[r1+92],r1
	cmp	r1,r0
	be	_Label_3936
!	jmp	_Label_3935
_Label_3935:
! THEN...
	mov	3724,r13		! source line 3724
	mov	"\0\0TN",r10
! ASSIGNMENT STATEMENT...
	mov	3724,r13		! source line 3724
	mov	"\0\0AS",r10
!   _temp_3937 = &putBuffer
	load	[r14+8],r1
	add	r1,76,r1
	store	r1,[r14+-36]
!   Move address of _temp_3937 [putBufferNextOut ] into _temp_3938
!     make sure index expr is >= 0
	load	[r14+8],r2
	load	[r2+100],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-36],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	1,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-32]
!   Data Move: outChar = *_temp_3938  (sizeInBytes=1)
	load	[r14+-32],r1
	loadb	[r1],r1
	storeb	r1,[r14+-10]
! ASSIGNMENT STATEMENT...
	mov	3725,r13		! source line 3725
	mov	"\0\0AS",r10
!   if intIsZero (serial_data_word_address) then goto _runtimeErrorNullPointer
	load	[r14+8],r1
	load	[r1+8],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3939 = charToInt (outChar)
	loadb	[r14+-10],r1
	sll	r1,24,r1
	sra	r1,24,r1
	store	r1,[r14+-28]
!   Data Move: *serial_data_word_address = _temp_3939  (sizeInBytes=4)
	load	[r14+-28],r1
	load	[r14+8],r2
	load	[r2+8],r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	3726,r13		! source line 3726
	mov	"\0\0AS",r10
!   _temp_3940 = putBufferNextOut + 1		(int)
	load	[r14+8],r1
	load	[r1+100],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-24]
!   putBufferNextOut = _temp_3940 rem 10		(int)
	load	[r14+-24],r1
	mov	10,r2
	cmp	r2,0
	be	_runtimeErrorZeroDivide
	rem	r1,r2,r1
	bvs	_runtimeErrorOverflow
	load	[r14+8],r2
	store	r1,[r2+100]
! ASSIGNMENT STATEMENT...
	mov	3727,r13		! source line 3727
	mov	"\0\0AS",r10
!   putBufferSize = putBufferSize - 1		(int)
	load	[r14+8],r1
	load	[r1+92],r1
	mov	1,r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	load	[r14+8],r2
	store	r1,[r2+92]
! END IF...
_Label_3936:
! SEND STATEMENT...
	mov	3730,r13		! source line 3730
	mov	"\0\0SE",r10
!   _temp_3941 = &putBufferSem
	load	[r14+8],r1
	add	r1,104,r1
	store	r1,[r14+-20]
!   Send message Up
	load	[r14+-20],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
! SEND STATEMENT...
	mov	3732,r13		! source line 3732
	mov	"\0\0SE",r10
!   _temp_3942 = &serialLock
	load	[r14+8],r1
	add	r1,12,r1
	store	r1,[r14+-16]
!   Send message Unlock
	load	[r14+-16],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
! END IF...
_Label_3932:
! RETURN STATEMENT...
	mov	3716,r13		! source line 3716
	mov	"\0\0RE",r10
	add	r15,108,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_SerialDriver_4:
	.word	_sourceFileName
	.word	_Label_3943
	.word	4		! total size of parameters
	.word	104		! frame size = 104
	.word	_Label_3944
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_3945
	.word	-16
	.word	4
	.word	_Label_3946
	.word	-20
	.word	4
	.word	_Label_3947
	.word	-24
	.word	4
	.word	_Label_3948
	.word	-28
	.word	4
	.word	_Label_3949
	.word	-32
	.word	4
	.word	_Label_3950
	.word	-36
	.word	4
	.word	_Label_3951
	.word	-40
	.word	4
	.word	_Label_3952
	.word	-44
	.word	4
	.word	_Label_3953
	.word	-48
	.word	4
	.word	_Label_3954
	.word	-52
	.word	4
	.word	_Label_3955
	.word	-56
	.word	4
	.word	_Label_3956
	.word	-60
	.word	4
	.word	_Label_3957
	.word	-64
	.word	4
	.word	_Label_3958
	.word	-68
	.word	4
	.word	_Label_3959
	.word	-72
	.word	4
	.word	_Label_3960
	.word	-76
	.word	4
	.word	_Label_3961
	.word	-80
	.word	4
	.word	_Label_3962
	.word	-84
	.word	4
	.word	_Label_3963
	.word	-88
	.word	4
	.word	_Label_3964
	.word	-92
	.word	4
	.word	_Label_3965
	.word	-96
	.word	4
	.word	_Label_3966
	.word	-100
	.word	4
	.word	_Label_3967
	.word	-104
	.word	4
	.word	_Label_3968
	.word	-9
	.word	1
	.word	_Label_3969
	.word	-10
	.word	1
	.word	0
_Label_3943:
	.ascii	"SerialDriver"
	.ascii	"::"
	.ascii	"SerialHandler\0"
	.align
_Label_3944:
	.ascii	"Pself\0"
	.align
_Label_3945:
	.byte	'?'
	.ascii	"_temp_3942\0"
	.align
_Label_3946:
	.byte	'?'
	.ascii	"_temp_3941\0"
	.align
_Label_3947:
	.byte	'?'
	.ascii	"_temp_3940\0"
	.align
_Label_3948:
	.byte	'?'
	.ascii	"_temp_3939\0"
	.align
_Label_3949:
	.byte	'?'
	.ascii	"_temp_3938\0"
	.align
_Label_3950:
	.byte	'?'
	.ascii	"_temp_3937\0"
	.align
_Label_3951:
	.byte	'?'
	.ascii	"_temp_3934\0"
	.align
_Label_3952:
	.byte	'?'
	.ascii	"_temp_3933\0"
	.align
_Label_3953:
	.byte	'?'
	.ascii	"_temp_3930\0"
	.align
_Label_3954:
	.byte	'?'
	.ascii	"_temp_3929\0"
	.align
_Label_3955:
	.byte	'?'
	.ascii	"_temp_3928\0"
	.align
_Label_3956:
	.byte	'?'
	.ascii	"_temp_3927\0"
	.align
_Label_3957:
	.byte	'?'
	.ascii	"_temp_3926\0"
	.align
_Label_3958:
	.byte	'?'
	.ascii	"_temp_3925\0"
	.align
_Label_3959:
	.byte	'?'
	.ascii	"_temp_3923\0"
	.align
_Label_3960:
	.byte	'?'
	.ascii	"_temp_3922\0"
	.align
_Label_3961:
	.byte	'?'
	.ascii	"_temp_3919\0"
	.align
_Label_3962:
	.byte	'?'
	.ascii	"_temp_3918\0"
	.align
_Label_3963:
	.byte	'?'
	.ascii	"_temp_3917\0"
	.align
_Label_3964:
	.byte	'?'
	.ascii	"_temp_3914\0"
	.align
_Label_3965:
	.byte	'I'
	.ascii	"serial_status_word\0"
	.align
_Label_3966:
	.byte	'I'
	.ascii	"character_available_bit\0"
	.align
_Label_3967:
	.byte	'I'
	.ascii	"output_ready_bit\0"
	.align
_Label_3968:
	.byte	'C'
	.ascii	"inChar\0"
	.align
_Label_3969:
	.byte	'C'
	.ascii	"outChar\0"
	.align
