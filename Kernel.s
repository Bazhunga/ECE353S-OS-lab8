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
_StringConst_189:
	.word	14			! length
	.ascii	"\' was ignored\n"
	.align
_StringConst_188:
	.word	42			! length
	.ascii	"\nSerial input buffer overrun - character \'"
	.align
_StringConst_187:
	.word	19			! length
	.ascii	"serialHandlerThread"
	.align
_StringConst_186:
	.word	30			! length
	.ascii	"Initializing Serial Driver...\n"
	.align
_StringConst_185:
	.word	60			! length
	.ascii	"LoadExecutable: Invalid file format - missing separator (3)\n"
	.align
_StringConst_184:
	.word	50			! length
	.ascii	"LoadExecutable: Problems reading from file (text)\n"
	.align
_StringConst_183:
	.word	60			! length
	.ascii	"LoadExecutable: Invalid file format - missing separator (2)\n"
	.align
_StringConst_182:
	.word	50			! length
	.ascii	"LoadExecutable: Problems reading from file (text)\n"
	.align
_StringConst_181:
	.word	60			! length
	.ascii	"LoadExecutable: Invalid file format - missing separator (1)\n"
	.align
_StringConst_180:
	.word	40			! length
	.ascii	"LoadExecutable: MAX_PAGES_PER_VIRT_SPACE"
	.align
_StringConst_179:
	.word	53			! length
	.ascii	"LoadExecutable: Number of pages in this address space"
	.align
_StringConst_178:
	.word	61			! length
	.ascii	"LoadExecutable: This virtual address space exceeds the limit\n"
	.align
_StringConst_177:
	.word	49			! length
	.ascii	"LoadExecutable: bssStart != dataStart + dataSize\n"
	.align
_StringConst_176:
	.word	65			! length
	.ascii	"LoadExecutable: The bss segment size not a multiple of page size\n"
	.align
_StringConst_175:
	.word	50			! length
	.ascii	"LoadExecutable: dataStart != textStart + textSize\n"
	.align
_StringConst_174:
	.word	66			! length
	.ascii	"LoadExecutable: The data segment size not a multiple of page size\n"
	.align
_StringConst_173:
	.word	95			! length
	.ascii	"LoadExecutable: The environment size does not match the \'loadAddr\' info supplied to the linker\n"
	.align
_StringConst_172:
	.word	66			! length
	.ascii	"LoadExecutable: The text segment size not a multiple of page size\n"
	.align
_StringConst_171:
	.word	33			! length
	.ascii	"LoadExecutable: Bad magic number\n"
	.align
_StringConst_170:
	.word	55			! length
	.ascii	"LoadExecutable: This virtual address space is not empty"
	.align
_StringConst_169:
	.word	32			! length
	.ascii	"Within ReadInt: ReadBytes failed"
	.align
_StringConst_168:
	.word	5			! length
	.ascii	"null\n"
	.align
_StringConst_167:
	.word	6			! length
	.ascii	", fcb="
	.align
_StringConst_166:
	.word	28			! length
	.ascii	"    OPEN FILE:   currentPos="
	.align
_StringConst_165:
	.word	26			! length
	.ascii	",  relativeSectorInBuffer="
	.align
_StringConst_164:
	.word	13			! length
	.ascii	",  bufferPtr="
	.align
_StringConst_163:
	.word	21			! length
	.ascii	",  sizeOfFileInBytes="
	.align
_StringConst_162:
	.word	18			! length
	.ascii	",  startingSector="
	.align
_StringConst_161:
	.word	17			! length
	.ascii	",  numberOfUsers="
	.align
_StringConst_160:
	.word	6			! length
	.ascii	"fcbID="
	.align
_StringConst_159:
	.word	48			! length
	.ascii	"FileManager.SynchWrite: file not properly opened"
	.align
_StringConst_158:
	.word	47			! length
	.ascii	"FileManager.SynchRead: file not properly opened"
	.align
_StringConst_157:
	.word	67			! length
	.ascii	"FileManager.Flush: buffer is dirty but relativeSectorInBuffer =  -1"
	.align
_StringConst_156:
	.word	72			! length
	.ascii	"In FileManager.Open: a free FCB appears not to have been closed properly"
	.align
_StringConst_155:
	.word	51			! length
	.ascii	"Magic number in sector 0 of stub file system is bad"
	.align
_StringConst_154:
	.word	36			! length
	.ascii	"Here is the FREE list of OpenFiles:\n"
	.align
_StringConst_153:
	.word	3			! length
	.ascii	":  "
	.align
_StringConst_152:
	.word	5			! length
	.ascii	":  0x"
	.align
_StringConst_151:
	.word	2			! length
	.ascii	"  "
	.align
_StringConst_150:
	.word	30			! length
	.ascii	"Here is the OpenFile table...\n"
	.align
_StringConst_149:
	.word	47			! length
	.ascii	"Here is the FREE list of FileControlBlocks:\n   "
	.align
_StringConst_148:
	.word	3			! length
	.ascii	":  "
	.align
_StringConst_147:
	.word	2			! length
	.ascii	"  "
	.align
_StringConst_146:
	.word	38			! length
	.ascii	"Here is the FileControlBlock table...\n"
	.align
_StringConst_145:
	.word	29			! length
	.ascii	"Initializing File Manager...\n"
	.align
_StringConst_144:
	.word	40			! length
	.ascii	"SynchWriteSector: Unexpected status code"
	.align
_StringConst_143:
	.word	52			! length
	.ascii	"Disk I/O error in SynchWriteSector: Bad command word"
	.align
_StringConst_142:
	.word	95			! length
	.ascii	"Disk I/O error in SynchWriteSector: Bad sectorAddr or sectorCount specifies non-existant sector"
	.align
_StringConst_141:
	.word	76			! length
	.ascii	"Disk I/O error in SynchWriteSector: Attempt to access invalid memory address"
	.align
_StringConst_140:
	.word	99			! length
	.ascii	"Disk I/O error in SynchWriteSector: Memory addr is not page-aligned or sector count is not positive"
	.align
_StringConst_139:
	.word	39			! length
	.ascii	"SynchReadSector: Unexpected status code"
	.align
_StringConst_138:
	.word	51			! length
	.ascii	"Disk I/O error in SynchReadSector: Bad command word"
	.align
_StringConst_137:
	.word	94			! length
	.ascii	"Disk I/O error in SynchReadSector: Bad sectorAddr or sectorCount specifies non-existant sector"
	.align
_StringConst_136:
	.word	75			! length
	.ascii	"Disk I/O error in SynchReadSector: Attempt to access invalid memory address"
	.align
_StringConst_135:
	.word	98			! length
	.ascii	"Disk I/O error in SynchReadSector: Memory addr is not page-aligned or sector count is not positive"
	.align
_StringConst_134:
	.word	28			! length
	.ascii	"Initializing Disk Driver...\n"
	.align
_StringConst_133:
	.word	38			! length
	.ascii	"  Virtual page is not marked VALID!!!\n"
	.align
_StringConst_132:
	.word	38			! length
	.ascii	"  Virtual page number is too large!!!\n"
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
	.word	6			! length
	.ascii	"      "
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
	.word	9			! length
	.ascii	"         "
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
	.word	6			! length
	.ascii	"      "
	.align
_StringConst_122:
	.word	3			! length
	.ascii	"   "
	.align
_StringConst_121:
	.word	3			! length
	.ascii	"YES"
	.align
_StringConst_120:
	.word	5			! length
	.ascii	"     "
	.align
_StringConst_119:
	.word	10			! length
	.ascii	"          "
	.align
_StringConst_118:
	.word	4			! length
	.ascii	"    "
	.align
_StringConst_117:
	.word	2			! length
	.ascii	"  "
	.align
_StringConst_116:
	.word	5			! length
	.ascii	"     "
	.align
_StringConst_115:
	.word	3			! length
	.ascii	":  "
	.align
_StringConst_114:
	.word	5			! length
	.ascii	"     "
	.align
_StringConst_113:
	.word	109			! length
	.ascii	"     ==========   ==========     ==========  ==========  ==============  =====  ==========  =========  =====\n"
	.align
_StringConst_112:
	.word	109			! length
	.ascii	"        addr        entry          Virtual    Physical   Undefined Bits  Dirty  Referenced  Writeable  Valid\n"
	.align
_StringConst_111:
	.word	35			! length
	.ascii	"  Here are the frames in use: \n    "
	.align
_StringConst_110:
	.word	18			! length
	.ascii	"  numberFreeFrames"
	.align
_StringConst_109:
	.word	15			! length
	.ascii	"FRAME MANAGER:\n"
	.align
_StringConst_108:
	.word	89			! length
	.ascii	"Kernel code size appears to have grown too large and is overflowing into the frame region"
	.align
_StringConst_107:
	.word	30			! length
	.ascii	"Initializing Frame Manager...\n"
	.align
_StringConst_106:
	.word	22			! length
	.ascii	"Should never be called"
	.align
_StringConst_105:
	.word	50			! length
	.ascii	"Here is the FREE list of ProcessControlBlocks:\n   "
	.align
_StringConst_104:
	.word	2			! length
	.ascii	"  "
	.align
_StringConst_103:
	.word	29			! length
	.ascii	"Here is the process table...\n"
	.align
_StringConst_102:
	.word	50			! length
	.ascii	"Here is the FREE list of ProcessControlBlocks:\n   "
	.align
_StringConst_101:
	.word	1			! length
	.ascii	":"
	.align
_StringConst_100:
	.word	2			! length
	.ascii	"  "
	.align
_StringConst_99:
	.word	29			! length
	.ascii	"Here is the process table...\n"
	.align
_StringConst_98:
	.word	32			! length
	.ascii	"Initializing Process Manager...\n"
	.align
_StringConst_97:
	.word	13			! length
	.ascii	", exitStatus="
	.align
_StringConst_96:
	.word	13			! length
	.ascii	", parentsPid="
	.align
_StringConst_95:
	.word	33			! length
	.ascii	"Bad status in ProcessControlBlock"
	.align
_StringConst_94:
	.word	4			! length
	.ascii	"FREE"
	.align
_StringConst_93:
	.word	6			! length
	.ascii	"ZOMBIE"
	.align
_StringConst_92:
	.word	6			! length
	.ascii	"ACTIVE"
	.align
_StringConst_91:
	.word	9			! length
	.ascii	", status="
	.align
_StringConst_90:
	.word	8			! length
	.ascii	")   pid="
	.align
_StringConst_89:
	.word	30			! length
	.ascii	"  ProcessControlBlock   (addr="
	.align
_StringConst_88:
	.word	15			! length
	.ascii	"    myThread = "
	.align
_StringConst_87:
	.word	37			! length
	.ascii	"Here is the FREE list of Threads:\n   "
	.align
_StringConst_86:
	.word	1			! length
	.ascii	":"
	.align
_StringConst_85:
	.word	2			! length
	.ascii	"  "
	.align
_StringConst_84:
	.word	28			! length
	.ascii	"Here is the thread table...\n"
	.align
_StringConst_83:
	.word	6			! length
	.ascii	"thread"
	.align
_StringConst_82:
	.word	31			! length
	.ascii	"Initializing Thread Manager...\n"
	.align
_StringConst_81:
	.word	1			! length
	.ascii	"\n"
	.align
_StringConst_80:
	.word	3			! length
	.ascii	"   "
	.align
_StringConst_79:
	.word	2			! length
	.ascii	": "
	.align
_StringConst_78:
	.word	7			! length
	.ascii	"      r"
	.align
_StringConst_77:
	.word	20			! length
	.ascii	"    user registers:\n"
	.align
_StringConst_76:
	.word	20			! length
	.ascii	"    is user thread: "
	.align
_StringConst_75:
	.word	20			! length
	.ascii	"Bad status in Thread"
	.align
_StringConst_74:
	.word	20			! length
	.ascii	"    status = UNUSED\n"
	.align
_StringConst_73:
	.word	21			! length
	.ascii	"    status = BLOCKED\n"
	.align
_StringConst_72:
	.word	21			! length
	.ascii	"    status = RUNNING\n"
	.align
_StringConst_71:
	.word	19			! length
	.ascii	"    status = READY\n"
	.align
_StringConst_70:
	.word	26			! length
	.ascii	"    status = JUST_CREATED\n"
	.align
_StringConst_69:
	.word	23			! length
	.ascii	"    stack starting addr"
	.align
_StringConst_68:
	.word	12			! length
	.ascii	"    stackTop"
	.align
_StringConst_67:
	.word	1			! length
	.ascii	"\n"
	.align
_StringConst_66:
	.word	3			! length
	.ascii	"   "
	.align
_StringConst_65:
	.word	2			! length
	.ascii	": "
	.align
_StringConst_64:
	.word	7			! length
	.ascii	"      r"
	.align
_StringConst_63:
	.word	19			! length
	.ascii	"    machine state:\n"
	.align
_StringConst_62:
	.word	2			! length
	.ascii	")\n"
	.align
_StringConst_61:
	.word	29			! length
	.ascii	"\"    (addr of Thread object: "
	.align
_StringConst_60:
	.word	10			! length
	.ascii	"  Thread \""
	.align
_StringConst_59:
	.word	32			! length
	.ascii	"System stack underflow detected!"
	.align
_StringConst_58:
	.word	31			! length
	.ascii	"System stack overflow detected!"
	.align
_StringConst_57:
	.word	48			! length
	.ascii	"Ready list should always contain the idle thread"
	.align
_StringConst_56:
	.word	31			! length
	.ascii	"In Sleep, self != currentThread"
	.align
_StringConst_55:
	.word	44			! length
	.ascii	"In Sleep, currentInterruptStatus != DISABLED"
	.align
_StringConst_54:
	.word	51			! length
	.ascii	"Status of current thread should be READY or RUNNING"
	.align
_StringConst_53:
	.word	31			! length
	.ascii	"In Yield, self != currentThread"
	.align
_StringConst_52:
	.word	54			! length
	.ascii	"Attempt to broadcast a condition when lock is not held"
	.align
_StringConst_51:
	.word	52			! length
	.ascii	"Attempt to signal a condition when mutex is not held"
	.align
_StringConst_50:
	.word	51			! length
	.ascii	"Attempt to wait on condition when mutex is not held"
	.align
_StringConst_49:
	.word	52			! length
	.ascii	"Attempt to unlock a mutex by a thread not holding it"
	.align
_StringConst_48:
	.word	54			! length
	.ascii	"Attempt to lock a mutex by a thread already holding it"
	.align
_StringConst_47:
	.word	51			! length
	.ascii	"Semaphore count underflowed during \'Down\' operation"
	.align
_StringConst_46:
	.word	48			! length
	.ascii	"Semaphore count overflowed during \'Up\' operation"
	.align
_StringConst_45:
	.word	39			! length
	.ascii	"Semaphore created with initialCount < 0"
	.align
_StringConst_44:
	.word	3			! length
	.ascii	":  "
	.align
_StringConst_43:
	.word	4			! length
	.ascii	"  0x"
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
	be	_Label_198
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
_Label_198:
	mov	0,r1
! Make sure _P_System_ has hash value 0x9e9d23b6 (decimal -1633868874)
	set	_packageName,r2
	set	0x9e9d23b6,r3
	call	_CheckVersion_P_System_
	.import	_CheckVersion_P_System_
	cmp	r1,0
	bne	_Label_199
! Make sure _P_BitMap_ has hash value 0xa596b1b5 (decimal -1516850763)
	set	_packageName,r2
	set	0xa596b1b5,r3
	call	_CheckVersion_P_BitMap_
	.import	_CheckVersion_P_BitMap_
	cmp	r1,0
	bne	_Label_199
! Make sure _P_List_ has hash value 0xafebcabb (decimal -1343501637)
	set	_packageName,r2
	set	0xafebcabb,r3
	call	_CheckVersion_P_List_
	.import	_CheckVersion_P_List_
	cmp	r1,0
	bne	_Label_199
_Label_199:
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
_Label_3783:
	push	r0
	sub	r1,1,r1
	bne	_Label_3783
	mov	7,r13		! source line 7
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   Call the function
	mov	14,r13		! source line 14
	mov	"\0\0CE",r10
	call	Cleari
! CALL STATEMENT...
!   _temp_200 = _StringConst_1
	set	_StringConst_1,r1
	store	r1,[r14+-60]
!   Prepare Argument: offset=8  value=_temp_200  sizeInBytes=4
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
_Label_3784:
	store	r0,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_3784
!   _P_Kernel_mainThread = _P_Kernel_Thread
	set	_P_Kernel_Thread,r1
	set	_P_Kernel_mainThread,r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	19,r13		! source line 19
	mov	"\0\0SE",r10
!   _temp_204 = _StringConst_2
	set	_StringConst_2,r1
	store	r1,[r14+-44]
!   _temp_205 = &_P_Kernel_mainThread
	set	_P_Kernel_mainThread,r1
	store	r1,[r14+-40]
!   Prepare Argument: offset=12  value=_temp_204  sizeInBytes=4
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
!   _temp_206 = &_P_Kernel_mainThread
	set	_P_Kernel_mainThread,r1
	store	r1,[r14+-36]
!   _temp_207 = _temp_206 + 76
	load	[r14+-36],r1
	add	r1,76,r1
	store	r1,[r14+-32]
!   Data Move: *_temp_207 = 3  (sizeInBytes=4)
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
_Label_3785:
	store	r0,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_3785
!   _P_Kernel_idleThread = _P_Kernel_Thread
	set	_P_Kernel_Thread,r1
	set	_P_Kernel_idleThread,r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	22,r13		! source line 22
	mov	"\0\0SE",r10
!   _temp_209 = _StringConst_3
	set	_StringConst_3,r1
	store	r1,[r14+-24]
!   _temp_210 = &_P_Kernel_idleThread
	set	_P_Kernel_idleThread,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=12  value=_temp_209  sizeInBytes=4
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
!   _temp_211 = _function_197_IdleFunction
	set	_function_197_IdleFunction,r1
	store	r1,[r14+-16]
!   _temp_212 = &_P_Kernel_idleThread
	set	_P_Kernel_idleThread,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=12  value=_temp_211  sizeInBytes=4
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
	.word	_Label_213
	.word	0		! total size of parameters
	.word	64		! frame size = 64
	.word	_Label_214
	.word	-12
	.word	4
	.word	_Label_215
	.word	-16
	.word	4
	.word	_Label_216
	.word	-20
	.word	4
	.word	_Label_217
	.word	-24
	.word	4
	.word	_Label_218
	.word	-28
	.word	4
	.word	_Label_219
	.word	-32
	.word	4
	.word	_Label_220
	.word	-36
	.word	4
	.word	_Label_221
	.word	-40
	.word	4
	.word	_Label_222
	.word	-44
	.word	4
	.word	_Label_223
	.word	-48
	.word	4
	.word	_Label_224
	.word	-52
	.word	4
	.word	_Label_225
	.word	-56
	.word	4
	.word	_Label_226
	.word	-60
	.word	4
	.word	0
_Label_213:
	.ascii	"InitializeScheduler\0"
	.align
_Label_214:
	.byte	'?'
	.ascii	"_temp_212\0"
	.align
_Label_215:
	.byte	'?'
	.ascii	"_temp_211\0"
	.align
_Label_216:
	.byte	'?'
	.ascii	"_temp_210\0"
	.align
_Label_217:
	.byte	'?'
	.ascii	"_temp_209\0"
	.align
_Label_218:
	.byte	'?'
	.ascii	"_temp_208\0"
	.align
_Label_219:
	.byte	'?'
	.ascii	"_temp_207\0"
	.align
_Label_220:
	.byte	'?'
	.ascii	"_temp_206\0"
	.align
_Label_221:
	.byte	'?'
	.ascii	"_temp_205\0"
	.align
_Label_222:
	.byte	'?'
	.ascii	"_temp_204\0"
	.align
_Label_223:
	.byte	'?'
	.ascii	"_temp_203\0"
	.align
_Label_224:
	.byte	'?'
	.ascii	"_temp_202\0"
	.align
_Label_225:
	.byte	'?'
	.ascii	"_temp_201\0"
	.align
_Label_226:
	.byte	'?'
	.ascii	"_temp_200\0"
	.align
! 
! ===============  FUNCTION IdleFunction  ===============
! 
_function_197_IdleFunction:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__function_197_IdleFunction,r1
	push	r1
	mov	3,r1
_Label_3786:
	push	r0
	sub	r1,1,r1
	bne	_Label_3786
	mov	32,r13		! source line 32
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! WHILE STATEMENT...
	mov	42,r13		! source line 42
	mov	"\0\0WH",r10
_Label_227:
!	jmp	_Label_228
_Label_228:
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
!   _temp_232 = &_P_Kernel_readyList
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
!   if result==true then goto _Label_230 else goto _Label_231
	loadb	[r15],r1
	cmp	r1,0
	be	_Label_231
	jmp	_Label_230
_Label_230:
! THEN...
	mov	45,r13		! source line 45
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   Call the function
	mov	45,r13		! source line 45
	mov	"\0\0CE",r10
	call	Wait
	jmp	_Label_233
_Label_231:
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
_Label_233:
! END WHILE...
	jmp	_Label_227
_Label_229:
! 
! Routine Descriptor
! 
_RoutineDescriptor__function_197_IdleFunction:
	.word	_sourceFileName
	.word	_Label_234
	.word	4		! total size of parameters
	.word	12		! frame size = 12
	.word	_Label_235
	.word	8
	.word	4
	.word	_Label_236
	.word	-12
	.word	4
	.word	_Label_237
	.word	-16
	.word	4
	.word	0
_Label_234:
	.ascii	"IdleFunction\0"
	.align
_Label_235:
	.byte	'I'
	.ascii	"arg\0"
	.align
_Label_236:
	.byte	'?'
	.ascii	"_temp_232\0"
	.align
_Label_237:
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
_Label_3787:
	push	r0
	sub	r1,1,r1
	bne	_Label_3787
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
!   _temp_240 = prevThread + 4092
	load	[r14+-76],r1
	add	r1,4092,r1
	store	r1,[r14+-72]
!   if boolIsZero (_temp_240 ) then goto _Label_239		(int)
	load	[r14+-72],r1
	loadb	[r1],r1
	cmp	r1,r0
	be	_Label_239
!	jmp	_Label_238
_Label_238:
! THEN...
	mov	71,r13		! source line 71
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   if intIsZero (prevThread) then goto _runtimeErrorNullPointer
	load	[r14+-76],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_242 = prevThread + 4096
	load	[r14+-76],r1
	add	r1,4096,r1
	store	r1,[r14+-64]
!   Move address of _temp_242 [0 ] into _temp_243
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
!   _temp_241 = _temp_243		(4 bytes)
	load	[r14+-60],r1
	store	r1,[r14+-68]
!   Prepare Argument: offset=8  value=_temp_241  sizeInBytes=4
	load	[r14+-68],r1
	store	r1,[r15+0]
!   Call the function
	mov	71,r13		! source line 71
	mov	"\0\0CE",r10
	call	SaveUserRegs
! END IF...
_Label_239:
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
!   _temp_244 = nextThread + 76
	load	[r14+8],r1
	add	r1,76,r1
	store	r1,[r14+-56]
!   Data Move: *_temp_244 = 3  (sizeInBytes=4)
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
_Label_245:
	mov	84,r13		! source line 84
	mov	"\0\0SE",r10
!   _temp_249 = &_P_Kernel_threadsToBeDestroyed
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
!   Retrieve Result: targetName=_temp_248  sizeInBytes=1
	loadb	[r15],r1
	storeb	r1,[r14+-9]
!   if _temp_248 then goto _Label_247 else goto _Label_246
	loadb	[r14+-9],r1
	cmp	r1,0
	be	_Label_246
	jmp	_Label_247
_Label_246:
	mov	84,r13		! source line 84
	mov	"\0\0WB",r10
! ASSIGNMENT STATEMENT...
	mov	85,r13		! source line 85
	mov	"\0\0AS",r10
	mov	85,r13		! source line 85
	mov	"\0\0SE",r10
!   _temp_250 = &_P_Kernel_threadsToBeDestroyed
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
!   _temp_251 = &_P_Kernel_threadManager
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
	jmp	_Label_245
_Label_247:
! IF STATEMENT...
	mov	89,r13		! source line 89
	mov	"\0\0IF",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_254 = _P_Kernel_currentThread + 4092
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4092,r1
	store	r1,[r14+-40]
!   if boolIsZero (_temp_254 ) then goto _Label_253		(int)
	load	[r14+-40],r1
	loadb	[r1],r1
	cmp	r1,r0
	be	_Label_253
!	jmp	_Label_252
_Label_252:
! THEN...
	mov	90,r13		! source line 90
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_256 = _P_Kernel_currentThread + 4096
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4096,r1
	store	r1,[r14+-32]
!   Move address of _temp_256 [0 ] into _temp_257
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
!   _temp_255 = _temp_257		(4 bytes)
	load	[r14+-28],r1
	store	r1,[r14+-36]
!   Prepare Argument: offset=8  value=_temp_255  sizeInBytes=4
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
!   _temp_259 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-20]
!   Data Move: _temp_258 = *_temp_259  (sizeInBytes=4)
	load	[r14+-20],r1
	load	[r1],r1
	store	r1,[r14+-24]
!   if intIsZero (_temp_258) then goto _runtimeErrorNullPointer
	load	[r14+-24],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_260 = _temp_258 + 32
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
_Label_253:
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
	.word	_Label_261
	.word	4		! total size of parameters
	.word	80		! frame size = 80
	.word	_Label_262
	.word	8
	.word	4
	.word	_Label_263
	.word	-16
	.word	4
	.word	_Label_264
	.word	-20
	.word	4
	.word	_Label_265
	.word	-24
	.word	4
	.word	_Label_266
	.word	-28
	.word	4
	.word	_Label_267
	.word	-32
	.word	4
	.word	_Label_268
	.word	-36
	.word	4
	.word	_Label_269
	.word	-40
	.word	4
	.word	_Label_270
	.word	-44
	.word	4
	.word	_Label_271
	.word	-48
	.word	4
	.word	_Label_272
	.word	-52
	.word	4
	.word	_Label_273
	.word	-9
	.word	1
	.word	_Label_274
	.word	-56
	.word	4
	.word	_Label_275
	.word	-60
	.word	4
	.word	_Label_276
	.word	-64
	.word	4
	.word	_Label_277
	.word	-68
	.word	4
	.word	_Label_278
	.word	-72
	.word	4
	.word	_Label_279
	.word	-76
	.word	4
	.word	_Label_280
	.word	-80
	.word	4
	.word	0
_Label_261:
	.ascii	"Run\0"
	.align
_Label_262:
	.byte	'P'
	.ascii	"nextThread\0"
	.align
_Label_263:
	.byte	'?'
	.ascii	"_temp_260\0"
	.align
_Label_264:
	.byte	'?'
	.ascii	"_temp_259\0"
	.align
_Label_265:
	.byte	'?'
	.ascii	"_temp_258\0"
	.align
_Label_266:
	.byte	'?'
	.ascii	"_temp_257\0"
	.align
_Label_267:
	.byte	'?'
	.ascii	"_temp_256\0"
	.align
_Label_268:
	.byte	'?'
	.ascii	"_temp_255\0"
	.align
_Label_269:
	.byte	'?'
	.ascii	"_temp_254\0"
	.align
_Label_270:
	.byte	'?'
	.ascii	"_temp_251\0"
	.align
_Label_271:
	.byte	'?'
	.ascii	"_temp_250\0"
	.align
_Label_272:
	.byte	'?'
	.ascii	"_temp_249\0"
	.align
_Label_273:
	.byte	'C'
	.ascii	"_temp_248\0"
	.align
_Label_274:
	.byte	'?'
	.ascii	"_temp_244\0"
	.align
_Label_275:
	.byte	'?'
	.ascii	"_temp_243\0"
	.align
_Label_276:
	.byte	'?'
	.ascii	"_temp_242\0"
	.align
_Label_277:
	.byte	'?'
	.ascii	"_temp_241\0"
	.align
_Label_278:
	.byte	'?'
	.ascii	"_temp_240\0"
	.align
_Label_279:
	.byte	'P'
	.ascii	"prevThread\0"
	.align
_Label_280:
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
_Label_3788:
	push	r0
	sub	r1,1,r1
	bne	_Label_3788
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
!   _temp_281 = _StringConst_4
	set	_StringConst_4,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_281  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   Call the function
	mov	105,r13		! source line 105
	mov	"\0\0CE",r10
	call	print
! SEND STATEMENT...
	mov	106,r13		! source line 106
	mov	"\0\0SE",r10
!   _temp_282 = _function_196_ThreadPrintShort
	set	_function_196_ThreadPrintShort,r1
	store	r1,[r14+-16]
!   _temp_283 = &_P_Kernel_readyList
	set	_P_Kernel_readyList,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=12  value=_temp_282  sizeInBytes=4
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
	.word	_Label_284
	.word	0		! total size of parameters
	.word	24		! frame size = 24
	.word	_Label_285
	.word	-12
	.word	4
	.word	_Label_286
	.word	-16
	.word	4
	.word	_Label_287
	.word	-20
	.word	4
	.word	_Label_288
	.word	-24
	.word	4
	.word	0
_Label_284:
	.ascii	"PrintReadyList\0"
	.align
_Label_285:
	.byte	'?'
	.ascii	"_temp_283\0"
	.align
_Label_286:
	.byte	'?'
	.ascii	"_temp_282\0"
	.align
_Label_287:
	.byte	'?'
	.ascii	"_temp_281\0"
	.align
_Label_288:
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
_Label_3789:
	push	r0
	sub	r1,1,r1
	bne	_Label_3789
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
!   _temp_289 = _P_Kernel_currentThread + 80
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,80,r1
	store	r1,[r14+-24]
!   Data Move: mainFun = *_temp_289  (sizeInBytes=4)
	load	[r14+-24],r1
	load	[r1],r1
	store	r1,[r14+-32]
! CALL STATEMENT...
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_291 = _P_Kernel_currentThread + 84
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,84,r1
	store	r1,[r14+-16]
!   Data Move: _temp_290 = *_temp_291  (sizeInBytes=4)
	load	[r14+-16],r1
	load	[r1],r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_290  sizeInBytes=4
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
!   _temp_292 = _StringConst_5
	set	_StringConst_5,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_292  sizeInBytes=4
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
	.word	_Label_293
	.word	0		! total size of parameters
	.word	28		! frame size = 28
	.word	_Label_294
	.word	-12
	.word	4
	.word	_Label_295
	.word	-16
	.word	4
	.word	_Label_296
	.word	-20
	.word	4
	.word	_Label_297
	.word	-24
	.word	4
	.word	_Label_298
	.word	-28
	.word	4
	.word	_Label_299
	.word	-32
	.word	4
	.word	0
_Label_293:
	.ascii	"ThreadStartMain\0"
	.align
_Label_294:
	.byte	'?'
	.ascii	"_temp_292\0"
	.align
_Label_295:
	.byte	'?'
	.ascii	"_temp_291\0"
	.align
_Label_296:
	.byte	'?'
	.ascii	"_temp_290\0"
	.align
_Label_297:
	.byte	'?'
	.ascii	"_temp_289\0"
	.align
_Label_298:
	.byte	'I'
	.ascii	"junk\0"
	.align
_Label_299:
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
_Label_3790:
	push	r0
	sub	r1,1,r1
	bne	_Label_3790
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
!   _temp_300 = &_P_Kernel_threadsToBeDestroyed
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
!   _temp_301 = _StringConst_6
	set	_StringConst_6,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_301  sizeInBytes=4
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
	.word	_Label_302
	.word	0		! total size of parameters
	.word	20		! frame size = 20
	.word	_Label_303
	.word	-12
	.word	4
	.word	_Label_304
	.word	-16
	.word	4
	.word	_Label_305
	.word	-20
	.word	4
	.word	0
_Label_302:
	.ascii	"ThreadFinish\0"
	.align
_Label_303:
	.byte	'?'
	.ascii	"_temp_301\0"
	.align
_Label_304:
	.byte	'?'
	.ascii	"_temp_300\0"
	.align
_Label_305:
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
_Label_3791:
	push	r0
	sub	r1,1,r1
	bne	_Label_3791
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
!   _temp_306 = _StringConst_7
	set	_StringConst_7,r1
	store	r1,[r14+-36]
!   Prepare Argument: offset=8  value=_temp_306  sizeInBytes=4
	load	[r14+-36],r1
	store	r1,[r15+0]
!   Call the function
	mov	165,r13		! source line 165
	mov	"\0\0CE",r10
	call	print
! IF STATEMENT...
	mov	166,r13		! source line 166
	mov	"\0\0IF",r10
!   if _P_Kernel_currentThread == 0 then goto _Label_308		(int)
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	mov	0,r2
	cmp	r1,r2
	be	_Label_308
!	jmp	_Label_307
_Label_307:
! THEN...
	mov	167,r13		! source line 167
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_309 = _StringConst_8
	set	_StringConst_8,r1
	store	r1,[r14+-32]
!   Prepare Argument: offset=8  value=_temp_309  sizeInBytes=4
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
!   _temp_311 = _P_Kernel_currentThread + 72
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,72,r1
	store	r1,[r14+-24]
!   Data Move: _temp_310 = *_temp_311  (sizeInBytes=4)
	load	[r14+-24],r1
	load	[r1],r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=8  value=_temp_310  sizeInBytes=4
	load	[r14+-28],r1
	store	r1,[r15+0]
!   Call the function
	mov	168,r13		! source line 168
	mov	"\0\0CE",r10
	call	print
! END IF...
_Label_308:
! CALL STATEMENT...
!   _temp_312 = _StringConst_9
	set	_StringConst_9,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_312  sizeInBytes=4
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
!   _temp_313 = _StringConst_10
	set	_StringConst_10,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_313  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+0]
!   Call the function
	mov	172,r13		! source line 172
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_314 = _StringConst_11
	set	_StringConst_11,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_314  sizeInBytes=4
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
	.word	_Label_315
	.word	4		! total size of parameters
	.word	36		! frame size = 36
	.word	_Label_316
	.word	8
	.word	4
	.word	_Label_317
	.word	-12
	.word	4
	.word	_Label_318
	.word	-16
	.word	4
	.word	_Label_319
	.word	-20
	.word	4
	.word	_Label_320
	.word	-24
	.word	4
	.word	_Label_321
	.word	-28
	.word	4
	.word	_Label_322
	.word	-32
	.word	4
	.word	_Label_323
	.word	-36
	.word	4
	.word	_Label_324
	.word	-40
	.word	4
	.word	0
_Label_315:
	.ascii	"FatalError_ThreadVersion\0"
	.align
_Label_316:
	.byte	'P'
	.ascii	"errorMessage\0"
	.align
_Label_317:
	.byte	'?'
	.ascii	"_temp_314\0"
	.align
_Label_318:
	.byte	'?'
	.ascii	"_temp_313\0"
	.align
_Label_319:
	.byte	'?'
	.ascii	"_temp_312\0"
	.align
_Label_320:
	.byte	'?'
	.ascii	"_temp_311\0"
	.align
_Label_321:
	.byte	'?'
	.ascii	"_temp_310\0"
	.align
_Label_322:
	.byte	'?'
	.ascii	"_temp_309\0"
	.align
_Label_323:
	.byte	'?'
	.ascii	"_temp_306\0"
	.align
_Label_324:
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
_Label_3792:
	push	r0
	sub	r1,1,r1
	bne	_Label_3792
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
!   if newStatus != 1 then goto _Label_326		(int)
	load	[r14+8],r1
	mov	1,r2
	cmp	r1,r2
	bne	_Label_326
!	jmp	_Label_325
_Label_325:
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
	jmp	_Label_327
_Label_326:
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
_Label_327:
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
	.word	_Label_328
	.word	4		! total size of parameters
	.word	4		! frame size = 4
	.word	_Label_329
	.word	8
	.word	4
	.word	_Label_330
	.word	-12
	.word	4
	.word	0
_Label_328:
	.ascii	"SetInterruptsTo\0"
	.align
_Label_329:
	.byte	'I'
	.ascii	"newStatus\0"
	.align
_Label_330:
	.byte	'I'
	.ascii	"oldStat\0"
	.align
! 
! ===============  FUNCTION ThreadPrintShort  ===============
! 
_function_196_ThreadPrintShort:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__function_196_ThreadPrintShort,r1
	push	r1
	mov	19,r1
_Label_3793:
	push	r0
	sub	r1,1,r1
	bne	_Label_3793
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
!   if t == 0 then goto _Label_334		(int)
	load	[r14+8],r1
	mov	0,r2
	cmp	r1,r2
	be	_Label_334
!   _temp_333 = 1		(1 byte)
	mov	1,r1
	storeb	r1,[r14+-9]
	jmp	_Label_335
_Label_334:
!   _temp_333 = 0		(1 byte)
	mov	0,r1
	storeb	r1,[r14+-9]
_Label_335:
!   if _temp_333 then goto _Label_332 else goto _Label_331
	loadb	[r14+-9],r1
	cmp	r1,0
	be	_Label_331
	jmp	_Label_332
_Label_331:
! THEN...
	mov	650,r13		! source line 650
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_336 = _StringConst_12
	set	_StringConst_12,r1
	store	r1,[r14+-76]
!   Prepare Argument: offset=8  value=_temp_336  sizeInBytes=4
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
_Label_332:
! CALL STATEMENT...
!   _temp_337 = _StringConst_13
	set	_StringConst_13,r1
	store	r1,[r14+-72]
!   Prepare Argument: offset=8  value=_temp_337  sizeInBytes=4
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
!   _temp_339 = t + 72
	load	[r14+8],r1
	add	r1,72,r1
	store	r1,[r14+-64]
!   Data Move: _temp_338 = *_temp_339  (sizeInBytes=4)
	load	[r14+-64],r1
	load	[r1],r1
	store	r1,[r14+-68]
!   Prepare Argument: offset=8  value=_temp_338  sizeInBytes=4
	load	[r14+-68],r1
	store	r1,[r15+0]
!   Call the function
	mov	654,r13		! source line 654
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_340 = _StringConst_14
	set	_StringConst_14,r1
	store	r1,[r14+-60]
!   Prepare Argument: offset=8  value=_temp_340  sizeInBytes=4
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
!   _temp_349 = t + 76
	load	[r14+8],r1
	add	r1,76,r1
	store	r1,[r14+-52]
!   Data Move: _temp_348 = *_temp_349  (sizeInBytes=4)
	load	[r14+-52],r1
	load	[r1],r1
	store	r1,[r14+-56]
!   Branch to the right case label
	load	[r14+-56],r1
	cmp	r1,1
	be	_Label_343
	cmp	r1,2
	be	_Label_344
	cmp	r1,3
	be	_Label_345
	cmp	r1,4
	be	_Label_346
	cmp	r1,5
	be	_Label_347
	jmp	_Label_341
! CASE 1...
_Label_343:
! CALL STATEMENT...
!   _temp_350 = _StringConst_15
	set	_StringConst_15,r1
	store	r1,[r14+-48]
!   Prepare Argument: offset=8  value=_temp_350  sizeInBytes=4
	load	[r14+-48],r1
	store	r1,[r15+0]
!   Call the function
	mov	658,r13		! source line 658
	mov	"\0\0CE",r10
	call	print
! BREAK STATEMENT...
	mov	659,r13		! source line 659
	mov	"\0\0BR",r10
	jmp	_Label_342
! CASE 2...
_Label_344:
! CALL STATEMENT...
!   _temp_351 = _StringConst_16
	set	_StringConst_16,r1
	store	r1,[r14+-44]
!   Prepare Argument: offset=8  value=_temp_351  sizeInBytes=4
	load	[r14+-44],r1
	store	r1,[r15+0]
!   Call the function
	mov	661,r13		! source line 661
	mov	"\0\0CE",r10
	call	print
! BREAK STATEMENT...
	mov	662,r13		! source line 662
	mov	"\0\0BR",r10
	jmp	_Label_342
! CASE 3...
_Label_345:
! CALL STATEMENT...
!   _temp_352 = _StringConst_17
	set	_StringConst_17,r1
	store	r1,[r14+-40]
!   Prepare Argument: offset=8  value=_temp_352  sizeInBytes=4
	load	[r14+-40],r1
	store	r1,[r15+0]
!   Call the function
	mov	664,r13		! source line 664
	mov	"\0\0CE",r10
	call	print
! BREAK STATEMENT...
	mov	665,r13		! source line 665
	mov	"\0\0BR",r10
	jmp	_Label_342
! CASE 4...
_Label_346:
! CALL STATEMENT...
!   _temp_353 = _StringConst_18
	set	_StringConst_18,r1
	store	r1,[r14+-36]
!   Prepare Argument: offset=8  value=_temp_353  sizeInBytes=4
	load	[r14+-36],r1
	store	r1,[r15+0]
!   Call the function
	mov	667,r13		! source line 667
	mov	"\0\0CE",r10
	call	print
! BREAK STATEMENT...
	mov	668,r13		! source line 668
	mov	"\0\0BR",r10
	jmp	_Label_342
! CASE 5...
_Label_347:
! CALL STATEMENT...
!   _temp_354 = _StringConst_19
	set	_StringConst_19,r1
	store	r1,[r14+-32]
!   Prepare Argument: offset=8  value=_temp_354  sizeInBytes=4
	load	[r14+-32],r1
	store	r1,[r15+0]
!   Call the function
	mov	670,r13		! source line 670
	mov	"\0\0CE",r10
	call	print
! BREAK STATEMENT...
	mov	671,r13		! source line 671
	mov	"\0\0BR",r10
	jmp	_Label_342
! DEFAULT CASE...
_Label_341:
! CALL STATEMENT...
!   _temp_355 = _StringConst_20
	set	_StringConst_20,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=8  value=_temp_355  sizeInBytes=4
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
_Label_342:
! CALL STATEMENT...
!   _temp_356 = _StringConst_21
	set	_StringConst_21,r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=8  value=_temp_356  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+0]
!   Call the function
	mov	675,r13		! source line 675
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_357 = t		(4 bytes)
	load	[r14+8],r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_357  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   Call the function
	mov	676,r13		! source line 676
	mov	"\0\0CE",r10
	call	printHex
! CALL STATEMENT...
!   _temp_358 = _StringConst_22
	set	_StringConst_22,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_358  sizeInBytes=4
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
_RoutineDescriptor__function_196_ThreadPrintShort:
	.word	_sourceFileName
	.word	_Label_359
	.word	4		! total size of parameters
	.word	76		! frame size = 76
	.word	_Label_360
	.word	8
	.word	4
	.word	_Label_361
	.word	-16
	.word	4
	.word	_Label_362
	.word	-20
	.word	4
	.word	_Label_363
	.word	-24
	.word	4
	.word	_Label_364
	.word	-28
	.word	4
	.word	_Label_365
	.word	-32
	.word	4
	.word	_Label_366
	.word	-36
	.word	4
	.word	_Label_367
	.word	-40
	.word	4
	.word	_Label_368
	.word	-44
	.word	4
	.word	_Label_369
	.word	-48
	.word	4
	.word	_Label_370
	.word	-52
	.word	4
	.word	_Label_371
	.word	-56
	.word	4
	.word	_Label_372
	.word	-60
	.word	4
	.word	_Label_373
	.word	-64
	.word	4
	.word	_Label_374
	.word	-68
	.word	4
	.word	_Label_375
	.word	-72
	.word	4
	.word	_Label_376
	.word	-76
	.word	4
	.word	_Label_377
	.word	-9
	.word	1
	.word	_Label_378
	.word	-80
	.word	4
	.word	0
_Label_359:
	.ascii	"ThreadPrintShort\0"
	.align
_Label_360:
	.byte	'P'
	.ascii	"t\0"
	.align
_Label_361:
	.byte	'?'
	.ascii	"_temp_358\0"
	.align
_Label_362:
	.byte	'?'
	.ascii	"_temp_357\0"
	.align
_Label_363:
	.byte	'?'
	.ascii	"_temp_356\0"
	.align
_Label_364:
	.byte	'?'
	.ascii	"_temp_355\0"
	.align
_Label_365:
	.byte	'?'
	.ascii	"_temp_354\0"
	.align
_Label_366:
	.byte	'?'
	.ascii	"_temp_353\0"
	.align
_Label_367:
	.byte	'?'
	.ascii	"_temp_352\0"
	.align
_Label_368:
	.byte	'?'
	.ascii	"_temp_351\0"
	.align
_Label_369:
	.byte	'?'
	.ascii	"_temp_350\0"
	.align
_Label_370:
	.byte	'?'
	.ascii	"_temp_349\0"
	.align
_Label_371:
	.byte	'?'
	.ascii	"_temp_348\0"
	.align
_Label_372:
	.byte	'?'
	.ascii	"_temp_340\0"
	.align
_Label_373:
	.byte	'?'
	.ascii	"_temp_339\0"
	.align
_Label_374:
	.byte	'?'
	.ascii	"_temp_338\0"
	.align
_Label_375:
	.byte	'?'
	.ascii	"_temp_337\0"
	.align
_Label_376:
	.byte	'?'
	.ascii	"_temp_336\0"
	.align
_Label_377:
	.byte	'C'
	.ascii	"_temp_333\0"
	.align
_Label_378:
	.byte	'I'
	.ascii	"oldStatus\0"
	.align
! 
! ===============  FUNCTION PrintObjectAddr  ===============
! 
_function_195_PrintObjectAddr:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__function_195_PrintObjectAddr,r1
	push	r1
	mov	2,r1
_Label_3794:
	push	r0
	sub	r1,1,r1
	bne	_Label_3794
	mov	1055,r13		! source line 1055
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   _temp_379 = p		(4 bytes)
	load	[r14+8],r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_379  sizeInBytes=4
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
_RoutineDescriptor__function_195_PrintObjectAddr:
	.word	_sourceFileName
	.word	_Label_380
	.word	4		! total size of parameters
	.word	8		! frame size = 8
	.word	_Label_381
	.word	8
	.word	4
	.word	_Label_382
	.word	-12
	.word	4
	.word	0
_Label_380:
	.ascii	"PrintObjectAddr\0"
	.align
_Label_381:
	.byte	'P'
	.ascii	"p\0"
	.align
_Label_382:
	.byte	'?'
	.ascii	"_temp_379\0"
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
_Label_3795:
	push	r0
	sub	r1,1,r1
	bne	_Label_3795
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
!   _temp_383 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-52]
!   Data Move: thisProcess = *_temp_383  (sizeInBytes=4)
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
!   _temp_384 = thisProcess + 28
	load	[r14+-60],r1
	add	r1,28,r1
	store	r1,[r14+-48]
!   Data Move: *_temp_384 = exitStatus  (sizeInBytes=4)
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
!   _temp_385 = thisProcess + 24
	load	[r14+-60],r1
	add	r1,24,r1
	store	r1,[r14+-44]
!   Data Move: *_temp_385 = 0  (sizeInBytes=4)
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
!   _temp_386 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-40]
!   Data Move: *_temp_386 = 0  (sizeInBytes=4)
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
!   _temp_387 = _P_Kernel_currentThread + 4092
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4092,r1
	store	r1,[r14+-36]
!   Data Move: *_temp_387 = 0  (sizeInBytes=1)
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
_Label_388:
!   if i >= 10 then goto _Label_390		(int)
	load	[r14+-64],r1
	mov	10,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_390
!	jmp	_Label_389
_Label_389:
	mov	1092,r13		! source line 1092
	mov	"\0\0WB",r10
! ASSIGNMENT STATEMENT...
	mov	1093,r13		! source line 1093
	mov	"\0\0AS",r10
!   if intIsZero (thisProcess) then goto _runtimeErrorNullPointer
	load	[r14+-60],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_391 = thisProcess + 124
	load	[r14+-60],r1
	add	r1,124,r1
	store	r1,[r14+-32]
!   Move address of _temp_391 [i ] into _temp_392
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
!   Data Move: *_temp_392 = 0  (sizeInBytes=4)
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
	jmp	_Label_388
_Label_390:
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
!   _temp_394 = thisProcess + 32
	load	[r14+-60],r1
	add	r1,32,r1
	store	r1,[r14+-20]
!   _temp_393 = _temp_394		(4 bytes)
	load	[r14+-20],r1
	store	r1,[r14+-24]
!   _temp_395 = &_P_Kernel_frameManager
	set	_P_Kernel_frameManager,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=12  value=_temp_393  sizeInBytes=4
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
!   _temp_396 = &_P_Kernel_processManager
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
	.word	_Label_397
	.word	4		! total size of parameters
	.word	64		! frame size = 64
	.word	_Label_398
	.word	8
	.word	4
	.word	_Label_399
	.word	-12
	.word	4
	.word	_Label_400
	.word	-16
	.word	4
	.word	_Label_401
	.word	-20
	.word	4
	.word	_Label_402
	.word	-24
	.word	4
	.word	_Label_403
	.word	-28
	.word	4
	.word	_Label_404
	.word	-32
	.word	4
	.word	_Label_405
	.word	-36
	.word	4
	.word	_Label_406
	.word	-40
	.word	4
	.word	_Label_407
	.word	-44
	.word	4
	.word	_Label_408
	.word	-48
	.word	4
	.word	_Label_409
	.word	-52
	.word	4
	.word	_Label_410
	.word	-56
	.word	4
	.word	_Label_411
	.word	-60
	.word	4
	.word	_Label_412
	.word	-64
	.word	4
	.word	0
_Label_397:
	.ascii	"ProcessFinish\0"
	.align
_Label_398:
	.byte	'I'
	.ascii	"exitStatus\0"
	.align
_Label_399:
	.byte	'?'
	.ascii	"_temp_396\0"
	.align
_Label_400:
	.byte	'?'
	.ascii	"_temp_395\0"
	.align
_Label_401:
	.byte	'?'
	.ascii	"_temp_394\0"
	.align
_Label_402:
	.byte	'?'
	.ascii	"_temp_393\0"
	.align
_Label_403:
	.byte	'?'
	.ascii	"_temp_392\0"
	.align
_Label_404:
	.byte	'?'
	.ascii	"_temp_391\0"
	.align
_Label_405:
	.byte	'?'
	.ascii	"_temp_387\0"
	.align
_Label_406:
	.byte	'?'
	.ascii	"_temp_386\0"
	.align
_Label_407:
	.byte	'?'
	.ascii	"_temp_385\0"
	.align
_Label_408:
	.byte	'?'
	.ascii	"_temp_384\0"
	.align
_Label_409:
	.byte	'?'
	.ascii	"_temp_383\0"
	.align
_Label_410:
	.byte	'I'
	.ascii	"oldInterruptStatus\0"
	.align
_Label_411:
	.byte	'P'
	.ascii	"thisProcess\0"
	.align
_Label_412:
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
_Label_3796:
	push	r0
	sub	r1,1,r1
	bne	_Label_3796
	mov	1110,r13		! source line 1110
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1115,r13		! source line 1115
	mov	"\0\0AS",r10
	mov	1115,r13		! source line 1115
	mov	"\0\0SE",r10
!   _temp_413 = &_P_Kernel_threadManager
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
!   _temp_414 = _StringConst_23
	set	_StringConst_23,r1
	store	r1,[r14+-20]
!   if intIsZero (newThread) then goto _runtimeErrorNullPointer
	load	[r14+-28],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Prepare Argument: offset=12  value=_temp_414  sizeInBytes=4
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
!   _temp_415 = _P_Kernel_StartUserProcess
	set	_P_Kernel_StartUserProcess,r1
	store	r1,[r14+-16]
!   _temp_416 = _StringConst_24
	set	_StringConst_24,r1
	store	r1,[r14+-12]
!   if intIsZero (newThread) then goto _runtimeErrorNullPointer
	load	[r14+-28],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Prepare Argument: offset=12  value=_temp_415  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=_temp_416  sizeInBytes=4
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
	.word	_Label_417
	.word	0		! total size of parameters
	.word	32		! frame size = 32
	.word	_Label_418
	.word	-12
	.word	4
	.word	_Label_419
	.word	-16
	.word	4
	.word	_Label_420
	.word	-20
	.word	4
	.word	_Label_421
	.word	-24
	.word	4
	.word	_Label_422
	.word	-28
	.word	4
	.word	0
_Label_417:
	.ascii	"InitFirstProcess\0"
	.align
_Label_418:
	.byte	'?'
	.ascii	"_temp_416\0"
	.align
_Label_419:
	.byte	'?'
	.ascii	"_temp_415\0"
	.align
_Label_420:
	.byte	'?'
	.ascii	"_temp_414\0"
	.align
_Label_421:
	.byte	'?'
	.ascii	"_temp_413\0"
	.align
_Label_422:
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
_Label_3797:
	push	r0
	sub	r1,1,r1
	bne	_Label_3797
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
!   _temp_423 = &_P_Kernel_processManager
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
!   _temp_424 = newProcess + 24
	load	[r14+-76],r1
	add	r1,24,r1
	store	r1,[r14+-68]
!   Data Move: *_temp_424 = _P_Kernel_currentThread  (sizeInBytes=4)
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
!   _temp_425 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-64]
!   Data Move: *_temp_425 = newProcess  (sizeInBytes=4)
	load	[r14+-76],r1
	load	[r14+-64],r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	1141,r13		! source line 1141
	mov	"\0\0AS",r10
	mov	1141,r13		! source line 1141
	mov	"\0\0SE",r10
!   _temp_426 = _StringConst_25
	set	_StringConst_25,r1
	store	r1,[r14+-60]
!   _temp_427 = &_P_Kernel_fileManager
	set	_P_Kernel_fileManager,r1
	store	r1,[r14+-56]
!   Prepare Argument: offset=12  value=_temp_426  sizeInBytes=4
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
!   _temp_428 = newProcess + 32
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
!   _temp_430 = newProcess + 32
	load	[r14+-76],r1
	add	r1,32,r1
	store	r1,[r14+-44]
!   _temp_429 = _temp_430		(4 bytes)
	load	[r14+-44],r1
	store	r1,[r14+-48]
!   if intIsZero (openFile) then goto _runtimeErrorNullPointer
	load	[r14+-80],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Prepare Argument: offset=12  value=_temp_429  sizeInBytes=4
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
!   _temp_431 = &_P_Kernel_fileManager
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
!   _temp_433 = newProcess + 32
	load	[r14+-76],r1
	add	r1,32,r1
	store	r1,[r14+-32]
!   _temp_434 = _temp_433 + 4
	load	[r14+-32],r1
	add	r1,4,r1
	store	r1,[r14+-28]
!   Data Move: _temp_432 = *_temp_434  (sizeInBytes=4)
	load	[r14+-28],r1
	load	[r1],r1
	store	r1,[r14+-36]
!   initUserStackTop = _temp_432 * 8192		(int)
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
!   _temp_435 = _P_Kernel_currentThread + 88
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,88,r1
	store	r1,[r14+-24]
!   Move address of _temp_435 [999 ] into _temp_436
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
!   initSystemStackTop = _temp_436		(4 bytes)
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
!   _temp_437 = newProcess + 32
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
!   _temp_438 = _P_Kernel_currentThread + 4092
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4092,r1
	store	r1,[r14+-12]
!   Data Move: *_temp_438 = 1  (sizeInBytes=1)
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
	.word	_Label_439
	.word	0		! total size of parameters
	.word	100		! frame size = 100
	.word	_Label_440
	.word	-12
	.word	4
	.word	_Label_441
	.word	-16
	.word	4
	.word	_Label_442
	.word	-20
	.word	4
	.word	_Label_443
	.word	-24
	.word	4
	.word	_Label_444
	.word	-28
	.word	4
	.word	_Label_445
	.word	-32
	.word	4
	.word	_Label_446
	.word	-36
	.word	4
	.word	_Label_447
	.word	-40
	.word	4
	.word	_Label_448
	.word	-44
	.word	4
	.word	_Label_449
	.word	-48
	.word	4
	.word	_Label_450
	.word	-52
	.word	4
	.word	_Label_451
	.word	-56
	.word	4
	.word	_Label_452
	.word	-60
	.word	4
	.word	_Label_453
	.word	-64
	.word	4
	.word	_Label_454
	.word	-68
	.word	4
	.word	_Label_455
	.word	-72
	.word	4
	.word	_Label_456
	.word	-76
	.word	4
	.word	_Label_457
	.word	-80
	.word	4
	.word	_Label_458
	.word	-84
	.word	4
	.word	_Label_459
	.word	-88
	.word	4
	.word	_Label_460
	.word	-92
	.word	4
	.word	_Label_461
	.word	-96
	.word	4
	.word	0
_Label_439:
	.ascii	"StartUserProcess\0"
	.align
_Label_440:
	.byte	'?'
	.ascii	"_temp_438\0"
	.align
_Label_441:
	.byte	'?'
	.ascii	"_temp_437\0"
	.align
_Label_442:
	.byte	'?'
	.ascii	"_temp_436\0"
	.align
_Label_443:
	.byte	'?'
	.ascii	"_temp_435\0"
	.align
_Label_444:
	.byte	'?'
	.ascii	"_temp_434\0"
	.align
_Label_445:
	.byte	'?'
	.ascii	"_temp_433\0"
	.align
_Label_446:
	.byte	'?'
	.ascii	"_temp_432\0"
	.align
_Label_447:
	.byte	'?'
	.ascii	"_temp_431\0"
	.align
_Label_448:
	.byte	'?'
	.ascii	"_temp_430\0"
	.align
_Label_449:
	.byte	'?'
	.ascii	"_temp_429\0"
	.align
_Label_450:
	.byte	'?'
	.ascii	"_temp_428\0"
	.align
_Label_451:
	.byte	'?'
	.ascii	"_temp_427\0"
	.align
_Label_452:
	.byte	'?'
	.ascii	"_temp_426\0"
	.align
_Label_453:
	.byte	'?'
	.ascii	"_temp_425\0"
	.align
_Label_454:
	.byte	'?'
	.ascii	"_temp_424\0"
	.align
_Label_455:
	.byte	'?'
	.ascii	"_temp_423\0"
	.align
_Label_456:
	.byte	'P'
	.ascii	"newProcess\0"
	.align
_Label_457:
	.byte	'P'
	.ascii	"openFile\0"
	.align
_Label_458:
	.byte	'I'
	.ascii	"initUserPC\0"
	.align
_Label_459:
	.byte	'I'
	.ascii	"initUserStackTop\0"
	.align
_Label_460:
	.byte	'I'
	.ascii	"initSystemStackTop\0"
	.align
_Label_461:
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
_Label_3798:
	push	r0
	sub	r1,1,r1
	bne	_Label_3798
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
!   _temp_463 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-48]
!   Data Move: _temp_462 = *_temp_463  (sizeInBytes=4)
	load	[r14+-48],r1
	load	[r1],r1
	store	r1,[r14+-52]
!   if intIsZero (_temp_462) then goto _runtimeErrorNullPointer
	load	[r14+-52],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_464 = _temp_462 + 32
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
!   _temp_466 = _P_Kernel_currentThread + 4096
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4096,r1
	store	r1,[r14+-36]
!   Move address of _temp_466 [0 ] into _temp_467
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
!   _temp_465 = _temp_467		(4 bytes)
	load	[r14+-32],r1
	store	r1,[r14+-40]
!   Prepare Argument: offset=8  value=_temp_465  sizeInBytes=4
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
!   _temp_468 = _P_Kernel_currentThread + 4092
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4092,r1
	store	r1,[r14+-28]
!   Data Move: *_temp_468 = 1  (sizeInBytes=1)
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
!   _temp_469 = _P_Kernel_currentThread + 88
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,88,r1
	store	r1,[r14+-24]
!   Move address of _temp_469 [999 ] into _temp_470
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
!   systemStackTop = _temp_470		(4 bytes)
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
!   _temp_471 = _P_Kernel_currentThread + 4096
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4096,r1
	store	r1,[r14+-16]
!   Move address of _temp_471 [14 ] into _temp_472
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
!   Data Move: userStackTop = *_temp_472  (sizeInBytes=4)
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
	.word	_Label_473
	.word	4		! total size of parameters
	.word	68		! frame size = 68
	.word	_Label_474
	.word	8
	.word	4
	.word	_Label_475
	.word	-12
	.word	4
	.word	_Label_476
	.word	-16
	.word	4
	.word	_Label_477
	.word	-20
	.word	4
	.word	_Label_478
	.word	-24
	.word	4
	.word	_Label_479
	.word	-28
	.word	4
	.word	_Label_480
	.word	-32
	.word	4
	.word	_Label_481
	.word	-36
	.word	4
	.word	_Label_482
	.word	-40
	.word	4
	.word	_Label_483
	.word	-44
	.word	4
	.word	_Label_484
	.word	-48
	.word	4
	.word	_Label_485
	.word	-52
	.word	4
	.word	_Label_486
	.word	-56
	.word	4
	.word	_Label_487
	.word	-60
	.word	4
	.word	_Label_488
	.word	-64
	.word	4
	.word	0
_Label_473:
	.ascii	"ResumeChildAfterFork\0"
	.align
_Label_474:
	.byte	'I'
	.ascii	"oldUserPC\0"
	.align
_Label_475:
	.byte	'?'
	.ascii	"_temp_472\0"
	.align
_Label_476:
	.byte	'?'
	.ascii	"_temp_471\0"
	.align
_Label_477:
	.byte	'?'
	.ascii	"_temp_470\0"
	.align
_Label_478:
	.byte	'?'
	.ascii	"_temp_469\0"
	.align
_Label_479:
	.byte	'?'
	.ascii	"_temp_468\0"
	.align
_Label_480:
	.byte	'?'
	.ascii	"_temp_467\0"
	.align
_Label_481:
	.byte	'?'
	.ascii	"_temp_466\0"
	.align
_Label_482:
	.byte	'?'
	.ascii	"_temp_465\0"
	.align
_Label_483:
	.byte	'?'
	.ascii	"_temp_464\0"
	.align
_Label_484:
	.byte	'?'
	.ascii	"_temp_463\0"
	.align
_Label_485:
	.byte	'?'
	.ascii	"_temp_462\0"
	.align
_Label_486:
	.byte	'I'
	.ascii	"junk\0"
	.align
_Label_487:
	.byte	'I'
	.ascii	"systemStackTop\0"
	.align
_Label_488:
	.byte	'I'
	.ascii	"userStackTop\0"
	.align
! 
! ===============  FUNCTION SerialHandlerFunction  ===============
! 
_function_194_SerialHandlerFunction:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__function_194_SerialHandlerFunction,r1
	push	r1
	mov	2,r1
_Label_3799:
	push	r0
	sub	r1,1,r1
	bne	_Label_3799
	mov	1198,r13		! source line 1198
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! SEND STATEMENT...
	mov	1200,r13		! source line 1200
	mov	"\0\0SE",r10
!   _temp_489 = &_P_Kernel_serialDriver
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
_RoutineDescriptor__function_194_SerialHandlerFunction:
	.word	_sourceFileName
	.word	_Label_490
	.word	4		! total size of parameters
	.word	8		! frame size = 8
	.word	_Label_491
	.word	8
	.word	4
	.word	_Label_492
	.word	-12
	.word	4
	.word	0
_Label_490:
	.ascii	"SerialHandlerFunction\0"
	.align
_Label_491:
	.byte	'I'
	.ascii	"ignore\0"
	.align
_Label_492:
	.byte	'?'
	.ascii	"_temp_489\0"
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
_Label_3800:
	push	r0
	sub	r1,1,r1
	bne	_Label_3800
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
	.word	_Label_493
	.word	0		! total size of parameters
	.word	4		! frame size = 4
	.word	0
_Label_493:
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
_Label_3801:
	push	r0
	sub	r1,1,r1
	bne	_Label_3801
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
!   _temp_497 = &_P_Kernel_diskDriver
	set	_P_Kernel_diskDriver,r1
	store	r1,[r14+-28]
!   _temp_498 = _temp_497 + 24
	load	[r14+-28],r1
	add	r1,24,r1
	store	r1,[r14+-24]
!   Data Move: _temp_496 = *_temp_498  (sizeInBytes=4)
	load	[r14+-24],r1
	load	[r1],r1
	store	r1,[r14+-32]
!   if _temp_496 == 0 then goto _Label_495		(int)
	load	[r14+-32],r1
	mov	0,r2
	cmp	r1,r2
	be	_Label_495
!	jmp	_Label_494
_Label_494:
! THEN...
	mov	1718,r13		! source line 1718
	mov	"\0\0TN",r10
! SEND STATEMENT...
	mov	1718,r13		! source line 1718
	mov	"\0\0SE",r10
!   _temp_500 = &_P_Kernel_diskDriver
	set	_P_Kernel_diskDriver,r1
	store	r1,[r14+-16]
!   _temp_501 = _temp_500 + 24
	load	[r14+-16],r1
	add	r1,24,r1
	store	r1,[r14+-12]
!   Data Move: _temp_499 = *_temp_501  (sizeInBytes=4)
	load	[r14+-12],r1
	load	[r1],r1
	store	r1,[r14+-20]
!   if intIsZero (_temp_499) then goto _runtimeErrorNullPointer
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
_Label_495:
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
	.word	_Label_502
	.word	0		! total size of parameters
	.word	28		! frame size = 28
	.word	_Label_503
	.word	-12
	.word	4
	.word	_Label_504
	.word	-16
	.word	4
	.word	_Label_505
	.word	-20
	.word	4
	.word	_Label_506
	.word	-24
	.word	4
	.word	_Label_507
	.word	-28
	.word	4
	.word	_Label_508
	.word	-32
	.word	4
	.word	0
_Label_502:
	.ascii	"DiskInterruptHandler\0"
	.align
_Label_503:
	.byte	'?'
	.ascii	"_temp_501\0"
	.align
_Label_504:
	.byte	'?'
	.ascii	"_temp_500\0"
	.align
_Label_505:
	.byte	'?'
	.ascii	"_temp_499\0"
	.align
_Label_506:
	.byte	'?'
	.ascii	"_temp_498\0"
	.align
_Label_507:
	.byte	'?'
	.ascii	"_temp_497\0"
	.align
_Label_508:
	.byte	'?'
	.ascii	"_temp_496\0"
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
! RETURN STATEMENT...
	mov	1734,r13		! source line 1734
	mov	"\0\0RE",r10
	add	r15,4,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__P_Kernel_SerialInterruptHandler:
	.word	_sourceFileName
	.word	_Label_509
	.word	0		! total size of parameters
	.word	0		! frame size = 0
	.word	0
_Label_509:
	.ascii	"SerialInterruptHandler\0"
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
_Label_3802:
	push	r0
	sub	r1,1,r1
	bne	_Label_3802
	mov	1739,r13		! source line 1739
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1745,r13		! source line 1745
	mov	"\0\0AS",r10
!   _P_Kernel_currentInterruptStatus = 2		(4 bytes)
	mov	2,r1
	set	_P_Kernel_currentInterruptStatus,r2
	store	r1,[r2]
! CALL STATEMENT...
!   _temp_510 = _StringConst_26
	set	_StringConst_26,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_510  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	1746,r13		! source line 1746
	mov	"\0\0CA",r10
	call	_function_193_ErrorInUserProcess
! RETURN STATEMENT...
	mov	1746,r13		! source line 1746
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
	.word	_Label_511
	.word	0		! total size of parameters
	.word	8		! frame size = 8
	.word	_Label_512
	.word	-12
	.word	4
	.word	0
_Label_511:
	.ascii	"IllegalInstructionHandler\0"
	.align
_Label_512:
	.byte	'?'
	.ascii	"_temp_510\0"
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
_Label_3803:
	push	r0
	sub	r1,1,r1
	bne	_Label_3803
	mov	1751,r13		! source line 1751
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1757,r13		! source line 1757
	mov	"\0\0AS",r10
!   _P_Kernel_currentInterruptStatus = 2		(4 bytes)
	mov	2,r1
	set	_P_Kernel_currentInterruptStatus,r2
	store	r1,[r2]
! CALL STATEMENT...
!   _temp_513 = _StringConst_27
	set	_StringConst_27,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_513  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	1758,r13		! source line 1758
	mov	"\0\0CA",r10
	call	_function_193_ErrorInUserProcess
! RETURN STATEMENT...
	mov	1758,r13		! source line 1758
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
	.word	_Label_514
	.word	0		! total size of parameters
	.word	8		! frame size = 8
	.word	_Label_515
	.word	-12
	.word	4
	.word	0
_Label_514:
	.ascii	"ArithmeticExceptionHandler\0"
	.align
_Label_515:
	.byte	'?'
	.ascii	"_temp_513\0"
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
_Label_3804:
	push	r0
	sub	r1,1,r1
	bne	_Label_3804
	mov	1763,r13		! source line 1763
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1769,r13		! source line 1769
	mov	"\0\0AS",r10
!   _P_Kernel_currentInterruptStatus = 2		(4 bytes)
	mov	2,r1
	set	_P_Kernel_currentInterruptStatus,r2
	store	r1,[r2]
! CALL STATEMENT...
!   _temp_516 = _StringConst_28
	set	_StringConst_28,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_516  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	1770,r13		! source line 1770
	mov	"\0\0CA",r10
	call	_function_193_ErrorInUserProcess
! RETURN STATEMENT...
	mov	1770,r13		! source line 1770
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
	.word	_Label_517
	.word	0		! total size of parameters
	.word	8		! frame size = 8
	.word	_Label_518
	.word	-12
	.word	4
	.word	0
_Label_517:
	.ascii	"AddressExceptionHandler\0"
	.align
_Label_518:
	.byte	'?'
	.ascii	"_temp_516\0"
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
_Label_3805:
	push	r0
	sub	r1,1,r1
	bne	_Label_3805
	mov	1775,r13		! source line 1775
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1781,r13		! source line 1781
	mov	"\0\0AS",r10
!   _P_Kernel_currentInterruptStatus = 2		(4 bytes)
	mov	2,r1
	set	_P_Kernel_currentInterruptStatus,r2
	store	r1,[r2]
! CALL STATEMENT...
!   _temp_519 = _StringConst_29
	set	_StringConst_29,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_519  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	1782,r13		! source line 1782
	mov	"\0\0CA",r10
	call	_function_193_ErrorInUserProcess
! RETURN STATEMENT...
	mov	1782,r13		! source line 1782
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
	.word	_Label_520
	.word	0		! total size of parameters
	.word	8		! frame size = 8
	.word	_Label_521
	.word	-12
	.word	4
	.word	0
_Label_520:
	.ascii	"PageInvalidExceptionHandler\0"
	.align
_Label_521:
	.byte	'?'
	.ascii	"_temp_519\0"
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
_Label_3806:
	push	r0
	sub	r1,1,r1
	bne	_Label_3806
	mov	1787,r13		! source line 1787
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1793,r13		! source line 1793
	mov	"\0\0AS",r10
!   _P_Kernel_currentInterruptStatus = 2		(4 bytes)
	mov	2,r1
	set	_P_Kernel_currentInterruptStatus,r2
	store	r1,[r2]
! CALL STATEMENT...
!   _temp_522 = _StringConst_30
	set	_StringConst_30,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_522  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	1794,r13		! source line 1794
	mov	"\0\0CA",r10
	call	_function_193_ErrorInUserProcess
! RETURN STATEMENT...
	mov	1794,r13		! source line 1794
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
	.word	_Label_523
	.word	0		! total size of parameters
	.word	8		! frame size = 8
	.word	_Label_524
	.word	-12
	.word	4
	.word	0
_Label_523:
	.ascii	"PageReadonlyExceptionHandler\0"
	.align
_Label_524:
	.byte	'?'
	.ascii	"_temp_522\0"
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
_Label_3807:
	push	r0
	sub	r1,1,r1
	bne	_Label_3807
	mov	1799,r13		! source line 1799
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1805,r13		! source line 1805
	mov	"\0\0AS",r10
!   _P_Kernel_currentInterruptStatus = 2		(4 bytes)
	mov	2,r1
	set	_P_Kernel_currentInterruptStatus,r2
	store	r1,[r2]
! CALL STATEMENT...
!   _temp_525 = _StringConst_31
	set	_StringConst_31,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_525  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	1806,r13		! source line 1806
	mov	"\0\0CA",r10
	call	_function_193_ErrorInUserProcess
! RETURN STATEMENT...
	mov	1806,r13		! source line 1806
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
	.word	_Label_526
	.word	0		! total size of parameters
	.word	8		! frame size = 8
	.word	_Label_527
	.word	-12
	.word	4
	.word	0
_Label_526:
	.ascii	"PrivilegedInstructionHandler\0"
	.align
_Label_527:
	.byte	'?'
	.ascii	"_temp_525\0"
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
_Label_3808:
	push	r0
	sub	r1,1,r1
	bne	_Label_3808
	mov	1811,r13		! source line 1811
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1817,r13		! source line 1817
	mov	"\0\0AS",r10
!   _P_Kernel_currentInterruptStatus = 2		(4 bytes)
	mov	2,r1
	set	_P_Kernel_currentInterruptStatus,r2
	store	r1,[r2]
! CALL STATEMENT...
!   _temp_528 = _StringConst_32
	set	_StringConst_32,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_528  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	1818,r13		! source line 1818
	mov	"\0\0CA",r10
	call	_function_193_ErrorInUserProcess
! RETURN STATEMENT...
	mov	1818,r13		! source line 1818
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
	.word	_Label_529
	.word	0		! total size of parameters
	.word	8		! frame size = 8
	.word	_Label_530
	.word	-12
	.word	4
	.word	0
_Label_529:
	.ascii	"AlignmentExceptionHandler\0"
	.align
_Label_530:
	.byte	'?'
	.ascii	"_temp_528\0"
	.align
! 
! ===============  FUNCTION ErrorInUserProcess  ===============
! 
_function_193_ErrorInUserProcess:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__function_193_ErrorInUserProcess,r1
	push	r1
	mov	8,r1
_Label_3809:
	push	r0
	sub	r1,1,r1
	bne	_Label_3809
	mov	1823,r13		! source line 1823
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   _temp_531 = _StringConst_33
	set	_StringConst_33,r1
	store	r1,[r14+-36]
!   Prepare Argument: offset=8  value=_temp_531  sizeInBytes=4
	load	[r14+-36],r1
	store	r1,[r15+0]
!   Call the function
	mov	1828,r13		! source line 1828
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=errorMessage  sizeInBytes=4
	load	[r14+8],r1
	store	r1,[r15+0]
!   Call the function
	mov	1829,r13		! source line 1829
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_532 = _StringConst_34
	set	_StringConst_34,r1
	store	r1,[r14+-32]
!   Prepare Argument: offset=8  value=_temp_532  sizeInBytes=4
	load	[r14+-32],r1
	store	r1,[r15+0]
!   Call the function
	mov	1830,r13		! source line 1830
	mov	"\0\0CE",r10
	call	print
! IF STATEMENT...
	mov	1833,r13		! source line 1833
	mov	"\0\0IF",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_536 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-24]
!   Data Move: _temp_535 = *_temp_536  (sizeInBytes=4)
	load	[r14+-24],r1
	load	[r1],r1
	store	r1,[r14+-28]
!   if _temp_535 == 0 then goto _Label_534		(int)
	load	[r14+-28],r1
	mov	0,r2
	cmp	r1,r2
	be	_Label_534
!	jmp	_Label_533
_Label_533:
! THEN...
	mov	1834,r13		! source line 1834
	mov	"\0\0TN",r10
! SEND STATEMENT...
	mov	1834,r13		! source line 1834
	mov	"\0\0SE",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_538 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-16]
!   Data Move: _temp_537 = *_temp_538  (sizeInBytes=4)
	load	[r14+-16],r1
	load	[r1],r1
	store	r1,[r14+-20]
!   if intIsZero (_temp_537) then goto _runtimeErrorNullPointer
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
	jmp	_Label_539
_Label_534:
! ELSE...
	mov	1836,r13		! source line 1836
	mov	"\0\0EL",r10
! CALL STATEMENT...
!   _temp_540 = _StringConst_35
	set	_StringConst_35,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_540  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	1836,r13		! source line 1836
	mov	"\0\0CE",r10
	call	print
! END IF...
_Label_539:
! SEND STATEMENT...
	mov	1838,r13		! source line 1838
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
	mov	1844,r13		! source line 1844
	mov	"\0\0CA",r10
	call	_P_Kernel_ProcessFinish
! RETURN STATEMENT...
	mov	1844,r13		! source line 1844
	mov	"\0\0RE",r10
	add	r15,36,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__function_193_ErrorInUserProcess:
	.word	_sourceFileName
	.word	_Label_541
	.word	4		! total size of parameters
	.word	32		! frame size = 32
	.word	_Label_542
	.word	8
	.word	4
	.word	_Label_543
	.word	-12
	.word	4
	.word	_Label_544
	.word	-16
	.word	4
	.word	_Label_545
	.word	-20
	.word	4
	.word	_Label_546
	.word	-24
	.word	4
	.word	_Label_547
	.word	-28
	.word	4
	.word	_Label_548
	.word	-32
	.word	4
	.word	_Label_549
	.word	-36
	.word	4
	.word	0
_Label_541:
	.ascii	"ErrorInUserProcess\0"
	.align
_Label_542:
	.byte	'P'
	.ascii	"errorMessage\0"
	.align
_Label_543:
	.byte	'?'
	.ascii	"_temp_540\0"
	.align
_Label_544:
	.byte	'?'
	.ascii	"_temp_538\0"
	.align
_Label_545:
	.byte	'?'
	.ascii	"_temp_537\0"
	.align
_Label_546:
	.byte	'?'
	.ascii	"_temp_536\0"
	.align
_Label_547:
	.byte	'?'
	.ascii	"_temp_535\0"
	.align
_Label_548:
	.byte	'?'
	.ascii	"_temp_532\0"
	.align
_Label_549:
	.byte	'?'
	.ascii	"_temp_531\0"
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
_Label_3810:
	push	r0
	sub	r1,1,r1
	bne	_Label_3810
	mov	1849,r13		! source line 1849
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1856,r13		! source line 1856
	mov	"\0\0AS",r10
!   _P_Kernel_currentInterruptStatus = 2		(4 bytes)
	mov	2,r1
	set	_P_Kernel_currentInterruptStatus,r2
	store	r1,[r2]
! SWITCH STATEMENT (using an indirect jump table)...
	mov	1870,r13		! source line 1870
	mov	"\0\0SW",r10
!   Evaluate the switch expression...
	load	[r14+8],r1
!   If syscallCodeNum is not within 16-bits goto default code
	srl	r1,15,r2
	cmp	r2,0
	be	_Label_3811
	set	0x1ffff,r3
	cmp	r2,r3
	bne	_Label_550
_Label_3811:
!   If syscallCodeNum is < 1 (==smallestCaseValue) goto default code
	cmp	r1,1
	bl	_Label_550
!   If syscallCodeNum is > 12 (==greatestCaseValue) goto default code
	cmp	r1,12
	bg	_Label_550
!   r1 = (r1-lowValue) * 4 + jumpTableAddr
	sub	r1,1,r1
	sll	r1,2,r1
	set	_Label_564,r2
	add	r1,r2,r1
!   Jump indirect through the jump table
	jmp	r1
!   Jump table
_Label_564:
	jmp	_Label_556	! 1:	
	jmp	_Label_563	! 2:	
	jmp	_Label_553	! 3:	
	jmp	_Label_552	! 4:	
	jmp	_Label_555	! 5:	
	jmp	_Label_554	! 6:	
	jmp	_Label_557	! 7:	
	jmp	_Label_558	! 8:	
	jmp	_Label_559	! 9:	
	jmp	_Label_560	! 10:	
	jmp	_Label_561	! 11:	
	jmp	_Label_562	! 12:	
! CASE 4...
_Label_552:
! RETURN STATEMENT...
	mov	1872,r13		! source line 1872
	mov	"\0\0RE",r10
!   Call the function
	mov	1872,r13		! source line 1872
	mov	"\0\0CA",r10
	call	_P_Kernel_Handle_Sys_Fork
!   Retrieve Result: targetName=_temp_565  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-48]
!   ReturnResult: _temp_565  (sizeInBytes=4)
	load	[r14+-48],r1
	store	r1,[r14+8]
	add	r15,56,r15
	pop	r13
	pop	r14
	ret
! CASE 3...
_Label_553:
! CALL STATEMENT...
!   Call the function
	mov	1874,r13		! source line 1874
	mov	"\0\0CA",r10
	call	_P_Kernel_Handle_Sys_Yield
! RETURN STATEMENT...
	mov	1875,r13		! source line 1875
	mov	"\0\0RE",r10
!   ReturnResult: 0  (sizeInBytes=4)
	mov	0,r1
	store	r1,[r14+8]
	add	r15,56,r15
	pop	r13
	pop	r14
	ret
! CASE 6...
_Label_554:
! RETURN STATEMENT...
	mov	1877,r13		! source line 1877
	mov	"\0\0RE",r10
!   Prepare Argument: offset=8  value=arg1  sizeInBytes=4
	load	[r14+12],r1
	store	r1,[r15+0]
!   Call the function
	mov	1877,r13		! source line 1877
	mov	"\0\0CA",r10
	call	_P_Kernel_Handle_Sys_Exec
!   Retrieve Result: targetName=_temp_566  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-44]
!   ReturnResult: _temp_566  (sizeInBytes=4)
	load	[r14+-44],r1
	store	r1,[r14+8]
	add	r15,56,r15
	pop	r13
	pop	r14
	ret
! CASE 5...
_Label_555:
! RETURN STATEMENT...
	mov	1879,r13		! source line 1879
	mov	"\0\0RE",r10
!   Prepare Argument: offset=8  value=arg1  sizeInBytes=4
	load	[r14+12],r1
	store	r1,[r15+0]
!   Call the function
	mov	1879,r13		! source line 1879
	mov	"\0\0CA",r10
	call	_P_Kernel_Handle_Sys_Join
!   Retrieve Result: targetName=_temp_567  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-40]
!   ReturnResult: _temp_567  (sizeInBytes=4)
	load	[r14+-40],r1
	store	r1,[r14+8]
	add	r15,56,r15
	pop	r13
	pop	r14
	ret
! CASE 1...
_Label_556:
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=arg1  sizeInBytes=4
	load	[r14+12],r1
	store	r1,[r15+0]
!   Call the function
	mov	1881,r13		! source line 1881
	mov	"\0\0CA",r10
	call	_P_Kernel_Handle_Sys_Exit
! RETURN STATEMENT...
	mov	1882,r13		! source line 1882
	mov	"\0\0RE",r10
!   ReturnResult: 0  (sizeInBytes=4)
	mov	0,r1
	store	r1,[r14+8]
	add	r15,56,r15
	pop	r13
	pop	r14
	ret
! CASE 7...
_Label_557:
! RETURN STATEMENT...
	mov	1884,r13		! source line 1884
	mov	"\0\0RE",r10
!   Prepare Argument: offset=8  value=arg1  sizeInBytes=4
	load	[r14+12],r1
	store	r1,[r15+0]
!   Call the function
	mov	1884,r13		! source line 1884
	mov	"\0\0CA",r10
	call	_P_Kernel_Handle_Sys_Create
!   Retrieve Result: targetName=_temp_568  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-36]
!   ReturnResult: _temp_568  (sizeInBytes=4)
	load	[r14+-36],r1
	store	r1,[r14+8]
	add	r15,56,r15
	pop	r13
	pop	r14
	ret
! CASE 8...
_Label_558:
! RETURN STATEMENT...
	mov	1886,r13		! source line 1886
	mov	"\0\0RE",r10
!   Prepare Argument: offset=8  value=arg1  sizeInBytes=4
	load	[r14+12],r1
	store	r1,[r15+0]
!   Call the function
	mov	1886,r13		! source line 1886
	mov	"\0\0CA",r10
	call	_P_Kernel_Handle_Sys_Open
!   Retrieve Result: targetName=_temp_569  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-32]
!   ReturnResult: _temp_569  (sizeInBytes=4)
	load	[r14+-32],r1
	store	r1,[r14+8]
	add	r15,56,r15
	pop	r13
	pop	r14
	ret
! CASE 9...
_Label_559:
! RETURN STATEMENT...
	mov	1888,r13		! source line 1888
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
	mov	1888,r13		! source line 1888
	mov	"\0\0CA",r10
	call	_P_Kernel_Handle_Sys_Read
!   Retrieve Result: targetName=_temp_570  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-28]
!   ReturnResult: _temp_570  (sizeInBytes=4)
	load	[r14+-28],r1
	store	r1,[r14+8]
	add	r15,56,r15
	pop	r13
	pop	r14
	ret
! CASE 10...
_Label_560:
! RETURN STATEMENT...
	mov	1890,r13		! source line 1890
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
	mov	1890,r13		! source line 1890
	mov	"\0\0CA",r10
	call	_P_Kernel_Handle_Sys_Write
!   Retrieve Result: targetName=_temp_571  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-24]
!   ReturnResult: _temp_571  (sizeInBytes=4)
	load	[r14+-24],r1
	store	r1,[r14+8]
	add	r15,56,r15
	pop	r13
	pop	r14
	ret
! CASE 11...
_Label_561:
! RETURN STATEMENT...
	mov	1892,r13		! source line 1892
	mov	"\0\0RE",r10
!   Prepare Argument: offset=8  value=arg1  sizeInBytes=4
	load	[r14+12],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=arg2  sizeInBytes=4
	load	[r14+16],r1
	store	r1,[r15+4]
!   Call the function
	mov	1892,r13		! source line 1892
	mov	"\0\0CA",r10
	call	_P_Kernel_Handle_Sys_Seek
!   Retrieve Result: targetName=_temp_572  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-20]
!   ReturnResult: _temp_572  (sizeInBytes=4)
	load	[r14+-20],r1
	store	r1,[r14+8]
	add	r15,56,r15
	pop	r13
	pop	r14
	ret
! CASE 12...
_Label_562:
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=arg1  sizeInBytes=4
	load	[r14+12],r1
	store	r1,[r15+0]
!   Call the function
	mov	1894,r13		! source line 1894
	mov	"\0\0CA",r10
	call	_P_Kernel_Handle_Sys_Close
! RETURN STATEMENT...
	mov	1895,r13		! source line 1895
	mov	"\0\0RE",r10
!   ReturnResult: 0  (sizeInBytes=4)
	mov	0,r1
	store	r1,[r14+8]
	add	r15,56,r15
	pop	r13
	pop	r14
	ret
! CASE 2...
_Label_563:
! CALL STATEMENT...
!   Call the function
	mov	1897,r13		! source line 1897
	mov	"\0\0CA",r10
	call	_P_Kernel_Handle_Sys_Shutdown
! RETURN STATEMENT...
	mov	1898,r13		! source line 1898
	mov	"\0\0RE",r10
!   ReturnResult: 0  (sizeInBytes=4)
	mov	0,r1
	store	r1,[r14+8]
	add	r15,56,r15
	pop	r13
	pop	r14
	ret
! DEFAULT CASE...
_Label_550:
! CALL STATEMENT...
!   _temp_573 = _StringConst_36
	set	_StringConst_36,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_573  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+0]
!   Call the function
	mov	1900,r13		! source line 1900
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=syscallCodeNum  sizeInBytes=4
	load	[r14+8],r1
	store	r1,[r15+0]
!   Call the function
	mov	1901,r13		! source line 1901
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   Call the function
	mov	1902,r13		! source line 1902
	mov	"\0\0CA",r10
	call	_P_System_nl
! CALL STATEMENT...
!   _temp_574 = _StringConst_37
	set	_StringConst_37,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_574  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	1903,r13		! source line 1903
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END SWITCH...
_Label_551:
! RETURN STATEMENT...
	mov	1905,r13		! source line 1905
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
	.word	_Label_575
	.word	20		! total size of parameters
	.word	52		! frame size = 52
	.word	_Label_576
	.word	8
	.word	4
	.word	_Label_577
	.word	12
	.word	4
	.word	_Label_578
	.word	16
	.word	4
	.word	_Label_579
	.word	20
	.word	4
	.word	_Label_580
	.word	24
	.word	4
	.word	_Label_581
	.word	-12
	.word	4
	.word	_Label_582
	.word	-16
	.word	4
	.word	_Label_583
	.word	-20
	.word	4
	.word	_Label_584
	.word	-24
	.word	4
	.word	_Label_585
	.word	-28
	.word	4
	.word	_Label_586
	.word	-32
	.word	4
	.word	_Label_587
	.word	-36
	.word	4
	.word	_Label_588
	.word	-40
	.word	4
	.word	_Label_589
	.word	-44
	.word	4
	.word	_Label_590
	.word	-48
	.word	4
	.word	0
_Label_575:
	.ascii	"SyscallTrapHandler\0"
	.align
_Label_576:
	.byte	'I'
	.ascii	"syscallCodeNum\0"
	.align
_Label_577:
	.byte	'I'
	.ascii	"arg1\0"
	.align
_Label_578:
	.byte	'I'
	.ascii	"arg2\0"
	.align
_Label_579:
	.byte	'I'
	.ascii	"arg3\0"
	.align
_Label_580:
	.byte	'I'
	.ascii	"arg4\0"
	.align
_Label_581:
	.byte	'?'
	.ascii	"_temp_574\0"
	.align
_Label_582:
	.byte	'?'
	.ascii	"_temp_573\0"
	.align
_Label_583:
	.byte	'?'
	.ascii	"_temp_572\0"
	.align
_Label_584:
	.byte	'?'
	.ascii	"_temp_571\0"
	.align
_Label_585:
	.byte	'?'
	.ascii	"_temp_570\0"
	.align
_Label_586:
	.byte	'?'
	.ascii	"_temp_569\0"
	.align
_Label_587:
	.byte	'?'
	.ascii	"_temp_568\0"
	.align
_Label_588:
	.byte	'?'
	.ascii	"_temp_567\0"
	.align
_Label_589:
	.byte	'?'
	.ascii	"_temp_566\0"
	.align
_Label_590:
	.byte	'?'
	.ascii	"_temp_565\0"
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
_Label_3812:
	push	r0
	sub	r1,1,r1
	bne	_Label_3812
	mov	1910,r13		! source line 1910
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=returnStatus  sizeInBytes=4
	load	[r14+8],r1
	store	r1,[r15+0]
!   Call the function
	mov	1912,r13		! source line 1912
	mov	"\0\0CA",r10
	call	_P_Kernel_ProcessFinish
! RETURN STATEMENT...
	mov	1912,r13		! source line 1912
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
	.word	_Label_591
	.word	4		! total size of parameters
	.word	4		! frame size = 4
	.word	_Label_592
	.word	8
	.word	4
	.word	0
_Label_591:
	.ascii	"Handle_Sys_Exit\0"
	.align
_Label_592:
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
_Label_3813:
	push	r0
	sub	r1,1,r1
	bne	_Label_3813
	mov	1918,r13		! source line 1918
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   _temp_593 = _StringConst_38
	set	_StringConst_38,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_593  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	1919,r13		! source line 1919
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! RETURN STATEMENT...
	mov	1919,r13		! source line 1919
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
	.word	_Label_594
	.word	0		! total size of parameters
	.word	8		! frame size = 8
	.word	_Label_595
	.word	-12
	.word	4
	.word	0
_Label_594:
	.ascii	"Handle_Sys_Shutdown\0"
	.align
_Label_595:
	.byte	'?'
	.ascii	"_temp_593\0"
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
_Label_3814:
	push	r0
	sub	r1,1,r1
	bne	_Label_3814
	mov	1924,r13		! source line 1924
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! SEND STATEMENT...
	mov	1926,r13		! source line 1926
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
	mov	1927,r13		! source line 1927
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
	.word	_Label_596
	.word	0		! total size of parameters
	.word	4		! frame size = 4
	.word	0
_Label_596:
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
_Label_3815:
	push	r0
	sub	r1,1,r1
	bne	_Label_3815
	mov	1934,r13		! source line 1934
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1947,r13		! source line 1947
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=2  sizeInBytes=4
	mov	2,r1
	store	r1,[r15+0]
!   Call the function
	mov	1947,r13		! source line 1947
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=junk  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-232]
! ASSIGNMENT STATEMENT...
	mov	1950,r13		! source line 1950
	mov	"\0\0AS",r10
	mov	1950,r13		! source line 1950
	mov	"\0\0SE",r10
!   _temp_597 = &_P_Kernel_processManager
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
	mov	1951,r13		! source line 1951
	mov	"\0\0AS",r10
	mov	1951,r13		! source line 1951
	mov	"\0\0SE",r10
!   _temp_598 = &_P_Kernel_threadManager
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
	mov	1954,r13		! source line 1954
	mov	"\0\0AS",r10
!   if intIsZero (childProcess) then goto _runtimeErrorNullPointer
	load	[r14+-212],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_599 = childProcess + 24
	load	[r14+-212],r1
	add	r1,24,r1
	store	r1,[r14+-200]
!   Data Move: *_temp_599 = childThread  (sizeInBytes=4)
	load	[r14+-216],r1
	load	[r14+-200],r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	1955,r13		! source line 1955
	mov	"\0\0AS",r10
!   if intIsZero (childProcess) then goto _runtimeErrorNullPointer
	load	[r14+-212],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_600 = childProcess + 16
	load	[r14+-212],r1
	add	r1,16,r1
	store	r1,[r14+-196]
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_603 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-184]
!   Data Move: _temp_602 = *_temp_603  (sizeInBytes=4)
	load	[r14+-184],r1
	load	[r1],r1
	store	r1,[r14+-188]
!   if intIsZero (_temp_602) then goto _runtimeErrorNullPointer
	load	[r14+-188],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_604 = _temp_602 + 12
	load	[r14+-188],r1
	add	r1,12,r1
	store	r1,[r14+-180]
!   Data Move: _temp_601 = *_temp_604  (sizeInBytes=4)
	load	[r14+-180],r1
	load	[r1],r1
	store	r1,[r14+-192]
!   Data Move: *_temp_600 = _temp_601  (sizeInBytes=4)
	load	[r14+-192],r1
	load	[r14+-196],r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	1958,r13		! source line 1958
	mov	"\0\0AS",r10
!   if intIsZero (childThread) then goto _runtimeErrorNullPointer
	load	[r14+-216],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_605 = childThread + 76
	load	[r14+-216],r1
	add	r1,76,r1
	store	r1,[r14+-176]
!   Data Move: *_temp_605 = 2  (sizeInBytes=4)
	mov	2,r1
	load	[r14+-176],r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	1959,r13		! source line 1959
	mov	"\0\0AS",r10
!   if intIsZero (childThread) then goto _runtimeErrorNullPointer
	load	[r14+-216],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_606 = childThread + 4160
	load	[r14+-216],r1
	add	r1,4160,r1
	store	r1,[r14+-172]
!   Data Move: *_temp_606 = childProcess  (sizeInBytes=4)
	load	[r14+-212],r1
	load	[r14+-172],r2
	store	r1,[r2]
! CALL STATEMENT...
!   if intIsZero (childThread) then goto _runtimeErrorNullPointer
	load	[r14+-216],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_608 = childThread + 4096
	load	[r14+-216],r1
	add	r1,4096,r1
	store	r1,[r14+-164]
!   Move address of _temp_608 [0 ] into _temp_609
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
!   _temp_607 = _temp_609		(4 bytes)
	load	[r14+-160],r1
	store	r1,[r14+-168]
!   Prepare Argument: offset=8  value=_temp_607  sizeInBytes=4
	load	[r14+-168],r1
	store	r1,[r15+0]
!   Call the function
	mov	1962,r13		! source line 1962
	mov	"\0\0CE",r10
	call	SaveUserRegs
! ASSIGNMENT STATEMENT...
	mov	1965,r13		! source line 1965
	mov	"\0\0AS",r10
!   i = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-228]
! WHILE STATEMENT...
	mov	1965,r13		! source line 1965
	mov	"\0\0WH",r10
_Label_610:
!   if i >= 10 then goto _Label_612		(int)
	load	[r14+-228],r1
	mov	10,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_612
!	jmp	_Label_611
_Label_611:
	mov	1965,r13		! source line 1965
	mov	"\0\0WB",r10
! ASSIGNMENT STATEMENT...
	mov	1966,r13		! source line 1966
	mov	"\0\0AS",r10
!   if intIsZero (childProcess) then goto _runtimeErrorNullPointer
	load	[r14+-212],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_613 = childProcess + 124
	load	[r14+-212],r1
	add	r1,124,r1
	store	r1,[r14+-156]
!   Move address of _temp_613 [i ] into _temp_614
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
!   _temp_617 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-140]
!   Data Move: _temp_616 = *_temp_617  (sizeInBytes=4)
	load	[r14+-140],r1
	load	[r1],r1
	store	r1,[r14+-144]
!   if intIsZero (_temp_616) then goto _runtimeErrorNullPointer
	load	[r14+-144],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_618 = _temp_616 + 124
	load	[r14+-144],r1
	add	r1,124,r1
	store	r1,[r14+-136]
!   Move address of _temp_618 [i ] into _temp_619
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
!   Data Move: _temp_615 = *_temp_619  (sizeInBytes=4)
	load	[r14+-132],r1
	load	[r1],r1
	store	r1,[r14+-148]
!   Data Move: *_temp_614 = _temp_615  (sizeInBytes=4)
	load	[r14+-148],r1
	load	[r14+-152],r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	1965,r13		! source line 1965
	mov	"\0\0AS",r10
!   i = i + 1		(int)
	load	[r14+-228],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-228]
! END WHILE...
	jmp	_Label_610
_Label_612:
! ASSIGNMENT STATEMENT...
	mov	1970,r13		! source line 1970
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=1  sizeInBytes=4
	mov	1,r1
	store	r1,[r15+0]
!   Call the function
	mov	1970,r13		! source line 1970
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=junk  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-232]
! ASSIGNMENT STATEMENT...
	mov	1973,r13		! source line 1973
	mov	"\0\0AS",r10
!   if intIsZero (childThread) then goto _runtimeErrorNullPointer
	load	[r14+-216],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_620 = childThread + 68
	load	[r14+-216],r1
	add	r1,68,r1
	store	r1,[r14+-128]
!   if intIsZero (childThread) then goto _runtimeErrorNullPointer
	load	[r14+-216],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_622 = childThread + 88
	load	[r14+-216],r1
	add	r1,88,r1
	store	r1,[r14+-120]
!   Move address of _temp_622 [999 ] into _temp_623
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
!   _temp_621 = _temp_623		(4 bytes)
	load	[r14+-116],r1
	store	r1,[r14+-124]
!   Data Move: *_temp_620 = _temp_621  (sizeInBytes=4)
	load	[r14+-124],r1
	load	[r14+-128],r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	1976,r13		! source line 1976
	mov	"\0\0AS",r10
!   NEW CLASS Constructor...
!   ZeroMemory: childAddrSpace = zeros  (sizeInBytes=92)
	add	r14,-332,r4
	mov	23,r3
_Label_3816:
	store	r0,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_3816
!   childAddrSpace = _P_Kernel_AddrSpace
	set	_P_Kernel_AddrSpace,r1
	store	r1,[r14+-332]
! SEND STATEMENT...
	mov	1977,r13		! source line 1977
	mov	"\0\0SE",r10
!   _temp_625 = &childAddrSpace
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
	mov	1978,r13		! source line 1978
	mov	"\0\0AS",r10
!   if intIsZero (childProcess) then goto _runtimeErrorNullPointer
	load	[r14+-212],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_626 = childProcess + 32
	load	[r14+-212],r1
	add	r1,32,r1
	store	r1,[r14+-104]
!   Data Move: *_temp_626 = childAddrSpace  (sizeInBytes=92)
	add	r14,-332,r5
	load	[r14+-104],r4
	mov	23,r3
_Label_3817:
	load	[r5],r1
	add	r5,4,r5
	store	r1,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_3817
! ASSIGNMENT STATEMENT...
	mov	1981,r13		! source line 1981
	mov	"\0\0AS",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_628 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-96]
!   Data Move: _temp_627 = *_temp_628  (sizeInBytes=4)
	load	[r14+-96],r1
	load	[r1],r1
	store	r1,[r14+-100]
!   if intIsZero (_temp_627) then goto _runtimeErrorNullPointer
	load	[r14+-100],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_629 = _temp_627 + 32
	load	[r14+-100],r1
	add	r1,32,r1
	store	r1,[r14+-92]
!   _temp_630 = _temp_629 + 4
	load	[r14+-92],r1
	add	r1,4,r1
	store	r1,[r14+-88]
!   Data Move: numPagesRequired = *_temp_630  (sizeInBytes=4)
	load	[r14+-88],r1
	load	[r1],r1
	store	r1,[r14+-236]
! SEND STATEMENT...
	mov	1982,r13		! source line 1982
	mov	"\0\0SE",r10
!   if intIsZero (childProcess) then goto _runtimeErrorNullPointer
	load	[r14+-212],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_632 = childProcess + 32
	load	[r14+-212],r1
	add	r1,32,r1
	store	r1,[r14+-80]
!   _temp_631 = _temp_632		(4 bytes)
	load	[r14+-80],r1
	store	r1,[r14+-84]
!   _temp_633 = &_P_Kernel_frameManager
	set	_P_Kernel_frameManager,r1
	store	r1,[r14+-76]
!   Prepare Argument: offset=12  value=_temp_631  sizeInBytes=4
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
	mov	1985,r13		! source line 1985
	mov	"\0\0AS",r10
!   i = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-228]
! WHILE STATEMENT...
	mov	1985,r13		! source line 1985
	mov	"\0\0WH",r10
_Label_634:
!   if i >= numPagesRequired then goto _Label_636		(int)
	load	[r14+-228],r1
	load	[r14+-236],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_636
!	jmp	_Label_635
_Label_635:
	mov	1985,r13		! source line 1985
	mov	"\0\0WB",r10
! ASSIGNMENT STATEMENT...
	mov	1986,r13		! source line 1986
	mov	"\0\0AS",r10
	mov	1986,r13		! source line 1986
	mov	"\0\0SE",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_638 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-68]
!   Data Move: _temp_637 = *_temp_638  (sizeInBytes=4)
	load	[r14+-68],r1
	load	[r1],r1
	store	r1,[r14+-72]
!   if intIsZero (_temp_637) then goto _runtimeErrorNullPointer
	load	[r14+-72],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_639 = _temp_637 + 32
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
	mov	1987,r13		! source line 1987
	mov	"\0\0AS",r10
	mov	1987,r13		! source line 1987
	mov	"\0\0SE",r10
!   if intIsZero (childProcess) then goto _runtimeErrorNullPointer
	load	[r14+-212],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_640 = childProcess + 32
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
	mov	1988,r13		! source line 1988
	mov	"\0\0CE",r10
	call	MemoryCopy
! IF STATEMENT...
	mov	1990,r13		! source line 1990
	mov	"\0\0IF",r10
	mov	1990,r13		! source line 1990
	mov	"\0\0SE",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_645 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-52]
!   Data Move: _temp_644 = *_temp_645  (sizeInBytes=4)
	load	[r14+-52],r1
	load	[r1],r1
	store	r1,[r14+-56]
!   if intIsZero (_temp_644) then goto _runtimeErrorNullPointer
	load	[r14+-56],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_646 = _temp_644 + 32
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
!   Retrieve Result: targetName=_temp_643  sizeInBytes=1
	loadb	[r15],r1
	storeb	r1,[r14+-12]
!   _temp_647 = _temp_643 XOR 1		(bool)
	loadb	[r14+-12],r1
	mov	1,r2
	xor	r1,r2,r1
	storeb	r1,[r14+-11]
!   if _temp_647 then goto _Label_642 else goto _Label_641
	loadb	[r14+-11],r1
	cmp	r1,0
	be	_Label_641
	jmp	_Label_642
_Label_641:
! THEN...
	mov	1991,r13		! source line 1991
	mov	"\0\0TN",r10
! SEND STATEMENT...
	mov	1991,r13		! source line 1991
	mov	"\0\0SE",r10
!   if intIsZero (childProcess) then goto _runtimeErrorNullPointer
	load	[r14+-212],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_648 = childProcess + 32
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
_Label_642:
! IF STATEMENT...
	mov	1994,r13		! source line 1994
	mov	"\0\0IF",r10
	mov	1994,r13		! source line 1994
	mov	"\0\0SE",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_653 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-36]
!   Data Move: _temp_652 = *_temp_653  (sizeInBytes=4)
	load	[r14+-36],r1
	load	[r1],r1
	store	r1,[r14+-40]
!   if intIsZero (_temp_652) then goto _runtimeErrorNullPointer
	load	[r14+-40],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_654 = _temp_652 + 32
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
!   Retrieve Result: targetName=_temp_651  sizeInBytes=1
	loadb	[r15],r1
	storeb	r1,[r14+-10]
!   _temp_655 = _temp_651 XOR 0		(bool)
	loadb	[r14+-10],r1
	mov	0,r2
	xor	r1,r2,r1
	storeb	r1,[r14+-9]
!   if _temp_655 then goto _Label_650 else goto _Label_649
	loadb	[r14+-9],r1
	cmp	r1,0
	be	_Label_649
	jmp	_Label_650
_Label_649:
! THEN...
	mov	1995,r13		! source line 1995
	mov	"\0\0TN",r10
! SEND STATEMENT...
	mov	1995,r13		! source line 1995
	mov	"\0\0SE",r10
!   if intIsZero (childProcess) then goto _runtimeErrorNullPointer
	load	[r14+-212],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_656 = childProcess + 32
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
_Label_650:
! ASSIGNMENT STATEMENT...
	mov	1985,r13		! source line 1985
	mov	"\0\0AS",r10
!   i = i + 1		(int)
	load	[r14+-228],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-228]
! END WHILE...
	jmp	_Label_634
_Label_636:
! ASSIGNMENT STATEMENT...
	mov	2000,r13		! source line 2000
	mov	"\0\0AS",r10
!   Call the function
	mov	2000,r13		! source line 2000
	mov	"\0\0CE",r10
	call	GetOldUserPCFromSystemStack
!   Retrieve Result: targetName=oldUserPC  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-240]
! SEND STATEMENT...
	mov	2003,r13		! source line 2003
	mov	"\0\0SE",r10
!   _temp_657 = _P_Kernel_ResumeChildAfterFork
	set	_P_Kernel_ResumeChildAfterFork,r1
	store	r1,[r14+-24]
!   if intIsZero (childThread) then goto _runtimeErrorNullPointer
	load	[r14+-216],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Prepare Argument: offset=12  value=_temp_657  sizeInBytes=4
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
	mov	2005,r13		! source line 2005
	mov	"\0\0RE",r10
!   if intIsZero (childProcess) then goto _runtimeErrorNullPointer
	load	[r14+-212],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_659 = childProcess + 12
	load	[r14+-212],r1
	add	r1,12,r1
	store	r1,[r14+-16]
!   Data Move: _temp_658 = *_temp_659  (sizeInBytes=4)
	load	[r14+-16],r1
	load	[r1],r1
	store	r1,[r14+-20]
!   ReturnResult: _temp_658  (sizeInBytes=4)
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
	.word	_Label_660
	.word	0		! total size of parameters
	.word	336		! frame size = 336
	.word	_Label_661
	.word	-16
	.word	4
	.word	_Label_662
	.word	-20
	.word	4
	.word	_Label_663
	.word	-24
	.word	4
	.word	_Label_664
	.word	-28
	.word	4
	.word	_Label_665
	.word	-9
	.word	1
	.word	_Label_666
	.word	-32
	.word	4
	.word	_Label_667
	.word	-36
	.word	4
	.word	_Label_668
	.word	-40
	.word	4
	.word	_Label_669
	.word	-10
	.word	1
	.word	_Label_670
	.word	-44
	.word	4
	.word	_Label_671
	.word	-11
	.word	1
	.word	_Label_672
	.word	-48
	.word	4
	.word	_Label_673
	.word	-52
	.word	4
	.word	_Label_674
	.word	-56
	.word	4
	.word	_Label_675
	.word	-12
	.word	1
	.word	_Label_676
	.word	-60
	.word	4
	.word	_Label_677
	.word	-64
	.word	4
	.word	_Label_678
	.word	-68
	.word	4
	.word	_Label_679
	.word	-72
	.word	4
	.word	_Label_680
	.word	-76
	.word	4
	.word	_Label_681
	.word	-80
	.word	4
	.word	_Label_682
	.word	-84
	.word	4
	.word	_Label_683
	.word	-88
	.word	4
	.word	_Label_684
	.word	-92
	.word	4
	.word	_Label_685
	.word	-96
	.word	4
	.word	_Label_686
	.word	-100
	.word	4
	.word	_Label_687
	.word	-104
	.word	4
	.word	_Label_688
	.word	-108
	.word	4
	.word	_Label_689
	.word	-112
	.word	4
	.word	_Label_690
	.word	-116
	.word	4
	.word	_Label_691
	.word	-120
	.word	4
	.word	_Label_692
	.word	-124
	.word	4
	.word	_Label_693
	.word	-128
	.word	4
	.word	_Label_694
	.word	-132
	.word	4
	.word	_Label_695
	.word	-136
	.word	4
	.word	_Label_696
	.word	-140
	.word	4
	.word	_Label_697
	.word	-144
	.word	4
	.word	_Label_698
	.word	-148
	.word	4
	.word	_Label_699
	.word	-152
	.word	4
	.word	_Label_700
	.word	-156
	.word	4
	.word	_Label_701
	.word	-160
	.word	4
	.word	_Label_702
	.word	-164
	.word	4
	.word	_Label_703
	.word	-168
	.word	4
	.word	_Label_704
	.word	-172
	.word	4
	.word	_Label_705
	.word	-176
	.word	4
	.word	_Label_706
	.word	-180
	.word	4
	.word	_Label_707
	.word	-184
	.word	4
	.word	_Label_708
	.word	-188
	.word	4
	.word	_Label_709
	.word	-192
	.word	4
	.word	_Label_710
	.word	-196
	.word	4
	.word	_Label_711
	.word	-200
	.word	4
	.word	_Label_712
	.word	-204
	.word	4
	.word	_Label_713
	.word	-208
	.word	4
	.word	_Label_714
	.word	-212
	.word	4
	.word	_Label_715
	.word	-216
	.word	4
	.word	_Label_716
	.word	-220
	.word	4
	.word	_Label_717
	.word	-224
	.word	4
	.word	_Label_718
	.word	-228
	.word	4
	.word	_Label_719
	.word	-232
	.word	4
	.word	_Label_720
	.word	-236
	.word	4
	.word	_Label_721
	.word	-240
	.word	4
	.word	_Label_722
	.word	-332
	.word	92
	.word	0
_Label_660:
	.ascii	"Handle_Sys_Fork\0"
	.align
_Label_661:
	.byte	'?'
	.ascii	"_temp_659\0"
	.align
_Label_662:
	.byte	'?'
	.ascii	"_temp_658\0"
	.align
_Label_663:
	.byte	'?'
	.ascii	"_temp_657\0"
	.align
_Label_664:
	.byte	'?'
	.ascii	"_temp_656\0"
	.align
_Label_665:
	.byte	'C'
	.ascii	"_temp_655\0"
	.align
_Label_666:
	.byte	'?'
	.ascii	"_temp_654\0"
	.align
_Label_667:
	.byte	'?'
	.ascii	"_temp_653\0"
	.align
_Label_668:
	.byte	'?'
	.ascii	"_temp_652\0"
	.align
_Label_669:
	.byte	'C'
	.ascii	"_temp_651\0"
	.align
_Label_670:
	.byte	'?'
	.ascii	"_temp_648\0"
	.align
_Label_671:
	.byte	'C'
	.ascii	"_temp_647\0"
	.align
_Label_672:
	.byte	'?'
	.ascii	"_temp_646\0"
	.align
_Label_673:
	.byte	'?'
	.ascii	"_temp_645\0"
	.align
_Label_674:
	.byte	'?'
	.ascii	"_temp_644\0"
	.align
_Label_675:
	.byte	'C'
	.ascii	"_temp_643\0"
	.align
_Label_676:
	.byte	'?'
	.ascii	"_temp_640\0"
	.align
_Label_677:
	.byte	'?'
	.ascii	"_temp_639\0"
	.align
_Label_678:
	.byte	'?'
	.ascii	"_temp_638\0"
	.align
_Label_679:
	.byte	'?'
	.ascii	"_temp_637\0"
	.align
_Label_680:
	.byte	'?'
	.ascii	"_temp_633\0"
	.align
_Label_681:
	.byte	'?'
	.ascii	"_temp_632\0"
	.align
_Label_682:
	.byte	'?'
	.ascii	"_temp_631\0"
	.align
_Label_683:
	.byte	'?'
	.ascii	"_temp_630\0"
	.align
_Label_684:
	.byte	'?'
	.ascii	"_temp_629\0"
	.align
_Label_685:
	.byte	'?'
	.ascii	"_temp_628\0"
	.align
_Label_686:
	.byte	'?'
	.ascii	"_temp_627\0"
	.align
_Label_687:
	.byte	'?'
	.ascii	"_temp_626\0"
	.align
_Label_688:
	.byte	'?'
	.ascii	"_temp_625\0"
	.align
_Label_689:
	.byte	'?'
	.ascii	"_temp_624\0"
	.align
_Label_690:
	.byte	'?'
	.ascii	"_temp_623\0"
	.align
_Label_691:
	.byte	'?'
	.ascii	"_temp_622\0"
	.align
_Label_692:
	.byte	'?'
	.ascii	"_temp_621\0"
	.align
_Label_693:
	.byte	'?'
	.ascii	"_temp_620\0"
	.align
_Label_694:
	.byte	'?'
	.ascii	"_temp_619\0"
	.align
_Label_695:
	.byte	'?'
	.ascii	"_temp_618\0"
	.align
_Label_696:
	.byte	'?'
	.ascii	"_temp_617\0"
	.align
_Label_697:
	.byte	'?'
	.ascii	"_temp_616\0"
	.align
_Label_698:
	.byte	'?'
	.ascii	"_temp_615\0"
	.align
_Label_699:
	.byte	'?'
	.ascii	"_temp_614\0"
	.align
_Label_700:
	.byte	'?'
	.ascii	"_temp_613\0"
	.align
_Label_701:
	.byte	'?'
	.ascii	"_temp_609\0"
	.align
_Label_702:
	.byte	'?'
	.ascii	"_temp_608\0"
	.align
_Label_703:
	.byte	'?'
	.ascii	"_temp_607\0"
	.align
_Label_704:
	.byte	'?'
	.ascii	"_temp_606\0"
	.align
_Label_705:
	.byte	'?'
	.ascii	"_temp_605\0"
	.align
_Label_706:
	.byte	'?'
	.ascii	"_temp_604\0"
	.align
_Label_707:
	.byte	'?'
	.ascii	"_temp_603\0"
	.align
_Label_708:
	.byte	'?'
	.ascii	"_temp_602\0"
	.align
_Label_709:
	.byte	'?'
	.ascii	"_temp_601\0"
	.align
_Label_710:
	.byte	'?'
	.ascii	"_temp_600\0"
	.align
_Label_711:
	.byte	'?'
	.ascii	"_temp_599\0"
	.align
_Label_712:
	.byte	'?'
	.ascii	"_temp_598\0"
	.align
_Label_713:
	.byte	'?'
	.ascii	"_temp_597\0"
	.align
_Label_714:
	.byte	'P'
	.ascii	"childProcess\0"
	.align
_Label_715:
	.byte	'P'
	.ascii	"childThread\0"
	.align
_Label_716:
	.byte	'I'
	.ascii	"childFrameAddress\0"
	.align
_Label_717:
	.byte	'I'
	.ascii	"parentFrameAddress\0"
	.align
_Label_718:
	.byte	'I'
	.ascii	"i\0"
	.align
_Label_719:
	.byte	'I'
	.ascii	"junk\0"
	.align
_Label_720:
	.byte	'I'
	.ascii	"numPagesRequired\0"
	.align
_Label_721:
	.byte	'I'
	.ascii	"oldUserPC\0"
	.align
_Label_722:
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
_Label_3818:
	push	r0
	sub	r1,1,r1
	bne	_Label_3818
	mov	2011,r13		! source line 2011
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	2017,r13		! source line 2017
	mov	"\0\0AS",r10
!   i = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-92]
! WHILE STATEMENT...
	mov	2017,r13		! source line 2017
	mov	"\0\0WH",r10
_Label_723:
!   if i >= 10 then goto _Label_725		(int)
	load	[r14+-92],r1
	mov	10,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_725
!	jmp	_Label_724
_Label_724:
	mov	2017,r13		! source line 2017
	mov	"\0\0WB",r10
! IF STATEMENT...
	mov	2019,r13		! source line 2019
	mov	"\0\0IF",r10
!   _temp_730 = &_P_Kernel_processManager
	set	_P_Kernel_processManager,r1
	store	r1,[r14+-84]
!   _temp_731 = _temp_730 + 8
	load	[r14+-84],r1
	add	r1,8,r1
	store	r1,[r14+-80]
!   Move address of _temp_731 [i ] into _temp_732
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
!   _temp_733 = _temp_732 + 12
	load	[r14+-76],r1
	add	r1,12,r1
	store	r1,[r14+-72]
!   Data Move: _temp_729 = *_temp_733  (sizeInBytes=4)
	load	[r14+-72],r1
	load	[r1],r1
	store	r1,[r14+-88]
!   if processID != _temp_729 then goto _Label_727		(int)
	load	[r14+8],r1
	load	[r14+-88],r2
	cmp	r1,r2
	bne	_Label_727
!	jmp	_Label_728
_Label_728:
!   if processID <= -1 then goto _Label_727		(int)
	load	[r14+8],r1
	mov	-1,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	ble	_Label_727
!	jmp	_Label_726
_Label_726:
! THEN...
	mov	2022,r13		! source line 2022
	mov	"\0\0TN",r10
! IF STATEMENT...
	mov	2022,r13		! source line 2022
	mov	"\0\0IF",r10
!   _temp_737 = &_P_Kernel_processManager
	set	_P_Kernel_processManager,r1
	store	r1,[r14+-64]
!   _temp_738 = _temp_737 + 8
	load	[r14+-64],r1
	add	r1,8,r1
	store	r1,[r14+-60]
!   Move address of _temp_738 [i ] into _temp_739
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
!   _temp_740 = _temp_739 + 16
	load	[r14+-56],r1
	add	r1,16,r1
	store	r1,[r14+-52]
!   Data Move: _temp_736 = *_temp_740  (sizeInBytes=4)
	load	[r14+-52],r1
	load	[r1],r1
	store	r1,[r14+-68]
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_743 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-40]
!   Data Move: _temp_742 = *_temp_743  (sizeInBytes=4)
	load	[r14+-40],r1
	load	[r1],r1
	store	r1,[r14+-44]
!   if intIsZero (_temp_742) then goto _runtimeErrorNullPointer
	load	[r14+-44],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_744 = _temp_742 + 12
	load	[r14+-44],r1
	add	r1,12,r1
	store	r1,[r14+-36]
!   Data Move: _temp_741 = *_temp_744  (sizeInBytes=4)
	load	[r14+-36],r1
	load	[r1],r1
	store	r1,[r14+-48]
!   if _temp_736 != _temp_741 then goto _Label_735		(int)
	load	[r14+-68],r1
	load	[r14+-48],r2
	cmp	r1,r2
	bne	_Label_735
!	jmp	_Label_734
_Label_734:
! THEN...
	mov	2024,r13		! source line 2024
	mov	"\0\0TN",r10
! RETURN STATEMENT...
	mov	2024,r13		! source line 2024
	mov	"\0\0RE",r10
	mov	2024,r13		! source line 2024
	mov	"\0\0SE",r10
!   _temp_747 = &_P_Kernel_processManager
	set	_P_Kernel_processManager,r1
	store	r1,[r14+-24]
!   _temp_748 = _temp_747 + 8
	load	[r14+-24],r1
	add	r1,8,r1
	store	r1,[r14+-20]
!   Move address of _temp_748 [i ] into _temp_749
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
!   _temp_746 = _temp_749		(4 bytes)
	load	[r14+-16],r1
	store	r1,[r14+-28]
!   _temp_750 = &_P_Kernel_processManager
	set	_P_Kernel_processManager,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=12  value=_temp_746  sizeInBytes=4
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
!   Retrieve Result: targetName=_temp_745  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-32]
!   ReturnResult: _temp_745  (sizeInBytes=4)
	load	[r14+-32],r1
	store	r1,[r14+8]
	add	r15,96,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_735:
! END IF...
_Label_727:
! ASSIGNMENT STATEMENT...
	mov	2017,r13		! source line 2017
	mov	"\0\0AS",r10
!   i = i + 1		(int)
	load	[r14+-92],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-92]
! END WHILE...
	jmp	_Label_723
_Label_725:
! RETURN STATEMENT...
	mov	2029,r13		! source line 2029
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
	.word	_Label_751
	.word	4		! total size of parameters
	.word	92		! frame size = 92
	.word	_Label_752
	.word	8
	.word	4
	.word	_Label_753
	.word	-12
	.word	4
	.word	_Label_754
	.word	-16
	.word	4
	.word	_Label_755
	.word	-20
	.word	4
	.word	_Label_756
	.word	-24
	.word	4
	.word	_Label_757
	.word	-28
	.word	4
	.word	_Label_758
	.word	-32
	.word	4
	.word	_Label_759
	.word	-36
	.word	4
	.word	_Label_760
	.word	-40
	.word	4
	.word	_Label_761
	.word	-44
	.word	4
	.word	_Label_762
	.word	-48
	.word	4
	.word	_Label_763
	.word	-52
	.word	4
	.word	_Label_764
	.word	-56
	.word	4
	.word	_Label_765
	.word	-60
	.word	4
	.word	_Label_766
	.word	-64
	.word	4
	.word	_Label_767
	.word	-68
	.word	4
	.word	_Label_768
	.word	-72
	.word	4
	.word	_Label_769
	.word	-76
	.word	4
	.word	_Label_770
	.word	-80
	.word	4
	.word	_Label_771
	.word	-84
	.word	4
	.word	_Label_772
	.word	-88
	.word	4
	.word	_Label_773
	.word	-92
	.word	4
	.word	0
_Label_751:
	.ascii	"Handle_Sys_Join\0"
	.align
_Label_752:
	.byte	'I'
	.ascii	"processID\0"
	.align
_Label_753:
	.byte	'?'
	.ascii	"_temp_750\0"
	.align
_Label_754:
	.byte	'?'
	.ascii	"_temp_749\0"
	.align
_Label_755:
	.byte	'?'
	.ascii	"_temp_748\0"
	.align
_Label_756:
	.byte	'?'
	.ascii	"_temp_747\0"
	.align
_Label_757:
	.byte	'?'
	.ascii	"_temp_746\0"
	.align
_Label_758:
	.byte	'?'
	.ascii	"_temp_745\0"
	.align
_Label_759:
	.byte	'?'
	.ascii	"_temp_744\0"
	.align
_Label_760:
	.byte	'?'
	.ascii	"_temp_743\0"
	.align
_Label_761:
	.byte	'?'
	.ascii	"_temp_742\0"
	.align
_Label_762:
	.byte	'?'
	.ascii	"_temp_741\0"
	.align
_Label_763:
	.byte	'?'
	.ascii	"_temp_740\0"
	.align
_Label_764:
	.byte	'?'
	.ascii	"_temp_739\0"
	.align
_Label_765:
	.byte	'?'
	.ascii	"_temp_738\0"
	.align
_Label_766:
	.byte	'?'
	.ascii	"_temp_737\0"
	.align
_Label_767:
	.byte	'?'
	.ascii	"_temp_736\0"
	.align
_Label_768:
	.byte	'?'
	.ascii	"_temp_733\0"
	.align
_Label_769:
	.byte	'?'
	.ascii	"_temp_732\0"
	.align
_Label_770:
	.byte	'?'
	.ascii	"_temp_731\0"
	.align
_Label_771:
	.byte	'?'
	.ascii	"_temp_730\0"
	.align
_Label_772:
	.byte	'?'
	.ascii	"_temp_729\0"
	.align
_Label_773:
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
_Label_3819:
	push	r0
	sub	r1,1,r1
	bne	_Label_3819
	mov	2034,r13		! source line 2034
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	2050,r13		! source line 2050
	mov	"\0\0AS",r10
!   _temp_774 = &container
	add	r14,-320,r1
	store	r1,[r14+-200]
!   NEW ARRAY Constructor...
!   _temp_776 = &_temp_775
	add	r14,-196,r1
	store	r1,[r14+-172]
!   _temp_776 = _temp_776 + 4
	load	[r14+-172],r1
	add	r1,4,r1
	store	r1,[r14+-172]
!   Next value...
	mov	20,r1
	store	r1,[r14+-168]
_Label_778:
!   Data Move: *_temp_776 = 97  (sizeInBytes=1)
	mov	97,r1
	load	[r14+-172],r2
	storeb	r1,[r2]
!   _temp_776 = _temp_776 + 1
	load	[r14+-172],r1
	add	r1,1,r1
	store	r1,[r14+-172]
!   _temp_777 = _temp_777 + -1
	load	[r14+-168],r1
	add	r1,-1,r1
	store	r1,[r14+-168]
!   if intNotZero (_temp_777) then goto _Label_778
	load	[r14+-168],r1
	cmp	r1,r0
	bne	_Label_778
!   Initialize the array size...
	mov	20,r1
	store	r1,[r14+-196]
!   _temp_779 = &_temp_775
	add	r14,-196,r1
	store	r1,[r14+-164]
!   make sure array has size 20
	load	[r14+-200],r1
	load	[r1],r1
	set	20, r2
	cmp	r1,0
	be	_Label_3820
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bne	_runtimeErrorWrongArraySize
_Label_3820:
!   make sure array has size 20
	load	[r14+-164],r1
	load	[r1],r1
	set	20, r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bne	_runtimeErrorWrongArraySize
!   Data Move: *_temp_774 = *_temp_779  (sizeInBytes=24)
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
	mov	2051,r13		! source line 2051
	mov	"\0\0AS",r10
!   filenamePointer = &container
	add	r14,-320,r1
	store	r1,[r14+-324]
! ASSIGNMENT STATEMENT...
	mov	2054,r13		! source line 2054
	mov	"\0\0AS",r10
	mov	2054,r13		! source line 2054
	mov	"\0\0SE",r10
!   _temp_780 = filename		(4 bytes)
	load	[r14+8],r1
	store	r1,[r14+-160]
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_782 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-152]
!   Data Move: _temp_781 = *_temp_782  (sizeInBytes=4)
	load	[r14+-152],r1
	load	[r1],r1
	store	r1,[r14+-156]
!   if intIsZero (_temp_781) then goto _runtimeErrorNullPointer
	load	[r14+-156],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_783 = _temp_781 + 32
	load	[r14+-156],r1
	add	r1,32,r1
	store	r1,[r14+-148]
!   Prepare Argument: offset=12  value=filenamePointer  sizeInBytes=4
	load	[r14+-324],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=_temp_780  sizeInBytes=4
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
	mov	2057,r13		! source line 2057
	mov	"\0\0AS",r10
!   NEW CLASS Constructor...
!   ZeroMemory: newAddrSpace = zeros  (sizeInBytes=92)
	add	r14,-292,r4
	mov	23,r3
_Label_3821:
	store	r0,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_3821
!   newAddrSpace = _P_Kernel_AddrSpace
	set	_P_Kernel_AddrSpace,r1
	store	r1,[r14+-292]
! SEND STATEMENT...
	mov	2058,r13		! source line 2058
	mov	"\0\0SE",r10
!   _temp_785 = &newAddrSpace
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
	mov	2061,r13		! source line 2061
	mov	"\0\0AS",r10
	mov	2061,r13		! source line 2061
	mov	"\0\0SE",r10
!   _temp_786 = &_P_Kernel_fileManager
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
	mov	2064,r13		! source line 2064
	mov	"\0\0IF",r10
!   if intIsZero (openFile) then goto _Label_787
	load	[r14+-296],r1
	cmp	r1,r0
	be	_Label_787
	jmp	_Label_788
_Label_787:
! THEN...
	mov	2065,r13		! source line 2065
	mov	"\0\0TN",r10
! RETURN STATEMENT...
	mov	2065,r13		! source line 2065
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,364,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_788:
! ASSIGNMENT STATEMENT...
	mov	2069,r13		! source line 2069
	mov	"\0\0AS",r10
	mov	2069,r13		! source line 2069
	mov	"\0\0SE",r10
!   _temp_789 = &newAddrSpace
	add	r14,-292,r1
	store	r1,[r14+-132]
!   if intIsZero (openFile) then goto _runtimeErrorNullPointer
	load	[r14+-296],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Prepare Argument: offset=12  value=_temp_789  sizeInBytes=4
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
	mov	2072,r13		! source line 2072
	mov	"\0\0IF",r10
!   if initUserPC != -1 then goto _Label_791		(int)
	load	[r14+-332],r1
	mov	-1,r2
	cmp	r1,r2
	bne	_Label_791
!	jmp	_Label_790
_Label_790:
! THEN...
	mov	2073,r13		! source line 2073
	mov	"\0\0TN",r10
! RETURN STATEMENT...
	mov	2073,r13		! source line 2073
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,364,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_791:
! ASSIGNMENT STATEMENT...
	mov	2077,r13		! source line 2077
	mov	"\0\0AS",r10
!   emptySlotFound = 0		(1 byte)
	mov	0,r1
	storeb	r1,[r14+-10]
! ASSIGNMENT STATEMENT...
	mov	2078,r13		! source line 2078
	mov	"\0\0AS",r10
!   i = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-348]
! WHILE STATEMENT...
	mov	2078,r13		! source line 2078
	mov	"\0\0WH",r10
_Label_792:
!   if i >= 10 then goto _Label_794		(int)
	load	[r14+-348],r1
	mov	10,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_794
!	jmp	_Label_793
_Label_793:
	mov	2078,r13		! source line 2078
	mov	"\0\0WB",r10
! IF STATEMENT...
	mov	2079,r13		! source line 2079
	mov	"\0\0IF",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_799 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-120]
!   Data Move: _temp_798 = *_temp_799  (sizeInBytes=4)
	load	[r14+-120],r1
	load	[r1],r1
	store	r1,[r14+-124]
!   if intIsZero (_temp_798) then goto _runtimeErrorNullPointer
	load	[r14+-124],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_800 = _temp_798 + 124
	load	[r14+-124],r1
	add	r1,124,r1
	store	r1,[r14+-116]
!   Move address of _temp_800 [i ] into _temp_801
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
!   Data Move: _temp_797 = *_temp_801  (sizeInBytes=4)
	load	[r14+-112],r1
	load	[r1],r1
	store	r1,[r14+-128]
!   if intIsZero (_temp_797) then goto _Label_795
	load	[r14+-128],r1
	cmp	r1,r0
	be	_Label_795
	jmp	_Label_796
_Label_795:
! THEN...
	mov	2080,r13		! source line 2080
	mov	"\0\0TN",r10
! ASSIGNMENT STATEMENT...
	mov	2080,r13		! source line 2080
	mov	"\0\0AS",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_803 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-104]
!   Data Move: _temp_802 = *_temp_803  (sizeInBytes=4)
	load	[r14+-104],r1
	load	[r1],r1
	store	r1,[r14+-108]
!   if intIsZero (_temp_802) then goto _runtimeErrorNullPointer
	load	[r14+-108],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_804 = _temp_802 + 124
	load	[r14+-108],r1
	add	r1,124,r1
	store	r1,[r14+-100]
!   Move address of _temp_804 [i ] into _temp_805
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
!   Data Move: *_temp_805 = openFilePtr  (sizeInBytes=4)
	load	[r14+-352],r1
	load	[r14+-96],r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	2081,r13		! source line 2081
	mov	"\0\0AS",r10
!   emptySlotFound = 1		(1 byte)
	mov	1,r1
	storeb	r1,[r14+-10]
! BREAK STATEMENT...
	mov	2082,r13		! source line 2082
	mov	"\0\0BR",r10
	jmp	_Label_794
! END IF...
_Label_796:
! ASSIGNMENT STATEMENT...
	mov	2078,r13		! source line 2078
	mov	"\0\0AS",r10
!   i = i + 1		(int)
	load	[r14+-348],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-348]
! END WHILE...
	jmp	_Label_792
_Label_794:
! IF STATEMENT...
	mov	2087,r13		! source line 2087
	mov	"\0\0IF",r10
!   _temp_808 = emptySlotFound XOR 0		(bool)
	loadb	[r14+-10],r1
	mov	0,r2
	xor	r1,r2,r1
	storeb	r1,[r14+-9]
!   if _temp_808 then goto _Label_807 else goto _Label_806
	loadb	[r14+-9],r1
	cmp	r1,0
	be	_Label_806
	jmp	_Label_807
_Label_806:
! THEN...
	mov	2088,r13		! source line 2088
	mov	"\0\0TN",r10
! RETURN STATEMENT...
	mov	2088,r13		! source line 2088
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,364,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_807:
! SEND STATEMENT...
	mov	2092,r13		! source line 2092
	mov	"\0\0SE",r10
!   _temp_809 = &_P_Kernel_fileManager
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
	mov	2095,r13		! source line 2095
	mov	"\0\0SE",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_812 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-80]
!   Data Move: _temp_811 = *_temp_812  (sizeInBytes=4)
	load	[r14+-80],r1
	load	[r1],r1
	store	r1,[r14+-84]
!   if intIsZero (_temp_811) then goto _runtimeErrorNullPointer
	load	[r14+-84],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_813 = _temp_811 + 32
	load	[r14+-84],r1
	add	r1,32,r1
	store	r1,[r14+-76]
!   _temp_810 = _temp_813		(4 bytes)
	load	[r14+-76],r1
	store	r1,[r14+-88]
!   _temp_814 = &_P_Kernel_frameManager
	set	_P_Kernel_frameManager,r1
	store	r1,[r14+-72]
!   Prepare Argument: offset=12  value=_temp_810  sizeInBytes=4
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
	mov	2098,r13		! source line 2098
	mov	"\0\0AS",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_816 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-64]
!   Data Move: _temp_815 = *_temp_816  (sizeInBytes=4)
	load	[r14+-64],r1
	load	[r1],r1
	store	r1,[r14+-68]
!   if intIsZero (_temp_815) then goto _runtimeErrorNullPointer
	load	[r14+-68],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_817 = _temp_815 + 32
	load	[r14+-68],r1
	add	r1,32,r1
	store	r1,[r14+-60]
!   Data Move: *_temp_817 = newAddrSpace  (sizeInBytes=92)
	add	r14,-292,r5
	load	[r14+-60],r4
	mov	23,r3
_Label_3822:
	load	[r5],r1
	add	r5,4,r5
	store	r1,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_3822
! ASSIGNMENT STATEMENT...
	mov	2101,r13		! source line 2101
	mov	"\0\0AS",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_820 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-48]
!   Data Move: _temp_819 = *_temp_820  (sizeInBytes=4)
	load	[r14+-48],r1
	load	[r1],r1
	store	r1,[r14+-52]
!   if intIsZero (_temp_819) then goto _runtimeErrorNullPointer
	load	[r14+-52],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_821 = _temp_819 + 32
	load	[r14+-52],r1
	add	r1,32,r1
	store	r1,[r14+-44]
!   _temp_822 = _temp_821 + 4
	load	[r14+-44],r1
	add	r1,4,r1
	store	r1,[r14+-40]
!   Data Move: _temp_818 = *_temp_822  (sizeInBytes=4)
	load	[r14+-40],r1
	load	[r1],r1
	store	r1,[r14+-56]
!   initUserStackTop = _temp_818 * 8192		(int)
	load	[r14+-56],r1
	mov	8192,r2
	mul	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-336]
! ASSIGNMENT STATEMENT...
	mov	2104,r13		! source line 2104
	mov	"\0\0AS",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_823 = _P_Kernel_currentThread + 88
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,88,r1
	store	r1,[r14+-36]
!   Move address of _temp_823 [999 ] into _temp_824
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
!   initSystemStackTop = _temp_824		(4 bytes)
	load	[r14+-32],r1
	store	r1,[r14+-340]
! ASSIGNMENT STATEMENT...
	mov	2107,r13		! source line 2107
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=2  sizeInBytes=4
	mov	2,r1
	store	r1,[r15+0]
!   Call the function
	mov	2107,r13		! source line 2107
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=junk  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-344]
! SEND STATEMENT...
	mov	2108,r13		! source line 2108
	mov	"\0\0SE",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_826 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-24]
!   Data Move: _temp_825 = *_temp_826  (sizeInBytes=4)
	load	[r14+-24],r1
	load	[r1],r1
	store	r1,[r14+-28]
!   if intIsZero (_temp_825) then goto _runtimeErrorNullPointer
	load	[r14+-28],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_827 = _temp_825 + 32
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
	mov	2109,r13		! source line 2109
	mov	"\0\0AS",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_828 = _P_Kernel_currentThread + 4092
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4092,r1
	store	r1,[r14+-16]
!   Data Move: *_temp_828 = 1  (sizeInBytes=1)
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
	mov	2111,r13		! source line 2111
	mov	"\0\0CE",r10
	call	BecomeUserThread
! RETURN STATEMENT...
	mov	2113,r13		! source line 2113
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
	.word	_Label_829
	.word	4		! total size of parameters
	.word	360		! frame size = 360
	.word	_Label_830
	.word	8
	.word	4
	.word	_Label_831
	.word	-16
	.word	4
	.word	_Label_832
	.word	-20
	.word	4
	.word	_Label_833
	.word	-24
	.word	4
	.word	_Label_834
	.word	-28
	.word	4
	.word	_Label_835
	.word	-32
	.word	4
	.word	_Label_836
	.word	-36
	.word	4
	.word	_Label_837
	.word	-40
	.word	4
	.word	_Label_838
	.word	-44
	.word	4
	.word	_Label_839
	.word	-48
	.word	4
	.word	_Label_840
	.word	-52
	.word	4
	.word	_Label_841
	.word	-56
	.word	4
	.word	_Label_842
	.word	-60
	.word	4
	.word	_Label_843
	.word	-64
	.word	4
	.word	_Label_844
	.word	-68
	.word	4
	.word	_Label_845
	.word	-72
	.word	4
	.word	_Label_846
	.word	-76
	.word	4
	.word	_Label_847
	.word	-80
	.word	4
	.word	_Label_848
	.word	-84
	.word	4
	.word	_Label_849
	.word	-88
	.word	4
	.word	_Label_850
	.word	-92
	.word	4
	.word	_Label_851
	.word	-9
	.word	1
	.word	_Label_852
	.word	-96
	.word	4
	.word	_Label_853
	.word	-100
	.word	4
	.word	_Label_854
	.word	-104
	.word	4
	.word	_Label_855
	.word	-108
	.word	4
	.word	_Label_856
	.word	-112
	.word	4
	.word	_Label_857
	.word	-116
	.word	4
	.word	_Label_858
	.word	-120
	.word	4
	.word	_Label_859
	.word	-124
	.word	4
	.word	_Label_860
	.word	-128
	.word	4
	.word	_Label_861
	.word	-132
	.word	4
	.word	_Label_862
	.word	-136
	.word	4
	.word	_Label_863
	.word	-140
	.word	4
	.word	_Label_864
	.word	-144
	.word	4
	.word	_Label_865
	.word	-148
	.word	4
	.word	_Label_866
	.word	-152
	.word	4
	.word	_Label_867
	.word	-156
	.word	4
	.word	_Label_868
	.word	-160
	.word	4
	.word	_Label_869
	.word	-164
	.word	4
	.word	_Label_870
	.word	-168
	.word	4
	.word	_Label_871
	.word	-172
	.word	4
	.word	_Label_872
	.word	-196
	.word	24
	.word	_Label_873
	.word	-200
	.word	4
	.word	_Label_874
	.word	-292
	.word	92
	.word	_Label_875
	.word	-296
	.word	4
	.word	_Label_876
	.word	-320
	.word	24
	.word	_Label_877
	.word	-324
	.word	4
	.word	_Label_878
	.word	-328
	.word	4
	.word	_Label_879
	.word	-332
	.word	4
	.word	_Label_880
	.word	-336
	.word	4
	.word	_Label_881
	.word	-340
	.word	4
	.word	_Label_882
	.word	-344
	.word	4
	.word	_Label_883
	.word	-10
	.word	1
	.word	_Label_884
	.word	-348
	.word	4
	.word	_Label_885
	.word	-352
	.word	4
	.word	0
_Label_829:
	.ascii	"Handle_Sys_Exec\0"
	.align
_Label_830:
	.byte	'P'
	.ascii	"filename\0"
	.align
_Label_831:
	.byte	'?'
	.ascii	"_temp_828\0"
	.align
_Label_832:
	.byte	'?'
	.ascii	"_temp_827\0"
	.align
_Label_833:
	.byte	'?'
	.ascii	"_temp_826\0"
	.align
_Label_834:
	.byte	'?'
	.ascii	"_temp_825\0"
	.align
_Label_835:
	.byte	'?'
	.ascii	"_temp_824\0"
	.align
_Label_836:
	.byte	'?'
	.ascii	"_temp_823\0"
	.align
_Label_837:
	.byte	'?'
	.ascii	"_temp_822\0"
	.align
_Label_838:
	.byte	'?'
	.ascii	"_temp_821\0"
	.align
_Label_839:
	.byte	'?'
	.ascii	"_temp_820\0"
	.align
_Label_840:
	.byte	'?'
	.ascii	"_temp_819\0"
	.align
_Label_841:
	.byte	'?'
	.ascii	"_temp_818\0"
	.align
_Label_842:
	.byte	'?'
	.ascii	"_temp_817\0"
	.align
_Label_843:
	.byte	'?'
	.ascii	"_temp_816\0"
	.align
_Label_844:
	.byte	'?'
	.ascii	"_temp_815\0"
	.align
_Label_845:
	.byte	'?'
	.ascii	"_temp_814\0"
	.align
_Label_846:
	.byte	'?'
	.ascii	"_temp_813\0"
	.align
_Label_847:
	.byte	'?'
	.ascii	"_temp_812\0"
	.align
_Label_848:
	.byte	'?'
	.ascii	"_temp_811\0"
	.align
_Label_849:
	.byte	'?'
	.ascii	"_temp_810\0"
	.align
_Label_850:
	.byte	'?'
	.ascii	"_temp_809\0"
	.align
_Label_851:
	.byte	'C'
	.ascii	"_temp_808\0"
	.align
_Label_852:
	.byte	'?'
	.ascii	"_temp_805\0"
	.align
_Label_853:
	.byte	'?'
	.ascii	"_temp_804\0"
	.align
_Label_854:
	.byte	'?'
	.ascii	"_temp_803\0"
	.align
_Label_855:
	.byte	'?'
	.ascii	"_temp_802\0"
	.align
_Label_856:
	.byte	'?'
	.ascii	"_temp_801\0"
	.align
_Label_857:
	.byte	'?'
	.ascii	"_temp_800\0"
	.align
_Label_858:
	.byte	'?'
	.ascii	"_temp_799\0"
	.align
_Label_859:
	.byte	'?'
	.ascii	"_temp_798\0"
	.align
_Label_860:
	.byte	'?'
	.ascii	"_temp_797\0"
	.align
_Label_861:
	.byte	'?'
	.ascii	"_temp_789\0"
	.align
_Label_862:
	.byte	'?'
	.ascii	"_temp_786\0"
	.align
_Label_863:
	.byte	'?'
	.ascii	"_temp_785\0"
	.align
_Label_864:
	.byte	'?'
	.ascii	"_temp_784\0"
	.align
_Label_865:
	.byte	'?'
	.ascii	"_temp_783\0"
	.align
_Label_866:
	.byte	'?'
	.ascii	"_temp_782\0"
	.align
_Label_867:
	.byte	'?'
	.ascii	"_temp_781\0"
	.align
_Label_868:
	.byte	'?'
	.ascii	"_temp_780\0"
	.align
_Label_869:
	.byte	'?'
	.ascii	"_temp_779\0"
	.align
_Label_870:
	.byte	'?'
	.ascii	"_temp_777\0"
	.align
_Label_871:
	.byte	'?'
	.ascii	"_temp_776\0"
	.align
_Label_872:
	.byte	'?'
	.ascii	"_temp_775\0"
	.align
_Label_873:
	.byte	'?'
	.ascii	"_temp_774\0"
	.align
_Label_874:
	.byte	'O'
	.ascii	"newAddrSpace\0"
	.align
_Label_875:
	.byte	'P'
	.ascii	"openFile\0"
	.align
_Label_876:
	.byte	'A'
	.ascii	"container\0"
	.align
_Label_877:
	.byte	'P'
	.ascii	"filenamePointer\0"
	.align
_Label_878:
	.byte	'I'
	.ascii	"numOfCharCopied\0"
	.align
_Label_879:
	.byte	'I'
	.ascii	"initUserPC\0"
	.align
_Label_880:
	.byte	'I'
	.ascii	"initUserStackTop\0"
	.align
_Label_881:
	.byte	'I'
	.ascii	"initSystemStackTop\0"
	.align
_Label_882:
	.byte	'I'
	.ascii	"junk\0"
	.align
_Label_883:
	.byte	'B'
	.ascii	"emptySlotFound\0"
	.align
_Label_884:
	.byte	'I'
	.ascii	"i\0"
	.align
_Label_885:
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
_Label_3823:
	push	r0
	sub	r1,1,r1
	bne	_Label_3823
	mov	2118,r13		! source line 2118
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	2123,r13		! source line 2123
	mov	"\0\0AS",r10
!   _temp_886 = &container
	add	r14,-104,r1
	store	r1,[r14+-76]
!   NEW ARRAY Constructor...
!   _temp_888 = &_temp_887
	add	r14,-72,r1
	store	r1,[r14+-48]
!   _temp_888 = _temp_888 + 4
	load	[r14+-48],r1
	add	r1,4,r1
	store	r1,[r14+-48]
!   Next value...
	mov	20,r1
	store	r1,[r14+-44]
_Label_890:
!   Data Move: *_temp_888 = 97  (sizeInBytes=1)
	mov	97,r1
	load	[r14+-48],r2
	storeb	r1,[r2]
!   _temp_888 = _temp_888 + 1
	load	[r14+-48],r1
	add	r1,1,r1
	store	r1,[r14+-48]
!   _temp_889 = _temp_889 + -1
	load	[r14+-44],r1
	add	r1,-1,r1
	store	r1,[r14+-44]
!   if intNotZero (_temp_889) then goto _Label_890
	load	[r14+-44],r1
	cmp	r1,r0
	bne	_Label_890
!   Initialize the array size...
	mov	20,r1
	store	r1,[r14+-72]
!   _temp_891 = &_temp_887
	add	r14,-72,r1
	store	r1,[r14+-40]
!   make sure array has size 20
	load	[r14+-76],r1
	load	[r1],r1
	set	20, r2
	cmp	r1,0
	be	_Label_3824
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bne	_runtimeErrorWrongArraySize
_Label_3824:
!   make sure array has size 20
	load	[r14+-40],r1
	load	[r1],r1
	set	20, r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bne	_runtimeErrorWrongArraySize
!   Data Move: *_temp_886 = *_temp_891  (sizeInBytes=24)
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
	mov	2124,r13		! source line 2124
	mov	"\0\0AS",r10
!   kernelAddr = &container
	add	r14,-104,r1
	store	r1,[r14+-108]
! ASSIGNMENT STATEMENT...
	mov	2125,r13		! source line 2125
	mov	"\0\0AS",r10
	mov	2125,r13		! source line 2125
	mov	"\0\0SE",r10
!   _temp_892 = filename		(4 bytes)
	load	[r14+8],r1
	store	r1,[r14+-36]
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_894 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-28]
!   Data Move: _temp_893 = *_temp_894  (sizeInBytes=4)
	load	[r14+-28],r1
	load	[r1],r1
	store	r1,[r14+-32]
!   if intIsZero (_temp_893) then goto _runtimeErrorNullPointer
	load	[r14+-32],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_895 = _temp_893 + 32
	load	[r14+-32],r1
	add	r1,32,r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=12  value=kernelAddr  sizeInBytes=4
	load	[r14+-108],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=_temp_892  sizeInBytes=4
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
!   _temp_896 = _StringConst_39
	set	_StringConst_39,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_896  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   Call the function
	mov	2126,r13		! source line 2126
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_897 = _StringConst_40
	set	_StringConst_40,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_897  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=filename  sizeInBytes=4
	load	[r14+8],r1
	store	r1,[r15+4]
!   Call the function
	mov	2127,r13		! source line 2127
	mov	"\0\0CA",r10
	call	_P_System_printPtr
! CALL STATEMENT...
!   _temp_898 = _StringConst_41
	set	_StringConst_41,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_898  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	2128,r13		! source line 2128
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=kernelAddr  sizeInBytes=4
	load	[r14+-108],r1
	store	r1,[r15+0]
!   Call the function
	mov	2129,r13		! source line 2129
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Call the function
	mov	2130,r13		! source line 2130
	mov	"\0\0CA",r10
	call	_P_System_nl
! RETURN STATEMENT...
	mov	2132,r13		! source line 2132
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
	.word	_Label_899
	.word	4		! total size of parameters
	.word	116		! frame size = 116
	.word	_Label_900
	.word	8
	.word	4
	.word	_Label_901
	.word	-12
	.word	4
	.word	_Label_902
	.word	-16
	.word	4
	.word	_Label_903
	.word	-20
	.word	4
	.word	_Label_904
	.word	-24
	.word	4
	.word	_Label_905
	.word	-28
	.word	4
	.word	_Label_906
	.word	-32
	.word	4
	.word	_Label_907
	.word	-36
	.word	4
	.word	_Label_908
	.word	-40
	.word	4
	.word	_Label_909
	.word	-44
	.word	4
	.word	_Label_910
	.word	-48
	.word	4
	.word	_Label_911
	.word	-72
	.word	24
	.word	_Label_912
	.word	-76
	.word	4
	.word	_Label_913
	.word	-80
	.word	4
	.word	_Label_914
	.word	-104
	.word	24
	.word	_Label_915
	.word	-108
	.word	4
	.word	0
_Label_899:
	.ascii	"Handle_Sys_Create\0"
	.align
_Label_900:
	.byte	'P'
	.ascii	"filename\0"
	.align
_Label_901:
	.byte	'?'
	.ascii	"_temp_898\0"
	.align
_Label_902:
	.byte	'?'
	.ascii	"_temp_897\0"
	.align
_Label_903:
	.byte	'?'
	.ascii	"_temp_896\0"
	.align
_Label_904:
	.byte	'?'
	.ascii	"_temp_895\0"
	.align
_Label_905:
	.byte	'?'
	.ascii	"_temp_894\0"
	.align
_Label_906:
	.byte	'?'
	.ascii	"_temp_893\0"
	.align
_Label_907:
	.byte	'?'
	.ascii	"_temp_892\0"
	.align
_Label_908:
	.byte	'?'
	.ascii	"_temp_891\0"
	.align
_Label_909:
	.byte	'?'
	.ascii	"_temp_889\0"
	.align
_Label_910:
	.byte	'?'
	.ascii	"_temp_888\0"
	.align
_Label_911:
	.byte	'?'
	.ascii	"_temp_887\0"
	.align
_Label_912:
	.byte	'?'
	.ascii	"_temp_886\0"
	.align
_Label_913:
	.byte	'I'
	.ascii	"numOfCharCopied\0"
	.align
_Label_914:
	.byte	'A'
	.ascii	"container\0"
	.align
_Label_915:
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
_Label_3825:
	push	r0
	sub	r1,1,r1
	bne	_Label_3825
	mov	2137,r13		! source line 2137
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	2149,r13		! source line 2149
	mov	"\0\0AS",r10
!   _temp_916 = &container
	add	r14,-164,r1
	store	r1,[r14+-136]
!   NEW ARRAY Constructor...
!   _temp_918 = &_temp_917
	add	r14,-132,r1
	store	r1,[r14+-108]
!   _temp_918 = _temp_918 + 4
	load	[r14+-108],r1
	add	r1,4,r1
	store	r1,[r14+-108]
!   Next value...
	mov	20,r1
	store	r1,[r14+-104]
_Label_920:
!   Data Move: *_temp_918 = 97  (sizeInBytes=1)
	mov	97,r1
	load	[r14+-108],r2
	storeb	r1,[r2]
!   _temp_918 = _temp_918 + 1
	load	[r14+-108],r1
	add	r1,1,r1
	store	r1,[r14+-108]
!   _temp_919 = _temp_919 + -1
	load	[r14+-104],r1
	add	r1,-1,r1
	store	r1,[r14+-104]
!   if intNotZero (_temp_919) then goto _Label_920
	load	[r14+-104],r1
	cmp	r1,r0
	bne	_Label_920
!   Initialize the array size...
	mov	20,r1
	store	r1,[r14+-132]
!   _temp_921 = &_temp_917
	add	r14,-132,r1
	store	r1,[r14+-100]
!   make sure array has size 20
	load	[r14+-136],r1
	load	[r1],r1
	set	20, r2
	cmp	r1,0
	be	_Label_3826
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bne	_runtimeErrorWrongArraySize
_Label_3826:
!   make sure array has size 20
	load	[r14+-100],r1
	load	[r1],r1
	set	20, r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bne	_runtimeErrorWrongArraySize
!   Data Move: *_temp_916 = *_temp_921  (sizeInBytes=24)
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
	mov	2150,r13		! source line 2150
	mov	"\0\0AS",r10
!   strKernelAddr = &container
	add	r14,-164,r1
	store	r1,[r14+-168]
! ASSIGNMENT STATEMENT...
	mov	2151,r13		! source line 2151
	mov	"\0\0AS",r10
	mov	2151,r13		! source line 2151
	mov	"\0\0SE",r10
!   _temp_922 = filename		(4 bytes)
	load	[r14+8],r1
	store	r1,[r14+-96]
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_924 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-88]
!   Data Move: _temp_923 = *_temp_924  (sizeInBytes=4)
	load	[r14+-88],r1
	load	[r1],r1
	store	r1,[r14+-92]
!   if intIsZero (_temp_923) then goto _runtimeErrorNullPointer
	load	[r14+-92],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_925 = _temp_923 + 32
	load	[r14+-92],r1
	add	r1,32,r1
	store	r1,[r14+-84]
!   Prepare Argument: offset=12  value=strKernelAddr  sizeInBytes=4
	load	[r14+-168],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=_temp_922  sizeInBytes=4
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
	mov	2154,r13		! source line 2154
	mov	"\0\0IF",r10
!   if numOfCharCopied <= 20 then goto _Label_927		(int)
	load	[r14+-140],r1
	mov	20,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	ble	_Label_927
!	jmp	_Label_926
_Label_926:
! THEN...
	mov	2155,r13		! source line 2155
	mov	"\0\0TN",r10
! RETURN STATEMENT...
	mov	2155,r13		! source line 2155
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,192,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_927:
! ASSIGNMENT STATEMENT...
	mov	2159,r13		! source line 2159
	mov	"\0\0AS",r10
!   emptySlotFound = 0		(1 byte)
	mov	0,r1
	storeb	r1,[r14+-10]
! ASSIGNMENT STATEMENT...
	mov	2160,r13		! source line 2160
	mov	"\0\0AS",r10
!   i = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-172]
! WHILE STATEMENT...
	mov	2160,r13		! source line 2160
	mov	"\0\0WH",r10
_Label_928:
!   if i >= 10 then goto _Label_930		(int)
	load	[r14+-172],r1
	mov	10,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_930
!	jmp	_Label_929
_Label_929:
	mov	2160,r13		! source line 2160
	mov	"\0\0WB",r10
! IF STATEMENT...
	mov	2161,r13		! source line 2161
	mov	"\0\0IF",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_935 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-72]
!   Data Move: _temp_934 = *_temp_935  (sizeInBytes=4)
	load	[r14+-72],r1
	load	[r1],r1
	store	r1,[r14+-76]
!   if intIsZero (_temp_934) then goto _runtimeErrorNullPointer
	load	[r14+-76],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_936 = _temp_934 + 124
	load	[r14+-76],r1
	add	r1,124,r1
	store	r1,[r14+-68]
!   Move address of _temp_936 [i ] into _temp_937
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
!   Data Move: _temp_933 = *_temp_937  (sizeInBytes=4)
	load	[r14+-64],r1
	load	[r1],r1
	store	r1,[r14+-80]
!   if intIsZero (_temp_933) then goto _Label_931
	load	[r14+-80],r1
	cmp	r1,r0
	be	_Label_931
	jmp	_Label_932
_Label_931:
! THEN...
	mov	2162,r13		! source line 2162
	mov	"\0\0TN",r10
! ASSIGNMENT STATEMENT...
	mov	2162,r13		! source line 2162
	mov	"\0\0AS",r10
!   emptySlotIndex = i		(4 bytes)
	load	[r14+-172],r1
	store	r1,[r14+-176]
! ASSIGNMENT STATEMENT...
	mov	2163,r13		! source line 2163
	mov	"\0\0AS",r10
!   emptySlotFound = 1		(1 byte)
	mov	1,r1
	storeb	r1,[r14+-10]
! BREAK STATEMENT...
	mov	2164,r13		! source line 2164
	mov	"\0\0BR",r10
	jmp	_Label_930
! END IF...
_Label_932:
! ASSIGNMENT STATEMENT...
	mov	2160,r13		! source line 2160
	mov	"\0\0AS",r10
!   i = i + 1		(int)
	load	[r14+-172],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-172]
! END WHILE...
	jmp	_Label_928
_Label_930:
! IF STATEMENT...
	mov	2169,r13		! source line 2169
	mov	"\0\0IF",r10
!   _temp_940 = emptySlotFound XOR 0		(bool)
	loadb	[r14+-10],r1
	mov	0,r2
	xor	r1,r2,r1
	storeb	r1,[r14+-9]
!   if _temp_940 then goto _Label_939 else goto _Label_938
	loadb	[r14+-9],r1
	cmp	r1,0
	be	_Label_938
	jmp	_Label_939
_Label_938:
! THEN...
	mov	2170,r13		! source line 2170
	mov	"\0\0TN",r10
! RETURN STATEMENT...
	mov	2170,r13		! source line 2170
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,192,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_939:
! IF STATEMENT...
	mov	2174,r13		! source line 2174
	mov	"\0\0IF",r10
!   _temp_943 = _StringConst_42
	set	_StringConst_42,r1
	store	r1,[r14+-60]
!   Prepare Argument: offset=8  value=strKernelAddr  sizeInBytes=4
	load	[r14+-168],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=_temp_943  sizeInBytes=4
	load	[r14+-60],r1
	store	r1,[r15+4]
!   Call the function
	mov	2174,r13		! source line 2174
	mov	"\0\0CA",r10
	call	_P_System_StrEqual
!   if result==true then goto _Label_941 else goto _Label_942
	loadb	[r15],r1
	cmp	r1,0
	be	_Label_942
	jmp	_Label_941
_Label_941:
! THEN...
	mov	2175,r13		! source line 2175
	mov	"\0\0TN",r10
! ASSIGNMENT STATEMENT...
	mov	2175,r13		! source line 2175
	mov	"\0\0AS",r10
!   _temp_944 = &_P_Kernel_fileManager
	set	_P_Kernel_fileManager,r1
	store	r1,[r14+-56]
!   _temp_945 = _temp_944 + 772
	load	[r14+-56],r1
	add	r1,772,r1
	store	r1,[r14+-52]
!   openFilePtr = _temp_945		(4 bytes)
	load	[r14+-52],r1
	store	r1,[r14+-180]
! ASSIGNMENT STATEMENT...
	mov	2176,r13		! source line 2176
	mov	"\0\0AS",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_947 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-44]
!   Data Move: _temp_946 = *_temp_947  (sizeInBytes=4)
	load	[r14+-44],r1
	load	[r1],r1
	store	r1,[r14+-48]
!   if intIsZero (_temp_946) then goto _runtimeErrorNullPointer
	load	[r14+-48],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_948 = _temp_946 + 124
	load	[r14+-48],r1
	add	r1,124,r1
	store	r1,[r14+-40]
!   Move address of _temp_948 [emptySlotIndex ] into _temp_949
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
!   Data Move: *_temp_949 = openFilePtr  (sizeInBytes=4)
	load	[r14+-180],r1
	load	[r14+-36],r2
	store	r1,[r2]
! RETURN STATEMENT...
	mov	2177,r13		! source line 2177
	mov	"\0\0RE",r10
!   ReturnResult: emptySlotIndex  (sizeInBytes=4)
	load	[r14+-176],r1
	store	r1,[r14+8]
	add	r15,192,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_942:
! ASSIGNMENT STATEMENT...
	mov	2181,r13		! source line 2181
	mov	"\0\0AS",r10
	mov	2181,r13		! source line 2181
	mov	"\0\0SE",r10
!   _temp_950 = &_P_Kernel_fileManager
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
	mov	2184,r13		! source line 2184
	mov	"\0\0IF",r10
!   if intIsZero (openFilePtr) then goto _Label_951
	load	[r14+-180],r1
	cmp	r1,r0
	be	_Label_951
	jmp	_Label_952
_Label_951:
! THEN...
	mov	2185,r13		! source line 2185
	mov	"\0\0TN",r10
! RETURN STATEMENT...
	mov	2185,r13		! source line 2185
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,192,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_952:
! ASSIGNMENT STATEMENT...
	mov	2189,r13		! source line 2189
	mov	"\0\0AS",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_954 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-24]
!   Data Move: _temp_953 = *_temp_954  (sizeInBytes=4)
	load	[r14+-24],r1
	load	[r1],r1
	store	r1,[r14+-28]
!   if intIsZero (_temp_953) then goto _runtimeErrorNullPointer
	load	[r14+-28],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_955 = _temp_953 + 124
	load	[r14+-28],r1
	add	r1,124,r1
	store	r1,[r14+-20]
!   Move address of _temp_955 [emptySlotIndex ] into _temp_956
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
!   Data Move: *_temp_956 = openFilePtr  (sizeInBytes=4)
	load	[r14+-180],r1
	load	[r14+-16],r2
	store	r1,[r2]
! RETURN STATEMENT...
	mov	2191,r13		! source line 2191
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
	.word	_Label_957
	.word	4		! total size of parameters
	.word	188		! frame size = 188
	.word	_Label_958
	.word	8
	.word	4
	.word	_Label_959
	.word	-16
	.word	4
	.word	_Label_960
	.word	-20
	.word	4
	.word	_Label_961
	.word	-24
	.word	4
	.word	_Label_962
	.word	-28
	.word	4
	.word	_Label_963
	.word	-32
	.word	4
	.word	_Label_964
	.word	-36
	.word	4
	.word	_Label_965
	.word	-40
	.word	4
	.word	_Label_966
	.word	-44
	.word	4
	.word	_Label_967
	.word	-48
	.word	4
	.word	_Label_968
	.word	-52
	.word	4
	.word	_Label_969
	.word	-56
	.word	4
	.word	_Label_970
	.word	-60
	.word	4
	.word	_Label_971
	.word	-9
	.word	1
	.word	_Label_972
	.word	-64
	.word	4
	.word	_Label_973
	.word	-68
	.word	4
	.word	_Label_974
	.word	-72
	.word	4
	.word	_Label_975
	.word	-76
	.word	4
	.word	_Label_976
	.word	-80
	.word	4
	.word	_Label_977
	.word	-84
	.word	4
	.word	_Label_978
	.word	-88
	.word	4
	.word	_Label_979
	.word	-92
	.word	4
	.word	_Label_980
	.word	-96
	.word	4
	.word	_Label_981
	.word	-100
	.word	4
	.word	_Label_982
	.word	-104
	.word	4
	.word	_Label_983
	.word	-108
	.word	4
	.word	_Label_984
	.word	-132
	.word	24
	.word	_Label_985
	.word	-136
	.word	4
	.word	_Label_986
	.word	-140
	.word	4
	.word	_Label_987
	.word	-164
	.word	24
	.word	_Label_988
	.word	-168
	.word	4
	.word	_Label_989
	.word	-172
	.word	4
	.word	_Label_990
	.word	-176
	.word	4
	.word	_Label_991
	.word	-10
	.word	1
	.word	_Label_992
	.word	-180
	.word	4
	.word	0
_Label_957:
	.ascii	"Handle_Sys_Open\0"
	.align
_Label_958:
	.byte	'P'
	.ascii	"filename\0"
	.align
_Label_959:
	.byte	'?'
	.ascii	"_temp_956\0"
	.align
_Label_960:
	.byte	'?'
	.ascii	"_temp_955\0"
	.align
_Label_961:
	.byte	'?'
	.ascii	"_temp_954\0"
	.align
_Label_962:
	.byte	'?'
	.ascii	"_temp_953\0"
	.align
_Label_963:
	.byte	'?'
	.ascii	"_temp_950\0"
	.align
_Label_964:
	.byte	'?'
	.ascii	"_temp_949\0"
	.align
_Label_965:
	.byte	'?'
	.ascii	"_temp_948\0"
	.align
_Label_966:
	.byte	'?'
	.ascii	"_temp_947\0"
	.align
_Label_967:
	.byte	'?'
	.ascii	"_temp_946\0"
	.align
_Label_968:
	.byte	'?'
	.ascii	"_temp_945\0"
	.align
_Label_969:
	.byte	'?'
	.ascii	"_temp_944\0"
	.align
_Label_970:
	.byte	'?'
	.ascii	"_temp_943\0"
	.align
_Label_971:
	.byte	'C'
	.ascii	"_temp_940\0"
	.align
_Label_972:
	.byte	'?'
	.ascii	"_temp_937\0"
	.align
_Label_973:
	.byte	'?'
	.ascii	"_temp_936\0"
	.align
_Label_974:
	.byte	'?'
	.ascii	"_temp_935\0"
	.align
_Label_975:
	.byte	'?'
	.ascii	"_temp_934\0"
	.align
_Label_976:
	.byte	'?'
	.ascii	"_temp_933\0"
	.align
_Label_977:
	.byte	'?'
	.ascii	"_temp_925\0"
	.align
_Label_978:
	.byte	'?'
	.ascii	"_temp_924\0"
	.align
_Label_979:
	.byte	'?'
	.ascii	"_temp_923\0"
	.align
_Label_980:
	.byte	'?'
	.ascii	"_temp_922\0"
	.align
_Label_981:
	.byte	'?'
	.ascii	"_temp_921\0"
	.align
_Label_982:
	.byte	'?'
	.ascii	"_temp_919\0"
	.align
_Label_983:
	.byte	'?'
	.ascii	"_temp_918\0"
	.align
_Label_984:
	.byte	'?'
	.ascii	"_temp_917\0"
	.align
_Label_985:
	.byte	'?'
	.ascii	"_temp_916\0"
	.align
_Label_986:
	.byte	'I'
	.ascii	"numOfCharCopied\0"
	.align
_Label_987:
	.byte	'A'
	.ascii	"container\0"
	.align
_Label_988:
	.byte	'P'
	.ascii	"strKernelAddr\0"
	.align
_Label_989:
	.byte	'I'
	.ascii	"i\0"
	.align
_Label_990:
	.byte	'I'
	.ascii	"emptySlotIndex\0"
	.align
_Label_991:
	.byte	'B'
	.ascii	"emptySlotFound\0"
	.align
_Label_992:
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
	mov	61,r1
_Label_3827:
	push	r0
	sub	r1,1,r1
	bne	_Label_3827
	mov	2196,r13		! source line 2196
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! IF STATEMENT...
	mov	2213,r13		! source line 2213
	mov	"\0\0IF",r10
!   if fileDesc < 10 then goto _Label_995		(int)
	load	[r14+8],r1
	mov	10,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bl	_Label_995
	jmp	_Label_993
_Label_995:
!   if fileDesc >= 0 then goto _Label_994		(int)
	load	[r14+8],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_994
!	jmp	_Label_993
_Label_993:
! THEN...
	mov	2214,r13		! source line 2214
	mov	"\0\0TN",r10
! RETURN STATEMENT...
	mov	2214,r13		! source line 2214
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,248,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_994:
! ASSIGNMENT STATEMENT...
	mov	2218,r13		! source line 2218
	mov	"\0\0AS",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_997 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-184]
!   Data Move: _temp_996 = *_temp_997  (sizeInBytes=4)
	load	[r14+-184],r1
	load	[r1],r1
	store	r1,[r14+-188]
!   if intIsZero (_temp_996) then goto _runtimeErrorNullPointer
	load	[r14+-188],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_998 = _temp_996 + 124
	load	[r14+-188],r1
	add	r1,124,r1
	store	r1,[r14+-180]
!   Move address of _temp_998 [fileDesc ] into _temp_999
!     make sure index expr is >= 0
	load	[r14+8],r2
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
	set	4,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-176]
!   Data Move: openFilePtr = *_temp_999  (sizeInBytes=4)
	load	[r14+-176],r1
	load	[r1],r1
	store	r1,[r14+-192]
! IF STATEMENT...
	mov	2219,r13		! source line 2219
	mov	"\0\0IF",r10
!   if intIsZero (openFilePtr) then goto _Label_1000
	load	[r14+-192],r1
	cmp	r1,r0
	be	_Label_1000
	jmp	_Label_1001
_Label_1000:
! THEN...
	mov	2220,r13		! source line 2220
	mov	"\0\0TN",r10
! RETURN STATEMENT...
	mov	2220,r13		! source line 2220
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,248,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_1001:
! IF STATEMENT...
	mov	2224,r13		! source line 2224
	mov	"\0\0IF",r10
!   if sizeInBytes >= 0 then goto _Label_1003		(int)
	load	[r14+16],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_1003
!	jmp	_Label_1002
_Label_1002:
! THEN...
	mov	2225,r13		! source line 2225
	mov	"\0\0TN",r10
! RETURN STATEMENT...
	mov	2225,r13		! source line 2225
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,248,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_1003:
! IF STATEMENT...
	mov	2229,r13		! source line 2229
	mov	"\0\0IF",r10
!   _temp_1007 = buffer		(4 bytes)
	load	[r14+12],r1
	store	r1,[r14+-172]
!   if _temp_1007 < 163840 then goto _Label_1006		(int)
	load	[r14+-172],r1
	set	163840,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bl	_Label_1006
	jmp	_Label_1004
_Label_1006:
!   _temp_1008 = buffer		(4 bytes)
	load	[r14+12],r1
	store	r1,[r14+-168]
!   if _temp_1008 >= 0 then goto _Label_1005		(int)
	load	[r14+-168],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_1005
!	jmp	_Label_1004
_Label_1004:
! THEN...
	mov	2230,r13		! source line 2230
	mov	"\0\0TN",r10
! RETURN STATEMENT...
	mov	2230,r13		! source line 2230
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,248,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_1005:
! ASSIGNMENT STATEMENT...
	mov	2235,r13		! source line 2235
	mov	"\0\0AS",r10
!   virtAddr = buffer		(4 bytes)
	load	[r14+12],r1
	store	r1,[r14+-196]
! ASSIGNMENT STATEMENT...
	mov	2236,r13		! source line 2236
	mov	"\0\0AS",r10
!   virtPage = virtAddr div 8192		(int)
	load	[r14+-196],r1
	mov	8192,r2
	cmp	r2,0
	be	_runtimeErrorZeroDivide
	div	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-200]
! ASSIGNMENT STATEMENT...
	mov	2237,r13		! source line 2237
	mov	"\0\0AS",r10
!   offset = virtAddr rem 8192		(int)
	load	[r14+-196],r1
	mov	8192,r2
	cmp	r2,0
	be	_runtimeErrorZeroDivide
	rem	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-204]
! ASSIGNMENT STATEMENT...
	mov	2238,r13		! source line 2238
	mov	"\0\0AS",r10
!   copiedSoFar = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-228]
! ASSIGNMENT STATEMENT...
	mov	2239,r13		! source line 2239
	mov	"\0\0AS",r10
!   chunkSize = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-208]
! ASSIGNMENT STATEMENT...
	mov	2242,r13		! source line 2242
	mov	"\0\0AS",r10
!   if intIsZero (openFilePtr) then goto _runtimeErrorNullPointer
	load	[r14+-192],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1009 = openFilePtr + 16
	load	[r14+-192],r1
	add	r1,16,r1
	store	r1,[r14+-164]
!   Data Move: currentPos = *_temp_1009  (sizeInBytes=4)
	load	[r14+-164],r1
	load	[r1],r1
	store	r1,[r14+-216]
! ASSIGNMENT STATEMENT...
	mov	2243,r13		! source line 2243
	mov	"\0\0AS",r10
!   nextPosInFile = currentPos		(4 bytes)
	load	[r14+-216],r1
	store	r1,[r14+-220]
! WHILE STATEMENT...
	mov	2248,r13		! source line 2248
	mov	"\0\0WH",r10
_Label_1010:
!	jmp	_Label_1011
_Label_1011:
	mov	2248,r13		! source line 2248
	mov	"\0\0WB",r10
! ASSIGNMENT STATEMENT...
	mov	2251,r13		! source line 2251
	mov	"\0\0AS",r10
!   thisChunkSize = 8192 - offset		(int)
	mov	8192,r1
	load	[r14+-204],r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-212]
! ASSIGNMENT STATEMENT...
	mov	2252,r13		! source line 2252
	mov	"\0\0AS",r10
!   if intIsZero (openFilePtr) then goto _runtimeErrorNullPointer
	load	[r14+-192],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1014 = openFilePtr + 20
	load	[r14+-192],r1
	add	r1,20,r1
	store	r1,[r14+-156]
!   Data Move: _temp_1013 = *_temp_1014  (sizeInBytes=4)
	load	[r14+-156],r1
	load	[r1],r1
	store	r1,[r14+-160]
!   if intIsZero (_temp_1013) then goto _runtimeErrorNullPointer
	load	[r14+-160],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1015 = _temp_1013 + 24
	load	[r14+-160],r1
	add	r1,24,r1
	store	r1,[r14+-152]
!   Data Move: sizeOfFileInBytes = *_temp_1015  (sizeInBytes=4)
	load	[r14+-152],r1
	load	[r1],r1
	store	r1,[r14+-224]
! IF STATEMENT...
	mov	2254,r13		! source line 2254
	mov	"\0\0IF",r10
!   _temp_1018 = nextPosInFile + thisChunkSize		(int)
	load	[r14+-220],r1
	load	[r14+-212],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-148]
!   if _temp_1018 <= sizeOfFileInBytes then goto _Label_1017		(int)
	load	[r14+-148],r1
	load	[r14+-224],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	ble	_Label_1017
!	jmp	_Label_1016
_Label_1016:
! THEN...
	mov	2255,r13		! source line 2255
	mov	"\0\0TN",r10
! ASSIGNMENT STATEMENT...
	mov	2255,r13		! source line 2255
	mov	"\0\0AS",r10
!   thisChunkSize = sizeOfFileInBytes - nextPosInFile		(int)
	load	[r14+-224],r1
	load	[r14+-220],r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-212]
! END IF...
_Label_1017:
! IF STATEMENT...
	mov	2258,r13		! source line 2258
	mov	"\0\0IF",r10
!   _temp_1021 = copiedSoFar + thisChunkSize		(int)
	load	[r14+-228],r1
	load	[r14+-212],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-144]
!   if _temp_1021 <= sizeInBytes then goto _Label_1020		(int)
	load	[r14+-144],r1
	load	[r14+16],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	ble	_Label_1020
!	jmp	_Label_1019
_Label_1019:
! THEN...
	mov	2259,r13		! source line 2259
	mov	"\0\0TN",r10
! ASSIGNMENT STATEMENT...
	mov	2259,r13		! source line 2259
	mov	"\0\0AS",r10
!   thisChunkSize = sizeInBytes - copiedSoFar		(int)
	load	[r14+16],r1
	load	[r14+-228],r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-212]
! END IF...
_Label_1020:
! IF STATEMENT...
	mov	2263,r13		! source line 2263
	mov	"\0\0IF",r10
!   if thisChunkSize > 0 then goto _Label_1023		(int)
	load	[r14+-212],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_1023
!	jmp	_Label_1022
_Label_1022:
! THEN...
	mov	2264,r13		! source line 2264
	mov	"\0\0TN",r10
! BREAK STATEMENT...
	mov	2264,r13		! source line 2264
	mov	"\0\0BR",r10
	jmp	_Label_1012
! END IF...
_Label_1023:
! IF STATEMENT...
	mov	2268,r13		! source line 2268
	mov	"\0\0IF",r10
!   if virtPage >= 0 then goto _Label_1027		(int)
	load	[r14+-200],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_1027
!	jmp	_Label_1028
_Label_1028:
!   if virtPage < 20 then goto _Label_1027		(int)
	load	[r14+-200],r1
	mov	20,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bl	_Label_1027
	jmp	_Label_1024
_Label_1027:
	mov	2268,r13		! source line 2268
	mov	"\0\0SE",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1031 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-136]
!   Data Move: _temp_1030 = *_temp_1031  (sizeInBytes=4)
	load	[r14+-136],r1
	load	[r1],r1
	store	r1,[r14+-140]
!   if intIsZero (_temp_1030) then goto _runtimeErrorNullPointer
	load	[r14+-140],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1032 = _temp_1030 + 32
	load	[r14+-140],r1
	add	r1,32,r1
	store	r1,[r14+-132]
!   Prepare Argument: offset=12  value=virtPage  sizeInBytes=4
	load	[r14+-200],r1
	store	r1,[r15+4]
!   Send message IsValid
	load	[r14+-132],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,36,r2
	call	r2
!   Retrieve Result: targetName=_temp_1029  sizeInBytes=1
	loadb	[r15],r1
	storeb	r1,[r14+-12]
!   _temp_1033 = _temp_1029 XOR 0		(bool)
	loadb	[r14+-12],r1
	mov	0,r2
	xor	r1,r2,r1
	storeb	r1,[r14+-11]
!   if _temp_1033 then goto _Label_1026 else goto _Label_1024
	loadb	[r14+-11],r1
	cmp	r1,0
	be	_Label_1024
	jmp	_Label_1026
_Label_1026:
	mov	2268,r13		! source line 2268
	mov	"\0\0SE",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1036 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-124]
!   Data Move: _temp_1035 = *_temp_1036  (sizeInBytes=4)
	load	[r14+-124],r1
	load	[r1],r1
	store	r1,[r14+-128]
!   if intIsZero (_temp_1035) then goto _runtimeErrorNullPointer
	load	[r14+-128],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1037 = _temp_1035 + 32
	load	[r14+-128],r1
	add	r1,32,r1
	store	r1,[r14+-120]
!   Prepare Argument: offset=12  value=virtPage  sizeInBytes=4
	load	[r14+-200],r1
	store	r1,[r15+4]
!   Send message IsWritable
	load	[r14+-120],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,32,r2
	call	r2
!   Retrieve Result: targetName=_temp_1034  sizeInBytes=1
	loadb	[r15],r1
	storeb	r1,[r14+-10]
!   _temp_1038 = _temp_1034 XOR 0		(bool)
	loadb	[r14+-10],r1
	mov	0,r2
	xor	r1,r2,r1
	storeb	r1,[r14+-9]
!   if _temp_1038 then goto _Label_1025 else goto _Label_1024
	loadb	[r14+-9],r1
	cmp	r1,0
	be	_Label_1024
	jmp	_Label_1025
_Label_1024:
! THEN...
	mov	2269,r13		! source line 2269
	mov	"\0\0TN",r10
! RETURN STATEMENT...
	mov	2269,r13		! source line 2269
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,248,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_1025:
! ASSIGNMENT STATEMENT...
	mov	2273,r13		! source line 2273
	mov	"\0\0AS",r10
!   nextPosInFile = nextPosInFile + thisChunkSize		(int)
	load	[r14+-220],r1
	load	[r14+-212],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-220]
! ASSIGNMENT STATEMENT...
	mov	2274,r13		! source line 2274
	mov	"\0\0AS",r10
!   copiedSoFar = copiedSoFar + thisChunkSize		(int)
	load	[r14+-228],r1
	load	[r14+-212],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-228]
! ASSIGNMENT STATEMENT...
	mov	2275,r13		! source line 2275
	mov	"\0\0AS",r10
!   virtPage = virtPage + 1		(int)
	load	[r14+-200],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-200]
! ASSIGNMENT STATEMENT...
	mov	2276,r13		! source line 2276
	mov	"\0\0AS",r10
!   offset = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-204]
! IF STATEMENT...
	mov	2279,r13		! source line 2279
	mov	"\0\0IF",r10
!   if copiedSoFar != sizeInBytes then goto _Label_1040		(int)
	load	[r14+-228],r1
	load	[r14+16],r2
	cmp	r1,r2
	bne	_Label_1040
!	jmp	_Label_1039
_Label_1039:
! THEN...
	mov	2280,r13		! source line 2280
	mov	"\0\0TN",r10
! BREAK STATEMENT...
	mov	2280,r13		! source line 2280
	mov	"\0\0BR",r10
	jmp	_Label_1012
! END IF...
_Label_1040:
! END WHILE...
	jmp	_Label_1010
_Label_1012:
! ASSIGNMENT STATEMENT...
	mov	2291,r13		! source line 2291
	mov	"\0\0AS",r10
!   virtAddr = buffer		(4 bytes)
	load	[r14+12],r1
	store	r1,[r14+-196]
! ASSIGNMENT STATEMENT...
	mov	2292,r13		! source line 2292
	mov	"\0\0AS",r10
!   virtPage = virtAddr div 8192		(int)
	load	[r14+-196],r1
	mov	8192,r2
	cmp	r2,0
	be	_runtimeErrorZeroDivide
	div	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-200]
! ASSIGNMENT STATEMENT...
	mov	2293,r13		! source line 2293
	mov	"\0\0AS",r10
!   offset = virtAddr rem 8192		(int)
	load	[r14+-196],r1
	mov	8192,r2
	cmp	r2,0
	be	_runtimeErrorZeroDivide
	rem	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-204]
! ASSIGNMENT STATEMENT...
	mov	2294,r13		! source line 2294
	mov	"\0\0AS",r10
!   copiedSoFar = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-228]
! ASSIGNMENT STATEMENT...
	mov	2295,r13		! source line 2295
	mov	"\0\0AS",r10
!   chunkSize = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-208]
! ASSIGNMENT STATEMENT...
	mov	2298,r13		! source line 2298
	mov	"\0\0AS",r10
!   if intIsZero (openFilePtr) then goto _runtimeErrorNullPointer
	load	[r14+-192],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1041 = openFilePtr + 16
	load	[r14+-192],r1
	add	r1,16,r1
	store	r1,[r14+-116]
!   Data Move: currentPos = *_temp_1041  (sizeInBytes=4)
	load	[r14+-116],r1
	load	[r1],r1
	store	r1,[r14+-216]
! ASSIGNMENT STATEMENT...
	mov	2299,r13		! source line 2299
	mov	"\0\0AS",r10
!   nextPosInFile = currentPos		(4 bytes)
	load	[r14+-216],r1
	store	r1,[r14+-220]
! WHILE STATEMENT...
	mov	2301,r13		! source line 2301
	mov	"\0\0WH",r10
_Label_1042:
!	jmp	_Label_1043
_Label_1043:
	mov	2301,r13		! source line 2301
	mov	"\0\0WB",r10
! ASSIGNMENT STATEMENT...
	mov	2304,r13		! source line 2304
	mov	"\0\0AS",r10
!   thisChunkSize = 8192 - offset		(int)
	mov	8192,r1
	load	[r14+-204],r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-212]
! ASSIGNMENT STATEMENT...
	mov	2305,r13		! source line 2305
	mov	"\0\0AS",r10
!   if intIsZero (openFilePtr) then goto _runtimeErrorNullPointer
	load	[r14+-192],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1046 = openFilePtr + 20
	load	[r14+-192],r1
	add	r1,20,r1
	store	r1,[r14+-108]
!   Data Move: _temp_1045 = *_temp_1046  (sizeInBytes=4)
	load	[r14+-108],r1
	load	[r1],r1
	store	r1,[r14+-112]
!   if intIsZero (_temp_1045) then goto _runtimeErrorNullPointer
	load	[r14+-112],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1047 = _temp_1045 + 24
	load	[r14+-112],r1
	add	r1,24,r1
	store	r1,[r14+-104]
!   Data Move: sizeOfFileInBytes = *_temp_1047  (sizeInBytes=4)
	load	[r14+-104],r1
	load	[r1],r1
	store	r1,[r14+-224]
! IF STATEMENT...
	mov	2307,r13		! source line 2307
	mov	"\0\0IF",r10
!   _temp_1050 = nextPosInFile + thisChunkSize		(int)
	load	[r14+-220],r1
	load	[r14+-212],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-100]
!   if _temp_1050 <= sizeOfFileInBytes then goto _Label_1049		(int)
	load	[r14+-100],r1
	load	[r14+-224],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	ble	_Label_1049
!	jmp	_Label_1048
_Label_1048:
! THEN...
	mov	2308,r13		! source line 2308
	mov	"\0\0TN",r10
! ASSIGNMENT STATEMENT...
	mov	2308,r13		! source line 2308
	mov	"\0\0AS",r10
!   thisChunkSize = sizeOfFileInBytes - nextPosInFile		(int)
	load	[r14+-224],r1
	load	[r14+-220],r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-212]
! END IF...
_Label_1049:
! IF STATEMENT...
	mov	2311,r13		! source line 2311
	mov	"\0\0IF",r10
!   _temp_1053 = copiedSoFar + thisChunkSize		(int)
	load	[r14+-228],r1
	load	[r14+-212],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-96]
!   if _temp_1053 <= sizeInBytes then goto _Label_1052		(int)
	load	[r14+-96],r1
	load	[r14+16],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	ble	_Label_1052
!	jmp	_Label_1051
_Label_1051:
! THEN...
	mov	2312,r13		! source line 2312
	mov	"\0\0TN",r10
! ASSIGNMENT STATEMENT...
	mov	2312,r13		! source line 2312
	mov	"\0\0AS",r10
!   thisChunkSize = sizeInBytes - copiedSoFar		(int)
	load	[r14+16],r1
	load	[r14+-228],r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-212]
! END IF...
_Label_1052:
! IF STATEMENT...
	mov	2316,r13		! source line 2316
	mov	"\0\0IF",r10
!   if thisChunkSize > 0 then goto _Label_1055		(int)
	load	[r14+-212],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_1055
!	jmp	_Label_1054
_Label_1054:
! THEN...
	mov	2317,r13		! source line 2317
	mov	"\0\0TN",r10
! BREAK STATEMENT...
	mov	2317,r13		! source line 2317
	mov	"\0\0BR",r10
	jmp	_Label_1044
! END IF...
_Label_1055:
! SEND STATEMENT...
	mov	2320,r13		! source line 2320
	mov	"\0\0SE",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1057 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-88]
!   Data Move: _temp_1056 = *_temp_1057  (sizeInBytes=4)
	load	[r14+-88],r1
	load	[r1],r1
	store	r1,[r14+-92]
!   if intIsZero (_temp_1056) then goto _runtimeErrorNullPointer
	load	[r14+-92],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1058 = _temp_1056 + 32
	load	[r14+-92],r1
	add	r1,32,r1
	store	r1,[r14+-84]
!   Prepare Argument: offset=12  value=virtPage  sizeInBytes=4
	load	[r14+-200],r1
	store	r1,[r15+4]
!   Send message SetDirty
	load	[r14+-84],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,40,r2
	call	r2
! SEND STATEMENT...
	mov	2321,r13		! source line 2321
	mov	"\0\0SE",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1060 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-76]
!   Data Move: _temp_1059 = *_temp_1060  (sizeInBytes=4)
	load	[r14+-76],r1
	load	[r1],r1
	store	r1,[r14+-80]
!   if intIsZero (_temp_1059) then goto _runtimeErrorNullPointer
	load	[r14+-80],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1061 = _temp_1059 + 32
	load	[r14+-80],r1
	add	r1,32,r1
	store	r1,[r14+-72]
!   Prepare Argument: offset=12  value=virtPage  sizeInBytes=4
	load	[r14+-200],r1
	store	r1,[r15+4]
!   Send message SetReferenced
	load	[r14+-72],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,44,r2
	call	r2
! ASSIGNMENT STATEMENT...
	mov	2322,r13		! source line 2322
	mov	"\0\0AS",r10
	mov	2322,r13		! source line 2322
	mov	"\0\0SE",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1064 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-60]
!   Data Move: _temp_1063 = *_temp_1064  (sizeInBytes=4)
	load	[r14+-60],r1
	load	[r1],r1
	store	r1,[r14+-64]
!   if intIsZero (_temp_1063) then goto _runtimeErrorNullPointer
	load	[r14+-64],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1065 = _temp_1063 + 32
	load	[r14+-64],r1
	add	r1,32,r1
	store	r1,[r14+-56]
!   Prepare Argument: offset=12  value=virtPage  sizeInBytes=4
	load	[r14+-200],r1
	store	r1,[r15+4]
!   Send message ExtractFrameAddr
	load	[r14+-56],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
!   Retrieve Result: targetName=_temp_1062  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-68]
!   destAddr = _temp_1062 + offset		(int)
	load	[r14+-68],r1
	load	[r14+-204],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-232]
! ASSIGNMENT STATEMENT...
	mov	2323,r13		! source line 2323
	mov	"\0\0AS",r10
	mov	2323,r13		! source line 2323
	mov	"\0\0SE",r10
!   _temp_1066 = &_P_Kernel_fileManager
	set	_P_Kernel_fileManager,r1
	store	r1,[r14+-52]
!   Prepare Argument: offset=12  value=openFilePtr  sizeInBytes=4
	load	[r14+-192],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=destAddr  sizeInBytes=4
	load	[r14+-232],r1
	store	r1,[r15+8]
!   Prepare Argument: offset=20  value=nextPosInFile  sizeInBytes=4
	load	[r14+-220],r1
	store	r1,[r15+12]
!   Prepare Argument: offset=24  value=thisChunkSize  sizeInBytes=4
	load	[r14+-212],r1
	store	r1,[r15+16]
!   Send message SynchRead
	load	[r14+-52],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,28,r2
	call	r2
!   Retrieve Result: targetName=synchReadStatus  sizeInBytes=1
	loadb	[r15],r1
	storeb	r1,[r14+-13]
! ASSIGNMENT STATEMENT...
	mov	2326,r13		! source line 2326
	mov	"\0\0AS",r10
!   nextPosInFile = nextPosInFile + thisChunkSize		(int)
	load	[r14+-220],r1
	load	[r14+-212],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-220]
! ASSIGNMENT STATEMENT...
	mov	2327,r13		! source line 2327
	mov	"\0\0AS",r10
!   copiedSoFar = copiedSoFar + thisChunkSize		(int)
	load	[r14+-228],r1
	load	[r14+-212],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-228]
! ASSIGNMENT STATEMENT...
	mov	2328,r13		! source line 2328
	mov	"\0\0AS",r10
!   virtPage = virtPage + 1		(int)
	load	[r14+-200],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-200]
! ASSIGNMENT STATEMENT...
	mov	2329,r13		! source line 2329
	mov	"\0\0AS",r10
!   offset = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-204]
! IF STATEMENT...
	mov	2332,r13		! source line 2332
	mov	"\0\0IF",r10
!   if copiedSoFar != sizeInBytes then goto _Label_1068		(int)
	load	[r14+-228],r1
	load	[r14+16],r2
	cmp	r1,r2
	bne	_Label_1068
!	jmp	_Label_1067
_Label_1067:
! THEN...
	mov	2333,r13		! source line 2333
	mov	"\0\0TN",r10
! ASSIGNMENT STATEMENT...
	mov	2333,r13		! source line 2333
	mov	"\0\0AS",r10
!   if intIsZero (openFilePtr) then goto _runtimeErrorNullPointer
	load	[r14+-192],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1069 = openFilePtr + 16
	load	[r14+-192],r1
	add	r1,16,r1
	store	r1,[r14+-48]
!   if intIsZero (openFilePtr) then goto _runtimeErrorNullPointer
	load	[r14+-192],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1072 = openFilePtr + 16
	load	[r14+-192],r1
	add	r1,16,r1
	store	r1,[r14+-36]
!   Data Move: _temp_1071 = *_temp_1072  (sizeInBytes=4)
	load	[r14+-36],r1
	load	[r1],r1
	store	r1,[r14+-40]
!   _temp_1070 = _temp_1071 + copiedSoFar		(int)
	load	[r14+-40],r1
	load	[r14+-228],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-44]
!   Data Move: *_temp_1069 = _temp_1070  (sizeInBytes=4)
	load	[r14+-44],r1
	load	[r14+-48],r2
	store	r1,[r2]
! RETURN STATEMENT...
	mov	2334,r13		! source line 2334
	mov	"\0\0RE",r10
!   ReturnResult: copiedSoFar  (sizeInBytes=4)
	load	[r14+-228],r1
	store	r1,[r14+8]
	add	r15,248,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_1068:
! END WHILE...
	jmp	_Label_1042
_Label_1044:
! ASSIGNMENT STATEMENT...
	mov	2339,r13		! source line 2339
	mov	"\0\0AS",r10
!   if intIsZero (openFilePtr) then goto _runtimeErrorNullPointer
	load	[r14+-192],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1073 = openFilePtr + 16
	load	[r14+-192],r1
	add	r1,16,r1
	store	r1,[r14+-32]
!   if intIsZero (openFilePtr) then goto _runtimeErrorNullPointer
	load	[r14+-192],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1076 = openFilePtr + 16
	load	[r14+-192],r1
	add	r1,16,r1
	store	r1,[r14+-20]
!   Data Move: _temp_1075 = *_temp_1076  (sizeInBytes=4)
	load	[r14+-20],r1
	load	[r1],r1
	store	r1,[r14+-24]
!   _temp_1074 = _temp_1075 + copiedSoFar		(int)
	load	[r14+-24],r1
	load	[r14+-228],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-28]
!   Data Move: *_temp_1073 = _temp_1074  (sizeInBytes=4)
	load	[r14+-28],r1
	load	[r14+-32],r2
	store	r1,[r2]
! RETURN STATEMENT...
	mov	2340,r13		! source line 2340
	mov	"\0\0RE",r10
!   ReturnResult: copiedSoFar  (sizeInBytes=4)
	load	[r14+-228],r1
	store	r1,[r14+8]
	add	r15,248,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__P_Kernel_Handle_Sys_Read:
	.word	_sourceFileName
	.word	_Label_1077
	.word	12		! total size of parameters
	.word	244		! frame size = 244
	.word	_Label_1078
	.word	8
	.word	4
	.word	_Label_1079
	.word	12
	.word	4
	.word	_Label_1080
	.word	16
	.word	4
	.word	_Label_1081
	.word	-20
	.word	4
	.word	_Label_1082
	.word	-24
	.word	4
	.word	_Label_1083
	.word	-28
	.word	4
	.word	_Label_1084
	.word	-32
	.word	4
	.word	_Label_1085
	.word	-36
	.word	4
	.word	_Label_1086
	.word	-40
	.word	4
	.word	_Label_1087
	.word	-44
	.word	4
	.word	_Label_1088
	.word	-48
	.word	4
	.word	_Label_1089
	.word	-52
	.word	4
	.word	_Label_1090
	.word	-56
	.word	4
	.word	_Label_1091
	.word	-60
	.word	4
	.word	_Label_1092
	.word	-64
	.word	4
	.word	_Label_1093
	.word	-68
	.word	4
	.word	_Label_1094
	.word	-72
	.word	4
	.word	_Label_1095
	.word	-76
	.word	4
	.word	_Label_1096
	.word	-80
	.word	4
	.word	_Label_1097
	.word	-84
	.word	4
	.word	_Label_1098
	.word	-88
	.word	4
	.word	_Label_1099
	.word	-92
	.word	4
	.word	_Label_1100
	.word	-96
	.word	4
	.word	_Label_1101
	.word	-100
	.word	4
	.word	_Label_1102
	.word	-104
	.word	4
	.word	_Label_1103
	.word	-108
	.word	4
	.word	_Label_1104
	.word	-112
	.word	4
	.word	_Label_1105
	.word	-116
	.word	4
	.word	_Label_1106
	.word	-9
	.word	1
	.word	_Label_1107
	.word	-120
	.word	4
	.word	_Label_1108
	.word	-124
	.word	4
	.word	_Label_1109
	.word	-128
	.word	4
	.word	_Label_1110
	.word	-10
	.word	1
	.word	_Label_1111
	.word	-11
	.word	1
	.word	_Label_1112
	.word	-132
	.word	4
	.word	_Label_1113
	.word	-136
	.word	4
	.word	_Label_1114
	.word	-140
	.word	4
	.word	_Label_1115
	.word	-12
	.word	1
	.word	_Label_1116
	.word	-144
	.word	4
	.word	_Label_1117
	.word	-148
	.word	4
	.word	_Label_1118
	.word	-152
	.word	4
	.word	_Label_1119
	.word	-156
	.word	4
	.word	_Label_1120
	.word	-160
	.word	4
	.word	_Label_1121
	.word	-164
	.word	4
	.word	_Label_1122
	.word	-168
	.word	4
	.word	_Label_1123
	.word	-172
	.word	4
	.word	_Label_1124
	.word	-176
	.word	4
	.word	_Label_1125
	.word	-180
	.word	4
	.word	_Label_1126
	.word	-184
	.word	4
	.word	_Label_1127
	.word	-188
	.word	4
	.word	_Label_1128
	.word	-192
	.word	4
	.word	_Label_1129
	.word	-196
	.word	4
	.word	_Label_1130
	.word	-200
	.word	4
	.word	_Label_1131
	.word	-204
	.word	4
	.word	_Label_1132
	.word	-208
	.word	4
	.word	_Label_1133
	.word	-212
	.word	4
	.word	_Label_1134
	.word	-216
	.word	4
	.word	_Label_1135
	.word	-220
	.word	4
	.word	_Label_1136
	.word	-224
	.word	4
	.word	_Label_1137
	.word	-228
	.word	4
	.word	_Label_1138
	.word	-232
	.word	4
	.word	_Label_1139
	.word	-13
	.word	1
	.word	0
_Label_1077:
	.ascii	"Handle_Sys_Read\0"
	.align
_Label_1078:
	.byte	'I'
	.ascii	"fileDesc\0"
	.align
_Label_1079:
	.byte	'P'
	.ascii	"buffer\0"
	.align
_Label_1080:
	.byte	'I'
	.ascii	"sizeInBytes\0"
	.align
_Label_1081:
	.byte	'?'
	.ascii	"_temp_1076\0"
	.align
_Label_1082:
	.byte	'?'
	.ascii	"_temp_1075\0"
	.align
_Label_1083:
	.byte	'?'
	.ascii	"_temp_1074\0"
	.align
_Label_1084:
	.byte	'?'
	.ascii	"_temp_1073\0"
	.align
_Label_1085:
	.byte	'?'
	.ascii	"_temp_1072\0"
	.align
_Label_1086:
	.byte	'?'
	.ascii	"_temp_1071\0"
	.align
_Label_1087:
	.byte	'?'
	.ascii	"_temp_1070\0"
	.align
_Label_1088:
	.byte	'?'
	.ascii	"_temp_1069\0"
	.align
_Label_1089:
	.byte	'?'
	.ascii	"_temp_1066\0"
	.align
_Label_1090:
	.byte	'?'
	.ascii	"_temp_1065\0"
	.align
_Label_1091:
	.byte	'?'
	.ascii	"_temp_1064\0"
	.align
_Label_1092:
	.byte	'?'
	.ascii	"_temp_1063\0"
	.align
_Label_1093:
	.byte	'?'
	.ascii	"_temp_1062\0"
	.align
_Label_1094:
	.byte	'?'
	.ascii	"_temp_1061\0"
	.align
_Label_1095:
	.byte	'?'
	.ascii	"_temp_1060\0"
	.align
_Label_1096:
	.byte	'?'
	.ascii	"_temp_1059\0"
	.align
_Label_1097:
	.byte	'?'
	.ascii	"_temp_1058\0"
	.align
_Label_1098:
	.byte	'?'
	.ascii	"_temp_1057\0"
	.align
_Label_1099:
	.byte	'?'
	.ascii	"_temp_1056\0"
	.align
_Label_1100:
	.byte	'?'
	.ascii	"_temp_1053\0"
	.align
_Label_1101:
	.byte	'?'
	.ascii	"_temp_1050\0"
	.align
_Label_1102:
	.byte	'?'
	.ascii	"_temp_1047\0"
	.align
_Label_1103:
	.byte	'?'
	.ascii	"_temp_1046\0"
	.align
_Label_1104:
	.byte	'?'
	.ascii	"_temp_1045\0"
	.align
_Label_1105:
	.byte	'?'
	.ascii	"_temp_1041\0"
	.align
_Label_1106:
	.byte	'C'
	.ascii	"_temp_1038\0"
	.align
_Label_1107:
	.byte	'?'
	.ascii	"_temp_1037\0"
	.align
_Label_1108:
	.byte	'?'
	.ascii	"_temp_1036\0"
	.align
_Label_1109:
	.byte	'?'
	.ascii	"_temp_1035\0"
	.align
_Label_1110:
	.byte	'C'
	.ascii	"_temp_1034\0"
	.align
_Label_1111:
	.byte	'C'
	.ascii	"_temp_1033\0"
	.align
_Label_1112:
	.byte	'?'
	.ascii	"_temp_1032\0"
	.align
_Label_1113:
	.byte	'?'
	.ascii	"_temp_1031\0"
	.align
_Label_1114:
	.byte	'?'
	.ascii	"_temp_1030\0"
	.align
_Label_1115:
	.byte	'C'
	.ascii	"_temp_1029\0"
	.align
_Label_1116:
	.byte	'?'
	.ascii	"_temp_1021\0"
	.align
_Label_1117:
	.byte	'?'
	.ascii	"_temp_1018\0"
	.align
_Label_1118:
	.byte	'?'
	.ascii	"_temp_1015\0"
	.align
_Label_1119:
	.byte	'?'
	.ascii	"_temp_1014\0"
	.align
_Label_1120:
	.byte	'?'
	.ascii	"_temp_1013\0"
	.align
_Label_1121:
	.byte	'?'
	.ascii	"_temp_1009\0"
	.align
_Label_1122:
	.byte	'?'
	.ascii	"_temp_1008\0"
	.align
_Label_1123:
	.byte	'?'
	.ascii	"_temp_1007\0"
	.align
_Label_1124:
	.byte	'?'
	.ascii	"_temp_999\0"
	.align
_Label_1125:
	.byte	'?'
	.ascii	"_temp_998\0"
	.align
_Label_1126:
	.byte	'?'
	.ascii	"_temp_997\0"
	.align
_Label_1127:
	.byte	'?'
	.ascii	"_temp_996\0"
	.align
_Label_1128:
	.byte	'P'
	.ascii	"openFilePtr\0"
	.align
_Label_1129:
	.byte	'I'
	.ascii	"virtAddr\0"
	.align
_Label_1130:
	.byte	'I'
	.ascii	"virtPage\0"
	.align
_Label_1131:
	.byte	'I'
	.ascii	"offset\0"
	.align
_Label_1132:
	.byte	'I'
	.ascii	"chunkSize\0"
	.align
_Label_1133:
	.byte	'I'
	.ascii	"thisChunkSize\0"
	.align
_Label_1134:
	.byte	'I'
	.ascii	"currentPos\0"
	.align
_Label_1135:
	.byte	'I'
	.ascii	"nextPosInFile\0"
	.align
_Label_1136:
	.byte	'I'
	.ascii	"sizeOfFileInBytes\0"
	.align
_Label_1137:
	.byte	'I'
	.ascii	"copiedSoFar\0"
	.align
_Label_1138:
	.byte	'I'
	.ascii	"destAddr\0"
	.align
_Label_1139:
	.byte	'B'
	.ascii	"synchReadStatus\0"
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
_Label_3828:
	push	r0
	sub	r1,1,r1
	bne	_Label_3828
	mov	2346,r13		! source line 2346
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! IF STATEMENT...
	mov	2363,r13		! source line 2363
	mov	"\0\0IF",r10
!   if fileDesc < 10 then goto _Label_1142		(int)
	load	[r14+8],r1
	mov	10,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bl	_Label_1142
	jmp	_Label_1140
_Label_1142:
!   if fileDesc >= 0 then goto _Label_1141		(int)
	load	[r14+8],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_1141
!	jmp	_Label_1140
_Label_1140:
! THEN...
	mov	2364,r13		! source line 2364
	mov	"\0\0TN",r10
! RETURN STATEMENT...
	mov	2364,r13		! source line 2364
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,212,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_1141:
! ASSIGNMENT STATEMENT...
	mov	2368,r13		! source line 2368
	mov	"\0\0AS",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1144 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-148]
!   Data Move: _temp_1143 = *_temp_1144  (sizeInBytes=4)
	load	[r14+-148],r1
	load	[r1],r1
	store	r1,[r14+-152]
!   if intIsZero (_temp_1143) then goto _runtimeErrorNullPointer
	load	[r14+-152],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1145 = _temp_1143 + 124
	load	[r14+-152],r1
	add	r1,124,r1
	store	r1,[r14+-144]
!   Move address of _temp_1145 [fileDesc ] into _temp_1146
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
!   Data Move: openFilePtr = *_temp_1146  (sizeInBytes=4)
	load	[r14+-140],r1
	load	[r1],r1
	store	r1,[r14+-156]
! IF STATEMENT...
	mov	2370,r13		! source line 2370
	mov	"\0\0IF",r10
!   if intIsZero (openFilePtr) then goto _Label_1147
	load	[r14+-156],r1
	cmp	r1,r0
	be	_Label_1147
	jmp	_Label_1148
_Label_1147:
! THEN...
	mov	2371,r13		! source line 2371
	mov	"\0\0TN",r10
! RETURN STATEMENT...
	mov	2371,r13		! source line 2371
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,212,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_1148:
! IF STATEMENT...
	mov	2375,r13		! source line 2375
	mov	"\0\0IF",r10
!   if sizeInBytes >= 0 then goto _Label_1150		(int)
	load	[r14+16],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_1150
!	jmp	_Label_1149
_Label_1149:
! THEN...
	mov	2376,r13		! source line 2376
	mov	"\0\0TN",r10
! RETURN STATEMENT...
	mov	2376,r13		! source line 2376
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,212,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_1150:
! ASSIGNMENT STATEMENT...
	mov	2381,r13		! source line 2381
	mov	"\0\0AS",r10
!   virtAddr = buffer		(4 bytes)
	load	[r14+12],r1
	store	r1,[r14+-160]
! ASSIGNMENT STATEMENT...
	mov	2382,r13		! source line 2382
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
	mov	2383,r13		! source line 2383
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
	mov	2384,r13		! source line 2384
	mov	"\0\0AS",r10
!   copiedSoFar = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-192]
! ASSIGNMENT STATEMENT...
	mov	2385,r13		! source line 2385
	mov	"\0\0AS",r10
!   chunkSize = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-172]
! ASSIGNMENT STATEMENT...
	mov	2388,r13		! source line 2388
	mov	"\0\0AS",r10
!   if intIsZero (openFilePtr) then goto _runtimeErrorNullPointer
	load	[r14+-156],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1151 = openFilePtr + 16
	load	[r14+-156],r1
	add	r1,16,r1
	store	r1,[r14+-136]
!   Data Move: currentPos = *_temp_1151  (sizeInBytes=4)
	load	[r14+-136],r1
	load	[r1],r1
	store	r1,[r14+-180]
! ASSIGNMENT STATEMENT...
	mov	2389,r13		! source line 2389
	mov	"\0\0AS",r10
!   nextPosInFile = currentPos		(4 bytes)
	load	[r14+-180],r1
	store	r1,[r14+-184]
! WHILE STATEMENT...
	mov	2394,r13		! source line 2394
	mov	"\0\0WH",r10
_Label_1152:
!	jmp	_Label_1153
_Label_1153:
	mov	2394,r13		! source line 2394
	mov	"\0\0WB",r10
! ASSIGNMENT STATEMENT...
	mov	2397,r13		! source line 2397
	mov	"\0\0AS",r10
!   thisChunkSize = 8192 - offset		(int)
	mov	8192,r1
	load	[r14+-168],r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-176]
! ASSIGNMENT STATEMENT...
	mov	2398,r13		! source line 2398
	mov	"\0\0AS",r10
!   if intIsZero (openFilePtr) then goto _runtimeErrorNullPointer
	load	[r14+-156],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1156 = openFilePtr + 20
	load	[r14+-156],r1
	add	r1,20,r1
	store	r1,[r14+-128]
!   Data Move: _temp_1155 = *_temp_1156  (sizeInBytes=4)
	load	[r14+-128],r1
	load	[r1],r1
	store	r1,[r14+-132]
!   if intIsZero (_temp_1155) then goto _runtimeErrorNullPointer
	load	[r14+-132],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1157 = _temp_1155 + 24
	load	[r14+-132],r1
	add	r1,24,r1
	store	r1,[r14+-124]
!   Data Move: sizeOfFileInBytes = *_temp_1157  (sizeInBytes=4)
	load	[r14+-124],r1
	load	[r1],r1
	store	r1,[r14+-188]
! IF STATEMENT...
	mov	2400,r13		! source line 2400
	mov	"\0\0IF",r10
!   _temp_1160 = nextPosInFile + thisChunkSize		(int)
	load	[r14+-184],r1
	load	[r14+-176],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-120]
!   if _temp_1160 <= sizeOfFileInBytes then goto _Label_1159		(int)
	load	[r14+-120],r1
	load	[r14+-188],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	ble	_Label_1159
!	jmp	_Label_1158
_Label_1158:
! THEN...
	mov	2401,r13		! source line 2401
	mov	"\0\0TN",r10
! ASSIGNMENT STATEMENT...
	mov	2401,r13		! source line 2401
	mov	"\0\0AS",r10
!   thisChunkSize = sizeOfFileInBytes - nextPosInFile		(int)
	load	[r14+-188],r1
	load	[r14+-184],r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-176]
! END IF...
_Label_1159:
! IF STATEMENT...
	mov	2404,r13		! source line 2404
	mov	"\0\0IF",r10
!   _temp_1163 = copiedSoFar + thisChunkSize		(int)
	load	[r14+-192],r1
	load	[r14+-176],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-116]
!   if _temp_1163 <= sizeInBytes then goto _Label_1162		(int)
	load	[r14+-116],r1
	load	[r14+16],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	ble	_Label_1162
!	jmp	_Label_1161
_Label_1161:
! THEN...
	mov	2405,r13		! source line 2405
	mov	"\0\0TN",r10
! ASSIGNMENT STATEMENT...
	mov	2405,r13		! source line 2405
	mov	"\0\0AS",r10
!   thisChunkSize = sizeInBytes - copiedSoFar		(int)
	load	[r14+16],r1
	load	[r14+-192],r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-176]
! END IF...
_Label_1162:
! IF STATEMENT...
	mov	2409,r13		! source line 2409
	mov	"\0\0IF",r10
!   if thisChunkSize > 0 then goto _Label_1165		(int)
	load	[r14+-176],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_1165
!	jmp	_Label_1164
_Label_1164:
! THEN...
	mov	2410,r13		! source line 2410
	mov	"\0\0TN",r10
! BREAK STATEMENT...
	mov	2410,r13		! source line 2410
	mov	"\0\0BR",r10
	jmp	_Label_1154
! END IF...
_Label_1165:
! IF STATEMENT...
	mov	2414,r13		! source line 2414
	mov	"\0\0IF",r10
!   if virtPage >= 0 then goto _Label_1168		(int)
	load	[r14+-164],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_1168
!	jmp	_Label_1169
_Label_1169:
!   if virtPage < 20 then goto _Label_1168		(int)
	load	[r14+-164],r1
	mov	20,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bl	_Label_1168
	jmp	_Label_1166
_Label_1168:
	mov	2414,r13		! source line 2414
	mov	"\0\0SE",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1172 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-108]
!   Data Move: _temp_1171 = *_temp_1172  (sizeInBytes=4)
	load	[r14+-108],r1
	load	[r1],r1
	store	r1,[r14+-112]
!   if intIsZero (_temp_1171) then goto _runtimeErrorNullPointer
	load	[r14+-112],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1173 = _temp_1171 + 32
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
!   Retrieve Result: targetName=_temp_1170  sizeInBytes=1
	loadb	[r15],r1
	storeb	r1,[r14+-10]
!   _temp_1174 = _temp_1170 XOR 0		(bool)
	loadb	[r14+-10],r1
	mov	0,r2
	xor	r1,r2,r1
	storeb	r1,[r14+-9]
!   if _temp_1174 then goto _Label_1167 else goto _Label_1166
	loadb	[r14+-9],r1
	cmp	r1,0
	be	_Label_1166
	jmp	_Label_1167
_Label_1166:
! THEN...
	mov	2417,r13		! source line 2417
	mov	"\0\0TN",r10
! RETURN STATEMENT...
	mov	2417,r13		! source line 2417
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,212,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_1167:
! ASSIGNMENT STATEMENT...
	mov	2421,r13		! source line 2421
	mov	"\0\0AS",r10
!   nextPosInFile = nextPosInFile + thisChunkSize		(int)
	load	[r14+-184],r1
	load	[r14+-176],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-184]
! ASSIGNMENT STATEMENT...
	mov	2422,r13		! source line 2422
	mov	"\0\0AS",r10
!   copiedSoFar = copiedSoFar + thisChunkSize		(int)
	load	[r14+-192],r1
	load	[r14+-176],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-192]
! ASSIGNMENT STATEMENT...
	mov	2423,r13		! source line 2423
	mov	"\0\0AS",r10
!   virtPage = virtPage + 1		(int)
	load	[r14+-164],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-164]
! ASSIGNMENT STATEMENT...
	mov	2424,r13		! source line 2424
	mov	"\0\0AS",r10
!   offset = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-168]
! IF STATEMENT...
	mov	2427,r13		! source line 2427
	mov	"\0\0IF",r10
!   if copiedSoFar != sizeInBytes then goto _Label_1176		(int)
	load	[r14+-192],r1
	load	[r14+16],r2
	cmp	r1,r2
	bne	_Label_1176
!	jmp	_Label_1175
_Label_1175:
! THEN...
	mov	2428,r13		! source line 2428
	mov	"\0\0TN",r10
! BREAK STATEMENT...
	mov	2428,r13		! source line 2428
	mov	"\0\0BR",r10
	jmp	_Label_1154
! END IF...
_Label_1176:
! END WHILE...
	jmp	_Label_1152
_Label_1154:
! ASSIGNMENT STATEMENT...
	mov	2439,r13		! source line 2439
	mov	"\0\0AS",r10
!   virtAddr = buffer		(4 bytes)
	load	[r14+12],r1
	store	r1,[r14+-160]
! ASSIGNMENT STATEMENT...
	mov	2440,r13		! source line 2440
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
	mov	2441,r13		! source line 2441
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
	mov	2442,r13		! source line 2442
	mov	"\0\0AS",r10
!   copiedSoFar = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-192]
! ASSIGNMENT STATEMENT...
	mov	2443,r13		! source line 2443
	mov	"\0\0AS",r10
!   chunkSize = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-172]
! ASSIGNMENT STATEMENT...
	mov	2446,r13		! source line 2446
	mov	"\0\0AS",r10
!   if intIsZero (openFilePtr) then goto _runtimeErrorNullPointer
	load	[r14+-156],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1177 = openFilePtr + 16
	load	[r14+-156],r1
	add	r1,16,r1
	store	r1,[r14+-100]
!   Data Move: currentPos = *_temp_1177  (sizeInBytes=4)
	load	[r14+-100],r1
	load	[r1],r1
	store	r1,[r14+-180]
! ASSIGNMENT STATEMENT...
	mov	2447,r13		! source line 2447
	mov	"\0\0AS",r10
!   nextPosInFile = currentPos		(4 bytes)
	load	[r14+-180],r1
	store	r1,[r14+-184]
! WHILE STATEMENT...
	mov	2449,r13		! source line 2449
	mov	"\0\0WH",r10
_Label_1178:
!	jmp	_Label_1179
_Label_1179:
	mov	2449,r13		! source line 2449
	mov	"\0\0WB",r10
! ASSIGNMENT STATEMENT...
	mov	2452,r13		! source line 2452
	mov	"\0\0AS",r10
!   thisChunkSize = 8192 - offset		(int)
	mov	8192,r1
	load	[r14+-168],r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-176]
! ASSIGNMENT STATEMENT...
	mov	2453,r13		! source line 2453
	mov	"\0\0AS",r10
!   if intIsZero (openFilePtr) then goto _runtimeErrorNullPointer
	load	[r14+-156],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1182 = openFilePtr + 20
	load	[r14+-156],r1
	add	r1,20,r1
	store	r1,[r14+-92]
!   Data Move: _temp_1181 = *_temp_1182  (sizeInBytes=4)
	load	[r14+-92],r1
	load	[r1],r1
	store	r1,[r14+-96]
!   if intIsZero (_temp_1181) then goto _runtimeErrorNullPointer
	load	[r14+-96],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1183 = _temp_1181 + 24
	load	[r14+-96],r1
	add	r1,24,r1
	store	r1,[r14+-88]
!   Data Move: sizeOfFileInBytes = *_temp_1183  (sizeInBytes=4)
	load	[r14+-88],r1
	load	[r1],r1
	store	r1,[r14+-188]
! IF STATEMENT...
	mov	2455,r13		! source line 2455
	mov	"\0\0IF",r10
!   _temp_1186 = nextPosInFile + thisChunkSize		(int)
	load	[r14+-184],r1
	load	[r14+-176],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-84]
!   if _temp_1186 <= sizeOfFileInBytes then goto _Label_1185		(int)
	load	[r14+-84],r1
	load	[r14+-188],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	ble	_Label_1185
!	jmp	_Label_1184
_Label_1184:
! THEN...
	mov	2456,r13		! source line 2456
	mov	"\0\0TN",r10
! ASSIGNMENT STATEMENT...
	mov	2456,r13		! source line 2456
	mov	"\0\0AS",r10
!   thisChunkSize = sizeOfFileInBytes - nextPosInFile		(int)
	load	[r14+-188],r1
	load	[r14+-184],r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-176]
! END IF...
_Label_1185:
! IF STATEMENT...
	mov	2459,r13		! source line 2459
	mov	"\0\0IF",r10
!   _temp_1189 = copiedSoFar + thisChunkSize		(int)
	load	[r14+-192],r1
	load	[r14+-176],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-80]
!   if _temp_1189 <= sizeInBytes then goto _Label_1188		(int)
	load	[r14+-80],r1
	load	[r14+16],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	ble	_Label_1188
!	jmp	_Label_1187
_Label_1187:
! THEN...
	mov	2460,r13		! source line 2460
	mov	"\0\0TN",r10
! ASSIGNMENT STATEMENT...
	mov	2460,r13		! source line 2460
	mov	"\0\0AS",r10
!   thisChunkSize = sizeInBytes - copiedSoFar		(int)
	load	[r14+16],r1
	load	[r14+-192],r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-176]
! END IF...
_Label_1188:
! IF STATEMENT...
	mov	2464,r13		! source line 2464
	mov	"\0\0IF",r10
!   if thisChunkSize > 0 then goto _Label_1191		(int)
	load	[r14+-176],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_1191
!	jmp	_Label_1190
_Label_1190:
! THEN...
	mov	2465,r13		! source line 2465
	mov	"\0\0TN",r10
! BREAK STATEMENT...
	mov	2465,r13		! source line 2465
	mov	"\0\0BR",r10
	jmp	_Label_1180
! END IF...
_Label_1191:
! SEND STATEMENT...
	mov	2469,r13		! source line 2469
	mov	"\0\0SE",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1193 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-72]
!   Data Move: _temp_1192 = *_temp_1193  (sizeInBytes=4)
	load	[r14+-72],r1
	load	[r1],r1
	store	r1,[r14+-76]
!   if intIsZero (_temp_1192) then goto _runtimeErrorNullPointer
	load	[r14+-76],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1194 = _temp_1192 + 32
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
	mov	2470,r13		! source line 2470
	mov	"\0\0AS",r10
	mov	2470,r13		! source line 2470
	mov	"\0\0SE",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1197 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-56]
!   Data Move: _temp_1196 = *_temp_1197  (sizeInBytes=4)
	load	[r14+-56],r1
	load	[r1],r1
	store	r1,[r14+-60]
!   if intIsZero (_temp_1196) then goto _runtimeErrorNullPointer
	load	[r14+-60],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1198 = _temp_1196 + 32
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
!   Retrieve Result: targetName=_temp_1195  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-64]
!   destAddr = _temp_1195 + offset		(int)
	load	[r14+-64],r1
	load	[r14+-168],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-196]
! ASSIGNMENT STATEMENT...
	mov	2471,r13		! source line 2471
	mov	"\0\0AS",r10
	mov	2471,r13		! source line 2471
	mov	"\0\0SE",r10
!   _temp_1199 = &_P_Kernel_fileManager
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
	mov	2474,r13		! source line 2474
	mov	"\0\0AS",r10
!   nextPosInFile = nextPosInFile + thisChunkSize		(int)
	load	[r14+-184],r1
	load	[r14+-176],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-184]
! ASSIGNMENT STATEMENT...
	mov	2475,r13		! source line 2475
	mov	"\0\0AS",r10
!   copiedSoFar = copiedSoFar + thisChunkSize		(int)
	load	[r14+-192],r1
	load	[r14+-176],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-192]
! ASSIGNMENT STATEMENT...
	mov	2476,r13		! source line 2476
	mov	"\0\0AS",r10
!   virtPage = virtPage + 1		(int)
	load	[r14+-164],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-164]
! ASSIGNMENT STATEMENT...
	mov	2477,r13		! source line 2477
	mov	"\0\0AS",r10
!   offset = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-168]
! IF STATEMENT...
	mov	2480,r13		! source line 2480
	mov	"\0\0IF",r10
!   if copiedSoFar != sizeInBytes then goto _Label_1201		(int)
	load	[r14+-192],r1
	load	[r14+16],r2
	cmp	r1,r2
	bne	_Label_1201
!	jmp	_Label_1200
_Label_1200:
! THEN...
	mov	2481,r13		! source line 2481
	mov	"\0\0TN",r10
! ASSIGNMENT STATEMENT...
	mov	2481,r13		! source line 2481
	mov	"\0\0AS",r10
!   if intIsZero (openFilePtr) then goto _runtimeErrorNullPointer
	load	[r14+-156],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1202 = openFilePtr + 16
	load	[r14+-156],r1
	add	r1,16,r1
	store	r1,[r14+-44]
!   if intIsZero (openFilePtr) then goto _runtimeErrorNullPointer
	load	[r14+-156],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1205 = openFilePtr + 16
	load	[r14+-156],r1
	add	r1,16,r1
	store	r1,[r14+-32]
!   Data Move: _temp_1204 = *_temp_1205  (sizeInBytes=4)
	load	[r14+-32],r1
	load	[r1],r1
	store	r1,[r14+-36]
!   _temp_1203 = _temp_1204 + copiedSoFar		(int)
	load	[r14+-36],r1
	load	[r14+-192],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-40]
!   Data Move: *_temp_1202 = _temp_1203  (sizeInBytes=4)
	load	[r14+-40],r1
	load	[r14+-44],r2
	store	r1,[r2]
! RETURN STATEMENT...
	mov	2482,r13		! source line 2482
	mov	"\0\0RE",r10
!   ReturnResult: copiedSoFar  (sizeInBytes=4)
	load	[r14+-192],r1
	store	r1,[r14+8]
	add	r15,212,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_1201:
! END WHILE...
	jmp	_Label_1178
_Label_1180:
! ASSIGNMENT STATEMENT...
	mov	2487,r13		! source line 2487
	mov	"\0\0AS",r10
!   if intIsZero (openFilePtr) then goto _runtimeErrorNullPointer
	load	[r14+-156],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1206 = openFilePtr + 16
	load	[r14+-156],r1
	add	r1,16,r1
	store	r1,[r14+-28]
!   if intIsZero (openFilePtr) then goto _runtimeErrorNullPointer
	load	[r14+-156],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1209 = openFilePtr + 16
	load	[r14+-156],r1
	add	r1,16,r1
	store	r1,[r14+-16]
!   Data Move: _temp_1208 = *_temp_1209  (sizeInBytes=4)
	load	[r14+-16],r1
	load	[r1],r1
	store	r1,[r14+-20]
!   _temp_1207 = _temp_1208 + copiedSoFar		(int)
	load	[r14+-20],r1
	load	[r14+-192],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-24]
!   Data Move: *_temp_1206 = _temp_1207  (sizeInBytes=4)
	load	[r14+-24],r1
	load	[r14+-28],r2
	store	r1,[r2]
! RETURN STATEMENT...
	mov	2488,r13		! source line 2488
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
	.word	_Label_1210
	.word	12		! total size of parameters
	.word	208		! frame size = 208
	.word	_Label_1211
	.word	8
	.word	4
	.word	_Label_1212
	.word	12
	.word	4
	.word	_Label_1213
	.word	16
	.word	4
	.word	_Label_1214
	.word	-16
	.word	4
	.word	_Label_1215
	.word	-20
	.word	4
	.word	_Label_1216
	.word	-24
	.word	4
	.word	_Label_1217
	.word	-28
	.word	4
	.word	_Label_1218
	.word	-32
	.word	4
	.word	_Label_1219
	.word	-36
	.word	4
	.word	_Label_1220
	.word	-40
	.word	4
	.word	_Label_1221
	.word	-44
	.word	4
	.word	_Label_1222
	.word	-48
	.word	4
	.word	_Label_1223
	.word	-52
	.word	4
	.word	_Label_1224
	.word	-56
	.word	4
	.word	_Label_1225
	.word	-60
	.word	4
	.word	_Label_1226
	.word	-64
	.word	4
	.word	_Label_1227
	.word	-68
	.word	4
	.word	_Label_1228
	.word	-72
	.word	4
	.word	_Label_1229
	.word	-76
	.word	4
	.word	_Label_1230
	.word	-80
	.word	4
	.word	_Label_1231
	.word	-84
	.word	4
	.word	_Label_1232
	.word	-88
	.word	4
	.word	_Label_1233
	.word	-92
	.word	4
	.word	_Label_1234
	.word	-96
	.word	4
	.word	_Label_1235
	.word	-100
	.word	4
	.word	_Label_1236
	.word	-9
	.word	1
	.word	_Label_1237
	.word	-104
	.word	4
	.word	_Label_1238
	.word	-108
	.word	4
	.word	_Label_1239
	.word	-112
	.word	4
	.word	_Label_1240
	.word	-10
	.word	1
	.word	_Label_1241
	.word	-116
	.word	4
	.word	_Label_1242
	.word	-120
	.word	4
	.word	_Label_1243
	.word	-124
	.word	4
	.word	_Label_1244
	.word	-128
	.word	4
	.word	_Label_1245
	.word	-132
	.word	4
	.word	_Label_1246
	.word	-136
	.word	4
	.word	_Label_1247
	.word	-140
	.word	4
	.word	_Label_1248
	.word	-144
	.word	4
	.word	_Label_1249
	.word	-148
	.word	4
	.word	_Label_1250
	.word	-152
	.word	4
	.word	_Label_1251
	.word	-156
	.word	4
	.word	_Label_1252
	.word	-160
	.word	4
	.word	_Label_1253
	.word	-164
	.word	4
	.word	_Label_1254
	.word	-168
	.word	4
	.word	_Label_1255
	.word	-172
	.word	4
	.word	_Label_1256
	.word	-176
	.word	4
	.word	_Label_1257
	.word	-180
	.word	4
	.word	_Label_1258
	.word	-184
	.word	4
	.word	_Label_1259
	.word	-188
	.word	4
	.word	_Label_1260
	.word	-192
	.word	4
	.word	_Label_1261
	.word	-196
	.word	4
	.word	_Label_1262
	.word	-11
	.word	1
	.word	0
_Label_1210:
	.ascii	"Handle_Sys_Write\0"
	.align
_Label_1211:
	.byte	'I'
	.ascii	"fileDesc\0"
	.align
_Label_1212:
	.byte	'P'
	.ascii	"buffer\0"
	.align
_Label_1213:
	.byte	'I'
	.ascii	"sizeInBytes\0"
	.align
_Label_1214:
	.byte	'?'
	.ascii	"_temp_1209\0"
	.align
_Label_1215:
	.byte	'?'
	.ascii	"_temp_1208\0"
	.align
_Label_1216:
	.byte	'?'
	.ascii	"_temp_1207\0"
	.align
_Label_1217:
	.byte	'?'
	.ascii	"_temp_1206\0"
	.align
_Label_1218:
	.byte	'?'
	.ascii	"_temp_1205\0"
	.align
_Label_1219:
	.byte	'?'
	.ascii	"_temp_1204\0"
	.align
_Label_1220:
	.byte	'?'
	.ascii	"_temp_1203\0"
	.align
_Label_1221:
	.byte	'?'
	.ascii	"_temp_1202\0"
	.align
_Label_1222:
	.byte	'?'
	.ascii	"_temp_1199\0"
	.align
_Label_1223:
	.byte	'?'
	.ascii	"_temp_1198\0"
	.align
_Label_1224:
	.byte	'?'
	.ascii	"_temp_1197\0"
	.align
_Label_1225:
	.byte	'?'
	.ascii	"_temp_1196\0"
	.align
_Label_1226:
	.byte	'?'
	.ascii	"_temp_1195\0"
	.align
_Label_1227:
	.byte	'?'
	.ascii	"_temp_1194\0"
	.align
_Label_1228:
	.byte	'?'
	.ascii	"_temp_1193\0"
	.align
_Label_1229:
	.byte	'?'
	.ascii	"_temp_1192\0"
	.align
_Label_1230:
	.byte	'?'
	.ascii	"_temp_1189\0"
	.align
_Label_1231:
	.byte	'?'
	.ascii	"_temp_1186\0"
	.align
_Label_1232:
	.byte	'?'
	.ascii	"_temp_1183\0"
	.align
_Label_1233:
	.byte	'?'
	.ascii	"_temp_1182\0"
	.align
_Label_1234:
	.byte	'?'
	.ascii	"_temp_1181\0"
	.align
_Label_1235:
	.byte	'?'
	.ascii	"_temp_1177\0"
	.align
_Label_1236:
	.byte	'C'
	.ascii	"_temp_1174\0"
	.align
_Label_1237:
	.byte	'?'
	.ascii	"_temp_1173\0"
	.align
_Label_1238:
	.byte	'?'
	.ascii	"_temp_1172\0"
	.align
_Label_1239:
	.byte	'?'
	.ascii	"_temp_1171\0"
	.align
_Label_1240:
	.byte	'C'
	.ascii	"_temp_1170\0"
	.align
_Label_1241:
	.byte	'?'
	.ascii	"_temp_1163\0"
	.align
_Label_1242:
	.byte	'?'
	.ascii	"_temp_1160\0"
	.align
_Label_1243:
	.byte	'?'
	.ascii	"_temp_1157\0"
	.align
_Label_1244:
	.byte	'?'
	.ascii	"_temp_1156\0"
	.align
_Label_1245:
	.byte	'?'
	.ascii	"_temp_1155\0"
	.align
_Label_1246:
	.byte	'?'
	.ascii	"_temp_1151\0"
	.align
_Label_1247:
	.byte	'?'
	.ascii	"_temp_1146\0"
	.align
_Label_1248:
	.byte	'?'
	.ascii	"_temp_1145\0"
	.align
_Label_1249:
	.byte	'?'
	.ascii	"_temp_1144\0"
	.align
_Label_1250:
	.byte	'?'
	.ascii	"_temp_1143\0"
	.align
_Label_1251:
	.byte	'P'
	.ascii	"openFilePtr\0"
	.align
_Label_1252:
	.byte	'I'
	.ascii	"virtAddr\0"
	.align
_Label_1253:
	.byte	'I'
	.ascii	"virtPage\0"
	.align
_Label_1254:
	.byte	'I'
	.ascii	"offset\0"
	.align
_Label_1255:
	.byte	'I'
	.ascii	"chunkSize\0"
	.align
_Label_1256:
	.byte	'I'
	.ascii	"thisChunkSize\0"
	.align
_Label_1257:
	.byte	'I'
	.ascii	"currentPos\0"
	.align
_Label_1258:
	.byte	'I'
	.ascii	"nextPosInFile\0"
	.align
_Label_1259:
	.byte	'I'
	.ascii	"sizeOfFileInBytes\0"
	.align
_Label_1260:
	.byte	'I'
	.ascii	"copiedSoFar\0"
	.align
_Label_1261:
	.byte	'I'
	.ascii	"destAddr\0"
	.align
_Label_1262:
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
_Label_3829:
	push	r0
	sub	r1,1,r1
	bne	_Label_3829
	mov	2494,r13		! source line 2494
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! SEND STATEMENT...
	mov	2501,r13		! source line 2501
	mov	"\0\0SE",r10
!   _temp_1263 = &_P_Kernel_fileManager
	set	_P_Kernel_fileManager,r1
	store	r1,[r14+-92]
!   _temp_1264 = _temp_1263 + 4
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
	mov	2504,r13		! source line 2504
	mov	"\0\0IF",r10
!   if fileDesc < 10 then goto _Label_1267		(int)
	load	[r14+8],r1
	mov	10,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bl	_Label_1267
	jmp	_Label_1265
_Label_1267:
!   if fileDesc >= 0 then goto _Label_1266		(int)
	load	[r14+8],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_1266
!	jmp	_Label_1265
_Label_1265:
! THEN...
	mov	2505,r13		! source line 2505
	mov	"\0\0TN",r10
! SEND STATEMENT...
	mov	2505,r13		! source line 2505
	mov	"\0\0SE",r10
!   _temp_1268 = &_P_Kernel_fileManager
	set	_P_Kernel_fileManager,r1
	store	r1,[r14+-84]
!   _temp_1269 = _temp_1268 + 4
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
	mov	2506,r13		! source line 2506
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,100,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_1266:
! ASSIGNMENT STATEMENT...
	mov	2510,r13		! source line 2510
	mov	"\0\0AS",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1271 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-72]
!   Data Move: _temp_1270 = *_temp_1271  (sizeInBytes=4)
	load	[r14+-72],r1
	load	[r1],r1
	store	r1,[r14+-76]
!   if intIsZero (_temp_1270) then goto _runtimeErrorNullPointer
	load	[r14+-76],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1272 = _temp_1270 + 124
	load	[r14+-76],r1
	add	r1,124,r1
	store	r1,[r14+-68]
!   Move address of _temp_1272 [fileDesc ] into _temp_1273
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
!   Data Move: openFilePtr = *_temp_1273  (sizeInBytes=4)
	load	[r14+-64],r1
	load	[r1],r1
	store	r1,[r14+-96]
! IF STATEMENT...
	mov	2513,r13		! source line 2513
	mov	"\0\0IF",r10
!   if intIsZero (openFilePtr) then goto _Label_1274
	load	[r14+-96],r1
	cmp	r1,r0
	be	_Label_1274
	jmp	_Label_1275
_Label_1274:
! THEN...
	mov	2514,r13		! source line 2514
	mov	"\0\0TN",r10
! SEND STATEMENT...
	mov	2514,r13		! source line 2514
	mov	"\0\0SE",r10
!   _temp_1276 = &_P_Kernel_fileManager
	set	_P_Kernel_fileManager,r1
	store	r1,[r14+-60]
!   _temp_1277 = _temp_1276 + 4
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
	mov	2515,r13		! source line 2515
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,100,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_1275:
! ASSIGNMENT STATEMENT...
	mov	2518,r13		! source line 2518
	mov	"\0\0AS",r10
!   if intIsZero (openFilePtr) then goto _runtimeErrorNullPointer
	load	[r14+-96],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1279 = openFilePtr + 20
	load	[r14+-96],r1
	add	r1,20,r1
	store	r1,[r14+-48]
!   Data Move: _temp_1278 = *_temp_1279  (sizeInBytes=4)
	load	[r14+-48],r1
	load	[r1],r1
	store	r1,[r14+-52]
!   if intIsZero (_temp_1278) then goto _runtimeErrorNullPointer
	load	[r14+-52],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1280 = _temp_1278 + 24
	load	[r14+-52],r1
	add	r1,24,r1
	store	r1,[r14+-44]
!   Data Move: sizeOfFileInBytes = *_temp_1280  (sizeInBytes=4)
	load	[r14+-44],r1
	load	[r1],r1
	store	r1,[r14+-100]
! IF STATEMENT...
	mov	2522,r13		! source line 2522
	mov	"\0\0IF",r10
!   if newCurrentPos != -1 then goto _Label_1282		(int)
	load	[r14+12],r1
	mov	-1,r2
	cmp	r1,r2
	bne	_Label_1282
!	jmp	_Label_1281
_Label_1281:
! THEN...
	mov	2523,r13		! source line 2523
	mov	"\0\0TN",r10
! ASSIGNMENT STATEMENT...
	mov	2523,r13		! source line 2523
	mov	"\0\0AS",r10
!   if intIsZero (openFilePtr) then goto _runtimeErrorNullPointer
	load	[r14+-96],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1283 = openFilePtr + 16
	load	[r14+-96],r1
	add	r1,16,r1
	store	r1,[r14+-40]
!   Data Move: *_temp_1283 = sizeOfFileInBytes  (sizeInBytes=4)
	load	[r14+-100],r1
	load	[r14+-40],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	2524,r13		! source line 2524
	mov	"\0\0SE",r10
!   _temp_1284 = &_P_Kernel_fileManager
	set	_P_Kernel_fileManager,r1
	store	r1,[r14+-36]
!   _temp_1285 = _temp_1284 + 4
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
	mov	2525,r13		! source line 2525
	mov	"\0\0RE",r10
!   ReturnResult: sizeOfFileInBytes  (sizeInBytes=4)
	load	[r14+-100],r1
	store	r1,[r14+8]
	add	r15,100,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_1282:
! IF STATEMENT...
	mov	2529,r13		! source line 2529
	mov	"\0\0IF",r10
!   if newCurrentPos <= sizeOfFileInBytes then goto _Label_1288		(int)
	load	[r14+12],r1
	load	[r14+-100],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	ble	_Label_1288
	jmp	_Label_1286
_Label_1288:
!   if newCurrentPos >= -1 then goto _Label_1287		(int)
	load	[r14+12],r1
	mov	-1,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_1287
!	jmp	_Label_1286
_Label_1286:
! THEN...
	mov	2530,r13		! source line 2530
	mov	"\0\0TN",r10
! SEND STATEMENT...
	mov	2530,r13		! source line 2530
	mov	"\0\0SE",r10
!   _temp_1289 = &_P_Kernel_fileManager
	set	_P_Kernel_fileManager,r1
	store	r1,[r14+-28]
!   _temp_1290 = _temp_1289 + 4
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
	mov	2531,r13		! source line 2531
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,100,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_1287:
! ASSIGNMENT STATEMENT...
	mov	2536,r13		! source line 2536
	mov	"\0\0AS",r10
!   if intIsZero (openFilePtr) then goto _runtimeErrorNullPointer
	load	[r14+-96],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1291 = openFilePtr + 16
	load	[r14+-96],r1
	add	r1,16,r1
	store	r1,[r14+-20]
!   Data Move: *_temp_1291 = newCurrentPos  (sizeInBytes=4)
	load	[r14+12],r1
	load	[r14+-20],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	2539,r13		! source line 2539
	mov	"\0\0SE",r10
!   _temp_1292 = &_P_Kernel_fileManager
	set	_P_Kernel_fileManager,r1
	store	r1,[r14+-16]
!   _temp_1293 = _temp_1292 + 4
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
	mov	2541,r13		! source line 2541
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
	.word	_Label_1294
	.word	8		! total size of parameters
	.word	96		! frame size = 96
	.word	_Label_1295
	.word	8
	.word	4
	.word	_Label_1296
	.word	12
	.word	4
	.word	_Label_1297
	.word	-12
	.word	4
	.word	_Label_1298
	.word	-16
	.word	4
	.word	_Label_1299
	.word	-20
	.word	4
	.word	_Label_1300
	.word	-24
	.word	4
	.word	_Label_1301
	.word	-28
	.word	4
	.word	_Label_1302
	.word	-32
	.word	4
	.word	_Label_1303
	.word	-36
	.word	4
	.word	_Label_1304
	.word	-40
	.word	4
	.word	_Label_1305
	.word	-44
	.word	4
	.word	_Label_1306
	.word	-48
	.word	4
	.word	_Label_1307
	.word	-52
	.word	4
	.word	_Label_1308
	.word	-56
	.word	4
	.word	_Label_1309
	.word	-60
	.word	4
	.word	_Label_1310
	.word	-64
	.word	4
	.word	_Label_1311
	.word	-68
	.word	4
	.word	_Label_1312
	.word	-72
	.word	4
	.word	_Label_1313
	.word	-76
	.word	4
	.word	_Label_1314
	.word	-80
	.word	4
	.word	_Label_1315
	.word	-84
	.word	4
	.word	_Label_1316
	.word	-88
	.word	4
	.word	_Label_1317
	.word	-92
	.word	4
	.word	_Label_1318
	.word	-96
	.word	4
	.word	_Label_1319
	.word	-100
	.word	4
	.word	0
_Label_1294:
	.ascii	"Handle_Sys_Seek\0"
	.align
_Label_1295:
	.byte	'I'
	.ascii	"fileDesc\0"
	.align
_Label_1296:
	.byte	'I'
	.ascii	"newCurrentPos\0"
	.align
_Label_1297:
	.byte	'?'
	.ascii	"_temp_1293\0"
	.align
_Label_1298:
	.byte	'?'
	.ascii	"_temp_1292\0"
	.align
_Label_1299:
	.byte	'?'
	.ascii	"_temp_1291\0"
	.align
_Label_1300:
	.byte	'?'
	.ascii	"_temp_1290\0"
	.align
_Label_1301:
	.byte	'?'
	.ascii	"_temp_1289\0"
	.align
_Label_1302:
	.byte	'?'
	.ascii	"_temp_1285\0"
	.align
_Label_1303:
	.byte	'?'
	.ascii	"_temp_1284\0"
	.align
_Label_1304:
	.byte	'?'
	.ascii	"_temp_1283\0"
	.align
_Label_1305:
	.byte	'?'
	.ascii	"_temp_1280\0"
	.align
_Label_1306:
	.byte	'?'
	.ascii	"_temp_1279\0"
	.align
_Label_1307:
	.byte	'?'
	.ascii	"_temp_1278\0"
	.align
_Label_1308:
	.byte	'?'
	.ascii	"_temp_1277\0"
	.align
_Label_1309:
	.byte	'?'
	.ascii	"_temp_1276\0"
	.align
_Label_1310:
	.byte	'?'
	.ascii	"_temp_1273\0"
	.align
_Label_1311:
	.byte	'?'
	.ascii	"_temp_1272\0"
	.align
_Label_1312:
	.byte	'?'
	.ascii	"_temp_1271\0"
	.align
_Label_1313:
	.byte	'?'
	.ascii	"_temp_1270\0"
	.align
_Label_1314:
	.byte	'?'
	.ascii	"_temp_1269\0"
	.align
_Label_1315:
	.byte	'?'
	.ascii	"_temp_1268\0"
	.align
_Label_1316:
	.byte	'?'
	.ascii	"_temp_1264\0"
	.align
_Label_1317:
	.byte	'?'
	.ascii	"_temp_1263\0"
	.align
_Label_1318:
	.byte	'P'
	.ascii	"openFilePtr\0"
	.align
_Label_1319:
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
	mov	12,r1
_Label_3830:
	push	r0
	sub	r1,1,r1
	bne	_Label_3830
	mov	2547,r13		! source line 2547
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! IF STATEMENT...
	mov	2553,r13		! source line 2553
	mov	"\0\0IF",r10
!   if fileDesc < 10 then goto _Label_1322		(int)
	load	[r14+8],r1
	mov	10,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bl	_Label_1322
	jmp	_Label_1320
_Label_1322:
!   if fileDesc >= 0 then goto _Label_1321		(int)
	load	[r14+8],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_1321
!	jmp	_Label_1320
_Label_1320:
! THEN...
	mov	2554,r13		! source line 2554
	mov	"\0\0TN",r10
! RETURN STATEMENT...
	mov	2554,r13		! source line 2554
	mov	"\0\0RE",r10
	add	r15,52,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_1321:
! ASSIGNMENT STATEMENT...
	mov	2558,r13		! source line 2558
	mov	"\0\0AS",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1324 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-40]
!   Data Move: _temp_1323 = *_temp_1324  (sizeInBytes=4)
	load	[r14+-40],r1
	load	[r1],r1
	store	r1,[r14+-44]
!   if intIsZero (_temp_1323) then goto _runtimeErrorNullPointer
	load	[r14+-44],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1325 = _temp_1323 + 124
	load	[r14+-44],r1
	add	r1,124,r1
	store	r1,[r14+-36]
!   Move address of _temp_1325 [fileDesc ] into _temp_1326
!     make sure index expr is >= 0
	load	[r14+8],r2
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
!   Data Move: openFilePtr = *_temp_1326  (sizeInBytes=4)
	load	[r14+-32],r1
	load	[r1],r1
	store	r1,[r14+-48]
! ASSIGNMENT STATEMENT...
	mov	2561,r13		! source line 2561
	mov	"\0\0AS",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1328 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-24]
!   Data Move: _temp_1327 = *_temp_1328  (sizeInBytes=4)
	load	[r14+-24],r1
	load	[r1],r1
	store	r1,[r14+-28]
!   if intIsZero (_temp_1327) then goto _runtimeErrorNullPointer
	load	[r14+-28],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1329 = _temp_1327 + 124
	load	[r14+-28],r1
	add	r1,124,r1
	store	r1,[r14+-20]
!   Move address of _temp_1329 [fileDesc ] into _temp_1330
!     make sure index expr is >= 0
	load	[r14+8],r2
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
!   Data Move: *_temp_1330 = 0  (sizeInBytes=4)
	mov	0,r1
	load	[r14+-16],r2
	store	r1,[r2]
! IF STATEMENT...
	mov	2564,r13		! source line 2564
	mov	"\0\0IF",r10
!   if intIsZero (openFilePtr) then goto _Label_1332
	load	[r14+-48],r1
	cmp	r1,r0
	be	_Label_1332
!	jmp	_Label_1331
_Label_1331:
! THEN...
	mov	2565,r13		! source line 2565
	mov	"\0\0TN",r10
! SEND STATEMENT...
	mov	2565,r13		! source line 2565
	mov	"\0\0SE",r10
!   _temp_1333 = &_P_Kernel_fileManager
	set	_P_Kernel_fileManager,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=12  value=openFilePtr  sizeInBytes=4
	load	[r14+-48],r1
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
_Label_1332:
! RETURN STATEMENT...
	mov	2564,r13		! source line 2564
	mov	"\0\0RE",r10
	add	r15,52,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__P_Kernel_Handle_Sys_Close:
	.word	_sourceFileName
	.word	_Label_1334
	.word	4		! total size of parameters
	.word	48		! frame size = 48
	.word	_Label_1335
	.word	8
	.word	4
	.word	_Label_1336
	.word	-12
	.word	4
	.word	_Label_1337
	.word	-16
	.word	4
	.word	_Label_1338
	.word	-20
	.word	4
	.word	_Label_1339
	.word	-24
	.word	4
	.word	_Label_1340
	.word	-28
	.word	4
	.word	_Label_1341
	.word	-32
	.word	4
	.word	_Label_1342
	.word	-36
	.word	4
	.word	_Label_1343
	.word	-40
	.word	4
	.word	_Label_1344
	.word	-44
	.word	4
	.word	_Label_1345
	.word	-48
	.word	4
	.word	0
_Label_1334:
	.ascii	"Handle_Sys_Close\0"
	.align
_Label_1335:
	.byte	'I'
	.ascii	"fileDesc\0"
	.align
_Label_1336:
	.byte	'?'
	.ascii	"_temp_1333\0"
	.align
_Label_1337:
	.byte	'?'
	.ascii	"_temp_1330\0"
	.align
_Label_1338:
	.byte	'?'
	.ascii	"_temp_1329\0"
	.align
_Label_1339:
	.byte	'?'
	.ascii	"_temp_1328\0"
	.align
_Label_1340:
	.byte	'?'
	.ascii	"_temp_1327\0"
	.align
_Label_1341:
	.byte	'?'
	.ascii	"_temp_1326\0"
	.align
_Label_1342:
	.byte	'?'
	.ascii	"_temp_1325\0"
	.align
_Label_1343:
	.byte	'?'
	.ascii	"_temp_1324\0"
	.align
_Label_1344:
	.byte	'?'
	.ascii	"_temp_1323\0"
	.align
_Label_1345:
	.byte	'P'
	.ascii	"openFilePtr\0"
	.align
! 
! ===============  FUNCTION copyUnalignedWord  ===============
! 
_function_192_copyUnalignedWord:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__function_192_copyUnalignedWord,r1
	push	r1
	mov	9,r1
_Label_3831:
	push	r0
	sub	r1,1,r1
	bne	_Label_3831
	mov	3159,r13		! source line 3159
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	3161,r13		! source line 3161
	mov	"\0\0AS",r10
!   from = fromPtr		(4 bytes)
	load	[r14+12],r1
	store	r1,[r14+-40]
! ASSIGNMENT STATEMENT...
	mov	3162,r13		! source line 3162
	mov	"\0\0AS",r10
!   dest = destPtr		(4 bytes)
	load	[r14+8],r1
	store	r1,[r14+-44]
! ASSIGNMENT STATEMENT...
	mov	3163,r13		! source line 3163
	mov	"\0\0AS",r10
!   if intIsZero (dest) then goto _runtimeErrorNullPointer
	load	[r14+-44],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   if intIsZero (from) then goto _runtimeErrorNullPointer
	load	[r14+-40],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Data Move: _temp_1346 = *from  (sizeInBytes=1)
	load	[r14+-40],r1
	loadb	[r1],r1
	storeb	r1,[r14+-12]
!   Data Move: *dest = _temp_1346  (sizeInBytes=1)
	loadb	[r14+-12],r1
	load	[r14+-44],r2
	storeb	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	3164,r13		! source line 3164
	mov	"\0\0AS",r10
!   _temp_1347 = dest + 1		(int)
	load	[r14+-44],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-36]
!   if intIsZero (_temp_1347) then goto _runtimeErrorNullPointer
	load	[r14+-36],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1349 = from + 1		(int)
	load	[r14+-40],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-32]
!   if intIsZero (_temp_1349) then goto _runtimeErrorNullPointer
	load	[r14+-32],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Data Move: _temp_1348 = *_temp_1349  (sizeInBytes=1)
	load	[r14+-32],r1
	loadb	[r1],r1
	storeb	r1,[r14+-11]
!   Data Move: *_temp_1347 = _temp_1348  (sizeInBytes=1)
	loadb	[r14+-11],r1
	load	[r14+-36],r2
	storeb	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	3165,r13		! source line 3165
	mov	"\0\0AS",r10
!   _temp_1350 = dest + 2		(int)
	load	[r14+-44],r1
	mov	2,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-28]
!   if intIsZero (_temp_1350) then goto _runtimeErrorNullPointer
	load	[r14+-28],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1352 = from + 2		(int)
	load	[r14+-40],r1
	mov	2,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-24]
!   if intIsZero (_temp_1352) then goto _runtimeErrorNullPointer
	load	[r14+-24],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Data Move: _temp_1351 = *_temp_1352  (sizeInBytes=1)
	load	[r14+-24],r1
	loadb	[r1],r1
	storeb	r1,[r14+-10]
!   Data Move: *_temp_1350 = _temp_1351  (sizeInBytes=1)
	loadb	[r14+-10],r1
	load	[r14+-28],r2
	storeb	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	3166,r13		! source line 3166
	mov	"\0\0AS",r10
!   _temp_1353 = dest + 3		(int)
	load	[r14+-44],r1
	mov	3,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-20]
!   if intIsZero (_temp_1353) then goto _runtimeErrorNullPointer
	load	[r14+-20],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1355 = from + 3		(int)
	load	[r14+-40],r1
	mov	3,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-16]
!   if intIsZero (_temp_1355) then goto _runtimeErrorNullPointer
	load	[r14+-16],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Data Move: _temp_1354 = *_temp_1355  (sizeInBytes=1)
	load	[r14+-16],r1
	loadb	[r1],r1
	storeb	r1,[r14+-9]
!   Data Move: *_temp_1353 = _temp_1354  (sizeInBytes=1)
	loadb	[r14+-9],r1
	load	[r14+-20],r2
	storeb	r1,[r2]
! RETURN STATEMENT...
	mov	3166,r13		! source line 3166
	mov	"\0\0RE",r10
	add	r15,40,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__function_192_copyUnalignedWord:
	.word	_sourceFileName
	.word	_Label_1356
	.word	8		! total size of parameters
	.word	36		! frame size = 36
	.word	_Label_1357
	.word	8
	.word	4
	.word	_Label_1358
	.word	12
	.word	4
	.word	_Label_1359
	.word	-16
	.word	4
	.word	_Label_1360
	.word	-9
	.word	1
	.word	_Label_1361
	.word	-20
	.word	4
	.word	_Label_1362
	.word	-24
	.word	4
	.word	_Label_1363
	.word	-10
	.word	1
	.word	_Label_1364
	.word	-28
	.word	4
	.word	_Label_1365
	.word	-32
	.word	4
	.word	_Label_1366
	.word	-11
	.word	1
	.word	_Label_1367
	.word	-36
	.word	4
	.word	_Label_1368
	.word	-12
	.word	1
	.word	_Label_1369
	.word	-40
	.word	4
	.word	_Label_1370
	.word	-44
	.word	4
	.word	0
_Label_1356:
	.ascii	"copyUnalignedWord\0"
	.align
_Label_1357:
	.byte	'P'
	.ascii	"destPtr\0"
	.align
_Label_1358:
	.byte	'P'
	.ascii	"fromPtr\0"
	.align
_Label_1359:
	.byte	'?'
	.ascii	"_temp_1355\0"
	.align
_Label_1360:
	.byte	'C'
	.ascii	"_temp_1354\0"
	.align
_Label_1361:
	.byte	'?'
	.ascii	"_temp_1353\0"
	.align
_Label_1362:
	.byte	'?'
	.ascii	"_temp_1352\0"
	.align
_Label_1363:
	.byte	'C'
	.ascii	"_temp_1351\0"
	.align
_Label_1364:
	.byte	'?'
	.ascii	"_temp_1350\0"
	.align
_Label_1365:
	.byte	'?'
	.ascii	"_temp_1349\0"
	.align
_Label_1366:
	.byte	'C'
	.ascii	"_temp_1348\0"
	.align
_Label_1367:
	.byte	'?'
	.ascii	"_temp_1347\0"
	.align
_Label_1368:
	.byte	'C'
	.ascii	"_temp_1346\0"
	.align
_Label_1369:
	.byte	'P'
	.ascii	"from\0"
	.align
_Label_1370:
	.byte	'P'
	.ascii	"dest\0"
	.align
! 
! ===============  FUNCTION printFCB  ===============
! 
_function_191_printFCB:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__function_191_printFCB,r1
	push	r1
	mov	3,r1
_Label_3832:
	push	r0
	sub	r1,1,r1
	bne	_Label_3832
	mov	3169,r13		! source line 3169
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+8],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1372 = fcb + 12
	load	[r14+8],r1
	add	r1,12,r1
	store	r1,[r14+-12]
!   Data Move: _temp_1371 = *_temp_1372  (sizeInBytes=4)
	load	[r14+-12],r1
	load	[r1],r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_1371  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+0]
!   Call the function
	mov	3170,r13		! source line 3170
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=32  sizeInBytes=1
	mov	32,r1
	storeb	r1,[r15+0]
!   Call the function
	mov	3171,r13		! source line 3171
	mov	"\0\0CE",r10
	call	printChar
! RETURN STATEMENT...
	mov	3171,r13		! source line 3171
	mov	"\0\0RE",r10
	add	r15,16,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__function_191_printFCB:
	.word	_sourceFileName
	.word	_Label_1373
	.word	4		! total size of parameters
	.word	12		! frame size = 12
	.word	_Label_1374
	.word	8
	.word	4
	.word	_Label_1375
	.word	-12
	.word	4
	.word	_Label_1376
	.word	-16
	.word	4
	.word	0
_Label_1373:
	.ascii	"printFCB\0"
	.align
_Label_1374:
	.byte	'P'
	.ascii	"fcb\0"
	.align
_Label_1375:
	.byte	'?'
	.ascii	"_temp_1372\0"
	.align
_Label_1376:
	.byte	'?'
	.ascii	"_temp_1371\0"
	.align
! 
! ===============  FUNCTION printOpen  ===============
! 
_function_190_printOpen:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__function_190_printOpen,r1
	push	r1
	mov	4,r1
_Label_3833:
	push	r0
	sub	r1,1,r1
	bne	_Label_3833
	mov	3174,r13		! source line 3174
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   _temp_1377 = _StringConst_43
	set	_StringConst_43,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_1377  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   Call the function
	mov	3175,r13		! source line 3175
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_1378 = open		(4 bytes)
	load	[r14+8],r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_1378  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+0]
!   Call the function
	mov	3176,r13		! source line 3176
	mov	"\0\0CE",r10
	call	printHex
! CALL STATEMENT...
!   _temp_1379 = _StringConst_44
	set	_StringConst_44,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_1379  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	3177,r13		! source line 3177
	mov	"\0\0CE",r10
	call	print
! SEND STATEMENT...
	mov	3178,r13		! source line 3178
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
	mov	3178,r13		! source line 3178
	mov	"\0\0RE",r10
	add	r15,20,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__function_190_printOpen:
	.word	_sourceFileName
	.word	_Label_1380
	.word	4		! total size of parameters
	.word	16		! frame size = 16
	.word	_Label_1381
	.word	8
	.word	4
	.word	_Label_1382
	.word	-12
	.word	4
	.word	_Label_1383
	.word	-16
	.word	4
	.word	_Label_1384
	.word	-20
	.word	4
	.word	0
_Label_1380:
	.ascii	"printOpen\0"
	.align
_Label_1381:
	.byte	'P'
	.ascii	"open\0"
	.align
_Label_1382:
	.byte	'?'
	.ascii	"_temp_1379\0"
	.align
_Label_1383:
	.byte	'?'
	.ascii	"_temp_1378\0"
	.align
_Label_1384:
	.byte	'?'
	.ascii	"_temp_1377\0"
	.align
! 
! ===============  CLASS Semaphore  ===============
! 
! Dispatch Table:
! 
_P_Kernel_Semaphore:
	.word	_Label_1385
	jmp	_Method_P_Kernel_Semaphore_1	! 4:	Init
	jmp	_Method_P_Kernel_Semaphore_3	! 8:	Down
	jmp	_Method_P_Kernel_Semaphore_2	! 12:	Up
	.word	0
! 
! Class descriptor:
! 
_Label_1385:
	.word	1129070931		! Magic number 0x434c4153 == 'CLAS'
	.word	_Label_1386
	.word	_sourceFileName
	.word	129		! line number
	.word	20		! size of instances, in bytes
	.word	_P_Kernel_Semaphore
	.word	_P_System_Object
	.word	0
_Label_1386:
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
_Label_3834:
	push	r0
	sub	r1,1,r1
	bne	_Label_3834
	mov	230,r13		! source line 230
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! IF STATEMENT...
	mov	231,r13		! source line 231
	mov	"\0\0IF",r10
!   if initialCount >= 0 then goto _Label_1388		(int)
	load	[r14+12],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_1388
!	jmp	_Label_1387
_Label_1387:
! THEN...
	mov	232,r13		! source line 232
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_1389 = _StringConst_45
	set	_StringConst_45,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_1389  sizeInBytes=4
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
_Label_1388:
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
	.word	_Label_1391
	.word	8		! total size of parameters
	.word	12		! frame size = 12
	.word	_Label_1392
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1393
	.word	12
	.word	4
	.word	_Label_1394
	.word	-12
	.word	4
	.word	_Label_1395
	.word	-16
	.word	4
	.word	0
_Label_1391:
	.ascii	"Semaphore"
	.ascii	"::"
	.ascii	"Init\0"
	.align
_Label_1392:
	.ascii	"Pself\0"
	.align
_Label_1393:
	.byte	'I'
	.ascii	"initialCount\0"
	.align
_Label_1394:
	.byte	'?'
	.ascii	"_temp_1390\0"
	.align
_Label_1395:
	.byte	'?'
	.ascii	"_temp_1389\0"
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
_Label_3835:
	push	r0
	sub	r1,1,r1
	bne	_Label_3835
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
!   if count != 2147483647 then goto _Label_1397		(int)
	load	[r14+8],r1
	load	[r1+4],r1
	set	2147483647,r2
	cmp	r1,r2
	bne	_Label_1397
!	jmp	_Label_1396
_Label_1396:
! THEN...
	mov	246,r13		! source line 246
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_1398 = _StringConst_46
	set	_StringConst_46,r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=8  value=_temp_1398  sizeInBytes=4
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
_Label_1397:
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
!   if count > 0 then goto _Label_1400		(int)
	load	[r14+8],r1
	load	[r1+4],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_1400
!	jmp	_Label_1399
_Label_1399:
! THEN...
	mov	250,r13		! source line 250
	mov	"\0\0TN",r10
! ASSIGNMENT STATEMENT...
	mov	250,r13		! source line 250
	mov	"\0\0AS",r10
	mov	250,r13		! source line 250
	mov	"\0\0SE",r10
!   _temp_1401 = &waitingThreads
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
!   _temp_1402 = t + 76
	load	[r14+-32],r1
	add	r1,76,r1
	store	r1,[r14+-16]
!   Data Move: *_temp_1402 = 2  (sizeInBytes=4)
	mov	2,r1
	load	[r14+-16],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	252,r13		! source line 252
	mov	"\0\0SE",r10
!   _temp_1403 = &_P_Kernel_readyList
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
_Label_1400:
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
	.word	_Label_1404
	.word	4		! total size of parameters
	.word	32		! frame size = 32
	.word	_Label_1405
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1406
	.word	-12
	.word	4
	.word	_Label_1407
	.word	-16
	.word	4
	.word	_Label_1408
	.word	-20
	.word	4
	.word	_Label_1409
	.word	-24
	.word	4
	.word	_Label_1410
	.word	-28
	.word	4
	.word	_Label_1411
	.word	-32
	.word	4
	.word	0
_Label_1404:
	.ascii	"Semaphore"
	.ascii	"::"
	.ascii	"Up\0"
	.align
_Label_1405:
	.ascii	"Pself\0"
	.align
_Label_1406:
	.byte	'?'
	.ascii	"_temp_1403\0"
	.align
_Label_1407:
	.byte	'?'
	.ascii	"_temp_1402\0"
	.align
_Label_1408:
	.byte	'?'
	.ascii	"_temp_1401\0"
	.align
_Label_1409:
	.byte	'?'
	.ascii	"_temp_1398\0"
	.align
_Label_1410:
	.byte	'I'
	.ascii	"oldIntStat\0"
	.align
_Label_1411:
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
_Label_3836:
	push	r0
	sub	r1,1,r1
	bne	_Label_3836
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
!   if count != -2147483648 then goto _Label_1413		(int)
	load	[r14+8],r1
	load	[r1+4],r1
	set	0x80000000,r2
	cmp	r1,r2
	bne	_Label_1413
!	jmp	_Label_1412
_Label_1412:
! THEN...
	mov	264,r13		! source line 264
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_1414 = _StringConst_47
	set	_StringConst_47,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_1414  sizeInBytes=4
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
_Label_1413:
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
!   if count >= 0 then goto _Label_1416		(int)
	load	[r14+8],r1
	load	[r1+4],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_1416
!	jmp	_Label_1415
_Label_1415:
! THEN...
	mov	268,r13		! source line 268
	mov	"\0\0TN",r10
! SEND STATEMENT...
	mov	268,r13		! source line 268
	mov	"\0\0SE",r10
!   _temp_1417 = &waitingThreads
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
_Label_1416:
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
	.word	_Label_1418
	.word	4		! total size of parameters
	.word	20		! frame size = 20
	.word	_Label_1419
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1420
	.word	-12
	.word	4
	.word	_Label_1421
	.word	-16
	.word	4
	.word	_Label_1422
	.word	-20
	.word	4
	.word	0
_Label_1418:
	.ascii	"Semaphore"
	.ascii	"::"
	.ascii	"Down\0"
	.align
_Label_1419:
	.ascii	"Pself\0"
	.align
_Label_1420:
	.byte	'?'
	.ascii	"_temp_1417\0"
	.align
_Label_1421:
	.byte	'?'
	.ascii	"_temp_1414\0"
	.align
_Label_1422:
	.byte	'I'
	.ascii	"oldIntStat\0"
	.align
! 
! ===============  CLASS Mutex  ===============
! 
! Dispatch Table:
! 
_P_Kernel_Mutex:
	.word	_Label_1423
	jmp	_Method_P_Kernel_Mutex_1	! 4:	Init
	jmp	_Method_P_Kernel_Mutex_2	! 8:	Lock
	jmp	_Method_P_Kernel_Mutex_3	! 12:	Unlock
	jmp	_Method_P_Kernel_Mutex_4	! 16:	IsHeldByCurrentThread
	.word	0
! 
! Class descriptor:
! 
_Label_1423:
	.word	1129070931		! Magic number 0x434c4153 == 'CLAS'
	.word	_Label_1424
	.word	_sourceFileName
	.word	142		! line number
	.word	20		! size of instances, in bytes
	.word	_P_Kernel_Mutex
	.word	_P_System_Object
	.word	0
_Label_1424:
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
_Label_3837:
	push	r0
	sub	r1,1,r1
	bne	_Label_3837
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
	.word	_Label_1426
	.word	4		! total size of parameters
	.word	4		! frame size = 4
	.word	_Label_1427
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1428
	.word	-12
	.word	4
	.word	0
_Label_1426:
	.ascii	"Mutex"
	.ascii	"::"
	.ascii	"Init\0"
	.align
_Label_1427:
	.ascii	"Pself\0"
	.align
_Label_1428:
	.byte	'?'
	.ascii	"_temp_1425\0"
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
_Label_3838:
	push	r0
	sub	r1,1,r1
	bne	_Label_3838
	mov	300,r13		! source line 300
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! IF STATEMENT...
	mov	303,r13		! source line 303
	mov	"\0\0IF",r10
!   if heldBy != _P_Kernel_currentThread then goto _Label_1430		(int)
	load	[r14+8],r1
	load	[r1+4],r1
	set	_P_Kernel_currentThread,r2
	load	[r2],r2
	cmp	r1,r2
	bne	_Label_1430
!	jmp	_Label_1429
_Label_1429:
! THEN...
	mov	304,r13		! source line 304
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_1431 = _StringConst_48
	set	_StringConst_48,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_1431  sizeInBytes=4
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
_Label_1430:
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
!   if heldBy == 0 then goto _Label_1435		(int)
	load	[r14+8],r1
	load	[r1+4],r1
	mov	0,r2
	cmp	r1,r2
	be	_Label_1435
!   _temp_1434 = 1		(1 byte)
	mov	1,r1
	storeb	r1,[r14+-9]
	jmp	_Label_1436
_Label_1435:
!   _temp_1434 = 0		(1 byte)
	mov	0,r1
	storeb	r1,[r14+-9]
_Label_1436:
!   if _temp_1434 then goto _Label_1433 else goto _Label_1432
	loadb	[r14+-9],r1
	cmp	r1,0
	be	_Label_1432
	jmp	_Label_1433
_Label_1432:
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
	jmp	_Label_1437
_Label_1433:
! ELSE...
	mov	310,r13		! source line 310
	mov	"\0\0EL",r10
! SEND STATEMENT...
	mov	310,r13		! source line 310
	mov	"\0\0SE",r10
!   _temp_1438 = &waitingThreads
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
_Label_1437:
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
	.word	_Label_1439
	.word	4		! total size of parameters
	.word	24		! frame size = 24
	.word	_Label_1440
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1441
	.word	-16
	.word	4
	.word	_Label_1442
	.word	-9
	.word	1
	.word	_Label_1443
	.word	-20
	.word	4
	.word	_Label_1444
	.word	-24
	.word	4
	.word	0
_Label_1439:
	.ascii	"Mutex"
	.ascii	"::"
	.ascii	"Lock\0"
	.align
_Label_1440:
	.ascii	"Pself\0"
	.align
_Label_1441:
	.byte	'?'
	.ascii	"_temp_1438\0"
	.align
_Label_1442:
	.byte	'C'
	.ascii	"_temp_1434\0"
	.align
_Label_1443:
	.byte	'?'
	.ascii	"_temp_1431\0"
	.align
_Label_1444:
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
_Label_3839:
	push	r0
	sub	r1,1,r1
	bne	_Label_3839
	mov	318,r13		! source line 318
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! IF STATEMENT...
	mov	322,r13		! source line 322
	mov	"\0\0IF",r10
!   if heldBy == _P_Kernel_currentThread then goto _Label_1446		(int)
	load	[r14+8],r1
	load	[r1+4],r1
	set	_P_Kernel_currentThread,r2
	load	[r2],r2
	cmp	r1,r2
	be	_Label_1446
!	jmp	_Label_1445
_Label_1445:
! THEN...
	mov	323,r13		! source line 323
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_1447 = _StringConst_49
	set	_StringConst_49,r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=8  value=_temp_1447  sizeInBytes=4
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
_Label_1446:
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
!   _temp_1448 = &waitingThreads
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
!   if t == 0 then goto _Label_1450		(int)
	load	[r14+-32],r1
	mov	0,r2
	cmp	r1,r2
	be	_Label_1450
!	jmp	_Label_1449
_Label_1449:
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
!   _temp_1451 = t + 76
	load	[r14+-32],r1
	add	r1,76,r1
	store	r1,[r14+-16]
!   Data Move: *_temp_1451 = 2  (sizeInBytes=4)
	mov	2,r1
	load	[r14+-16],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	329,r13		! source line 329
	mov	"\0\0SE",r10
!   _temp_1452 = &_P_Kernel_readyList
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
	jmp	_Label_1453
_Label_1450:
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
_Label_1453:
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
	.word	_Label_1454
	.word	4		! total size of parameters
	.word	32		! frame size = 32
	.word	_Label_1455
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1456
	.word	-12
	.word	4
	.word	_Label_1457
	.word	-16
	.word	4
	.word	_Label_1458
	.word	-20
	.word	4
	.word	_Label_1459
	.word	-24
	.word	4
	.word	_Label_1460
	.word	-28
	.word	4
	.word	_Label_1461
	.word	-32
	.word	4
	.word	0
_Label_1454:
	.ascii	"Mutex"
	.ascii	"::"
	.ascii	"Unlock\0"
	.align
_Label_1455:
	.ascii	"Pself\0"
	.align
_Label_1456:
	.byte	'?'
	.ascii	"_temp_1452\0"
	.align
_Label_1457:
	.byte	'?'
	.ascii	"_temp_1451\0"
	.align
_Label_1458:
	.byte	'?'
	.ascii	"_temp_1448\0"
	.align
_Label_1459:
	.byte	'?'
	.ascii	"_temp_1447\0"
	.align
_Label_1460:
	.byte	'I'
	.ascii	"oldIntStat\0"
	.align
_Label_1461:
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
_Label_3840:
	push	r0
	sub	r1,1,r1
	bne	_Label_3840
	mov	339,r13		! source line 339
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! RETURN STATEMENT...
	mov	340,r13		! source line 340
	mov	"\0\0RE",r10
!   if heldBy != _P_Kernel_currentThread then goto _Label_1464		(int)
	load	[r14+8],r1
	load	[r1+4],r1
	set	_P_Kernel_currentThread,r2
	load	[r2],r2
	cmp	r1,r2
	bne	_Label_1464
!	jmp	_Label_1463
_Label_1463:
!   _temp_1462 = 1		(1 byte)
	mov	1,r1
	storeb	r1,[r14+-9]
	jmp	_Label_1465
_Label_1464:
!   _temp_1462 = 0		(1 byte)
	mov	0,r1
	storeb	r1,[r14+-9]
_Label_1465:
!   ReturnResult: _temp_1462  (sizeInBytes=1)
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
	.word	_Label_1466
	.word	4		! total size of parameters
	.word	4		! frame size = 4
	.word	_Label_1467
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1468
	.word	-9
	.word	1
	.word	0
_Label_1466:
	.ascii	"Mutex"
	.ascii	"::"
	.ascii	"IsHeldByCurrentThread\0"
	.align
_Label_1467:
	.ascii	"Pself\0"
	.align
_Label_1468:
	.byte	'C'
	.ascii	"_temp_1462\0"
	.align
! 
! ===============  CLASS Condition  ===============
! 
! Dispatch Table:
! 
_P_Kernel_Condition:
	.word	_Label_1469
	jmp	_Method_P_Kernel_Condition_1	! 4:	Init
	jmp	_Method_P_Kernel_Condition_2	! 8:	Wait
	jmp	_Method_P_Kernel_Condition_3	! 12:	Signal
	jmp	_Method_P_Kernel_Condition_4	! 16:	Broadcast
	.word	0
! 
! Class descriptor:
! 
_Label_1469:
	.word	1129070931		! Magic number 0x434c4153 == 'CLAS'
	.word	_Label_1470
	.word	_sourceFileName
	.word	156		! line number
	.word	16		! size of instances, in bytes
	.word	_P_Kernel_Condition
	.word	_P_System_Object
	.word	0
_Label_1470:
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
_Label_3841:
	push	r0
	sub	r1,1,r1
	bne	_Label_3841
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
	.word	_Label_1472
	.word	4		! total size of parameters
	.word	4		! frame size = 4
	.word	_Label_1473
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1474
	.word	-12
	.word	4
	.word	0
_Label_1472:
	.ascii	"Condition"
	.ascii	"::"
	.ascii	"Init\0"
	.align
_Label_1473:
	.ascii	"Pself\0"
	.align
_Label_1474:
	.byte	'?'
	.ascii	"_temp_1471\0"
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
_Label_3842:
	push	r0
	sub	r1,1,r1
	bne	_Label_3842
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
!   Retrieve Result: targetName=_temp_1477  sizeInBytes=1
	loadb	[r15],r1
	storeb	r1,[r14+-9]
!   if _temp_1477 then goto _Label_1476 else goto _Label_1475
	loadb	[r14+-9],r1
	cmp	r1,0
	be	_Label_1475
	jmp	_Label_1476
_Label_1475:
! THEN...
	mov	390,r13		! source line 390
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_1478 = _StringConst_50
	set	_StringConst_50,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_1478  sizeInBytes=4
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
_Label_1476:
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
!   _temp_1479 = &waitingThreads
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
	.word	_Label_1480
	.word	8		! total size of parameters
	.word	24		! frame size = 24
	.word	_Label_1481
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1482
	.word	12
	.word	4
	.word	_Label_1483
	.word	-16
	.word	4
	.word	_Label_1484
	.word	-20
	.word	4
	.word	_Label_1485
	.word	-9
	.word	1
	.word	_Label_1486
	.word	-24
	.word	4
	.word	0
_Label_1480:
	.ascii	"Condition"
	.ascii	"::"
	.ascii	"Wait\0"
	.align
_Label_1481:
	.ascii	"Pself\0"
	.align
_Label_1482:
	.byte	'P'
	.ascii	"mutex\0"
	.align
_Label_1483:
	.byte	'?'
	.ascii	"_temp_1479\0"
	.align
_Label_1484:
	.byte	'?'
	.ascii	"_temp_1478\0"
	.align
_Label_1485:
	.byte	'C'
	.ascii	"_temp_1477\0"
	.align
_Label_1486:
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
_Label_3843:
	push	r0
	sub	r1,1,r1
	bne	_Label_3843
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
!   Retrieve Result: targetName=_temp_1489  sizeInBytes=1
	loadb	[r15],r1
	storeb	r1,[r14+-9]
!   if _temp_1489 then goto _Label_1488 else goto _Label_1487
	loadb	[r14+-9],r1
	cmp	r1,0
	be	_Label_1487
	jmp	_Label_1488
_Label_1487:
! THEN...
	mov	407,r13		! source line 407
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_1490 = _StringConst_51
	set	_StringConst_51,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=8  value=_temp_1490  sizeInBytes=4
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
_Label_1488:
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
!   _temp_1491 = &waitingThreads
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
!   if t == 0 then goto _Label_1493		(int)
	load	[r14+-36],r1
	mov	0,r2
	cmp	r1,r2
	be	_Label_1493
!	jmp	_Label_1492
_Label_1492:
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
!   _temp_1494 = t + 76
	load	[r14+-36],r1
	add	r1,76,r1
	store	r1,[r14+-20]
!   Data Move: *_temp_1494 = 2  (sizeInBytes=4)
	mov	2,r1
	load	[r14+-20],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	413,r13		! source line 413
	mov	"\0\0SE",r10
!   _temp_1495 = &_P_Kernel_readyList
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
_Label_1493:
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
	.word	_Label_1496
	.word	8		! total size of parameters
	.word	36		! frame size = 36
	.word	_Label_1497
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1498
	.word	12
	.word	4
	.word	_Label_1499
	.word	-16
	.word	4
	.word	_Label_1500
	.word	-20
	.word	4
	.word	_Label_1501
	.word	-24
	.word	4
	.word	_Label_1502
	.word	-28
	.word	4
	.word	_Label_1503
	.word	-9
	.word	1
	.word	_Label_1504
	.word	-32
	.word	4
	.word	_Label_1505
	.word	-36
	.word	4
	.word	0
_Label_1496:
	.ascii	"Condition"
	.ascii	"::"
	.ascii	"Signal\0"
	.align
_Label_1497:
	.ascii	"Pself\0"
	.align
_Label_1498:
	.byte	'P'
	.ascii	"mutex\0"
	.align
_Label_1499:
	.byte	'?'
	.ascii	"_temp_1495\0"
	.align
_Label_1500:
	.byte	'?'
	.ascii	"_temp_1494\0"
	.align
_Label_1501:
	.byte	'?'
	.ascii	"_temp_1491\0"
	.align
_Label_1502:
	.byte	'?'
	.ascii	"_temp_1490\0"
	.align
_Label_1503:
	.byte	'C'
	.ascii	"_temp_1489\0"
	.align
_Label_1504:
	.byte	'I'
	.ascii	"oldIntStat\0"
	.align
_Label_1505:
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
_Label_3844:
	push	r0
	sub	r1,1,r1
	bne	_Label_3844
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
!   Retrieve Result: targetName=_temp_1508  sizeInBytes=1
	loadb	[r15],r1
	storeb	r1,[r14+-9]
!   if _temp_1508 then goto _Label_1507 else goto _Label_1506
	loadb	[r14+-9],r1
	cmp	r1,0
	be	_Label_1506
	jmp	_Label_1507
_Label_1506:
! THEN...
	mov	425,r13		! source line 425
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_1509 = _StringConst_52
	set	_StringConst_52,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=8  value=_temp_1509  sizeInBytes=4
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
_Label_1507:
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
_Label_1510:
!	jmp	_Label_1511
_Label_1511:
	mov	428,r13		! source line 428
	mov	"\0\0WB",r10
! ASSIGNMENT STATEMENT...
	mov	429,r13		! source line 429
	mov	"\0\0AS",r10
	mov	429,r13		! source line 429
	mov	"\0\0SE",r10
!   _temp_1513 = &waitingThreads
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
!   if intIsZero (t) then goto _Label_1514
	load	[r14+-36],r1
	cmp	r1,r0
	be	_Label_1514
	jmp	_Label_1515
_Label_1514:
! THEN...
	mov	432,r13		! source line 432
	mov	"\0\0TN",r10
! BREAK STATEMENT...
	mov	432,r13		! source line 432
	mov	"\0\0BR",r10
	jmp	_Label_1512
! END IF...
_Label_1515:
! ASSIGNMENT STATEMENT...
	mov	434,r13		! source line 434
	mov	"\0\0AS",r10
!   if intIsZero (t) then goto _runtimeErrorNullPointer
	load	[r14+-36],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1516 = t + 76
	load	[r14+-36],r1
	add	r1,76,r1
	store	r1,[r14+-20]
!   Data Move: *_temp_1516 = 2  (sizeInBytes=4)
	mov	2,r1
	load	[r14+-20],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	435,r13		! source line 435
	mov	"\0\0SE",r10
!   _temp_1517 = &_P_Kernel_readyList
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
	jmp	_Label_1510
_Label_1512:
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
	.word	_Label_1518
	.word	8		! total size of parameters
	.word	36		! frame size = 36
	.word	_Label_1519
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1520
	.word	12
	.word	4
	.word	_Label_1521
	.word	-16
	.word	4
	.word	_Label_1522
	.word	-20
	.word	4
	.word	_Label_1523
	.word	-24
	.word	4
	.word	_Label_1524
	.word	-28
	.word	4
	.word	_Label_1525
	.word	-9
	.word	1
	.word	_Label_1526
	.word	-32
	.word	4
	.word	_Label_1527
	.word	-36
	.word	4
	.word	0
_Label_1518:
	.ascii	"Condition"
	.ascii	"::"
	.ascii	"Broadcast\0"
	.align
_Label_1519:
	.ascii	"Pself\0"
	.align
_Label_1520:
	.byte	'P'
	.ascii	"mutex\0"
	.align
_Label_1521:
	.byte	'?'
	.ascii	"_temp_1517\0"
	.align
_Label_1522:
	.byte	'?'
	.ascii	"_temp_1516\0"
	.align
_Label_1523:
	.byte	'?'
	.ascii	"_temp_1513\0"
	.align
_Label_1524:
	.byte	'?'
	.ascii	"_temp_1509\0"
	.align
_Label_1525:
	.byte	'C'
	.ascii	"_temp_1508\0"
	.align
_Label_1526:
	.byte	'I'
	.ascii	"oldIntStat\0"
	.align
_Label_1527:
	.byte	'P'
	.ascii	"t\0"
	.align
! 
! ===============  CLASS Thread  ===============
! 
! Dispatch Table:
! 
_P_Kernel_Thread:
	.word	_Label_1528
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
_Label_1528:
	.word	1129070931		! Magic number 0x434c4153 == 'CLAS'
	.word	_Label_1529
	.word	_sourceFileName
	.word	169		! line number
	.word	4164		! size of instances, in bytes
	.word	_P_Kernel_Thread
	.word	_P_List_Listable
	.word	_P_System_Object
	.word	0
_Label_1529:
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
_Label_3845:
	push	r0
	sub	r1,1,r1
	bne	_Label_3845
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
!   _temp_1530 = &systemStack
	load	[r14+8],r1
	add	r1,88,r1
	store	r1,[r14+-188]
!   if intIsZero (_temp_1530) then goto _runtimeErrorNullPointer
	load	[r14+-188],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Data Move: *_temp_1530 = 1000  (sizeInBytes=4)
	mov	1000,r1
	load	[r14+-188],r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	457,r13		! source line 457
	mov	"\0\0AS",r10
!   _temp_1531 = &systemStack
	load	[r14+8],r1
	add	r1,88,r1
	store	r1,[r14+-184]
!   Move address of _temp_1531 [0 ] into _temp_1532
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
!   Data Move: *_temp_1532 = 606348324  (sizeInBytes=4)
	set	606348324,r1
	load	[r14+-180],r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	458,r13		! source line 458
	mov	"\0\0AS",r10
!   _temp_1533 = &systemStack
	load	[r14+8],r1
	add	r1,88,r1
	store	r1,[r14+-176]
!   Move address of _temp_1533 [999 ] into _temp_1534
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
!   Data Move: *_temp_1534 = 606348324  (sizeInBytes=4)
	set	606348324,r1
	load	[r14+-172],r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	459,r13		! source line 459
	mov	"\0\0AS",r10
!   _temp_1535 = &systemStack
	load	[r14+8],r1
	add	r1,88,r1
	store	r1,[r14+-168]
!   Move address of _temp_1535 [999 ] into _temp_1536
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
!   stackTop = _temp_1536		(4 bytes)
	load	[r14+-164],r1
	load	[r14+8],r2
	store	r1,[r2+68]
! ASSIGNMENT STATEMENT...
	mov	460,r13		! source line 460
	mov	"\0\0AS",r10
!   _temp_1537 = &regs
	load	[r14+8],r1
	add	r1,12,r1
	store	r1,[r14+-160]
!   NEW ARRAY Constructor...
!   _temp_1539 = &_temp_1538
	add	r14,-156,r1
	store	r1,[r14+-100]
!   _temp_1539 = _temp_1539 + 4
	load	[r14+-100],r1
	add	r1,4,r1
	store	r1,[r14+-100]
!   Next value...
	mov	13,r1
	store	r1,[r14+-96]
_Label_1541:
!   Data Move: *_temp_1539 = 0  (sizeInBytes=4)
	mov	0,r1
	load	[r14+-100],r2
	store	r1,[r2]
!   _temp_1539 = _temp_1539 + 4
	load	[r14+-100],r1
	add	r1,4,r1
	store	r1,[r14+-100]
!   _temp_1540 = _temp_1540 + -1
	load	[r14+-96],r1
	add	r1,-1,r1
	store	r1,[r14+-96]
!   if intNotZero (_temp_1540) then goto _Label_1541
	load	[r14+-96],r1
	cmp	r1,r0
	bne	_Label_1541
!   Initialize the array size...
	mov	13,r1
	store	r1,[r14+-156]
!   _temp_1542 = &_temp_1538
	add	r14,-156,r1
	store	r1,[r14+-92]
!   make sure array has size 13
	load	[r14+-160],r1
	load	[r1],r1
	set	13, r2
	cmp	r1,0
	be	_Label_3846
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bne	_runtimeErrorWrongArraySize
_Label_3846:
!   make sure array has size 13
	load	[r14+-92],r1
	load	[r1],r1
	set	13, r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bne	_runtimeErrorWrongArraySize
!   Data Move: *_temp_1537 = *_temp_1542  (sizeInBytes=56)
	load	[r14+-92],r5
	load	[r14+-160],r4
	mov	14,r3
_Label_3847:
	load	[r5],r1
	add	r5,4,r5
	store	r1,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_3847
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
!   _temp_1543 = &userRegs
	load	[r14+8],r1
	add	r1,4096,r1
	store	r1,[r14+-88]
!   NEW ARRAY Constructor...
!   _temp_1545 = &_temp_1544
	add	r14,-84,r1
	store	r1,[r14+-20]
!   _temp_1545 = _temp_1545 + 4
	load	[r14+-20],r1
	add	r1,4,r1
	store	r1,[r14+-20]
!   Next value...
	mov	15,r1
	store	r1,[r14+-16]
_Label_1547:
!   Data Move: *_temp_1545 = 0  (sizeInBytes=4)
	mov	0,r1
	load	[r14+-20],r2
	store	r1,[r2]
!   _temp_1545 = _temp_1545 + 4
	load	[r14+-20],r1
	add	r1,4,r1
	store	r1,[r14+-20]
!   _temp_1546 = _temp_1546 + -1
	load	[r14+-16],r1
	add	r1,-1,r1
	store	r1,[r14+-16]
!   if intNotZero (_temp_1546) then goto _Label_1547
	load	[r14+-16],r1
	cmp	r1,r0
	bne	_Label_1547
!   Initialize the array size...
	mov	15,r1
	store	r1,[r14+-84]
!   _temp_1548 = &_temp_1544
	add	r14,-84,r1
	store	r1,[r14+-12]
!   make sure array has size 15
	load	[r14+-88],r1
	load	[r1],r1
	set	15, r2
	cmp	r1,0
	be	_Label_3848
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bne	_runtimeErrorWrongArraySize
_Label_3848:
!   make sure array has size 15
	load	[r14+-12],r1
	load	[r1],r1
	set	15, r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bne	_runtimeErrorWrongArraySize
!   Data Move: *_temp_1543 = *_temp_1548  (sizeInBytes=64)
	load	[r14+-12],r5
	load	[r14+-88],r4
	mov	16,r3
_Label_3849:
	load	[r5],r1
	add	r5,4,r5
	store	r1,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_3849
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
	.word	_Label_1549
	.word	8		! total size of parameters
	.word	180		! frame size = 180
	.word	_Label_1550
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1551
	.word	12
	.word	4
	.word	_Label_1552
	.word	-12
	.word	4
	.word	_Label_1553
	.word	-16
	.word	4
	.word	_Label_1554
	.word	-20
	.word	4
	.word	_Label_1555
	.word	-84
	.word	64
	.word	_Label_1556
	.word	-88
	.word	4
	.word	_Label_1557
	.word	-92
	.word	4
	.word	_Label_1558
	.word	-96
	.word	4
	.word	_Label_1559
	.word	-100
	.word	4
	.word	_Label_1560
	.word	-156
	.word	56
	.word	_Label_1561
	.word	-160
	.word	4
	.word	_Label_1562
	.word	-164
	.word	4
	.word	_Label_1563
	.word	-168
	.word	4
	.word	_Label_1564
	.word	-172
	.word	4
	.word	_Label_1565
	.word	-176
	.word	4
	.word	_Label_1566
	.word	-180
	.word	4
	.word	_Label_1567
	.word	-184
	.word	4
	.word	_Label_1568
	.word	-188
	.word	4
	.word	0
_Label_1549:
	.ascii	"Thread"
	.ascii	"::"
	.ascii	"Init\0"
	.align
_Label_1550:
	.ascii	"Pself\0"
	.align
_Label_1551:
	.byte	'P'
	.ascii	"n\0"
	.align
_Label_1552:
	.byte	'?'
	.ascii	"_temp_1548\0"
	.align
_Label_1553:
	.byte	'?'
	.ascii	"_temp_1546\0"
	.align
_Label_1554:
	.byte	'?'
	.ascii	"_temp_1545\0"
	.align
_Label_1555:
	.byte	'?'
	.ascii	"_temp_1544\0"
	.align
_Label_1556:
	.byte	'?'
	.ascii	"_temp_1543\0"
	.align
_Label_1557:
	.byte	'?'
	.ascii	"_temp_1542\0"
	.align
_Label_1558:
	.byte	'?'
	.ascii	"_temp_1540\0"
	.align
_Label_1559:
	.byte	'?'
	.ascii	"_temp_1539\0"
	.align
_Label_1560:
	.byte	'?'
	.ascii	"_temp_1538\0"
	.align
_Label_1561:
	.byte	'?'
	.ascii	"_temp_1537\0"
	.align
_Label_1562:
	.byte	'?'
	.ascii	"_temp_1536\0"
	.align
_Label_1563:
	.byte	'?'
	.ascii	"_temp_1535\0"
	.align
_Label_1564:
	.byte	'?'
	.ascii	"_temp_1534\0"
	.align
_Label_1565:
	.byte	'?'
	.ascii	"_temp_1533\0"
	.align
_Label_1566:
	.byte	'?'
	.ascii	"_temp_1532\0"
	.align
_Label_1567:
	.byte	'?'
	.ascii	"_temp_1531\0"
	.align
_Label_1568:
	.byte	'?'
	.ascii	"_temp_1530\0"
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
_Label_3850:
	push	r0
	sub	r1,1,r1
	bne	_Label_3850
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
!   _temp_1569 = ThreadStartUp
	set	ThreadStartUp,r1
	store	r1,[r14+-20]
!   Data Move: *stackTop = _temp_1569  (sizeInBytes=4)
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
!   _temp_1571 = &_P_Kernel_readyList
	set	_P_Kernel_readyList,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=12  value=_temp_1570  sizeInBytes=4
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
	.word	_Label_1572
	.word	12		! total size of parameters
	.word	28		! frame size = 28
	.word	_Label_1573
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1574
	.word	12
	.word	4
	.word	_Label_1575
	.word	16
	.word	4
	.word	_Label_1576
	.word	-12
	.word	4
	.word	_Label_1577
	.word	-16
	.word	4
	.word	_Label_1578
	.word	-20
	.word	4
	.word	_Label_1579
	.word	-24
	.word	4
	.word	_Label_1580
	.word	-28
	.word	4
	.word	0
_Label_1572:
	.ascii	"Thread"
	.ascii	"::"
	.ascii	"Fork\0"
	.align
_Label_1573:
	.ascii	"Pself\0"
	.align
_Label_1574:
	.byte	'P'
	.ascii	"fun\0"
	.align
_Label_1575:
	.byte	'I'
	.ascii	"arg\0"
	.align
_Label_1576:
	.byte	'?'
	.ascii	"_temp_1571\0"
	.align
_Label_1577:
	.byte	'?'
	.ascii	"_temp_1570\0"
	.align
_Label_1578:
	.byte	'?'
	.ascii	"_temp_1569\0"
	.align
_Label_1579:
	.byte	'I'
	.ascii	"oldIntStat\0"
	.align
_Label_1580:
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
_Label_3851:
	push	r0
	sub	r1,1,r1
	bne	_Label_3851
	mov	491,r13		! source line 491
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! IF STATEMENT...
	mov	507,r13		! source line 507
	mov	"\0\0IF",r10
	load	[r14+8],r1
	store	r1,[r14+-32]
!   if _temp_1583 == _P_Kernel_currentThread then goto _Label_1582		(int)
	load	[r14+-32],r1
	set	_P_Kernel_currentThread,r2
	load	[r2],r2
	cmp	r1,r2
	be	_Label_1582
!	jmp	_Label_1581
_Label_1581:
! THEN...
	mov	508,r13		! source line 508
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_1584 = _StringConst_53
	set	_StringConst_53,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=8  value=_temp_1584  sizeInBytes=4
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
_Label_1582:
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
!   _temp_1585 = &_P_Kernel_readyList
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
!   if nextTh == 0 then goto _Label_1587		(int)
	load	[r14+-36],r1
	mov	0,r2
	cmp	r1,r2
	be	_Label_1587
!	jmp	_Label_1586
_Label_1586:
! THEN...
	mov	519,r13		! source line 519
	mov	"\0\0TN",r10
! IF STATEMENT...
	mov	519,r13		! source line 519
	mov	"\0\0IF",r10
!   if status != 4 then goto _Label_1589		(int)
	load	[r14+8],r1
	load	[r1+76],r1
	mov	4,r2
	cmp	r1,r2
	bne	_Label_1589
!	jmp	_Label_1588
_Label_1588:
! THEN...
	mov	520,r13		! source line 520
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_1590 = _StringConst_54
	set	_StringConst_54,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_1590  sizeInBytes=4
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
_Label_1589:
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
!   _temp_1592 = &_P_Kernel_readyList
	set	_P_Kernel_readyList,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=12  value=_temp_1591  sizeInBytes=4
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
_Label_1587:
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
	.word	_Label_1593
	.word	4		! total size of parameters
	.word	44		! frame size = 44
	.word	_Label_1594
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1595
	.word	-12
	.word	4
	.word	_Label_1596
	.word	-16
	.word	4
	.word	_Label_1597
	.word	-20
	.word	4
	.word	_Label_1598
	.word	-24
	.word	4
	.word	_Label_1599
	.word	-28
	.word	4
	.word	_Label_1600
	.word	-32
	.word	4
	.word	_Label_1601
	.word	-36
	.word	4
	.word	_Label_1602
	.word	-40
	.word	4
	.word	_Label_1603
	.word	-44
	.word	4
	.word	0
_Label_1593:
	.ascii	"Thread"
	.ascii	"::"
	.ascii	"Yield\0"
	.align
_Label_1594:
	.ascii	"Pself\0"
	.align
_Label_1595:
	.byte	'?'
	.ascii	"_temp_1592\0"
	.align
_Label_1596:
	.byte	'?'
	.ascii	"_temp_1591\0"
	.align
_Label_1597:
	.byte	'?'
	.ascii	"_temp_1590\0"
	.align
_Label_1598:
	.byte	'?'
	.ascii	"_temp_1585\0"
	.align
_Label_1599:
	.byte	'?'
	.ascii	"_temp_1584\0"
	.align
_Label_1600:
	.byte	'?'
	.ascii	"_temp_1583\0"
	.align
_Label_1601:
	.byte	'P'
	.ascii	"nextTh\0"
	.align
_Label_1602:
	.byte	'I'
	.ascii	"oldIntStat\0"
	.align
_Label_1603:
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
_Label_3852:
	push	r0
	sub	r1,1,r1
	bne	_Label_3852
	mov	531,r13		! source line 531
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! IF STATEMENT...
	mov	543,r13		! source line 543
	mov	"\0\0IF",r10
!   if _P_Kernel_currentInterruptStatus == 2 then goto _Label_1605		(int)
	set	_P_Kernel_currentInterruptStatus,r1
	load	[r1],r1
	mov	2,r2
	cmp	r1,r2
	be	_Label_1605
!	jmp	_Label_1604
_Label_1604:
! THEN...
	mov	544,r13		! source line 544
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_1606 = _StringConst_55
	set	_StringConst_55,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=8  value=_temp_1606  sizeInBytes=4
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
_Label_1605:
! IF STATEMENT...
	mov	547,r13		! source line 547
	mov	"\0\0IF",r10
	load	[r14+8],r1
	store	r1,[r14+-24]
!   if _temp_1609 == _P_Kernel_currentThread then goto _Label_1608		(int)
	load	[r14+-24],r1
	set	_P_Kernel_currentThread,r2
	load	[r2],r2
	cmp	r1,r2
	be	_Label_1608
!	jmp	_Label_1607
_Label_1607:
! THEN...
	mov	548,r13		! source line 548
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_1610 = _StringConst_56
	set	_StringConst_56,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_1610  sizeInBytes=4
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
_Label_1608:
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
!   _temp_1611 = &_P_Kernel_readyList
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
!   if intIsZero (nextTh) then goto _Label_1612
	load	[r14+-32],r1
	cmp	r1,r0
	be	_Label_1612
	jmp	_Label_1613
_Label_1612:
! THEN...
	mov	556,r13		! source line 556
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_1614 = _StringConst_57
	set	_StringConst_57,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_1614  sizeInBytes=4
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
_Label_1613:
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
	.word	_Label_1615
	.word	4		! total size of parameters
	.word	28		! frame size = 28
	.word	_Label_1616
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1617
	.word	-12
	.word	4
	.word	_Label_1618
	.word	-16
	.word	4
	.word	_Label_1619
	.word	-20
	.word	4
	.word	_Label_1620
	.word	-24
	.word	4
	.word	_Label_1621
	.word	-28
	.word	4
	.word	_Label_1622
	.word	-32
	.word	4
	.word	0
_Label_1615:
	.ascii	"Thread"
	.ascii	"::"
	.ascii	"Sleep\0"
	.align
_Label_1616:
	.ascii	"Pself\0"
	.align
_Label_1617:
	.byte	'?'
	.ascii	"_temp_1614\0"
	.align
_Label_1618:
	.byte	'?'
	.ascii	"_temp_1611\0"
	.align
_Label_1619:
	.byte	'?'
	.ascii	"_temp_1610\0"
	.align
_Label_1620:
	.byte	'?'
	.ascii	"_temp_1609\0"
	.align
_Label_1621:
	.byte	'?'
	.ascii	"_temp_1606\0"
	.align
_Label_1622:
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
_Label_3853:
	push	r0
	sub	r1,1,r1
	bne	_Label_3853
	mov	563,r13		! source line 563
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! IF STATEMENT...
	mov	569,r13		! source line 569
	mov	"\0\0IF",r10
!   _temp_1626 = &systemStack
	load	[r14+8],r1
	add	r1,88,r1
	store	r1,[r14+-36]
!   Move address of _temp_1626 [0 ] into _temp_1627
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
!   Data Move: _temp_1625 = *_temp_1627  (sizeInBytes=4)
	load	[r14+-32],r1
	load	[r1],r1
	store	r1,[r14+-40]
!   if _temp_1625 == 606348324 then goto _Label_1624		(int)
	load	[r14+-40],r1
	set	606348324,r2
	cmp	r1,r2
	be	_Label_1624
!	jmp	_Label_1623
_Label_1623:
! THEN...
	mov	570,r13		! source line 570
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_1628 = _StringConst_58
	set	_StringConst_58,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=8  value=_temp_1628  sizeInBytes=4
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
	jmp	_Label_1629
_Label_1624:
! ELSE...
	mov	571,r13		! source line 571
	mov	"\0\0EL",r10
! IF STATEMENT...
	mov	571,r13		! source line 571
	mov	"\0\0IF",r10
!   _temp_1633 = &systemStack
	load	[r14+8],r1
	add	r1,88,r1
	store	r1,[r14+-20]
!   Move address of _temp_1633 [999 ] into _temp_1634
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
!   Data Move: _temp_1632 = *_temp_1634  (sizeInBytes=4)
	load	[r14+-16],r1
	load	[r1],r1
	store	r1,[r14+-24]
!   if _temp_1632 == 606348324 then goto _Label_1631		(int)
	load	[r14+-24],r1
	set	606348324,r2
	cmp	r1,r2
	be	_Label_1631
!	jmp	_Label_1630
_Label_1630:
! THEN...
	mov	572,r13		! source line 572
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_1635 = _StringConst_59
	set	_StringConst_59,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_1635  sizeInBytes=4
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
_Label_1631:
! END IF...
_Label_1629:
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
	.word	_Label_1636
	.word	4		! total size of parameters
	.word	36		! frame size = 36
	.word	_Label_1637
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1638
	.word	-12
	.word	4
	.word	_Label_1639
	.word	-16
	.word	4
	.word	_Label_1640
	.word	-20
	.word	4
	.word	_Label_1641
	.word	-24
	.word	4
	.word	_Label_1642
	.word	-28
	.word	4
	.word	_Label_1643
	.word	-32
	.word	4
	.word	_Label_1644
	.word	-36
	.word	4
	.word	_Label_1645
	.word	-40
	.word	4
	.word	0
_Label_1636:
	.ascii	"Thread"
	.ascii	"::"
	.ascii	"CheckOverflow\0"
	.align
_Label_1637:
	.ascii	"Pself\0"
	.align
_Label_1638:
	.byte	'?'
	.ascii	"_temp_1635\0"
	.align
_Label_1639:
	.byte	'?'
	.ascii	"_temp_1634\0"
	.align
_Label_1640:
	.byte	'?'
	.ascii	"_temp_1633\0"
	.align
_Label_1641:
	.byte	'?'
	.ascii	"_temp_1632\0"
	.align
_Label_1642:
	.byte	'?'
	.ascii	"_temp_1628\0"
	.align
_Label_1643:
	.byte	'?'
	.ascii	"_temp_1627\0"
	.align
_Label_1644:
	.byte	'?'
	.ascii	"_temp_1626\0"
	.align
_Label_1645:
	.byte	'?'
	.ascii	"_temp_1625\0"
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
_Label_3854:
	push	r0
	sub	r1,1,r1
	bne	_Label_3854
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
!   _temp_1646 = _StringConst_60
	set	_StringConst_60,r1
	store	r1,[r14+-188]
!   Prepare Argument: offset=8  value=_temp_1646  sizeInBytes=4
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
!   _temp_1647 = _StringConst_61
	set	_StringConst_61,r1
	store	r1,[r14+-184]
!   Prepare Argument: offset=8  value=_temp_1647  sizeInBytes=4
	load	[r14+-184],r1
	store	r1,[r15+0]
!   Call the function
	mov	587,r13		! source line 587
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
	load	[r14+8],r1
	store	r1,[r14+-180]
!   Prepare Argument: offset=8  value=_temp_1648  sizeInBytes=4
	load	[r14+-180],r1
	store	r1,[r15+0]
!   Call the function
	mov	588,r13		! source line 588
	mov	"\0\0CE",r10
	call	printHex
! CALL STATEMENT...
!   _temp_1649 = _StringConst_62
	set	_StringConst_62,r1
	store	r1,[r14+-176]
!   Prepare Argument: offset=8  value=_temp_1649  sizeInBytes=4
	load	[r14+-176],r1
	store	r1,[r15+0]
!   Call the function
	mov	589,r13		! source line 589
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_1650 = _StringConst_63
	set	_StringConst_63,r1
	store	r1,[r14+-172]
!   Prepare Argument: offset=8  value=_temp_1650  sizeInBytes=4
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
!   _temp_1655 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-168]
!   Calculate and save the FOR-LOOP ending value
!   _temp_1656 = 12		(4 bytes)
	mov	12,r1
	store	r1,[r14+-164]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_1655  (sizeInBytes=4)
	load	[r14+-168],r1
	store	r1,[r14+-192]
_Label_1651:
!   Perform the FOR-LOOP termination test
!   if i > _temp_1656 then goto _Label_1654		
	load	[r14+-192],r1
	load	[r14+-164],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_1654
_Label_1652:
	mov	591,r13		! source line 591
	mov	"\0\0FB",r10
! CALL STATEMENT...
!   _temp_1657 = _StringConst_64
	set	_StringConst_64,r1
	store	r1,[r14+-160]
!   Prepare Argument: offset=8  value=_temp_1657  sizeInBytes=4
	load	[r14+-160],r1
	store	r1,[r15+0]
!   Call the function
	mov	592,r13		! source line 592
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_1658 = i + 2		(int)
	load	[r14+-192],r1
	mov	2,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-156]
!   Prepare Argument: offset=8  value=_temp_1658  sizeInBytes=4
	load	[r14+-156],r1
	store	r1,[r15+0]
!   Call the function
	mov	593,r13		! source line 593
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   _temp_1659 = _StringConst_65
	set	_StringConst_65,r1
	store	r1,[r14+-152]
!   Prepare Argument: offset=8  value=_temp_1659  sizeInBytes=4
	load	[r14+-152],r1
	store	r1,[r15+0]
!   Call the function
	mov	594,r13		! source line 594
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_1661 = &regs
	load	[r14+8],r1
	add	r1,12,r1
	store	r1,[r14+-144]
!   Move address of _temp_1661 [i ] into _temp_1662
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
!   Data Move: _temp_1660 = *_temp_1662  (sizeInBytes=4)
	load	[r14+-140],r1
	load	[r1],r1
	store	r1,[r14+-148]
!   Prepare Argument: offset=8  value=_temp_1660  sizeInBytes=4
	load	[r14+-148],r1
	store	r1,[r15+0]
!   Call the function
	mov	595,r13		! source line 595
	mov	"\0\0CE",r10
	call	printHex
! CALL STATEMENT...
!   _temp_1663 = _StringConst_66
	set	_StringConst_66,r1
	store	r1,[r14+-136]
!   Prepare Argument: offset=8  value=_temp_1663  sizeInBytes=4
	load	[r14+-136],r1
	store	r1,[r15+0]
!   Call the function
	mov	596,r13		! source line 596
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_1665 = &regs
	load	[r14+8],r1
	add	r1,12,r1
	store	r1,[r14+-128]
!   Move address of _temp_1665 [i ] into _temp_1666
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
!   Data Move: _temp_1664 = *_temp_1666  (sizeInBytes=4)
	load	[r14+-124],r1
	load	[r1],r1
	store	r1,[r14+-132]
!   Prepare Argument: offset=8  value=_temp_1664  sizeInBytes=4
	load	[r14+-132],r1
	store	r1,[r15+0]
!   Call the function
	mov	597,r13		! source line 597
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   _temp_1667 = _StringConst_67
	set	_StringConst_67,r1
	store	r1,[r14+-120]
!   Prepare Argument: offset=8  value=_temp_1667  sizeInBytes=4
	load	[r14+-120],r1
	store	r1,[r15+0]
!   Call the function
	mov	598,r13		! source line 598
	mov	"\0\0CE",r10
	call	print
!   Increment the FOR-LOOP index variable and jump back
_Label_1653:
!   i = i + 1
	load	[r14+-192],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-192]
	jmp	_Label_1651
! END FOR
_Label_1654:
! CALL STATEMENT...
!   _temp_1668 = _StringConst_68
	set	_StringConst_68,r1
	store	r1,[r14+-116]
!   _temp_1669 = stackTop		(4 bytes)
	load	[r14+8],r1
	load	[r1+68],r1
	store	r1,[r14+-112]
!   Prepare Argument: offset=8  value=_temp_1668  sizeInBytes=4
	load	[r14+-116],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=_temp_1669  sizeInBytes=4
	load	[r14+-112],r1
	store	r1,[r15+4]
!   Call the function
	mov	600,r13		! source line 600
	mov	"\0\0CA",r10
	call	_P_System_printHexVar
! CALL STATEMENT...
!   _temp_1670 = _StringConst_69
	set	_StringConst_69,r1
	store	r1,[r14+-108]
!   _temp_1672 = &systemStack
	load	[r14+8],r1
	add	r1,88,r1
	store	r1,[r14+-100]
!   Move address of _temp_1672 [0 ] into _temp_1673
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
!   _temp_1671 = _temp_1673		(4 bytes)
	load	[r14+-96],r1
	store	r1,[r14+-104]
!   Prepare Argument: offset=8  value=_temp_1670  sizeInBytes=4
	load	[r14+-108],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=_temp_1671  sizeInBytes=4
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
	be	_Label_1676
	cmp	r1,2
	be	_Label_1677
	cmp	r1,3
	be	_Label_1678
	cmp	r1,4
	be	_Label_1679
	cmp	r1,5
	be	_Label_1680
	jmp	_Label_1674
! CASE 1...
_Label_1676:
! CALL STATEMENT...
!   _temp_1681 = _StringConst_70
	set	_StringConst_70,r1
	store	r1,[r14+-92]
!   Prepare Argument: offset=8  value=_temp_1681  sizeInBytes=4
	load	[r14+-92],r1
	store	r1,[r15+0]
!   Call the function
	mov	604,r13		! source line 604
	mov	"\0\0CE",r10
	call	print
! BREAK STATEMENT...
	mov	605,r13		! source line 605
	mov	"\0\0BR",r10
	jmp	_Label_1675
! CASE 2...
_Label_1677:
! CALL STATEMENT...
!   _temp_1682 = _StringConst_71
	set	_StringConst_71,r1
	store	r1,[r14+-88]
!   Prepare Argument: offset=8  value=_temp_1682  sizeInBytes=4
	load	[r14+-88],r1
	store	r1,[r15+0]
!   Call the function
	mov	607,r13		! source line 607
	mov	"\0\0CE",r10
	call	print
! BREAK STATEMENT...
	mov	608,r13		! source line 608
	mov	"\0\0BR",r10
	jmp	_Label_1675
! CASE 3...
_Label_1678:
! CALL STATEMENT...
!   _temp_1683 = _StringConst_72
	set	_StringConst_72,r1
	store	r1,[r14+-84]
!   Prepare Argument: offset=8  value=_temp_1683  sizeInBytes=4
	load	[r14+-84],r1
	store	r1,[r15+0]
!   Call the function
	mov	610,r13		! source line 610
	mov	"\0\0CE",r10
	call	print
! BREAK STATEMENT...
	mov	611,r13		! source line 611
	mov	"\0\0BR",r10
	jmp	_Label_1675
! CASE 4...
_Label_1679:
! CALL STATEMENT...
!   _temp_1684 = _StringConst_73
	set	_StringConst_73,r1
	store	r1,[r14+-80]
!   Prepare Argument: offset=8  value=_temp_1684  sizeInBytes=4
	load	[r14+-80],r1
	store	r1,[r15+0]
!   Call the function
	mov	613,r13		! source line 613
	mov	"\0\0CE",r10
	call	print
! BREAK STATEMENT...
	mov	614,r13		! source line 614
	mov	"\0\0BR",r10
	jmp	_Label_1675
! CASE 5...
_Label_1680:
! CALL STATEMENT...
!   _temp_1685 = _StringConst_74
	set	_StringConst_74,r1
	store	r1,[r14+-76]
!   Prepare Argument: offset=8  value=_temp_1685  sizeInBytes=4
	load	[r14+-76],r1
	store	r1,[r15+0]
!   Call the function
	mov	616,r13		! source line 616
	mov	"\0\0CE",r10
	call	print
! BREAK STATEMENT...
	mov	617,r13		! source line 617
	mov	"\0\0BR",r10
	jmp	_Label_1675
! DEFAULT CASE...
_Label_1674:
! CALL STATEMENT...
!   _temp_1686 = _StringConst_75
	set	_StringConst_75,r1
	store	r1,[r14+-72]
!   Prepare Argument: offset=8  value=_temp_1686  sizeInBytes=4
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
_Label_1675:
! CALL STATEMENT...
!   _temp_1687 = _StringConst_76
	set	_StringConst_76,r1
	store	r1,[r14+-68]
!   Prepare Argument: offset=8  value=_temp_1687  sizeInBytes=4
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
!   _temp_1688 = _StringConst_77
	set	_StringConst_77,r1
	store	r1,[r14+-64]
!   Prepare Argument: offset=8  value=_temp_1688  sizeInBytes=4
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
!   _temp_1693 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-60]
!   Calculate and save the FOR-LOOP ending value
!   _temp_1694 = 14		(4 bytes)
	mov	14,r1
	store	r1,[r14+-56]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_1693  (sizeInBytes=4)
	load	[r14+-60],r1
	store	r1,[r14+-192]
_Label_1689:
!   Perform the FOR-LOOP termination test
!   if i > _temp_1694 then goto _Label_1692		
	load	[r14+-192],r1
	load	[r14+-56],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_1692
_Label_1690:
	mov	625,r13		! source line 625
	mov	"\0\0FB",r10
! CALL STATEMENT...
!   _temp_1695 = _StringConst_78
	set	_StringConst_78,r1
	store	r1,[r14+-52]
!   Prepare Argument: offset=8  value=_temp_1695  sizeInBytes=4
	load	[r14+-52],r1
	store	r1,[r15+0]
!   Call the function
	mov	626,r13		! source line 626
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_1696 = i + 1		(int)
	load	[r14+-192],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-48]
!   Prepare Argument: offset=8  value=_temp_1696  sizeInBytes=4
	load	[r14+-48],r1
	store	r1,[r15+0]
!   Call the function
	mov	627,r13		! source line 627
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   _temp_1697 = _StringConst_79
	set	_StringConst_79,r1
	store	r1,[r14+-44]
!   Prepare Argument: offset=8  value=_temp_1697  sizeInBytes=4
	load	[r14+-44],r1
	store	r1,[r15+0]
!   Call the function
	mov	628,r13		! source line 628
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_1699 = &userRegs
	load	[r14+8],r1
	add	r1,4096,r1
	store	r1,[r14+-36]
!   Move address of _temp_1699 [i ] into _temp_1700
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
!   Data Move: _temp_1698 = *_temp_1700  (sizeInBytes=4)
	load	[r14+-32],r1
	load	[r1],r1
	store	r1,[r14+-40]
!   Prepare Argument: offset=8  value=_temp_1698  sizeInBytes=4
	load	[r14+-40],r1
	store	r1,[r15+0]
!   Call the function
	mov	629,r13		! source line 629
	mov	"\0\0CE",r10
	call	printHex
! CALL STATEMENT...
!   _temp_1701 = _StringConst_80
	set	_StringConst_80,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=8  value=_temp_1701  sizeInBytes=4
	load	[r14+-28],r1
	store	r1,[r15+0]
!   Call the function
	mov	630,r13		! source line 630
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_1703 = &userRegs
	load	[r14+8],r1
	add	r1,4096,r1
	store	r1,[r14+-20]
!   Move address of _temp_1703 [i ] into _temp_1704
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
!   Data Move: _temp_1702 = *_temp_1704  (sizeInBytes=4)
	load	[r14+-16],r1
	load	[r1],r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=8  value=_temp_1702  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+0]
!   Call the function
	mov	631,r13		! source line 631
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   _temp_1705 = _StringConst_81
	set	_StringConst_81,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_1705  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	632,r13		! source line 632
	mov	"\0\0CE",r10
	call	print
!   Increment the FOR-LOOP index variable and jump back
_Label_1691:
!   i = i + 1
	load	[r14+-192],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-192]
	jmp	_Label_1689
! END FOR
_Label_1692:
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
	.word	_Label_1706
	.word	4		! total size of parameters
	.word	196		! frame size = 196
	.word	_Label_1707
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1708
	.word	-12
	.word	4
	.word	_Label_1709
	.word	-16
	.word	4
	.word	_Label_1710
	.word	-20
	.word	4
	.word	_Label_1711
	.word	-24
	.word	4
	.word	_Label_1712
	.word	-28
	.word	4
	.word	_Label_1713
	.word	-32
	.word	4
	.word	_Label_1714
	.word	-36
	.word	4
	.word	_Label_1715
	.word	-40
	.word	4
	.word	_Label_1716
	.word	-44
	.word	4
	.word	_Label_1717
	.word	-48
	.word	4
	.word	_Label_1718
	.word	-52
	.word	4
	.word	_Label_1719
	.word	-56
	.word	4
	.word	_Label_1720
	.word	-60
	.word	4
	.word	_Label_1721
	.word	-64
	.word	4
	.word	_Label_1722
	.word	-68
	.word	4
	.word	_Label_1723
	.word	-72
	.word	4
	.word	_Label_1724
	.word	-76
	.word	4
	.word	_Label_1725
	.word	-80
	.word	4
	.word	_Label_1726
	.word	-84
	.word	4
	.word	_Label_1727
	.word	-88
	.word	4
	.word	_Label_1728
	.word	-92
	.word	4
	.word	_Label_1729
	.word	-96
	.word	4
	.word	_Label_1730
	.word	-100
	.word	4
	.word	_Label_1731
	.word	-104
	.word	4
	.word	_Label_1732
	.word	-108
	.word	4
	.word	_Label_1733
	.word	-112
	.word	4
	.word	_Label_1734
	.word	-116
	.word	4
	.word	_Label_1735
	.word	-120
	.word	4
	.word	_Label_1736
	.word	-124
	.word	4
	.word	_Label_1737
	.word	-128
	.word	4
	.word	_Label_1738
	.word	-132
	.word	4
	.word	_Label_1739
	.word	-136
	.word	4
	.word	_Label_1740
	.word	-140
	.word	4
	.word	_Label_1741
	.word	-144
	.word	4
	.word	_Label_1742
	.word	-148
	.word	4
	.word	_Label_1743
	.word	-152
	.word	4
	.word	_Label_1744
	.word	-156
	.word	4
	.word	_Label_1745
	.word	-160
	.word	4
	.word	_Label_1746
	.word	-164
	.word	4
	.word	_Label_1747
	.word	-168
	.word	4
	.word	_Label_1748
	.word	-172
	.word	4
	.word	_Label_1749
	.word	-176
	.word	4
	.word	_Label_1750
	.word	-180
	.word	4
	.word	_Label_1751
	.word	-184
	.word	4
	.word	_Label_1752
	.word	-188
	.word	4
	.word	_Label_1753
	.word	-192
	.word	4
	.word	_Label_1754
	.word	-196
	.word	4
	.word	0
_Label_1706:
	.ascii	"Thread"
	.ascii	"::"
	.ascii	"Print\0"
	.align
_Label_1707:
	.ascii	"Pself\0"
	.align
_Label_1708:
	.byte	'?'
	.ascii	"_temp_1705\0"
	.align
_Label_1709:
	.byte	'?'
	.ascii	"_temp_1704\0"
	.align
_Label_1710:
	.byte	'?'
	.ascii	"_temp_1703\0"
	.align
_Label_1711:
	.byte	'?'
	.ascii	"_temp_1702\0"
	.align
_Label_1712:
	.byte	'?'
	.ascii	"_temp_1701\0"
	.align
_Label_1713:
	.byte	'?'
	.ascii	"_temp_1700\0"
	.align
_Label_1714:
	.byte	'?'
	.ascii	"_temp_1699\0"
	.align
_Label_1715:
	.byte	'?'
	.ascii	"_temp_1698\0"
	.align
_Label_1716:
	.byte	'?'
	.ascii	"_temp_1697\0"
	.align
_Label_1717:
	.byte	'?'
	.ascii	"_temp_1696\0"
	.align
_Label_1718:
	.byte	'?'
	.ascii	"_temp_1695\0"
	.align
_Label_1719:
	.byte	'?'
	.ascii	"_temp_1694\0"
	.align
_Label_1720:
	.byte	'?'
	.ascii	"_temp_1693\0"
	.align
_Label_1721:
	.byte	'?'
	.ascii	"_temp_1688\0"
	.align
_Label_1722:
	.byte	'?'
	.ascii	"_temp_1687\0"
	.align
_Label_1723:
	.byte	'?'
	.ascii	"_temp_1686\0"
	.align
_Label_1724:
	.byte	'?'
	.ascii	"_temp_1685\0"
	.align
_Label_1725:
	.byte	'?'
	.ascii	"_temp_1684\0"
	.align
_Label_1726:
	.byte	'?'
	.ascii	"_temp_1683\0"
	.align
_Label_1727:
	.byte	'?'
	.ascii	"_temp_1682\0"
	.align
_Label_1728:
	.byte	'?'
	.ascii	"_temp_1681\0"
	.align
_Label_1729:
	.byte	'?'
	.ascii	"_temp_1673\0"
	.align
_Label_1730:
	.byte	'?'
	.ascii	"_temp_1672\0"
	.align
_Label_1731:
	.byte	'?'
	.ascii	"_temp_1671\0"
	.align
_Label_1732:
	.byte	'?'
	.ascii	"_temp_1670\0"
	.align
_Label_1733:
	.byte	'?'
	.ascii	"_temp_1669\0"
	.align
_Label_1734:
	.byte	'?'
	.ascii	"_temp_1668\0"
	.align
_Label_1735:
	.byte	'?'
	.ascii	"_temp_1667\0"
	.align
_Label_1736:
	.byte	'?'
	.ascii	"_temp_1666\0"
	.align
_Label_1737:
	.byte	'?'
	.ascii	"_temp_1665\0"
	.align
_Label_1738:
	.byte	'?'
	.ascii	"_temp_1664\0"
	.align
_Label_1739:
	.byte	'?'
	.ascii	"_temp_1663\0"
	.align
_Label_1740:
	.byte	'?'
	.ascii	"_temp_1662\0"
	.align
_Label_1741:
	.byte	'?'
	.ascii	"_temp_1661\0"
	.align
_Label_1742:
	.byte	'?'
	.ascii	"_temp_1660\0"
	.align
_Label_1743:
	.byte	'?'
	.ascii	"_temp_1659\0"
	.align
_Label_1744:
	.byte	'?'
	.ascii	"_temp_1658\0"
	.align
_Label_1745:
	.byte	'?'
	.ascii	"_temp_1657\0"
	.align
_Label_1746:
	.byte	'?'
	.ascii	"_temp_1656\0"
	.align
_Label_1747:
	.byte	'?'
	.ascii	"_temp_1655\0"
	.align
_Label_1748:
	.byte	'?'
	.ascii	"_temp_1650\0"
	.align
_Label_1749:
	.byte	'?'
	.ascii	"_temp_1649\0"
	.align
_Label_1750:
	.byte	'?'
	.ascii	"_temp_1648\0"
	.align
_Label_1751:
	.byte	'?'
	.ascii	"_temp_1647\0"
	.align
_Label_1752:
	.byte	'?'
	.ascii	"_temp_1646\0"
	.align
_Label_1753:
	.byte	'I'
	.ascii	"i\0"
	.align
_Label_1754:
	.byte	'I'
	.ascii	"oldStatus\0"
	.align
! 
! ===============  CLASS ThreadManager  ===============
! 
! Dispatch Table:
! 
_P_Kernel_ThreadManager:
	.word	_Label_1755
	jmp	_Method_P_Kernel_ThreadManager_1	! 4:	Init
	jmp	_Method_P_Kernel_ThreadManager_2	! 8:	Print
	jmp	_Method_P_Kernel_ThreadManager_3	! 12:	GetANewThread
	jmp	_Method_P_Kernel_ThreadManager_4	! 16:	FreeThread
	.word	0
! 
! Class descriptor:
! 
_Label_1755:
	.word	1129070931		! Magic number 0x434c4153 == 'CLAS'
	.word	_Label_1756
	.word	_sourceFileName
	.word	196		! line number
	.word	41696		! size of instances, in bytes
	.word	_P_Kernel_ThreadManager
	.word	_P_System_Object
	.word	0
_Label_1756:
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
_Label_3855:
	push	r0
	sub	r1,1,r1
	bne	_Label_3855
	mov	689,r13		! source line 689
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   _temp_1757 = _StringConst_82
	set	_StringConst_82,r1
	set	-45880,r2
	store	r1,[r14+r2]
!   Prepare Argument: offset=8  value=_temp_1757  sizeInBytes=4
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
!   _temp_1758 = &threadTable
	load	[r14+8],r1
	add	r1,4,r1
	set	-45876,r2
	store	r1,[r14+r2]
!   NEW ARRAY Constructor...
!   _temp_1760 = &_temp_1759
	set	-45872,r1
	add	r14,r1,r1
	store	r1,[r14+-4228]
!   _temp_1760 = _temp_1760 + 4
	load	[r14+-4228],r1
	add	r1,4,r1
	store	r1,[r14+-4228]
!   Next value...
!   NEW CLASS Constructor...
!   ZeroMemory: _temp_1762 = zeros  (sizeInBytes=4164)
	add	r14,-4220,r4
	mov	1041,r3
_Label_3856:
	store	r0,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_3856
!   _temp_1762 = _P_Kernel_Thread
	set	_P_Kernel_Thread,r1
	store	r1,[r14+-4220]
	mov	10,r1
	store	r1,[r14+-4224]
_Label_1764:
!   Data Move: *_temp_1760 = _temp_1762  (sizeInBytes=4164)
	add	r14,-4220,r5
	load	[r14+-4228],r4
	mov	1041,r3
_Label_3857:
	load	[r5],r1
	add	r5,4,r5
	store	r1,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_3857
!   _temp_1760 = _temp_1760 + 4164
	load	[r14+-4228],r1
	add	r1,4164,r1
	store	r1,[r14+-4228]
!   _temp_1761 = _temp_1761 + -1
	load	[r14+-4224],r1
	add	r1,-1,r1
	store	r1,[r14+-4224]
!   if intNotZero (_temp_1761) then goto _Label_1764
	load	[r14+-4224],r1
	cmp	r1,r0
	bne	_Label_1764
!   Initialize the array size...
	mov	10,r1
	set	-45872,r2
	store	r1,[r14+r2]
!   _temp_1765 = &_temp_1759
	set	-45872,r1
	add	r14,r1,r1
	store	r1,[r14+-52]
!   make sure array has size 10
	set	-45876,r1
	load	[r14+r1],r1
	load	[r1],r1
	set	10, r2
	cmp	r1,0
	be	_Label_3858
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bne	_runtimeErrorWrongArraySize
_Label_3858:
!   make sure array has size 10
	load	[r14+-52],r1
	load	[r1],r1
	set	10, r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bne	_runtimeErrorWrongArraySize
!   Data Move: *_temp_1758 = *_temp_1765  (sizeInBytes=41644)
	load	[r14+-52],r5
	set	-45876,r4
	load	[r14+r4],r4
	mov	10411,r3
_Label_3859:
	load	[r5],r1
	add	r5,4,r5
	store	r1,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_3859
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
_Label_1767:
!   if i >= 10 then goto _Label_1769		(int)
	set	-45884,r1
	load	[r14+r1],r1
	mov	10,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_1769
!	jmp	_Label_1768
_Label_1768:
	mov	700,r13		! source line 700
	mov	"\0\0WB",r10
! ASSIGNMENT STATEMENT...
	mov	701,r13		! source line 701
	mov	"\0\0AS",r10
!   _temp_1770 = &threadTable
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-44]
!   Move address of _temp_1770 [i ] into _temp_1771
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
!   thread = _temp_1771		(4 bytes)
	load	[r14+-40],r1
	set	-45888,r2
	store	r1,[r14+r2]
! SEND STATEMENT...
	mov	702,r13		! source line 702
	mov	"\0\0SE",r10
!   _temp_1772 = _StringConst_83
	set	_StringConst_83,r1
	store	r1,[r14+-36]
!   if intIsZero (thread) then goto _runtimeErrorNullPointer
	set	-45888,r1
	load	[r14+r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Prepare Argument: offset=12  value=_temp_1772  sizeInBytes=4
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
!   _temp_1773 = thread + 76
	set	-45888,r1
	load	[r14+r1],r1
	add	r1,76,r1
	store	r1,[r14+-32]
!   Data Move: *_temp_1773 = 5  (sizeInBytes=4)
	mov	5,r1
	load	[r14+-32],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	704,r13		! source line 704
	mov	"\0\0SE",r10
!   _temp_1774 = &freeList
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
	jmp	_Label_1767
_Label_1769:
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
!   _temp_1776 = &threadManagerLock
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
!   _temp_1778 = &aThreadBecameFree
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
	.word	_Label_1779
	.word	4		! total size of parameters
	.word	45888		! frame size = 45888
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
	.word	_Label_1789
	.word	-44
	.word	4
	.word	_Label_1790
	.word	-48
	.word	4
	.word	_Label_1791
	.word	-52
	.word	4
	.word	_Label_1792
	.word	-56
	.word	4
	.word	_Label_1793
	.word	-4220
	.word	4164
	.word	_Label_1794
	.word	-4224
	.word	4
	.word	_Label_1795
	.word	-4228
	.word	4
	.word	_Label_1796
	.word	-45872
	.word	41644
	.word	_Label_1797
	.word	-45876
	.word	4
	.word	_Label_1798
	.word	-45880
	.word	4
	.word	_Label_1799
	.word	-45884
	.word	4
	.word	_Label_1800
	.word	-45888
	.word	4
	.word	0
_Label_1779:
	.ascii	"ThreadManager"
	.ascii	"::"
	.ascii	"Init\0"
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
	.ascii	"_temp_1774\0"
	.align
_Label_1786:
	.byte	'?'
	.ascii	"_temp_1773\0"
	.align
_Label_1787:
	.byte	'?'
	.ascii	"_temp_1772\0"
	.align
_Label_1788:
	.byte	'?'
	.ascii	"_temp_1771\0"
	.align
_Label_1789:
	.byte	'?'
	.ascii	"_temp_1770\0"
	.align
_Label_1790:
	.byte	'?'
	.ascii	"_temp_1766\0"
	.align
_Label_1791:
	.byte	'?'
	.ascii	"_temp_1765\0"
	.align
_Label_1792:
	.byte	'?'
	.ascii	"_temp_1763\0"
	.align
_Label_1793:
	.byte	'?'
	.ascii	"_temp_1762\0"
	.align
_Label_1794:
	.byte	'?'
	.ascii	"_temp_1761\0"
	.align
_Label_1795:
	.byte	'?'
	.ascii	"_temp_1760\0"
	.align
_Label_1796:
	.byte	'?'
	.ascii	"_temp_1759\0"
	.align
_Label_1797:
	.byte	'?'
	.ascii	"_temp_1758\0"
	.align
_Label_1798:
	.byte	'?'
	.ascii	"_temp_1757\0"
	.align
_Label_1799:
	.byte	'I'
	.ascii	"i\0"
	.align
_Label_1800:
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
_Label_3860:
	push	r0
	sub	r1,1,r1
	bne	_Label_3860
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
!   _temp_1801 = _StringConst_84
	set	_StringConst_84,r1
	store	r1,[r14+-52]
!   Prepare Argument: offset=8  value=_temp_1801  sizeInBytes=4
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
!   _temp_1806 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-48]
!   Calculate and save the FOR-LOOP ending value
!   _temp_1807 = 9		(4 bytes)
	mov	9,r1
	store	r1,[r14+-44]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_1806  (sizeInBytes=4)
	load	[r14+-48],r1
	store	r1,[r14+-56]
_Label_1802:
!   Perform the FOR-LOOP termination test
!   if i > _temp_1807 then goto _Label_1805		
	load	[r14+-56],r1
	load	[r14+-44],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_1805
_Label_1803:
	mov	723,r13		! source line 723
	mov	"\0\0FB",r10
! CALL STATEMENT...
!   _temp_1808 = _StringConst_85
	set	_StringConst_85,r1
	store	r1,[r14+-40]
!   Prepare Argument: offset=8  value=_temp_1808  sizeInBytes=4
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
!   _temp_1809 = _StringConst_86
	set	_StringConst_86,r1
	store	r1,[r14+-36]
!   Prepare Argument: offset=8  value=_temp_1809  sizeInBytes=4
	load	[r14+-36],r1
	store	r1,[r15+0]
!   Call the function
	mov	726,r13		! source line 726
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_1811 = &threadTable
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-28]
!   Move address of _temp_1811 [i ] into _temp_1812
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
!   _temp_1810 = _temp_1812		(4 bytes)
	load	[r14+-24],r1
	store	r1,[r14+-32]
!   Prepare Argument: offset=8  value=_temp_1810  sizeInBytes=4
	load	[r14+-32],r1
	store	r1,[r15+0]
!   Call the function
	mov	727,r13		! source line 727
	mov	"\0\0CA",r10
	call	_function_196_ThreadPrintShort
!   Increment the FOR-LOOP index variable and jump back
_Label_1804:
!   i = i + 1
	load	[r14+-56],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-56]
	jmp	_Label_1802
! END FOR
_Label_1805:
! CALL STATEMENT...
!   _temp_1813 = _StringConst_87
	set	_StringConst_87,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_1813  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   Call the function
	mov	729,r13		! source line 729
	mov	"\0\0CE",r10
	call	print
! SEND STATEMENT...
	mov	730,r13		! source line 730
	mov	"\0\0SE",r10
!   _temp_1814 = _function_195_PrintObjectAddr
	set	_function_195_PrintObjectAddr,r1
	store	r1,[r14+-16]
!   _temp_1815 = &freeList
	set	41648,r11
	load	[r14+8],r1
	add	r1,r11,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=12  value=_temp_1814  sizeInBytes=4
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
	.word	_Label_1816
	.word	4		! total size of parameters
	.word	60		! frame size = 60
	.word	_Label_1817
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1818
	.word	-12
	.word	4
	.word	_Label_1819
	.word	-16
	.word	4
	.word	_Label_1820
	.word	-20
	.word	4
	.word	_Label_1821
	.word	-24
	.word	4
	.word	_Label_1822
	.word	-28
	.word	4
	.word	_Label_1823
	.word	-32
	.word	4
	.word	_Label_1824
	.word	-36
	.word	4
	.word	_Label_1825
	.word	-40
	.word	4
	.word	_Label_1826
	.word	-44
	.word	4
	.word	_Label_1827
	.word	-48
	.word	4
	.word	_Label_1828
	.word	-52
	.word	4
	.word	_Label_1829
	.word	-56
	.word	4
	.word	_Label_1830
	.word	-60
	.word	4
	.word	0
_Label_1816:
	.ascii	"ThreadManager"
	.ascii	"::"
	.ascii	"Print\0"
	.align
_Label_1817:
	.ascii	"Pself\0"
	.align
_Label_1818:
	.byte	'?'
	.ascii	"_temp_1815\0"
	.align
_Label_1819:
	.byte	'?'
	.ascii	"_temp_1814\0"
	.align
_Label_1820:
	.byte	'?'
	.ascii	"_temp_1813\0"
	.align
_Label_1821:
	.byte	'?'
	.ascii	"_temp_1812\0"
	.align
_Label_1822:
	.byte	'?'
	.ascii	"_temp_1811\0"
	.align
_Label_1823:
	.byte	'?'
	.ascii	"_temp_1810\0"
	.align
_Label_1824:
	.byte	'?'
	.ascii	"_temp_1809\0"
	.align
_Label_1825:
	.byte	'?'
	.ascii	"_temp_1808\0"
	.align
_Label_1826:
	.byte	'?'
	.ascii	"_temp_1807\0"
	.align
_Label_1827:
	.byte	'?'
	.ascii	"_temp_1806\0"
	.align
_Label_1828:
	.byte	'?'
	.ascii	"_temp_1801\0"
	.align
_Label_1829:
	.byte	'I'
	.ascii	"i\0"
	.align
_Label_1830:
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
_Label_3861:
	push	r0
	sub	r1,1,r1
	bne	_Label_3861
	mov	737,r13		! source line 737
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! SEND STATEMENT...
	mov	745,r13		! source line 745
	mov	"\0\0SE",r10
!   _temp_1831 = &threadManagerLock
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
!   _temp_1832 = &freeList
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
_Label_1833:
!   if intIsZero (thread) then goto _Label_1834
	load	[r14+-36],r1
	cmp	r1,r0
	be	_Label_1834
	jmp	_Label_1835
_Label_1834:
	mov	747,r13		! source line 747
	mov	"\0\0WB",r10
! SEND STATEMENT...
	mov	748,r13		! source line 748
	mov	"\0\0SE",r10
!   _temp_1836 = &threadManagerLock
	set	41660,r11
	load	[r14+8],r1
	add	r1,r11,r1
	store	r1,[r14+-24]
!   _temp_1837 = &aThreadBecameFree
	set	41680,r11
	load	[r14+8],r1
	add	r1,r11,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=12  value=_temp_1836  sizeInBytes=4
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
!   _temp_1838 = &freeList
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
	jmp	_Label_1833
_Label_1835:
! SEND STATEMENT...
	mov	751,r13		! source line 751
	mov	"\0\0SE",r10
!   _temp_1839 = &threadManagerLock
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
	.word	_Label_1840
	.word	4		! total size of parameters
	.word	36		! frame size = 36
	.word	_Label_1841
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1842
	.word	-12
	.word	4
	.word	_Label_1843
	.word	-16
	.word	4
	.word	_Label_1844
	.word	-20
	.word	4
	.word	_Label_1845
	.word	-24
	.word	4
	.word	_Label_1846
	.word	-28
	.word	4
	.word	_Label_1847
	.word	-32
	.word	4
	.word	_Label_1848
	.word	-36
	.word	4
	.word	0
_Label_1840:
	.ascii	"ThreadManager"
	.ascii	"::"
	.ascii	"GetANewThread\0"
	.align
_Label_1841:
	.ascii	"Pself\0"
	.align
_Label_1842:
	.byte	'?'
	.ascii	"_temp_1839\0"
	.align
_Label_1843:
	.byte	'?'
	.ascii	"_temp_1838\0"
	.align
_Label_1844:
	.byte	'?'
	.ascii	"_temp_1837\0"
	.align
_Label_1845:
	.byte	'?'
	.ascii	"_temp_1836\0"
	.align
_Label_1846:
	.byte	'?'
	.ascii	"_temp_1832\0"
	.align
_Label_1847:
	.byte	'?'
	.ascii	"_temp_1831\0"
	.align
_Label_1848:
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
_Label_3862:
	push	r0
	sub	r1,1,r1
	bne	_Label_3862
	mov	757,r13		! source line 757
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! SEND STATEMENT...
	mov	762,r13		! source line 762
	mov	"\0\0SE",r10
!   _temp_1849 = &threadManagerLock
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
!   _temp_1850 = &freeList
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
!   _temp_1851 = &threadManagerLock
	set	41660,r11
	load	[r14+8],r1
	add	r1,r11,r1
	store	r1,[r14+-20]
!   _temp_1852 = &aThreadBecameFree
	set	41680,r11
	load	[r14+8],r1
	add	r1,r11,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=12  value=_temp_1851  sizeInBytes=4
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
!   _temp_1853 = &threadManagerLock
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
	.word	_Label_1854
	.word	8		! total size of parameters
	.word	28		! frame size = 28
	.word	_Label_1855
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1856
	.word	12
	.word	4
	.word	_Label_1857
	.word	-12
	.word	4
	.word	_Label_1858
	.word	-16
	.word	4
	.word	_Label_1859
	.word	-20
	.word	4
	.word	_Label_1860
	.word	-24
	.word	4
	.word	_Label_1861
	.word	-28
	.word	4
	.word	0
_Label_1854:
	.ascii	"ThreadManager"
	.ascii	"::"
	.ascii	"FreeThread\0"
	.align
_Label_1855:
	.ascii	"Pself\0"
	.align
_Label_1856:
	.byte	'P'
	.ascii	"th\0"
	.align
_Label_1857:
	.byte	'?'
	.ascii	"_temp_1853\0"
	.align
_Label_1858:
	.byte	'?'
	.ascii	"_temp_1852\0"
	.align
_Label_1859:
	.byte	'?'
	.ascii	"_temp_1851\0"
	.align
_Label_1860:
	.byte	'?'
	.ascii	"_temp_1850\0"
	.align
_Label_1861:
	.byte	'?'
	.ascii	"_temp_1849\0"
	.align
! 
! ===============  CLASS ProcessControlBlock  ===============
! 
! Dispatch Table:
! 
_P_Kernel_ProcessControlBlock:
	.word	_Label_1862
	jmp	_Method_P_Kernel_ProcessControlBlock_1	! 4:	Init
	jmp	_Method_P_Kernel_ProcessControlBlock_2	! 8:	Print
	jmp	_Method_P_Kernel_ProcessControlBlock_3	! 12:	PrintShort
	.word	0
! 
! Class descriptor:
! 
_Label_1862:
	.word	1129070931		! Magic number 0x434c4153 == 'CLAS'
	.word	_Label_1863
	.word	_sourceFileName
	.word	217		! line number
	.word	168		! size of instances, in bytes
	.word	_P_Kernel_ProcessControlBlock
	.word	_P_List_Listable
	.word	_P_System_Object
	.word	0
_Label_1863:
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
_Label_3863:
	push	r0
	sub	r1,1,r1
	bne	_Label_3863
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
_Label_3864:
	store	r0,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_3864
!   addrSpace = _P_Kernel_AddrSpace
	set	_P_Kernel_AddrSpace,r1
	load	[r14+8],r2
	store	r1,[r2+32]
! SEND STATEMENT...
	mov	782,r13		! source line 782
	mov	"\0\0SE",r10
!   _temp_1865 = &addrSpace
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
!   _temp_1866 = &fileDescriptor
	load	[r14+8],r1
	add	r1,124,r1
	store	r1,[r14+-68]
!   NEW ARRAY Constructor...
!   _temp_1868 = &_temp_1867
	add	r14,-64,r1
	store	r1,[r14+-20]
!   _temp_1868 = _temp_1868 + 4
	load	[r14+-20],r1
	add	r1,4,r1
	store	r1,[r14+-20]
!   Next value...
	mov	10,r1
	store	r1,[r14+-16]
_Label_1870:
!   Data Move: *_temp_1868 = 0  (sizeInBytes=4)
	mov	0,r1
	load	[r14+-20],r2
	store	r1,[r2]
!   _temp_1868 = _temp_1868 + 4
	load	[r14+-20],r1
	add	r1,4,r1
	store	r1,[r14+-20]
!   _temp_1869 = _temp_1869 + -1
	load	[r14+-16],r1
	add	r1,-1,r1
	store	r1,[r14+-16]
!   if intNotZero (_temp_1869) then goto _Label_1870
	load	[r14+-16],r1
	cmp	r1,r0
	bne	_Label_1870
!   Initialize the array size...
	mov	10,r1
	store	r1,[r14+-64]
!   _temp_1871 = &_temp_1867
	add	r14,-64,r1
	store	r1,[r14+-12]
!   make sure array has size 10
	load	[r14+-68],r1
	load	[r1],r1
	set	10, r2
	cmp	r1,0
	be	_Label_3865
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bne	_runtimeErrorWrongArraySize
_Label_3865:
!   make sure array has size 10
	load	[r14+-12],r1
	load	[r1],r1
	set	10, r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bne	_runtimeErrorWrongArraySize
!   Data Move: *_temp_1866 = *_temp_1871  (sizeInBytes=44)
	load	[r14+-12],r5
	load	[r14+-68],r4
	mov	11,r3
_Label_3866:
	load	[r5],r1
	add	r5,4,r5
	store	r1,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_3866
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
	.word	_Label_1872
	.word	4		! total size of parameters
	.word	72		! frame size = 72
	.word	_Label_1873
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1874
	.word	-12
	.word	4
	.word	_Label_1875
	.word	-16
	.word	4
	.word	_Label_1876
	.word	-20
	.word	4
	.word	_Label_1877
	.word	-64
	.word	44
	.word	_Label_1878
	.word	-68
	.word	4
	.word	_Label_1879
	.word	-72
	.word	4
	.word	_Label_1880
	.word	-76
	.word	4
	.word	0
_Label_1872:
	.ascii	"ProcessControlBlock"
	.ascii	"::"
	.ascii	"Init\0"
	.align
_Label_1873:
	.ascii	"Pself\0"
	.align
_Label_1874:
	.byte	'?'
	.ascii	"_temp_1871\0"
	.align
_Label_1875:
	.byte	'?'
	.ascii	"_temp_1869\0"
	.align
_Label_1876:
	.byte	'?'
	.ascii	"_temp_1868\0"
	.align
_Label_1877:
	.byte	'?'
	.ascii	"_temp_1867\0"
	.align
_Label_1878:
	.byte	'?'
	.ascii	"_temp_1866\0"
	.align
_Label_1879:
	.byte	'?'
	.ascii	"_temp_1865\0"
	.align
_Label_1880:
	.byte	'?'
	.ascii	"_temp_1864\0"
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
_Label_3867:
	push	r0
	sub	r1,1,r1
	bne	_Label_3867
	mov	792,r13		! source line 792
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! SEND STATEMENT...
	mov	797,r13		! source line 797
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-20]
!   if intIsZero (_temp_1881) then goto _runtimeErrorNullPointer
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
!   _temp_1882 = &addrSpace
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
!   _temp_1883 = _StringConst_88
	set	_StringConst_88,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_1883  sizeInBytes=4
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
	call	_function_196_ThreadPrintShort
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
	.word	_Label_1884
	.word	4		! total size of parameters
	.word	16		! frame size = 16
	.word	_Label_1885
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1886
	.word	-12
	.word	4
	.word	_Label_1887
	.word	-16
	.word	4
	.word	_Label_1888
	.word	-20
	.word	4
	.word	0
_Label_1884:
	.ascii	"ProcessControlBlock"
	.ascii	"::"
	.ascii	"Print\0"
	.align
_Label_1885:
	.ascii	"Pself\0"
	.align
_Label_1886:
	.byte	'?'
	.ascii	"_temp_1883\0"
	.align
_Label_1887:
	.byte	'?'
	.ascii	"_temp_1882\0"
	.align
_Label_1888:
	.byte	'?'
	.ascii	"_temp_1881\0"
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
_Label_3868:
	push	r0
	sub	r1,1,r1
	bne	_Label_3868
	mov	815,r13		! source line 815
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   _temp_1889 = _StringConst_89
	set	_StringConst_89,r1
	store	r1,[r14+-48]
!   Prepare Argument: offset=8  value=_temp_1889  sizeInBytes=4
	load	[r14+-48],r1
	store	r1,[r15+0]
!   Call the function
	mov	819,r13		! source line 819
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
	load	[r14+8],r1
	store	r1,[r14+-44]
!   Prepare Argument: offset=8  value=_temp_1890  sizeInBytes=4
	load	[r14+-44],r1
	store	r1,[r15+0]
!   Call the function
	mov	820,r13		! source line 820
	mov	"\0\0CE",r10
	call	printHex
! CALL STATEMENT...
!   _temp_1891 = _StringConst_90
	set	_StringConst_90,r1
	store	r1,[r14+-40]
!   Prepare Argument: offset=8  value=_temp_1891  sizeInBytes=4
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
!   _temp_1892 = _StringConst_91
	set	_StringConst_91,r1
	store	r1,[r14+-36]
!   Prepare Argument: offset=8  value=_temp_1892  sizeInBytes=4
	load	[r14+-36],r1
	store	r1,[r15+0]
!   Call the function
	mov	823,r13		! source line 823
	mov	"\0\0CE",r10
	call	print
! IF STATEMENT...
	mov	824,r13		! source line 824
	mov	"\0\0IF",r10
!   if status != 1 then goto _Label_1894		(int)
	load	[r14+8],r1
	load	[r1+20],r1
	mov	1,r2
	cmp	r1,r2
	bne	_Label_1894
!	jmp	_Label_1893
_Label_1893:
! THEN...
	mov	825,r13		! source line 825
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_1895 = _StringConst_92
	set	_StringConst_92,r1
	store	r1,[r14+-32]
!   Prepare Argument: offset=8  value=_temp_1895  sizeInBytes=4
	load	[r14+-32],r1
	store	r1,[r15+0]
!   Call the function
	mov	825,r13		! source line 825
	mov	"\0\0CE",r10
	call	print
	jmp	_Label_1896
_Label_1894:
! ELSE...
	mov	826,r13		! source line 826
	mov	"\0\0EL",r10
! IF STATEMENT...
	mov	826,r13		! source line 826
	mov	"\0\0IF",r10
!   if status != 2 then goto _Label_1898		(int)
	load	[r14+8],r1
	load	[r1+20],r1
	mov	2,r2
	cmp	r1,r2
	bne	_Label_1898
!	jmp	_Label_1897
_Label_1897:
! THEN...
	mov	827,r13		! source line 827
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_1899 = _StringConst_93
	set	_StringConst_93,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=8  value=_temp_1899  sizeInBytes=4
	load	[r14+-28],r1
	store	r1,[r15+0]
!   Call the function
	mov	827,r13		! source line 827
	mov	"\0\0CE",r10
	call	print
	jmp	_Label_1900
_Label_1898:
! ELSE...
	mov	828,r13		! source line 828
	mov	"\0\0EL",r10
! IF STATEMENT...
	mov	828,r13		! source line 828
	mov	"\0\0IF",r10
!   if status != 3 then goto _Label_1902		(int)
	load	[r14+8],r1
	load	[r1+20],r1
	mov	3,r2
	cmp	r1,r2
	bne	_Label_1902
!	jmp	_Label_1901
_Label_1901:
! THEN...
	mov	829,r13		! source line 829
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_1903 = _StringConst_94
	set	_StringConst_94,r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=8  value=_temp_1903  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+0]
!   Call the function
	mov	829,r13		! source line 829
	mov	"\0\0CE",r10
	call	print
	jmp	_Label_1904
_Label_1902:
! ELSE...
	mov	831,r13		! source line 831
	mov	"\0\0EL",r10
! CALL STATEMENT...
!   _temp_1905 = _StringConst_95
	set	_StringConst_95,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_1905  sizeInBytes=4
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
_Label_1904:
! END IF...
_Label_1900:
! END IF...
_Label_1896:
! CALL STATEMENT...
!   _temp_1906 = _StringConst_96
	set	_StringConst_96,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_1906  sizeInBytes=4
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
!   _temp_1907 = _StringConst_97
	set	_StringConst_97,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_1907  sizeInBytes=4
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
	.word	_Label_1908
	.word	4		! total size of parameters
	.word	44		! frame size = 44
	.word	_Label_1909
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1910
	.word	-12
	.word	4
	.word	_Label_1911
	.word	-16
	.word	4
	.word	_Label_1912
	.word	-20
	.word	4
	.word	_Label_1913
	.word	-24
	.word	4
	.word	_Label_1914
	.word	-28
	.word	4
	.word	_Label_1915
	.word	-32
	.word	4
	.word	_Label_1916
	.word	-36
	.word	4
	.word	_Label_1917
	.word	-40
	.word	4
	.word	_Label_1918
	.word	-44
	.word	4
	.word	_Label_1919
	.word	-48
	.word	4
	.word	0
_Label_1908:
	.ascii	"ProcessControlBlock"
	.ascii	"::"
	.ascii	"PrintShort\0"
	.align
_Label_1909:
	.ascii	"Pself\0"
	.align
_Label_1910:
	.byte	'?'
	.ascii	"_temp_1907\0"
	.align
_Label_1911:
	.byte	'?'
	.ascii	"_temp_1906\0"
	.align
_Label_1912:
	.byte	'?'
	.ascii	"_temp_1905\0"
	.align
_Label_1913:
	.byte	'?'
	.ascii	"_temp_1903\0"
	.align
_Label_1914:
	.byte	'?'
	.ascii	"_temp_1899\0"
	.align
_Label_1915:
	.byte	'?'
	.ascii	"_temp_1895\0"
	.align
_Label_1916:
	.byte	'?'
	.ascii	"_temp_1892\0"
	.align
_Label_1917:
	.byte	'?'
	.ascii	"_temp_1891\0"
	.align
_Label_1918:
	.byte	'?'
	.ascii	"_temp_1890\0"
	.align
_Label_1919:
	.byte	'?'
	.ascii	"_temp_1889\0"
	.align
! 
! ===============  CLASS ProcessManager  ===============
! 
! Dispatch Table:
! 
_P_Kernel_ProcessManager:
	.word	_Label_1920
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
_Label_1920:
	.word	1129070931		! Magic number 0x434c4153 == 'CLAS'
	.word	_Label_1921
	.word	_sourceFileName
	.word	237		! line number
	.word	1760		! size of instances, in bytes
	.word	_P_Kernel_ProcessManager
	.word	_P_System_Object
	.word	0
_Label_1921:
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
_Label_3869:
	push	r0
	sub	r1,1,r1
	bne	_Label_3869
	mov	848,r13		! source line 848
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   _temp_1922 = _StringConst_98
	set	_StringConst_98,r1
	store	r1,[r14+-1924]
!   Prepare Argument: offset=8  value=_temp_1922  sizeInBytes=4
	load	[r14+-1924],r1
	store	r1,[r15+0]
!   Call the function
	mov	856,r13		! source line 856
	mov	"\0\0CE",r10
	call	print
! ASSIGNMENT STATEMENT...
	mov	857,r13		! source line 857
	mov	"\0\0AS",r10
!   _temp_1923 = &processTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-1920]
!   NEW ARRAY Constructor...
!   _temp_1925 = &_temp_1924
	add	r14,-1916,r1
	store	r1,[r14+-232]
!   _temp_1925 = _temp_1925 + 4
	load	[r14+-232],r1
	add	r1,4,r1
	store	r1,[r14+-232]
!   Next value...
!   NEW CLASS Constructor...
!   ZeroMemory: _temp_1927 = zeros  (sizeInBytes=168)
	add	r14,-224,r4
	mov	42,r3
_Label_3870:
	store	r0,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_3870
!   _temp_1927 = _P_Kernel_ProcessControlBlock
	set	_P_Kernel_ProcessControlBlock,r1
	store	r1,[r14+-224]
	mov	10,r1
	store	r1,[r14+-228]
_Label_1929:
!   Data Move: *_temp_1925 = _temp_1927  (sizeInBytes=168)
	add	r14,-224,r5
	load	[r14+-232],r4
	mov	42,r3
_Label_3871:
	load	[r5],r1
	add	r5,4,r5
	store	r1,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_3871
!   _temp_1925 = _temp_1925 + 168
	load	[r14+-232],r1
	add	r1,168,r1
	store	r1,[r14+-232]
!   _temp_1926 = _temp_1926 + -1
	load	[r14+-228],r1
	add	r1,-1,r1
	store	r1,[r14+-228]
!   if intNotZero (_temp_1926) then goto _Label_1929
	load	[r14+-228],r1
	cmp	r1,r0
	bne	_Label_1929
!   Initialize the array size...
	mov	10,r1
	store	r1,[r14+-1916]
!   _temp_1930 = &_temp_1924
	add	r14,-1916,r1
	store	r1,[r14+-52]
!   make sure array has size 10
	load	[r14+-1920],r1
	load	[r1],r1
	set	10, r2
	cmp	r1,0
	be	_Label_3872
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bne	_runtimeErrorWrongArraySize
_Label_3872:
!   make sure array has size 10
	load	[r14+-52],r1
	load	[r1],r1
	set	10, r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bne	_runtimeErrorWrongArraySize
!   Data Move: *_temp_1923 = *_temp_1930  (sizeInBytes=1684)
	load	[r14+-52],r5
	load	[r14+-1920],r4
	mov	421,r3
_Label_3873:
	load	[r5],r1
	add	r5,4,r5
	store	r1,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_3873
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
_Label_1932:
!   if i >= 10 then goto _Label_1934		(int)
	load	[r14+-1928],r1
	mov	10,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_1934
!	jmp	_Label_1933
_Label_1933:
	mov	860,r13		! source line 860
	mov	"\0\0WB",r10
! ASSIGNMENT STATEMENT...
	mov	861,r13		! source line 861
	mov	"\0\0AS",r10
!   _temp_1935 = &processTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-44]
!   Move address of _temp_1935 [i ] into _temp_1936
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
!   process = _temp_1936		(4 bytes)
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
!   _temp_1937 = &freeList
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
	jmp	_Label_1932
_Label_1934:
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
!   _temp_1939 = &processManagerLock
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
!   _temp_1941 = &aProcessBecameFree
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
!   _temp_1943 = &aProcessDied
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
	.word	_Label_1944
	.word	4		! total size of parameters
	.word	1932		! frame size = 1932
	.word	_Label_1945
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1946
	.word	-12
	.word	4
	.word	_Label_1947
	.word	-16
	.word	4
	.word	_Label_1948
	.word	-20
	.word	4
	.word	_Label_1949
	.word	-24
	.word	4
	.word	_Label_1950
	.word	-28
	.word	4
	.word	_Label_1951
	.word	-32
	.word	4
	.word	_Label_1952
	.word	-36
	.word	4
	.word	_Label_1953
	.word	-40
	.word	4
	.word	_Label_1954
	.word	-44
	.word	4
	.word	_Label_1955
	.word	-48
	.word	4
	.word	_Label_1956
	.word	-52
	.word	4
	.word	_Label_1957
	.word	-56
	.word	4
	.word	_Label_1958
	.word	-224
	.word	168
	.word	_Label_1959
	.word	-228
	.word	4
	.word	_Label_1960
	.word	-232
	.word	4
	.word	_Label_1961
	.word	-1916
	.word	1684
	.word	_Label_1962
	.word	-1920
	.word	4
	.word	_Label_1963
	.word	-1924
	.word	4
	.word	_Label_1964
	.word	-1928
	.word	4
	.word	_Label_1965
	.word	-1932
	.word	4
	.word	0
_Label_1944:
	.ascii	"ProcessManager"
	.ascii	"::"
	.ascii	"Init\0"
	.align
_Label_1945:
	.ascii	"Pself\0"
	.align
_Label_1946:
	.byte	'?'
	.ascii	"_temp_1943\0"
	.align
_Label_1947:
	.byte	'?'
	.ascii	"_temp_1942\0"
	.align
_Label_1948:
	.byte	'?'
	.ascii	"_temp_1941\0"
	.align
_Label_1949:
	.byte	'?'
	.ascii	"_temp_1940\0"
	.align
_Label_1950:
	.byte	'?'
	.ascii	"_temp_1939\0"
	.align
_Label_1951:
	.byte	'?'
	.ascii	"_temp_1938\0"
	.align
_Label_1952:
	.byte	'?'
	.ascii	"_temp_1937\0"
	.align
_Label_1953:
	.byte	'?'
	.ascii	"_temp_1936\0"
	.align
_Label_1954:
	.byte	'?'
	.ascii	"_temp_1935\0"
	.align
_Label_1955:
	.byte	'?'
	.ascii	"_temp_1931\0"
	.align
_Label_1956:
	.byte	'?'
	.ascii	"_temp_1930\0"
	.align
_Label_1957:
	.byte	'?'
	.ascii	"_temp_1928\0"
	.align
_Label_1958:
	.byte	'?'
	.ascii	"_temp_1927\0"
	.align
_Label_1959:
	.byte	'?'
	.ascii	"_temp_1926\0"
	.align
_Label_1960:
	.byte	'?'
	.ascii	"_temp_1925\0"
	.align
_Label_1961:
	.byte	'?'
	.ascii	"_temp_1924\0"
	.align
_Label_1962:
	.byte	'?'
	.ascii	"_temp_1923\0"
	.align
_Label_1963:
	.byte	'?'
	.ascii	"_temp_1922\0"
	.align
_Label_1964:
	.byte	'I'
	.ascii	"i\0"
	.align
_Label_1965:
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
_Label_3874:
	push	r0
	sub	r1,1,r1
	bne	_Label_3874
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
!   _temp_1966 = _StringConst_99
	set	_StringConst_99,r1
	store	r1,[r14+-48]
!   Prepare Argument: offset=8  value=_temp_1966  sizeInBytes=4
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
!   _temp_1971 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-44]
!   Calculate and save the FOR-LOOP ending value
!   _temp_1972 = 9		(4 bytes)
	mov	9,r1
	store	r1,[r14+-40]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_1971  (sizeInBytes=4)
	load	[r14+-44],r1
	store	r1,[r14+-52]
_Label_1967:
!   Perform the FOR-LOOP termination test
!   if i > _temp_1972 then goto _Label_1970		
	load	[r14+-52],r1
	load	[r14+-40],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_1970
_Label_1968:
	mov	884,r13		! source line 884
	mov	"\0\0FB",r10
! CALL STATEMENT...
!   _temp_1973 = _StringConst_100
	set	_StringConst_100,r1
	store	r1,[r14+-36]
!   Prepare Argument: offset=8  value=_temp_1973  sizeInBytes=4
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
!   _temp_1974 = _StringConst_101
	set	_StringConst_101,r1
	store	r1,[r14+-32]
!   Prepare Argument: offset=8  value=_temp_1974  sizeInBytes=4
	load	[r14+-32],r1
	store	r1,[r15+0]
!   Call the function
	mov	887,r13		! source line 887
	mov	"\0\0CE",r10
	call	print
! SEND STATEMENT...
	mov	888,r13		! source line 888
	mov	"\0\0SE",r10
!   _temp_1975 = &processTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-28]
!   Move address of _temp_1975 [i ] into _temp_1976
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
_Label_1969:
!   i = i + 1
	load	[r14+-52],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-52]
	jmp	_Label_1967
! END FOR
_Label_1970:
! CALL STATEMENT...
!   _temp_1977 = _StringConst_102
	set	_StringConst_102,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_1977  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   Call the function
	mov	890,r13		! source line 890
	mov	"\0\0CE",r10
	call	print
! SEND STATEMENT...
	mov	891,r13		! source line 891
	mov	"\0\0SE",r10
!   _temp_1978 = _function_195_PrintObjectAddr
	set	_function_195_PrintObjectAddr,r1
	store	r1,[r14+-16]
!   _temp_1979 = &freeList
	load	[r14+8],r1
	add	r1,1728,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=12  value=_temp_1978  sizeInBytes=4
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
	.word	_Label_1980
	.word	4		! total size of parameters
	.word	56		! frame size = 56
	.word	_Label_1981
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1982
	.word	-12
	.word	4
	.word	_Label_1983
	.word	-16
	.word	4
	.word	_Label_1984
	.word	-20
	.word	4
	.word	_Label_1985
	.word	-24
	.word	4
	.word	_Label_1986
	.word	-28
	.word	4
	.word	_Label_1987
	.word	-32
	.word	4
	.word	_Label_1988
	.word	-36
	.word	4
	.word	_Label_1989
	.word	-40
	.word	4
	.word	_Label_1990
	.word	-44
	.word	4
	.word	_Label_1991
	.word	-48
	.word	4
	.word	_Label_1992
	.word	-52
	.word	4
	.word	_Label_1993
	.word	-56
	.word	4
	.word	0
_Label_1980:
	.ascii	"ProcessManager"
	.ascii	"::"
	.ascii	"Print\0"
	.align
_Label_1981:
	.ascii	"Pself\0"
	.align
_Label_1982:
	.byte	'?'
	.ascii	"_temp_1979\0"
	.align
_Label_1983:
	.byte	'?'
	.ascii	"_temp_1978\0"
	.align
_Label_1984:
	.byte	'?'
	.ascii	"_temp_1977\0"
	.align
_Label_1985:
	.byte	'?'
	.ascii	"_temp_1976\0"
	.align
_Label_1986:
	.byte	'?'
	.ascii	"_temp_1975\0"
	.align
_Label_1987:
	.byte	'?'
	.ascii	"_temp_1974\0"
	.align
_Label_1988:
	.byte	'?'
	.ascii	"_temp_1973\0"
	.align
_Label_1989:
	.byte	'?'
	.ascii	"_temp_1972\0"
	.align
_Label_1990:
	.byte	'?'
	.ascii	"_temp_1971\0"
	.align
_Label_1991:
	.byte	'?'
	.ascii	"_temp_1966\0"
	.align
_Label_1992:
	.byte	'I'
	.ascii	"i\0"
	.align
_Label_1993:
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
_Label_3875:
	push	r0
	sub	r1,1,r1
	bne	_Label_3875
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
!   _temp_1994 = _StringConst_103
	set	_StringConst_103,r1
	store	r1,[r14+-44]
!   Prepare Argument: offset=8  value=_temp_1994  sizeInBytes=4
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
!   _temp_1999 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-40]
!   Calculate and save the FOR-LOOP ending value
!   _temp_2000 = 9		(4 bytes)
	mov	9,r1
	store	r1,[r14+-36]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_1999  (sizeInBytes=4)
	load	[r14+-40],r1
	store	r1,[r14+-48]
_Label_1995:
!   Perform the FOR-LOOP termination test
!   if i > _temp_2000 then goto _Label_1998		
	load	[r14+-48],r1
	load	[r14+-36],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_1998
_Label_1996:
	mov	907,r13		! source line 907
	mov	"\0\0FB",r10
! CALL STATEMENT...
!   _temp_2001 = _StringConst_104
	set	_StringConst_104,r1
	store	r1,[r14+-32]
!   Prepare Argument: offset=8  value=_temp_2001  sizeInBytes=4
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
!   _temp_2002 = &processTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-28]
!   Move address of _temp_2002 [i ] into _temp_2003
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
_Label_1997:
!   i = i + 1
	load	[r14+-48],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-48]
	jmp	_Label_1995
! END FOR
_Label_1998:
! CALL STATEMENT...
!   _temp_2004 = _StringConst_105
	set	_StringConst_105,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_2004  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   Call the function
	mov	912,r13		! source line 912
	mov	"\0\0CE",r10
	call	print
! SEND STATEMENT...
	mov	913,r13		! source line 913
	mov	"\0\0SE",r10
!   _temp_2005 = _function_195_PrintObjectAddr
	set	_function_195_PrintObjectAddr,r1
	store	r1,[r14+-16]
!   _temp_2006 = &freeList
	load	[r14+8],r1
	add	r1,1728,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=12  value=_temp_2005  sizeInBytes=4
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
	.word	_Label_2007
	.word	4		! total size of parameters
	.word	52		! frame size = 52
	.word	_Label_2008
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2009
	.word	-12
	.word	4
	.word	_Label_2010
	.word	-16
	.word	4
	.word	_Label_2011
	.word	-20
	.word	4
	.word	_Label_2012
	.word	-24
	.word	4
	.word	_Label_2013
	.word	-28
	.word	4
	.word	_Label_2014
	.word	-32
	.word	4
	.word	_Label_2015
	.word	-36
	.word	4
	.word	_Label_2016
	.word	-40
	.word	4
	.word	_Label_2017
	.word	-44
	.word	4
	.word	_Label_2018
	.word	-48
	.word	4
	.word	_Label_2019
	.word	-52
	.word	4
	.word	0
_Label_2007:
	.ascii	"ProcessManager"
	.ascii	"::"
	.ascii	"PrintShort\0"
	.align
_Label_2008:
	.ascii	"Pself\0"
	.align
_Label_2009:
	.byte	'?'
	.ascii	"_temp_2006\0"
	.align
_Label_2010:
	.byte	'?'
	.ascii	"_temp_2005\0"
	.align
_Label_2011:
	.byte	'?'
	.ascii	"_temp_2004\0"
	.align
_Label_2012:
	.byte	'?'
	.ascii	"_temp_2003\0"
	.align
_Label_2013:
	.byte	'?'
	.ascii	"_temp_2002\0"
	.align
_Label_2014:
	.byte	'?'
	.ascii	"_temp_2001\0"
	.align
_Label_2015:
	.byte	'?'
	.ascii	"_temp_2000\0"
	.align
_Label_2016:
	.byte	'?'
	.ascii	"_temp_1999\0"
	.align
_Label_2017:
	.byte	'?'
	.ascii	"_temp_1994\0"
	.align
_Label_2018:
	.byte	'I'
	.ascii	"i\0"
	.align
_Label_2019:
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
_Label_3876:
	push	r0
	sub	r1,1,r1
	bne	_Label_3876
	mov	920,r13		! source line 920
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! SEND STATEMENT...
	mov	928,r13		! source line 928
	mov	"\0\0SE",r10
!   _temp_2020 = &processManagerLock
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
!   _temp_2021 = &freeList
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
_Label_2022:
!   if intIsZero (process) then goto _Label_2023
	load	[r14+-44],r1
	cmp	r1,r0
	be	_Label_2023
	jmp	_Label_2024
_Label_2023:
	mov	930,r13		! source line 930
	mov	"\0\0WB",r10
! SEND STATEMENT...
	mov	931,r13		! source line 931
	mov	"\0\0SE",r10
!   _temp_2025 = &processManagerLock
	load	[r14+8],r1
	add	r1,1692,r1
	store	r1,[r14+-32]
!   _temp_2026 = &aProcessBecameFree
	load	[r14+8],r1
	add	r1,1712,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=12  value=_temp_2025  sizeInBytes=4
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
!   _temp_2027 = &freeList
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
	jmp	_Label_2022
_Label_2024:
! ASSIGNMENT STATEMENT...
	mov	934,r13		! source line 934
	mov	"\0\0AS",r10
!   if intIsZero (process) then goto _runtimeErrorNullPointer
	load	[r14+-44],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2028 = process + 20
	load	[r14+-44],r1
	add	r1,20,r1
	store	r1,[r14+-20]
!   Data Move: *_temp_2028 = 1  (sizeInBytes=4)
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
!   _temp_2029 = process + 12
	load	[r14+-44],r1
	add	r1,12,r1
	store	r1,[r14+-16]
!   Data Move: *_temp_2029 = pidCount  (sizeInBytes=4)
	load	[r14+8],r1
	load	[r1+4],r1
	load	[r14+-16],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	937,r13		! source line 937
	mov	"\0\0SE",r10
!   _temp_2030 = &processManagerLock
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
	.word	_Label_2031
	.word	4		! total size of parameters
	.word	44		! frame size = 44
	.word	_Label_2032
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2033
	.word	-12
	.word	4
	.word	_Label_2034
	.word	-16
	.word	4
	.word	_Label_2035
	.word	-20
	.word	4
	.word	_Label_2036
	.word	-24
	.word	4
	.word	_Label_2037
	.word	-28
	.word	4
	.word	_Label_2038
	.word	-32
	.word	4
	.word	_Label_2039
	.word	-36
	.word	4
	.word	_Label_2040
	.word	-40
	.word	4
	.word	_Label_2041
	.word	-44
	.word	4
	.word	0
_Label_2031:
	.ascii	"ProcessManager"
	.ascii	"::"
	.ascii	"GetANewProcess\0"
	.align
_Label_2032:
	.ascii	"Pself\0"
	.align
_Label_2033:
	.byte	'?'
	.ascii	"_temp_2030\0"
	.align
_Label_2034:
	.byte	'?'
	.ascii	"_temp_2029\0"
	.align
_Label_2035:
	.byte	'?'
	.ascii	"_temp_2028\0"
	.align
_Label_2036:
	.byte	'?'
	.ascii	"_temp_2027\0"
	.align
_Label_2037:
	.byte	'?'
	.ascii	"_temp_2026\0"
	.align
_Label_2038:
	.byte	'?'
	.ascii	"_temp_2025\0"
	.align
_Label_2039:
	.byte	'?'
	.ascii	"_temp_2021\0"
	.align
_Label_2040:
	.byte	'?'
	.ascii	"_temp_2020\0"
	.align
_Label_2041:
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
_Label_3877:
	push	r0
	sub	r1,1,r1
	bne	_Label_3877
	mov	943,r13		! source line 943
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   _temp_2042 = _StringConst_106
	set	_StringConst_106,r1
	store	r1,[r14+-36]
!   Prepare Argument: offset=8  value=_temp_2042  sizeInBytes=4
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
!   _temp_2043 = &processManagerLock
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
!   _temp_2044 = &freeList
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
!   _temp_2045 = p + 20
	load	[r14+12],r1
	add	r1,20,r1
	store	r1,[r14+-24]
!   Data Move: *_temp_2045 = 3  (sizeInBytes=4)
	mov	3,r1
	load	[r14+-24],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	953,r13		! source line 953
	mov	"\0\0SE",r10
!   _temp_2046 = &processManagerLock
	load	[r14+8],r1
	add	r1,1692,r1
	store	r1,[r14+-20]
!   _temp_2047 = &aProcessBecameFree
	load	[r14+8],r1
	add	r1,1712,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=12  value=_temp_2046  sizeInBytes=4
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
!   _temp_2048 = &processManagerLock
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
	.word	_Label_2049
	.word	8		! total size of parameters
	.word	36		! frame size = 36
	.word	_Label_2050
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2051
	.word	12
	.word	4
	.word	_Label_2052
	.word	-12
	.word	4
	.word	_Label_2053
	.word	-16
	.word	4
	.word	_Label_2054
	.word	-20
	.word	4
	.word	_Label_2055
	.word	-24
	.word	4
	.word	_Label_2056
	.word	-28
	.word	4
	.word	_Label_2057
	.word	-32
	.word	4
	.word	_Label_2058
	.word	-36
	.word	4
	.word	0
_Label_2049:
	.ascii	"ProcessManager"
	.ascii	"::"
	.ascii	"FreeProcess\0"
	.align
_Label_2050:
	.ascii	"Pself\0"
	.align
_Label_2051:
	.byte	'P'
	.ascii	"p\0"
	.align
_Label_2052:
	.byte	'?'
	.ascii	"_temp_2048\0"
	.align
_Label_2053:
	.byte	'?'
	.ascii	"_temp_2047\0"
	.align
_Label_2054:
	.byte	'?'
	.ascii	"_temp_2046\0"
	.align
_Label_2055:
	.byte	'?'
	.ascii	"_temp_2045\0"
	.align
_Label_2056:
	.byte	'?'
	.ascii	"_temp_2044\0"
	.align
_Label_2057:
	.byte	'?'
	.ascii	"_temp_2043\0"
	.align
_Label_2058:
	.byte	'?'
	.ascii	"_temp_2042\0"
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
_Label_3878:
	push	r0
	sub	r1,1,r1
	bne	_Label_3878
	mov	960,r13		! source line 960
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! SEND STATEMENT...
	mov	968,r13		! source line 968
	mov	"\0\0SE",r10
!   _temp_2059 = &processManagerLock
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
!   _temp_2060 = p + 12
	load	[r14+12],r1
	add	r1,12,r1
	store	r1,[r14+-188]
!   Data Move: myPid = *_temp_2060  (sizeInBytes=4)
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
_Label_2061:
!   if i >= 10 then goto _Label_2063		(int)
	load	[r14+-196],r1
	mov	10,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_2063
!	jmp	_Label_2062
_Label_2062:
	mov	973,r13		! source line 973
	mov	"\0\0WB",r10
! IF STATEMENT...
	mov	974,r13		! source line 974
	mov	"\0\0IF",r10
!   _temp_2068 = &processTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-180]
!   Move address of _temp_2068 [i ] into _temp_2069
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
!   _temp_2070 = _temp_2069 + 16
	load	[r14+-176],r1
	add	r1,16,r1
	store	r1,[r14+-172]
!   Data Move: _temp_2067 = *_temp_2070  (sizeInBytes=4)
	load	[r14+-172],r1
	load	[r1],r1
	store	r1,[r14+-184]
!   if _temp_2067 != myPid then goto _Label_2065		(int)
	load	[r14+-184],r1
	load	[r14+-200],r2
	cmp	r1,r2
	bne	_Label_2065
!	jmp	_Label_2066
_Label_2066:
!   _temp_2072 = &processTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-164]
!   Move address of _temp_2072 [i ] into _temp_2073
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
!   _temp_2074 = _temp_2073 + 20
	load	[r14+-160],r1
	add	r1,20,r1
	store	r1,[r14+-156]
!   Data Move: _temp_2071 = *_temp_2074  (sizeInBytes=4)
	load	[r14+-156],r1
	load	[r1],r1
	store	r1,[r14+-168]
!   if _temp_2071 != 2 then goto _Label_2065		(int)
	load	[r14+-168],r1
	mov	2,r2
	cmp	r1,r2
	bne	_Label_2065
!	jmp	_Label_2064
_Label_2064:
! THEN...
	mov	975,r13		! source line 975
	mov	"\0\0TN",r10
! ASSIGNMENT STATEMENT...
	mov	975,r13		! source line 975
	mov	"\0\0AS",r10
!   _temp_2075 = &processTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-152]
!   Move address of _temp_2075 [i ] into _temp_2076
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
!   _temp_2077 = _temp_2076 + 20
	load	[r14+-148],r1
	add	r1,20,r1
	store	r1,[r14+-144]
!   Data Move: *_temp_2077 = 3  (sizeInBytes=4)
	mov	3,r1
	load	[r14+-144],r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	976,r13		! source line 976
	mov	"\0\0AS",r10
!   _temp_2078 = &processTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-140]
!   Move address of _temp_2078 [i ] into _temp_2079
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
!   _temp_2080 = _temp_2079 + 12
	load	[r14+-136],r1
	add	r1,12,r1
	store	r1,[r14+-132]
!   Data Move: *_temp_2080 = -1  (sizeInBytes=4)
	mov	-1,r1
	load	[r14+-132],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	977,r13		! source line 977
	mov	"\0\0SE",r10
!   _temp_2082 = &processTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-124]
!   Move address of _temp_2082 [i ] into _temp_2083
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
!   _temp_2081 = _temp_2083		(4 bytes)
	load	[r14+-120],r1
	store	r1,[r14+-128]
!   _temp_2084 = &freeList
	load	[r14+8],r1
	add	r1,1728,r1
	store	r1,[r14+-116]
!   Prepare Argument: offset=12  value=_temp_2081  sizeInBytes=4
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
!   _temp_2085 = &processManagerLock
	load	[r14+8],r1
	add	r1,1692,r1
	store	r1,[r14+-112]
!   _temp_2086 = &aProcessBecameFree
	load	[r14+8],r1
	add	r1,1712,r1
	store	r1,[r14+-108]
!   Prepare Argument: offset=12  value=_temp_2085  sizeInBytes=4
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
_Label_2065:
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
	jmp	_Label_2061
_Label_2063:
! ASSIGNMENT STATEMENT...
	mov	983,r13		! source line 983
	mov	"\0\0AS",r10
!   if intIsZero (p) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2087 = p + 16
	load	[r14+12],r1
	add	r1,16,r1
	store	r1,[r14+-104]
!   Data Move: parentPid = *_temp_2087  (sizeInBytes=4)
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
_Label_2088:
!   if i >= 10 then goto _Label_2090		(int)
	load	[r14+-196],r1
	mov	10,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_2090
!	jmp	_Label_2089
_Label_2089:
	mov	985,r13		! source line 985
	mov	"\0\0WB",r10
! IF STATEMENT...
	mov	986,r13		! source line 986
	mov	"\0\0IF",r10
!   _temp_2094 = &processTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-96]
!   Move address of _temp_2094 [i ] into _temp_2095
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
!   _temp_2096 = _temp_2095 + 12
	load	[r14+-92],r1
	add	r1,12,r1
	store	r1,[r14+-88]
!   Data Move: _temp_2093 = *_temp_2096  (sizeInBytes=4)
	load	[r14+-88],r1
	load	[r1],r1
	store	r1,[r14+-100]
!   if _temp_2093 != parentPid then goto _Label_2092		(int)
	load	[r14+-100],r1
	load	[r14+-204],r2
	cmp	r1,r2
	bne	_Label_2092
!	jmp	_Label_2091
_Label_2091:
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
!   _temp_2100 = &processTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-80]
!   Move address of _temp_2100 [i ] into _temp_2101
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
!   _temp_2102 = _temp_2101 + 20
	load	[r14+-76],r1
	add	r1,20,r1
	store	r1,[r14+-72]
!   Data Move: _temp_2099 = *_temp_2102  (sizeInBytes=4)
	load	[r14+-72],r1
	load	[r1],r1
	store	r1,[r14+-84]
!   if _temp_2099 != 1 then goto _Label_2098		(int)
	load	[r14+-84],r1
	mov	1,r2
	cmp	r1,r2
	bne	_Label_2098
!	jmp	_Label_2097
_Label_2097:
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
!   _temp_2103 = p + 20
	load	[r14+12],r1
	add	r1,20,r1
	store	r1,[r14+-68]
!   Data Move: *_temp_2103 = 2  (sizeInBytes=4)
	mov	2,r1
	load	[r14+-68],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	992,r13		! source line 992
	mov	"\0\0SE",r10
!   _temp_2104 = &processManagerLock
	load	[r14+8],r1
	add	r1,1692,r1
	store	r1,[r14+-64]
!   _temp_2105 = &aProcessDied
	load	[r14+8],r1
	add	r1,1740,r1
	store	r1,[r14+-60]
!   Prepare Argument: offset=12  value=_temp_2104  sizeInBytes=4
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
	jmp	_Label_2106
_Label_2098:
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
!   _temp_2107 = p + 20
	load	[r14+12],r1
	add	r1,20,r1
	store	r1,[r14+-56]
!   Data Move: *_temp_2107 = 3  (sizeInBytes=4)
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
!   _temp_2108 = p + 12
	load	[r14+12],r1
	add	r1,12,r1
	store	r1,[r14+-52]
!   Data Move: *_temp_2108 = -1  (sizeInBytes=4)
	mov	-1,r1
	load	[r14+-52],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	998,r13		! source line 998
	mov	"\0\0SE",r10
!   _temp_2109 = &freeList
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
!   _temp_2110 = &processManagerLock
	load	[r14+8],r1
	add	r1,1692,r1
	store	r1,[r14+-44]
!   _temp_2111 = &aProcessBecameFree
	load	[r14+8],r1
	add	r1,1712,r1
	store	r1,[r14+-40]
!   Prepare Argument: offset=12  value=_temp_2110  sizeInBytes=4
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
_Label_2106:
! END IF...
_Label_2092:
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
	jmp	_Label_2088
_Label_2090:
! IF STATEMENT...
	mov	1004,r13		! source line 1004
	mov	"\0\0IF",r10
!   _temp_2114 = parentFound XOR 0		(bool)
	loadb	[r14+-10],r1
	mov	0,r2
	xor	r1,r2,r1
	storeb	r1,[r14+-9]
!   if _temp_2114 then goto _Label_2113 else goto _Label_2112
	loadb	[r14+-9],r1
	cmp	r1,0
	be	_Label_2112
	jmp	_Label_2113
_Label_2112:
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
!   _temp_2115 = p + 20
	load	[r14+12],r1
	add	r1,20,r1
	store	r1,[r14+-36]
!   Data Move: *_temp_2115 = 3  (sizeInBytes=4)
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
!   _temp_2116 = p + 12
	load	[r14+12],r1
	add	r1,12,r1
	store	r1,[r14+-32]
!   Data Move: *_temp_2116 = -1  (sizeInBytes=4)
	mov	-1,r1
	load	[r14+-32],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	1007,r13		! source line 1007
	mov	"\0\0SE",r10
!   _temp_2117 = &freeList
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
!   _temp_2118 = &processManagerLock
	load	[r14+8],r1
	add	r1,1692,r1
	store	r1,[r14+-24]
!   _temp_2119 = &aProcessBecameFree
	load	[r14+8],r1
	add	r1,1712,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=12  value=_temp_2118  sizeInBytes=4
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
_Label_2113:
! SEND STATEMENT...
	mov	1011,r13		! source line 1011
	mov	"\0\0SE",r10
!   _temp_2120 = &processManagerLock
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
	.word	_Label_2121
	.word	8		! total size of parameters
	.word	204		! frame size = 204
	.word	_Label_2122
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2123
	.word	12
	.word	4
	.word	_Label_2124
	.word	-16
	.word	4
	.word	_Label_2125
	.word	-20
	.word	4
	.word	_Label_2126
	.word	-24
	.word	4
	.word	_Label_2127
	.word	-28
	.word	4
	.word	_Label_2128
	.word	-32
	.word	4
	.word	_Label_2129
	.word	-36
	.word	4
	.word	_Label_2130
	.word	-9
	.word	1
	.word	_Label_2131
	.word	-40
	.word	4
	.word	_Label_2132
	.word	-44
	.word	4
	.word	_Label_2133
	.word	-48
	.word	4
	.word	_Label_2134
	.word	-52
	.word	4
	.word	_Label_2135
	.word	-56
	.word	4
	.word	_Label_2136
	.word	-60
	.word	4
	.word	_Label_2137
	.word	-64
	.word	4
	.word	_Label_2138
	.word	-68
	.word	4
	.word	_Label_2139
	.word	-72
	.word	4
	.word	_Label_2140
	.word	-76
	.word	4
	.word	_Label_2141
	.word	-80
	.word	4
	.word	_Label_2142
	.word	-84
	.word	4
	.word	_Label_2143
	.word	-88
	.word	4
	.word	_Label_2144
	.word	-92
	.word	4
	.word	_Label_2145
	.word	-96
	.word	4
	.word	_Label_2146
	.word	-100
	.word	4
	.word	_Label_2147
	.word	-104
	.word	4
	.word	_Label_2148
	.word	-108
	.word	4
	.word	_Label_2149
	.word	-112
	.word	4
	.word	_Label_2150
	.word	-116
	.word	4
	.word	_Label_2151
	.word	-120
	.word	4
	.word	_Label_2152
	.word	-124
	.word	4
	.word	_Label_2153
	.word	-128
	.word	4
	.word	_Label_2154
	.word	-132
	.word	4
	.word	_Label_2155
	.word	-136
	.word	4
	.word	_Label_2156
	.word	-140
	.word	4
	.word	_Label_2157
	.word	-144
	.word	4
	.word	_Label_2158
	.word	-148
	.word	4
	.word	_Label_2159
	.word	-152
	.word	4
	.word	_Label_2160
	.word	-156
	.word	4
	.word	_Label_2161
	.word	-160
	.word	4
	.word	_Label_2162
	.word	-164
	.word	4
	.word	_Label_2163
	.word	-168
	.word	4
	.word	_Label_2164
	.word	-172
	.word	4
	.word	_Label_2165
	.word	-176
	.word	4
	.word	_Label_2166
	.word	-180
	.word	4
	.word	_Label_2167
	.word	-184
	.word	4
	.word	_Label_2168
	.word	-188
	.word	4
	.word	_Label_2169
	.word	-192
	.word	4
	.word	_Label_2170
	.word	-196
	.word	4
	.word	_Label_2171
	.word	-200
	.word	4
	.word	_Label_2172
	.word	-204
	.word	4
	.word	_Label_2173
	.word	-10
	.word	1
	.word	0
_Label_2121:
	.ascii	"ProcessManager"
	.ascii	"::"
	.ascii	"TurnIntoZombie\0"
	.align
_Label_2122:
	.ascii	"Pself\0"
	.align
_Label_2123:
	.byte	'P'
	.ascii	"p\0"
	.align
_Label_2124:
	.byte	'?'
	.ascii	"_temp_2120\0"
	.align
_Label_2125:
	.byte	'?'
	.ascii	"_temp_2119\0"
	.align
_Label_2126:
	.byte	'?'
	.ascii	"_temp_2118\0"
	.align
_Label_2127:
	.byte	'?'
	.ascii	"_temp_2117\0"
	.align
_Label_2128:
	.byte	'?'
	.ascii	"_temp_2116\0"
	.align
_Label_2129:
	.byte	'?'
	.ascii	"_temp_2115\0"
	.align
_Label_2130:
	.byte	'C'
	.ascii	"_temp_2114\0"
	.align
_Label_2131:
	.byte	'?'
	.ascii	"_temp_2111\0"
	.align
_Label_2132:
	.byte	'?'
	.ascii	"_temp_2110\0"
	.align
_Label_2133:
	.byte	'?'
	.ascii	"_temp_2109\0"
	.align
_Label_2134:
	.byte	'?'
	.ascii	"_temp_2108\0"
	.align
_Label_2135:
	.byte	'?'
	.ascii	"_temp_2107\0"
	.align
_Label_2136:
	.byte	'?'
	.ascii	"_temp_2105\0"
	.align
_Label_2137:
	.byte	'?'
	.ascii	"_temp_2104\0"
	.align
_Label_2138:
	.byte	'?'
	.ascii	"_temp_2103\0"
	.align
_Label_2139:
	.byte	'?'
	.ascii	"_temp_2102\0"
	.align
_Label_2140:
	.byte	'?'
	.ascii	"_temp_2101\0"
	.align
_Label_2141:
	.byte	'?'
	.ascii	"_temp_2100\0"
	.align
_Label_2142:
	.byte	'?'
	.ascii	"_temp_2099\0"
	.align
_Label_2143:
	.byte	'?'
	.ascii	"_temp_2096\0"
	.align
_Label_2144:
	.byte	'?'
	.ascii	"_temp_2095\0"
	.align
_Label_2145:
	.byte	'?'
	.ascii	"_temp_2094\0"
	.align
_Label_2146:
	.byte	'?'
	.ascii	"_temp_2093\0"
	.align
_Label_2147:
	.byte	'?'
	.ascii	"_temp_2087\0"
	.align
_Label_2148:
	.byte	'?'
	.ascii	"_temp_2086\0"
	.align
_Label_2149:
	.byte	'?'
	.ascii	"_temp_2085\0"
	.align
_Label_2150:
	.byte	'?'
	.ascii	"_temp_2084\0"
	.align
_Label_2151:
	.byte	'?'
	.ascii	"_temp_2083\0"
	.align
_Label_2152:
	.byte	'?'
	.ascii	"_temp_2082\0"
	.align
_Label_2153:
	.byte	'?'
	.ascii	"_temp_2081\0"
	.align
_Label_2154:
	.byte	'?'
	.ascii	"_temp_2080\0"
	.align
_Label_2155:
	.byte	'?'
	.ascii	"_temp_2079\0"
	.align
_Label_2156:
	.byte	'?'
	.ascii	"_temp_2078\0"
	.align
_Label_2157:
	.byte	'?'
	.ascii	"_temp_2077\0"
	.align
_Label_2158:
	.byte	'?'
	.ascii	"_temp_2076\0"
	.align
_Label_2159:
	.byte	'?'
	.ascii	"_temp_2075\0"
	.align
_Label_2160:
	.byte	'?'
	.ascii	"_temp_2074\0"
	.align
_Label_2161:
	.byte	'?'
	.ascii	"_temp_2073\0"
	.align
_Label_2162:
	.byte	'?'
	.ascii	"_temp_2072\0"
	.align
_Label_2163:
	.byte	'?'
	.ascii	"_temp_2071\0"
	.align
_Label_2164:
	.byte	'?'
	.ascii	"_temp_2070\0"
	.align
_Label_2165:
	.byte	'?'
	.ascii	"_temp_2069\0"
	.align
_Label_2166:
	.byte	'?'
	.ascii	"_temp_2068\0"
	.align
_Label_2167:
	.byte	'?'
	.ascii	"_temp_2067\0"
	.align
_Label_2168:
	.byte	'?'
	.ascii	"_temp_2060\0"
	.align
_Label_2169:
	.byte	'?'
	.ascii	"_temp_2059\0"
	.align
_Label_2170:
	.byte	'I'
	.ascii	"i\0"
	.align
_Label_2171:
	.byte	'I'
	.ascii	"myPid\0"
	.align
_Label_2172:
	.byte	'I'
	.ascii	"parentPid\0"
	.align
_Label_2173:
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
_Label_3879:
	push	r0
	sub	r1,1,r1
	bne	_Label_3879
	mov	1018,r13		! source line 1018
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! SEND STATEMENT...
	mov	1023,r13		! source line 1023
	mov	"\0\0SE",r10
!   _temp_2174 = &processManagerLock
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
_Label_2175:
!   if intIsZero (proc) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2179 = proc + 20
	load	[r14+12],r1
	add	r1,20,r1
	store	r1,[r14+-48]
!   Data Move: _temp_2178 = *_temp_2179  (sizeInBytes=4)
	load	[r14+-48],r1
	load	[r1],r1
	store	r1,[r14+-52]
!   if _temp_2178 == 2 then goto _Label_2177		(int)
	load	[r14+-52],r1
	mov	2,r2
	cmp	r1,r2
	be	_Label_2177
!	jmp	_Label_2176
_Label_2176:
	mov	1029,r13		! source line 1029
	mov	"\0\0WB",r10
! SEND STATEMENT...
	mov	1031,r13		! source line 1031
	mov	"\0\0SE",r10
!   _temp_2180 = &processManagerLock
	load	[r14+8],r1
	add	r1,1692,r1
	store	r1,[r14+-44]
!   _temp_2181 = &aProcessDied
	load	[r14+8],r1
	add	r1,1740,r1
	store	r1,[r14+-40]
!   Prepare Argument: offset=12  value=_temp_2180  sizeInBytes=4
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
	jmp	_Label_2175
_Label_2177:
! ASSIGNMENT STATEMENT...
	mov	1037,r13		! source line 1037
	mov	"\0\0AS",r10
!   if intIsZero (proc) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2182 = proc + 28
	load	[r14+12],r1
	add	r1,28,r1
	store	r1,[r14+-36]
!   Data Move: exitStatus = *_temp_2182  (sizeInBytes=4)
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
!   _temp_2183 = proc + 20
	load	[r14+12],r1
	add	r1,20,r1
	store	r1,[r14+-32]
!   Data Move: *_temp_2183 = 3  (sizeInBytes=4)
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
!   _temp_2184 = proc + 12
	load	[r14+12],r1
	add	r1,12,r1
	store	r1,[r14+-28]
!   Data Move: *_temp_2184 = -1  (sizeInBytes=4)
	mov	-1,r1
	load	[r14+-28],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	1042,r13		! source line 1042
	mov	"\0\0SE",r10
!   _temp_2185 = &freeList
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
!   _temp_2186 = &processManagerLock
	load	[r14+8],r1
	add	r1,1692,r1
	store	r1,[r14+-20]
!   _temp_2187 = &aProcessBecameFree
	load	[r14+8],r1
	add	r1,1712,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=12  value=_temp_2186  sizeInBytes=4
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
!   _temp_2188 = &processManagerLock
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
	.word	_Label_2189
	.word	8		! total size of parameters
	.word	60		! frame size = 60
	.word	_Label_2190
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2191
	.word	12
	.word	4
	.word	_Label_2192
	.word	-12
	.word	4
	.word	_Label_2193
	.word	-16
	.word	4
	.word	_Label_2194
	.word	-20
	.word	4
	.word	_Label_2195
	.word	-24
	.word	4
	.word	_Label_2196
	.word	-28
	.word	4
	.word	_Label_2197
	.word	-32
	.word	4
	.word	_Label_2198
	.word	-36
	.word	4
	.word	_Label_2199
	.word	-40
	.word	4
	.word	_Label_2200
	.word	-44
	.word	4
	.word	_Label_2201
	.word	-48
	.word	4
	.word	_Label_2202
	.word	-52
	.word	4
	.word	_Label_2203
	.word	-56
	.word	4
	.word	_Label_2204
	.word	-60
	.word	4
	.word	0
_Label_2189:
	.ascii	"ProcessManager"
	.ascii	"::"
	.ascii	"WaitForZombie\0"
	.align
_Label_2190:
	.ascii	"Pself\0"
	.align
_Label_2191:
	.byte	'P'
	.ascii	"proc\0"
	.align
_Label_2192:
	.byte	'?'
	.ascii	"_temp_2188\0"
	.align
_Label_2193:
	.byte	'?'
	.ascii	"_temp_2187\0"
	.align
_Label_2194:
	.byte	'?'
	.ascii	"_temp_2186\0"
	.align
_Label_2195:
	.byte	'?'
	.ascii	"_temp_2185\0"
	.align
_Label_2196:
	.byte	'?'
	.ascii	"_temp_2184\0"
	.align
_Label_2197:
	.byte	'?'
	.ascii	"_temp_2183\0"
	.align
_Label_2198:
	.byte	'?'
	.ascii	"_temp_2182\0"
	.align
_Label_2199:
	.byte	'?'
	.ascii	"_temp_2181\0"
	.align
_Label_2200:
	.byte	'?'
	.ascii	"_temp_2180\0"
	.align
_Label_2201:
	.byte	'?'
	.ascii	"_temp_2179\0"
	.align
_Label_2202:
	.byte	'?'
	.ascii	"_temp_2178\0"
	.align
_Label_2203:
	.byte	'?'
	.ascii	"_temp_2174\0"
	.align
_Label_2204:
	.byte	'I'
	.ascii	"exitStatus\0"
	.align
! 
! ===============  CLASS FrameManager  ===============
! 
! Dispatch Table:
! 
_P_Kernel_FrameManager:
	.word	_Label_2205
	jmp	_Method_P_Kernel_FrameManager_1	! 4:	Init
	jmp	_Method_P_Kernel_FrameManager_2	! 8:	Print
	jmp	_Method_P_Kernel_FrameManager_3	! 12:	GetAFrame
	jmp	_Method_P_Kernel_FrameManager_4	! 16:	GetNewFrames
	jmp	_Method_P_Kernel_FrameManager_5	! 20:	ReturnAllFrames
	.word	0
! 
! Class descriptor:
! 
_Label_2205:
	.word	1129070931		! Magic number 0x434c4153 == 'CLAS'
	.word	_Label_2206
	.word	_sourceFileName
	.word	261		! line number
	.word	56		! size of instances, in bytes
	.word	_P_Kernel_FrameManager
	.word	_P_System_Object
	.word	0
_Label_2206:
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
_Label_3880:
	push	r0
	sub	r1,1,r1
	bne	_Label_3880
	mov	1211,r13		! source line 1211
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   _temp_2207 = _StringConst_107
	set	_StringConst_107,r1
	store	r1,[r14+-52]
!   Prepare Argument: offset=8  value=_temp_2207  sizeInBytes=4
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
!   _temp_2209 = &framesInUse
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
!   _temp_2211 = &frameManagerLock
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
!   _temp_2213 = &newFramesAvailable
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
!   _temp_2218 = 1048576		(4 bytes)
	set	1048576,r1
	store	r1,[r14+-24]
!   Calculate and save the FOR-LOOP ending value
!   _temp_2219 = 1048876		(4 bytes)
	set	1048876,r1
	store	r1,[r14+-20]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_2218  (sizeInBytes=4)
	load	[r14+-24],r1
	store	r1,[r14+-56]
_Label_2214:
!   Perform the FOR-LOOP termination test
!   if i > _temp_2219 then goto _Label_2217		
	load	[r14+-56],r1
	load	[r14+-20],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_2217
_Label_2215:
	mov	1230,r13		! source line 1230
	mov	"\0\0FB",r10
! IF STATEMENT...
	mov	1233,r13		! source line 1233
	mov	"\0\0IF",r10
!   if intIsZero (i) then goto _runtimeErrorNullPointer
	load	[r14+-56],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Data Move: _temp_2222 = *i  (sizeInBytes=4)
	load	[r14+-56],r1
	load	[r1],r1
	store	r1,[r14+-16]
!   if intIsZero (_temp_2222) then goto _Label_2221
	load	[r14+-16],r1
	cmp	r1,r0
	be	_Label_2221
!	jmp	_Label_2220
_Label_2220:
! THEN...
	mov	1234,r13		! source line 1234
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_2223 = _StringConst_108
	set	_StringConst_108,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_2223  sizeInBytes=4
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
_Label_2221:
!   Increment the FOR-LOOP index variable and jump back
_Label_2216:
!   i = i + 4
	load	[r14+-56],r1
	add	r1,4,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-56]
	jmp	_Label_2214
! END FOR
_Label_2217:
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
	.word	_Label_2224
	.word	4		! total size of parameters
	.word	56		! frame size = 56
	.word	_Label_2225
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2226
	.word	-12
	.word	4
	.word	_Label_2227
	.word	-16
	.word	4
	.word	_Label_2228
	.word	-20
	.word	4
	.word	_Label_2229
	.word	-24
	.word	4
	.word	_Label_2230
	.word	-28
	.word	4
	.word	_Label_2231
	.word	-32
	.word	4
	.word	_Label_2232
	.word	-36
	.word	4
	.word	_Label_2233
	.word	-40
	.word	4
	.word	_Label_2234
	.word	-44
	.word	4
	.word	_Label_2235
	.word	-48
	.word	4
	.word	_Label_2236
	.word	-52
	.word	4
	.word	_Label_2237
	.word	-56
	.word	4
	.word	0
_Label_2224:
	.ascii	"FrameManager"
	.ascii	"::"
	.ascii	"Init\0"
	.align
_Label_2225:
	.ascii	"Pself\0"
	.align
_Label_2226:
	.byte	'?'
	.ascii	"_temp_2223\0"
	.align
_Label_2227:
	.byte	'?'
	.ascii	"_temp_2222\0"
	.align
_Label_2228:
	.byte	'?'
	.ascii	"_temp_2219\0"
	.align
_Label_2229:
	.byte	'?'
	.ascii	"_temp_2218\0"
	.align
_Label_2230:
	.byte	'?'
	.ascii	"_temp_2213\0"
	.align
_Label_2231:
	.byte	'?'
	.ascii	"_temp_2212\0"
	.align
_Label_2232:
	.byte	'?'
	.ascii	"_temp_2211\0"
	.align
_Label_2233:
	.byte	'?'
	.ascii	"_temp_2210\0"
	.align
_Label_2234:
	.byte	'?'
	.ascii	"_temp_2209\0"
	.align
_Label_2235:
	.byte	'?'
	.ascii	"_temp_2208\0"
	.align
_Label_2236:
	.byte	'?'
	.ascii	"_temp_2207\0"
	.align
_Label_2237:
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
_Label_3881:
	push	r0
	sub	r1,1,r1
	bne	_Label_3881
	mov	1241,r13		! source line 1241
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! SEND STATEMENT...
	mov	1245,r13		! source line 1245
	mov	"\0\0SE",r10
!   _temp_2238 = &frameManagerLock
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
!   _temp_2239 = _StringConst_109
	set	_StringConst_109,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=8  value=_temp_2239  sizeInBytes=4
	load	[r14+-28],r1
	store	r1,[r15+0]
!   Call the function
	mov	1246,r13		! source line 1246
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_2240 = _StringConst_110
	set	_StringConst_110,r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=8  value=_temp_2240  sizeInBytes=4
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
!   _temp_2241 = _StringConst_111
	set	_StringConst_111,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_2241  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   Call the function
	mov	1248,r13		! source line 1248
	mov	"\0\0CE",r10
	call	print
! SEND STATEMENT...
	mov	1249,r13		! source line 1249
	mov	"\0\0SE",r10
!   _temp_2242 = &framesInUse
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
!   _temp_2243 = &frameManagerLock
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
	.word	_Label_2244
	.word	4		! total size of parameters
	.word	32		! frame size = 32
	.word	_Label_2245
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2246
	.word	-12
	.word	4
	.word	_Label_2247
	.word	-16
	.word	4
	.word	_Label_2248
	.word	-20
	.word	4
	.word	_Label_2249
	.word	-24
	.word	4
	.word	_Label_2250
	.word	-28
	.word	4
	.word	_Label_2251
	.word	-32
	.word	4
	.word	0
_Label_2244:
	.ascii	"FrameManager"
	.ascii	"::"
	.ascii	"Print\0"
	.align
_Label_2245:
	.ascii	"Pself\0"
	.align
_Label_2246:
	.byte	'?'
	.ascii	"_temp_2243\0"
	.align
_Label_2247:
	.byte	'?'
	.ascii	"_temp_2242\0"
	.align
_Label_2248:
	.byte	'?'
	.ascii	"_temp_2241\0"
	.align
_Label_2249:
	.byte	'?'
	.ascii	"_temp_2240\0"
	.align
_Label_2250:
	.byte	'?'
	.ascii	"_temp_2239\0"
	.align
_Label_2251:
	.byte	'?'
	.ascii	"_temp_2238\0"
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
_Label_3882:
	push	r0
	sub	r1,1,r1
	bne	_Label_3882
	mov	1255,r13		! source line 1255
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! SEND STATEMENT...
	mov	1263,r13		! source line 1263
	mov	"\0\0SE",r10
!   _temp_2252 = &frameManagerLock
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
_Label_2253:
!   if numberFreeFrames >= 1 then goto _Label_2255		(int)
	load	[r14+8],r1
	load	[r1+16],r1
	mov	1,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_2255
!	jmp	_Label_2254
_Label_2254:
	mov	1266,r13		! source line 1266
	mov	"\0\0WB",r10
! SEND STATEMENT...
	mov	1267,r13		! source line 1267
	mov	"\0\0SE",r10
!   _temp_2256 = &frameManagerLock
	load	[r14+8],r1
	add	r1,20,r1
	store	r1,[r14+-28]
!   _temp_2257 = &newFramesAvailable
	load	[r14+8],r1
	add	r1,40,r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=12  value=_temp_2256  sizeInBytes=4
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
	jmp	_Label_2253
_Label_2255:
! ASSIGNMENT STATEMENT...
	mov	1271,r13		! source line 1271
	mov	"\0\0AS",r10
	mov	1271,r13		! source line 1271
	mov	"\0\0SE",r10
!   _temp_2258 = &framesInUse
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
!   _temp_2259 = &frameManagerLock
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
!   _temp_2260 = f * 8192		(int)
	load	[r14+-36],r1
	mov	8192,r2
	mul	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-12]
!   frameAddr = 1048576 + _temp_2260		(int)
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
	.word	_Label_2261
	.word	4		! total size of parameters
	.word	40		! frame size = 40
	.word	_Label_2262
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2263
	.word	-12
	.word	4
	.word	_Label_2264
	.word	-16
	.word	4
	.word	_Label_2265
	.word	-20
	.word	4
	.word	_Label_2266
	.word	-24
	.word	4
	.word	_Label_2267
	.word	-28
	.word	4
	.word	_Label_2268
	.word	-32
	.word	4
	.word	_Label_2269
	.word	-36
	.word	4
	.word	_Label_2270
	.word	-40
	.word	4
	.word	0
_Label_2261:
	.ascii	"FrameManager"
	.ascii	"::"
	.ascii	"GetAFrame\0"
	.align
_Label_2262:
	.ascii	"Pself\0"
	.align
_Label_2263:
	.byte	'?'
	.ascii	"_temp_2260\0"
	.align
_Label_2264:
	.byte	'?'
	.ascii	"_temp_2259\0"
	.align
_Label_2265:
	.byte	'?'
	.ascii	"_temp_2258\0"
	.align
_Label_2266:
	.byte	'?'
	.ascii	"_temp_2257\0"
	.align
_Label_2267:
	.byte	'?'
	.ascii	"_temp_2256\0"
	.align
_Label_2268:
	.byte	'?'
	.ascii	"_temp_2252\0"
	.align
_Label_2269:
	.byte	'I'
	.ascii	"f\0"
	.align
_Label_2270:
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
_Label_3883:
	push	r0
	sub	r1,1,r1
	bne	_Label_3883
	mov	1285,r13		! source line 1285
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! SEND STATEMENT...
	mov	1290,r13		! source line 1290
	mov	"\0\0SE",r10
!   _temp_2271 = &frameManagerLock
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
_Label_2272:
!   if numberFreeFrames >= numFramesNeeded then goto _Label_2274		(int)
	load	[r14+8],r1
	load	[r1+16],r1
	load	[r14+16],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_2274
!	jmp	_Label_2273
_Label_2273:
	mov	1292,r13		! source line 1292
	mov	"\0\0WB",r10
! SEND STATEMENT...
	mov	1293,r13		! source line 1293
	mov	"\0\0SE",r10
!   _temp_2275 = &frameManagerLock
	load	[r14+8],r1
	add	r1,20,r1
	store	r1,[r14+-32]
!   _temp_2276 = &newFramesAvailable
	load	[r14+8],r1
	add	r1,40,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=12  value=_temp_2275  sizeInBytes=4
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
	jmp	_Label_2272
_Label_2274:
! ASSIGNMENT STATEMENT...
	mov	1296,r13		! source line 1296
	mov	"\0\0AS",r10
!   i = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-40]
! WHILE STATEMENT...
	mov	1296,r13		! source line 1296
	mov	"\0\0WH",r10
_Label_2277:
!   if i >= numFramesNeeded then goto _Label_2279		(int)
	load	[r14+-40],r1
	load	[r14+16],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_2279
!	jmp	_Label_2278
_Label_2278:
	mov	1296,r13		! source line 1296
	mov	"\0\0WB",r10
! ASSIGNMENT STATEMENT...
	mov	1297,r13		! source line 1297
	mov	"\0\0AS",r10
	mov	1297,r13		! source line 1297
	mov	"\0\0SE",r10
!   _temp_2280 = &framesInUse
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
!   _temp_2281 = f * 8192		(int)
	load	[r14+-44],r1
	mov	8192,r2
	mul	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-20]
!   frameAddr = 1048576 + _temp_2281		(int)
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
	jmp	_Label_2277
_Label_2279:
! ASSIGNMENT STATEMENT...
	mov	1302,r13		! source line 1302
	mov	"\0\0AS",r10
!   if intIsZero (aPageTable) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2282 = aPageTable + 4
	load	[r14+12],r1
	add	r1,4,r1
	store	r1,[r14+-16]
!   Data Move: *_temp_2282 = numFramesNeeded  (sizeInBytes=4)
	load	[r14+16],r1
	load	[r14+-16],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	1303,r13		! source line 1303
	mov	"\0\0SE",r10
!   _temp_2283 = &frameManagerLock
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
	.word	_Label_2284
	.word	12		! total size of parameters
	.word	52		! frame size = 52
	.word	_Label_2285
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2286
	.word	12
	.word	4
	.word	_Label_2287
	.word	16
	.word	4
	.word	_Label_2288
	.word	-12
	.word	4
	.word	_Label_2289
	.word	-16
	.word	4
	.word	_Label_2290
	.word	-20
	.word	4
	.word	_Label_2291
	.word	-24
	.word	4
	.word	_Label_2292
	.word	-28
	.word	4
	.word	_Label_2293
	.word	-32
	.word	4
	.word	_Label_2294
	.word	-36
	.word	4
	.word	_Label_2295
	.word	-40
	.word	4
	.word	_Label_2296
	.word	-44
	.word	4
	.word	_Label_2297
	.word	-48
	.word	4
	.word	0
_Label_2284:
	.ascii	"FrameManager"
	.ascii	"::"
	.ascii	"GetNewFrames\0"
	.align
_Label_2285:
	.ascii	"Pself\0"
	.align
_Label_2286:
	.byte	'P'
	.ascii	"aPageTable\0"
	.align
_Label_2287:
	.byte	'I'
	.ascii	"numFramesNeeded\0"
	.align
_Label_2288:
	.byte	'?'
	.ascii	"_temp_2283\0"
	.align
_Label_2289:
	.byte	'?'
	.ascii	"_temp_2282\0"
	.align
_Label_2290:
	.byte	'?'
	.ascii	"_temp_2281\0"
	.align
_Label_2291:
	.byte	'?'
	.ascii	"_temp_2280\0"
	.align
_Label_2292:
	.byte	'?'
	.ascii	"_temp_2276\0"
	.align
_Label_2293:
	.byte	'?'
	.ascii	"_temp_2275\0"
	.align
_Label_2294:
	.byte	'?'
	.ascii	"_temp_2271\0"
	.align
_Label_2295:
	.byte	'I'
	.ascii	"i\0"
	.align
_Label_2296:
	.byte	'I'
	.ascii	"f\0"
	.align
_Label_2297:
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
_Label_3884:
	push	r0
	sub	r1,1,r1
	bne	_Label_3884
	mov	1308,r13		! source line 1308
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! SEND STATEMENT...
	mov	1314,r13		! source line 1314
	mov	"\0\0SE",r10
!   _temp_2298 = &frameManagerLock
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
!   _temp_2299 = aPageTable + 4
	load	[r14+12],r1
	add	r1,4,r1
	store	r1,[r14+-32]
!   Data Move: pageToBeReturned = *_temp_2299  (sizeInBytes=4)
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
_Label_2300:
!   if i >= pageToBeReturned then goto _Label_2302		(int)
	load	[r14+-44],r1
	load	[r14+-40],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_2302
!	jmp	_Label_2301
_Label_2301:
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
!   _temp_2303 = frameAddr - 1048576		(int)
	load	[r14+-48],r1
	set	1048576,r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-28]
!   bitNumber = _temp_2303 div 8192		(int)
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
!   _temp_2304 = &framesInUse
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
!   _temp_2305 = &frameManagerLock
	load	[r14+8],r1
	add	r1,20,r1
	store	r1,[r14+-20]
!   _temp_2306 = &newFramesAvailable
	load	[r14+8],r1
	add	r1,40,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=12  value=_temp_2305  sizeInBytes=4
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
	jmp	_Label_2300
_Label_2302:
! SEND STATEMENT...
	mov	1323,r13		! source line 1323
	mov	"\0\0SE",r10
!   _temp_2307 = &frameManagerLock
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
	.word	_Label_2308
	.word	8		! total size of parameters
	.word	52		! frame size = 52
	.word	_Label_2309
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2310
	.word	12
	.word	4
	.word	_Label_2311
	.word	-12
	.word	4
	.word	_Label_2312
	.word	-16
	.word	4
	.word	_Label_2313
	.word	-20
	.word	4
	.word	_Label_2314
	.word	-24
	.word	4
	.word	_Label_2315
	.word	-28
	.word	4
	.word	_Label_2316
	.word	-32
	.word	4
	.word	_Label_2317
	.word	-36
	.word	4
	.word	_Label_2318
	.word	-40
	.word	4
	.word	_Label_2319
	.word	-44
	.word	4
	.word	_Label_2320
	.word	-48
	.word	4
	.word	_Label_2321
	.word	-52
	.word	4
	.word	0
_Label_2308:
	.ascii	"FrameManager"
	.ascii	"::"
	.ascii	"ReturnAllFrames\0"
	.align
_Label_2309:
	.ascii	"Pself\0"
	.align
_Label_2310:
	.byte	'P'
	.ascii	"aPageTable\0"
	.align
_Label_2311:
	.byte	'?'
	.ascii	"_temp_2307\0"
	.align
_Label_2312:
	.byte	'?'
	.ascii	"_temp_2306\0"
	.align
_Label_2313:
	.byte	'?'
	.ascii	"_temp_2305\0"
	.align
_Label_2314:
	.byte	'?'
	.ascii	"_temp_2304\0"
	.align
_Label_2315:
	.byte	'?'
	.ascii	"_temp_2303\0"
	.align
_Label_2316:
	.byte	'?'
	.ascii	"_temp_2299\0"
	.align
_Label_2317:
	.byte	'?'
	.ascii	"_temp_2298\0"
	.align
_Label_2318:
	.byte	'I'
	.ascii	"pageToBeReturned\0"
	.align
_Label_2319:
	.byte	'I'
	.ascii	"i\0"
	.align
_Label_2320:
	.byte	'I'
	.ascii	"frameAddr\0"
	.align
_Label_2321:
	.byte	'I'
	.ascii	"bitNumber\0"
	.align
! 
! ===============  CLASS AddrSpace  ===============
! 
! Dispatch Table:
! 
_P_Kernel_AddrSpace:
	.word	_Label_2322
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
_Label_2322:
	.word	1129070931		! Magic number 0x434c4153 == 'CLAS'
	.word	_Label_2323
	.word	_sourceFileName
	.word	280		! line number
	.word	92		! size of instances, in bytes
	.word	_P_Kernel_AddrSpace
	.word	_P_System_Object
	.word	0
_Label_2323:
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
_Label_3885:
	push	r0
	sub	r1,1,r1
	bne	_Label_3885
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
!   _temp_2324 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-108]
!   NEW ARRAY Constructor...
!   _temp_2326 = &_temp_2325
	add	r14,-104,r1
	store	r1,[r14+-20]
!   _temp_2326 = _temp_2326 + 4
	load	[r14+-20],r1
	add	r1,4,r1
	store	r1,[r14+-20]
!   Next value...
	mov	20,r1
	store	r1,[r14+-16]
_Label_2328:
!   Data Move: *_temp_2326 = 3  (sizeInBytes=4)
	mov	3,r1
	load	[r14+-20],r2
	store	r1,[r2]
!   _temp_2326 = _temp_2326 + 4
	load	[r14+-20],r1
	add	r1,4,r1
	store	r1,[r14+-20]
!   _temp_2327 = _temp_2327 + -1
	load	[r14+-16],r1
	add	r1,-1,r1
	store	r1,[r14+-16]
!   if intNotZero (_temp_2327) then goto _Label_2328
	load	[r14+-16],r1
	cmp	r1,r0
	bne	_Label_2328
!   Initialize the array size...
	mov	20,r1
	store	r1,[r14+-104]
!   _temp_2329 = &_temp_2325
	add	r14,-104,r1
	store	r1,[r14+-12]
!   make sure array has size 20
	load	[r14+-108],r1
	load	[r1],r1
	set	20, r2
	cmp	r1,0
	be	_Label_3886
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bne	_runtimeErrorWrongArraySize
_Label_3886:
!   make sure array has size 20
	load	[r14+-12],r1
	load	[r1],r1
	set	20, r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bne	_runtimeErrorWrongArraySize
!   Data Move: *_temp_2324 = *_temp_2329  (sizeInBytes=84)
	load	[r14+-12],r5
	load	[r14+-108],r4
	mov	21,r3
_Label_3887:
	load	[r5],r1
	add	r5,4,r5
	store	r1,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_3887
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
	.word	_Label_2330
	.word	4		! total size of parameters
	.word	100		! frame size = 100
	.word	_Label_2331
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2332
	.word	-12
	.word	4
	.word	_Label_2333
	.word	-16
	.word	4
	.word	_Label_2334
	.word	-20
	.word	4
	.word	_Label_2335
	.word	-104
	.word	84
	.word	_Label_2336
	.word	-108
	.word	4
	.word	0
_Label_2330:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"Init\0"
	.align
_Label_2331:
	.ascii	"Pself\0"
	.align
_Label_2332:
	.byte	'?'
	.ascii	"_temp_2329\0"
	.align
_Label_2333:
	.byte	'?'
	.ascii	"_temp_2327\0"
	.align
_Label_2334:
	.byte	'?'
	.ascii	"_temp_2326\0"
	.align
_Label_2335:
	.byte	'?'
	.ascii	"_temp_2325\0"
	.align
_Label_2336:
	.byte	'?'
	.ascii	"_temp_2324\0"
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
_Label_3888:
	push	r0
	sub	r1,1,r1
	bne	_Label_3888
	mov	1344,r13		! source line 1344
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   _temp_2337 = _StringConst_112
	set	_StringConst_112,r1
	store	r1,[r14+-164]
!   Prepare Argument: offset=8  value=_temp_2337  sizeInBytes=4
	load	[r14+-164],r1
	store	r1,[r15+0]
!   Call the function
	mov	1349,r13		! source line 1349
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_2338 = _StringConst_113
	set	_StringConst_113,r1
	store	r1,[r14+-160]
!   Prepare Argument: offset=8  value=_temp_2338  sizeInBytes=4
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
!   _temp_2343 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-156]
!   Calculate and save the FOR-LOOP ending value
!   _temp_2344 = numberOfPages - 1		(int)
	load	[r14+8],r1
	load	[r1+4],r1
	mov	1,r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-152]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_2343  (sizeInBytes=4)
	load	[r14+-156],r1
	store	r1,[r14+-168]
_Label_2339:
!   Perform the FOR-LOOP termination test
!   if i > _temp_2344 then goto _Label_2342		
	load	[r14+-168],r1
	load	[r14+-152],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_2342
_Label_2340:
	mov	1351,r13		! source line 1351
	mov	"\0\0FB",r10
! CALL STATEMENT...
!   _temp_2345 = _StringConst_114
	set	_StringConst_114,r1
	store	r1,[r14+-148]
!   Prepare Argument: offset=8  value=_temp_2345  sizeInBytes=4
	load	[r14+-148],r1
	store	r1,[r15+0]
!   Call the function
	mov	1352,r13		! source line 1352
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_2347 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-140]
!   Move address of _temp_2347 [i ] into _temp_2348
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
!   _temp_2346 = _temp_2348		(4 bytes)
	load	[r14+-136],r1
	store	r1,[r14+-144]
!   Prepare Argument: offset=8  value=_temp_2346  sizeInBytes=4
	load	[r14+-144],r1
	store	r1,[r15+0]
!   Call the function
	mov	1353,r13		! source line 1353
	mov	"\0\0CE",r10
	call	printHex
! CALL STATEMENT...
!   _temp_2349 = _StringConst_115
	set	_StringConst_115,r1
	store	r1,[r14+-132]
!   Prepare Argument: offset=8  value=_temp_2349  sizeInBytes=4
	load	[r14+-132],r1
	store	r1,[r15+0]
!   Call the function
	mov	1354,r13		! source line 1354
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_2351 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-124]
!   Move address of _temp_2351 [i ] into _temp_2352
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
!   Data Move: _temp_2350 = *_temp_2352  (sizeInBytes=4)
	load	[r14+-120],r1
	load	[r1],r1
	store	r1,[r14+-128]
!   Prepare Argument: offset=8  value=_temp_2350  sizeInBytes=4
	load	[r14+-128],r1
	store	r1,[r15+0]
!   Call the function
	mov	1355,r13		! source line 1355
	mov	"\0\0CE",r10
	call	printHex
! CALL STATEMENT...
!   _temp_2353 = _StringConst_116
	set	_StringConst_116,r1
	store	r1,[r14+-116]
!   Prepare Argument: offset=8  value=_temp_2353  sizeInBytes=4
	load	[r14+-116],r1
	store	r1,[r15+0]
!   Call the function
	mov	1356,r13		! source line 1356
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_2354 = i * 8192		(int)
	load	[r14+-168],r1
	mov	8192,r2
	mul	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-112]
!   Prepare Argument: offset=8  value=_temp_2354  sizeInBytes=4
	load	[r14+-112],r1
	store	r1,[r15+0]
!   Call the function
	mov	1357,r13		! source line 1357
	mov	"\0\0CE",r10
	call	printHex
! CALL STATEMENT...
!   _temp_2355 = _StringConst_117
	set	_StringConst_117,r1
	store	r1,[r14+-108]
!   Prepare Argument: offset=8  value=_temp_2355  sizeInBytes=4
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
!   if intIsZero (_temp_2357) then goto _runtimeErrorNullPointer
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
!   Retrieve Result: targetName=_temp_2356  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-104]
!   Prepare Argument: offset=8  value=_temp_2356  sizeInBytes=4
	load	[r14+-104],r1
	store	r1,[r15+0]
!   Call the function
	mov	1359,r13		! source line 1359
	mov	"\0\0CE",r10
	call	printHex
! CALL STATEMENT...
!   _temp_2358 = _StringConst_118
	set	_StringConst_118,r1
	store	r1,[r14+-96]
!   Prepare Argument: offset=8  value=_temp_2358  sizeInBytes=4
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
!   if intIsZero (_temp_2362) then goto _runtimeErrorNullPointer
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
!   Retrieve Result: targetName=_temp_2361  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-92]
!   if intIsZero (_temp_2361) then goto _Label_2360
	load	[r14+-92],r1
	cmp	r1,r0
	be	_Label_2360
!	jmp	_Label_2359
_Label_2359:
! THEN...
	mov	1362,r13		! source line 1362
	mov	"\0\0TN",r10
! CALL STATEMENT...
	mov	1362,r13		! source line 1362
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-80]
!   if intIsZero (_temp_2364) then goto _runtimeErrorNullPointer
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
!   Retrieve Result: targetName=_temp_2363  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-84]
!   Prepare Argument: offset=8  value=_temp_2363  sizeInBytes=4
	load	[r14+-84],r1
	store	r1,[r15+0]
!   Call the function
	mov	1362,r13		! source line 1362
	mov	"\0\0CE",r10
	call	printHex
	jmp	_Label_2365
_Label_2360:
! ELSE...
	mov	1364,r13		! source line 1364
	mov	"\0\0EL",r10
! CALL STATEMENT...
!   _temp_2366 = _StringConst_119
	set	_StringConst_119,r1
	store	r1,[r14+-76]
!   Prepare Argument: offset=8  value=_temp_2366  sizeInBytes=4
	load	[r14+-76],r1
	store	r1,[r15+0]
!   Call the function
	mov	1364,r13		! source line 1364
	mov	"\0\0CE",r10
	call	print
! END IF...
_Label_2365:
! CALL STATEMENT...
!   _temp_2367 = _StringConst_120
	set	_StringConst_120,r1
	store	r1,[r14+-72]
!   Prepare Argument: offset=8  value=_temp_2367  sizeInBytes=4
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
!   if intIsZero (_temp_2370) then goto _runtimeErrorNullPointer
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
!   if result==true then goto _Label_2368 else goto _Label_2369
	loadb	[r15],r1
	cmp	r1,0
	be	_Label_2369
	jmp	_Label_2368
_Label_2368:
! THEN...
	mov	1368,r13		! source line 1368
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_2371 = _StringConst_121
	set	_StringConst_121,r1
	store	r1,[r14+-64]
!   Prepare Argument: offset=8  value=_temp_2371  sizeInBytes=4
	load	[r14+-64],r1
	store	r1,[r15+0]
!   Call the function
	mov	1368,r13		! source line 1368
	mov	"\0\0CE",r10
	call	print
	jmp	_Label_2372
_Label_2369:
! ELSE...
	mov	1370,r13		! source line 1370
	mov	"\0\0EL",r10
! CALL STATEMENT...
!   _temp_2373 = _StringConst_122
	set	_StringConst_122,r1
	store	r1,[r14+-60]
!   Prepare Argument: offset=8  value=_temp_2373  sizeInBytes=4
	load	[r14+-60],r1
	store	r1,[r15+0]
!   Call the function
	mov	1370,r13		! source line 1370
	mov	"\0\0CE",r10
	call	print
! END IF...
_Label_2372:
! CALL STATEMENT...
!   _temp_2374 = _StringConst_123
	set	_StringConst_123,r1
	store	r1,[r14+-56]
!   Prepare Argument: offset=8  value=_temp_2374  sizeInBytes=4
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
!   if intIsZero (_temp_2377) then goto _runtimeErrorNullPointer
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
!   if result==true then goto _Label_2375 else goto _Label_2376
	loadb	[r15],r1
	cmp	r1,0
	be	_Label_2376
	jmp	_Label_2375
_Label_2375:
! THEN...
	mov	1374,r13		! source line 1374
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_2378 = _StringConst_124
	set	_StringConst_124,r1
	store	r1,[r14+-48]
!   Prepare Argument: offset=8  value=_temp_2378  sizeInBytes=4
	load	[r14+-48],r1
	store	r1,[r15+0]
!   Call the function
	mov	1374,r13		! source line 1374
	mov	"\0\0CE",r10
	call	print
	jmp	_Label_2379
_Label_2376:
! ELSE...
	mov	1376,r13		! source line 1376
	mov	"\0\0EL",r10
! CALL STATEMENT...
!   _temp_2380 = _StringConst_125
	set	_StringConst_125,r1
	store	r1,[r14+-44]
!   Prepare Argument: offset=8  value=_temp_2380  sizeInBytes=4
	load	[r14+-44],r1
	store	r1,[r15+0]
!   Call the function
	mov	1376,r13		! source line 1376
	mov	"\0\0CE",r10
	call	print
! END IF...
_Label_2379:
! CALL STATEMENT...
!   _temp_2381 = _StringConst_126
	set	_StringConst_126,r1
	store	r1,[r14+-40]
!   Prepare Argument: offset=8  value=_temp_2381  sizeInBytes=4
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
!   if intIsZero (_temp_2384) then goto _runtimeErrorNullPointer
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
!   if result==true then goto _Label_2382 else goto _Label_2383
	loadb	[r15],r1
	cmp	r1,0
	be	_Label_2383
	jmp	_Label_2382
_Label_2382:
! THEN...
	mov	1380,r13		! source line 1380
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_2385 = _StringConst_127
	set	_StringConst_127,r1
	store	r1,[r14+-32]
!   Prepare Argument: offset=8  value=_temp_2385  sizeInBytes=4
	load	[r14+-32],r1
	store	r1,[r15+0]
!   Call the function
	mov	1380,r13		! source line 1380
	mov	"\0\0CE",r10
	call	print
	jmp	_Label_2386
_Label_2383:
! ELSE...
	mov	1382,r13		! source line 1382
	mov	"\0\0EL",r10
! CALL STATEMENT...
!   _temp_2387 = _StringConst_128
	set	_StringConst_128,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=8  value=_temp_2387  sizeInBytes=4
	load	[r14+-28],r1
	store	r1,[r15+0]
!   Call the function
	mov	1382,r13		! source line 1382
	mov	"\0\0CE",r10
	call	print
! END IF...
_Label_2386:
! CALL STATEMENT...
!   _temp_2388 = _StringConst_129
	set	_StringConst_129,r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=8  value=_temp_2388  sizeInBytes=4
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
!   if intIsZero (_temp_2391) then goto _runtimeErrorNullPointer
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
!   if result==true then goto _Label_2389 else goto _Label_2390
	loadb	[r15],r1
	cmp	r1,0
	be	_Label_2390
	jmp	_Label_2389
_Label_2389:
! THEN...
	mov	1386,r13		! source line 1386
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_2392 = _StringConst_130
	set	_StringConst_130,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_2392  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+0]
!   Call the function
	mov	1386,r13		! source line 1386
	mov	"\0\0CE",r10
	call	print
	jmp	_Label_2393
_Label_2390:
! ELSE...
	mov	1388,r13		! source line 1388
	mov	"\0\0EL",r10
! CALL STATEMENT...
!   _temp_2394 = _StringConst_131
	set	_StringConst_131,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_2394  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	1388,r13		! source line 1388
	mov	"\0\0CE",r10
	call	print
! END IF...
_Label_2393:
! CALL STATEMENT...
!   Call the function
	mov	1390,r13		! source line 1390
	mov	"\0\0CA",r10
	call	_P_System_nl
!   Increment the FOR-LOOP index variable and jump back
_Label_2341:
!   i = i + 1
	load	[r14+-168],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-168]
	jmp	_Label_2339
! END FOR
_Label_2342:
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
	.word	_Label_2395
	.word	4		! total size of parameters
	.word	168		! frame size = 168
	.word	_Label_2396
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2397
	.word	-12
	.word	4
	.word	_Label_2398
	.word	-16
	.word	4
	.word	_Label_2399
	.word	-20
	.word	4
	.word	_Label_2400
	.word	-24
	.word	4
	.word	_Label_2401
	.word	-28
	.word	4
	.word	_Label_2402
	.word	-32
	.word	4
	.word	_Label_2403
	.word	-36
	.word	4
	.word	_Label_2404
	.word	-40
	.word	4
	.word	_Label_2405
	.word	-44
	.word	4
	.word	_Label_2406
	.word	-48
	.word	4
	.word	_Label_2407
	.word	-52
	.word	4
	.word	_Label_2408
	.word	-56
	.word	4
	.word	_Label_2409
	.word	-60
	.word	4
	.word	_Label_2410
	.word	-64
	.word	4
	.word	_Label_2411
	.word	-68
	.word	4
	.word	_Label_2412
	.word	-72
	.word	4
	.word	_Label_2413
	.word	-76
	.word	4
	.word	_Label_2414
	.word	-80
	.word	4
	.word	_Label_2415
	.word	-84
	.word	4
	.word	_Label_2416
	.word	-88
	.word	4
	.word	_Label_2417
	.word	-92
	.word	4
	.word	_Label_2418
	.word	-96
	.word	4
	.word	_Label_2419
	.word	-100
	.word	4
	.word	_Label_2420
	.word	-104
	.word	4
	.word	_Label_2421
	.word	-108
	.word	4
	.word	_Label_2422
	.word	-112
	.word	4
	.word	_Label_2423
	.word	-116
	.word	4
	.word	_Label_2424
	.word	-120
	.word	4
	.word	_Label_2425
	.word	-124
	.word	4
	.word	_Label_2426
	.word	-128
	.word	4
	.word	_Label_2427
	.word	-132
	.word	4
	.word	_Label_2428
	.word	-136
	.word	4
	.word	_Label_2429
	.word	-140
	.word	4
	.word	_Label_2430
	.word	-144
	.word	4
	.word	_Label_2431
	.word	-148
	.word	4
	.word	_Label_2432
	.word	-152
	.word	4
	.word	_Label_2433
	.word	-156
	.word	4
	.word	_Label_2434
	.word	-160
	.word	4
	.word	_Label_2435
	.word	-164
	.word	4
	.word	_Label_2436
	.word	-168
	.word	4
	.word	0
_Label_2395:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"Print\0"
	.align
_Label_2396:
	.ascii	"Pself\0"
	.align
_Label_2397:
	.byte	'?'
	.ascii	"_temp_2394\0"
	.align
_Label_2398:
	.byte	'?'
	.ascii	"_temp_2392\0"
	.align
_Label_2399:
	.byte	'?'
	.ascii	"_temp_2391\0"
	.align
_Label_2400:
	.byte	'?'
	.ascii	"_temp_2388\0"
	.align
_Label_2401:
	.byte	'?'
	.ascii	"_temp_2387\0"
	.align
_Label_2402:
	.byte	'?'
	.ascii	"_temp_2385\0"
	.align
_Label_2403:
	.byte	'?'
	.ascii	"_temp_2384\0"
	.align
_Label_2404:
	.byte	'?'
	.ascii	"_temp_2381\0"
	.align
_Label_2405:
	.byte	'?'
	.ascii	"_temp_2380\0"
	.align
_Label_2406:
	.byte	'?'
	.ascii	"_temp_2378\0"
	.align
_Label_2407:
	.byte	'?'
	.ascii	"_temp_2377\0"
	.align
_Label_2408:
	.byte	'?'
	.ascii	"_temp_2374\0"
	.align
_Label_2409:
	.byte	'?'
	.ascii	"_temp_2373\0"
	.align
_Label_2410:
	.byte	'?'
	.ascii	"_temp_2371\0"
	.align
_Label_2411:
	.byte	'?'
	.ascii	"_temp_2370\0"
	.align
_Label_2412:
	.byte	'?'
	.ascii	"_temp_2367\0"
	.align
_Label_2413:
	.byte	'?'
	.ascii	"_temp_2366\0"
	.align
_Label_2414:
	.byte	'?'
	.ascii	"_temp_2364\0"
	.align
_Label_2415:
	.byte	'?'
	.ascii	"_temp_2363\0"
	.align
_Label_2416:
	.byte	'?'
	.ascii	"_temp_2362\0"
	.align
_Label_2417:
	.byte	'?'
	.ascii	"_temp_2361\0"
	.align
_Label_2418:
	.byte	'?'
	.ascii	"_temp_2358\0"
	.align
_Label_2419:
	.byte	'?'
	.ascii	"_temp_2357\0"
	.align
_Label_2420:
	.byte	'?'
	.ascii	"_temp_2356\0"
	.align
_Label_2421:
	.byte	'?'
	.ascii	"_temp_2355\0"
	.align
_Label_2422:
	.byte	'?'
	.ascii	"_temp_2354\0"
	.align
_Label_2423:
	.byte	'?'
	.ascii	"_temp_2353\0"
	.align
_Label_2424:
	.byte	'?'
	.ascii	"_temp_2352\0"
	.align
_Label_2425:
	.byte	'?'
	.ascii	"_temp_2351\0"
	.align
_Label_2426:
	.byte	'?'
	.ascii	"_temp_2350\0"
	.align
_Label_2427:
	.byte	'?'
	.ascii	"_temp_2349\0"
	.align
_Label_2428:
	.byte	'?'
	.ascii	"_temp_2348\0"
	.align
_Label_2429:
	.byte	'?'
	.ascii	"_temp_2347\0"
	.align
_Label_2430:
	.byte	'?'
	.ascii	"_temp_2346\0"
	.align
_Label_2431:
	.byte	'?'
	.ascii	"_temp_2345\0"
	.align
_Label_2432:
	.byte	'?'
	.ascii	"_temp_2344\0"
	.align
_Label_2433:
	.byte	'?'
	.ascii	"_temp_2343\0"
	.align
_Label_2434:
	.byte	'?'
	.ascii	"_temp_2338\0"
	.align
_Label_2435:
	.byte	'?'
	.ascii	"_temp_2337\0"
	.align
_Label_2436:
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
_Label_3889:
	push	r0
	sub	r1,1,r1
	bne	_Label_3889
	mov	1396,r13		! source line 1396
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! RETURN STATEMENT...
	mov	1401,r13		! source line 1401
	mov	"\0\0RE",r10
!   _temp_2439 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-16]
!   Move address of _temp_2439 [entry ] into _temp_2440
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
!   Data Move: _temp_2438 = *_temp_2440  (sizeInBytes=4)
	load	[r14+-12],r1
	load	[r1],r1
	store	r1,[r14+-20]
!   _temp_2437 = _temp_2438 AND -8192		(int)
	load	[r14+-20],r1
	mov	-8192,r2
	and	r1,r2,r1
	store	r1,[r14+-24]
!   ReturnResult: _temp_2437  (sizeInBytes=4)
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
	.word	_Label_2441
	.word	8		! total size of parameters
	.word	16		! frame size = 16
	.word	_Label_2442
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2443
	.word	12
	.word	4
	.word	_Label_2444
	.word	-12
	.word	4
	.word	_Label_2445
	.word	-16
	.word	4
	.word	_Label_2446
	.word	-20
	.word	4
	.word	_Label_2447
	.word	-24
	.word	4
	.word	0
_Label_2441:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"ExtractFrameAddr\0"
	.align
_Label_2442:
	.ascii	"Pself\0"
	.align
_Label_2443:
	.byte	'I'
	.ascii	"entry\0"
	.align
_Label_2444:
	.byte	'?'
	.ascii	"_temp_2440\0"
	.align
_Label_2445:
	.byte	'?'
	.ascii	"_temp_2439\0"
	.align
_Label_2446:
	.byte	'?'
	.ascii	"_temp_2438\0"
	.align
_Label_2447:
	.byte	'?'
	.ascii	"_temp_2437\0"
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
_Label_3890:
	push	r0
	sub	r1,1,r1
	bne	_Label_3890
	mov	1406,r13		! source line 1406
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! RETURN STATEMENT...
	mov	1410,r13		! source line 1410
	mov	"\0\0RE",r10
!   _temp_2450 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-16]
!   Move address of _temp_2450 [entry ] into _temp_2451
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
!   Data Move: _temp_2449 = *_temp_2451  (sizeInBytes=4)
	load	[r14+-12],r1
	load	[r1],r1
	store	r1,[r14+-20]
!   _temp_2448 = _temp_2449 AND 8176		(int)
	load	[r14+-20],r1
	mov	8176,r2
	and	r1,r2,r1
	store	r1,[r14+-24]
!   ReturnResult: _temp_2448  (sizeInBytes=4)
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
	.word	_Label_2452
	.word	8		! total size of parameters
	.word	16		! frame size = 16
	.word	_Label_2453
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2454
	.word	12
	.word	4
	.word	_Label_2455
	.word	-12
	.word	4
	.word	_Label_2456
	.word	-16
	.word	4
	.word	_Label_2457
	.word	-20
	.word	4
	.word	_Label_2458
	.word	-24
	.word	4
	.word	0
_Label_2452:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"ExtractUndefinedBits\0"
	.align
_Label_2453:
	.ascii	"Pself\0"
	.align
_Label_2454:
	.byte	'I'
	.ascii	"entry\0"
	.align
_Label_2455:
	.byte	'?'
	.ascii	"_temp_2451\0"
	.align
_Label_2456:
	.byte	'?'
	.ascii	"_temp_2450\0"
	.align
_Label_2457:
	.byte	'?'
	.ascii	"_temp_2449\0"
	.align
_Label_2458:
	.byte	'?'
	.ascii	"_temp_2448\0"
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
_Label_3891:
	push	r0
	sub	r1,1,r1
	bne	_Label_3891
	mov	1415,r13		! source line 1415
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1420,r13		! source line 1420
	mov	"\0\0AS",r10
!   _temp_2459 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-36]
!   Move address of _temp_2459 [entry ] into _temp_2460
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
!   _temp_2464 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-16]
!   Move address of _temp_2464 [entry ] into _temp_2465
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
!   Data Move: _temp_2463 = *_temp_2465  (sizeInBytes=4)
	load	[r14+-12],r1
	load	[r1],r1
	store	r1,[r14+-20]
!   _temp_2462 = _temp_2463 AND 8191		(int)
	load	[r14+-20],r1
	mov	8191,r2
	and	r1,r2,r1
	store	r1,[r14+-24]
!   _temp_2461 = _temp_2462 OR frameAddr		(int)
	load	[r14+-24],r1
	load	[r14+16],r2
	or	r1,r2,r1
	store	r1,[r14+-28]
!   Data Move: *_temp_2460 = _temp_2461  (sizeInBytes=4)
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
	.word	_Label_2466
	.word	12		! total size of parameters
	.word	28		! frame size = 28
	.word	_Label_2467
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2468
	.word	12
	.word	4
	.word	_Label_2469
	.word	16
	.word	4
	.word	_Label_2470
	.word	-12
	.word	4
	.word	_Label_2471
	.word	-16
	.word	4
	.word	_Label_2472
	.word	-20
	.word	4
	.word	_Label_2473
	.word	-24
	.word	4
	.word	_Label_2474
	.word	-28
	.word	4
	.word	_Label_2475
	.word	-32
	.word	4
	.word	_Label_2476
	.word	-36
	.word	4
	.word	0
_Label_2466:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"SetFrameAddr\0"
	.align
_Label_2467:
	.ascii	"Pself\0"
	.align
_Label_2468:
	.byte	'I'
	.ascii	"entry\0"
	.align
_Label_2469:
	.byte	'I'
	.ascii	"frameAddr\0"
	.align
_Label_2470:
	.byte	'?'
	.ascii	"_temp_2465\0"
	.align
_Label_2471:
	.byte	'?'
	.ascii	"_temp_2464\0"
	.align
_Label_2472:
	.byte	'?'
	.ascii	"_temp_2463\0"
	.align
_Label_2473:
	.byte	'?'
	.ascii	"_temp_2462\0"
	.align
_Label_2474:
	.byte	'?'
	.ascii	"_temp_2461\0"
	.align
_Label_2475:
	.byte	'?'
	.ascii	"_temp_2460\0"
	.align
_Label_2476:
	.byte	'?'
	.ascii	"_temp_2459\0"
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
_Label_3892:
	push	r0
	sub	r1,1,r1
	bne	_Label_3892
	mov	1425,r13		! source line 1425
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! RETURN STATEMENT...
	mov	1429,r13		! source line 1429
	mov	"\0\0RE",r10
!   _temp_2480 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-20]
!   Move address of _temp_2480 [entry ] into _temp_2481
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
!   Data Move: _temp_2479 = *_temp_2481  (sizeInBytes=4)
	load	[r14+-16],r1
	load	[r1],r1
	store	r1,[r14+-24]
!   _temp_2478 = _temp_2479 AND 8		(int)
	load	[r14+-24],r1
	mov	8,r2
	and	r1,r2,r1
	store	r1,[r14+-28]
!   if intIsZero (_temp_2478) then goto _Label_2482
	load	[r14+-28],r1
	cmp	r1,r0
	be	_Label_2482
!   _temp_2477 = 1		(1 byte)
	mov	1,r1
	storeb	r1,[r14+-9]
	jmp	_Label_2483
_Label_2482:
!   _temp_2477 = 0		(1 byte)
	mov	0,r1
	storeb	r1,[r14+-9]
_Label_2483:
!   ReturnResult: _temp_2477  (sizeInBytes=1)
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
	.word	_Label_2484
	.word	8		! total size of parameters
	.word	20		! frame size = 20
	.word	_Label_2485
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2486
	.word	12
	.word	4
	.word	_Label_2487
	.word	-16
	.word	4
	.word	_Label_2488
	.word	-20
	.word	4
	.word	_Label_2489
	.word	-24
	.word	4
	.word	_Label_2490
	.word	-28
	.word	4
	.word	_Label_2491
	.word	-9
	.word	1
	.word	0
_Label_2484:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"IsDirty\0"
	.align
_Label_2485:
	.ascii	"Pself\0"
	.align
_Label_2486:
	.byte	'I'
	.ascii	"entry\0"
	.align
_Label_2487:
	.byte	'?'
	.ascii	"_temp_2481\0"
	.align
_Label_2488:
	.byte	'?'
	.ascii	"_temp_2480\0"
	.align
_Label_2489:
	.byte	'?'
	.ascii	"_temp_2479\0"
	.align
_Label_2490:
	.byte	'?'
	.ascii	"_temp_2478\0"
	.align
_Label_2491:
	.byte	'C'
	.ascii	"_temp_2477\0"
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
_Label_3893:
	push	r0
	sub	r1,1,r1
	bne	_Label_3893
	mov	1434,r13		! source line 1434
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! RETURN STATEMENT...
	mov	1438,r13		! source line 1438
	mov	"\0\0RE",r10
!   _temp_2495 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-20]
!   Move address of _temp_2495 [entry ] into _temp_2496
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
!   Data Move: _temp_2494 = *_temp_2496  (sizeInBytes=4)
	load	[r14+-16],r1
	load	[r1],r1
	store	r1,[r14+-24]
!   _temp_2493 = _temp_2494 AND 4		(int)
	load	[r14+-24],r1
	mov	4,r2
	and	r1,r2,r1
	store	r1,[r14+-28]
!   if intIsZero (_temp_2493) then goto _Label_2497
	load	[r14+-28],r1
	cmp	r1,r0
	be	_Label_2497
!   _temp_2492 = 1		(1 byte)
	mov	1,r1
	storeb	r1,[r14+-9]
	jmp	_Label_2498
_Label_2497:
!   _temp_2492 = 0		(1 byte)
	mov	0,r1
	storeb	r1,[r14+-9]
_Label_2498:
!   ReturnResult: _temp_2492  (sizeInBytes=1)
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
	.word	_Label_2499
	.word	8		! total size of parameters
	.word	20		! frame size = 20
	.word	_Label_2500
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2501
	.word	12
	.word	4
	.word	_Label_2502
	.word	-16
	.word	4
	.word	_Label_2503
	.word	-20
	.word	4
	.word	_Label_2504
	.word	-24
	.word	4
	.word	_Label_2505
	.word	-28
	.word	4
	.word	_Label_2506
	.word	-9
	.word	1
	.word	0
_Label_2499:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"IsReferenced\0"
	.align
_Label_2500:
	.ascii	"Pself\0"
	.align
_Label_2501:
	.byte	'I'
	.ascii	"entry\0"
	.align
_Label_2502:
	.byte	'?'
	.ascii	"_temp_2496\0"
	.align
_Label_2503:
	.byte	'?'
	.ascii	"_temp_2495\0"
	.align
_Label_2504:
	.byte	'?'
	.ascii	"_temp_2494\0"
	.align
_Label_2505:
	.byte	'?'
	.ascii	"_temp_2493\0"
	.align
_Label_2506:
	.byte	'C'
	.ascii	"_temp_2492\0"
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
_Label_3894:
	push	r0
	sub	r1,1,r1
	bne	_Label_3894
	mov	1443,r13		! source line 1443
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! RETURN STATEMENT...
	mov	1447,r13		! source line 1447
	mov	"\0\0RE",r10
!   _temp_2510 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-20]
!   Move address of _temp_2510 [entry ] into _temp_2511
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
!   Data Move: _temp_2509 = *_temp_2511  (sizeInBytes=4)
	load	[r14+-16],r1
	load	[r1],r1
	store	r1,[r14+-24]
!   _temp_2508 = _temp_2509 AND 2		(int)
	load	[r14+-24],r1
	mov	2,r2
	and	r1,r2,r1
	store	r1,[r14+-28]
!   if intIsZero (_temp_2508) then goto _Label_2512
	load	[r14+-28],r1
	cmp	r1,r0
	be	_Label_2512
!   _temp_2507 = 1		(1 byte)
	mov	1,r1
	storeb	r1,[r14+-9]
	jmp	_Label_2513
_Label_2512:
!   _temp_2507 = 0		(1 byte)
	mov	0,r1
	storeb	r1,[r14+-9]
_Label_2513:
!   ReturnResult: _temp_2507  (sizeInBytes=1)
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
	.word	_Label_2514
	.word	8		! total size of parameters
	.word	20		! frame size = 20
	.word	_Label_2515
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2516
	.word	12
	.word	4
	.word	_Label_2517
	.word	-16
	.word	4
	.word	_Label_2518
	.word	-20
	.word	4
	.word	_Label_2519
	.word	-24
	.word	4
	.word	_Label_2520
	.word	-28
	.word	4
	.word	_Label_2521
	.word	-9
	.word	1
	.word	0
_Label_2514:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"IsWritable\0"
	.align
_Label_2515:
	.ascii	"Pself\0"
	.align
_Label_2516:
	.byte	'I'
	.ascii	"entry\0"
	.align
_Label_2517:
	.byte	'?'
	.ascii	"_temp_2511\0"
	.align
_Label_2518:
	.byte	'?'
	.ascii	"_temp_2510\0"
	.align
_Label_2519:
	.byte	'?'
	.ascii	"_temp_2509\0"
	.align
_Label_2520:
	.byte	'?'
	.ascii	"_temp_2508\0"
	.align
_Label_2521:
	.byte	'C'
	.ascii	"_temp_2507\0"
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
_Label_3895:
	push	r0
	sub	r1,1,r1
	bne	_Label_3895
	mov	1452,r13		! source line 1452
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! RETURN STATEMENT...
	mov	1456,r13		! source line 1456
	mov	"\0\0RE",r10
!   _temp_2525 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-20]
!   Move address of _temp_2525 [entry ] into _temp_2526
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
!   Data Move: _temp_2524 = *_temp_2526  (sizeInBytes=4)
	load	[r14+-16],r1
	load	[r1],r1
	store	r1,[r14+-24]
!   _temp_2523 = _temp_2524 AND 1		(int)
	load	[r14+-24],r1
	mov	1,r2
	and	r1,r2,r1
	store	r1,[r14+-28]
!   if intIsZero (_temp_2523) then goto _Label_2527
	load	[r14+-28],r1
	cmp	r1,r0
	be	_Label_2527
!   _temp_2522 = 1		(1 byte)
	mov	1,r1
	storeb	r1,[r14+-9]
	jmp	_Label_2528
_Label_2527:
!   _temp_2522 = 0		(1 byte)
	mov	0,r1
	storeb	r1,[r14+-9]
_Label_2528:
!   ReturnResult: _temp_2522  (sizeInBytes=1)
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
	.word	_Label_2529
	.word	8		! total size of parameters
	.word	20		! frame size = 20
	.word	_Label_2530
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2531
	.word	12
	.word	4
	.word	_Label_2532
	.word	-16
	.word	4
	.word	_Label_2533
	.word	-20
	.word	4
	.word	_Label_2534
	.word	-24
	.word	4
	.word	_Label_2535
	.word	-28
	.word	4
	.word	_Label_2536
	.word	-9
	.word	1
	.word	0
_Label_2529:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"IsValid\0"
	.align
_Label_2530:
	.ascii	"Pself\0"
	.align
_Label_2531:
	.byte	'I'
	.ascii	"entry\0"
	.align
_Label_2532:
	.byte	'?'
	.ascii	"_temp_2526\0"
	.align
_Label_2533:
	.byte	'?'
	.ascii	"_temp_2525\0"
	.align
_Label_2534:
	.byte	'?'
	.ascii	"_temp_2524\0"
	.align
_Label_2535:
	.byte	'?'
	.ascii	"_temp_2523\0"
	.align
_Label_2536:
	.byte	'C'
	.ascii	"_temp_2522\0"
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
_Label_3896:
	push	r0
	sub	r1,1,r1
	bne	_Label_3896
	mov	1461,r13		! source line 1461
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1465,r13		! source line 1465
	mov	"\0\0AS",r10
!   _temp_2537 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-32]
!   Move address of _temp_2537 [entry ] into _temp_2538
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
!   _temp_2541 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-16]
!   Move address of _temp_2541 [entry ] into _temp_2542
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
!   Data Move: _temp_2540 = *_temp_2542  (sizeInBytes=4)
	load	[r14+-12],r1
	load	[r1],r1
	store	r1,[r14+-20]
!   _temp_2539 = _temp_2540 OR 8		(int)
	load	[r14+-20],r1
	mov	8,r2
	or	r1,r2,r1
	store	r1,[r14+-24]
!   Data Move: *_temp_2538 = _temp_2539  (sizeInBytes=4)
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
	.word	_Label_2543
	.word	8		! total size of parameters
	.word	24		! frame size = 24
	.word	_Label_2544
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2545
	.word	12
	.word	4
	.word	_Label_2546
	.word	-12
	.word	4
	.word	_Label_2547
	.word	-16
	.word	4
	.word	_Label_2548
	.word	-20
	.word	4
	.word	_Label_2549
	.word	-24
	.word	4
	.word	_Label_2550
	.word	-28
	.word	4
	.word	_Label_2551
	.word	-32
	.word	4
	.word	0
_Label_2543:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"SetDirty\0"
	.align
_Label_2544:
	.ascii	"Pself\0"
	.align
_Label_2545:
	.byte	'I'
	.ascii	"entry\0"
	.align
_Label_2546:
	.byte	'?'
	.ascii	"_temp_2542\0"
	.align
_Label_2547:
	.byte	'?'
	.ascii	"_temp_2541\0"
	.align
_Label_2548:
	.byte	'?'
	.ascii	"_temp_2540\0"
	.align
_Label_2549:
	.byte	'?'
	.ascii	"_temp_2539\0"
	.align
_Label_2550:
	.byte	'?'
	.ascii	"_temp_2538\0"
	.align
_Label_2551:
	.byte	'?'
	.ascii	"_temp_2537\0"
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
_Label_3897:
	push	r0
	sub	r1,1,r1
	bne	_Label_3897
	mov	1470,r13		! source line 1470
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1474,r13		! source line 1474
	mov	"\0\0AS",r10
!   _temp_2552 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-32]
!   Move address of _temp_2552 [entry ] into _temp_2553
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
!   _temp_2556 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-16]
!   Move address of _temp_2556 [entry ] into _temp_2557
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
!   Data Move: _temp_2555 = *_temp_2557  (sizeInBytes=4)
	load	[r14+-12],r1
	load	[r1],r1
	store	r1,[r14+-20]
!   _temp_2554 = _temp_2555 OR 4		(int)
	load	[r14+-20],r1
	mov	4,r2
	or	r1,r2,r1
	store	r1,[r14+-24]
!   Data Move: *_temp_2553 = _temp_2554  (sizeInBytes=4)
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
	.word	_Label_2558
	.word	8		! total size of parameters
	.word	24		! frame size = 24
	.word	_Label_2559
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2560
	.word	12
	.word	4
	.word	_Label_2561
	.word	-12
	.word	4
	.word	_Label_2562
	.word	-16
	.word	4
	.word	_Label_2563
	.word	-20
	.word	4
	.word	_Label_2564
	.word	-24
	.word	4
	.word	_Label_2565
	.word	-28
	.word	4
	.word	_Label_2566
	.word	-32
	.word	4
	.word	0
_Label_2558:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"SetReferenced\0"
	.align
_Label_2559:
	.ascii	"Pself\0"
	.align
_Label_2560:
	.byte	'I'
	.ascii	"entry\0"
	.align
_Label_2561:
	.byte	'?'
	.ascii	"_temp_2557\0"
	.align
_Label_2562:
	.byte	'?'
	.ascii	"_temp_2556\0"
	.align
_Label_2563:
	.byte	'?'
	.ascii	"_temp_2555\0"
	.align
_Label_2564:
	.byte	'?'
	.ascii	"_temp_2554\0"
	.align
_Label_2565:
	.byte	'?'
	.ascii	"_temp_2553\0"
	.align
_Label_2566:
	.byte	'?'
	.ascii	"_temp_2552\0"
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
_Label_3898:
	push	r0
	sub	r1,1,r1
	bne	_Label_3898
	mov	1479,r13		! source line 1479
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1483,r13		! source line 1483
	mov	"\0\0AS",r10
!   _temp_2567 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-32]
!   Move address of _temp_2567 [entry ] into _temp_2568
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
!   _temp_2571 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-16]
!   Move address of _temp_2571 [entry ] into _temp_2572
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
!   Data Move: _temp_2570 = *_temp_2572  (sizeInBytes=4)
	load	[r14+-12],r1
	load	[r1],r1
	store	r1,[r14+-20]
!   _temp_2569 = _temp_2570 OR 2		(int)
	load	[r14+-20],r1
	mov	2,r2
	or	r1,r2,r1
	store	r1,[r14+-24]
!   Data Move: *_temp_2568 = _temp_2569  (sizeInBytes=4)
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
	.word	_Label_2573
	.word	8		! total size of parameters
	.word	24		! frame size = 24
	.word	_Label_2574
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2575
	.word	12
	.word	4
	.word	_Label_2576
	.word	-12
	.word	4
	.word	_Label_2577
	.word	-16
	.word	4
	.word	_Label_2578
	.word	-20
	.word	4
	.word	_Label_2579
	.word	-24
	.word	4
	.word	_Label_2580
	.word	-28
	.word	4
	.word	_Label_2581
	.word	-32
	.word	4
	.word	0
_Label_2573:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"SetWritable\0"
	.align
_Label_2574:
	.ascii	"Pself\0"
	.align
_Label_2575:
	.byte	'I'
	.ascii	"entry\0"
	.align
_Label_2576:
	.byte	'?'
	.ascii	"_temp_2572\0"
	.align
_Label_2577:
	.byte	'?'
	.ascii	"_temp_2571\0"
	.align
_Label_2578:
	.byte	'?'
	.ascii	"_temp_2570\0"
	.align
_Label_2579:
	.byte	'?'
	.ascii	"_temp_2569\0"
	.align
_Label_2580:
	.byte	'?'
	.ascii	"_temp_2568\0"
	.align
_Label_2581:
	.byte	'?'
	.ascii	"_temp_2567\0"
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
_Label_3899:
	push	r0
	sub	r1,1,r1
	bne	_Label_3899
	mov	1488,r13		! source line 1488
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1492,r13		! source line 1492
	mov	"\0\0AS",r10
!   _temp_2582 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-32]
!   Move address of _temp_2582 [entry ] into _temp_2583
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
!   _temp_2586 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-16]
!   Move address of _temp_2586 [entry ] into _temp_2587
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
!   Data Move: _temp_2585 = *_temp_2587  (sizeInBytes=4)
	load	[r14+-12],r1
	load	[r1],r1
	store	r1,[r14+-20]
!   _temp_2584 = _temp_2585 OR 1		(int)
	load	[r14+-20],r1
	mov	1,r2
	or	r1,r2,r1
	store	r1,[r14+-24]
!   Data Move: *_temp_2583 = _temp_2584  (sizeInBytes=4)
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
	.word	_Label_2588
	.word	8		! total size of parameters
	.word	24		! frame size = 24
	.word	_Label_2589
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2590
	.word	12
	.word	4
	.word	_Label_2591
	.word	-12
	.word	4
	.word	_Label_2592
	.word	-16
	.word	4
	.word	_Label_2593
	.word	-20
	.word	4
	.word	_Label_2594
	.word	-24
	.word	4
	.word	_Label_2595
	.word	-28
	.word	4
	.word	_Label_2596
	.word	-32
	.word	4
	.word	0
_Label_2588:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"SetValid\0"
	.align
_Label_2589:
	.ascii	"Pself\0"
	.align
_Label_2590:
	.byte	'I'
	.ascii	"entry\0"
	.align
_Label_2591:
	.byte	'?'
	.ascii	"_temp_2587\0"
	.align
_Label_2592:
	.byte	'?'
	.ascii	"_temp_2586\0"
	.align
_Label_2593:
	.byte	'?'
	.ascii	"_temp_2585\0"
	.align
_Label_2594:
	.byte	'?'
	.ascii	"_temp_2584\0"
	.align
_Label_2595:
	.byte	'?'
	.ascii	"_temp_2583\0"
	.align
_Label_2596:
	.byte	'?'
	.ascii	"_temp_2582\0"
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
_Label_3900:
	push	r0
	sub	r1,1,r1
	bne	_Label_3900
	mov	1497,r13		! source line 1497
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1501,r13		! source line 1501
	mov	"\0\0AS",r10
!   _temp_2597 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-32]
!   Move address of _temp_2597 [entry ] into _temp_2598
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
!   _temp_2601 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-16]
!   Move address of _temp_2601 [entry ] into _temp_2602
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
!   Data Move: _temp_2600 = *_temp_2602  (sizeInBytes=4)
	load	[r14+-12],r1
	load	[r1],r1
	store	r1,[r14+-20]
!   _temp_2599 = _temp_2600 AND -9		(int)
	load	[r14+-20],r1
	mov	-9,r2
	and	r1,r2,r1
	store	r1,[r14+-24]
!   Data Move: *_temp_2598 = _temp_2599  (sizeInBytes=4)
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
	.word	_Label_2603
	.word	8		! total size of parameters
	.word	24		! frame size = 24
	.word	_Label_2604
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2605
	.word	12
	.word	4
	.word	_Label_2606
	.word	-12
	.word	4
	.word	_Label_2607
	.word	-16
	.word	4
	.word	_Label_2608
	.word	-20
	.word	4
	.word	_Label_2609
	.word	-24
	.word	4
	.word	_Label_2610
	.word	-28
	.word	4
	.word	_Label_2611
	.word	-32
	.word	4
	.word	0
_Label_2603:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"ClearDirty\0"
	.align
_Label_2604:
	.ascii	"Pself\0"
	.align
_Label_2605:
	.byte	'I'
	.ascii	"entry\0"
	.align
_Label_2606:
	.byte	'?'
	.ascii	"_temp_2602\0"
	.align
_Label_2607:
	.byte	'?'
	.ascii	"_temp_2601\0"
	.align
_Label_2608:
	.byte	'?'
	.ascii	"_temp_2600\0"
	.align
_Label_2609:
	.byte	'?'
	.ascii	"_temp_2599\0"
	.align
_Label_2610:
	.byte	'?'
	.ascii	"_temp_2598\0"
	.align
_Label_2611:
	.byte	'?'
	.ascii	"_temp_2597\0"
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
_Label_3901:
	push	r0
	sub	r1,1,r1
	bne	_Label_3901
	mov	1506,r13		! source line 1506
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1510,r13		! source line 1510
	mov	"\0\0AS",r10
!   _temp_2612 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-32]
!   Move address of _temp_2612 [entry ] into _temp_2613
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
!   _temp_2616 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-16]
!   Move address of _temp_2616 [entry ] into _temp_2617
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
!   Data Move: _temp_2615 = *_temp_2617  (sizeInBytes=4)
	load	[r14+-12],r1
	load	[r1],r1
	store	r1,[r14+-20]
!   _temp_2614 = _temp_2615 AND -5		(int)
	load	[r14+-20],r1
	mov	-5,r2
	and	r1,r2,r1
	store	r1,[r14+-24]
!   Data Move: *_temp_2613 = _temp_2614  (sizeInBytes=4)
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
	.word	_Label_2618
	.word	8		! total size of parameters
	.word	24		! frame size = 24
	.word	_Label_2619
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2620
	.word	12
	.word	4
	.word	_Label_2621
	.word	-12
	.word	4
	.word	_Label_2622
	.word	-16
	.word	4
	.word	_Label_2623
	.word	-20
	.word	4
	.word	_Label_2624
	.word	-24
	.word	4
	.word	_Label_2625
	.word	-28
	.word	4
	.word	_Label_2626
	.word	-32
	.word	4
	.word	0
_Label_2618:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"ClearReferenced\0"
	.align
_Label_2619:
	.ascii	"Pself\0"
	.align
_Label_2620:
	.byte	'I'
	.ascii	"entry\0"
	.align
_Label_2621:
	.byte	'?'
	.ascii	"_temp_2617\0"
	.align
_Label_2622:
	.byte	'?'
	.ascii	"_temp_2616\0"
	.align
_Label_2623:
	.byte	'?'
	.ascii	"_temp_2615\0"
	.align
_Label_2624:
	.byte	'?'
	.ascii	"_temp_2614\0"
	.align
_Label_2625:
	.byte	'?'
	.ascii	"_temp_2613\0"
	.align
_Label_2626:
	.byte	'?'
	.ascii	"_temp_2612\0"
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
_Label_3902:
	push	r0
	sub	r1,1,r1
	bne	_Label_3902
	mov	1515,r13		! source line 1515
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1519,r13		! source line 1519
	mov	"\0\0AS",r10
!   _temp_2627 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-32]
!   Move address of _temp_2627 [entry ] into _temp_2628
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
!   _temp_2631 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-16]
!   Move address of _temp_2631 [entry ] into _temp_2632
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
!   Data Move: _temp_2630 = *_temp_2632  (sizeInBytes=4)
	load	[r14+-12],r1
	load	[r1],r1
	store	r1,[r14+-20]
!   _temp_2629 = _temp_2630 AND -3		(int)
	load	[r14+-20],r1
	mov	-3,r2
	and	r1,r2,r1
	store	r1,[r14+-24]
!   Data Move: *_temp_2628 = _temp_2629  (sizeInBytes=4)
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
	.word	_Label_2633
	.word	8		! total size of parameters
	.word	24		! frame size = 24
	.word	_Label_2634
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2635
	.word	12
	.word	4
	.word	_Label_2636
	.word	-12
	.word	4
	.word	_Label_2637
	.word	-16
	.word	4
	.word	_Label_2638
	.word	-20
	.word	4
	.word	_Label_2639
	.word	-24
	.word	4
	.word	_Label_2640
	.word	-28
	.word	4
	.word	_Label_2641
	.word	-32
	.word	4
	.word	0
_Label_2633:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"ClearWritable\0"
	.align
_Label_2634:
	.ascii	"Pself\0"
	.align
_Label_2635:
	.byte	'I'
	.ascii	"entry\0"
	.align
_Label_2636:
	.byte	'?'
	.ascii	"_temp_2632\0"
	.align
_Label_2637:
	.byte	'?'
	.ascii	"_temp_2631\0"
	.align
_Label_2638:
	.byte	'?'
	.ascii	"_temp_2630\0"
	.align
_Label_2639:
	.byte	'?'
	.ascii	"_temp_2629\0"
	.align
_Label_2640:
	.byte	'?'
	.ascii	"_temp_2628\0"
	.align
_Label_2641:
	.byte	'?'
	.ascii	"_temp_2627\0"
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
_Label_3903:
	push	r0
	sub	r1,1,r1
	bne	_Label_3903
	mov	1524,r13		! source line 1524
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1528,r13		! source line 1528
	mov	"\0\0AS",r10
!   _temp_2642 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-32]
!   Move address of _temp_2642 [entry ] into _temp_2643
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
!   _temp_2646 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-16]
!   Move address of _temp_2646 [entry ] into _temp_2647
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
!   Data Move: _temp_2645 = *_temp_2647  (sizeInBytes=4)
	load	[r14+-12],r1
	load	[r1],r1
	store	r1,[r14+-20]
!   _temp_2644 = _temp_2645 AND -2		(int)
	load	[r14+-20],r1
	mov	-2,r2
	and	r1,r2,r1
	store	r1,[r14+-24]
!   Data Move: *_temp_2643 = _temp_2644  (sizeInBytes=4)
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
	.word	_Label_2648
	.word	8		! total size of parameters
	.word	24		! frame size = 24
	.word	_Label_2649
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2650
	.word	12
	.word	4
	.word	_Label_2651
	.word	-12
	.word	4
	.word	_Label_2652
	.word	-16
	.word	4
	.word	_Label_2653
	.word	-20
	.word	4
	.word	_Label_2654
	.word	-24
	.word	4
	.word	_Label_2655
	.word	-28
	.word	4
	.word	_Label_2656
	.word	-32
	.word	4
	.word	0
_Label_2648:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"ClearValid\0"
	.align
_Label_2649:
	.ascii	"Pself\0"
	.align
_Label_2650:
	.byte	'I'
	.ascii	"entry\0"
	.align
_Label_2651:
	.byte	'?'
	.ascii	"_temp_2647\0"
	.align
_Label_2652:
	.byte	'?'
	.ascii	"_temp_2646\0"
	.align
_Label_2653:
	.byte	'?'
	.ascii	"_temp_2645\0"
	.align
_Label_2654:
	.byte	'?'
	.ascii	"_temp_2644\0"
	.align
_Label_2655:
	.byte	'?'
	.ascii	"_temp_2643\0"
	.align
_Label_2656:
	.byte	'?'
	.ascii	"_temp_2642\0"
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
_Label_3904:
	push	r0
	sub	r1,1,r1
	bne	_Label_3904
	mov	1533,r13		! source line 1533
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   _temp_2658 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-20]
!   Move address of _temp_2658 [0 ] into _temp_2659
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
!   _temp_2657 = _temp_2659		(4 bytes)
	load	[r14+-16],r1
	store	r1,[r14+-24]
!   _temp_2660 = numberOfPages * 4		(int)
	load	[r14+8],r1
	load	[r1+4],r1
	mov	4,r2
	mul	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_2657  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=_temp_2660  sizeInBytes=4
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
	.word	_Label_2661
	.word	4		! total size of parameters
	.word	24		! frame size = 24
	.word	_Label_2662
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2663
	.word	-12
	.word	4
	.word	_Label_2664
	.word	-16
	.word	4
	.word	_Label_2665
	.word	-20
	.word	4
	.word	_Label_2666
	.word	-24
	.word	4
	.word	0
_Label_2661:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"SetToThisPageTable\0"
	.align
_Label_2662:
	.ascii	"Pself\0"
	.align
_Label_2663:
	.byte	'?'
	.ascii	"_temp_2660\0"
	.align
_Label_2664:
	.byte	'?'
	.ascii	"_temp_2659\0"
	.align
_Label_2665:
	.byte	'?'
	.ascii	"_temp_2658\0"
	.align
_Label_2666:
	.byte	'?'
	.ascii	"_temp_2657\0"
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
_Label_3905:
	push	r0
	sub	r1,1,r1
	bne	_Label_3905
	mov	1544,r13		! source line 1544
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! IF STATEMENT...
	mov	1559,r13		! source line 1559
	mov	"\0\0IF",r10
!   if intIsZero (numBytes) then goto _Label_2667
	load	[r14+20],r1
	cmp	r1,r0
	be	_Label_2667
	jmp	_Label_2668
_Label_2667:
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
	jmp	_Label_2669
_Label_2668:
! ELSE...
	mov	1561,r13		! source line 1561
	mov	"\0\0EL",r10
! IF STATEMENT...
	mov	1561,r13		! source line 1561
	mov	"\0\0IF",r10
!   if numBytes >= 0 then goto _Label_2671		(int)
	load	[r14+20],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_2671
!	jmp	_Label_2670
_Label_2670:
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
_Label_2671:
! END IF...
_Label_2669:
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
_Label_2672:
!	jmp	_Label_2673
_Label_2673:
	mov	1568,r13		! source line 1568
	mov	"\0\0WB",r10
! IF STATEMENT...
	mov	1569,r13		! source line 1569
	mov	"\0\0IF",r10
!   if virtPage < numberOfPages then goto _Label_2676		(int)
	load	[r14+-40],r1
	load	[r14+8],r2
	load	[r2+4],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bl	_Label_2676
!	jmp	_Label_2675
_Label_2675:
! THEN...
	mov	1570,r13		! source line 1570
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_2677 = _StringConst_132
	set	_StringConst_132,r1
	store	r1,[r14+-32]
!   Prepare Argument: offset=8  value=_temp_2677  sizeInBytes=4
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
_Label_2676:
! IF STATEMENT...
	mov	1573,r13		! source line 1573
	mov	"\0\0IF",r10
	mov	1573,r13		! source line 1573
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-28]
!   if intIsZero (_temp_2681) then goto _runtimeErrorNullPointer
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
!   Retrieve Result: targetName=_temp_2680  sizeInBytes=1
	loadb	[r15],r1
	storeb	r1,[r14+-10]
!   if _temp_2680 then goto _Label_2679 else goto _Label_2678
	loadb	[r14+-10],r1
	cmp	r1,0
	be	_Label_2678
	jmp	_Label_2679
_Label_2678:
! THEN...
	mov	1574,r13		! source line 1574
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_2682 = _StringConst_133
	set	_StringConst_133,r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=8  value=_temp_2682  sizeInBytes=4
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
_Label_2679:
! ASSIGNMENT STATEMENT...
	mov	1577,r13		! source line 1577
	mov	"\0\0AS",r10
	mov	1577,r13		! source line 1577
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-16]
!   if intIsZero (_temp_2684) then goto _runtimeErrorNullPointer
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
!   Retrieve Result: targetName=_temp_2683  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-20]
!   fromAddr = _temp_2683 + offset		(int)
	load	[r14+-20],r1
	load	[r14+-44],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-48]
! WHILE STATEMENT...
	mov	1579,r13		! source line 1579
	mov	"\0\0WH",r10
_Label_2685:
!   if offset >= 8192 then goto _Label_2687		(int)
	load	[r14+-44],r1
	mov	8192,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_2687
!	jmp	_Label_2686
_Label_2686:
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
!   Data Move: _temp_2688 = *fromAddr  (sizeInBytes=1)
	load	[r14+-48],r1
	loadb	[r1],r1
	storeb	r1,[r14+-9]
!   Data Move: *kernelAddr = _temp_2688  (sizeInBytes=1)
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
!   if copiedSoFar != numBytes then goto _Label_2690		(int)
	load	[r14+-36],r1
	load	[r14+20],r2
	cmp	r1,r2
	bne	_Label_2690
!	jmp	_Label_2689
_Label_2689:
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
_Label_2690:
! END WHILE...
	jmp	_Label_2685
_Label_2687:
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
	jmp	_Label_2672
_Label_2674:
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_AddrSpace_19:
	.word	_sourceFileName
	.word	_Label_2691
	.word	16		! total size of parameters
	.word	48		! frame size = 48
	.word	_Label_2692
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2693
	.word	12
	.word	4
	.word	_Label_2694
	.word	16
	.word	4
	.word	_Label_2695
	.word	20
	.word	4
	.word	_Label_2696
	.word	-9
	.word	1
	.word	_Label_2697
	.word	-16
	.word	4
	.word	_Label_2698
	.word	-20
	.word	4
	.word	_Label_2699
	.word	-24
	.word	4
	.word	_Label_2700
	.word	-28
	.word	4
	.word	_Label_2701
	.word	-10
	.word	1
	.word	_Label_2702
	.word	-32
	.word	4
	.word	_Label_2703
	.word	-36
	.word	4
	.word	_Label_2704
	.word	-40
	.word	4
	.word	_Label_2705
	.word	-44
	.word	4
	.word	_Label_2706
	.word	-48
	.word	4
	.word	0
_Label_2691:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"CopyBytesFromVirtual\0"
	.align
_Label_2692:
	.ascii	"Pself\0"
	.align
_Label_2693:
	.byte	'I'
	.ascii	"kernelAddr\0"
	.align
_Label_2694:
	.byte	'I'
	.ascii	"virtAddr\0"
	.align
_Label_2695:
	.byte	'I'
	.ascii	"numBytes\0"
	.align
_Label_2696:
	.byte	'C'
	.ascii	"_temp_2688\0"
	.align
_Label_2697:
	.byte	'?'
	.ascii	"_temp_2684\0"
	.align
_Label_2698:
	.byte	'?'
	.ascii	"_temp_2683\0"
	.align
_Label_2699:
	.byte	'?'
	.ascii	"_temp_2682\0"
	.align
_Label_2700:
	.byte	'?'
	.ascii	"_temp_2681\0"
	.align
_Label_2701:
	.byte	'C'
	.ascii	"_temp_2680\0"
	.align
_Label_2702:
	.byte	'?'
	.ascii	"_temp_2677\0"
	.align
_Label_2703:
	.byte	'I'
	.ascii	"copiedSoFar\0"
	.align
_Label_2704:
	.byte	'I'
	.ascii	"virtPage\0"
	.align
_Label_2705:
	.byte	'I'
	.ascii	"offset\0"
	.align
_Label_2706:
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
_Label_3906:
	push	r0
	sub	r1,1,r1
	bne	_Label_3906
	mov	1598,r13		! source line 1598
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! IF STATEMENT...
	mov	1609,r13		! source line 1609
	mov	"\0\0IF",r10
!   if intIsZero (numBytes) then goto _Label_2707
	load	[r14+20],r1
	cmp	r1,r0
	be	_Label_2707
	jmp	_Label_2708
_Label_2707:
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
	jmp	_Label_2709
_Label_2708:
! ELSE...
	mov	1611,r13		! source line 1611
	mov	"\0\0EL",r10
! IF STATEMENT...
	mov	1611,r13		! source line 1611
	mov	"\0\0IF",r10
!   if numBytes >= 0 then goto _Label_2711		(int)
	load	[r14+20],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_2711
!	jmp	_Label_2710
_Label_2710:
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
_Label_2711:
! END IF...
_Label_2709:
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
_Label_2712:
!	jmp	_Label_2713
_Label_2713:
	mov	1616,r13		! source line 1616
	mov	"\0\0WB",r10
! IF STATEMENT...
	mov	1617,r13		! source line 1617
	mov	"\0\0IF",r10
!   if virtPage < numberOfPages then goto _Label_2718		(int)
	load	[r14+-36],r1
	load	[r14+8],r2
	load	[r2+4],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bl	_Label_2718
	jmp	_Label_2715
_Label_2718:
	mov	1618,r13		! source line 1618
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-28]
!   if intIsZero (_temp_2720) then goto _runtimeErrorNullPointer
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
!   Retrieve Result: targetName=_temp_2719  sizeInBytes=1
	loadb	[r15],r1
	storeb	r1,[r14+-11]
!   if _temp_2719 then goto _Label_2717 else goto _Label_2715
	loadb	[r14+-11],r1
	cmp	r1,0
	be	_Label_2715
	jmp	_Label_2717
_Label_2717:
	mov	1619,r13		! source line 1619
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-24]
!   if intIsZero (_temp_2722) then goto _runtimeErrorNullPointer
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
!   Retrieve Result: targetName=_temp_2721  sizeInBytes=1
	loadb	[r15],r1
	storeb	r1,[r14+-10]
!   if _temp_2721 then goto _Label_2716 else goto _Label_2715
	loadb	[r14+-10],r1
	cmp	r1,0
	be	_Label_2715
	jmp	_Label_2716
_Label_2715:
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
_Label_2716:
! ASSIGNMENT STATEMENT...
	mov	1622,r13		! source line 1622
	mov	"\0\0AS",r10
	mov	1622,r13		! source line 1622
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-16]
!   if intIsZero (_temp_2724) then goto _runtimeErrorNullPointer
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
!   Retrieve Result: targetName=_temp_2723  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-20]
!   destAddr = _temp_2723 + offset		(int)
	load	[r14+-20],r1
	load	[r14+-40],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-44]
! WHILE STATEMENT...
	mov	1623,r13		! source line 1623
	mov	"\0\0WH",r10
_Label_2725:
!   if offset >= 8192 then goto _Label_2727		(int)
	load	[r14+-40],r1
	mov	8192,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_2727
!	jmp	_Label_2726
_Label_2726:
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
!   Data Move: _temp_2728 = *kernelAddr  (sizeInBytes=1)
	load	[r14+16],r1
	loadb	[r1],r1
	storeb	r1,[r14+-9]
!   Data Move: *destAddr = _temp_2728  (sizeInBytes=1)
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
!   if copiedSoFar != numBytes then goto _Label_2730		(int)
	load	[r14+-32],r1
	load	[r14+20],r2
	cmp	r1,r2
	bne	_Label_2730
!	jmp	_Label_2729
_Label_2729:
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
_Label_2730:
! END WHILE...
	jmp	_Label_2725
_Label_2727:
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
	jmp	_Label_2712
_Label_2714:
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_AddrSpace_20:
	.word	_sourceFileName
	.word	_Label_2731
	.word	16		! total size of parameters
	.word	44		! frame size = 44
	.word	_Label_2732
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2733
	.word	12
	.word	4
	.word	_Label_2734
	.word	16
	.word	4
	.word	_Label_2735
	.word	20
	.word	4
	.word	_Label_2736
	.word	-9
	.word	1
	.word	_Label_2737
	.word	-16
	.word	4
	.word	_Label_2738
	.word	-20
	.word	4
	.word	_Label_2739
	.word	-24
	.word	4
	.word	_Label_2740
	.word	-10
	.word	1
	.word	_Label_2741
	.word	-28
	.word	4
	.word	_Label_2742
	.word	-11
	.word	1
	.word	_Label_2743
	.word	-32
	.word	4
	.word	_Label_2744
	.word	-36
	.word	4
	.word	_Label_2745
	.word	-40
	.word	4
	.word	_Label_2746
	.word	-44
	.word	4
	.word	0
_Label_2731:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"CopyBytesToVirtual\0"
	.align
_Label_2732:
	.ascii	"Pself\0"
	.align
_Label_2733:
	.byte	'I'
	.ascii	"virtAddr\0"
	.align
_Label_2734:
	.byte	'I'
	.ascii	"kernelAddr\0"
	.align
_Label_2735:
	.byte	'I'
	.ascii	"numBytes\0"
	.align
_Label_2736:
	.byte	'C'
	.ascii	"_temp_2728\0"
	.align
_Label_2737:
	.byte	'?'
	.ascii	"_temp_2724\0"
	.align
_Label_2738:
	.byte	'?'
	.ascii	"_temp_2723\0"
	.align
_Label_2739:
	.byte	'?'
	.ascii	"_temp_2722\0"
	.align
_Label_2740:
	.byte	'C'
	.ascii	"_temp_2721\0"
	.align
_Label_2741:
	.byte	'?'
	.ascii	"_temp_2720\0"
	.align
_Label_2742:
	.byte	'C'
	.ascii	"_temp_2719\0"
	.align
_Label_2743:
	.byte	'I'
	.ascii	"copiedSoFar\0"
	.align
_Label_2744:
	.byte	'I'
	.ascii	"virtPage\0"
	.align
_Label_2745:
	.byte	'I'
	.ascii	"offset\0"
	.align
_Label_2746:
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
_Label_3907:
	push	r0
	sub	r1,1,r1
	bne	_Label_3907
	mov	1640,r13		! source line 1640
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! IF STATEMENT...
	mov	1664,r13		! source line 1664
	mov	"\0\0IF",r10
	mov	1664,r13		! source line 1664
	mov	"\0\0SE",r10
!   _temp_2750 = &sourceSize
	add	r14,-44,r1
	store	r1,[r14+-36]
	load	[r14+8],r1
	store	r1,[r14+-32]
!   if intIsZero (_temp_2751) then goto _runtimeErrorNullPointer
	load	[r14+-32],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Prepare Argument: offset=12  value=_temp_2750  sizeInBytes=4
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
!   Retrieve Result: targetName=_temp_2749  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-40]
!   if _temp_2749 >= 4 then goto _Label_2748		(int)
	load	[r14+-40],r1
	mov	4,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_2748
!	jmp	_Label_2747
_Label_2747:
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
_Label_2748:
! IF STATEMENT...
	mov	1671,r13		! source line 1671
	mov	"\0\0IF",r10
!   if sourceSize <= maxSize then goto _Label_2753		(int)
	load	[r14+-44],r1
	load	[r14+20],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	ble	_Label_2753
!	jmp	_Label_2752
_Label_2752:
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
_Label_2753:
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
!   _temp_2756 = kernelAddr		(4 bytes)
	load	[r14+12],r1
	store	r1,[r14+-20]
!   _temp_2755 = _temp_2756 + 4		(int)
	load	[r14+-20],r1
	mov	4,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-24]
!   _temp_2757 = virtAddr + 4		(int)
	load	[r14+16],r1
	mov	4,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-16]
	load	[r14+8],r1
	store	r1,[r14+-12]
!   if intIsZero (_temp_2758) then goto _runtimeErrorNullPointer
	load	[r14+-12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Prepare Argument: offset=12  value=_temp_2755  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=_temp_2757  sizeInBytes=4
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
!   Retrieve Result: targetName=_temp_2754  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-28]
!   ReturnResult: _temp_2754  (sizeInBytes=4)
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
	.word	_Label_2759
	.word	16		! total size of parameters
	.word	52		! frame size = 52
	.word	_Label_2760
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2761
	.word	12
	.word	4
	.word	_Label_2762
	.word	16
	.word	4
	.word	_Label_2763
	.word	20
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
	.word	_Label_2770
	.word	-36
	.word	4
	.word	_Label_2771
	.word	-40
	.word	4
	.word	_Label_2772
	.word	-44
	.word	4
	.word	0
_Label_2759:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"GetStringFromVirtual\0"
	.align
_Label_2760:
	.ascii	"Pself\0"
	.align
_Label_2761:
	.byte	'P'
	.ascii	"kernelAddr\0"
	.align
_Label_2762:
	.byte	'I'
	.ascii	"virtAddr\0"
	.align
_Label_2763:
	.byte	'I'
	.ascii	"maxSize\0"
	.align
_Label_2764:
	.byte	'?'
	.ascii	"_temp_2758\0"
	.align
_Label_2765:
	.byte	'?'
	.ascii	"_temp_2757\0"
	.align
_Label_2766:
	.byte	'?'
	.ascii	"_temp_2756\0"
	.align
_Label_2767:
	.byte	'?'
	.ascii	"_temp_2755\0"
	.align
_Label_2768:
	.byte	'?'
	.ascii	"_temp_2754\0"
	.align
_Label_2769:
	.byte	'?'
	.ascii	"_temp_2751\0"
	.align
_Label_2770:
	.byte	'?'
	.ascii	"_temp_2750\0"
	.align
_Label_2771:
	.byte	'?'
	.ascii	"_temp_2749\0"
	.align
_Label_2772:
	.byte	'I'
	.ascii	"sourceSize\0"
	.align
! 
! ===============  CLASS DiskDriver  ===============
! 
! Dispatch Table:
! 
_P_Kernel_DiskDriver:
	.word	_Label_2773
	jmp	_Method_P_Kernel_DiskDriver_1	! 4:	Init
	jmp	_Method_P_Kernel_DiskDriver_2	! 8:	SynchReadSector
	jmp	_Method_P_Kernel_DiskDriver_3	! 12:	StartReadSector
	jmp	_Method_P_Kernel_DiskDriver_4	! 16:	SynchWriteSector
	jmp	_Method_P_Kernel_DiskDriver_5	! 20:	StartWriteSector
	.word	0
! 
! Class descriptor:
! 
_Label_2773:
	.word	1129070931		! Magic number 0x434c4153 == 'CLAS'
	.word	_Label_2774
	.word	_sourceFileName
	.word	313		! line number
	.word	68		! size of instances, in bytes
	.word	_P_Kernel_DiskDriver
	.word	_P_System_Object
	.word	0
_Label_2774:
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
_Label_3908:
	push	r0
	sub	r1,1,r1
	bne	_Label_3908
	mov	2594,r13		! source line 2594
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   _temp_2775 = _StringConst_134
	set	_StringConst_134,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=8  value=_temp_2775  sizeInBytes=4
	load	[r14+-28],r1
	store	r1,[r15+0]
!   Call the function
	mov	2595,r13		! source line 2595
	mov	"\0\0CE",r10
	call	print
! ASSIGNMENT STATEMENT...
	mov	2596,r13		! source line 2596
	mov	"\0\0AS",r10
!   DISK_STATUS_WORD_ADDRESS = 16776968		(4 bytes)
	set	16776968,r1
	load	[r14+8],r2
	store	r1,[r2+4]
! ASSIGNMENT STATEMENT...
	mov	2597,r13		! source line 2597
	mov	"\0\0AS",r10
!   DISK_COMMAND_WORD_ADDRESS = 16776968		(4 bytes)
	set	16776968,r1
	load	[r14+8],r2
	store	r1,[r2+8]
! ASSIGNMENT STATEMENT...
	mov	2598,r13		! source line 2598
	mov	"\0\0AS",r10
!   DISK_MEMORY_ADDRESS_REGISTER = 16776972		(4 bytes)
	set	16776972,r1
	load	[r14+8],r2
	store	r1,[r2+12]
! ASSIGNMENT STATEMENT...
	mov	2599,r13		! source line 2599
	mov	"\0\0AS",r10
!   DISK_SECTOR_NUMBER_REGISTER = 16776976		(4 bytes)
	set	16776976,r1
	load	[r14+8],r2
	store	r1,[r2+16]
! ASSIGNMENT STATEMENT...
	mov	2600,r13		! source line 2600
	mov	"\0\0AS",r10
!   DISK_SECTOR_COUNT_REGISTER = 16776980		(4 bytes)
	set	16776980,r1
	load	[r14+8],r2
	store	r1,[r2+20]
! ASSIGNMENT STATEMENT...
	mov	2601,r13		! source line 2601
	mov	"\0\0AS",r10
!   semToSignalOnCompletion = 0		(4 bytes)
	mov	0,r1
	load	[r14+8],r2
	store	r1,[r2+24]
! ASSIGNMENT STATEMENT...
	mov	2602,r13		! source line 2602
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
	mov	2603,r13		! source line 2603
	mov	"\0\0SE",r10
!   _temp_2777 = &semUsedInSynchMethods
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
	mov	2604,r13		! source line 2604
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
	mov	2605,r13		! source line 2605
	mov	"\0\0SE",r10
!   _temp_2779 = &diskBusy
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
	mov	2605,r13		! source line 2605
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
	.word	_Label_2780
	.word	4		! total size of parameters
	.word	28		! frame size = 28
	.word	_Label_2781
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2782
	.word	-12
	.word	4
	.word	_Label_2783
	.word	-16
	.word	4
	.word	_Label_2784
	.word	-20
	.word	4
	.word	_Label_2785
	.word	-24
	.word	4
	.word	_Label_2786
	.word	-28
	.word	4
	.word	0
_Label_2780:
	.ascii	"DiskDriver"
	.ascii	"::"
	.ascii	"Init\0"
	.align
_Label_2781:
	.ascii	"Pself\0"
	.align
_Label_2782:
	.byte	'?'
	.ascii	"_temp_2779\0"
	.align
_Label_2783:
	.byte	'?'
	.ascii	"_temp_2778\0"
	.align
_Label_2784:
	.byte	'?'
	.ascii	"_temp_2777\0"
	.align
_Label_2785:
	.byte	'?'
	.ascii	"_temp_2776\0"
	.align
_Label_2786:
	.byte	'?'
	.ascii	"_temp_2775\0"
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
_Label_3909:
	push	r0
	sub	r1,1,r1
	bne	_Label_3909
	mov	2610,r13		! source line 2610
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! SEND STATEMENT...
	mov	2623,r13		! source line 2623
	mov	"\0\0SE",r10
!   _temp_2787 = &diskBusy
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
	mov	2624,r13		! source line 2624
	mov	"\0\0WH",r10
_Label_2788:
!	jmp	_Label_2789
_Label_2789:
	mov	2624,r13		! source line 2624
	mov	"\0\0WB",r10
! SEND STATEMENT...
	mov	2626,r13		! source line 2626
	mov	"\0\0SE",r10
!   _temp_2791 = &semUsedInSynchMethods
	load	[r14+8],r1
	add	r1,28,r1
	store	r1,[r14+-48]
	load	[r14+8],r1
	store	r1,[r14+-44]
!   if intIsZero (_temp_2792) then goto _runtimeErrorNullPointer
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
!   Prepare Argument: offset=24  value=_temp_2791  sizeInBytes=4
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
	mov	2628,r13		! source line 2628
	mov	"\0\0SE",r10
!   _temp_2793 = &semUsedInSynchMethods
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
	mov	2631,r13		! source line 2631
	mov	"\0\0SW",r10
!   Evaluate the switch expression...
!   if intIsZero (DISK_STATUS_WORD_ADDRESS) then goto _runtimeErrorNullPointer
	load	[r14+8],r1
	load	[r1+4],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Data Move: _temp_2802 = *DISK_STATUS_WORD_ADDRESS  (sizeInBytes=4)
	load	[r14+8],r1
	load	[r1+4],r1
	load	[r1],r1
	store	r1,[r14+-36]
!   Branch to the right case label
	load	[r14+-36],r1
	cmp	r1,1
	be	_Label_2796
	cmp	r1,2
	be	_Label_2797
	cmp	r1,3
	be	_Label_2798
	cmp	r1,4
	be	_Label_2799
	cmp	r1,5
	be	_Label_2800
	cmp	r1,6
	be	_Label_2801
	jmp	_Label_2794
! CASE 1...
_Label_2796:
! SEND STATEMENT...
	mov	2633,r13		! source line 2633
	mov	"\0\0SE",r10
!   _temp_2803 = &diskBusy
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
	mov	2634,r13		! source line 2634
	mov	"\0\0RE",r10
	add	r15,68,r15
	pop	r13
	pop	r14
	ret
! CASE 2...
_Label_2797:
! CALL STATEMENT...
!   _temp_2804 = _StringConst_135
	set	_StringConst_135,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=8  value=_temp_2804  sizeInBytes=4
	load	[r14+-28],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	2636,r13		! source line 2636
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! CASE 3...
_Label_2798:
! CALL STATEMENT...
!   _temp_2805 = _StringConst_136
	set	_StringConst_136,r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=8  value=_temp_2805  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	2638,r13		! source line 2638
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! CASE 4...
_Label_2799:
! CALL STATEMENT...
!   _temp_2806 = _StringConst_137
	set	_StringConst_137,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_2806  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	2640,r13		! source line 2640
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! CASE 5...
_Label_2800:
! BREAK STATEMENT...
	mov	2644,r13		! source line 2644
	mov	"\0\0BR",r10
	jmp	_Label_2795
! CASE 6...
_Label_2801:
! CALL STATEMENT...
!   _temp_2807 = _StringConst_138
	set	_StringConst_138,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_2807  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	2646,r13		! source line 2646
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! DEFAULT CASE...
_Label_2794:
! CALL STATEMENT...
!   _temp_2808 = _StringConst_139
	set	_StringConst_139,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_2808  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	2648,r13		! source line 2648
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END SWITCH...
_Label_2795:
! END WHILE...
	jmp	_Label_2788
_Label_2790:
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_DiskDriver_2:
	.word	_sourceFileName
	.word	_Label_2809
	.word	16		! total size of parameters
	.word	64		! frame size = 64
	.word	_Label_2810
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2811
	.word	12
	.word	4
	.word	_Label_2812
	.word	16
	.word	4
	.word	_Label_2813
	.word	20
	.word	4
	.word	_Label_2814
	.word	-12
	.word	4
	.word	_Label_2815
	.word	-16
	.word	4
	.word	_Label_2816
	.word	-20
	.word	4
	.word	_Label_2817
	.word	-24
	.word	4
	.word	_Label_2818
	.word	-28
	.word	4
	.word	_Label_2819
	.word	-32
	.word	4
	.word	_Label_2820
	.word	-36
	.word	4
	.word	_Label_2821
	.word	-40
	.word	4
	.word	_Label_2822
	.word	-44
	.word	4
	.word	_Label_2823
	.word	-48
	.word	4
	.word	_Label_2824
	.word	-52
	.word	4
	.word	0
_Label_2809:
	.ascii	"DiskDriver"
	.ascii	"::"
	.ascii	"SynchReadSector\0"
	.align
_Label_2810:
	.ascii	"Pself\0"
	.align
_Label_2811:
	.byte	'I'
	.ascii	"sectorAddr\0"
	.align
_Label_2812:
	.byte	'I'
	.ascii	"numberOfSectors\0"
	.align
_Label_2813:
	.byte	'I'
	.ascii	"memoryAddr\0"
	.align
_Label_2814:
	.byte	'?'
	.ascii	"_temp_2808\0"
	.align
_Label_2815:
	.byte	'?'
	.ascii	"_temp_2807\0"
	.align
_Label_2816:
	.byte	'?'
	.ascii	"_temp_2806\0"
	.align
_Label_2817:
	.byte	'?'
	.ascii	"_temp_2805\0"
	.align
_Label_2818:
	.byte	'?'
	.ascii	"_temp_2804\0"
	.align
_Label_2819:
	.byte	'?'
	.ascii	"_temp_2803\0"
	.align
_Label_2820:
	.byte	'?'
	.ascii	"_temp_2802\0"
	.align
_Label_2821:
	.byte	'?'
	.ascii	"_temp_2793\0"
	.align
_Label_2822:
	.byte	'?'
	.ascii	"_temp_2792\0"
	.align
_Label_2823:
	.byte	'?'
	.ascii	"_temp_2791\0"
	.align
_Label_2824:
	.byte	'?'
	.ascii	"_temp_2787\0"
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
	mov	2657,r13		! source line 2657
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	2672,r13		! source line 2672
	mov	"\0\0AS",r10
!   semToSignalOnCompletion = whoCares		(4 bytes)
	load	[r14+24],r1
	load	[r14+8],r2
	store	r1,[r2+24]
! ASSIGNMENT STATEMENT...
	mov	2675,r13		! source line 2675
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
	mov	2676,r13		! source line 2676
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
	mov	2677,r13		! source line 2677
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
	mov	2678,r13		! source line 2678
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
	mov	2678,r13		! source line 2678
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
	.word	_Label_2825
	.word	20		! total size of parameters
	.word	0		! frame size = 0
	.word	_Label_2826
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2827
	.word	12
	.word	4
	.word	_Label_2828
	.word	16
	.word	4
	.word	_Label_2829
	.word	20
	.word	4
	.word	_Label_2830
	.word	24
	.word	4
	.word	0
_Label_2825:
	.ascii	"DiskDriver"
	.ascii	"::"
	.ascii	"StartReadSector\0"
	.align
_Label_2826:
	.ascii	"Pself\0"
	.align
_Label_2827:
	.byte	'I'
	.ascii	"sectorAddr\0"
	.align
_Label_2828:
	.byte	'I'
	.ascii	"numberOfSectors\0"
	.align
_Label_2829:
	.byte	'I'
	.ascii	"memoryAddr\0"
	.align
_Label_2830:
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
_Label_3910:
	push	r0
	sub	r1,1,r1
	bne	_Label_3910
	mov	2683,r13		! source line 2683
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! SEND STATEMENT...
	mov	2695,r13		! source line 2695
	mov	"\0\0SE",r10
!   _temp_2831 = &diskBusy
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
	mov	2696,r13		! source line 2696
	mov	"\0\0WH",r10
_Label_2832:
!	jmp	_Label_2833
_Label_2833:
	mov	2696,r13		! source line 2696
	mov	"\0\0WB",r10
! SEND STATEMENT...
	mov	2697,r13		! source line 2697
	mov	"\0\0SE",r10
!   _temp_2835 = &semUsedInSynchMethods
	load	[r14+8],r1
	add	r1,28,r1
	store	r1,[r14+-48]
	load	[r14+8],r1
	store	r1,[r14+-44]
!   if intIsZero (_temp_2836) then goto _runtimeErrorNullPointer
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
!   Prepare Argument: offset=24  value=_temp_2835  sizeInBytes=4
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
	mov	2699,r13		! source line 2699
	mov	"\0\0SE",r10
!   _temp_2837 = &semUsedInSynchMethods
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
	mov	2702,r13		! source line 2702
	mov	"\0\0SW",r10
!   Evaluate the switch expression...
!   if intIsZero (DISK_STATUS_WORD_ADDRESS) then goto _runtimeErrorNullPointer
	load	[r14+8],r1
	load	[r1+4],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Data Move: _temp_2846 = *DISK_STATUS_WORD_ADDRESS  (sizeInBytes=4)
	load	[r14+8],r1
	load	[r1+4],r1
	load	[r1],r1
	store	r1,[r14+-36]
!   Branch to the right case label
	load	[r14+-36],r1
	cmp	r1,1
	be	_Label_2840
	cmp	r1,2
	be	_Label_2841
	cmp	r1,3
	be	_Label_2842
	cmp	r1,4
	be	_Label_2843
	cmp	r1,5
	be	_Label_2844
	cmp	r1,6
	be	_Label_2845
	jmp	_Label_2838
! CASE 1...
_Label_2840:
! SEND STATEMENT...
	mov	2704,r13		! source line 2704
	mov	"\0\0SE",r10
!   _temp_2847 = &diskBusy
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
	mov	2705,r13		! source line 2705
	mov	"\0\0RE",r10
	add	r15,68,r15
	pop	r13
	pop	r14
	ret
! CASE 2...
_Label_2841:
! CALL STATEMENT...
!   _temp_2848 = _StringConst_140
	set	_StringConst_140,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=8  value=_temp_2848  sizeInBytes=4
	load	[r14+-28],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	2707,r13		! source line 2707
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! CASE 3...
_Label_2842:
! CALL STATEMENT...
!   _temp_2849 = _StringConst_141
	set	_StringConst_141,r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=8  value=_temp_2849  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	2709,r13		! source line 2709
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! CASE 4...
_Label_2843:
! CALL STATEMENT...
!   _temp_2850 = _StringConst_142
	set	_StringConst_142,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_2850  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	2711,r13		! source line 2711
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! CASE 5...
_Label_2844:
! BREAK STATEMENT...
	mov	2715,r13		! source line 2715
	mov	"\0\0BR",r10
	jmp	_Label_2839
! CASE 6...
_Label_2845:
! CALL STATEMENT...
!   _temp_2851 = _StringConst_143
	set	_StringConst_143,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_2851  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	2717,r13		! source line 2717
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! DEFAULT CASE...
_Label_2838:
! CALL STATEMENT...
!   _temp_2852 = _StringConst_144
	set	_StringConst_144,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_2852  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	2719,r13		! source line 2719
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END SWITCH...
_Label_2839:
! END WHILE...
	jmp	_Label_2832
_Label_2834:
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_DiskDriver_4:
	.word	_sourceFileName
	.word	_Label_2853
	.word	16		! total size of parameters
	.word	64		! frame size = 64
	.word	_Label_2854
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2855
	.word	12
	.word	4
	.word	_Label_2856
	.word	16
	.word	4
	.word	_Label_2857
	.word	20
	.word	4
	.word	_Label_2858
	.word	-12
	.word	4
	.word	_Label_2859
	.word	-16
	.word	4
	.word	_Label_2860
	.word	-20
	.word	4
	.word	_Label_2861
	.word	-24
	.word	4
	.word	_Label_2862
	.word	-28
	.word	4
	.word	_Label_2863
	.word	-32
	.word	4
	.word	_Label_2864
	.word	-36
	.word	4
	.word	_Label_2865
	.word	-40
	.word	4
	.word	_Label_2866
	.word	-44
	.word	4
	.word	_Label_2867
	.word	-48
	.word	4
	.word	_Label_2868
	.word	-52
	.word	4
	.word	0
_Label_2853:
	.ascii	"DiskDriver"
	.ascii	"::"
	.ascii	"SynchWriteSector\0"
	.align
_Label_2854:
	.ascii	"Pself\0"
	.align
_Label_2855:
	.byte	'I'
	.ascii	"sectorAddr\0"
	.align
_Label_2856:
	.byte	'I'
	.ascii	"numberOfSectors\0"
	.align
_Label_2857:
	.byte	'I'
	.ascii	"memoryAddr\0"
	.align
_Label_2858:
	.byte	'?'
	.ascii	"_temp_2852\0"
	.align
_Label_2859:
	.byte	'?'
	.ascii	"_temp_2851\0"
	.align
_Label_2860:
	.byte	'?'
	.ascii	"_temp_2850\0"
	.align
_Label_2861:
	.byte	'?'
	.ascii	"_temp_2849\0"
	.align
_Label_2862:
	.byte	'?'
	.ascii	"_temp_2848\0"
	.align
_Label_2863:
	.byte	'?'
	.ascii	"_temp_2847\0"
	.align
_Label_2864:
	.byte	'?'
	.ascii	"_temp_2846\0"
	.align
_Label_2865:
	.byte	'?'
	.ascii	"_temp_2837\0"
	.align
_Label_2866:
	.byte	'?'
	.ascii	"_temp_2836\0"
	.align
_Label_2867:
	.byte	'?'
	.ascii	"_temp_2835\0"
	.align
_Label_2868:
	.byte	'?'
	.ascii	"_temp_2831\0"
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
	mov	2728,r13		! source line 2728
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	2743,r13		! source line 2743
	mov	"\0\0AS",r10
!   semToSignalOnCompletion = whoCares		(4 bytes)
	load	[r14+24],r1
	load	[r14+8],r2
	store	r1,[r2+24]
! ASSIGNMENT STATEMENT...
	mov	2745,r13		! source line 2745
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
	mov	2746,r13		! source line 2746
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
	mov	2747,r13		! source line 2747
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
	mov	2748,r13		! source line 2748
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
	mov	2748,r13		! source line 2748
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
	.word	_Label_2869
	.word	20		! total size of parameters
	.word	0		! frame size = 0
	.word	_Label_2870
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2871
	.word	12
	.word	4
	.word	_Label_2872
	.word	16
	.word	4
	.word	_Label_2873
	.word	20
	.word	4
	.word	_Label_2874
	.word	24
	.word	4
	.word	0
_Label_2869:
	.ascii	"DiskDriver"
	.ascii	"::"
	.ascii	"StartWriteSector\0"
	.align
_Label_2870:
	.ascii	"Pself\0"
	.align
_Label_2871:
	.byte	'I'
	.ascii	"sectorAddr\0"
	.align
_Label_2872:
	.byte	'I'
	.ascii	"numberOfSectors\0"
	.align
_Label_2873:
	.byte	'I'
	.ascii	"memoryAddr\0"
	.align
_Label_2874:
	.byte	'P'
	.ascii	"whoCares\0"
	.align
! 
! ===============  CLASS FileManager  ===============
! 
! Dispatch Table:
! 
_P_Kernel_FileManager:
	.word	_Label_2875
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
_Label_2875:
	.word	1129070931		! Magic number 0x434c4153 == 'CLAS'
	.word	_Label_2876
	.word	_sourceFileName
	.word	336		! line number
	.word	800		! size of instances, in bytes
	.word	_P_Kernel_FileManager
	.word	_P_System_Object
	.word	0
_Label_2876:
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
_Label_3911:
	push	r0
	sub	r1,1,r1
	bne	_Label_3911
	mov	2759,r13		! source line 2759
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   _temp_2877 = _StringConst_145
	set	_StringConst_145,r1
	store	r1,[r14+-940]
!   Prepare Argument: offset=8  value=_temp_2877  sizeInBytes=4
	load	[r14+-940],r1
	store	r1,[r15+0]
!   Call the function
	mov	2766,r13		! source line 2766
	mov	"\0\0CE",r10
	call	print
! ASSIGNMENT STATEMENT...
	mov	2767,r13		! source line 2767
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
	mov	2768,r13		! source line 2768
	mov	"\0\0SE",r10
!   _temp_2879 = &fileManagerLock
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
	mov	2771,r13		! source line 2771
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
	mov	2772,r13		! source line 2772
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
	mov	2773,r13		! source line 2773
	mov	"\0\0SE",r10
!   _temp_2882 = &anFCBBecameFree
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
	mov	2774,r13		! source line 2774
	mov	"\0\0AS",r10
!   _temp_2883 = &fcbTable
	load	[r14+8],r1
	add	r1,24,r1
	store	r1,[r14+-916]
!   NEW ARRAY Constructor...
!   _temp_2885 = &_temp_2884
	add	r14,-912,r1
	store	r1,[r14+-508]
!   _temp_2885 = _temp_2885 + 4
	load	[r14+-508],r1
	add	r1,4,r1
	store	r1,[r14+-508]
!   Next value...
!   NEW CLASS Constructor...
!   ZeroMemory: _temp_2887 = zeros  (sizeInBytes=40)
	add	r14,-500,r4
	mov	10,r3
_Label_3912:
	store	r0,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_3912
!   _temp_2887 = _P_Kernel_FileControlBlock
	set	_P_Kernel_FileControlBlock,r1
	store	r1,[r14+-500]
	mov	10,r1
	store	r1,[r14+-504]
_Label_2889:
!   Data Move: *_temp_2885 = _temp_2887  (sizeInBytes=40)
	add	r14,-500,r5
	load	[r14+-508],r4
	mov	10,r3
_Label_3913:
	load	[r5],r1
	add	r5,4,r5
	store	r1,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_3913
!   _temp_2885 = _temp_2885 + 40
	load	[r14+-508],r1
	add	r1,40,r1
	store	r1,[r14+-508]
!   _temp_2886 = _temp_2886 + -1
	load	[r14+-504],r1
	add	r1,-1,r1
	store	r1,[r14+-504]
!   if intNotZero (_temp_2886) then goto _Label_2889
	load	[r14+-504],r1
	cmp	r1,r0
	bne	_Label_2889
!   Initialize the array size...
	mov	10,r1
	store	r1,[r14+-912]
!   _temp_2890 = &_temp_2884
	add	r14,-912,r1
	store	r1,[r14+-456]
!   make sure array has size 10
	load	[r14+-916],r1
	load	[r1],r1
	set	10, r2
	cmp	r1,0
	be	_Label_3914
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bne	_runtimeErrorWrongArraySize
_Label_3914:
!   make sure array has size 10
	load	[r14+-456],r1
	load	[r1],r1
	set	10, r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bne	_runtimeErrorWrongArraySize
!   Data Move: *_temp_2883 = *_temp_2890  (sizeInBytes=404)
	load	[r14+-456],r5
	load	[r14+-916],r4
	mov	101,r3
_Label_3915:
	load	[r5],r1
	add	r5,4,r5
	store	r1,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_3915
! FOR STATEMENT...
	mov	2776,r13		! source line 2776
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_2895 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-452]
!   Calculate and save the FOR-LOOP ending value
!   _temp_2896 = 9		(4 bytes)
	mov	9,r1
	store	r1,[r14+-448]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_2895  (sizeInBytes=4)
	load	[r14+-452],r1
	store	r1,[r14+-944]
_Label_2891:
!   Perform the FOR-LOOP termination test
!   if i > _temp_2896 then goto _Label_2894		
	load	[r14+-944],r1
	load	[r14+-448],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_2894
_Label_2892:
	mov	2776,r13		! source line 2776
	mov	"\0\0FB",r10
! ASSIGNMENT STATEMENT...
	mov	2777,r13		! source line 2777
	mov	"\0\0AS",r10
!   _temp_2897 = &fcbTable
	load	[r14+8],r1
	add	r1,24,r1
	store	r1,[r14+-444]
!   Move address of _temp_2897 [i ] into _temp_2898
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
!   _temp_2899 = _temp_2898 + 12
	load	[r14+-440],r1
	add	r1,12,r1
	store	r1,[r14+-436]
!   Data Move: *_temp_2899 = i  (sizeInBytes=4)
	load	[r14+-944],r1
	load	[r14+-436],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	2778,r13		! source line 2778
	mov	"\0\0SE",r10
!   _temp_2900 = &fcbTable
	load	[r14+8],r1
	add	r1,24,r1
	store	r1,[r14+-432]
!   Move address of _temp_2900 [i ] into _temp_2901
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
	mov	2779,r13		! source line 2779
	mov	"\0\0SE",r10
!   _temp_2903 = &fcbTable
	load	[r14+8],r1
	add	r1,24,r1
	store	r1,[r14+-420]
!   Move address of _temp_2903 [i ] into _temp_2904
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
!   _temp_2902 = _temp_2904		(4 bytes)
	load	[r14+-416],r1
	store	r1,[r14+-424]
!   _temp_2905 = &fcbFreeList
	load	[r14+8],r1
	add	r1,444,r1
	store	r1,[r14+-412]
!   Prepare Argument: offset=12  value=_temp_2902  sizeInBytes=4
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
_Label_2893:
!   i = i + 1
	load	[r14+-944],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-944]
	jmp	_Label_2891
! END FOR
_Label_2894:
! ASSIGNMENT STATEMENT...
	mov	2783,r13		! source line 2783
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
	mov	2784,r13		! source line 2784
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
	mov	2785,r13		! source line 2785
	mov	"\0\0SE",r10
!   _temp_2908 = &anOpenFileBecameFree
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
	mov	2786,r13		! source line 2786
	mov	"\0\0AS",r10
!   _temp_2909 = &openFileTable
	load	[r14+8],r1
	add	r1,456,r1
	store	r1,[r14+-396]
!   NEW ARRAY Constructor...
!   _temp_2911 = &_temp_2910
	add	r14,-392,r1
	store	r1,[r14+-108]
!   _temp_2911 = _temp_2911 + 4
	load	[r14+-108],r1
	add	r1,4,r1
	store	r1,[r14+-108]
!   Next value...
!   NEW CLASS Constructor...
!   ZeroMemory: _temp_2913 = zeros  (sizeInBytes=28)
	add	r14,-100,r4
	mov	7,r3
_Label_3916:
	store	r0,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_3916
!   _temp_2913 = _P_Kernel_OpenFile
	set	_P_Kernel_OpenFile,r1
	store	r1,[r14+-100]
	mov	10,r1
	store	r1,[r14+-104]
_Label_2915:
!   Data Move: *_temp_2911 = _temp_2913  (sizeInBytes=28)
	add	r14,-100,r5
	load	[r14+-108],r4
	mov	7,r3
_Label_3917:
	load	[r5],r1
	add	r5,4,r5
	store	r1,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_3917
!   _temp_2911 = _temp_2911 + 28
	load	[r14+-108],r1
	add	r1,28,r1
	store	r1,[r14+-108]
!   _temp_2912 = _temp_2912 + -1
	load	[r14+-104],r1
	add	r1,-1,r1
	store	r1,[r14+-104]
!   if intNotZero (_temp_2912) then goto _Label_2915
	load	[r14+-104],r1
	cmp	r1,r0
	bne	_Label_2915
!   Initialize the array size...
	mov	10,r1
	store	r1,[r14+-392]
!   _temp_2916 = &_temp_2910
	add	r14,-392,r1
	store	r1,[r14+-68]
!   make sure array has size 10
	load	[r14+-396],r1
	load	[r1],r1
	set	10, r2
	cmp	r1,0
	be	_Label_3918
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bne	_runtimeErrorWrongArraySize
_Label_3918:
!   make sure array has size 10
	load	[r14+-68],r1
	load	[r1],r1
	set	10, r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bne	_runtimeErrorWrongArraySize
!   Data Move: *_temp_2909 = *_temp_2916  (sizeInBytes=284)
	load	[r14+-68],r5
	load	[r14+-396],r4
	mov	71,r3
_Label_3919:
	load	[r5],r1
	add	r5,4,r5
	store	r1,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_3919
! FOR STATEMENT...
	mov	2788,r13		! source line 2788
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_2921 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-64]
!   Calculate and save the FOR-LOOP ending value
!   _temp_2922 = 9		(4 bytes)
	mov	9,r1
	store	r1,[r14+-60]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_2921  (sizeInBytes=4)
	load	[r14+-64],r1
	store	r1,[r14+-944]
_Label_2917:
!   Perform the FOR-LOOP termination test
!   if i > _temp_2922 then goto _Label_2920		
	load	[r14+-944],r1
	load	[r14+-60],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_2920
_Label_2918:
	mov	2788,r13		! source line 2788
	mov	"\0\0FB",r10
! ASSIGNMENT STATEMENT...
	mov	2789,r13		! source line 2789
	mov	"\0\0AS",r10
!   _temp_2923 = &openFileTable
	load	[r14+8],r1
	add	r1,456,r1
	store	r1,[r14+-56]
!   Move address of _temp_2923 [i ] into _temp_2924
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
!   _temp_2925 = _temp_2924 + 12
	load	[r14+-52],r1
	add	r1,12,r1
	store	r1,[r14+-48]
!   Data Move: *_temp_2925 = 1  (sizeInBytes=4)
	mov	1,r1
	load	[r14+-48],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	2790,r13		! source line 2790
	mov	"\0\0SE",r10
!   _temp_2927 = &openFileTable
	load	[r14+8],r1
	add	r1,456,r1
	store	r1,[r14+-40]
!   Move address of _temp_2927 [i ] into _temp_2928
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
!   _temp_2926 = _temp_2928		(4 bytes)
	load	[r14+-36],r1
	store	r1,[r14+-44]
!   _temp_2929 = &openFileFreeList
	load	[r14+8],r1
	add	r1,756,r1
	store	r1,[r14+-32]
!   Prepare Argument: offset=12  value=_temp_2926  sizeInBytes=4
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
_Label_2919:
!   i = i + 1
	load	[r14+-944],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-944]
	jmp	_Label_2917
! END FOR
_Label_2920:
! ASSIGNMENT STATEMENT...
	mov	2794,r13		! source line 2794
	mov	"\0\0AS",r10
!   NEW CLASS Constructor...
!   ZeroMemory: serialTerminalFile = zeros  (sizeInBytes=28)
	load	[r14+8],r4
	add	r4,772,r4
	mov	7,r3
_Label_3920:
	store	r0,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_3920
!   serialTerminalFile = _P_Kernel_OpenFile
	set	_P_Kernel_OpenFile,r1
	load	[r14+8],r2
	store	r1,[r2+772]
! ASSIGNMENT STATEMENT...
	mov	2795,r13		! source line 2795
	mov	"\0\0AS",r10
!   _temp_2931 = &serialTerminalFile
	load	[r14+8],r1
	add	r1,772,r1
	store	r1,[r14+-24]
!   _temp_2932 = _temp_2931 + 12
	load	[r14+-24],r1
	add	r1,12,r1
	store	r1,[r14+-20]
!   Data Move: *_temp_2932 = 2  (sizeInBytes=4)
	mov	2,r1
	load	[r14+-20],r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	2800,r13		! source line 2800
	mov	"\0\0AS",r10
	mov	2800,r13		! source line 2800
	mov	"\0\0SE",r10
!   _temp_2933 = &_P_Kernel_frameManager
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
	mov	2801,r13		! source line 2801
	mov	"\0\0SE",r10
!   _temp_2934 = &_P_Kernel_diskDriver
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
	mov	2801,r13		! source line 2801
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
	.word	_Label_2935
	.word	4		! total size of parameters
	.word	952		! frame size = 952
	.word	_Label_2936
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2937
	.word	-12
	.word	4
	.word	_Label_2938
	.word	-16
	.word	4
	.word	_Label_2939
	.word	-20
	.word	4
	.word	_Label_2940
	.word	-24
	.word	4
	.word	_Label_2941
	.word	-28
	.word	4
	.word	_Label_2942
	.word	-32
	.word	4
	.word	_Label_2943
	.word	-36
	.word	4
	.word	_Label_2944
	.word	-40
	.word	4
	.word	_Label_2945
	.word	-44
	.word	4
	.word	_Label_2946
	.word	-48
	.word	4
	.word	_Label_2947
	.word	-52
	.word	4
	.word	_Label_2948
	.word	-56
	.word	4
	.word	_Label_2949
	.word	-60
	.word	4
	.word	_Label_2950
	.word	-64
	.word	4
	.word	_Label_2951
	.word	-68
	.word	4
	.word	_Label_2952
	.word	-72
	.word	4
	.word	_Label_2953
	.word	-100
	.word	28
	.word	_Label_2954
	.word	-104
	.word	4
	.word	_Label_2955
	.word	-108
	.word	4
	.word	_Label_2956
	.word	-392
	.word	284
	.word	_Label_2957
	.word	-396
	.word	4
	.word	_Label_2958
	.word	-400
	.word	4
	.word	_Label_2959
	.word	-404
	.word	4
	.word	_Label_2960
	.word	-408
	.word	4
	.word	_Label_2961
	.word	-412
	.word	4
	.word	_Label_2962
	.word	-416
	.word	4
	.word	_Label_2963
	.word	-420
	.word	4
	.word	_Label_2964
	.word	-424
	.word	4
	.word	_Label_2965
	.word	-428
	.word	4
	.word	_Label_2966
	.word	-432
	.word	4
	.word	_Label_2967
	.word	-436
	.word	4
	.word	_Label_2968
	.word	-440
	.word	4
	.word	_Label_2969
	.word	-444
	.word	4
	.word	_Label_2970
	.word	-448
	.word	4
	.word	_Label_2971
	.word	-452
	.word	4
	.word	_Label_2972
	.word	-456
	.word	4
	.word	_Label_2973
	.word	-460
	.word	4
	.word	_Label_2974
	.word	-500
	.word	40
	.word	_Label_2975
	.word	-504
	.word	4
	.word	_Label_2976
	.word	-508
	.word	4
	.word	_Label_2977
	.word	-912
	.word	404
	.word	_Label_2978
	.word	-916
	.word	4
	.word	_Label_2979
	.word	-920
	.word	4
	.word	_Label_2980
	.word	-924
	.word	4
	.word	_Label_2981
	.word	-928
	.word	4
	.word	_Label_2982
	.word	-932
	.word	4
	.word	_Label_2983
	.word	-936
	.word	4
	.word	_Label_2984
	.word	-940
	.word	4
	.word	_Label_2985
	.word	-944
	.word	4
	.word	0
_Label_2935:
	.ascii	"FileManager"
	.ascii	"::"
	.ascii	"Init\0"
	.align
_Label_2936:
	.ascii	"Pself\0"
	.align
_Label_2937:
	.byte	'?'
	.ascii	"_temp_2934\0"
	.align
_Label_2938:
	.byte	'?'
	.ascii	"_temp_2933\0"
	.align
_Label_2939:
	.byte	'?'
	.ascii	"_temp_2932\0"
	.align
_Label_2940:
	.byte	'?'
	.ascii	"_temp_2931\0"
	.align
_Label_2941:
	.byte	'?'
	.ascii	"_temp_2930\0"
	.align
_Label_2942:
	.byte	'?'
	.ascii	"_temp_2929\0"
	.align
_Label_2943:
	.byte	'?'
	.ascii	"_temp_2928\0"
	.align
_Label_2944:
	.byte	'?'
	.ascii	"_temp_2927\0"
	.align
_Label_2945:
	.byte	'?'
	.ascii	"_temp_2926\0"
	.align
_Label_2946:
	.byte	'?'
	.ascii	"_temp_2925\0"
	.align
_Label_2947:
	.byte	'?'
	.ascii	"_temp_2924\0"
	.align
_Label_2948:
	.byte	'?'
	.ascii	"_temp_2923\0"
	.align
_Label_2949:
	.byte	'?'
	.ascii	"_temp_2922\0"
	.align
_Label_2950:
	.byte	'?'
	.ascii	"_temp_2921\0"
	.align
_Label_2951:
	.byte	'?'
	.ascii	"_temp_2916\0"
	.align
_Label_2952:
	.byte	'?'
	.ascii	"_temp_2914\0"
	.align
_Label_2953:
	.byte	'?'
	.ascii	"_temp_2913\0"
	.align
_Label_2954:
	.byte	'?'
	.ascii	"_temp_2912\0"
	.align
_Label_2955:
	.byte	'?'
	.ascii	"_temp_2911\0"
	.align
_Label_2956:
	.byte	'?'
	.ascii	"_temp_2910\0"
	.align
_Label_2957:
	.byte	'?'
	.ascii	"_temp_2909\0"
	.align
_Label_2958:
	.byte	'?'
	.ascii	"_temp_2908\0"
	.align
_Label_2959:
	.byte	'?'
	.ascii	"_temp_2907\0"
	.align
_Label_2960:
	.byte	'?'
	.ascii	"_temp_2906\0"
	.align
_Label_2961:
	.byte	'?'
	.ascii	"_temp_2905\0"
	.align
_Label_2962:
	.byte	'?'
	.ascii	"_temp_2904\0"
	.align
_Label_2963:
	.byte	'?'
	.ascii	"_temp_2903\0"
	.align
_Label_2964:
	.byte	'?'
	.ascii	"_temp_2902\0"
	.align
_Label_2965:
	.byte	'?'
	.ascii	"_temp_2901\0"
	.align
_Label_2966:
	.byte	'?'
	.ascii	"_temp_2900\0"
	.align
_Label_2967:
	.byte	'?'
	.ascii	"_temp_2899\0"
	.align
_Label_2968:
	.byte	'?'
	.ascii	"_temp_2898\0"
	.align
_Label_2969:
	.byte	'?'
	.ascii	"_temp_2897\0"
	.align
_Label_2970:
	.byte	'?'
	.ascii	"_temp_2896\0"
	.align
_Label_2971:
	.byte	'?'
	.ascii	"_temp_2895\0"
	.align
_Label_2972:
	.byte	'?'
	.ascii	"_temp_2890\0"
	.align
_Label_2973:
	.byte	'?'
	.ascii	"_temp_2888\0"
	.align
_Label_2974:
	.byte	'?'
	.ascii	"_temp_2887\0"
	.align
_Label_2975:
	.byte	'?'
	.ascii	"_temp_2886\0"
	.align
_Label_2976:
	.byte	'?'
	.ascii	"_temp_2885\0"
	.align
_Label_2977:
	.byte	'?'
	.ascii	"_temp_2884\0"
	.align
_Label_2978:
	.byte	'?'
	.ascii	"_temp_2883\0"
	.align
_Label_2979:
	.byte	'?'
	.ascii	"_temp_2882\0"
	.align
_Label_2980:
	.byte	'?'
	.ascii	"_temp_2881\0"
	.align
_Label_2981:
	.byte	'?'
	.ascii	"_temp_2880\0"
	.align
_Label_2982:
	.byte	'?'
	.ascii	"_temp_2879\0"
	.align
_Label_2983:
	.byte	'?'
	.ascii	"_temp_2878\0"
	.align
_Label_2984:
	.byte	'?'
	.ascii	"_temp_2877\0"
	.align
_Label_2985:
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
_Label_3921:
	push	r0
	sub	r1,1,r1
	bne	_Label_3921
	mov	2808,r13		! source line 2808
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! SEND STATEMENT...
	mov	2810,r13		! source line 2810
	mov	"\0\0SE",r10
!   _temp_2986 = &fileManagerLock
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
!   _temp_2987 = _StringConst_146
	set	_StringConst_146,r1
	store	r1,[r14+-108]
!   Prepare Argument: offset=8  value=_temp_2987  sizeInBytes=4
	load	[r14+-108],r1
	store	r1,[r15+0]
!   Call the function
	mov	2811,r13		! source line 2811
	mov	"\0\0CE",r10
	call	print
! FOR STATEMENT...
	mov	2812,r13		! source line 2812
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_2992 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-104]
!   Calculate and save the FOR-LOOP ending value
!   _temp_2993 = 9		(4 bytes)
	mov	9,r1
	store	r1,[r14+-100]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_2992  (sizeInBytes=4)
	load	[r14+-104],r1
	store	r1,[r14+-116]
_Label_2988:
!   Perform the FOR-LOOP termination test
!   if i > _temp_2993 then goto _Label_2991		
	load	[r14+-116],r1
	load	[r14+-100],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_2991
_Label_2989:
	mov	2812,r13		! source line 2812
	mov	"\0\0FB",r10
! CALL STATEMENT...
!   _temp_2994 = _StringConst_147
	set	_StringConst_147,r1
	store	r1,[r14+-96]
!   Prepare Argument: offset=8  value=_temp_2994  sizeInBytes=4
	load	[r14+-96],r1
	store	r1,[r15+0]
!   Call the function
	mov	2813,r13		! source line 2813
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=i  sizeInBytes=4
	load	[r14+-116],r1
	store	r1,[r15+0]
!   Call the function
	mov	2814,r13		! source line 2814
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   _temp_2995 = _StringConst_148
	set	_StringConst_148,r1
	store	r1,[r14+-92]
!   Prepare Argument: offset=8  value=_temp_2995  sizeInBytes=4
	load	[r14+-92],r1
	store	r1,[r15+0]
!   Call the function
	mov	2815,r13		! source line 2815
	mov	"\0\0CE",r10
	call	print
! SEND STATEMENT...
	mov	2816,r13		! source line 2816
	mov	"\0\0SE",r10
!   _temp_2996 = &fcbTable
	load	[r14+8],r1
	add	r1,24,r1
	store	r1,[r14+-88]
!   Move address of _temp_2996 [i ] into _temp_2997
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
_Label_2990:
!   i = i + 1
	load	[r14+-116],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-116]
	jmp	_Label_2988
! END FOR
_Label_2991:
! CALL STATEMENT...
!   _temp_2998 = _StringConst_149
	set	_StringConst_149,r1
	store	r1,[r14+-80]
!   Prepare Argument: offset=8  value=_temp_2998  sizeInBytes=4
	load	[r14+-80],r1
	store	r1,[r15+0]
!   Call the function
	mov	2818,r13		! source line 2818
	mov	"\0\0CE",r10
	call	print
! SEND STATEMENT...
	mov	2819,r13		! source line 2819
	mov	"\0\0SE",r10
!   _temp_2999 = _function_191_printFCB
	set	_function_191_printFCB,r1
	store	r1,[r14+-76]
!   _temp_3000 = &fcbFreeList
	load	[r14+8],r1
	add	r1,444,r1
	store	r1,[r14+-72]
!   Prepare Argument: offset=12  value=_temp_2999  sizeInBytes=4
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
	mov	2820,r13		! source line 2820
	mov	"\0\0CA",r10
	call	_P_System_nl
! CALL STATEMENT...
!   _temp_3001 = _StringConst_150
	set	_StringConst_150,r1
	store	r1,[r14+-68]
!   Prepare Argument: offset=8  value=_temp_3001  sizeInBytes=4
	load	[r14+-68],r1
	store	r1,[r15+0]
!   Call the function
	mov	2821,r13		! source line 2821
	mov	"\0\0CE",r10
	call	print
! FOR STATEMENT...
	mov	2822,r13		! source line 2822
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_3006 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-64]
!   Calculate and save the FOR-LOOP ending value
!   _temp_3007 = 9		(4 bytes)
	mov	9,r1
	store	r1,[r14+-60]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_3006  (sizeInBytes=4)
	load	[r14+-64],r1
	store	r1,[r14+-116]
_Label_3002:
!   Perform the FOR-LOOP termination test
!   if i > _temp_3007 then goto _Label_3005		
	load	[r14+-116],r1
	load	[r14+-60],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_3005
_Label_3003:
	mov	2822,r13		! source line 2822
	mov	"\0\0FB",r10
! CALL STATEMENT...
!   _temp_3008 = _StringConst_151
	set	_StringConst_151,r1
	store	r1,[r14+-56]
!   Prepare Argument: offset=8  value=_temp_3008  sizeInBytes=4
	load	[r14+-56],r1
	store	r1,[r15+0]
!   Call the function
	mov	2823,r13		! source line 2823
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=i  sizeInBytes=4
	load	[r14+-116],r1
	store	r1,[r15+0]
!   Call the function
	mov	2824,r13		! source line 2824
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   _temp_3009 = _StringConst_152
	set	_StringConst_152,r1
	store	r1,[r14+-52]
!   Prepare Argument: offset=8  value=_temp_3009  sizeInBytes=4
	load	[r14+-52],r1
	store	r1,[r15+0]
!   Call the function
	mov	2825,r13		! source line 2825
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_3011 = &openFileTable
	load	[r14+8],r1
	add	r1,456,r1
	store	r1,[r14+-44]
!   Move address of _temp_3011 [i ] into _temp_3012
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
!   _temp_3010 = _temp_3012		(4 bytes)
	load	[r14+-40],r1
	store	r1,[r14+-48]
!   Prepare Argument: offset=8  value=_temp_3010  sizeInBytes=4
	load	[r14+-48],r1
	store	r1,[r15+0]
!   Call the function
	mov	2826,r13		! source line 2826
	mov	"\0\0CE",r10
	call	printHex
! CALL STATEMENT...
!   _temp_3013 = _StringConst_153
	set	_StringConst_153,r1
	store	r1,[r14+-36]
!   Prepare Argument: offset=8  value=_temp_3013  sizeInBytes=4
	load	[r14+-36],r1
	store	r1,[r15+0]
!   Call the function
	mov	2827,r13		! source line 2827
	mov	"\0\0CE",r10
	call	print
! SEND STATEMENT...
	mov	2828,r13		! source line 2828
	mov	"\0\0SE",r10
!   _temp_3014 = &openFileTable
	load	[r14+8],r1
	add	r1,456,r1
	store	r1,[r14+-32]
!   Move address of _temp_3014 [i ] into _temp_3015
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
_Label_3004:
!   i = i + 1
	load	[r14+-116],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-116]
	jmp	_Label_3002
! END FOR
_Label_3005:
! CALL STATEMENT...
!   _temp_3016 = _StringConst_154
	set	_StringConst_154,r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=8  value=_temp_3016  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+0]
!   Call the function
	mov	2830,r13		! source line 2830
	mov	"\0\0CE",r10
	call	print
! SEND STATEMENT...
	mov	2831,r13		! source line 2831
	mov	"\0\0SE",r10
!   _temp_3017 = _function_190_printOpen
	set	_function_190_printOpen,r1
	store	r1,[r14+-20]
!   _temp_3018 = &openFileFreeList
	load	[r14+8],r1
	add	r1,756,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=12  value=_temp_3017  sizeInBytes=4
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
	mov	2832,r13		! source line 2832
	mov	"\0\0SE",r10
!   _temp_3019 = &fileManagerLock
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
	mov	2832,r13		! source line 2832
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
	.word	_Label_3020
	.word	4		! total size of parameters
	.word	116		! frame size = 116
	.word	_Label_3021
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_3022
	.word	-12
	.word	4
	.word	_Label_3023
	.word	-16
	.word	4
	.word	_Label_3024
	.word	-20
	.word	4
	.word	_Label_3025
	.word	-24
	.word	4
	.word	_Label_3026
	.word	-28
	.word	4
	.word	_Label_3027
	.word	-32
	.word	4
	.word	_Label_3028
	.word	-36
	.word	4
	.word	_Label_3029
	.word	-40
	.word	4
	.word	_Label_3030
	.word	-44
	.word	4
	.word	_Label_3031
	.word	-48
	.word	4
	.word	_Label_3032
	.word	-52
	.word	4
	.word	_Label_3033
	.word	-56
	.word	4
	.word	_Label_3034
	.word	-60
	.word	4
	.word	_Label_3035
	.word	-64
	.word	4
	.word	_Label_3036
	.word	-68
	.word	4
	.word	_Label_3037
	.word	-72
	.word	4
	.word	_Label_3038
	.word	-76
	.word	4
	.word	_Label_3039
	.word	-80
	.word	4
	.word	_Label_3040
	.word	-84
	.word	4
	.word	_Label_3041
	.word	-88
	.word	4
	.word	_Label_3042
	.word	-92
	.word	4
	.word	_Label_3043
	.word	-96
	.word	4
	.word	_Label_3044
	.word	-100
	.word	4
	.word	_Label_3045
	.word	-104
	.word	4
	.word	_Label_3046
	.word	-108
	.word	4
	.word	_Label_3047
	.word	-112
	.word	4
	.word	_Label_3048
	.word	-116
	.word	4
	.word	0
_Label_3020:
	.ascii	"FileManager"
	.ascii	"::"
	.ascii	"Print\0"
	.align
_Label_3021:
	.ascii	"Pself\0"
	.align
_Label_3022:
	.byte	'?'
	.ascii	"_temp_3019\0"
	.align
_Label_3023:
	.byte	'?'
	.ascii	"_temp_3018\0"
	.align
_Label_3024:
	.byte	'?'
	.ascii	"_temp_3017\0"
	.align
_Label_3025:
	.byte	'?'
	.ascii	"_temp_3016\0"
	.align
_Label_3026:
	.byte	'?'
	.ascii	"_temp_3015\0"
	.align
_Label_3027:
	.byte	'?'
	.ascii	"_temp_3014\0"
	.align
_Label_3028:
	.byte	'?'
	.ascii	"_temp_3013\0"
	.align
_Label_3029:
	.byte	'?'
	.ascii	"_temp_3012\0"
	.align
_Label_3030:
	.byte	'?'
	.ascii	"_temp_3011\0"
	.align
_Label_3031:
	.byte	'?'
	.ascii	"_temp_3010\0"
	.align
_Label_3032:
	.byte	'?'
	.ascii	"_temp_3009\0"
	.align
_Label_3033:
	.byte	'?'
	.ascii	"_temp_3008\0"
	.align
_Label_3034:
	.byte	'?'
	.ascii	"_temp_3007\0"
	.align
_Label_3035:
	.byte	'?'
	.ascii	"_temp_3006\0"
	.align
_Label_3036:
	.byte	'?'
	.ascii	"_temp_3001\0"
	.align
_Label_3037:
	.byte	'?'
	.ascii	"_temp_3000\0"
	.align
_Label_3038:
	.byte	'?'
	.ascii	"_temp_2999\0"
	.align
_Label_3039:
	.byte	'?'
	.ascii	"_temp_2998\0"
	.align
_Label_3040:
	.byte	'?'
	.ascii	"_temp_2997\0"
	.align
_Label_3041:
	.byte	'?'
	.ascii	"_temp_2996\0"
	.align
_Label_3042:
	.byte	'?'
	.ascii	"_temp_2995\0"
	.align
_Label_3043:
	.byte	'?'
	.ascii	"_temp_2994\0"
	.align
_Label_3044:
	.byte	'?'
	.ascii	"_temp_2993\0"
	.align
_Label_3045:
	.byte	'?'
	.ascii	"_temp_2992\0"
	.align
_Label_3046:
	.byte	'?'
	.ascii	"_temp_2987\0"
	.align
_Label_3047:
	.byte	'?'
	.ascii	"_temp_2986\0"
	.align
_Label_3048:
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
_Label_3922:
	push	r0
	sub	r1,1,r1
	bne	_Label_3922
	mov	2837,r13		! source line 2837
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	2854,r13		! source line 2854
	mov	"\0\0AS",r10
	mov	2854,r13		! source line 2854
	mov	"\0\0SE",r10
!   _temp_3049 = &_P_Kernel_fileManager
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
	mov	2855,r13		! source line 2855
	mov	"\0\0IF",r10
!   if intIsZero (fcb) then goto _Label_3050
	load	[r14+-56],r1
	cmp	r1,r0
	be	_Label_3050
	jmp	_Label_3051
_Label_3050:
! THEN...
	mov	2856,r13		! source line 2856
	mov	"\0\0TN",r10
! RETURN STATEMENT...
	mov	2856,r13		! source line 2856
	mov	"\0\0RE",r10
!   ReturnResult: 0  (sizeInBytes=4)
	mov	0,r1
	store	r1,[r14+8]
	add	r15,60,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_3051:
! SEND STATEMENT...
	mov	2860,r13		! source line 2860
	mov	"\0\0SE",r10
!   _temp_3052 = &fileManagerLock
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
	mov	2861,r13		! source line 2861
	mov	"\0\0WH",r10
_Label_3053:
	mov	2861,r13		! source line 2861
	mov	"\0\0SE",r10
!   _temp_3056 = &openFileFreeList
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
!   if result==true then goto _Label_3054 else goto _Label_3055
	loadb	[r15],r1
	cmp	r1,0
	be	_Label_3055
	jmp	_Label_3054
_Label_3054:
	mov	2861,r13		! source line 2861
	mov	"\0\0WB",r10
! SEND STATEMENT...
	mov	2862,r13		! source line 2862
	mov	"\0\0SE",r10
!   _temp_3057 = &fileManagerLock
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-36]
!   _temp_3058 = &anOpenFileBecameFree
	load	[r14+8],r1
	add	r1,740,r1
	store	r1,[r14+-32]
!   Prepare Argument: offset=12  value=_temp_3057  sizeInBytes=4
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
	jmp	_Label_3053
_Label_3055:
! ASSIGNMENT STATEMENT...
	mov	2864,r13		! source line 2864
	mov	"\0\0AS",r10
	mov	2864,r13		! source line 2864
	mov	"\0\0SE",r10
!   _temp_3059 = &openFileFreeList
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
	mov	2867,r13		! source line 2867
	mov	"\0\0AS",r10
!   if intIsZero (open) then goto _runtimeErrorNullPointer
	load	[r14+-52],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3060 = open + 20
	load	[r14+-52],r1
	add	r1,20,r1
	store	r1,[r14+-24]
!   Data Move: *_temp_3060 = fcb  (sizeInBytes=4)
	load	[r14+-56],r1
	load	[r14+-24],r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	2868,r13		! source line 2868
	mov	"\0\0AS",r10
!   if intIsZero (open) then goto _runtimeErrorNullPointer
	load	[r14+-52],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3061 = open + 24
	load	[r14+-52],r1
	add	r1,24,r1
	store	r1,[r14+-20]
!   Data Move: *_temp_3061 = 1  (sizeInBytes=4)
	mov	1,r1
	load	[r14+-20],r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	2871,r13		! source line 2871
	mov	"\0\0AS",r10
!   if intIsZero (open) then goto _runtimeErrorNullPointer
	load	[r14+-52],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3062 = open + 16
	load	[r14+-52],r1
	add	r1,16,r1
	store	r1,[r14+-16]
!   Data Move: *_temp_3062 = 0  (sizeInBytes=4)
	mov	0,r1
	load	[r14+-16],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	2873,r13		! source line 2873
	mov	"\0\0SE",r10
!   _temp_3063 = &fileManagerLock
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
	mov	2874,r13		! source line 2874
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
	.word	_Label_3064
	.word	8		! total size of parameters
	.word	56		! frame size = 56
	.word	_Label_3065
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_3066
	.word	12
	.word	4
	.word	_Label_3067
	.word	-12
	.word	4
	.word	_Label_3068
	.word	-16
	.word	4
	.word	_Label_3069
	.word	-20
	.word	4
	.word	_Label_3070
	.word	-24
	.word	4
	.word	_Label_3071
	.word	-28
	.word	4
	.word	_Label_3072
	.word	-32
	.word	4
	.word	_Label_3073
	.word	-36
	.word	4
	.word	_Label_3074
	.word	-40
	.word	4
	.word	_Label_3075
	.word	-44
	.word	4
	.word	_Label_3076
	.word	-48
	.word	4
	.word	_Label_3077
	.word	-52
	.word	4
	.word	_Label_3078
	.word	-56
	.word	4
	.word	0
_Label_3064:
	.ascii	"FileManager"
	.ascii	"::"
	.ascii	"Open\0"
	.align
_Label_3065:
	.ascii	"Pself\0"
	.align
_Label_3066:
	.byte	'P'
	.ascii	"filename\0"
	.align
_Label_3067:
	.byte	'?'
	.ascii	"_temp_3063\0"
	.align
_Label_3068:
	.byte	'?'
	.ascii	"_temp_3062\0"
	.align
_Label_3069:
	.byte	'?'
	.ascii	"_temp_3061\0"
	.align
_Label_3070:
	.byte	'?'
	.ascii	"_temp_3060\0"
	.align
_Label_3071:
	.byte	'?'
	.ascii	"_temp_3059\0"
	.align
_Label_3072:
	.byte	'?'
	.ascii	"_temp_3058\0"
	.align
_Label_3073:
	.byte	'?'
	.ascii	"_temp_3057\0"
	.align
_Label_3074:
	.byte	'?'
	.ascii	"_temp_3056\0"
	.align
_Label_3075:
	.byte	'?'
	.ascii	"_temp_3052\0"
	.align
_Label_3076:
	.byte	'?'
	.ascii	"_temp_3049\0"
	.align
_Label_3077:
	.byte	'P'
	.ascii	"open\0"
	.align
_Label_3078:
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
_Label_3923:
	push	r0
	sub	r1,1,r1
	bne	_Label_3923
	mov	2879,r13		! source line 2879
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	2904,r13		! source line 2904
	mov	"\0\0AS",r10
!   p = directoryFrame		(4 bytes)
	load	[r14+8],r1
	load	[r1+768],r1
	store	r1,[r14+-160]
! ASSIGNMENT STATEMENT...
	mov	2907,r13		! source line 2907
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
	mov	2908,r13		! source line 2908
	mov	"\0\0AS",r10
!   p = p + 4		(int)
	load	[r14+-160],r1
	mov	4,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-160]
! IF STATEMENT...
	mov	2909,r13		! source line 2909
	mov	"\0\0IF",r10
!   if i == 1937012066 then goto _Label_3080		(int)
	load	[r14+-136],r1
	set	1937012066,r2
	cmp	r1,r2
	be	_Label_3080
!	jmp	_Label_3079
_Label_3079:
! THEN...
	mov	2910,r13		! source line 2910
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_3081 = _StringConst_155
	set	_StringConst_155,r1
	store	r1,[r14+-132]
!   Prepare Argument: offset=8  value=_temp_3081  sizeInBytes=4
	load	[r14+-132],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	2910,r13		! source line 2910
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END IF...
_Label_3080:
! ASSIGNMENT STATEMENT...
	mov	2914,r13		! source line 2914
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
	mov	2915,r13		! source line 2915
	mov	"\0\0AS",r10
!   p = p + 4		(int)
	load	[r14+-160],r1
	mov	4,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-160]
! ASSIGNMENT STATEMENT...
	mov	2916,r13		! source line 2916
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
	mov	2917,r13		! source line 2917
	mov	"\0\0AS",r10
!   p = p + 4		(int)
	load	[r14+-160],r1
	mov	4,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-160]
! WHILE STATEMENT...
	mov	2920,r13		! source line 2920
	mov	"\0\0WH",r10
_Label_3082:
!   if numFiles <= 0 then goto _Label_3084		(int)
	load	[r14+-144],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	ble	_Label_3084
!	jmp	_Label_3083
_Label_3083:
	mov	2920,r13		! source line 2920
	mov	"\0\0WB",r10
! CALL STATEMENT...
!   _temp_3085 = &start
	add	r14,-140,r1
	store	r1,[r14+-128]
!   Prepare Argument: offset=8  value=_temp_3085  sizeInBytes=4
	load	[r14+-128],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=p  sizeInBytes=4
	load	[r14+-160],r1
	store	r1,[r15+4]
!   Call the function
	mov	2921,r13		! source line 2921
	mov	"\0\0CA",r10
	call	_function_192_copyUnalignedWord
! ASSIGNMENT STATEMENT...
	mov	2922,r13		! source line 2922
	mov	"\0\0AS",r10
!   p = p + 4		(int)
	load	[r14+-160],r1
	mov	4,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-160]
! CALL STATEMENT...
!   _temp_3086 = &fileLen
	add	r14,-148,r1
	store	r1,[r14+-124]
!   Prepare Argument: offset=8  value=_temp_3086  sizeInBytes=4
	load	[r14+-124],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=p  sizeInBytes=4
	load	[r14+-160],r1
	store	r1,[r15+4]
!   Call the function
	mov	2923,r13		! source line 2923
	mov	"\0\0CA",r10
	call	_function_192_copyUnalignedWord
! ASSIGNMENT STATEMENT...
	mov	2924,r13		! source line 2924
	mov	"\0\0AS",r10
!   p = p + 4		(int)
	load	[r14+-160],r1
	mov	4,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-160]
! CALL STATEMENT...
!   _temp_3087 = &fileNameLen
	add	r14,-152,r1
	store	r1,[r14+-120]
!   Prepare Argument: offset=8  value=_temp_3087  sizeInBytes=4
	load	[r14+-120],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=p  sizeInBytes=4
	load	[r14+-160],r1
	store	r1,[r15+4]
!   Call the function
	mov	2925,r13		! source line 2925
	mov	"\0\0CA",r10
	call	_function_192_copyUnalignedWord
! ASSIGNMENT STATEMENT...
	mov	2926,r13		! source line 2926
	mov	"\0\0AS",r10
!   p = p + 4		(int)
	load	[r14+-160],r1
	mov	4,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-160]
! IF STATEMENT...
	mov	2927,r13		! source line 2927
	mov	"\0\0IF",r10
!   if intIsZero (filename) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Data Move: _temp_3091 = *filename  (sizeInBytes=4)
	load	[r14+12],r1
	load	[r1],r1
	store	r1,[r14+-116]
!   if fileNameLen != _temp_3091 then goto _Label_3089		(int)
	load	[r14+-152],r1
	load	[r14+-116],r2
	cmp	r1,r2
	bne	_Label_3089
!	jmp	_Label_3090
_Label_3090:
!   if intIsZero (filename) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Move address of filename [0 ] into _temp_3093
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
!   _temp_3092 = _temp_3093		(4 bytes)
	load	[r14+-108],r1
	store	r1,[r14+-112]
!   Prepare Argument: offset=8  value=p  sizeInBytes=4
	load	[r14+-160],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=_temp_3092  sizeInBytes=4
	load	[r14+-112],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=fileNameLen  sizeInBytes=4
	load	[r14+-152],r1
	store	r1,[r15+8]
!   Call the function
	mov	2928,r13		! source line 2928
	mov	"\0\0CA",r10
	call	_P_System_MemoryEqual
!   if result==true then goto _Label_3088 else goto _Label_3089
	loadb	[r15],r1
	cmp	r1,0
	be	_Label_3089
	jmp	_Label_3088
_Label_3088:
! THEN...
	mov	2929,r13		! source line 2929
	mov	"\0\0TN",r10
! BREAK STATEMENT...
	mov	2929,r13		! source line 2929
	mov	"\0\0BR",r10
	jmp	_Label_3084
! END IF...
_Label_3089:
! ASSIGNMENT STATEMENT...
	mov	2931,r13		! source line 2931
	mov	"\0\0AS",r10
!   p = p + fileNameLen		(int)
	load	[r14+-160],r1
	load	[r14+-152],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-160]
! ASSIGNMENT STATEMENT...
	mov	2932,r13		! source line 2932
	mov	"\0\0AS",r10
!   numFiles = numFiles - 1		(int)
	load	[r14+-144],r1
	mov	1,r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-144]
! END WHILE...
	jmp	_Label_3082
_Label_3084:
! IF STATEMENT...
	mov	2936,r13		! source line 2936
	mov	"\0\0IF",r10
!   if numFiles > 0 then goto _Label_3095		(int)
	load	[r14+-144],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_3095
!	jmp	_Label_3094
_Label_3094:
! THEN...
	mov	2937,r13		! source line 2937
	mov	"\0\0TN",r10
! RETURN STATEMENT...
	mov	2937,r13		! source line 2937
	mov	"\0\0RE",r10
!   ReturnResult: 0  (sizeInBytes=4)
	mov	0,r1
	store	r1,[r14+8]
	add	r15,168,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_3095:
! SEND STATEMENT...
	mov	2940,r13		! source line 2940
	mov	"\0\0SE",r10
!   _temp_3096 = &fileManagerLock
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
	mov	2942,r13		! source line 2942
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_3101 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-100]
!   Calculate and save the FOR-LOOP ending value
!   _temp_3102 = 9		(4 bytes)
	mov	9,r1
	store	r1,[r14+-96]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_3101  (sizeInBytes=4)
	load	[r14+-100],r1
	store	r1,[r14+-136]
_Label_3097:
!   Perform the FOR-LOOP termination test
!   if i > _temp_3102 then goto _Label_3100		
	load	[r14+-136],r1
	load	[r14+-96],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_3100
_Label_3098:
	mov	2942,r13		! source line 2942
	mov	"\0\0FB",r10
! ASSIGNMENT STATEMENT...
	mov	2943,r13		! source line 2943
	mov	"\0\0AS",r10
!   _temp_3103 = &fcbTable
	load	[r14+8],r1
	add	r1,24,r1
	store	r1,[r14+-92]
!   Move address of _temp_3103 [i ] into _temp_3104
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
!   fcb = _temp_3104		(4 bytes)
	load	[r14+-88],r1
	store	r1,[r14+-156]
! IF STATEMENT...
	mov	2944,r13		! source line 2944
	mov	"\0\0IF",r10
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-156],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3108 = fcb + 20
	load	[r14+-156],r1
	add	r1,20,r1
	store	r1,[r14+-80]
!   Data Move: _temp_3107 = *_temp_3108  (sizeInBytes=4)
	load	[r14+-80],r1
	load	[r1],r1
	store	r1,[r14+-84]
!   if _temp_3107 != start then goto _Label_3106		(int)
	load	[r14+-84],r1
	load	[r14+-140],r2
	cmp	r1,r2
	bne	_Label_3106
!	jmp	_Label_3105
_Label_3105:
! THEN...
	mov	2945,r13		! source line 2945
	mov	"\0\0TN",r10
! ASSIGNMENT STATEMENT...
	mov	2945,r13		! source line 2945
	mov	"\0\0AS",r10
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-156],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3109 = fcb + 16
	load	[r14+-156],r1
	add	r1,16,r1
	store	r1,[r14+-76]
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-156],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3112 = fcb + 16
	load	[r14+-156],r1
	add	r1,16,r1
	store	r1,[r14+-64]
!   Data Move: _temp_3111 = *_temp_3112  (sizeInBytes=4)
	load	[r14+-64],r1
	load	[r1],r1
	store	r1,[r14+-68]
!   _temp_3110 = _temp_3111 + 1		(int)
	load	[r14+-68],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-72]
!   Data Move: *_temp_3109 = _temp_3110  (sizeInBytes=4)
	load	[r14+-72],r1
	load	[r14+-76],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	2946,r13		! source line 2946
	mov	"\0\0SE",r10
!   _temp_3113 = &fileManagerLock
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
	mov	2947,r13		! source line 2947
	mov	"\0\0RE",r10
!   ReturnResult: fcb  (sizeInBytes=4)
	load	[r14+-156],r1
	store	r1,[r14+8]
	add	r15,168,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_3106:
!   Increment the FOR-LOOP index variable and jump back
_Label_3099:
!   i = i + 1
	load	[r14+-136],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-136]
	jmp	_Label_3097
! END FOR
_Label_3100:
! WHILE STATEMENT...
	mov	2952,r13		! source line 2952
	mov	"\0\0WH",r10
_Label_3114:
	mov	2952,r13		! source line 2952
	mov	"\0\0SE",r10
!   _temp_3117 = &fcbFreeList
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
!   if result==true then goto _Label_3115 else goto _Label_3116
	loadb	[r15],r1
	cmp	r1,0
	be	_Label_3116
	jmp	_Label_3115
_Label_3115:
	mov	2952,r13		! source line 2952
	mov	"\0\0WB",r10
! SEND STATEMENT...
	mov	2953,r13		! source line 2953
	mov	"\0\0SE",r10
!   _temp_3118 = &fileManagerLock
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-52]
!   _temp_3119 = &anFCBBecameFree
	load	[r14+8],r1
	add	r1,428,r1
	store	r1,[r14+-48]
!   Prepare Argument: offset=12  value=_temp_3118  sizeInBytes=4
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
	jmp	_Label_3114
_Label_3116:
! ASSIGNMENT STATEMENT...
	mov	2955,r13		! source line 2955
	mov	"\0\0AS",r10
	mov	2955,r13		! source line 2955
	mov	"\0\0SE",r10
!   _temp_3120 = &fcbFreeList
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
	mov	2958,r13		! source line 2958
	mov	"\0\0SE",r10
!   _temp_3121 = &fileManagerLock
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
	mov	2961,r13		! source line 2961
	mov	"\0\0AS",r10
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-156],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3122 = fcb + 20
	load	[r14+-156],r1
	add	r1,20,r1
	store	r1,[r14+-36]
!   Data Move: *_temp_3122 = start  (sizeInBytes=4)
	load	[r14+-140],r1
	load	[r14+-36],r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	2962,r13		! source line 2962
	mov	"\0\0AS",r10
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-156],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3123 = fcb + 24
	load	[r14+-156],r1
	add	r1,24,r1
	store	r1,[r14+-32]
!   Data Move: *_temp_3123 = fileLen  (sizeInBytes=4)
	load	[r14+-148],r1
	load	[r14+-32],r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	2963,r13		! source line 2963
	mov	"\0\0AS",r10
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-156],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3124 = fcb + 16
	load	[r14+-156],r1
	add	r1,16,r1
	store	r1,[r14+-28]
!   Data Move: *_temp_3124 = 1  (sizeInBytes=4)
	mov	1,r1
	load	[r14+-28],r2
	store	r1,[r2]
! IF STATEMENT...
	mov	2964,r13		! source line 2964
	mov	"\0\0IF",r10
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-156],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3129 = fcb + 32
	load	[r14+-156],r1
	add	r1,32,r1
	store	r1,[r14+-20]
!   Data Move: _temp_3128 = *_temp_3129  (sizeInBytes=4)
	load	[r14+-20],r1
	load	[r1],r1
	store	r1,[r14+-24]
!   if _temp_3128 < 0 then goto _Label_3127		(int)
	load	[r14+-24],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bl	_Label_3127
	jmp	_Label_3125
_Label_3127:
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-156],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3130 = fcb + 36
	load	[r14+-156],r1
	add	r1,36,r1
	store	r1,[r14+-16]
!   if boolIsZero (_temp_3130 ) then goto _Label_3126		(int)
	load	[r14+-16],r1
	loadb	[r1],r1
	cmp	r1,r0
	be	_Label_3126
!	jmp	_Label_3125
_Label_3125:
! THEN...
	mov	2965,r13		! source line 2965
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_3131 = _StringConst_156
	set	_StringConst_156,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_3131  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	2965,r13		! source line 2965
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END IF...
_Label_3126:
! RETURN STATEMENT...
	mov	2967,r13		! source line 2967
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
	.word	_Label_3132
	.word	8		! total size of parameters
	.word	164		! frame size = 164
	.word	_Label_3133
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_3134
	.word	12
	.word	4
	.word	_Label_3135
	.word	-12
	.word	4
	.word	_Label_3136
	.word	-16
	.word	4
	.word	_Label_3137
	.word	-20
	.word	4
	.word	_Label_3138
	.word	-24
	.word	4
	.word	_Label_3139
	.word	-28
	.word	4
	.word	_Label_3140
	.word	-32
	.word	4
	.word	_Label_3141
	.word	-36
	.word	4
	.word	_Label_3142
	.word	-40
	.word	4
	.word	_Label_3143
	.word	-44
	.word	4
	.word	_Label_3144
	.word	-48
	.word	4
	.word	_Label_3145
	.word	-52
	.word	4
	.word	_Label_3146
	.word	-56
	.word	4
	.word	_Label_3147
	.word	-60
	.word	4
	.word	_Label_3148
	.word	-64
	.word	4
	.word	_Label_3149
	.word	-68
	.word	4
	.word	_Label_3150
	.word	-72
	.word	4
	.word	_Label_3151
	.word	-76
	.word	4
	.word	_Label_3152
	.word	-80
	.word	4
	.word	_Label_3153
	.word	-84
	.word	4
	.word	_Label_3154
	.word	-88
	.word	4
	.word	_Label_3155
	.word	-92
	.word	4
	.word	_Label_3156
	.word	-96
	.word	4
	.word	_Label_3157
	.word	-100
	.word	4
	.word	_Label_3158
	.word	-104
	.word	4
	.word	_Label_3159
	.word	-108
	.word	4
	.word	_Label_3160
	.word	-112
	.word	4
	.word	_Label_3161
	.word	-116
	.word	4
	.word	_Label_3162
	.word	-120
	.word	4
	.word	_Label_3163
	.word	-124
	.word	4
	.word	_Label_3164
	.word	-128
	.word	4
	.word	_Label_3165
	.word	-132
	.word	4
	.word	_Label_3166
	.word	-136
	.word	4
	.word	_Label_3167
	.word	-140
	.word	4
	.word	_Label_3168
	.word	-144
	.word	4
	.word	_Label_3169
	.word	-148
	.word	4
	.word	_Label_3170
	.word	-152
	.word	4
	.word	_Label_3171
	.word	-156
	.word	4
	.word	_Label_3172
	.word	-160
	.word	4
	.word	0
_Label_3132:
	.ascii	"FileManager"
	.ascii	"::"
	.ascii	"FindFCB\0"
	.align
_Label_3133:
	.ascii	"Pself\0"
	.align
_Label_3134:
	.byte	'P'
	.ascii	"filename\0"
	.align
_Label_3135:
	.byte	'?'
	.ascii	"_temp_3131\0"
	.align
_Label_3136:
	.byte	'?'
	.ascii	"_temp_3130\0"
	.align
_Label_3137:
	.byte	'?'
	.ascii	"_temp_3129\0"
	.align
_Label_3138:
	.byte	'?'
	.ascii	"_temp_3128\0"
	.align
_Label_3139:
	.byte	'?'
	.ascii	"_temp_3124\0"
	.align
_Label_3140:
	.byte	'?'
	.ascii	"_temp_3123\0"
	.align
_Label_3141:
	.byte	'?'
	.ascii	"_temp_3122\0"
	.align
_Label_3142:
	.byte	'?'
	.ascii	"_temp_3121\0"
	.align
_Label_3143:
	.byte	'?'
	.ascii	"_temp_3120\0"
	.align
_Label_3144:
	.byte	'?'
	.ascii	"_temp_3119\0"
	.align
_Label_3145:
	.byte	'?'
	.ascii	"_temp_3118\0"
	.align
_Label_3146:
	.byte	'?'
	.ascii	"_temp_3117\0"
	.align
_Label_3147:
	.byte	'?'
	.ascii	"_temp_3113\0"
	.align
_Label_3148:
	.byte	'?'
	.ascii	"_temp_3112\0"
	.align
_Label_3149:
	.byte	'?'
	.ascii	"_temp_3111\0"
	.align
_Label_3150:
	.byte	'?'
	.ascii	"_temp_3110\0"
	.align
_Label_3151:
	.byte	'?'
	.ascii	"_temp_3109\0"
	.align
_Label_3152:
	.byte	'?'
	.ascii	"_temp_3108\0"
	.align
_Label_3153:
	.byte	'?'
	.ascii	"_temp_3107\0"
	.align
_Label_3154:
	.byte	'?'
	.ascii	"_temp_3104\0"
	.align
_Label_3155:
	.byte	'?'
	.ascii	"_temp_3103\0"
	.align
_Label_3156:
	.byte	'?'
	.ascii	"_temp_3102\0"
	.align
_Label_3157:
	.byte	'?'
	.ascii	"_temp_3101\0"
	.align
_Label_3158:
	.byte	'?'
	.ascii	"_temp_3096\0"
	.align
_Label_3159:
	.byte	'?'
	.ascii	"_temp_3093\0"
	.align
_Label_3160:
	.byte	'?'
	.ascii	"_temp_3092\0"
	.align
_Label_3161:
	.byte	'?'
	.ascii	"_temp_3091\0"
	.align
_Label_3162:
	.byte	'?'
	.ascii	"_temp_3087\0"
	.align
_Label_3163:
	.byte	'?'
	.ascii	"_temp_3086\0"
	.align
_Label_3164:
	.byte	'?'
	.ascii	"_temp_3085\0"
	.align
_Label_3165:
	.byte	'?'
	.ascii	"_temp_3081\0"
	.align
_Label_3166:
	.byte	'I'
	.ascii	"i\0"
	.align
_Label_3167:
	.byte	'I'
	.ascii	"start\0"
	.align
_Label_3168:
	.byte	'I'
	.ascii	"numFiles\0"
	.align
_Label_3169:
	.byte	'I'
	.ascii	"fileLen\0"
	.align
_Label_3170:
	.byte	'I'
	.ascii	"fileNameLen\0"
	.align
_Label_3171:
	.byte	'P'
	.ascii	"fcb\0"
	.align
_Label_3172:
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
_Label_3924:
	push	r0
	sub	r1,1,r1
	bne	_Label_3924
	mov	2980,r13		! source line 2980
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! IF STATEMENT...
	mov	2982,r13		! source line 2982
	mov	"\0\0IF",r10
!   _temp_3175 = &serialTerminalFile
	load	[r14+8],r1
	add	r1,772,r1
	store	r1,[r14+-100]
!   if open != _temp_3175 then goto _Label_3174		(int)
	load	[r14+12],r1
	load	[r14+-100],r2
	cmp	r1,r2
	bne	_Label_3174
!	jmp	_Label_3173
_Label_3173:
! THEN...
	mov	2983,r13		! source line 2983
	mov	"\0\0TN",r10
! RETURN STATEMENT...
	mov	2983,r13		! source line 2983
	mov	"\0\0RE",r10
	add	r15,108,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_3174:
! SEND STATEMENT...
	mov	2985,r13		! source line 2985
	mov	"\0\0SE",r10
!   _temp_3176 = &fileManagerLock
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
	mov	2986,r13		! source line 2986
	mov	"\0\0SE",r10
!   _temp_3177 = &_P_Kernel_fileManager
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
	mov	2987,r13		! source line 2987
	mov	"\0\0AS",r10
!   if intIsZero (open) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3178 = open + 20
	load	[r14+12],r1
	add	r1,20,r1
	store	r1,[r14+-88]
!   Data Move: fcb = *_temp_3178  (sizeInBytes=4)
	load	[r14+-88],r1
	load	[r1],r1
	store	r1,[r14+-104]
! ASSIGNMENT STATEMENT...
	mov	2988,r13		! source line 2988
	mov	"\0\0AS",r10
!   if intIsZero (open) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3179 = open + 24
	load	[r14+12],r1
	add	r1,24,r1
	store	r1,[r14+-84]
!   if intIsZero (open) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3182 = open + 24
	load	[r14+12],r1
	add	r1,24,r1
	store	r1,[r14+-72]
!   Data Move: _temp_3181 = *_temp_3182  (sizeInBytes=4)
	load	[r14+-72],r1
	load	[r1],r1
	store	r1,[r14+-76]
!   _temp_3180 = _temp_3181 - 1		(int)
	load	[r14+-76],r1
	mov	1,r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-80]
!   Data Move: *_temp_3179 = _temp_3180  (sizeInBytes=4)
	load	[r14+-80],r1
	load	[r14+-84],r2
	store	r1,[r2]
! IF STATEMENT...
	mov	2989,r13		! source line 2989
	mov	"\0\0IF",r10
!   if intIsZero (open) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3186 = open + 24
	load	[r14+12],r1
	add	r1,24,r1
	store	r1,[r14+-64]
!   Data Move: _temp_3185 = *_temp_3186  (sizeInBytes=4)
	load	[r14+-64],r1
	load	[r1],r1
	store	r1,[r14+-68]
!   if _temp_3185 > 0 then goto _Label_3184		(int)
	load	[r14+-68],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_3184
!	jmp	_Label_3183
_Label_3183:
! THEN...
	mov	2990,r13		! source line 2990
	mov	"\0\0TN",r10
! SEND STATEMENT...
	mov	2990,r13		! source line 2990
	mov	"\0\0SE",r10
!   _temp_3187 = &openFileFreeList
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
	mov	2991,r13		! source line 2991
	mov	"\0\0SE",r10
!   _temp_3188 = &fileManagerLock
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-56]
!   _temp_3189 = &anOpenFileBecameFree
	load	[r14+8],r1
	add	r1,740,r1
	store	r1,[r14+-52]
!   Prepare Argument: offset=12  value=_temp_3188  sizeInBytes=4
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
	mov	2992,r13		! source line 2992
	mov	"\0\0AS",r10
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-104],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3190 = fcb + 16
	load	[r14+-104],r1
	add	r1,16,r1
	store	r1,[r14+-48]
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-104],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3193 = fcb + 16
	load	[r14+-104],r1
	add	r1,16,r1
	store	r1,[r14+-36]
!   Data Move: _temp_3192 = *_temp_3193  (sizeInBytes=4)
	load	[r14+-36],r1
	load	[r1],r1
	store	r1,[r14+-40]
!   _temp_3191 = _temp_3192 - 1		(int)
	load	[r14+-40],r1
	mov	1,r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-44]
!   Data Move: *_temp_3190 = _temp_3191  (sizeInBytes=4)
	load	[r14+-44],r1
	load	[r14+-48],r2
	store	r1,[r2]
! IF STATEMENT...
	mov	2993,r13		! source line 2993
	mov	"\0\0IF",r10
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-104],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3197 = fcb + 16
	load	[r14+-104],r1
	add	r1,16,r1
	store	r1,[r14+-28]
!   Data Move: _temp_3196 = *_temp_3197  (sizeInBytes=4)
	load	[r14+-28],r1
	load	[r1],r1
	store	r1,[r14+-32]
!   if _temp_3196 > 0 then goto _Label_3195		(int)
	load	[r14+-32],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_3195
!	jmp	_Label_3194
_Label_3194:
! THEN...
	mov	2994,r13		! source line 2994
	mov	"\0\0TN",r10
! SEND STATEMENT...
	mov	2994,r13		! source line 2994
	mov	"\0\0SE",r10
!   _temp_3198 = &fcbFreeList
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
	mov	2995,r13		! source line 2995
	mov	"\0\0SE",r10
!   _temp_3199 = &fileManagerLock
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-20]
!   _temp_3200 = &anFCBBecameFree
	load	[r14+8],r1
	add	r1,428,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=12  value=_temp_3199  sizeInBytes=4
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
_Label_3195:
! END IF...
_Label_3184:
! SEND STATEMENT...
	mov	2998,r13		! source line 2998
	mov	"\0\0SE",r10
!   _temp_3201 = &fileManagerLock
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
	mov	2998,r13		! source line 2998
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
	.word	_Label_3202
	.word	8		! total size of parameters
	.word	104		! frame size = 104
	.word	_Label_3203
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_3204
	.word	12
	.word	4
	.word	_Label_3205
	.word	-12
	.word	4
	.word	_Label_3206
	.word	-16
	.word	4
	.word	_Label_3207
	.word	-20
	.word	4
	.word	_Label_3208
	.word	-24
	.word	4
	.word	_Label_3209
	.word	-28
	.word	4
	.word	_Label_3210
	.word	-32
	.word	4
	.word	_Label_3211
	.word	-36
	.word	4
	.word	_Label_3212
	.word	-40
	.word	4
	.word	_Label_3213
	.word	-44
	.word	4
	.word	_Label_3214
	.word	-48
	.word	4
	.word	_Label_3215
	.word	-52
	.word	4
	.word	_Label_3216
	.word	-56
	.word	4
	.word	_Label_3217
	.word	-60
	.word	4
	.word	_Label_3218
	.word	-64
	.word	4
	.word	_Label_3219
	.word	-68
	.word	4
	.word	_Label_3220
	.word	-72
	.word	4
	.word	_Label_3221
	.word	-76
	.word	4
	.word	_Label_3222
	.word	-80
	.word	4
	.word	_Label_3223
	.word	-84
	.word	4
	.word	_Label_3224
	.word	-88
	.word	4
	.word	_Label_3225
	.word	-92
	.word	4
	.word	_Label_3226
	.word	-96
	.word	4
	.word	_Label_3227
	.word	-100
	.word	4
	.word	_Label_3228
	.word	-104
	.word	4
	.word	0
_Label_3202:
	.ascii	"FileManager"
	.ascii	"::"
	.ascii	"Close\0"
	.align
_Label_3203:
	.ascii	"Pself\0"
	.align
_Label_3204:
	.byte	'P'
	.ascii	"open\0"
	.align
_Label_3205:
	.byte	'?'
	.ascii	"_temp_3201\0"
	.align
_Label_3206:
	.byte	'?'
	.ascii	"_temp_3200\0"
	.align
_Label_3207:
	.byte	'?'
	.ascii	"_temp_3199\0"
	.align
_Label_3208:
	.byte	'?'
	.ascii	"_temp_3198\0"
	.align
_Label_3209:
	.byte	'?'
	.ascii	"_temp_3197\0"
	.align
_Label_3210:
	.byte	'?'
	.ascii	"_temp_3196\0"
	.align
_Label_3211:
	.byte	'?'
	.ascii	"_temp_3193\0"
	.align
_Label_3212:
	.byte	'?'
	.ascii	"_temp_3192\0"
	.align
_Label_3213:
	.byte	'?'
	.ascii	"_temp_3191\0"
	.align
_Label_3214:
	.byte	'?'
	.ascii	"_temp_3190\0"
	.align
_Label_3215:
	.byte	'?'
	.ascii	"_temp_3189\0"
	.align
_Label_3216:
	.byte	'?'
	.ascii	"_temp_3188\0"
	.align
_Label_3217:
	.byte	'?'
	.ascii	"_temp_3187\0"
	.align
_Label_3218:
	.byte	'?'
	.ascii	"_temp_3186\0"
	.align
_Label_3219:
	.byte	'?'
	.ascii	"_temp_3185\0"
	.align
_Label_3220:
	.byte	'?'
	.ascii	"_temp_3182\0"
	.align
_Label_3221:
	.byte	'?'
	.ascii	"_temp_3181\0"
	.align
_Label_3222:
	.byte	'?'
	.ascii	"_temp_3180\0"
	.align
_Label_3223:
	.byte	'?'
	.ascii	"_temp_3179\0"
	.align
_Label_3224:
	.byte	'?'
	.ascii	"_temp_3178\0"
	.align
_Label_3225:
	.byte	'?'
	.ascii	"_temp_3177\0"
	.align
_Label_3226:
	.byte	'?'
	.ascii	"_temp_3176\0"
	.align
_Label_3227:
	.byte	'?'
	.ascii	"_temp_3175\0"
	.align
_Label_3228:
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
_Label_3925:
	push	r0
	sub	r1,1,r1
	bne	_Label_3925
	mov	3003,r13		! source line 3003
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! IF STATEMENT...
	mov	3008,r13		! source line 3008
	mov	"\0\0IF",r10
!   if intIsZero (open) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3232 = open + 20
	load	[r14+12],r1
	add	r1,20,r1
	store	r1,[r14+-104]
!   Data Move: _temp_3231 = *_temp_3232  (sizeInBytes=4)
	load	[r14+-104],r1
	load	[r1],r1
	store	r1,[r14+-108]
!   if intIsZero (_temp_3231) then goto _runtimeErrorNullPointer
	load	[r14+-108],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3233 = _temp_3231 + 36
	load	[r14+-108],r1
	add	r1,36,r1
	store	r1,[r14+-100]
!   if boolIsZero (_temp_3233 ) then goto _Label_3230		(int)
	load	[r14+-100],r1
	loadb	[r1],r1
	cmp	r1,r0
	be	_Label_3230
!	jmp	_Label_3229
_Label_3229:
! THEN...
	mov	3009,r13		! source line 3009
	mov	"\0\0TN",r10
! IF STATEMENT...
	mov	3009,r13		! source line 3009
	mov	"\0\0IF",r10
!   if intIsZero (open) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3238 = open + 20
	load	[r14+12],r1
	add	r1,20,r1
	store	r1,[r14+-88]
!   Data Move: _temp_3237 = *_temp_3238  (sizeInBytes=4)
	load	[r14+-88],r1
	load	[r1],r1
	store	r1,[r14+-92]
!   if intIsZero (_temp_3237) then goto _runtimeErrorNullPointer
	load	[r14+-92],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3239 = _temp_3237 + 32
	load	[r14+-92],r1
	add	r1,32,r1
	store	r1,[r14+-84]
!   Data Move: _temp_3236 = *_temp_3239  (sizeInBytes=4)
	load	[r14+-84],r1
	load	[r1],r1
	store	r1,[r14+-96]
!   if _temp_3236 >= 0 then goto _Label_3235		(int)
	load	[r14+-96],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_3235
!	jmp	_Label_3234
_Label_3234:
! THEN...
	mov	3010,r13		! source line 3010
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_3240 = _StringConst_157
	set	_StringConst_157,r1
	store	r1,[r14+-80]
!   Prepare Argument: offset=8  value=_temp_3240  sizeInBytes=4
	load	[r14+-80],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	3010,r13		! source line 3010
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END IF...
_Label_3235:
! ASSIGNMENT STATEMENT...
	mov	3012,r13		! source line 3012
	mov	"\0\0AS",r10
!   if intIsZero (open) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3242 = open + 20
	load	[r14+12],r1
	add	r1,20,r1
	store	r1,[r14+-72]
!   Data Move: _temp_3241 = *_temp_3242  (sizeInBytes=4)
	load	[r14+-72],r1
	load	[r1],r1
	store	r1,[r14+-76]
!   if intIsZero (_temp_3241) then goto _runtimeErrorNullPointer
	load	[r14+-76],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3243 = _temp_3241 + 36
	load	[r14+-76],r1
	add	r1,36,r1
	store	r1,[r14+-68]
!   Data Move: *_temp_3243 = 0  (sizeInBytes=1)
	mov	0,r1
	load	[r14+-68],r2
	storeb	r1,[r2]
! SEND STATEMENT...
	mov	3013,r13		! source line 3013
	mov	"\0\0SE",r10
!   if intIsZero (open) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3247 = open + 20
	load	[r14+12],r1
	add	r1,20,r1
	store	r1,[r14+-52]
!   Data Move: _temp_3246 = *_temp_3247  (sizeInBytes=4)
	load	[r14+-52],r1
	load	[r1],r1
	store	r1,[r14+-56]
!   if intIsZero (_temp_3246) then goto _runtimeErrorNullPointer
	load	[r14+-56],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3248 = _temp_3246 + 32
	load	[r14+-56],r1
	add	r1,32,r1
	store	r1,[r14+-48]
!   Data Move: _temp_3245 = *_temp_3248  (sizeInBytes=4)
	load	[r14+-48],r1
	load	[r1],r1
	store	r1,[r14+-60]
!   if intIsZero (open) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3251 = open + 20
	load	[r14+12],r1
	add	r1,20,r1
	store	r1,[r14+-36]
!   Data Move: _temp_3250 = *_temp_3251  (sizeInBytes=4)
	load	[r14+-36],r1
	load	[r1],r1
	store	r1,[r14+-40]
!   if intIsZero (_temp_3250) then goto _runtimeErrorNullPointer
	load	[r14+-40],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3252 = _temp_3250 + 20
	load	[r14+-40],r1
	add	r1,20,r1
	store	r1,[r14+-32]
!   Data Move: _temp_3249 = *_temp_3252  (sizeInBytes=4)
	load	[r14+-32],r1
	load	[r1],r1
	store	r1,[r14+-44]
!   _temp_3244 = _temp_3245 + _temp_3249		(int)
	load	[r14+-60],r1
	load	[r14+-44],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-64]
!   if intIsZero (open) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3255 = open + 20
	load	[r14+12],r1
	add	r1,20,r1
	store	r1,[r14+-20]
!   Data Move: _temp_3254 = *_temp_3255  (sizeInBytes=4)
	load	[r14+-20],r1
	load	[r1],r1
	store	r1,[r14+-24]
!   if intIsZero (_temp_3254) then goto _runtimeErrorNullPointer
	load	[r14+-24],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3256 = _temp_3254 + 28
	load	[r14+-24],r1
	add	r1,28,r1
	store	r1,[r14+-16]
!   Data Move: _temp_3253 = *_temp_3256  (sizeInBytes=4)
	load	[r14+-16],r1
	load	[r1],r1
	store	r1,[r14+-28]
!   _temp_3257 = &_P_Kernel_diskDriver
	set	_P_Kernel_diskDriver,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=12  value=_temp_3244  sizeInBytes=4
	load	[r14+-64],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=1  sizeInBytes=4
	mov	1,r1
	store	r1,[r15+8]
!   Prepare Argument: offset=20  value=_temp_3253  sizeInBytes=4
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
_Label_3230:
! RETURN STATEMENT...
	mov	3008,r13		! source line 3008
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
	.word	_Label_3258
	.word	8		! total size of parameters
	.word	116		! frame size = 116
	.word	_Label_3259
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_3260
	.word	12
	.word	4
	.word	_Label_3261
	.word	-12
	.word	4
	.word	_Label_3262
	.word	-16
	.word	4
	.word	_Label_3263
	.word	-20
	.word	4
	.word	_Label_3264
	.word	-24
	.word	4
	.word	_Label_3265
	.word	-28
	.word	4
	.word	_Label_3266
	.word	-32
	.word	4
	.word	_Label_3267
	.word	-36
	.word	4
	.word	_Label_3268
	.word	-40
	.word	4
	.word	_Label_3269
	.word	-44
	.word	4
	.word	_Label_3270
	.word	-48
	.word	4
	.word	_Label_3271
	.word	-52
	.word	4
	.word	_Label_3272
	.word	-56
	.word	4
	.word	_Label_3273
	.word	-60
	.word	4
	.word	_Label_3274
	.word	-64
	.word	4
	.word	_Label_3275
	.word	-68
	.word	4
	.word	_Label_3276
	.word	-72
	.word	4
	.word	_Label_3277
	.word	-76
	.word	4
	.word	_Label_3278
	.word	-80
	.word	4
	.word	_Label_3279
	.word	-84
	.word	4
	.word	_Label_3280
	.word	-88
	.word	4
	.word	_Label_3281
	.word	-92
	.word	4
	.word	_Label_3282
	.word	-96
	.word	4
	.word	_Label_3283
	.word	-100
	.word	4
	.word	_Label_3284
	.word	-104
	.word	4
	.word	_Label_3285
	.word	-108
	.word	4
	.word	0
_Label_3258:
	.ascii	"FileManager"
	.ascii	"::"
	.ascii	"Flush\0"
	.align
_Label_3259:
	.ascii	"Pself\0"
	.align
_Label_3260:
	.byte	'P'
	.ascii	"open\0"
	.align
_Label_3261:
	.byte	'?'
	.ascii	"_temp_3257\0"
	.align
_Label_3262:
	.byte	'?'
	.ascii	"_temp_3256\0"
	.align
_Label_3263:
	.byte	'?'
	.ascii	"_temp_3255\0"
	.align
_Label_3264:
	.byte	'?'
	.ascii	"_temp_3254\0"
	.align
_Label_3265:
	.byte	'?'
	.ascii	"_temp_3253\0"
	.align
_Label_3266:
	.byte	'?'
	.ascii	"_temp_3252\0"
	.align
_Label_3267:
	.byte	'?'
	.ascii	"_temp_3251\0"
	.align
_Label_3268:
	.byte	'?'
	.ascii	"_temp_3250\0"
	.align
_Label_3269:
	.byte	'?'
	.ascii	"_temp_3249\0"
	.align
_Label_3270:
	.byte	'?'
	.ascii	"_temp_3248\0"
	.align
_Label_3271:
	.byte	'?'
	.ascii	"_temp_3247\0"
	.align
_Label_3272:
	.byte	'?'
	.ascii	"_temp_3246\0"
	.align
_Label_3273:
	.byte	'?'
	.ascii	"_temp_3245\0"
	.align
_Label_3274:
	.byte	'?'
	.ascii	"_temp_3244\0"
	.align
_Label_3275:
	.byte	'?'
	.ascii	"_temp_3243\0"
	.align
_Label_3276:
	.byte	'?'
	.ascii	"_temp_3242\0"
	.align
_Label_3277:
	.byte	'?'
	.ascii	"_temp_3241\0"
	.align
_Label_3278:
	.byte	'?'
	.ascii	"_temp_3240\0"
	.align
_Label_3279:
	.byte	'?'
	.ascii	"_temp_3239\0"
	.align
_Label_3280:
	.byte	'?'
	.ascii	"_temp_3238\0"
	.align
_Label_3281:
	.byte	'?'
	.ascii	"_temp_3237\0"
	.align
_Label_3282:
	.byte	'?'
	.ascii	"_temp_3236\0"
	.align
_Label_3283:
	.byte	'?'
	.ascii	"_temp_3233\0"
	.align
_Label_3284:
	.byte	'?'
	.ascii	"_temp_3232\0"
	.align
_Label_3285:
	.byte	'?'
	.ascii	"_temp_3231\0"
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
_Label_3926:
	push	r0
	sub	r1,1,r1
	bne	_Label_3926
	mov	3022,r13		! source line 3022
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! SEND STATEMENT...
	mov	3037,r13		! source line 3037
	mov	"\0\0SE",r10
!   _temp_3286 = &fileManagerLock
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
	mov	3038,r13		! source line 3038
	mov	"\0\0IF",r10
!   if open == 0 then goto _Label_3292		(int)
	load	[r14+12],r1
	mov	0,r2
	cmp	r1,r2
	be	_Label_3292
!   _temp_3291 = 1		(1 byte)
	mov	1,r1
	storeb	r1,[r14+-10]
	jmp	_Label_3293
_Label_3292:
!   _temp_3291 = 0		(1 byte)
	mov	0,r1
	storeb	r1,[r14+-10]
_Label_3293:
!   if _temp_3291 then goto _Label_3290 else goto _Label_3287
	loadb	[r14+-10],r1
	cmp	r1,0
	be	_Label_3287
	jmp	_Label_3290
_Label_3290:
!   if intIsZero (open) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3296 = open + 20
	load	[r14+12],r1
	add	r1,20,r1
	store	r1,[r14+-100]
!   Data Move: _temp_3295 = *_temp_3296  (sizeInBytes=4)
	load	[r14+-100],r1
	load	[r1],r1
	store	r1,[r14+-104]
!   if _temp_3295 == 0 then goto _Label_3297		(int)
	load	[r14+-104],r1
	mov	0,r2
	cmp	r1,r2
	be	_Label_3297
!   _temp_3294 = 1		(1 byte)
	mov	1,r1
	storeb	r1,[r14+-9]
	jmp	_Label_3298
_Label_3297:
!   _temp_3294 = 0		(1 byte)
	mov	0,r1
	storeb	r1,[r14+-9]
_Label_3298:
!   if _temp_3294 then goto _Label_3289 else goto _Label_3287
	loadb	[r14+-9],r1
	cmp	r1,0
	be	_Label_3287
	jmp	_Label_3289
_Label_3289:
!   if intIsZero (open) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3301 = open + 20
	load	[r14+12],r1
	add	r1,20,r1
	store	r1,[r14+-88]
!   Data Move: _temp_3300 = *_temp_3301  (sizeInBytes=4)
	load	[r14+-88],r1
	load	[r1],r1
	store	r1,[r14+-92]
!   if intIsZero (_temp_3300) then goto _runtimeErrorNullPointer
	load	[r14+-92],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3302 = _temp_3300 + 20
	load	[r14+-92],r1
	add	r1,20,r1
	store	r1,[r14+-84]
!   Data Move: _temp_3299 = *_temp_3302  (sizeInBytes=4)
	load	[r14+-84],r1
	load	[r1],r1
	store	r1,[r14+-96]
!   if _temp_3299 >= 0 then goto _Label_3288		(int)
	load	[r14+-96],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_3288
!	jmp	_Label_3287
_Label_3287:
! THEN...
	mov	3039,r13		! source line 3039
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_3303 = _StringConst_158
	set	_StringConst_158,r1
	store	r1,[r14+-80]
!   Prepare Argument: offset=8  value=_temp_3303  sizeInBytes=4
	load	[r14+-80],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	3039,r13		! source line 3039
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END IF...
_Label_3288:
! ASSIGNMENT STATEMENT...
	mov	3041,r13		! source line 3041
	mov	"\0\0AS",r10
!   if intIsZero (open) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3304 = open + 20
	load	[r14+12],r1
	add	r1,20,r1
	store	r1,[r14+-76]
!   Data Move: fcb = *_temp_3304  (sizeInBytes=4)
	load	[r14+-76],r1
	load	[r1],r1
	store	r1,[r14+-128]
! WHILE STATEMENT...
	mov	3042,r13		! source line 3042
	mov	"\0\0WH",r10
_Label_3305:
!   if numBytes <= 0 then goto _Label_3307		(int)
	load	[r14+24],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	ble	_Label_3307
!	jmp	_Label_3306
_Label_3306:
	mov	3042,r13		! source line 3042
	mov	"\0\0WB",r10
! ASSIGNMENT STATEMENT...
	mov	3051,r13		! source line 3051
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
	mov	3052,r13		! source line 3052
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
	mov	3056,r13		! source line 3056
	mov	"\0\0IF",r10
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-128],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3311 = fcb + 32
	load	[r14+-128],r1
	add	r1,32,r1
	store	r1,[r14+-68]
!   Data Move: _temp_3310 = *_temp_3311  (sizeInBytes=4)
	load	[r14+-68],r1
	load	[r1],r1
	store	r1,[r14+-72]
!   if _temp_3310 == sector then goto _Label_3309		(int)
	load	[r14+-72],r1
	load	[r14+-112],r2
	cmp	r1,r2
	be	_Label_3309
!	jmp	_Label_3308
_Label_3308:
! THEN...
	mov	3057,r13		! source line 3057
	mov	"\0\0TN",r10
! SEND STATEMENT...
	mov	3057,r13		! source line 3057
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-64]
!   if intIsZero (_temp_3312) then goto _runtimeErrorNullPointer
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
	mov	3059,r13		! source line 3059
	mov	"\0\0SE",r10
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-128],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3315 = fcb + 20
	load	[r14+-128],r1
	add	r1,20,r1
	store	r1,[r14+-52]
!   Data Move: _temp_3314 = *_temp_3315  (sizeInBytes=4)
	load	[r14+-52],r1
	load	[r1],r1
	store	r1,[r14+-56]
!   _temp_3313 = sector + _temp_3314		(int)
	load	[r14+-112],r1
	load	[r14+-56],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-60]
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-128],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3317 = fcb + 28
	load	[r14+-128],r1
	add	r1,28,r1
	store	r1,[r14+-44]
!   Data Move: _temp_3316 = *_temp_3317  (sizeInBytes=4)
	load	[r14+-44],r1
	load	[r1],r1
	store	r1,[r14+-48]
!   _temp_3318 = &_P_Kernel_diskDriver
	set	_P_Kernel_diskDriver,r1
	store	r1,[r14+-40]
!   Prepare Argument: offset=12  value=_temp_3313  sizeInBytes=4
	load	[r14+-60],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=1  sizeInBytes=4
	mov	1,r1
	store	r1,[r15+8]
!   Prepare Argument: offset=20  value=_temp_3316  sizeInBytes=4
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
	mov	3062,r13		! source line 3062
	mov	"\0\0AS",r10
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-128],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3319 = fcb + 32
	load	[r14+-128],r1
	add	r1,32,r1
	store	r1,[r14+-36]
!   Data Move: *_temp_3319 = sector  (sizeInBytes=4)
	load	[r14+-112],r1
	load	[r14+-36],r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	3063,r13		! source line 3063
	mov	"\0\0AS",r10
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-128],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3320 = fcb + 36
	load	[r14+-128],r1
	add	r1,36,r1
	store	r1,[r14+-32]
!   Data Move: *_temp_3320 = 0  (sizeInBytes=1)
	mov	0,r1
	load	[r14+-32],r2
	storeb	r1,[r2]
! END IF...
_Label_3309:
! ASSIGNMENT STATEMENT...
	mov	3065,r13		! source line 3065
	mov	"\0\0AS",r10
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-128],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3322 = fcb + 28
	load	[r14+-128],r1
	add	r1,28,r1
	store	r1,[r14+-24]
!   Data Move: _temp_3321 = *_temp_3322  (sizeInBytes=4)
	load	[r14+-24],r1
	load	[r1],r1
	store	r1,[r14+-28]
!   posInBuffer = _temp_3321 + offset		(int)
	load	[r14+-28],r1
	load	[r14+-116],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-120]
! ASSIGNMENT STATEMENT...
	mov	3066,r13		! source line 3066
	mov	"\0\0AS",r10
!   _temp_3323 = 8192 - offset		(int)
	mov	8192,r1
	load	[r14+-116],r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=numBytes  sizeInBytes=4
	load	[r14+24],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=_temp_3323  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+4]
!   Call the function
	mov	3066,r13		! source line 3066
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
	mov	3070,r13		! source line 3070
	mov	"\0\0CE",r10
	call	MemoryCopy
! ASSIGNMENT STATEMENT...
	mov	3071,r13		! source line 3071
	mov	"\0\0AS",r10
!   targetAddr = targetAddr + bytesToMove		(int)
	load	[r14+16],r1
	load	[r14+-124],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+16]
! ASSIGNMENT STATEMENT...
	mov	3072,r13		! source line 3072
	mov	"\0\0AS",r10
!   bytePos = bytePos + bytesToMove		(int)
	load	[r14+20],r1
	load	[r14+-124],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+20]
! ASSIGNMENT STATEMENT...
	mov	3073,r13		! source line 3073
	mov	"\0\0AS",r10
!   numBytes = numBytes - bytesToMove		(int)
	load	[r14+24],r1
	load	[r14+-124],r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+24]
! END WHILE...
	jmp	_Label_3305
_Label_3307:
! SEND STATEMENT...
	mov	3080,r13		! source line 3080
	mov	"\0\0SE",r10
!   _temp_3324 = &fileManagerLock
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
	mov	3081,r13		! source line 3081
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
	.word	_Label_3325
	.word	20		! total size of parameters
	.word	136		! frame size = 136
	.word	_Label_3326
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_3327
	.word	12
	.word	4
	.word	_Label_3328
	.word	16
	.word	4
	.word	_Label_3329
	.word	20
	.word	4
	.word	_Label_3330
	.word	24
	.word	4
	.word	_Label_3331
	.word	-16
	.word	4
	.word	_Label_3332
	.word	-20
	.word	4
	.word	_Label_3333
	.word	-24
	.word	4
	.word	_Label_3334
	.word	-28
	.word	4
	.word	_Label_3335
	.word	-32
	.word	4
	.word	_Label_3336
	.word	-36
	.word	4
	.word	_Label_3337
	.word	-40
	.word	4
	.word	_Label_3338
	.word	-44
	.word	4
	.word	_Label_3339
	.word	-48
	.word	4
	.word	_Label_3340
	.word	-52
	.word	4
	.word	_Label_3341
	.word	-56
	.word	4
	.word	_Label_3342
	.word	-60
	.word	4
	.word	_Label_3343
	.word	-64
	.word	4
	.word	_Label_3344
	.word	-68
	.word	4
	.word	_Label_3345
	.word	-72
	.word	4
	.word	_Label_3346
	.word	-76
	.word	4
	.word	_Label_3347
	.word	-80
	.word	4
	.word	_Label_3348
	.word	-84
	.word	4
	.word	_Label_3349
	.word	-88
	.word	4
	.word	_Label_3350
	.word	-92
	.word	4
	.word	_Label_3351
	.word	-96
	.word	4
	.word	_Label_3352
	.word	-100
	.word	4
	.word	_Label_3353
	.word	-104
	.word	4
	.word	_Label_3354
	.word	-9
	.word	1
	.word	_Label_3355
	.word	-10
	.word	1
	.word	_Label_3356
	.word	-108
	.word	4
	.word	_Label_3357
	.word	-112
	.word	4
	.word	_Label_3358
	.word	-116
	.word	4
	.word	_Label_3359
	.word	-120
	.word	4
	.word	_Label_3360
	.word	-124
	.word	4
	.word	_Label_3361
	.word	-128
	.word	4
	.word	0
_Label_3325:
	.ascii	"FileManager"
	.ascii	"::"
	.ascii	"SynchRead\0"
	.align
_Label_3326:
	.ascii	"Pself\0"
	.align
_Label_3327:
	.byte	'P'
	.ascii	"open\0"
	.align
_Label_3328:
	.byte	'I'
	.ascii	"targetAddr\0"
	.align
_Label_3329:
	.byte	'I'
	.ascii	"bytePos\0"
	.align
_Label_3330:
	.byte	'I'
	.ascii	"numBytes\0"
	.align
_Label_3331:
	.byte	'?'
	.ascii	"_temp_3324\0"
	.align
_Label_3332:
	.byte	'?'
	.ascii	"_temp_3323\0"
	.align
_Label_3333:
	.byte	'?'
	.ascii	"_temp_3322\0"
	.align
_Label_3334:
	.byte	'?'
	.ascii	"_temp_3321\0"
	.align
_Label_3335:
	.byte	'?'
	.ascii	"_temp_3320\0"
	.align
_Label_3336:
	.byte	'?'
	.ascii	"_temp_3319\0"
	.align
_Label_3337:
	.byte	'?'
	.ascii	"_temp_3318\0"
	.align
_Label_3338:
	.byte	'?'
	.ascii	"_temp_3317\0"
	.align
_Label_3339:
	.byte	'?'
	.ascii	"_temp_3316\0"
	.align
_Label_3340:
	.byte	'?'
	.ascii	"_temp_3315\0"
	.align
_Label_3341:
	.byte	'?'
	.ascii	"_temp_3314\0"
	.align
_Label_3342:
	.byte	'?'
	.ascii	"_temp_3313\0"
	.align
_Label_3343:
	.byte	'?'
	.ascii	"_temp_3312\0"
	.align
_Label_3344:
	.byte	'?'
	.ascii	"_temp_3311\0"
	.align
_Label_3345:
	.byte	'?'
	.ascii	"_temp_3310\0"
	.align
_Label_3346:
	.byte	'?'
	.ascii	"_temp_3304\0"
	.align
_Label_3347:
	.byte	'?'
	.ascii	"_temp_3303\0"
	.align
_Label_3348:
	.byte	'?'
	.ascii	"_temp_3302\0"
	.align
_Label_3349:
	.byte	'?'
	.ascii	"_temp_3301\0"
	.align
_Label_3350:
	.byte	'?'
	.ascii	"_temp_3300\0"
	.align
_Label_3351:
	.byte	'?'
	.ascii	"_temp_3299\0"
	.align
_Label_3352:
	.byte	'?'
	.ascii	"_temp_3296\0"
	.align
_Label_3353:
	.byte	'?'
	.ascii	"_temp_3295\0"
	.align
_Label_3354:
	.byte	'C'
	.ascii	"_temp_3294\0"
	.align
_Label_3355:
	.byte	'C'
	.ascii	"_temp_3291\0"
	.align
_Label_3356:
	.byte	'?'
	.ascii	"_temp_3286\0"
	.align
_Label_3357:
	.byte	'I'
	.ascii	"sector\0"
	.align
_Label_3358:
	.byte	'I'
	.ascii	"offset\0"
	.align
_Label_3359:
	.byte	'I'
	.ascii	"posInBuffer\0"
	.align
_Label_3360:
	.byte	'I'
	.ascii	"bytesToMove\0"
	.align
_Label_3361:
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
_Label_3927:
	push	r0
	sub	r1,1,r1
	bne	_Label_3927
	mov	3086,r13		! source line 3086
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! SEND STATEMENT...
	mov	3102,r13		! source line 3102
	mov	"\0\0SE",r10
!   _temp_3362 = &fileManagerLock
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
	mov	3103,r13		! source line 3103
	mov	"\0\0IF",r10
!   if open == 0 then goto _Label_3368		(int)
	load	[r14+12],r1
	mov	0,r2
	cmp	r1,r2
	be	_Label_3368
!   _temp_3367 = 1		(1 byte)
	mov	1,r1
	storeb	r1,[r14+-10]
	jmp	_Label_3369
_Label_3368:
!   _temp_3367 = 0		(1 byte)
	mov	0,r1
	storeb	r1,[r14+-10]
_Label_3369:
!   if _temp_3367 then goto _Label_3366 else goto _Label_3363
	loadb	[r14+-10],r1
	cmp	r1,0
	be	_Label_3363
	jmp	_Label_3366
_Label_3366:
!   if intIsZero (open) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3372 = open + 20
	load	[r14+12],r1
	add	r1,20,r1
	store	r1,[r14+-108]
!   Data Move: _temp_3371 = *_temp_3372  (sizeInBytes=4)
	load	[r14+-108],r1
	load	[r1],r1
	store	r1,[r14+-112]
!   if _temp_3371 == 0 then goto _Label_3373		(int)
	load	[r14+-112],r1
	mov	0,r2
	cmp	r1,r2
	be	_Label_3373
!   _temp_3370 = 1		(1 byte)
	mov	1,r1
	storeb	r1,[r14+-9]
	jmp	_Label_3374
_Label_3373:
!   _temp_3370 = 0		(1 byte)
	mov	0,r1
	storeb	r1,[r14+-9]
_Label_3374:
!   if _temp_3370 then goto _Label_3365 else goto _Label_3363
	loadb	[r14+-9],r1
	cmp	r1,0
	be	_Label_3363
	jmp	_Label_3365
_Label_3365:
!   if intIsZero (open) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3377 = open + 20
	load	[r14+12],r1
	add	r1,20,r1
	store	r1,[r14+-96]
!   Data Move: _temp_3376 = *_temp_3377  (sizeInBytes=4)
	load	[r14+-96],r1
	load	[r1],r1
	store	r1,[r14+-100]
!   if intIsZero (_temp_3376) then goto _runtimeErrorNullPointer
	load	[r14+-100],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3378 = _temp_3376 + 20
	load	[r14+-100],r1
	add	r1,20,r1
	store	r1,[r14+-92]
!   Data Move: _temp_3375 = *_temp_3378  (sizeInBytes=4)
	load	[r14+-92],r1
	load	[r1],r1
	store	r1,[r14+-104]
!   if _temp_3375 >= 0 then goto _Label_3364		(int)
	load	[r14+-104],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_3364
!	jmp	_Label_3363
_Label_3363:
! THEN...
	mov	3104,r13		! source line 3104
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_3379 = _StringConst_159
	set	_StringConst_159,r1
	store	r1,[r14+-88]
!   Prepare Argument: offset=8  value=_temp_3379  sizeInBytes=4
	load	[r14+-88],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	3104,r13		! source line 3104
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END IF...
_Label_3364:
! ASSIGNMENT STATEMENT...
	mov	3106,r13		! source line 3106
	mov	"\0\0AS",r10
!   if intIsZero (open) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3380 = open + 20
	load	[r14+12],r1
	add	r1,20,r1
	store	r1,[r14+-84]
!   Data Move: fcb = *_temp_3380  (sizeInBytes=4)
	load	[r14+-84],r1
	load	[r1],r1
	store	r1,[r14+-136]
! WHILE STATEMENT...
	mov	3107,r13		! source line 3107
	mov	"\0\0WH",r10
_Label_3381:
!   if numBytes <= 0 then goto _Label_3383		(int)
	load	[r14+24],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	ble	_Label_3383
!	jmp	_Label_3382
_Label_3382:
	mov	3107,r13		! source line 3107
	mov	"\0\0WB",r10
! ASSIGNMENT STATEMENT...
	mov	3116,r13		! source line 3116
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
	mov	3117,r13		! source line 3117
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
	mov	3121,r13		! source line 3121
	mov	"\0\0IF",r10
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-136],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3387 = fcb + 32
	load	[r14+-136],r1
	add	r1,32,r1
	store	r1,[r14+-76]
!   Data Move: _temp_3386 = *_temp_3387  (sizeInBytes=4)
	load	[r14+-76],r1
	load	[r1],r1
	store	r1,[r14+-80]
!   if _temp_3386 == sector then goto _Label_3385		(int)
	load	[r14+-80],r1
	load	[r14+-120],r2
	cmp	r1,r2
	be	_Label_3385
!	jmp	_Label_3384
_Label_3384:
! THEN...
	mov	3123,r13		! source line 3123
	mov	"\0\0TN",r10
! SEND STATEMENT...
	mov	3123,r13		! source line 3123
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-72]
!   if intIsZero (_temp_3388) then goto _runtimeErrorNullPointer
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
_Label_3385:
! ASSIGNMENT STATEMENT...
	mov	3125,r13		! source line 3125
	mov	"\0\0AS",r10
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-136],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3390 = fcb + 28
	load	[r14+-136],r1
	add	r1,28,r1
	store	r1,[r14+-64]
!   Data Move: _temp_3389 = *_temp_3390  (sizeInBytes=4)
	load	[r14+-64],r1
	load	[r1],r1
	store	r1,[r14+-68]
!   posInBuffer = _temp_3389 + offset		(int)
	load	[r14+-68],r1
	load	[r14+-124],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-128]
! ASSIGNMENT STATEMENT...
	mov	3126,r13		! source line 3126
	mov	"\0\0AS",r10
!   _temp_3391 = 8192 - offset		(int)
	mov	8192,r1
	load	[r14+-124],r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-60]
!   Prepare Argument: offset=8  value=numBytes  sizeInBytes=4
	load	[r14+24],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=_temp_3391  sizeInBytes=4
	load	[r14+-60],r1
	store	r1,[r15+4]
!   Call the function
	mov	3126,r13		! source line 3126
	mov	"\0\0CA",r10
	call	_P_System_Min
!   Retrieve Result: targetName=bytesToMove  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-132]
! IF STATEMENT...
	mov	3127,r13		! source line 3127
	mov	"\0\0IF",r10
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-136],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3395 = fcb + 32
	load	[r14+-136],r1
	add	r1,32,r1
	store	r1,[r14+-52]
!   Data Move: _temp_3394 = *_temp_3395  (sizeInBytes=4)
	load	[r14+-52],r1
	load	[r1],r1
	store	r1,[r14+-56]
!   if _temp_3394 != sector then goto _Label_3393		(int)
	load	[r14+-56],r1
	load	[r14+-120],r2
	cmp	r1,r2
	bne	_Label_3393
!	jmp	_Label_3392
_Label_3392:
	jmp	_Label_3396
_Label_3393:
! ELSE...
	mov	3129,r13		! source line 3129
	mov	"\0\0EL",r10
! IF STATEMENT...
	mov	3129,r13		! source line 3129
	mov	"\0\0IF",r10
!   if intIsZero (offset) then goto _Label_3399
	load	[r14+-124],r1
	cmp	r1,r0
	be	_Label_3399
	jmp	_Label_3398
_Label_3399:
!   if bytesToMove != 8192 then goto _Label_3398		(int)
	load	[r14+-132],r1
	mov	8192,r2
	cmp	r1,r2
	bne	_Label_3398
!	jmp	_Label_3397
_Label_3397:
	jmp	_Label_3400
_Label_3398:
! ELSE...
	mov	3133,r13		! source line 3133
	mov	"\0\0EL",r10
! SEND STATEMENT...
	mov	3133,r13		! source line 3133
	mov	"\0\0SE",r10
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-136],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3403 = fcb + 20
	load	[r14+-136],r1
	add	r1,20,r1
	store	r1,[r14+-40]
!   Data Move: _temp_3402 = *_temp_3403  (sizeInBytes=4)
	load	[r14+-40],r1
	load	[r1],r1
	store	r1,[r14+-44]
!   _temp_3401 = sector + _temp_3402		(int)
	load	[r14+-120],r1
	load	[r14+-44],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-48]
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-136],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3405 = fcb + 28
	load	[r14+-136],r1
	add	r1,28,r1
	store	r1,[r14+-32]
!   Data Move: _temp_3404 = *_temp_3405  (sizeInBytes=4)
	load	[r14+-32],r1
	load	[r1],r1
	store	r1,[r14+-36]
!   _temp_3406 = &_P_Kernel_diskDriver
	set	_P_Kernel_diskDriver,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=12  value=_temp_3401  sizeInBytes=4
	load	[r14+-48],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=1  sizeInBytes=4
	mov	1,r1
	store	r1,[r15+8]
!   Prepare Argument: offset=20  value=_temp_3404  sizeInBytes=4
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
_Label_3400:
! END IF...
_Label_3396:
! ASSIGNMENT STATEMENT...
	mov	3137,r13		! source line 3137
	mov	"\0\0AS",r10
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-136],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3407 = fcb + 32
	load	[r14+-136],r1
	add	r1,32,r1
	store	r1,[r14+-24]
!   Data Move: *_temp_3407 = sector  (sizeInBytes=4)
	load	[r14+-120],r1
	load	[r14+-24],r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	3138,r13		! source line 3138
	mov	"\0\0AS",r10
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-136],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3408 = fcb + 36
	load	[r14+-136],r1
	add	r1,36,r1
	store	r1,[r14+-20]
!   Data Move: *_temp_3408 = 1  (sizeInBytes=1)
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
	mov	3142,r13		! source line 3142
	mov	"\0\0CE",r10
	call	MemoryCopy
! ASSIGNMENT STATEMENT...
	mov	3143,r13		! source line 3143
	mov	"\0\0AS",r10
!   sourceAddr = sourceAddr + bytesToMove		(int)
	load	[r14+16],r1
	load	[r14+-132],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+16]
! ASSIGNMENT STATEMENT...
	mov	3144,r13		! source line 3144
	mov	"\0\0AS",r10
!   bytePos = bytePos + bytesToMove		(int)
	load	[r14+20],r1
	load	[r14+-132],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+20]
! ASSIGNMENT STATEMENT...
	mov	3145,r13		! source line 3145
	mov	"\0\0AS",r10
!   numBytes = numBytes - bytesToMove		(int)
	load	[r14+24],r1
	load	[r14+-132],r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+24]
! END WHILE...
	jmp	_Label_3381
_Label_3383:
! SEND STATEMENT...
	mov	3152,r13		! source line 3152
	mov	"\0\0SE",r10
!   _temp_3409 = &fileManagerLock
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
	mov	3154,r13		! source line 3154
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
	.word	_Label_3410
	.word	20		! total size of parameters
	.word	144		! frame size = 144
	.word	_Label_3411
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_3412
	.word	12
	.word	4
	.word	_Label_3413
	.word	16
	.word	4
	.word	_Label_3414
	.word	20
	.word	4
	.word	_Label_3415
	.word	24
	.word	4
	.word	_Label_3416
	.word	-16
	.word	4
	.word	_Label_3417
	.word	-20
	.word	4
	.word	_Label_3418
	.word	-24
	.word	4
	.word	_Label_3419
	.word	-28
	.word	4
	.word	_Label_3420
	.word	-32
	.word	4
	.word	_Label_3421
	.word	-36
	.word	4
	.word	_Label_3422
	.word	-40
	.word	4
	.word	_Label_3423
	.word	-44
	.word	4
	.word	_Label_3424
	.word	-48
	.word	4
	.word	_Label_3425
	.word	-52
	.word	4
	.word	_Label_3426
	.word	-56
	.word	4
	.word	_Label_3427
	.word	-60
	.word	4
	.word	_Label_3428
	.word	-64
	.word	4
	.word	_Label_3429
	.word	-68
	.word	4
	.word	_Label_3430
	.word	-72
	.word	4
	.word	_Label_3431
	.word	-76
	.word	4
	.word	_Label_3432
	.word	-80
	.word	4
	.word	_Label_3433
	.word	-84
	.word	4
	.word	_Label_3434
	.word	-88
	.word	4
	.word	_Label_3435
	.word	-92
	.word	4
	.word	_Label_3436
	.word	-96
	.word	4
	.word	_Label_3437
	.word	-100
	.word	4
	.word	_Label_3438
	.word	-104
	.word	4
	.word	_Label_3439
	.word	-108
	.word	4
	.word	_Label_3440
	.word	-112
	.word	4
	.word	_Label_3441
	.word	-9
	.word	1
	.word	_Label_3442
	.word	-10
	.word	1
	.word	_Label_3443
	.word	-116
	.word	4
	.word	_Label_3444
	.word	-120
	.word	4
	.word	_Label_3445
	.word	-124
	.word	4
	.word	_Label_3446
	.word	-128
	.word	4
	.word	_Label_3447
	.word	-132
	.word	4
	.word	_Label_3448
	.word	-136
	.word	4
	.word	0
_Label_3410:
	.ascii	"FileManager"
	.ascii	"::"
	.ascii	"SynchWrite\0"
	.align
_Label_3411:
	.ascii	"Pself\0"
	.align
_Label_3412:
	.byte	'P'
	.ascii	"open\0"
	.align
_Label_3413:
	.byte	'I'
	.ascii	"sourceAddr\0"
	.align
_Label_3414:
	.byte	'I'
	.ascii	"bytePos\0"
	.align
_Label_3415:
	.byte	'I'
	.ascii	"numBytes\0"
	.align
_Label_3416:
	.byte	'?'
	.ascii	"_temp_3409\0"
	.align
_Label_3417:
	.byte	'?'
	.ascii	"_temp_3408\0"
	.align
_Label_3418:
	.byte	'?'
	.ascii	"_temp_3407\0"
	.align
_Label_3419:
	.byte	'?'
	.ascii	"_temp_3406\0"
	.align
_Label_3420:
	.byte	'?'
	.ascii	"_temp_3405\0"
	.align
_Label_3421:
	.byte	'?'
	.ascii	"_temp_3404\0"
	.align
_Label_3422:
	.byte	'?'
	.ascii	"_temp_3403\0"
	.align
_Label_3423:
	.byte	'?'
	.ascii	"_temp_3402\0"
	.align
_Label_3424:
	.byte	'?'
	.ascii	"_temp_3401\0"
	.align
_Label_3425:
	.byte	'?'
	.ascii	"_temp_3395\0"
	.align
_Label_3426:
	.byte	'?'
	.ascii	"_temp_3394\0"
	.align
_Label_3427:
	.byte	'?'
	.ascii	"_temp_3391\0"
	.align
_Label_3428:
	.byte	'?'
	.ascii	"_temp_3390\0"
	.align
_Label_3429:
	.byte	'?'
	.ascii	"_temp_3389\0"
	.align
_Label_3430:
	.byte	'?'
	.ascii	"_temp_3388\0"
	.align
_Label_3431:
	.byte	'?'
	.ascii	"_temp_3387\0"
	.align
_Label_3432:
	.byte	'?'
	.ascii	"_temp_3386\0"
	.align
_Label_3433:
	.byte	'?'
	.ascii	"_temp_3380\0"
	.align
_Label_3434:
	.byte	'?'
	.ascii	"_temp_3379\0"
	.align
_Label_3435:
	.byte	'?'
	.ascii	"_temp_3378\0"
	.align
_Label_3436:
	.byte	'?'
	.ascii	"_temp_3377\0"
	.align
_Label_3437:
	.byte	'?'
	.ascii	"_temp_3376\0"
	.align
_Label_3438:
	.byte	'?'
	.ascii	"_temp_3375\0"
	.align
_Label_3439:
	.byte	'?'
	.ascii	"_temp_3372\0"
	.align
_Label_3440:
	.byte	'?'
	.ascii	"_temp_3371\0"
	.align
_Label_3441:
	.byte	'C'
	.ascii	"_temp_3370\0"
	.align
_Label_3442:
	.byte	'C'
	.ascii	"_temp_3367\0"
	.align
_Label_3443:
	.byte	'?'
	.ascii	"_temp_3362\0"
	.align
_Label_3444:
	.byte	'I'
	.ascii	"sector\0"
	.align
_Label_3445:
	.byte	'I'
	.ascii	"offset\0"
	.align
_Label_3446:
	.byte	'I'
	.ascii	"posInBuffer\0"
	.align
_Label_3447:
	.byte	'I'
	.ascii	"bytesToMove\0"
	.align
_Label_3448:
	.byte	'P'
	.ascii	"fcb\0"
	.align
! 
! ===============  CLASS FileControlBlock  ===============
! 
! Dispatch Table:
! 
_P_Kernel_FileControlBlock:
	.word	_Label_3449
	jmp	_Method_P_Kernel_FileControlBlock_1	! 4:	Init
	jmp	_Method_P_Kernel_FileControlBlock_2	! 8:	Print
	.word	0
! 
! Class descriptor:
! 
_Label_3449:
	.word	1129070931		! Magic number 0x434c4153 == 'CLAS'
	.word	_Label_3450
	.word	_sourceFileName
	.word	361		! line number
	.word	40		! size of instances, in bytes
	.word	_P_Kernel_FileControlBlock
	.word	_P_List_Listable
	.word	_P_System_Object
	.word	0
_Label_3450:
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
_Label_3928:
	push	r0
	sub	r1,1,r1
	bne	_Label_3928
	mov	3190,r13		! source line 3190
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	3191,r13		! source line 3191
	mov	"\0\0AS",r10
!   numberOfUsers = 0		(4 bytes)
	mov	0,r1
	load	[r14+8],r2
	store	r1,[r2+16]
! ASSIGNMENT STATEMENT...
	mov	3192,r13		! source line 3192
	mov	"\0\0AS",r10
	mov	3192,r13		! source line 3192
	mov	"\0\0SE",r10
!   _temp_3451 = &_P_Kernel_frameManager
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
	mov	3193,r13		! source line 3193
	mov	"\0\0AS",r10
!   relativeSectorInBuffer = -1		(4 bytes)
	mov	-1,r1
	load	[r14+8],r2
	store	r1,[r2+32]
! ASSIGNMENT STATEMENT...
	mov	3194,r13		! source line 3194
	mov	"\0\0AS",r10
!   bufferIsDirty = 0		(1 byte)
	mov	0,r1
	load	[r14+8],r2
	storeb	r1,[r2+36]
! ASSIGNMENT STATEMENT...
	mov	3195,r13		! source line 3195
	mov	"\0\0AS",r10
!   startingSectorOfFile = -1		(4 bytes)
	mov	-1,r1
	load	[r14+8],r2
	store	r1,[r2+20]
! RETURN STATEMENT...
	mov	3195,r13		! source line 3195
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
	.word	_Label_3452
	.word	4		! total size of parameters
	.word	8		! frame size = 8
	.word	_Label_3453
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_3454
	.word	-12
	.word	4
	.word	0
_Label_3452:
	.ascii	"FileControlBlock"
	.ascii	"::"
	.ascii	"Init\0"
	.align
_Label_3453:
	.ascii	"Pself\0"
	.align
_Label_3454:
	.byte	'?'
	.ascii	"_temp_3451\0"
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
_Label_3929:
	push	r0
	sub	r1,1,r1
	bne	_Label_3929
	mov	3200,r13		! source line 3200
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   _temp_3455 = _StringConst_160
	set	_StringConst_160,r1
	store	r1,[r14+-32]
!   Prepare Argument: offset=8  value=_temp_3455  sizeInBytes=4
	load	[r14+-32],r1
	store	r1,[r15+0]
!   Call the function
	mov	3201,r13		! source line 3201
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=fcbID  sizeInBytes=4
	load	[r14+8],r1
	load	[r1+12],r1
	store	r1,[r15+0]
!   Call the function
	mov	3202,r13		! source line 3202
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   _temp_3456 = _StringConst_161
	set	_StringConst_161,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=8  value=_temp_3456  sizeInBytes=4
	load	[r14+-28],r1
	store	r1,[r15+0]
!   Call the function
	mov	3203,r13		! source line 3203
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=numberOfUsers  sizeInBytes=4
	load	[r14+8],r1
	load	[r1+16],r1
	store	r1,[r15+0]
!   Call the function
	mov	3204,r13		! source line 3204
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   _temp_3457 = _StringConst_162
	set	_StringConst_162,r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=8  value=_temp_3457  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+0]
!   Call the function
	mov	3205,r13		! source line 3205
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=startingSectorOfFile  sizeInBytes=4
	load	[r14+8],r1
	load	[r1+20],r1
	store	r1,[r15+0]
!   Call the function
	mov	3206,r13		! source line 3206
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   _temp_3458 = _StringConst_163
	set	_StringConst_163,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_3458  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   Call the function
	mov	3207,r13		! source line 3207
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=sizeOfFileInBytes  sizeInBytes=4
	load	[r14+8],r1
	load	[r1+24],r1
	store	r1,[r15+0]
!   Call the function
	mov	3208,r13		! source line 3208
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   _temp_3459 = _StringConst_164
	set	_StringConst_164,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_3459  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+0]
!   Call the function
	mov	3209,r13		! source line 3209
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=bufferPtr  sizeInBytes=4
	load	[r14+8],r1
	load	[r1+28],r1
	store	r1,[r15+0]
!   Call the function
	mov	3210,r13		! source line 3210
	mov	"\0\0CE",r10
	call	printHex
! CALL STATEMENT...
!   _temp_3460 = _StringConst_165
	set	_StringConst_165,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_3460  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	3211,r13		! source line 3211
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=relativeSectorInBuffer  sizeInBytes=4
	load	[r14+8],r1
	load	[r1+32],r1
	store	r1,[r15+0]
!   Call the function
	mov	3212,r13		! source line 3212
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   Call the function
	mov	3213,r13		! source line 3213
	mov	"\0\0CA",r10
	call	_P_System_nl
! RETURN STATEMENT...
	mov	3213,r13		! source line 3213
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
	.word	_Label_3461
	.word	4		! total size of parameters
	.word	28		! frame size = 28
	.word	_Label_3462
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_3463
	.word	-12
	.word	4
	.word	_Label_3464
	.word	-16
	.word	4
	.word	_Label_3465
	.word	-20
	.word	4
	.word	_Label_3466
	.word	-24
	.word	4
	.word	_Label_3467
	.word	-28
	.word	4
	.word	_Label_3468
	.word	-32
	.word	4
	.word	0
_Label_3461:
	.ascii	"FileControlBlock"
	.ascii	"::"
	.ascii	"Print\0"
	.align
_Label_3462:
	.ascii	"Pself\0"
	.align
_Label_3463:
	.byte	'?'
	.ascii	"_temp_3460\0"
	.align
_Label_3464:
	.byte	'?'
	.ascii	"_temp_3459\0"
	.align
_Label_3465:
	.byte	'?'
	.ascii	"_temp_3458\0"
	.align
_Label_3466:
	.byte	'?'
	.ascii	"_temp_3457\0"
	.align
_Label_3467:
	.byte	'?'
	.ascii	"_temp_3456\0"
	.align
_Label_3468:
	.byte	'?'
	.ascii	"_temp_3455\0"
	.align
! 
! ===============  CLASS OpenFile  ===============
! 
! Dispatch Table:
! 
_P_Kernel_OpenFile:
	.word	_Label_3469
	jmp	_Method_P_Kernel_OpenFile_1	! 4:	Print
	jmp	_Method_P_Kernel_OpenFile_2	! 8:	ReadBytes
	jmp	_Method_P_Kernel_OpenFile_3	! 12:	ReadInt
	jmp	_Method_P_Kernel_OpenFile_4	! 16:	LoadExecutable
	.word	0
! 
! Class descriptor:
! 
_Label_3469:
	.word	1129070931		! Magic number 0x434c4153 == 'CLAS'
	.word	_Label_3470
	.word	_sourceFileName
	.word	378		! line number
	.word	28		! size of instances, in bytes
	.word	_P_Kernel_OpenFile
	.word	_P_List_Listable
	.word	_P_System_Object
	.word	0
_Label_3470:
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
_Label_3930:
	push	r0
	sub	r1,1,r1
	bne	_Label_3930
	mov	3224,r13		! source line 3224
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   _temp_3471 = _StringConst_166
	set	_StringConst_166,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_3471  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   Call the function
	mov	3225,r13		! source line 3225
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=currentPos  sizeInBytes=4
	load	[r14+8],r1
	load	[r1+16],r1
	store	r1,[r15+0]
!   Call the function
	mov	3226,r13		! source line 3226
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   _temp_3472 = _StringConst_167
	set	_StringConst_167,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_3472  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+0]
!   Call the function
	mov	3227,r13		! source line 3227
	mov	"\0\0CE",r10
	call	print
! IF STATEMENT...
	mov	3228,r13		! source line 3228
	mov	"\0\0IF",r10
!   if fcb == 0 then goto _Label_3474		(int)
	load	[r14+8],r1
	load	[r1+20],r1
	mov	0,r2
	cmp	r1,r2
	be	_Label_3474
!	jmp	_Label_3473
_Label_3473:
! THEN...
	mov	3229,r13		! source line 3229
	mov	"\0\0TN",r10
! SEND STATEMENT...
	mov	3229,r13		! source line 3229
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
	jmp	_Label_3475
_Label_3474:
! ELSE...
	mov	3231,r13		! source line 3231
	mov	"\0\0EL",r10
! CALL STATEMENT...
!   _temp_3476 = _StringConst_168
	set	_StringConst_168,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_3476  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	3231,r13		! source line 3231
	mov	"\0\0CE",r10
	call	print
! END IF...
_Label_3475:
! RETURN STATEMENT...
	mov	3228,r13		! source line 3228
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
	.word	_Label_3477
	.word	4		! total size of parameters
	.word	16		! frame size = 16
	.word	_Label_3478
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_3479
	.word	-12
	.word	4
	.word	_Label_3480
	.word	-16
	.word	4
	.word	_Label_3481
	.word	-20
	.word	4
	.word	0
_Label_3477:
	.ascii	"OpenFile"
	.ascii	"::"
	.ascii	"Print\0"
	.align
_Label_3478:
	.ascii	"Pself\0"
	.align
_Label_3479:
	.byte	'?'
	.ascii	"_temp_3476\0"
	.align
_Label_3480:
	.byte	'?'
	.ascii	"_temp_3472\0"
	.align
_Label_3481:
	.byte	'?'
	.ascii	"_temp_3471\0"
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
_Label_3931:
	push	r0
	sub	r1,1,r1
	bne	_Label_3931
	mov	3237,r13		! source line 3237
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! SEND STATEMENT...
	mov	3247,r13		! source line 3247
	mov	"\0\0SE",r10
!   _temp_3482 = &_P_Kernel_fileManager
	set	_P_Kernel_fileManager,r1
	store	r1,[r14+-36]
!   _temp_3483 = _temp_3482 + 4
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
	mov	3248,r13		! source line 3248
	mov	"\0\0AS",r10
!   pos = currentPos		(4 bytes)
	load	[r14+8],r1
	load	[r1+16],r1
	store	r1,[r14+-40]
! ASSIGNMENT STATEMENT...
	mov	3249,r13		! source line 3249
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
	mov	3250,r13		! source line 3250
	mov	"\0\0SE",r10
!   _temp_3484 = &_P_Kernel_fileManager
	set	_P_Kernel_fileManager,r1
	store	r1,[r14+-28]
!   _temp_3485 = _temp_3484 + 4
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
	mov	3251,r13		! source line 3251
	mov	"\0\0RE",r10
	mov	3251,r13		! source line 3251
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-20]
!   _temp_3488 = &_P_Kernel_fileManager
	set	_P_Kernel_fileManager,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=12  value=_temp_3487  sizeInBytes=4
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
!   Retrieve Result: targetName=_temp_3486  sizeInBytes=1
	loadb	[r15],r1
	storeb	r1,[r14+-9]
!   ReturnResult: _temp_3486  (sizeInBytes=1)
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
	.word	_Label_3489
	.word	12		! total size of parameters
	.word	52		! frame size = 52
	.word	_Label_3490
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_3491
	.word	12
	.word	4
	.word	_Label_3492
	.word	16
	.word	4
	.word	_Label_3493
	.word	-16
	.word	4
	.word	_Label_3494
	.word	-20
	.word	4
	.word	_Label_3495
	.word	-9
	.word	1
	.word	_Label_3496
	.word	-24
	.word	4
	.word	_Label_3497
	.word	-28
	.word	4
	.word	_Label_3498
	.word	-32
	.word	4
	.word	_Label_3499
	.word	-36
	.word	4
	.word	_Label_3500
	.word	-40
	.word	4
	.word	0
_Label_3489:
	.ascii	"OpenFile"
	.ascii	"::"
	.ascii	"ReadBytes\0"
	.align
_Label_3490:
	.ascii	"Pself\0"
	.align
_Label_3491:
	.byte	'I'
	.ascii	"targetAddr\0"
	.align
_Label_3492:
	.byte	'I'
	.ascii	"numBytes\0"
	.align
_Label_3493:
	.byte	'?'
	.ascii	"_temp_3488\0"
	.align
_Label_3494:
	.byte	'?'
	.ascii	"_temp_3487\0"
	.align
_Label_3495:
	.byte	'C'
	.ascii	"_temp_3486\0"
	.align
_Label_3496:
	.byte	'?'
	.ascii	"_temp_3485\0"
	.align
_Label_3497:
	.byte	'?'
	.ascii	"_temp_3484\0"
	.align
_Label_3498:
	.byte	'?'
	.ascii	"_temp_3483\0"
	.align
_Label_3499:
	.byte	'?'
	.ascii	"_temp_3482\0"
	.align
_Label_3500:
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
_Label_3932:
	push	r0
	sub	r1,1,r1
	bne	_Label_3932
	mov	3256,r13		! source line 3256
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! IF STATEMENT...
	mov	3261,r13		! source line 3261
	mov	"\0\0IF",r10
	mov	3261,r13		! source line 3261
	mov	"\0\0SE",r10
!   _temp_3504 = &i
	add	r14,-28,r1
	store	r1,[r14+-24]
	load	[r14+8],r1
	store	r1,[r14+-20]
!   if intIsZero (_temp_3505) then goto _runtimeErrorNullPointer
	load	[r14+-20],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Prepare Argument: offset=12  value=_temp_3504  sizeInBytes=4
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
!   Retrieve Result: targetName=_temp_3503  sizeInBytes=1
	loadb	[r15],r1
	storeb	r1,[r14+-9]
!   if _temp_3503 then goto _Label_3502 else goto _Label_3501
	loadb	[r14+-9],r1
	cmp	r1,0
	be	_Label_3501
	jmp	_Label_3502
_Label_3501:
! THEN...
	mov	3262,r13		! source line 3262
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_3506 = _StringConst_169
	set	_StringConst_169,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_3506  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	3262,r13		! source line 3262
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END IF...
_Label_3502:
! RETURN STATEMENT...
	mov	3264,r13		! source line 3264
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
	.word	_Label_3507
	.word	4		! total size of parameters
	.word	32		! frame size = 32
	.word	_Label_3508
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_3509
	.word	-16
	.word	4
	.word	_Label_3510
	.word	-20
	.word	4
	.word	_Label_3511
	.word	-24
	.word	4
	.word	_Label_3512
	.word	-9
	.word	1
	.word	_Label_3513
	.word	-28
	.word	4
	.word	0
_Label_3507:
	.ascii	"OpenFile"
	.ascii	"::"
	.ascii	"ReadInt\0"
	.align
_Label_3508:
	.ascii	"Pself\0"
	.align
_Label_3509:
	.byte	'?'
	.ascii	"_temp_3506\0"
	.align
_Label_3510:
	.byte	'?'
	.ascii	"_temp_3505\0"
	.align
_Label_3511:
	.byte	'?'
	.ascii	"_temp_3504\0"
	.align
_Label_3512:
	.byte	'C'
	.ascii	"_temp_3503\0"
	.align
_Label_3513:
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
_Label_3933:
	push	r0
	sub	r1,1,r1
	bne	_Label_3933
	mov	3269,r13		! source line 3269
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! IF STATEMENT...
	mov	3295,r13		! source line 3295
	mov	"\0\0IF",r10
!   if intIsZero (addrSpace) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3517 = addrSpace + 4
	load	[r14+12],r1
	add	r1,4,r1
	store	r1,[r14+-216]
!   Data Move: _temp_3516 = *_temp_3517  (sizeInBytes=4)
	load	[r14+-216],r1
	load	[r1],r1
	store	r1,[r14+-220]
!   if intIsZero (_temp_3516) then goto _Label_3515
	load	[r14+-220],r1
	cmp	r1,r0
	be	_Label_3515
!	jmp	_Label_3514
_Label_3514:
! THEN...
	mov	3296,r13		! source line 3296
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_3518 = _StringConst_170
	set	_StringConst_170,r1
	store	r1,[r14+-212]
!   Prepare Argument: offset=8  value=_temp_3518  sizeInBytes=4
	load	[r14+-212],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	3296,r13		! source line 3296
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END IF...
_Label_3515:
! IF STATEMENT...
	mov	3300,r13		! source line 3300
	mov	"\0\0IF",r10
	mov	3300,r13		! source line 3300
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-204]
!   if intIsZero (_temp_3522) then goto _runtimeErrorNullPointer
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
!   Retrieve Result: targetName=_temp_3521  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-208]
!   if _temp_3521 == 1112300152 then goto _Label_3520		(int)
	load	[r14+-208],r1
	set	1112300152,r2
	cmp	r1,r2
	be	_Label_3520
!	jmp	_Label_3519
_Label_3519:
! THEN...
	mov	3301,r13		! source line 3301
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_3523 = _StringConst_171
	set	_StringConst_171,r1
	store	r1,[r14+-200]
!   Prepare Argument: offset=8  value=_temp_3523  sizeInBytes=4
	load	[r14+-200],r1
	store	r1,[r15+0]
!   Call the function
	mov	3301,r13		! source line 3301
	mov	"\0\0CE",r10
	call	print
! RETURN STATEMENT...
	mov	3302,r13		! source line 3302
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,276,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_3520:
! ASSIGNMENT STATEMENT...
	mov	3306,r13		! source line 3306
	mov	"\0\0AS",r10
	mov	3306,r13		! source line 3306
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-196]
!   if intIsZero (_temp_3524) then goto _runtimeErrorNullPointer
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
	mov	3307,r13		! source line 3307
	mov	"\0\0AS",r10
	mov	3307,r13		! source line 3307
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-192]
!   if intIsZero (_temp_3525) then goto _runtimeErrorNullPointer
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
	mov	3308,r13		! source line 3308
	mov	"\0\0AS",r10
	mov	3308,r13		! source line 3308
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-188]
!   if intIsZero (_temp_3526) then goto _runtimeErrorNullPointer
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
	mov	3309,r13		! source line 3309
	mov	"\0\0AS",r10
	mov	3309,r13		! source line 3309
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-184]
!   if intIsZero (_temp_3527) then goto _runtimeErrorNullPointer
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
	mov	3310,r13		! source line 3310
	mov	"\0\0AS",r10
	mov	3310,r13		! source line 3310
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-180]
!   if intIsZero (_temp_3528) then goto _runtimeErrorNullPointer
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
	mov	3311,r13		! source line 3311
	mov	"\0\0AS",r10
	mov	3311,r13		! source line 3311
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-176]
!   if intIsZero (_temp_3529) then goto _runtimeErrorNullPointer
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
	mov	3314,r13		! source line 3314
	mov	"\0\0IF",r10
!   _temp_3532 = textSize rem 8192		(int)
	load	[r14+-232],r1
	mov	8192,r2
	cmp	r2,0
	be	_runtimeErrorZeroDivide
	rem	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-172]
!   if intIsZero (_temp_3532) then goto _Label_3531
	load	[r14+-172],r1
	cmp	r1,r0
	be	_Label_3531
!	jmp	_Label_3530
_Label_3530:
! THEN...
	mov	3315,r13		! source line 3315
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_3533 = _StringConst_172
	set	_StringConst_172,r1
	store	r1,[r14+-168]
!   Prepare Argument: offset=8  value=_temp_3533  sizeInBytes=4
	load	[r14+-168],r1
	store	r1,[r15+0]
!   Call the function
	mov	3315,r13		! source line 3315
	mov	"\0\0CE",r10
	call	print
! RETURN STATEMENT...
	mov	3316,r13		! source line 3316
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,276,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_3531:
! ASSIGNMENT STATEMENT...
	mov	3318,r13		! source line 3318
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
	mov	3322,r13		! source line 3322
	mov	"\0\0IF",r10
!   if intIsZero (textStart) then goto _Label_3535
	load	[r14+-244],r1
	cmp	r1,r0
	be	_Label_3535
!	jmp	_Label_3534
_Label_3534:
! THEN...
	mov	3323,r13		! source line 3323
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_3536 = _StringConst_173
	set	_StringConst_173,r1
	store	r1,[r14+-164]
!   Prepare Argument: offset=8  value=_temp_3536  sizeInBytes=4
	load	[r14+-164],r1
	store	r1,[r15+0]
!   Call the function
	mov	3323,r13		! source line 3323
	mov	"\0\0CE",r10
	call	print
! RETURN STATEMENT...
	mov	3324,r13		! source line 3324
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,276,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_3535:
! IF STATEMENT...
	mov	3328,r13		! source line 3328
	mov	"\0\0IF",r10
!   _temp_3539 = dataSize rem 8192		(int)
	load	[r14+-236],r1
	mov	8192,r2
	cmp	r2,0
	be	_runtimeErrorZeroDivide
	rem	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-160]
!   if intIsZero (_temp_3539) then goto _Label_3538
	load	[r14+-160],r1
	cmp	r1,r0
	be	_Label_3538
!	jmp	_Label_3537
_Label_3537:
! THEN...
	mov	3329,r13		! source line 3329
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_3540 = _StringConst_174
	set	_StringConst_174,r1
	store	r1,[r14+-156]
!   Prepare Argument: offset=8  value=_temp_3540  sizeInBytes=4
	load	[r14+-156],r1
	store	r1,[r15+0]
!   Call the function
	mov	3329,r13		! source line 3329
	mov	"\0\0CE",r10
	call	print
! RETURN STATEMENT...
	mov	3330,r13		! source line 3330
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,276,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_3538:
! IF STATEMENT...
	mov	3332,r13		! source line 3332
	mov	"\0\0IF",r10
!   _temp_3543 = textStart + textSize		(int)
	load	[r14+-244],r1
	load	[r14+-232],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-152]
!   if dataStart == _temp_3543 then goto _Label_3542		(int)
	load	[r14+-248],r1
	load	[r14+-152],r2
	cmp	r1,r2
	be	_Label_3542
!	jmp	_Label_3541
_Label_3541:
! THEN...
	mov	3333,r13		! source line 3333
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_3544 = _StringConst_175
	set	_StringConst_175,r1
	store	r1,[r14+-148]
!   Prepare Argument: offset=8  value=_temp_3544  sizeInBytes=4
	load	[r14+-148],r1
	store	r1,[r15+0]
!   Call the function
	mov	3333,r13		! source line 3333
	mov	"\0\0CE",r10
	call	print
! RETURN STATEMENT...
	mov	3334,r13		! source line 3334
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,276,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_3542:
! ASSIGNMENT STATEMENT...
	mov	3336,r13		! source line 3336
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
	mov	3339,r13		! source line 3339
	mov	"\0\0IF",r10
!   _temp_3547 = bssSize rem 8192		(int)
	load	[r14+-240],r1
	mov	8192,r2
	cmp	r2,0
	be	_runtimeErrorZeroDivide
	rem	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-144]
!   if intIsZero (_temp_3547) then goto _Label_3546
	load	[r14+-144],r1
	cmp	r1,r0
	be	_Label_3546
!	jmp	_Label_3545
_Label_3545:
! THEN...
	mov	3340,r13		! source line 3340
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_3548 = _StringConst_176
	set	_StringConst_176,r1
	store	r1,[r14+-140]
!   Prepare Argument: offset=8  value=_temp_3548  sizeInBytes=4
	load	[r14+-140],r1
	store	r1,[r15+0]
!   Call the function
	mov	3340,r13		! source line 3340
	mov	"\0\0CE",r10
	call	print
! RETURN STATEMENT...
	mov	3341,r13		! source line 3341
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,276,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_3546:
! IF STATEMENT...
	mov	3343,r13		! source line 3343
	mov	"\0\0IF",r10
!   _temp_3551 = dataStart + dataSize		(int)
	load	[r14+-248],r1
	load	[r14+-236],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-136]
!   if bssStart == _temp_3551 then goto _Label_3550		(int)
	load	[r14+-252],r1
	load	[r14+-136],r2
	cmp	r1,r2
	be	_Label_3550
!	jmp	_Label_3549
_Label_3549:
! THEN...
	mov	3344,r13		! source line 3344
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_3552 = _StringConst_177
	set	_StringConst_177,r1
	store	r1,[r14+-132]
!   Prepare Argument: offset=8  value=_temp_3552  sizeInBytes=4
	load	[r14+-132],r1
	store	r1,[r15+0]
!   Call the function
	mov	3344,r13		! source line 3344
	mov	"\0\0CE",r10
	call	print
! RETURN STATEMENT...
	mov	3345,r13		! source line 3345
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,276,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_3550:
! ASSIGNMENT STATEMENT...
	mov	3347,r13		! source line 3347
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
	mov	3350,r13		! source line 3350
	mov	"\0\0AS",r10
!   _temp_3555 = textSizeInPages + dataSizeInPages		(int)
	load	[r14+-260],r1
	load	[r14+-264],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-120]
!   _temp_3554 = _temp_3555 + bssSizeInPages		(int)
	load	[r14+-120],r1
	load	[r14+-268],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-124]
!   _temp_3553 = _temp_3554 + 1		(int)
	load	[r14+-124],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-128]
!   i = _temp_3553 + 0		(int)
	load	[r14+-128],r1
	mov	0,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-256]
! IF STATEMENT...
	mov	3365,r13		! source line 3365
	mov	"\0\0IF",r10
!   if i <= 20 then goto _Label_3557		(int)
	load	[r14+-256],r1
	mov	20,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	ble	_Label_3557
!	jmp	_Label_3556
_Label_3556:
! THEN...
	mov	3366,r13		! source line 3366
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_3558 = _StringConst_178
	set	_StringConst_178,r1
	store	r1,[r14+-116]
!   Prepare Argument: offset=8  value=_temp_3558  sizeInBytes=4
	load	[r14+-116],r1
	store	r1,[r15+0]
!   Call the function
	mov	3366,r13		! source line 3366
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_3559 = _StringConst_179
	set	_StringConst_179,r1
	store	r1,[r14+-112]
!   Prepare Argument: offset=8  value=_temp_3559  sizeInBytes=4
	load	[r14+-112],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=i  sizeInBytes=4
	load	[r14+-256],r1
	store	r1,[r15+4]
!   Call the function
	mov	3367,r13		! source line 3367
	mov	"\0\0CA",r10
	call	_P_System_printIntVar
! CALL STATEMENT...
!   _temp_3560 = _StringConst_180
	set	_StringConst_180,r1
	store	r1,[r14+-108]
!   Prepare Argument: offset=8  value=_temp_3560  sizeInBytes=4
	load	[r14+-108],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=20  sizeInBytes=4
	mov	20,r1
	store	r1,[r15+4]
!   Call the function
	mov	3368,r13		! source line 3368
	mov	"\0\0CA",r10
	call	_P_System_printIntVar
! RETURN STATEMENT...
	mov	3369,r13		! source line 3369
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,276,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_3557:
! SEND STATEMENT...
	mov	3372,r13		! source line 3372
	mov	"\0\0SE",r10
!   _temp_3561 = &_P_Kernel_frameManager
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
	mov	3378,r13		! source line 3378
	mov	"\0\0IF",r10
	mov	3378,r13		! source line 3378
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-96]
!   if intIsZero (_temp_3565) then goto _runtimeErrorNullPointer
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
!   Retrieve Result: targetName=_temp_3564  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-100]
!   if _temp_3564 == 707406378 then goto _Label_3563		(int)
	load	[r14+-100],r1
	set	707406378,r2
	cmp	r1,r2
	be	_Label_3563
!	jmp	_Label_3562
_Label_3562:
! THEN...
	mov	3379,r13		! source line 3379
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_3566 = _StringConst_181
	set	_StringConst_181,r1
	store	r1,[r14+-92]
!   Prepare Argument: offset=8  value=_temp_3566  sizeInBytes=4
	load	[r14+-92],r1
	store	r1,[r15+0]
!   Call the function
	mov	3379,r13		! source line 3379
	mov	"\0\0CE",r10
	call	print
! SEND STATEMENT...
	mov	3380,r13		! source line 3380
	mov	"\0\0SE",r10
!   _temp_3567 = &_P_Kernel_frameManager
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
	mov	3381,r13		! source line 3381
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,276,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_3563:
! ASSIGNMENT STATEMENT...
	mov	3385,r13		! source line 3385
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
	mov	3386,r13		! source line 3386
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_3572 = 1		(4 bytes)
	mov	1,r1
	store	r1,[r14+-84]
!   Calculate and save the FOR-LOOP ending value
!   _temp_3573 = textSizeInPages		(4 bytes)
	load	[r14+-260],r1
	store	r1,[r14+-80]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_3572  (sizeInBytes=4)
	load	[r14+-84],r1
	store	r1,[r14+-256]
_Label_3568:
!   Perform the FOR-LOOP termination test
!   if i > _temp_3573 then goto _Label_3571		
	load	[r14+-256],r1
	load	[r14+-80],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_3571
_Label_3569:
	mov	3386,r13		! source line 3386
	mov	"\0\0FB",r10
! ASSIGNMENT STATEMENT...
	mov	3387,r13		! source line 3387
	mov	"\0\0AS",r10
	mov	3387,r13		! source line 3387
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
	mov	3390,r13		! source line 3390
	mov	"\0\0IF",r10
	mov	3390,r13		! source line 3390
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-76]
!   if intIsZero (_temp_3577) then goto _runtimeErrorNullPointer
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
!   Retrieve Result: targetName=_temp_3576  sizeInBytes=1
	loadb	[r15],r1
	storeb	r1,[r14+-10]
!   if _temp_3576 then goto _Label_3575 else goto _Label_3574
	loadb	[r14+-10],r1
	cmp	r1,0
	be	_Label_3574
	jmp	_Label_3575
_Label_3574:
! THEN...
	mov	3391,r13		! source line 3391
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_3578 = _StringConst_182
	set	_StringConst_182,r1
	store	r1,[r14+-72]
!   Prepare Argument: offset=8  value=_temp_3578  sizeInBytes=4
	load	[r14+-72],r1
	store	r1,[r15+0]
!   Call the function
	mov	3391,r13		! source line 3391
	mov	"\0\0CE",r10
	call	print
! SEND STATEMENT...
	mov	3392,r13		! source line 3392
	mov	"\0\0SE",r10
!   _temp_3579 = &_P_Kernel_frameManager
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
	mov	3393,r13		! source line 3393
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,276,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_3575:
! SEND STATEMENT...
	mov	3395,r13		! source line 3395
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
	mov	3396,r13		! source line 3396
	mov	"\0\0AS",r10
!   nextVirtPage = nextVirtPage + 1		(int)
	load	[r14+-224],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-224]
!   Increment the FOR-LOOP index variable and jump back
_Label_3570:
!   i = i + 1
	load	[r14+-256],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-256]
	jmp	_Label_3568
! END FOR
_Label_3571:
! IF STATEMENT...
	mov	3400,r13		! source line 3400
	mov	"\0\0IF",r10
	mov	3400,r13		! source line 3400
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-60]
!   if intIsZero (_temp_3583) then goto _runtimeErrorNullPointer
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
!   Retrieve Result: targetName=_temp_3582  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-64]
!   if _temp_3582 == 707406378 then goto _Label_3581		(int)
	load	[r14+-64],r1
	set	707406378,r2
	cmp	r1,r2
	be	_Label_3581
!	jmp	_Label_3580
_Label_3580:
! THEN...
	mov	3401,r13		! source line 3401
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_3584 = _StringConst_183
	set	_StringConst_183,r1
	store	r1,[r14+-56]
!   Prepare Argument: offset=8  value=_temp_3584  sizeInBytes=4
	load	[r14+-56],r1
	store	r1,[r15+0]
!   Call the function
	mov	3401,r13		! source line 3401
	mov	"\0\0CE",r10
	call	print
! SEND STATEMENT...
	mov	3402,r13		! source line 3402
	mov	"\0\0SE",r10
!   _temp_3585 = &_P_Kernel_frameManager
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
	mov	3403,r13		! source line 3403
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,276,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_3581:
! FOR STATEMENT...
	mov	3407,r13		! source line 3407
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_3590 = 1		(4 bytes)
	mov	1,r1
	store	r1,[r14+-48]
!   Calculate and save the FOR-LOOP ending value
!   _temp_3591 = dataSizeInPages		(4 bytes)
	load	[r14+-264],r1
	store	r1,[r14+-44]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_3590  (sizeInBytes=4)
	load	[r14+-48],r1
	store	r1,[r14+-256]
_Label_3586:
!   Perform the FOR-LOOP termination test
!   if i > _temp_3591 then goto _Label_3589		
	load	[r14+-256],r1
	load	[r14+-44],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_3589
_Label_3587:
	mov	3407,r13		! source line 3407
	mov	"\0\0FB",r10
! ASSIGNMENT STATEMENT...
	mov	3408,r13		! source line 3408
	mov	"\0\0AS",r10
	mov	3408,r13		! source line 3408
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
	mov	3411,r13		! source line 3411
	mov	"\0\0IF",r10
	mov	3411,r13		! source line 3411
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-40]
!   if intIsZero (_temp_3595) then goto _runtimeErrorNullPointer
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
!   Retrieve Result: targetName=_temp_3594  sizeInBytes=1
	loadb	[r15],r1
	storeb	r1,[r14+-9]
!   if _temp_3594 then goto _Label_3593 else goto _Label_3592
	loadb	[r14+-9],r1
	cmp	r1,0
	be	_Label_3592
	jmp	_Label_3593
_Label_3592:
! THEN...
	mov	3412,r13		! source line 3412
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_3596 = _StringConst_184
	set	_StringConst_184,r1
	store	r1,[r14+-36]
!   Prepare Argument: offset=8  value=_temp_3596  sizeInBytes=4
	load	[r14+-36],r1
	store	r1,[r15+0]
!   Call the function
	mov	3412,r13		! source line 3412
	mov	"\0\0CE",r10
	call	print
! SEND STATEMENT...
	mov	3413,r13		! source line 3413
	mov	"\0\0SE",r10
!   _temp_3597 = &_P_Kernel_frameManager
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
	mov	3414,r13		! source line 3414
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,276,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_3593:
! ASSIGNMENT STATEMENT...
	mov	3416,r13		! source line 3416
	mov	"\0\0AS",r10
!   nextVirtPage = nextVirtPage + 1		(int)
	load	[r14+-224],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-224]
!   Increment the FOR-LOOP index variable and jump back
_Label_3588:
!   i = i + 1
	load	[r14+-256],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-256]
	jmp	_Label_3586
! END FOR
_Label_3589:
! IF STATEMENT...
	mov	3420,r13		! source line 3420
	mov	"\0\0IF",r10
	mov	3420,r13		! source line 3420
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-24]
!   if intIsZero (_temp_3601) then goto _runtimeErrorNullPointer
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
!   Retrieve Result: targetName=_temp_3600  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-28]
!   if _temp_3600 == 707406378 then goto _Label_3599		(int)
	load	[r14+-28],r1
	set	707406378,r2
	cmp	r1,r2
	be	_Label_3599
!	jmp	_Label_3598
_Label_3598:
! THEN...
	mov	3421,r13		! source line 3421
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_3602 = _StringConst_185
	set	_StringConst_185,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_3602  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   Call the function
	mov	3421,r13		! source line 3421
	mov	"\0\0CE",r10
	call	print
! SEND STATEMENT...
	mov	3422,r13		! source line 3422
	mov	"\0\0SE",r10
!   _temp_3603 = &_P_Kernel_frameManager
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
	mov	3423,r13		! source line 3423
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,276,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_3599:
! ASSIGNMENT STATEMENT...
	mov	3427,r13		! source line 3427
	mov	"\0\0AS",r10
	mov	3427,r13		! source line 3427
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
	mov	3431,r13		! source line 3431
	mov	"\0\0CE",r10
	call	MemoryZero
! RETURN STATEMENT...
	mov	3434,r13		! source line 3434
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
	.word	_Label_3604
	.word	8		! total size of parameters
	.word	272		! frame size = 272
	.word	_Label_3605
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_3606
	.word	12
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
	.word	_Label_3612
	.word	-36
	.word	4
	.word	_Label_3613
	.word	-40
	.word	4
	.word	_Label_3614
	.word	-9
	.word	1
	.word	_Label_3615
	.word	-44
	.word	4
	.word	_Label_3616
	.word	-48
	.word	4
	.word	_Label_3617
	.word	-52
	.word	4
	.word	_Label_3618
	.word	-56
	.word	4
	.word	_Label_3619
	.word	-60
	.word	4
	.word	_Label_3620
	.word	-64
	.word	4
	.word	_Label_3621
	.word	-68
	.word	4
	.word	_Label_3622
	.word	-72
	.word	4
	.word	_Label_3623
	.word	-76
	.word	4
	.word	_Label_3624
	.word	-10
	.word	1
	.word	_Label_3625
	.word	-80
	.word	4
	.word	_Label_3626
	.word	-84
	.word	4
	.word	_Label_3627
	.word	-88
	.word	4
	.word	_Label_3628
	.word	-92
	.word	4
	.word	_Label_3629
	.word	-96
	.word	4
	.word	_Label_3630
	.word	-100
	.word	4
	.word	_Label_3631
	.word	-104
	.word	4
	.word	_Label_3632
	.word	-108
	.word	4
	.word	_Label_3633
	.word	-112
	.word	4
	.word	_Label_3634
	.word	-116
	.word	4
	.word	_Label_3635
	.word	-120
	.word	4
	.word	_Label_3636
	.word	-124
	.word	4
	.word	_Label_3637
	.word	-128
	.word	4
	.word	_Label_3638
	.word	-132
	.word	4
	.word	_Label_3639
	.word	-136
	.word	4
	.word	_Label_3640
	.word	-140
	.word	4
	.word	_Label_3641
	.word	-144
	.word	4
	.word	_Label_3642
	.word	-148
	.word	4
	.word	_Label_3643
	.word	-152
	.word	4
	.word	_Label_3644
	.word	-156
	.word	4
	.word	_Label_3645
	.word	-160
	.word	4
	.word	_Label_3646
	.word	-164
	.word	4
	.word	_Label_3647
	.word	-168
	.word	4
	.word	_Label_3648
	.word	-172
	.word	4
	.word	_Label_3649
	.word	-176
	.word	4
	.word	_Label_3650
	.word	-180
	.word	4
	.word	_Label_3651
	.word	-184
	.word	4
	.word	_Label_3652
	.word	-188
	.word	4
	.word	_Label_3653
	.word	-192
	.word	4
	.word	_Label_3654
	.word	-196
	.word	4
	.word	_Label_3655
	.word	-200
	.word	4
	.word	_Label_3656
	.word	-204
	.word	4
	.word	_Label_3657
	.word	-208
	.word	4
	.word	_Label_3658
	.word	-212
	.word	4
	.word	_Label_3659
	.word	-216
	.word	4
	.word	_Label_3660
	.word	-220
	.word	4
	.word	_Label_3661
	.word	-224
	.word	4
	.word	_Label_3662
	.word	-228
	.word	4
	.word	_Label_3663
	.word	-232
	.word	4
	.word	_Label_3664
	.word	-236
	.word	4
	.word	_Label_3665
	.word	-240
	.word	4
	.word	_Label_3666
	.word	-244
	.word	4
	.word	_Label_3667
	.word	-248
	.word	4
	.word	_Label_3668
	.word	-252
	.word	4
	.word	_Label_3669
	.word	-256
	.word	4
	.word	_Label_3670
	.word	-260
	.word	4
	.word	_Label_3671
	.word	-264
	.word	4
	.word	_Label_3672
	.word	-268
	.word	4
	.word	0
_Label_3604:
	.ascii	"OpenFile"
	.ascii	"::"
	.ascii	"LoadExecutable\0"
	.align
_Label_3605:
	.ascii	"Pself\0"
	.align
_Label_3606:
	.byte	'P'
	.ascii	"addrSpace\0"
	.align
_Label_3607:
	.byte	'?'
	.ascii	"_temp_3603\0"
	.align
_Label_3608:
	.byte	'?'
	.ascii	"_temp_3602\0"
	.align
_Label_3609:
	.byte	'?'
	.ascii	"_temp_3601\0"
	.align
_Label_3610:
	.byte	'?'
	.ascii	"_temp_3600\0"
	.align
_Label_3611:
	.byte	'?'
	.ascii	"_temp_3597\0"
	.align
_Label_3612:
	.byte	'?'
	.ascii	"_temp_3596\0"
	.align
_Label_3613:
	.byte	'?'
	.ascii	"_temp_3595\0"
	.align
_Label_3614:
	.byte	'C'
	.ascii	"_temp_3594\0"
	.align
_Label_3615:
	.byte	'?'
	.ascii	"_temp_3591\0"
	.align
_Label_3616:
	.byte	'?'
	.ascii	"_temp_3590\0"
	.align
_Label_3617:
	.byte	'?'
	.ascii	"_temp_3585\0"
	.align
_Label_3618:
	.byte	'?'
	.ascii	"_temp_3584\0"
	.align
_Label_3619:
	.byte	'?'
	.ascii	"_temp_3583\0"
	.align
_Label_3620:
	.byte	'?'
	.ascii	"_temp_3582\0"
	.align
_Label_3621:
	.byte	'?'
	.ascii	"_temp_3579\0"
	.align
_Label_3622:
	.byte	'?'
	.ascii	"_temp_3578\0"
	.align
_Label_3623:
	.byte	'?'
	.ascii	"_temp_3577\0"
	.align
_Label_3624:
	.byte	'C'
	.ascii	"_temp_3576\0"
	.align
_Label_3625:
	.byte	'?'
	.ascii	"_temp_3573\0"
	.align
_Label_3626:
	.byte	'?'
	.ascii	"_temp_3572\0"
	.align
_Label_3627:
	.byte	'?'
	.ascii	"_temp_3567\0"
	.align
_Label_3628:
	.byte	'?'
	.ascii	"_temp_3566\0"
	.align
_Label_3629:
	.byte	'?'
	.ascii	"_temp_3565\0"
	.align
_Label_3630:
	.byte	'?'
	.ascii	"_temp_3564\0"
	.align
_Label_3631:
	.byte	'?'
	.ascii	"_temp_3561\0"
	.align
_Label_3632:
	.byte	'?'
	.ascii	"_temp_3560\0"
	.align
_Label_3633:
	.byte	'?'
	.ascii	"_temp_3559\0"
	.align
_Label_3634:
	.byte	'?'
	.ascii	"_temp_3558\0"
	.align
_Label_3635:
	.byte	'?'
	.ascii	"_temp_3555\0"
	.align
_Label_3636:
	.byte	'?'
	.ascii	"_temp_3554\0"
	.align
_Label_3637:
	.byte	'?'
	.ascii	"_temp_3553\0"
	.align
_Label_3638:
	.byte	'?'
	.ascii	"_temp_3552\0"
	.align
_Label_3639:
	.byte	'?'
	.ascii	"_temp_3551\0"
	.align
_Label_3640:
	.byte	'?'
	.ascii	"_temp_3548\0"
	.align
_Label_3641:
	.byte	'?'
	.ascii	"_temp_3547\0"
	.align
_Label_3642:
	.byte	'?'
	.ascii	"_temp_3544\0"
	.align
_Label_3643:
	.byte	'?'
	.ascii	"_temp_3543\0"
	.align
_Label_3644:
	.byte	'?'
	.ascii	"_temp_3540\0"
	.align
_Label_3645:
	.byte	'?'
	.ascii	"_temp_3539\0"
	.align
_Label_3646:
	.byte	'?'
	.ascii	"_temp_3536\0"
	.align
_Label_3647:
	.byte	'?'
	.ascii	"_temp_3533\0"
	.align
_Label_3648:
	.byte	'?'
	.ascii	"_temp_3532\0"
	.align
_Label_3649:
	.byte	'?'
	.ascii	"_temp_3529\0"
	.align
_Label_3650:
	.byte	'?'
	.ascii	"_temp_3528\0"
	.align
_Label_3651:
	.byte	'?'
	.ascii	"_temp_3527\0"
	.align
_Label_3652:
	.byte	'?'
	.ascii	"_temp_3526\0"
	.align
_Label_3653:
	.byte	'?'
	.ascii	"_temp_3525\0"
	.align
_Label_3654:
	.byte	'?'
	.ascii	"_temp_3524\0"
	.align
_Label_3655:
	.byte	'?'
	.ascii	"_temp_3523\0"
	.align
_Label_3656:
	.byte	'?'
	.ascii	"_temp_3522\0"
	.align
_Label_3657:
	.byte	'?'
	.ascii	"_temp_3521\0"
	.align
_Label_3658:
	.byte	'?'
	.ascii	"_temp_3518\0"
	.align
_Label_3659:
	.byte	'?'
	.ascii	"_temp_3517\0"
	.align
_Label_3660:
	.byte	'?'
	.ascii	"_temp_3516\0"
	.align
_Label_3661:
	.byte	'I'
	.ascii	"nextVirtPage\0"
	.align
_Label_3662:
	.byte	'I'
	.ascii	"addr\0"
	.align
_Label_3663:
	.byte	'I'
	.ascii	"textSize\0"
	.align
_Label_3664:
	.byte	'I'
	.ascii	"dataSize\0"
	.align
_Label_3665:
	.byte	'I'
	.ascii	"bssSize\0"
	.align
_Label_3666:
	.byte	'I'
	.ascii	"textStart\0"
	.align
_Label_3667:
	.byte	'I'
	.ascii	"dataStart\0"
	.align
_Label_3668:
	.byte	'I'
	.ascii	"bssStart\0"
	.align
_Label_3669:
	.byte	'I'
	.ascii	"i\0"
	.align
_Label_3670:
	.byte	'I'
	.ascii	"textSizeInPages\0"
	.align
_Label_3671:
	.byte	'I'
	.ascii	"dataSizeInPages\0"
	.align
_Label_3672:
	.byte	'I'
	.ascii	"bssSizeInPages\0"
	.align
! 
! ===============  CLASS SerialDriver  ===============
! 
! Dispatch Table:
! 
_P_Kernel_SerialDriver:
	.word	_Label_3673
	jmp	_Method_P_Kernel_SerialDriver_1	! 4:	Init
	jmp	_Method_P_Kernel_SerialDriver_3	! 8:	PutChar
	jmp	_Method_P_Kernel_SerialDriver_2	! 12:	GetChar
	jmp	_Method_P_Kernel_SerialDriver_4	! 16:	SerialHandler
	.word	0
! 
! Class descriptor:
! 
_Label_3673:
	.word	1129070931		! Magic number 0x434c4153 == 'CLAS'
	.word	_Label_3674
	.word	_sourceFileName
	.word	402		! line number
	.word	4308		! size of instances, in bytes
	.word	_P_Kernel_SerialDriver
	.word	_P_System_Object
	.word	0
_Label_3674:
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
_Label_3934:
	push	r0
	sub	r1,1,r1
	bne	_Label_3934
	mov	3445,r13		! source line 3445
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   _temp_3675 = _StringConst_186
	set	_StringConst_186,r1
	store	r1,[r14+-128]
!   Prepare Argument: offset=8  value=_temp_3675  sizeInBytes=4
	load	[r14+-128],r1
	store	r1,[r15+0]
!   Call the function
	mov	3447,r13		! source line 3447
	mov	"\0\0CE",r10
	call	print
! ASSIGNMENT STATEMENT...
	mov	3450,r13		! source line 3450
	mov	"\0\0AS",r10
!   serial_status_word_address = 16776964		(4 bytes)
	set	16776964,r1
	load	[r14+8],r2
	store	r1,[r2+4]
! ASSIGNMENT STATEMENT...
	mov	3451,r13		! source line 3451
	mov	"\0\0AS",r10
!   serial_data_word_address = 16776964		(4 bytes)
	set	16776964,r1
	load	[r14+8],r2
	store	r1,[r2+8]
! ASSIGNMENT STATEMENT...
	mov	3454,r13		! source line 3454
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
	mov	3455,r13		! source line 3455
	mov	"\0\0SE",r10
!   _temp_3677 = &serialLock
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
	mov	3457,r13		! source line 3457
	mov	"\0\0AS",r10
!   _temp_3678 = &getBuffer
	load	[r14+8],r1
	add	r1,32,r1
	store	r1,[r14+-116]
!   NEW ARRAY Constructor...
!   _temp_3680 = &_temp_3679
	add	r14,-112,r1
	store	r1,[r14+-96]
!   _temp_3680 = _temp_3680 + 4
	load	[r14+-96],r1
	add	r1,4,r1
	store	r1,[r14+-96]
!   Next value...
	mov	10,r1
	store	r1,[r14+-92]
_Label_3682:
!   Data Move: *_temp_3680 = 97  (sizeInBytes=1)
	mov	97,r1
	load	[r14+-96],r2
	storeb	r1,[r2]
!   _temp_3680 = _temp_3680 + 1
	load	[r14+-96],r1
	add	r1,1,r1
	store	r1,[r14+-96]
!   _temp_3681 = _temp_3681 + -1
	load	[r14+-92],r1
	add	r1,-1,r1
	store	r1,[r14+-92]
!   if intNotZero (_temp_3681) then goto _Label_3682
	load	[r14+-92],r1
	cmp	r1,r0
	bne	_Label_3682
!   Initialize the array size...
	mov	10,r1
	store	r1,[r14+-112]
!   _temp_3683 = &_temp_3679
	add	r14,-112,r1
	store	r1,[r14+-88]
!   make sure array has size 10
	load	[r14+-116],r1
	load	[r1],r1
	set	10, r2
	cmp	r1,0
	be	_Label_3935
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bne	_runtimeErrorWrongArraySize
_Label_3935:
!   make sure array has size 10
	load	[r14+-88],r1
	load	[r1],r1
	set	10, r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bne	_runtimeErrorWrongArraySize
!   Data Move: *_temp_3678 = *_temp_3683  (sizeInBytes=16)
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
	mov	3458,r13		! source line 3458
	mov	"\0\0AS",r10
!   getBufferSize = 0		(4 bytes)
	mov	0,r1
	load	[r14+8],r2
	store	r1,[r2+48]
! ASSIGNMENT STATEMENT...
	mov	3459,r13		! source line 3459
	mov	"\0\0AS",r10
!   getBufferNextIn = 0		(4 bytes)
	mov	0,r1
	load	[r14+8],r2
	store	r1,[r2+52]
! ASSIGNMENT STATEMENT...
	mov	3460,r13		! source line 3460
	mov	"\0\0AS",r10
!   getBufferNextOut = 0		(4 bytes)
	mov	0,r1
	load	[r14+8],r2
	store	r1,[r2+56]
! ASSIGNMENT STATEMENT...
	mov	3461,r13		! source line 3461
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
	mov	3462,r13		! source line 3462
	mov	"\0\0SE",r10
!   _temp_3685 = &getCharacterAvail
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
	mov	3464,r13		! source line 3464
	mov	"\0\0AS",r10
!   _temp_3686 = &putBuffer
	load	[r14+8],r1
	add	r1,76,r1
	store	r1,[r14+-76]
!   NEW ARRAY Constructor...
!   _temp_3688 = &_temp_3687
	add	r14,-72,r1
	store	r1,[r14+-56]
!   _temp_3688 = _temp_3688 + 4
	load	[r14+-56],r1
	add	r1,4,r1
	store	r1,[r14+-56]
!   Next value...
	mov	10,r1
	store	r1,[r14+-52]
_Label_3690:
!   Data Move: *_temp_3688 = 97  (sizeInBytes=1)
	mov	97,r1
	load	[r14+-56],r2
	storeb	r1,[r2]
!   _temp_3688 = _temp_3688 + 1
	load	[r14+-56],r1
	add	r1,1,r1
	store	r1,[r14+-56]
!   _temp_3689 = _temp_3689 + -1
	load	[r14+-52],r1
	add	r1,-1,r1
	store	r1,[r14+-52]
!   if intNotZero (_temp_3689) then goto _Label_3690
	load	[r14+-52],r1
	cmp	r1,r0
	bne	_Label_3690
!   Initialize the array size...
	mov	10,r1
	store	r1,[r14+-72]
!   _temp_3691 = &_temp_3687
	add	r14,-72,r1
	store	r1,[r14+-48]
!   make sure array has size 10
	load	[r14+-76],r1
	load	[r1],r1
	set	10, r2
	cmp	r1,0
	be	_Label_3936
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bne	_runtimeErrorWrongArraySize
_Label_3936:
!   make sure array has size 10
	load	[r14+-48],r1
	load	[r1],r1
	set	10, r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bne	_runtimeErrorWrongArraySize
!   Data Move: *_temp_3686 = *_temp_3691  (sizeInBytes=16)
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
	mov	3465,r13		! source line 3465
	mov	"\0\0AS",r10
!   putBufferSize = 0		(4 bytes)
	mov	0,r1
	load	[r14+8],r2
	store	r1,[r2+92]
! ASSIGNMENT STATEMENT...
	mov	3466,r13		! source line 3466
	mov	"\0\0AS",r10
!   putBufferNextIn = 0		(4 bytes)
	mov	0,r1
	load	[r14+8],r2
	store	r1,[r2+96]
! ASSIGNMENT STATEMENT...
	mov	3467,r13		! source line 3467
	mov	"\0\0AS",r10
!   putBufferNextOut = 0		(4 bytes)
	mov	0,r1
	load	[r14+8],r2
	store	r1,[r2+100]
! ASSIGNMENT STATEMENT...
	mov	3468,r13		! source line 3468
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
	mov	3469,r13		! source line 3469
	mov	"\0\0SE",r10
!   _temp_3693 = &putBufferSem
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
	mov	3471,r13		! source line 3471
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
	mov	3472,r13		! source line 3472
	mov	"\0\0SE",r10
!   _temp_3695 = &serialNeedsAttention
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
	mov	3474,r13		! source line 3474
	mov	"\0\0AS",r10
!   NEW CLASS Constructor...
!   ZeroMemory: serialHandlerThread = zeros  (sizeInBytes=4164)
	load	[r14+8],r4
	add	r4,144,r4
	mov	1041,r3
_Label_3937:
	store	r0,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_3937
!   serialHandlerThread = _P_Kernel_Thread
	set	_P_Kernel_Thread,r1
	load	[r14+8],r2
	store	r1,[r2+144]
! SEND STATEMENT...
	mov	3475,r13		! source line 3475
	mov	"\0\0SE",r10
!   _temp_3697 = _StringConst_187
	set	_StringConst_187,r1
	store	r1,[r14+-24]
!   _temp_3698 = &serialHandlerThread
	load	[r14+8],r1
	add	r1,144,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=12  value=_temp_3697  sizeInBytes=4
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
	mov	3476,r13		! source line 3476
	mov	"\0\0SE",r10
!   _temp_3699 = _function_194_SerialHandlerFunction
	set	_function_194_SerialHandlerFunction,r1
	store	r1,[r14+-16]
!   _temp_3700 = &serialHandlerThread
	load	[r14+8],r1
	add	r1,144,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=12  value=_temp_3699  sizeInBytes=4
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
	mov	3478,r13		! source line 3478
	mov	"\0\0AS",r10
!   _P_Kernel_serialHasBeenInitialized = 1		(1 byte)
	mov	1,r1
	set	_P_Kernel_serialHasBeenInitialized,r2
	storeb	r1,[r2]
! RETURN STATEMENT...
	mov	3478,r13		! source line 3478
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
	.word	_Label_3701
	.word	4		! total size of parameters
	.word	132		! frame size = 132
	.word	_Label_3702
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_3703
	.word	-12
	.word	4
	.word	_Label_3704
	.word	-16
	.word	4
	.word	_Label_3705
	.word	-20
	.word	4
	.word	_Label_3706
	.word	-24
	.word	4
	.word	_Label_3707
	.word	-28
	.word	4
	.word	_Label_3708
	.word	-32
	.word	4
	.word	_Label_3709
	.word	-36
	.word	4
	.word	_Label_3710
	.word	-40
	.word	4
	.word	_Label_3711
	.word	-44
	.word	4
	.word	_Label_3712
	.word	-48
	.word	4
	.word	_Label_3713
	.word	-52
	.word	4
	.word	_Label_3714
	.word	-56
	.word	4
	.word	_Label_3715
	.word	-72
	.word	16
	.word	_Label_3716
	.word	-76
	.word	4
	.word	_Label_3717
	.word	-80
	.word	4
	.word	_Label_3718
	.word	-84
	.word	4
	.word	_Label_3719
	.word	-88
	.word	4
	.word	_Label_3720
	.word	-92
	.word	4
	.word	_Label_3721
	.word	-96
	.word	4
	.word	_Label_3722
	.word	-112
	.word	16
	.word	_Label_3723
	.word	-116
	.word	4
	.word	_Label_3724
	.word	-120
	.word	4
	.word	_Label_3725
	.word	-124
	.word	4
	.word	_Label_3726
	.word	-128
	.word	4
	.word	0
_Label_3701:
	.ascii	"SerialDriver"
	.ascii	"::"
	.ascii	"Init\0"
	.align
_Label_3702:
	.ascii	"Pself\0"
	.align
_Label_3703:
	.byte	'?'
	.ascii	"_temp_3700\0"
	.align
_Label_3704:
	.byte	'?'
	.ascii	"_temp_3699\0"
	.align
_Label_3705:
	.byte	'?'
	.ascii	"_temp_3698\0"
	.align
_Label_3706:
	.byte	'?'
	.ascii	"_temp_3697\0"
	.align
_Label_3707:
	.byte	'?'
	.ascii	"_temp_3696\0"
	.align
_Label_3708:
	.byte	'?'
	.ascii	"_temp_3695\0"
	.align
_Label_3709:
	.byte	'?'
	.ascii	"_temp_3694\0"
	.align
_Label_3710:
	.byte	'?'
	.ascii	"_temp_3693\0"
	.align
_Label_3711:
	.byte	'?'
	.ascii	"_temp_3692\0"
	.align
_Label_3712:
	.byte	'?'
	.ascii	"_temp_3691\0"
	.align
_Label_3713:
	.byte	'?'
	.ascii	"_temp_3689\0"
	.align
_Label_3714:
	.byte	'?'
	.ascii	"_temp_3688\0"
	.align
_Label_3715:
	.byte	'?'
	.ascii	"_temp_3687\0"
	.align
_Label_3716:
	.byte	'?'
	.ascii	"_temp_3686\0"
	.align
_Label_3717:
	.byte	'?'
	.ascii	"_temp_3685\0"
	.align
_Label_3718:
	.byte	'?'
	.ascii	"_temp_3684\0"
	.align
_Label_3719:
	.byte	'?'
	.ascii	"_temp_3683\0"
	.align
_Label_3720:
	.byte	'?'
	.ascii	"_temp_3681\0"
	.align
_Label_3721:
	.byte	'?'
	.ascii	"_temp_3680\0"
	.align
_Label_3722:
	.byte	'?'
	.ascii	"_temp_3679\0"
	.align
_Label_3723:
	.byte	'?'
	.ascii	"_temp_3678\0"
	.align
_Label_3724:
	.byte	'?'
	.ascii	"_temp_3677\0"
	.align
_Label_3725:
	.byte	'?'
	.ascii	"_temp_3676\0"
	.align
_Label_3726:
	.byte	'?'
	.ascii	"_temp_3675\0"
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
	mov	3484,r13		! source line 3484
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! RETURN STATEMENT...
	mov	3485,r13		! source line 3485
	mov	"\0\0RE",r10
!   ReturnResult: 97  (sizeInBytes=1)
	mov	97,r1
	storeb	r1,[r14+8]
	add	r15,4,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_SerialDriver_2:
	.word	_sourceFileName
	.word	_Label_3727
	.word	4		! total size of parameters
	.word	0		! frame size = 0
	.word	_Label_3728
	.word	4		! size of self
	.word	8		! offset of self
	.word	0
_Label_3727:
	.ascii	"SerialDriver"
	.ascii	"::"
	.ascii	"GetChar\0"
	.align
_Label_3728:
	.ascii	"Pself\0"
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
	mov	3490,r13		! source line 3490
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! RETURN STATEMENT...
	mov	3490,r13		! source line 3490
	mov	"\0\0RE",r10
	add	r15,4,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_SerialDriver_3:
	.word	_sourceFileName
	.word	_Label_3729
	.word	8		! total size of parameters
	.word	0		! frame size = 0
	.word	_Label_3730
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_3731
	.word	12
	.word	1
	.word	0
_Label_3729:
	.ascii	"SerialDriver"
	.ascii	"::"
	.ascii	"PutChar\0"
	.align
_Label_3730:
	.ascii	"Pself\0"
	.align
_Label_3731:
	.byte	'C'
	.ascii	"value\0"
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
	mov	22,r1
_Label_3938:
	push	r0
	sub	r1,1,r1
	bne	_Label_3938
	mov	3496,r13		! source line 3496
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! SEND STATEMENT...
	mov	3506,r13		! source line 3506
	mov	"\0\0SE",r10
!   _temp_3732 = &serialNeedsAttention
	load	[r14+8],r1
	add	r1,124,r1
	store	r1,[r14+-76]
!   Send message Down
	load	[r14+-76],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! ASSIGNMENT STATEMENT...
	mov	3509,r13		! source line 3509
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
	store	r1,[r14+-80]
! ASSIGNMENT STATEMENT...
	mov	3512,r13		! source line 3512
	mov	"\0\0AS",r10
!   character_available_bit = serial_status_word AND 1		(int)
	load	[r14+-80],r1
	mov	1,r2
	and	r1,r2,r1
	store	r1,[r14+-84]
! IF STATEMENT...
	mov	3515,r13		! source line 3515
	mov	"\0\0IF",r10
!   if character_available_bit != 1 then goto _Label_3734		(int)
	load	[r14+-84],r1
	mov	1,r2
	cmp	r1,r2
	bne	_Label_3734
!	jmp	_Label_3733
_Label_3733:
! THEN...
	mov	3517,r13		! source line 3517
	mov	"\0\0TN",r10
! SEND STATEMENT...
	mov	3517,r13		! source line 3517
	mov	"\0\0SE",r10
!   _temp_3735 = &serialLock
	load	[r14+8],r1
	add	r1,12,r1
	store	r1,[r14+-72]
!   Send message Lock
	load	[r14+-72],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! ASSIGNMENT STATEMENT...
	mov	3520,r13		! source line 3520
	mov	"\0\0AS",r10
!   if intIsZero (serial_data_word_address) then goto _runtimeErrorNullPointer
	load	[r14+8],r1
	load	[r1+8],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Data Move: _temp_3736 = *serial_data_word_address  (sizeInBytes=4)
	load	[r14+8],r1
	load	[r1+8],r1
	load	[r1],r1
	store	r1,[r14+-68]
!   inChar = intToChar (_temp_3736)
	load	[r14+-68],r1
	storeb	r1,[r14+-9]
! IF STATEMENT...
	mov	3523,r13		! source line 3523
	mov	"\0\0IF",r10
!   if intIsZero (getBufferSize) then goto _Label_3737
	load	[r14+8],r1
	load	[r1+48],r1
	cmp	r1,r0
	be	_Label_3737
	jmp	_Label_3738
_Label_3737:
! THEN...
	mov	3524,r13		! source line 3524
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_3739 = _StringConst_188
	set	_StringConst_188,r1
	store	r1,[r14+-64]
!   Prepare Argument: offset=8  value=_temp_3739  sizeInBytes=4
	load	[r14+-64],r1
	store	r1,[r15+0]
!   Call the function
	mov	3524,r13		! source line 3524
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=inChar  sizeInBytes=1
	loadb	[r14+-9],r1
	storeb	r1,[r15+0]
!   Call the function
	mov	3525,r13		! source line 3525
	mov	"\0\0CE",r10
	call	printChar
! CALL STATEMENT...
!   _temp_3740 = _StringConst_189
	set	_StringConst_189,r1
	store	r1,[r14+-60]
!   Prepare Argument: offset=8  value=_temp_3740  sizeInBytes=4
	load	[r14+-60],r1
	store	r1,[r15+0]
!   Call the function
	mov	3526,r13		! source line 3526
	mov	"\0\0CE",r10
	call	print
	jmp	_Label_3741
_Label_3738:
! ELSE...
	mov	3530,r13		! source line 3530
	mov	"\0\0EL",r10
! ASSIGNMENT STATEMENT...
	mov	3530,r13		! source line 3530
	mov	"\0\0AS",r10
!   _temp_3742 = &getBuffer
	load	[r14+8],r1
	add	r1,32,r1
	store	r1,[r14+-56]
!   Move address of _temp_3742 [getBufferNextIn ] into _temp_3743
!     make sure index expr is >= 0
	load	[r14+8],r2
	load	[r2+52],r2
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
	set	1,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-52]
!   Data Move: *_temp_3743 = inChar  (sizeInBytes=1)
	loadb	[r14+-9],r1
	load	[r14+-52],r2
	storeb	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	3531,r13		! source line 3531
	mov	"\0\0AS",r10
!   _temp_3744 = getBufferNextIn + 1		(int)
	load	[r14+8],r1
	load	[r1+52],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-48]
!   getBufferNextIn = _temp_3744 rem 10		(int)
	load	[r14+-48],r1
	mov	10,r2
	cmp	r2,0
	be	_runtimeErrorZeroDivide
	rem	r1,r2,r1
	bvs	_runtimeErrorOverflow
	load	[r14+8],r2
	store	r1,[r2+52]
! SEND STATEMENT...
	mov	3532,r13		! source line 3532
	mov	"\0\0SE",r10
!   _temp_3745 = &serialLock
	load	[r14+8],r1
	add	r1,12,r1
	store	r1,[r14+-44]
!   _temp_3746 = &getCharacterAvail
	load	[r14+8],r1
	add	r1,60,r1
	store	r1,[r14+-40]
!   Prepare Argument: offset=12  value=_temp_3745  sizeInBytes=4
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
_Label_3741:
! SEND STATEMENT...
	mov	3535,r13		! source line 3535
	mov	"\0\0SE",r10
!   _temp_3747 = &serialLock
	load	[r14+8],r1
	add	r1,12,r1
	store	r1,[r14+-36]
!   Send message Unlock
	load	[r14+-36],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
! END IF...
_Label_3734:
! ASSIGNMENT STATEMENT...
	mov	3542,r13		! source line 3542
	mov	"\0\0AS",r10
!   output_ready_bit = serial_status_word AND 2		(int)
	load	[r14+-80],r1
	mov	2,r2
	and	r1,r2,r1
	store	r1,[r14+-88]
! IF STATEMENT...
	mov	3544,r13		! source line 3544
	mov	"\0\0IF",r10
!   if output_ready_bit != 1 then goto _Label_3749		(int)
	load	[r14+-88],r1
	mov	1,r2
	cmp	r1,r2
	bne	_Label_3749
!	jmp	_Label_3748
_Label_3748:
! THEN...
	mov	3546,r13		! source line 3546
	mov	"\0\0TN",r10
! SEND STATEMENT...
	mov	3546,r13		! source line 3546
	mov	"\0\0SE",r10
!   _temp_3750 = &serialLock
	load	[r14+8],r1
	add	r1,12,r1
	store	r1,[r14+-32]
!   Send message Lock
	load	[r14+-32],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! IF STATEMENT...
	mov	3549,r13		! source line 3549
	mov	"\0\0IF",r10
!   if intIsZero (putBufferSize) then goto _Label_3752
	load	[r14+8],r1
	load	[r1+92],r1
	cmp	r1,r0
	be	_Label_3752
!	jmp	_Label_3751
_Label_3751:
! THEN...
	mov	3550,r13		! source line 3550
	mov	"\0\0TN",r10
! WHILE STATEMENT...
	mov	3550,r13		! source line 3550
	mov	"\0\0WH",r10
_Label_3753:
!   if putBufferSize <= 0 then goto _Label_3755		(int)
	load	[r14+8],r1
	load	[r1+92],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	ble	_Label_3755
!	jmp	_Label_3754
_Label_3754:
	mov	3550,r13		! source line 3550
	mov	"\0\0WB",r10
! ASSIGNMENT STATEMENT...
	mov	3551,r13		! source line 3551
	mov	"\0\0AS",r10
!   _temp_3756 = &putBuffer
	load	[r14+8],r1
	add	r1,76,r1
	store	r1,[r14+-28]
!   Move address of _temp_3756 [putBufferNextOut ] into _temp_3757
!     make sure index expr is >= 0
	load	[r14+8],r2
	load	[r2+100],r2
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
	set	1,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-24]
!   Data Move: outChar = *_temp_3757  (sizeInBytes=1)
	load	[r14+-24],r1
	loadb	[r1],r1
	storeb	r1,[r14+-10]
! ASSIGNMENT STATEMENT...
	mov	3552,r13		! source line 3552
	mov	"\0\0AS",r10
!   if intIsZero (serial_data_word_address) then goto _runtimeErrorNullPointer
	load	[r14+8],r1
	load	[r1+8],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3758 = charToInt (outChar)
	loadb	[r14+-10],r1
	sll	r1,24,r1
	sra	r1,24,r1
	store	r1,[r14+-20]
!   Data Move: *serial_data_word_address = _temp_3758  (sizeInBytes=4)
	load	[r14+-20],r1
	load	[r14+8],r2
	load	[r2+8],r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	3553,r13		! source line 3553
	mov	"\0\0AS",r10
!   putBufferSize = putBufferSize - 1		(int)
	load	[r14+8],r1
	load	[r1+92],r1
	mov	1,r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	load	[r14+8],r2
	store	r1,[r2+92]
! ASSIGNMENT STATEMENT...
	mov	3554,r13		! source line 3554
	mov	"\0\0AS",r10
!   _temp_3759 = putBufferNextOut + 1		(int)
	load	[r14+8],r1
	load	[r1+100],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-16]
!   putBufferNextOut = _temp_3759 rem 10		(int)
	load	[r14+-16],r1
	mov	10,r2
	cmp	r2,0
	be	_runtimeErrorZeroDivide
	rem	r1,r2,r1
	bvs	_runtimeErrorOverflow
	load	[r14+8],r2
	store	r1,[r2+100]
! END WHILE...
	jmp	_Label_3753
_Label_3755:
! END IF...
_Label_3752:
! END IF...
_Label_3749:
! RETURN STATEMENT...
	mov	3544,r13		! source line 3544
	mov	"\0\0RE",r10
	add	r15,92,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_SerialDriver_4:
	.word	_sourceFileName
	.word	_Label_3760
	.word	4		! total size of parameters
	.word	88		! frame size = 88
	.word	_Label_3761
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_3762
	.word	-16
	.word	4
	.word	_Label_3763
	.word	-20
	.word	4
	.word	_Label_3764
	.word	-24
	.word	4
	.word	_Label_3765
	.word	-28
	.word	4
	.word	_Label_3766
	.word	-32
	.word	4
	.word	_Label_3767
	.word	-36
	.word	4
	.word	_Label_3768
	.word	-40
	.word	4
	.word	_Label_3769
	.word	-44
	.word	4
	.word	_Label_3770
	.word	-48
	.word	4
	.word	_Label_3771
	.word	-52
	.word	4
	.word	_Label_3772
	.word	-56
	.word	4
	.word	_Label_3773
	.word	-60
	.word	4
	.word	_Label_3774
	.word	-64
	.word	4
	.word	_Label_3775
	.word	-68
	.word	4
	.word	_Label_3776
	.word	-72
	.word	4
	.word	_Label_3777
	.word	-76
	.word	4
	.word	_Label_3778
	.word	-80
	.word	4
	.word	_Label_3779
	.word	-84
	.word	4
	.word	_Label_3780
	.word	-88
	.word	4
	.word	_Label_3781
	.word	-9
	.word	1
	.word	_Label_3782
	.word	-10
	.word	1
	.word	0
_Label_3760:
	.ascii	"SerialDriver"
	.ascii	"::"
	.ascii	"SerialHandler\0"
	.align
_Label_3761:
	.ascii	"Pself\0"
	.align
_Label_3762:
	.byte	'?'
	.ascii	"_temp_3759\0"
	.align
_Label_3763:
	.byte	'?'
	.ascii	"_temp_3758\0"
	.align
_Label_3764:
	.byte	'?'
	.ascii	"_temp_3757\0"
	.align
_Label_3765:
	.byte	'?'
	.ascii	"_temp_3756\0"
	.align
_Label_3766:
	.byte	'?'
	.ascii	"_temp_3750\0"
	.align
_Label_3767:
	.byte	'?'
	.ascii	"_temp_3747\0"
	.align
_Label_3768:
	.byte	'?'
	.ascii	"_temp_3746\0"
	.align
_Label_3769:
	.byte	'?'
	.ascii	"_temp_3745\0"
	.align
_Label_3770:
	.byte	'?'
	.ascii	"_temp_3744\0"
	.align
_Label_3771:
	.byte	'?'
	.ascii	"_temp_3743\0"
	.align
_Label_3772:
	.byte	'?'
	.ascii	"_temp_3742\0"
	.align
_Label_3773:
	.byte	'?'
	.ascii	"_temp_3740\0"
	.align
_Label_3774:
	.byte	'?'
	.ascii	"_temp_3739\0"
	.align
_Label_3775:
	.byte	'?'
	.ascii	"_temp_3736\0"
	.align
_Label_3776:
	.byte	'?'
	.ascii	"_temp_3735\0"
	.align
_Label_3777:
	.byte	'?'
	.ascii	"_temp_3732\0"
	.align
_Label_3778:
	.byte	'I'
	.ascii	"serial_status_word\0"
	.align
_Label_3779:
	.byte	'I'
	.ascii	"character_available_bit\0"
	.align
_Label_3780:
	.byte	'I'
	.ascii	"output_ready_bit\0"
	.align
_Label_3781:
	.byte	'C'
	.ascii	"inChar\0"
	.align
_Label_3782:
	.byte	'C'
	.ascii	"outChar\0"
	.align
