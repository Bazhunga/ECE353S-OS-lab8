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
_StringConst_188:
	.word	14			! length
	.ascii	"\' was ignored\n"
	.align
_StringConst_187:
	.word	42			! length
	.ascii	"\nSerial input buffer overrun - character \'"
	.align
_StringConst_186:
	.word	19			! length
	.ascii	"serialHandlerThread"
	.align
_StringConst_185:
	.word	30			! length
	.ascii	"Initializing Serial Driver...\n"
	.align
_StringConst_184:
	.word	60			! length
	.ascii	"LoadExecutable: Invalid file format - missing separator (3)\n"
	.align
_StringConst_183:
	.word	50			! length
	.ascii	"LoadExecutable: Problems reading from file (text)\n"
	.align
_StringConst_182:
	.word	60			! length
	.ascii	"LoadExecutable: Invalid file format - missing separator (2)\n"
	.align
_StringConst_181:
	.word	50			! length
	.ascii	"LoadExecutable: Problems reading from file (text)\n"
	.align
_StringConst_180:
	.word	60			! length
	.ascii	"LoadExecutable: Invalid file format - missing separator (1)\n"
	.align
_StringConst_179:
	.word	40			! length
	.ascii	"LoadExecutable: MAX_PAGES_PER_VIRT_SPACE"
	.align
_StringConst_178:
	.word	53			! length
	.ascii	"LoadExecutable: Number of pages in this address space"
	.align
_StringConst_177:
	.word	61			! length
	.ascii	"LoadExecutable: This virtual address space exceeds the limit\n"
	.align
_StringConst_176:
	.word	49			! length
	.ascii	"LoadExecutable: bssStart != dataStart + dataSize\n"
	.align
_StringConst_175:
	.word	65			! length
	.ascii	"LoadExecutable: The bss segment size not a multiple of page size\n"
	.align
_StringConst_174:
	.word	50			! length
	.ascii	"LoadExecutable: dataStart != textStart + textSize\n"
	.align
_StringConst_173:
	.word	66			! length
	.ascii	"LoadExecutable: The data segment size not a multiple of page size\n"
	.align
_StringConst_172:
	.word	95			! length
	.ascii	"LoadExecutable: The environment size does not match the \'loadAddr\' info supplied to the linker\n"
	.align
_StringConst_171:
	.word	66			! length
	.ascii	"LoadExecutable: The text segment size not a multiple of page size\n"
	.align
_StringConst_170:
	.word	33			! length
	.ascii	"LoadExecutable: Bad magic number\n"
	.align
_StringConst_169:
	.word	55			! length
	.ascii	"LoadExecutable: This virtual address space is not empty"
	.align
_StringConst_168:
	.word	32			! length
	.ascii	"Within ReadInt: ReadBytes failed"
	.align
_StringConst_167:
	.word	5			! length
	.ascii	"null\n"
	.align
_StringConst_166:
	.word	6			! length
	.ascii	", fcb="
	.align
_StringConst_165:
	.word	28			! length
	.ascii	"    OPEN FILE:   currentPos="
	.align
_StringConst_164:
	.word	26			! length
	.ascii	",  relativeSectorInBuffer="
	.align
_StringConst_163:
	.word	13			! length
	.ascii	",  bufferPtr="
	.align
_StringConst_162:
	.word	21			! length
	.ascii	",  sizeOfFileInBytes="
	.align
_StringConst_161:
	.word	18			! length
	.ascii	",  startingSector="
	.align
_StringConst_160:
	.word	17			! length
	.ascii	",  numberOfUsers="
	.align
_StringConst_159:
	.word	6			! length
	.ascii	"fcbID="
	.align
_StringConst_158:
	.word	48			! length
	.ascii	"FileManager.SynchWrite: file not properly opened"
	.align
_StringConst_157:
	.word	47			! length
	.ascii	"FileManager.SynchRead: file not properly opened"
	.align
_StringConst_156:
	.word	67			! length
	.ascii	"FileManager.Flush: buffer is dirty but relativeSectorInBuffer =  -1"
	.align
_StringConst_155:
	.word	72			! length
	.ascii	"In FileManager.Open: a free FCB appears not to have been closed properly"
	.align
_StringConst_154:
	.word	51			! length
	.ascii	"Magic number in sector 0 of stub file system is bad"
	.align
_StringConst_153:
	.word	36			! length
	.ascii	"Here is the FREE list of OpenFiles:\n"
	.align
_StringConst_152:
	.word	3			! length
	.ascii	":  "
	.align
_StringConst_151:
	.word	5			! length
	.ascii	":  0x"
	.align
_StringConst_150:
	.word	2			! length
	.ascii	"  "
	.align
_StringConst_149:
	.word	30			! length
	.ascii	"Here is the OpenFile table...\n"
	.align
_StringConst_148:
	.word	47			! length
	.ascii	"Here is the FREE list of FileControlBlocks:\n   "
	.align
_StringConst_147:
	.word	3			! length
	.ascii	":  "
	.align
_StringConst_146:
	.word	2			! length
	.ascii	"  "
	.align
_StringConst_145:
	.word	38			! length
	.ascii	"Here is the FileControlBlock table...\n"
	.align
_StringConst_144:
	.word	29			! length
	.ascii	"Initializing File Manager...\n"
	.align
_StringConst_143:
	.word	40			! length
	.ascii	"SynchWriteSector: Unexpected status code"
	.align
_StringConst_142:
	.word	52			! length
	.ascii	"Disk I/O error in SynchWriteSector: Bad command word"
	.align
_StringConst_141:
	.word	95			! length
	.ascii	"Disk I/O error in SynchWriteSector: Bad sectorAddr or sectorCount specifies non-existant sector"
	.align
_StringConst_140:
	.word	76			! length
	.ascii	"Disk I/O error in SynchWriteSector: Attempt to access invalid memory address"
	.align
_StringConst_139:
	.word	99			! length
	.ascii	"Disk I/O error in SynchWriteSector: Memory addr is not page-aligned or sector count is not positive"
	.align
_StringConst_138:
	.word	39			! length
	.ascii	"SynchReadSector: Unexpected status code"
	.align
_StringConst_137:
	.word	51			! length
	.ascii	"Disk I/O error in SynchReadSector: Bad command word"
	.align
_StringConst_136:
	.word	94			! length
	.ascii	"Disk I/O error in SynchReadSector: Bad sectorAddr or sectorCount specifies non-existant sector"
	.align
_StringConst_135:
	.word	75			! length
	.ascii	"Disk I/O error in SynchReadSector: Attempt to access invalid memory address"
	.align
_StringConst_134:
	.word	98			! length
	.ascii	"Disk I/O error in SynchReadSector: Memory addr is not page-aligned or sector count is not positive"
	.align
_StringConst_133:
	.word	28			! length
	.ascii	"Initializing Disk Driver...\n"
	.align
_StringConst_132:
	.word	38			! length
	.ascii	"  Virtual page is not marked VALID!!!\n"
	.align
_StringConst_131:
	.word	38			! length
	.ascii	"  Virtual page number is too large!!!\n"
	.align
_StringConst_130:
	.word	3			! length
	.ascii	"   "
	.align
_StringConst_129:
	.word	3			! length
	.ascii	"YES"
	.align
_StringConst_128:
	.word	6			! length
	.ascii	"      "
	.align
_StringConst_127:
	.word	3			! length
	.ascii	"   "
	.align
_StringConst_126:
	.word	3			! length
	.ascii	"YES"
	.align
_StringConst_125:
	.word	9			! length
	.ascii	"         "
	.align
_StringConst_124:
	.word	3			! length
	.ascii	"   "
	.align
_StringConst_123:
	.word	3			! length
	.ascii	"YES"
	.align
_StringConst_122:
	.word	6			! length
	.ascii	"      "
	.align
_StringConst_121:
	.word	3			! length
	.ascii	"   "
	.align
_StringConst_120:
	.word	3			! length
	.ascii	"YES"
	.align
_StringConst_119:
	.word	5			! length
	.ascii	"     "
	.align
_StringConst_118:
	.word	10			! length
	.ascii	"          "
	.align
_StringConst_117:
	.word	4			! length
	.ascii	"    "
	.align
_StringConst_116:
	.word	2			! length
	.ascii	"  "
	.align
_StringConst_115:
	.word	5			! length
	.ascii	"     "
	.align
_StringConst_114:
	.word	3			! length
	.ascii	":  "
	.align
_StringConst_113:
	.word	5			! length
	.ascii	"     "
	.align
_StringConst_112:
	.word	109			! length
	.ascii	"     ==========   ==========     ==========  ==========  ==============  =====  ==========  =========  =====\n"
	.align
_StringConst_111:
	.word	109			! length
	.ascii	"        addr        entry          Virtual    Physical   Undefined Bits  Dirty  Referenced  Writeable  Valid\n"
	.align
_StringConst_110:
	.word	35			! length
	.ascii	"  Here are the frames in use: \n    "
	.align
_StringConst_109:
	.word	18			! length
	.ascii	"  numberFreeFrames"
	.align
_StringConst_108:
	.word	15			! length
	.ascii	"FRAME MANAGER:\n"
	.align
_StringConst_107:
	.word	89			! length
	.ascii	"Kernel code size appears to have grown too large and is overflowing into the frame region"
	.align
_StringConst_106:
	.word	30			! length
	.ascii	"Initializing Frame Manager...\n"
	.align
_StringConst_105:
	.word	22			! length
	.ascii	"Should never be called"
	.align
_StringConst_104:
	.word	50			! length
	.ascii	"Here is the FREE list of ProcessControlBlocks:\n   "
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
	.word	50			! length
	.ascii	"Here is the FREE list of ProcessControlBlocks:\n   "
	.align
_StringConst_100:
	.word	1			! length
	.ascii	":"
	.align
_StringConst_99:
	.word	2			! length
	.ascii	"  "
	.align
_StringConst_98:
	.word	29			! length
	.ascii	"Here is the process table...\n"
	.align
_StringConst_97:
	.word	32			! length
	.ascii	"Initializing Process Manager...\n"
	.align
_StringConst_96:
	.word	13			! length
	.ascii	", exitStatus="
	.align
_StringConst_95:
	.word	13			! length
	.ascii	", parentsPid="
	.align
_StringConst_94:
	.word	33			! length
	.ascii	"Bad status in ProcessControlBlock"
	.align
_StringConst_93:
	.word	4			! length
	.ascii	"FREE"
	.align
_StringConst_92:
	.word	6			! length
	.ascii	"ZOMBIE"
	.align
_StringConst_91:
	.word	6			! length
	.ascii	"ACTIVE"
	.align
_StringConst_90:
	.word	9			! length
	.ascii	", status="
	.align
_StringConst_89:
	.word	8			! length
	.ascii	")   pid="
	.align
_StringConst_88:
	.word	30			! length
	.ascii	"  ProcessControlBlock   (addr="
	.align
_StringConst_87:
	.word	15			! length
	.ascii	"    myThread = "
	.align
_StringConst_86:
	.word	37			! length
	.ascii	"Here is the FREE list of Threads:\n   "
	.align
_StringConst_85:
	.word	1			! length
	.ascii	":"
	.align
_StringConst_84:
	.word	2			! length
	.ascii	"  "
	.align
_StringConst_83:
	.word	28			! length
	.ascii	"Here is the thread table...\n"
	.align
_StringConst_82:
	.word	6			! length
	.ascii	"thread"
	.align
_StringConst_81:
	.word	31			! length
	.ascii	"Initializing Thread Manager...\n"
	.align
_StringConst_80:
	.word	1			! length
	.ascii	"\n"
	.align
_StringConst_79:
	.word	3			! length
	.ascii	"   "
	.align
_StringConst_78:
	.word	2			! length
	.ascii	": "
	.align
_StringConst_77:
	.word	7			! length
	.ascii	"      r"
	.align
_StringConst_76:
	.word	20			! length
	.ascii	"    user registers:\n"
	.align
_StringConst_75:
	.word	20			! length
	.ascii	"    is user thread: "
	.align
_StringConst_74:
	.word	20			! length
	.ascii	"Bad status in Thread"
	.align
_StringConst_73:
	.word	20			! length
	.ascii	"    status = UNUSED\n"
	.align
_StringConst_72:
	.word	21			! length
	.ascii	"    status = BLOCKED\n"
	.align
_StringConst_71:
	.word	21			! length
	.ascii	"    status = RUNNING\n"
	.align
_StringConst_70:
	.word	19			! length
	.ascii	"    status = READY\n"
	.align
_StringConst_69:
	.word	26			! length
	.ascii	"    status = JUST_CREATED\n"
	.align
_StringConst_68:
	.word	23			! length
	.ascii	"    stack starting addr"
	.align
_StringConst_67:
	.word	12			! length
	.ascii	"    stackTop"
	.align
_StringConst_66:
	.word	1			! length
	.ascii	"\n"
	.align
_StringConst_65:
	.word	3			! length
	.ascii	"   "
	.align
_StringConst_64:
	.word	2			! length
	.ascii	": "
	.align
_StringConst_63:
	.word	7			! length
	.ascii	"      r"
	.align
_StringConst_62:
	.word	19			! length
	.ascii	"    machine state:\n"
	.align
_StringConst_61:
	.word	2			! length
	.ascii	")\n"
	.align
_StringConst_60:
	.word	29			! length
	.ascii	"\"    (addr of Thread object: "
	.align
_StringConst_59:
	.word	10			! length
	.ascii	"  Thread \""
	.align
_StringConst_58:
	.word	32			! length
	.ascii	"System stack underflow detected!"
	.align
_StringConst_57:
	.word	31			! length
	.ascii	"System stack overflow detected!"
	.align
_StringConst_56:
	.word	48			! length
	.ascii	"Ready list should always contain the idle thread"
	.align
_StringConst_55:
	.word	31			! length
	.ascii	"In Sleep, self != currentThread"
	.align
_StringConst_54:
	.word	44			! length
	.ascii	"In Sleep, currentInterruptStatus != DISABLED"
	.align
_StringConst_53:
	.word	51			! length
	.ascii	"Status of current thread should be READY or RUNNING"
	.align
_StringConst_52:
	.word	31			! length
	.ascii	"In Yield, self != currentThread"
	.align
_StringConst_51:
	.word	54			! length
	.ascii	"Attempt to broadcast a condition when lock is not held"
	.align
_StringConst_50:
	.word	52			! length
	.ascii	"Attempt to signal a condition when mutex is not held"
	.align
_StringConst_49:
	.word	51			! length
	.ascii	"Attempt to wait on condition when mutex is not held"
	.align
_StringConst_48:
	.word	52			! length
	.ascii	"Attempt to unlock a mutex by a thread not holding it"
	.align
_StringConst_47:
	.word	54			! length
	.ascii	"Attempt to lock a mutex by a thread already holding it"
	.align
_StringConst_46:
	.word	51			! length
	.ascii	"Semaphore count underflowed during \'Down\' operation"
	.align
_StringConst_45:
	.word	48			! length
	.ascii	"Semaphore count overflowed during \'Up\' operation"
	.align
_StringConst_44:
	.word	39			! length
	.ascii	"Semaphore created with initialCount < 0"
	.align
_StringConst_43:
	.word	3			! length
	.ascii	":  "
	.align
_StringConst_42:
	.word	4			! length
	.ascii	"  0x"
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
	be	_Label_197
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
_Label_197:
	mov	0,r1
! Make sure _P_System_ has hash value 0x9e9d23b6 (decimal -1633868874)
	set	_packageName,r2
	set	0x9e9d23b6,r3
	call	_CheckVersion_P_System_
	.import	_CheckVersion_P_System_
	cmp	r1,0
	bne	_Label_198
! Make sure _P_BitMap_ has hash value 0xa596b1b5 (decimal -1516850763)
	set	_packageName,r2
	set	0xa596b1b5,r3
	call	_CheckVersion_P_BitMap_
	.import	_CheckVersion_P_BitMap_
	cmp	r1,0
	bne	_Label_198
! Make sure _P_List_ has hash value 0xafebcabb (decimal -1343501637)
	set	_packageName,r2
	set	0xafebcabb,r3
	call	_CheckVersion_P_List_
	.import	_CheckVersion_P_List_
	cmp	r1,0
	bne	_Label_198
_Label_198:
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
_Label_3766:
	push	r0
	sub	r1,1,r1
	bne	_Label_3766
	mov	7,r13		! source line 7
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   Call the function
	mov	14,r13		! source line 14
	mov	"\0\0CE",r10
	call	Cleari
! CALL STATEMENT...
!   _temp_199 = _StringConst_1
	set	_StringConst_1,r1
	store	r1,[r14+-60]
!   Prepare Argument: offset=8  value=_temp_199  sizeInBytes=4
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
_Label_3767:
	store	r0,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_3767
!   _P_Kernel_mainThread = _P_Kernel_Thread
	set	_P_Kernel_Thread,r1
	set	_P_Kernel_mainThread,r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	19,r13		! source line 19
	mov	"\0\0SE",r10
!   _temp_203 = _StringConst_2
	set	_StringConst_2,r1
	store	r1,[r14+-44]
!   _temp_204 = &_P_Kernel_mainThread
	set	_P_Kernel_mainThread,r1
	store	r1,[r14+-40]
!   Prepare Argument: offset=12  value=_temp_203  sizeInBytes=4
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
!   _temp_205 = &_P_Kernel_mainThread
	set	_P_Kernel_mainThread,r1
	store	r1,[r14+-36]
!   _temp_206 = _temp_205 + 76
	load	[r14+-36],r1
	add	r1,76,r1
	store	r1,[r14+-32]
!   Data Move: *_temp_206 = 3  (sizeInBytes=4)
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
_Label_3768:
	store	r0,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_3768
!   _P_Kernel_idleThread = _P_Kernel_Thread
	set	_P_Kernel_Thread,r1
	set	_P_Kernel_idleThread,r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	22,r13		! source line 22
	mov	"\0\0SE",r10
!   _temp_208 = _StringConst_3
	set	_StringConst_3,r1
	store	r1,[r14+-24]
!   _temp_209 = &_P_Kernel_idleThread
	set	_P_Kernel_idleThread,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=12  value=_temp_208  sizeInBytes=4
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
!   _temp_210 = _function_196_IdleFunction
	set	_function_196_IdleFunction,r1
	store	r1,[r14+-16]
!   _temp_211 = &_P_Kernel_idleThread
	set	_P_Kernel_idleThread,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=12  value=_temp_210  sizeInBytes=4
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
	.word	_Label_212
	.word	0		! total size of parameters
	.word	64		! frame size = 64
	.word	_Label_213
	.word	-12
	.word	4
	.word	_Label_214
	.word	-16
	.word	4
	.word	_Label_215
	.word	-20
	.word	4
	.word	_Label_216
	.word	-24
	.word	4
	.word	_Label_217
	.word	-28
	.word	4
	.word	_Label_218
	.word	-32
	.word	4
	.word	_Label_219
	.word	-36
	.word	4
	.word	_Label_220
	.word	-40
	.word	4
	.word	_Label_221
	.word	-44
	.word	4
	.word	_Label_222
	.word	-48
	.word	4
	.word	_Label_223
	.word	-52
	.word	4
	.word	_Label_224
	.word	-56
	.word	4
	.word	_Label_225
	.word	-60
	.word	4
	.word	0
_Label_212:
	.ascii	"InitializeScheduler\0"
	.align
_Label_213:
	.byte	'?'
	.ascii	"_temp_211\0"
	.align
_Label_214:
	.byte	'?'
	.ascii	"_temp_210\0"
	.align
_Label_215:
	.byte	'?'
	.ascii	"_temp_209\0"
	.align
_Label_216:
	.byte	'?'
	.ascii	"_temp_208\0"
	.align
_Label_217:
	.byte	'?'
	.ascii	"_temp_207\0"
	.align
_Label_218:
	.byte	'?'
	.ascii	"_temp_206\0"
	.align
_Label_219:
	.byte	'?'
	.ascii	"_temp_205\0"
	.align
_Label_220:
	.byte	'?'
	.ascii	"_temp_204\0"
	.align
_Label_221:
	.byte	'?'
	.ascii	"_temp_203\0"
	.align
_Label_222:
	.byte	'?'
	.ascii	"_temp_202\0"
	.align
_Label_223:
	.byte	'?'
	.ascii	"_temp_201\0"
	.align
_Label_224:
	.byte	'?'
	.ascii	"_temp_200\0"
	.align
_Label_225:
	.byte	'?'
	.ascii	"_temp_199\0"
	.align
! 
! ===============  FUNCTION IdleFunction  ===============
! 
_function_196_IdleFunction:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__function_196_IdleFunction,r1
	push	r1
	mov	3,r1
_Label_3769:
	push	r0
	sub	r1,1,r1
	bne	_Label_3769
	mov	32,r13		! source line 32
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! WHILE STATEMENT...
	mov	42,r13		! source line 42
	mov	"\0\0WH",r10
_Label_226:
!	jmp	_Label_227
_Label_227:
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
!   _temp_231 = &_P_Kernel_readyList
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
!   if result==true then goto _Label_229 else goto _Label_230
	loadb	[r15],r1
	cmp	r1,0
	be	_Label_230
	jmp	_Label_229
_Label_229:
! THEN...
	mov	45,r13		! source line 45
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   Call the function
	mov	45,r13		! source line 45
	mov	"\0\0CE",r10
	call	Wait
	jmp	_Label_232
_Label_230:
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
_Label_232:
! END WHILE...
	jmp	_Label_226
_Label_228:
! 
! Routine Descriptor
! 
_RoutineDescriptor__function_196_IdleFunction:
	.word	_sourceFileName
	.word	_Label_233
	.word	4		! total size of parameters
	.word	12		! frame size = 12
	.word	_Label_234
	.word	8
	.word	4
	.word	_Label_235
	.word	-12
	.word	4
	.word	_Label_236
	.word	-16
	.word	4
	.word	0
_Label_233:
	.ascii	"IdleFunction\0"
	.align
_Label_234:
	.byte	'I'
	.ascii	"arg\0"
	.align
_Label_235:
	.byte	'?'
	.ascii	"_temp_231\0"
	.align
_Label_236:
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
_Label_3770:
	push	r0
	sub	r1,1,r1
	bne	_Label_3770
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
!   _temp_239 = prevThread + 4092
	load	[r14+-76],r1
	add	r1,4092,r1
	store	r1,[r14+-72]
!   if boolIsZero (_temp_239 ) then goto _Label_238		(int)
	load	[r14+-72],r1
	loadb	[r1],r1
	cmp	r1,r0
	be	_Label_238
!	jmp	_Label_237
_Label_237:
! THEN...
	mov	71,r13		! source line 71
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   if intIsZero (prevThread) then goto _runtimeErrorNullPointer
	load	[r14+-76],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_241 = prevThread + 4096
	load	[r14+-76],r1
	add	r1,4096,r1
	store	r1,[r14+-64]
!   Move address of _temp_241 [0 ] into _temp_242
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
!   _temp_240 = _temp_242		(4 bytes)
	load	[r14+-60],r1
	store	r1,[r14+-68]
!   Prepare Argument: offset=8  value=_temp_240  sizeInBytes=4
	load	[r14+-68],r1
	store	r1,[r15+0]
!   Call the function
	mov	71,r13		! source line 71
	mov	"\0\0CE",r10
	call	SaveUserRegs
! END IF...
_Label_238:
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
!   _temp_243 = nextThread + 76
	load	[r14+8],r1
	add	r1,76,r1
	store	r1,[r14+-56]
!   Data Move: *_temp_243 = 3  (sizeInBytes=4)
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
_Label_244:
	mov	84,r13		! source line 84
	mov	"\0\0SE",r10
!   _temp_248 = &_P_Kernel_threadsToBeDestroyed
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
!   Retrieve Result: targetName=_temp_247  sizeInBytes=1
	loadb	[r15],r1
	storeb	r1,[r14+-9]
!   if _temp_247 then goto _Label_246 else goto _Label_245
	loadb	[r14+-9],r1
	cmp	r1,0
	be	_Label_245
	jmp	_Label_246
_Label_245:
	mov	84,r13		! source line 84
	mov	"\0\0WB",r10
! ASSIGNMENT STATEMENT...
	mov	85,r13		! source line 85
	mov	"\0\0AS",r10
	mov	85,r13		! source line 85
	mov	"\0\0SE",r10
!   _temp_249 = &_P_Kernel_threadsToBeDestroyed
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
!   _temp_250 = &_P_Kernel_threadManager
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
	jmp	_Label_244
_Label_246:
! IF STATEMENT...
	mov	89,r13		! source line 89
	mov	"\0\0IF",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_253 = _P_Kernel_currentThread + 4092
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4092,r1
	store	r1,[r14+-40]
!   if boolIsZero (_temp_253 ) then goto _Label_252		(int)
	load	[r14+-40],r1
	loadb	[r1],r1
	cmp	r1,r0
	be	_Label_252
!	jmp	_Label_251
_Label_251:
! THEN...
	mov	90,r13		! source line 90
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_255 = _P_Kernel_currentThread + 4096
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4096,r1
	store	r1,[r14+-32]
!   Move address of _temp_255 [0 ] into _temp_256
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
!   _temp_254 = _temp_256		(4 bytes)
	load	[r14+-28],r1
	store	r1,[r14+-36]
!   Prepare Argument: offset=8  value=_temp_254  sizeInBytes=4
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
!   _temp_258 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-20]
!   Data Move: _temp_257 = *_temp_258  (sizeInBytes=4)
	load	[r14+-20],r1
	load	[r1],r1
	store	r1,[r14+-24]
!   if intIsZero (_temp_257) then goto _runtimeErrorNullPointer
	load	[r14+-24],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_259 = _temp_257 + 32
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
_Label_252:
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
	.word	_Label_260
	.word	4		! total size of parameters
	.word	80		! frame size = 80
	.word	_Label_261
	.word	8
	.word	4
	.word	_Label_262
	.word	-16
	.word	4
	.word	_Label_263
	.word	-20
	.word	4
	.word	_Label_264
	.word	-24
	.word	4
	.word	_Label_265
	.word	-28
	.word	4
	.word	_Label_266
	.word	-32
	.word	4
	.word	_Label_267
	.word	-36
	.word	4
	.word	_Label_268
	.word	-40
	.word	4
	.word	_Label_269
	.word	-44
	.word	4
	.word	_Label_270
	.word	-48
	.word	4
	.word	_Label_271
	.word	-52
	.word	4
	.word	_Label_272
	.word	-9
	.word	1
	.word	_Label_273
	.word	-56
	.word	4
	.word	_Label_274
	.word	-60
	.word	4
	.word	_Label_275
	.word	-64
	.word	4
	.word	_Label_276
	.word	-68
	.word	4
	.word	_Label_277
	.word	-72
	.word	4
	.word	_Label_278
	.word	-76
	.word	4
	.word	_Label_279
	.word	-80
	.word	4
	.word	0
_Label_260:
	.ascii	"Run\0"
	.align
_Label_261:
	.byte	'P'
	.ascii	"nextThread\0"
	.align
_Label_262:
	.byte	'?'
	.ascii	"_temp_259\0"
	.align
_Label_263:
	.byte	'?'
	.ascii	"_temp_258\0"
	.align
_Label_264:
	.byte	'?'
	.ascii	"_temp_257\0"
	.align
_Label_265:
	.byte	'?'
	.ascii	"_temp_256\0"
	.align
_Label_266:
	.byte	'?'
	.ascii	"_temp_255\0"
	.align
_Label_267:
	.byte	'?'
	.ascii	"_temp_254\0"
	.align
_Label_268:
	.byte	'?'
	.ascii	"_temp_253\0"
	.align
_Label_269:
	.byte	'?'
	.ascii	"_temp_250\0"
	.align
_Label_270:
	.byte	'?'
	.ascii	"_temp_249\0"
	.align
_Label_271:
	.byte	'?'
	.ascii	"_temp_248\0"
	.align
_Label_272:
	.byte	'C'
	.ascii	"_temp_247\0"
	.align
_Label_273:
	.byte	'?'
	.ascii	"_temp_243\0"
	.align
_Label_274:
	.byte	'?'
	.ascii	"_temp_242\0"
	.align
_Label_275:
	.byte	'?'
	.ascii	"_temp_241\0"
	.align
_Label_276:
	.byte	'?'
	.ascii	"_temp_240\0"
	.align
_Label_277:
	.byte	'?'
	.ascii	"_temp_239\0"
	.align
_Label_278:
	.byte	'P'
	.ascii	"prevThread\0"
	.align
_Label_279:
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
_Label_3771:
	push	r0
	sub	r1,1,r1
	bne	_Label_3771
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
!   _temp_280 = _StringConst_4
	set	_StringConst_4,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_280  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   Call the function
	mov	105,r13		! source line 105
	mov	"\0\0CE",r10
	call	print
! SEND STATEMENT...
	mov	106,r13		! source line 106
	mov	"\0\0SE",r10
!   _temp_281 = _function_195_ThreadPrintShort
	set	_function_195_ThreadPrintShort,r1
	store	r1,[r14+-16]
!   _temp_282 = &_P_Kernel_readyList
	set	_P_Kernel_readyList,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=12  value=_temp_281  sizeInBytes=4
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
	.word	_Label_283
	.word	0		! total size of parameters
	.word	24		! frame size = 24
	.word	_Label_284
	.word	-12
	.word	4
	.word	_Label_285
	.word	-16
	.word	4
	.word	_Label_286
	.word	-20
	.word	4
	.word	_Label_287
	.word	-24
	.word	4
	.word	0
_Label_283:
	.ascii	"PrintReadyList\0"
	.align
_Label_284:
	.byte	'?'
	.ascii	"_temp_282\0"
	.align
_Label_285:
	.byte	'?'
	.ascii	"_temp_281\0"
	.align
_Label_286:
	.byte	'?'
	.ascii	"_temp_280\0"
	.align
_Label_287:
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
_Label_3772:
	push	r0
	sub	r1,1,r1
	bne	_Label_3772
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
!   _temp_288 = _P_Kernel_currentThread + 80
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,80,r1
	store	r1,[r14+-24]
!   Data Move: mainFun = *_temp_288  (sizeInBytes=4)
	load	[r14+-24],r1
	load	[r1],r1
	store	r1,[r14+-32]
! CALL STATEMENT...
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_290 = _P_Kernel_currentThread + 84
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,84,r1
	store	r1,[r14+-16]
!   Data Move: _temp_289 = *_temp_290  (sizeInBytes=4)
	load	[r14+-16],r1
	load	[r1],r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_289  sizeInBytes=4
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
!   _temp_291 = _StringConst_5
	set	_StringConst_5,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_291  sizeInBytes=4
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
	.word	_Label_292
	.word	0		! total size of parameters
	.word	28		! frame size = 28
	.word	_Label_293
	.word	-12
	.word	4
	.word	_Label_294
	.word	-16
	.word	4
	.word	_Label_295
	.word	-20
	.word	4
	.word	_Label_296
	.word	-24
	.word	4
	.word	_Label_297
	.word	-28
	.word	4
	.word	_Label_298
	.word	-32
	.word	4
	.word	0
_Label_292:
	.ascii	"ThreadStartMain\0"
	.align
_Label_293:
	.byte	'?'
	.ascii	"_temp_291\0"
	.align
_Label_294:
	.byte	'?'
	.ascii	"_temp_290\0"
	.align
_Label_295:
	.byte	'?'
	.ascii	"_temp_289\0"
	.align
_Label_296:
	.byte	'?'
	.ascii	"_temp_288\0"
	.align
_Label_297:
	.byte	'I'
	.ascii	"junk\0"
	.align
_Label_298:
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
_Label_3773:
	push	r0
	sub	r1,1,r1
	bne	_Label_3773
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
!   _temp_299 = &_P_Kernel_threadsToBeDestroyed
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
!   _temp_300 = _StringConst_6
	set	_StringConst_6,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_300  sizeInBytes=4
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
	.word	_Label_301
	.word	0		! total size of parameters
	.word	20		! frame size = 20
	.word	_Label_302
	.word	-12
	.word	4
	.word	_Label_303
	.word	-16
	.word	4
	.word	_Label_304
	.word	-20
	.word	4
	.word	0
_Label_301:
	.ascii	"ThreadFinish\0"
	.align
_Label_302:
	.byte	'?'
	.ascii	"_temp_300\0"
	.align
_Label_303:
	.byte	'?'
	.ascii	"_temp_299\0"
	.align
_Label_304:
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
_Label_3774:
	push	r0
	sub	r1,1,r1
	bne	_Label_3774
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
!   _temp_305 = _StringConst_7
	set	_StringConst_7,r1
	store	r1,[r14+-36]
!   Prepare Argument: offset=8  value=_temp_305  sizeInBytes=4
	load	[r14+-36],r1
	store	r1,[r15+0]
!   Call the function
	mov	165,r13		! source line 165
	mov	"\0\0CE",r10
	call	print
! IF STATEMENT...
	mov	166,r13		! source line 166
	mov	"\0\0IF",r10
!   if _P_Kernel_currentThread == 0 then goto _Label_307		(int)
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	mov	0,r2
	cmp	r1,r2
	be	_Label_307
!	jmp	_Label_306
_Label_306:
! THEN...
	mov	167,r13		! source line 167
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_308 = _StringConst_8
	set	_StringConst_8,r1
	store	r1,[r14+-32]
!   Prepare Argument: offset=8  value=_temp_308  sizeInBytes=4
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
!   _temp_310 = _P_Kernel_currentThread + 72
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,72,r1
	store	r1,[r14+-24]
!   Data Move: _temp_309 = *_temp_310  (sizeInBytes=4)
	load	[r14+-24],r1
	load	[r1],r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=8  value=_temp_309  sizeInBytes=4
	load	[r14+-28],r1
	store	r1,[r15+0]
!   Call the function
	mov	168,r13		! source line 168
	mov	"\0\0CE",r10
	call	print
! END IF...
_Label_307:
! CALL STATEMENT...
!   _temp_311 = _StringConst_9
	set	_StringConst_9,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_311  sizeInBytes=4
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
!   _temp_312 = _StringConst_10
	set	_StringConst_10,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_312  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+0]
!   Call the function
	mov	172,r13		! source line 172
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_313 = _StringConst_11
	set	_StringConst_11,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_313  sizeInBytes=4
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
	.word	_Label_314
	.word	4		! total size of parameters
	.word	36		! frame size = 36
	.word	_Label_315
	.word	8
	.word	4
	.word	_Label_316
	.word	-12
	.word	4
	.word	_Label_317
	.word	-16
	.word	4
	.word	_Label_318
	.word	-20
	.word	4
	.word	_Label_319
	.word	-24
	.word	4
	.word	_Label_320
	.word	-28
	.word	4
	.word	_Label_321
	.word	-32
	.word	4
	.word	_Label_322
	.word	-36
	.word	4
	.word	_Label_323
	.word	-40
	.word	4
	.word	0
_Label_314:
	.ascii	"FatalError_ThreadVersion\0"
	.align
_Label_315:
	.byte	'P'
	.ascii	"errorMessage\0"
	.align
_Label_316:
	.byte	'?'
	.ascii	"_temp_313\0"
	.align
_Label_317:
	.byte	'?'
	.ascii	"_temp_312\0"
	.align
_Label_318:
	.byte	'?'
	.ascii	"_temp_311\0"
	.align
_Label_319:
	.byte	'?'
	.ascii	"_temp_310\0"
	.align
_Label_320:
	.byte	'?'
	.ascii	"_temp_309\0"
	.align
_Label_321:
	.byte	'?'
	.ascii	"_temp_308\0"
	.align
_Label_322:
	.byte	'?'
	.ascii	"_temp_305\0"
	.align
_Label_323:
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
_Label_3775:
	push	r0
	sub	r1,1,r1
	bne	_Label_3775
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
!   if newStatus != 1 then goto _Label_325		(int)
	load	[r14+8],r1
	mov	1,r2
	cmp	r1,r2
	bne	_Label_325
!	jmp	_Label_324
_Label_324:
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
	jmp	_Label_326
_Label_325:
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
_Label_326:
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
	.word	_Label_327
	.word	4		! total size of parameters
	.word	4		! frame size = 4
	.word	_Label_328
	.word	8
	.word	4
	.word	_Label_329
	.word	-12
	.word	4
	.word	0
_Label_327:
	.ascii	"SetInterruptsTo\0"
	.align
_Label_328:
	.byte	'I'
	.ascii	"newStatus\0"
	.align
_Label_329:
	.byte	'I'
	.ascii	"oldStat\0"
	.align
! 
! ===============  FUNCTION ThreadPrintShort  ===============
! 
_function_195_ThreadPrintShort:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__function_195_ThreadPrintShort,r1
	push	r1
	mov	19,r1
_Label_3776:
	push	r0
	sub	r1,1,r1
	bne	_Label_3776
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
!   if t == 0 then goto _Label_333		(int)
	load	[r14+8],r1
	mov	0,r2
	cmp	r1,r2
	be	_Label_333
!   _temp_332 = 1		(1 byte)
	mov	1,r1
	storeb	r1,[r14+-9]
	jmp	_Label_334
_Label_333:
!   _temp_332 = 0		(1 byte)
	mov	0,r1
	storeb	r1,[r14+-9]
_Label_334:
!   if _temp_332 then goto _Label_331 else goto _Label_330
	loadb	[r14+-9],r1
	cmp	r1,0
	be	_Label_330
	jmp	_Label_331
_Label_330:
! THEN...
	mov	650,r13		! source line 650
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_335 = _StringConst_12
	set	_StringConst_12,r1
	store	r1,[r14+-76]
!   Prepare Argument: offset=8  value=_temp_335  sizeInBytes=4
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
_Label_331:
! CALL STATEMENT...
!   _temp_336 = _StringConst_13
	set	_StringConst_13,r1
	store	r1,[r14+-72]
!   Prepare Argument: offset=8  value=_temp_336  sizeInBytes=4
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
!   _temp_338 = t + 72
	load	[r14+8],r1
	add	r1,72,r1
	store	r1,[r14+-64]
!   Data Move: _temp_337 = *_temp_338  (sizeInBytes=4)
	load	[r14+-64],r1
	load	[r1],r1
	store	r1,[r14+-68]
!   Prepare Argument: offset=8  value=_temp_337  sizeInBytes=4
	load	[r14+-68],r1
	store	r1,[r15+0]
!   Call the function
	mov	654,r13		! source line 654
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_339 = _StringConst_14
	set	_StringConst_14,r1
	store	r1,[r14+-60]
!   Prepare Argument: offset=8  value=_temp_339  sizeInBytes=4
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
!   _temp_348 = t + 76
	load	[r14+8],r1
	add	r1,76,r1
	store	r1,[r14+-52]
!   Data Move: _temp_347 = *_temp_348  (sizeInBytes=4)
	load	[r14+-52],r1
	load	[r1],r1
	store	r1,[r14+-56]
!   Branch to the right case label
	load	[r14+-56],r1
	cmp	r1,1
	be	_Label_342
	cmp	r1,2
	be	_Label_343
	cmp	r1,3
	be	_Label_344
	cmp	r1,4
	be	_Label_345
	cmp	r1,5
	be	_Label_346
	jmp	_Label_340
! CASE 1...
_Label_342:
! CALL STATEMENT...
!   _temp_349 = _StringConst_15
	set	_StringConst_15,r1
	store	r1,[r14+-48]
!   Prepare Argument: offset=8  value=_temp_349  sizeInBytes=4
	load	[r14+-48],r1
	store	r1,[r15+0]
!   Call the function
	mov	658,r13		! source line 658
	mov	"\0\0CE",r10
	call	print
! BREAK STATEMENT...
	mov	659,r13		! source line 659
	mov	"\0\0BR",r10
	jmp	_Label_341
! CASE 2...
_Label_343:
! CALL STATEMENT...
!   _temp_350 = _StringConst_16
	set	_StringConst_16,r1
	store	r1,[r14+-44]
!   Prepare Argument: offset=8  value=_temp_350  sizeInBytes=4
	load	[r14+-44],r1
	store	r1,[r15+0]
!   Call the function
	mov	661,r13		! source line 661
	mov	"\0\0CE",r10
	call	print
! BREAK STATEMENT...
	mov	662,r13		! source line 662
	mov	"\0\0BR",r10
	jmp	_Label_341
! CASE 3...
_Label_344:
! CALL STATEMENT...
!   _temp_351 = _StringConst_17
	set	_StringConst_17,r1
	store	r1,[r14+-40]
!   Prepare Argument: offset=8  value=_temp_351  sizeInBytes=4
	load	[r14+-40],r1
	store	r1,[r15+0]
!   Call the function
	mov	664,r13		! source line 664
	mov	"\0\0CE",r10
	call	print
! BREAK STATEMENT...
	mov	665,r13		! source line 665
	mov	"\0\0BR",r10
	jmp	_Label_341
! CASE 4...
_Label_345:
! CALL STATEMENT...
!   _temp_352 = _StringConst_18
	set	_StringConst_18,r1
	store	r1,[r14+-36]
!   Prepare Argument: offset=8  value=_temp_352  sizeInBytes=4
	load	[r14+-36],r1
	store	r1,[r15+0]
!   Call the function
	mov	667,r13		! source line 667
	mov	"\0\0CE",r10
	call	print
! BREAK STATEMENT...
	mov	668,r13		! source line 668
	mov	"\0\0BR",r10
	jmp	_Label_341
! CASE 5...
_Label_346:
! CALL STATEMENT...
!   _temp_353 = _StringConst_19
	set	_StringConst_19,r1
	store	r1,[r14+-32]
!   Prepare Argument: offset=8  value=_temp_353  sizeInBytes=4
	load	[r14+-32],r1
	store	r1,[r15+0]
!   Call the function
	mov	670,r13		! source line 670
	mov	"\0\0CE",r10
	call	print
! BREAK STATEMENT...
	mov	671,r13		! source line 671
	mov	"\0\0BR",r10
	jmp	_Label_341
! DEFAULT CASE...
_Label_340:
! CALL STATEMENT...
!   _temp_354 = _StringConst_20
	set	_StringConst_20,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=8  value=_temp_354  sizeInBytes=4
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
_Label_341:
! CALL STATEMENT...
!   _temp_355 = _StringConst_21
	set	_StringConst_21,r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=8  value=_temp_355  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+0]
!   Call the function
	mov	675,r13		! source line 675
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_356 = t		(4 bytes)
	load	[r14+8],r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_356  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   Call the function
	mov	676,r13		! source line 676
	mov	"\0\0CE",r10
	call	printHex
! CALL STATEMENT...
!   _temp_357 = _StringConst_22
	set	_StringConst_22,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_357  sizeInBytes=4
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
_RoutineDescriptor__function_195_ThreadPrintShort:
	.word	_sourceFileName
	.word	_Label_358
	.word	4		! total size of parameters
	.word	76		! frame size = 76
	.word	_Label_359
	.word	8
	.word	4
	.word	_Label_360
	.word	-16
	.word	4
	.word	_Label_361
	.word	-20
	.word	4
	.word	_Label_362
	.word	-24
	.word	4
	.word	_Label_363
	.word	-28
	.word	4
	.word	_Label_364
	.word	-32
	.word	4
	.word	_Label_365
	.word	-36
	.word	4
	.word	_Label_366
	.word	-40
	.word	4
	.word	_Label_367
	.word	-44
	.word	4
	.word	_Label_368
	.word	-48
	.word	4
	.word	_Label_369
	.word	-52
	.word	4
	.word	_Label_370
	.word	-56
	.word	4
	.word	_Label_371
	.word	-60
	.word	4
	.word	_Label_372
	.word	-64
	.word	4
	.word	_Label_373
	.word	-68
	.word	4
	.word	_Label_374
	.word	-72
	.word	4
	.word	_Label_375
	.word	-76
	.word	4
	.word	_Label_376
	.word	-9
	.word	1
	.word	_Label_377
	.word	-80
	.word	4
	.word	0
_Label_358:
	.ascii	"ThreadPrintShort\0"
	.align
_Label_359:
	.byte	'P'
	.ascii	"t\0"
	.align
_Label_360:
	.byte	'?'
	.ascii	"_temp_357\0"
	.align
_Label_361:
	.byte	'?'
	.ascii	"_temp_356\0"
	.align
_Label_362:
	.byte	'?'
	.ascii	"_temp_355\0"
	.align
_Label_363:
	.byte	'?'
	.ascii	"_temp_354\0"
	.align
_Label_364:
	.byte	'?'
	.ascii	"_temp_353\0"
	.align
_Label_365:
	.byte	'?'
	.ascii	"_temp_352\0"
	.align
_Label_366:
	.byte	'?'
	.ascii	"_temp_351\0"
	.align
_Label_367:
	.byte	'?'
	.ascii	"_temp_350\0"
	.align
_Label_368:
	.byte	'?'
	.ascii	"_temp_349\0"
	.align
_Label_369:
	.byte	'?'
	.ascii	"_temp_348\0"
	.align
_Label_370:
	.byte	'?'
	.ascii	"_temp_347\0"
	.align
_Label_371:
	.byte	'?'
	.ascii	"_temp_339\0"
	.align
_Label_372:
	.byte	'?'
	.ascii	"_temp_338\0"
	.align
_Label_373:
	.byte	'?'
	.ascii	"_temp_337\0"
	.align
_Label_374:
	.byte	'?'
	.ascii	"_temp_336\0"
	.align
_Label_375:
	.byte	'?'
	.ascii	"_temp_335\0"
	.align
_Label_376:
	.byte	'C'
	.ascii	"_temp_332\0"
	.align
_Label_377:
	.byte	'I'
	.ascii	"oldStatus\0"
	.align
! 
! ===============  FUNCTION PrintObjectAddr  ===============
! 
_function_194_PrintObjectAddr:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__function_194_PrintObjectAddr,r1
	push	r1
	mov	2,r1
_Label_3777:
	push	r0
	sub	r1,1,r1
	bne	_Label_3777
	mov	1055,r13		! source line 1055
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   _temp_378 = p		(4 bytes)
	load	[r14+8],r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_378  sizeInBytes=4
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
_RoutineDescriptor__function_194_PrintObjectAddr:
	.word	_sourceFileName
	.word	_Label_379
	.word	4		! total size of parameters
	.word	8		! frame size = 8
	.word	_Label_380
	.word	8
	.word	4
	.word	_Label_381
	.word	-12
	.word	4
	.word	0
_Label_379:
	.ascii	"PrintObjectAddr\0"
	.align
_Label_380:
	.byte	'P'
	.ascii	"p\0"
	.align
_Label_381:
	.byte	'?'
	.ascii	"_temp_378\0"
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
_Label_3778:
	push	r0
	sub	r1,1,r1
	bne	_Label_3778
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
!   _temp_382 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-52]
!   Data Move: thisProcess = *_temp_382  (sizeInBytes=4)
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
!   _temp_383 = thisProcess + 28
	load	[r14+-60],r1
	add	r1,28,r1
	store	r1,[r14+-48]
!   Data Move: *_temp_383 = exitStatus  (sizeInBytes=4)
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
!   _temp_384 = thisProcess + 24
	load	[r14+-60],r1
	add	r1,24,r1
	store	r1,[r14+-44]
!   Data Move: *_temp_384 = 0  (sizeInBytes=4)
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
!   _temp_385 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-40]
!   Data Move: *_temp_385 = 0  (sizeInBytes=4)
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
!   _temp_386 = _P_Kernel_currentThread + 4092
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4092,r1
	store	r1,[r14+-36]
!   Data Move: *_temp_386 = 0  (sizeInBytes=1)
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
_Label_387:
!   if i >= 10 then goto _Label_389		(int)
	load	[r14+-64],r1
	mov	10,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_389
!	jmp	_Label_388
_Label_388:
	mov	1092,r13		! source line 1092
	mov	"\0\0WB",r10
! ASSIGNMENT STATEMENT...
	mov	1093,r13		! source line 1093
	mov	"\0\0AS",r10
!   if intIsZero (thisProcess) then goto _runtimeErrorNullPointer
	load	[r14+-60],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_390 = thisProcess + 124
	load	[r14+-60],r1
	add	r1,124,r1
	store	r1,[r14+-32]
!   Move address of _temp_390 [i ] into _temp_391
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
!   Data Move: *_temp_391 = 0  (sizeInBytes=4)
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
	jmp	_Label_387
_Label_389:
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
!   _temp_393 = thisProcess + 32
	load	[r14+-60],r1
	add	r1,32,r1
	store	r1,[r14+-20]
!   _temp_392 = _temp_393		(4 bytes)
	load	[r14+-20],r1
	store	r1,[r14+-24]
!   _temp_394 = &_P_Kernel_frameManager
	set	_P_Kernel_frameManager,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=12  value=_temp_392  sizeInBytes=4
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
!   _temp_395 = &_P_Kernel_processManager
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
	.word	_Label_396
	.word	4		! total size of parameters
	.word	64		! frame size = 64
	.word	_Label_397
	.word	8
	.word	4
	.word	_Label_398
	.word	-12
	.word	4
	.word	_Label_399
	.word	-16
	.word	4
	.word	_Label_400
	.word	-20
	.word	4
	.word	_Label_401
	.word	-24
	.word	4
	.word	_Label_402
	.word	-28
	.word	4
	.word	_Label_403
	.word	-32
	.word	4
	.word	_Label_404
	.word	-36
	.word	4
	.word	_Label_405
	.word	-40
	.word	4
	.word	_Label_406
	.word	-44
	.word	4
	.word	_Label_407
	.word	-48
	.word	4
	.word	_Label_408
	.word	-52
	.word	4
	.word	_Label_409
	.word	-56
	.word	4
	.word	_Label_410
	.word	-60
	.word	4
	.word	_Label_411
	.word	-64
	.word	4
	.word	0
_Label_396:
	.ascii	"ProcessFinish\0"
	.align
_Label_397:
	.byte	'I'
	.ascii	"exitStatus\0"
	.align
_Label_398:
	.byte	'?'
	.ascii	"_temp_395\0"
	.align
_Label_399:
	.byte	'?'
	.ascii	"_temp_394\0"
	.align
_Label_400:
	.byte	'?'
	.ascii	"_temp_393\0"
	.align
_Label_401:
	.byte	'?'
	.ascii	"_temp_392\0"
	.align
_Label_402:
	.byte	'?'
	.ascii	"_temp_391\0"
	.align
_Label_403:
	.byte	'?'
	.ascii	"_temp_390\0"
	.align
_Label_404:
	.byte	'?'
	.ascii	"_temp_386\0"
	.align
_Label_405:
	.byte	'?'
	.ascii	"_temp_385\0"
	.align
_Label_406:
	.byte	'?'
	.ascii	"_temp_384\0"
	.align
_Label_407:
	.byte	'?'
	.ascii	"_temp_383\0"
	.align
_Label_408:
	.byte	'?'
	.ascii	"_temp_382\0"
	.align
_Label_409:
	.byte	'I'
	.ascii	"oldInterruptStatus\0"
	.align
_Label_410:
	.byte	'P'
	.ascii	"thisProcess\0"
	.align
_Label_411:
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
_Label_3779:
	push	r0
	sub	r1,1,r1
	bne	_Label_3779
	mov	1110,r13		! source line 1110
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1115,r13		! source line 1115
	mov	"\0\0AS",r10
	mov	1115,r13		! source line 1115
	mov	"\0\0SE",r10
!   _temp_412 = &_P_Kernel_threadManager
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
!   _temp_413 = _StringConst_23
	set	_StringConst_23,r1
	store	r1,[r14+-20]
!   if intIsZero (newThread) then goto _runtimeErrorNullPointer
	load	[r14+-28],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Prepare Argument: offset=12  value=_temp_413  sizeInBytes=4
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
!   _temp_414 = _P_Kernel_StartUserProcess
	set	_P_Kernel_StartUserProcess,r1
	store	r1,[r14+-16]
!   _temp_415 = _StringConst_24
	set	_StringConst_24,r1
	store	r1,[r14+-12]
!   if intIsZero (newThread) then goto _runtimeErrorNullPointer
	load	[r14+-28],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Prepare Argument: offset=12  value=_temp_414  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=_temp_415  sizeInBytes=4
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
	.word	_Label_416
	.word	0		! total size of parameters
	.word	32		! frame size = 32
	.word	_Label_417
	.word	-12
	.word	4
	.word	_Label_418
	.word	-16
	.word	4
	.word	_Label_419
	.word	-20
	.word	4
	.word	_Label_420
	.word	-24
	.word	4
	.word	_Label_421
	.word	-28
	.word	4
	.word	0
_Label_416:
	.ascii	"InitFirstProcess\0"
	.align
_Label_417:
	.byte	'?'
	.ascii	"_temp_415\0"
	.align
_Label_418:
	.byte	'?'
	.ascii	"_temp_414\0"
	.align
_Label_419:
	.byte	'?'
	.ascii	"_temp_413\0"
	.align
_Label_420:
	.byte	'?'
	.ascii	"_temp_412\0"
	.align
_Label_421:
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
_Label_3780:
	push	r0
	sub	r1,1,r1
	bne	_Label_3780
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
!   _temp_422 = &_P_Kernel_processManager
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
!   _temp_423 = newProcess + 24
	load	[r14+-76],r1
	add	r1,24,r1
	store	r1,[r14+-68]
!   Data Move: *_temp_423 = _P_Kernel_currentThread  (sizeInBytes=4)
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
!   _temp_424 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-64]
!   Data Move: *_temp_424 = newProcess  (sizeInBytes=4)
	load	[r14+-76],r1
	load	[r14+-64],r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	1141,r13		! source line 1141
	mov	"\0\0AS",r10
	mov	1141,r13		! source line 1141
	mov	"\0\0SE",r10
!   _temp_425 = _StringConst_25
	set	_StringConst_25,r1
	store	r1,[r14+-60]
!   _temp_426 = &_P_Kernel_fileManager
	set	_P_Kernel_fileManager,r1
	store	r1,[r14+-56]
!   Prepare Argument: offset=12  value=_temp_425  sizeInBytes=4
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
!   _temp_427 = newProcess + 32
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
!   _temp_429 = newProcess + 32
	load	[r14+-76],r1
	add	r1,32,r1
	store	r1,[r14+-44]
!   _temp_428 = _temp_429		(4 bytes)
	load	[r14+-44],r1
	store	r1,[r14+-48]
!   if intIsZero (openFile) then goto _runtimeErrorNullPointer
	load	[r14+-80],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Prepare Argument: offset=12  value=_temp_428  sizeInBytes=4
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
!   _temp_430 = &_P_Kernel_fileManager
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
!   _temp_432 = newProcess + 32
	load	[r14+-76],r1
	add	r1,32,r1
	store	r1,[r14+-32]
!   _temp_433 = _temp_432 + 4
	load	[r14+-32],r1
	add	r1,4,r1
	store	r1,[r14+-28]
!   Data Move: _temp_431 = *_temp_433  (sizeInBytes=4)
	load	[r14+-28],r1
	load	[r1],r1
	store	r1,[r14+-36]
!   initUserStackTop = _temp_431 * 8192		(int)
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
!   _temp_434 = _P_Kernel_currentThread + 88
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,88,r1
	store	r1,[r14+-24]
!   Move address of _temp_434 [999 ] into _temp_435
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
!   initSystemStackTop = _temp_435		(4 bytes)
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
!   _temp_436 = newProcess + 32
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
!   _temp_437 = _P_Kernel_currentThread + 4092
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4092,r1
	store	r1,[r14+-12]
!   Data Move: *_temp_437 = 1  (sizeInBytes=1)
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
	.word	_Label_438
	.word	0		! total size of parameters
	.word	100		! frame size = 100
	.word	_Label_439
	.word	-12
	.word	4
	.word	_Label_440
	.word	-16
	.word	4
	.word	_Label_441
	.word	-20
	.word	4
	.word	_Label_442
	.word	-24
	.word	4
	.word	_Label_443
	.word	-28
	.word	4
	.word	_Label_444
	.word	-32
	.word	4
	.word	_Label_445
	.word	-36
	.word	4
	.word	_Label_446
	.word	-40
	.word	4
	.word	_Label_447
	.word	-44
	.word	4
	.word	_Label_448
	.word	-48
	.word	4
	.word	_Label_449
	.word	-52
	.word	4
	.word	_Label_450
	.word	-56
	.word	4
	.word	_Label_451
	.word	-60
	.word	4
	.word	_Label_452
	.word	-64
	.word	4
	.word	_Label_453
	.word	-68
	.word	4
	.word	_Label_454
	.word	-72
	.word	4
	.word	_Label_455
	.word	-76
	.word	4
	.word	_Label_456
	.word	-80
	.word	4
	.word	_Label_457
	.word	-84
	.word	4
	.word	_Label_458
	.word	-88
	.word	4
	.word	_Label_459
	.word	-92
	.word	4
	.word	_Label_460
	.word	-96
	.word	4
	.word	0
_Label_438:
	.ascii	"StartUserProcess\0"
	.align
_Label_439:
	.byte	'?'
	.ascii	"_temp_437\0"
	.align
_Label_440:
	.byte	'?'
	.ascii	"_temp_436\0"
	.align
_Label_441:
	.byte	'?'
	.ascii	"_temp_435\0"
	.align
_Label_442:
	.byte	'?'
	.ascii	"_temp_434\0"
	.align
_Label_443:
	.byte	'?'
	.ascii	"_temp_433\0"
	.align
_Label_444:
	.byte	'?'
	.ascii	"_temp_432\0"
	.align
_Label_445:
	.byte	'?'
	.ascii	"_temp_431\0"
	.align
_Label_446:
	.byte	'?'
	.ascii	"_temp_430\0"
	.align
_Label_447:
	.byte	'?'
	.ascii	"_temp_429\0"
	.align
_Label_448:
	.byte	'?'
	.ascii	"_temp_428\0"
	.align
_Label_449:
	.byte	'?'
	.ascii	"_temp_427\0"
	.align
_Label_450:
	.byte	'?'
	.ascii	"_temp_426\0"
	.align
_Label_451:
	.byte	'?'
	.ascii	"_temp_425\0"
	.align
_Label_452:
	.byte	'?'
	.ascii	"_temp_424\0"
	.align
_Label_453:
	.byte	'?'
	.ascii	"_temp_423\0"
	.align
_Label_454:
	.byte	'?'
	.ascii	"_temp_422\0"
	.align
_Label_455:
	.byte	'P'
	.ascii	"newProcess\0"
	.align
_Label_456:
	.byte	'P'
	.ascii	"openFile\0"
	.align
_Label_457:
	.byte	'I'
	.ascii	"initUserPC\0"
	.align
_Label_458:
	.byte	'I'
	.ascii	"initUserStackTop\0"
	.align
_Label_459:
	.byte	'I'
	.ascii	"initSystemStackTop\0"
	.align
_Label_460:
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
_Label_3781:
	push	r0
	sub	r1,1,r1
	bne	_Label_3781
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
!   _temp_462 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-48]
!   Data Move: _temp_461 = *_temp_462  (sizeInBytes=4)
	load	[r14+-48],r1
	load	[r1],r1
	store	r1,[r14+-52]
!   if intIsZero (_temp_461) then goto _runtimeErrorNullPointer
	load	[r14+-52],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_463 = _temp_461 + 32
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
!   _temp_465 = _P_Kernel_currentThread + 4096
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4096,r1
	store	r1,[r14+-36]
!   Move address of _temp_465 [0 ] into _temp_466
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
!   _temp_464 = _temp_466		(4 bytes)
	load	[r14+-32],r1
	store	r1,[r14+-40]
!   Prepare Argument: offset=8  value=_temp_464  sizeInBytes=4
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
!   _temp_467 = _P_Kernel_currentThread + 4092
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4092,r1
	store	r1,[r14+-28]
!   Data Move: *_temp_467 = 1  (sizeInBytes=1)
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
!   _temp_468 = _P_Kernel_currentThread + 88
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,88,r1
	store	r1,[r14+-24]
!   Move address of _temp_468 [999 ] into _temp_469
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
!   systemStackTop = _temp_469		(4 bytes)
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
!   _temp_470 = _P_Kernel_currentThread + 4096
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4096,r1
	store	r1,[r14+-16]
!   Move address of _temp_470 [14 ] into _temp_471
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
!   Data Move: userStackTop = *_temp_471  (sizeInBytes=4)
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
	.word	_Label_472
	.word	4		! total size of parameters
	.word	68		! frame size = 68
	.word	_Label_473
	.word	8
	.word	4
	.word	_Label_474
	.word	-12
	.word	4
	.word	_Label_475
	.word	-16
	.word	4
	.word	_Label_476
	.word	-20
	.word	4
	.word	_Label_477
	.word	-24
	.word	4
	.word	_Label_478
	.word	-28
	.word	4
	.word	_Label_479
	.word	-32
	.word	4
	.word	_Label_480
	.word	-36
	.word	4
	.word	_Label_481
	.word	-40
	.word	4
	.word	_Label_482
	.word	-44
	.word	4
	.word	_Label_483
	.word	-48
	.word	4
	.word	_Label_484
	.word	-52
	.word	4
	.word	_Label_485
	.word	-56
	.word	4
	.word	_Label_486
	.word	-60
	.word	4
	.word	_Label_487
	.word	-64
	.word	4
	.word	0
_Label_472:
	.ascii	"ResumeChildAfterFork\0"
	.align
_Label_473:
	.byte	'I'
	.ascii	"oldUserPC\0"
	.align
_Label_474:
	.byte	'?'
	.ascii	"_temp_471\0"
	.align
_Label_475:
	.byte	'?'
	.ascii	"_temp_470\0"
	.align
_Label_476:
	.byte	'?'
	.ascii	"_temp_469\0"
	.align
_Label_477:
	.byte	'?'
	.ascii	"_temp_468\0"
	.align
_Label_478:
	.byte	'?'
	.ascii	"_temp_467\0"
	.align
_Label_479:
	.byte	'?'
	.ascii	"_temp_466\0"
	.align
_Label_480:
	.byte	'?'
	.ascii	"_temp_465\0"
	.align
_Label_481:
	.byte	'?'
	.ascii	"_temp_464\0"
	.align
_Label_482:
	.byte	'?'
	.ascii	"_temp_463\0"
	.align
_Label_483:
	.byte	'?'
	.ascii	"_temp_462\0"
	.align
_Label_484:
	.byte	'?'
	.ascii	"_temp_461\0"
	.align
_Label_485:
	.byte	'I'
	.ascii	"junk\0"
	.align
_Label_486:
	.byte	'I'
	.ascii	"systemStackTop\0"
	.align
_Label_487:
	.byte	'I'
	.ascii	"userStackTop\0"
	.align
! 
! ===============  FUNCTION SerialHandlerFunction  ===============
! 
_function_193_SerialHandlerFunction:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__function_193_SerialHandlerFunction,r1
	push	r1
	mov	2,r1
_Label_3782:
	push	r0
	sub	r1,1,r1
	bne	_Label_3782
	mov	1198,r13		! source line 1198
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! SEND STATEMENT...
	mov	1200,r13		! source line 1200
	mov	"\0\0SE",r10
!   _temp_488 = &_P_Kernel_serialDriver
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
_RoutineDescriptor__function_193_SerialHandlerFunction:
	.word	_sourceFileName
	.word	_Label_489
	.word	4		! total size of parameters
	.word	8		! frame size = 8
	.word	_Label_490
	.word	8
	.word	4
	.word	_Label_491
	.word	-12
	.word	4
	.word	0
_Label_489:
	.ascii	"SerialHandlerFunction\0"
	.align
_Label_490:
	.byte	'I'
	.ascii	"ignore\0"
	.align
_Label_491:
	.byte	'?'
	.ascii	"_temp_488\0"
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
_Label_3783:
	push	r0
	sub	r1,1,r1
	bne	_Label_3783
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
	.word	_Label_492
	.word	0		! total size of parameters
	.word	4		! frame size = 4
	.word	0
_Label_492:
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
_Label_3784:
	push	r0
	sub	r1,1,r1
	bne	_Label_3784
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
!   _temp_496 = &_P_Kernel_diskDriver
	set	_P_Kernel_diskDriver,r1
	store	r1,[r14+-28]
!   _temp_497 = _temp_496 + 24
	load	[r14+-28],r1
	add	r1,24,r1
	store	r1,[r14+-24]
!   Data Move: _temp_495 = *_temp_497  (sizeInBytes=4)
	load	[r14+-24],r1
	load	[r1],r1
	store	r1,[r14+-32]
!   if _temp_495 == 0 then goto _Label_494		(int)
	load	[r14+-32],r1
	mov	0,r2
	cmp	r1,r2
	be	_Label_494
!	jmp	_Label_493
_Label_493:
! THEN...
	mov	1718,r13		! source line 1718
	mov	"\0\0TN",r10
! SEND STATEMENT...
	mov	1718,r13		! source line 1718
	mov	"\0\0SE",r10
!   _temp_499 = &_P_Kernel_diskDriver
	set	_P_Kernel_diskDriver,r1
	store	r1,[r14+-16]
!   _temp_500 = _temp_499 + 24
	load	[r14+-16],r1
	add	r1,24,r1
	store	r1,[r14+-12]
!   Data Move: _temp_498 = *_temp_500  (sizeInBytes=4)
	load	[r14+-12],r1
	load	[r1],r1
	store	r1,[r14+-20]
!   if intIsZero (_temp_498) then goto _runtimeErrorNullPointer
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
_Label_494:
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
	.word	_Label_501
	.word	0		! total size of parameters
	.word	28		! frame size = 28
	.word	_Label_502
	.word	-12
	.word	4
	.word	_Label_503
	.word	-16
	.word	4
	.word	_Label_504
	.word	-20
	.word	4
	.word	_Label_505
	.word	-24
	.word	4
	.word	_Label_506
	.word	-28
	.word	4
	.word	_Label_507
	.word	-32
	.word	4
	.word	0
_Label_501:
	.ascii	"DiskInterruptHandler\0"
	.align
_Label_502:
	.byte	'?'
	.ascii	"_temp_500\0"
	.align
_Label_503:
	.byte	'?'
	.ascii	"_temp_499\0"
	.align
_Label_504:
	.byte	'?'
	.ascii	"_temp_498\0"
	.align
_Label_505:
	.byte	'?'
	.ascii	"_temp_497\0"
	.align
_Label_506:
	.byte	'?'
	.ascii	"_temp_496\0"
	.align
_Label_507:
	.byte	'?'
	.ascii	"_temp_495\0"
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
	.word	_Label_508
	.word	0		! total size of parameters
	.word	0		! frame size = 0
	.word	0
_Label_508:
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
_Label_3785:
	push	r0
	sub	r1,1,r1
	bne	_Label_3785
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
!   _temp_509 = _StringConst_26
	set	_StringConst_26,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_509  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	1746,r13		! source line 1746
	mov	"\0\0CA",r10
	call	_function_192_ErrorInUserProcess
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
	.word	_Label_510
	.word	0		! total size of parameters
	.word	8		! frame size = 8
	.word	_Label_511
	.word	-12
	.word	4
	.word	0
_Label_510:
	.ascii	"IllegalInstructionHandler\0"
	.align
_Label_511:
	.byte	'?'
	.ascii	"_temp_509\0"
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
_Label_3786:
	push	r0
	sub	r1,1,r1
	bne	_Label_3786
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
!   _temp_512 = _StringConst_27
	set	_StringConst_27,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_512  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	1758,r13		! source line 1758
	mov	"\0\0CA",r10
	call	_function_192_ErrorInUserProcess
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
	.word	_Label_513
	.word	0		! total size of parameters
	.word	8		! frame size = 8
	.word	_Label_514
	.word	-12
	.word	4
	.word	0
_Label_513:
	.ascii	"ArithmeticExceptionHandler\0"
	.align
_Label_514:
	.byte	'?'
	.ascii	"_temp_512\0"
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
_Label_3787:
	push	r0
	sub	r1,1,r1
	bne	_Label_3787
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
!   _temp_515 = _StringConst_28
	set	_StringConst_28,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_515  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	1770,r13		! source line 1770
	mov	"\0\0CA",r10
	call	_function_192_ErrorInUserProcess
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
	.word	_Label_516
	.word	0		! total size of parameters
	.word	8		! frame size = 8
	.word	_Label_517
	.word	-12
	.word	4
	.word	0
_Label_516:
	.ascii	"AddressExceptionHandler\0"
	.align
_Label_517:
	.byte	'?'
	.ascii	"_temp_515\0"
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
_Label_3788:
	push	r0
	sub	r1,1,r1
	bne	_Label_3788
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
!   _temp_518 = _StringConst_29
	set	_StringConst_29,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_518  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	1782,r13		! source line 1782
	mov	"\0\0CA",r10
	call	_function_192_ErrorInUserProcess
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
	.word	_Label_519
	.word	0		! total size of parameters
	.word	8		! frame size = 8
	.word	_Label_520
	.word	-12
	.word	4
	.word	0
_Label_519:
	.ascii	"PageInvalidExceptionHandler\0"
	.align
_Label_520:
	.byte	'?'
	.ascii	"_temp_518\0"
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
_Label_3789:
	push	r0
	sub	r1,1,r1
	bne	_Label_3789
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
!   _temp_521 = _StringConst_30
	set	_StringConst_30,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_521  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	1794,r13		! source line 1794
	mov	"\0\0CA",r10
	call	_function_192_ErrorInUserProcess
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
	.word	_Label_522
	.word	0		! total size of parameters
	.word	8		! frame size = 8
	.word	_Label_523
	.word	-12
	.word	4
	.word	0
_Label_522:
	.ascii	"PageReadonlyExceptionHandler\0"
	.align
_Label_523:
	.byte	'?'
	.ascii	"_temp_521\0"
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
_Label_3790:
	push	r0
	sub	r1,1,r1
	bne	_Label_3790
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
!   _temp_524 = _StringConst_31
	set	_StringConst_31,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_524  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	1806,r13		! source line 1806
	mov	"\0\0CA",r10
	call	_function_192_ErrorInUserProcess
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
	.word	_Label_525
	.word	0		! total size of parameters
	.word	8		! frame size = 8
	.word	_Label_526
	.word	-12
	.word	4
	.word	0
_Label_525:
	.ascii	"PrivilegedInstructionHandler\0"
	.align
_Label_526:
	.byte	'?'
	.ascii	"_temp_524\0"
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
_Label_3791:
	push	r0
	sub	r1,1,r1
	bne	_Label_3791
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
!   _temp_527 = _StringConst_32
	set	_StringConst_32,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_527  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	1818,r13		! source line 1818
	mov	"\0\0CA",r10
	call	_function_192_ErrorInUserProcess
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
	.word	_Label_528
	.word	0		! total size of parameters
	.word	8		! frame size = 8
	.word	_Label_529
	.word	-12
	.word	4
	.word	0
_Label_528:
	.ascii	"AlignmentExceptionHandler\0"
	.align
_Label_529:
	.byte	'?'
	.ascii	"_temp_527\0"
	.align
! 
! ===============  FUNCTION ErrorInUserProcess  ===============
! 
_function_192_ErrorInUserProcess:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__function_192_ErrorInUserProcess,r1
	push	r1
	mov	8,r1
_Label_3792:
	push	r0
	sub	r1,1,r1
	bne	_Label_3792
	mov	1823,r13		! source line 1823
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   _temp_530 = _StringConst_33
	set	_StringConst_33,r1
	store	r1,[r14+-36]
!   Prepare Argument: offset=8  value=_temp_530  sizeInBytes=4
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
!   _temp_531 = _StringConst_34
	set	_StringConst_34,r1
	store	r1,[r14+-32]
!   Prepare Argument: offset=8  value=_temp_531  sizeInBytes=4
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
!   _temp_535 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-24]
!   Data Move: _temp_534 = *_temp_535  (sizeInBytes=4)
	load	[r14+-24],r1
	load	[r1],r1
	store	r1,[r14+-28]
!   if _temp_534 == 0 then goto _Label_533		(int)
	load	[r14+-28],r1
	mov	0,r2
	cmp	r1,r2
	be	_Label_533
!	jmp	_Label_532
_Label_532:
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
!   _temp_537 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-16]
!   Data Move: _temp_536 = *_temp_537  (sizeInBytes=4)
	load	[r14+-16],r1
	load	[r1],r1
	store	r1,[r14+-20]
!   if intIsZero (_temp_536) then goto _runtimeErrorNullPointer
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
	jmp	_Label_538
_Label_533:
! ELSE...
	mov	1836,r13		! source line 1836
	mov	"\0\0EL",r10
! CALL STATEMENT...
!   _temp_539 = _StringConst_35
	set	_StringConst_35,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_539  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	1836,r13		! source line 1836
	mov	"\0\0CE",r10
	call	print
! END IF...
_Label_538:
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
_RoutineDescriptor__function_192_ErrorInUserProcess:
	.word	_sourceFileName
	.word	_Label_540
	.word	4		! total size of parameters
	.word	32		! frame size = 32
	.word	_Label_541
	.word	8
	.word	4
	.word	_Label_542
	.word	-12
	.word	4
	.word	_Label_543
	.word	-16
	.word	4
	.word	_Label_544
	.word	-20
	.word	4
	.word	_Label_545
	.word	-24
	.word	4
	.word	_Label_546
	.word	-28
	.word	4
	.word	_Label_547
	.word	-32
	.word	4
	.word	_Label_548
	.word	-36
	.word	4
	.word	0
_Label_540:
	.ascii	"ErrorInUserProcess\0"
	.align
_Label_541:
	.byte	'P'
	.ascii	"errorMessage\0"
	.align
_Label_542:
	.byte	'?'
	.ascii	"_temp_539\0"
	.align
_Label_543:
	.byte	'?'
	.ascii	"_temp_537\0"
	.align
_Label_544:
	.byte	'?'
	.ascii	"_temp_536\0"
	.align
_Label_545:
	.byte	'?'
	.ascii	"_temp_535\0"
	.align
_Label_546:
	.byte	'?'
	.ascii	"_temp_534\0"
	.align
_Label_547:
	.byte	'?'
	.ascii	"_temp_531\0"
	.align
_Label_548:
	.byte	'?'
	.ascii	"_temp_530\0"
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
_Label_3793:
	push	r0
	sub	r1,1,r1
	bne	_Label_3793
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
	be	_Label_3794
	set	0x1ffff,r3
	cmp	r2,r3
	bne	_Label_549
_Label_3794:
!   If syscallCodeNum is < 1 (==smallestCaseValue) goto default code
	cmp	r1,1
	bl	_Label_549
!   If syscallCodeNum is > 12 (==greatestCaseValue) goto default code
	cmp	r1,12
	bg	_Label_549
!   r1 = (r1-lowValue) * 4 + jumpTableAddr
	sub	r1,1,r1
	sll	r1,2,r1
	set	_Label_563,r2
	add	r1,r2,r1
!   Jump indirect through the jump table
	jmp	r1
!   Jump table
_Label_563:
	jmp	_Label_555	! 1:	
	jmp	_Label_562	! 2:	
	jmp	_Label_552	! 3:	
	jmp	_Label_551	! 4:	
	jmp	_Label_554	! 5:	
	jmp	_Label_553	! 6:	
	jmp	_Label_556	! 7:	
	jmp	_Label_557	! 8:	
	jmp	_Label_558	! 9:	
	jmp	_Label_559	! 10:	
	jmp	_Label_560	! 11:	
	jmp	_Label_561	! 12:	
! CASE 4...
_Label_551:
! RETURN STATEMENT...
	mov	1872,r13		! source line 1872
	mov	"\0\0RE",r10
!   Call the function
	mov	1872,r13		! source line 1872
	mov	"\0\0CA",r10
	call	_P_Kernel_Handle_Sys_Fork
!   Retrieve Result: targetName=_temp_564  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-48]
!   ReturnResult: _temp_564  (sizeInBytes=4)
	load	[r14+-48],r1
	store	r1,[r14+8]
	add	r15,56,r15
	pop	r13
	pop	r14
	ret
! CASE 3...
_Label_552:
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
_Label_553:
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
!   Retrieve Result: targetName=_temp_565  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-44]
!   ReturnResult: _temp_565  (sizeInBytes=4)
	load	[r14+-44],r1
	store	r1,[r14+8]
	add	r15,56,r15
	pop	r13
	pop	r14
	ret
! CASE 5...
_Label_554:
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
!   Retrieve Result: targetName=_temp_566  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-40]
!   ReturnResult: _temp_566  (sizeInBytes=4)
	load	[r14+-40],r1
	store	r1,[r14+8]
	add	r15,56,r15
	pop	r13
	pop	r14
	ret
! CASE 1...
_Label_555:
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
_Label_556:
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
!   Retrieve Result: targetName=_temp_567  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-36]
!   ReturnResult: _temp_567  (sizeInBytes=4)
	load	[r14+-36],r1
	store	r1,[r14+8]
	add	r15,56,r15
	pop	r13
	pop	r14
	ret
! CASE 8...
_Label_557:
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
!   Retrieve Result: targetName=_temp_568  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-32]
!   ReturnResult: _temp_568  (sizeInBytes=4)
	load	[r14+-32],r1
	store	r1,[r14+8]
	add	r15,56,r15
	pop	r13
	pop	r14
	ret
! CASE 9...
_Label_558:
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
!   Retrieve Result: targetName=_temp_569  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-28]
!   ReturnResult: _temp_569  (sizeInBytes=4)
	load	[r14+-28],r1
	store	r1,[r14+8]
	add	r15,56,r15
	pop	r13
	pop	r14
	ret
! CASE 10...
_Label_559:
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
!   Retrieve Result: targetName=_temp_570  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-24]
!   ReturnResult: _temp_570  (sizeInBytes=4)
	load	[r14+-24],r1
	store	r1,[r14+8]
	add	r15,56,r15
	pop	r13
	pop	r14
	ret
! CASE 11...
_Label_560:
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
!   Retrieve Result: targetName=_temp_571  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-20]
!   ReturnResult: _temp_571  (sizeInBytes=4)
	load	[r14+-20],r1
	store	r1,[r14+8]
	add	r15,56,r15
	pop	r13
	pop	r14
	ret
! CASE 12...
_Label_561:
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
_Label_562:
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
_Label_549:
! CALL STATEMENT...
!   _temp_572 = _StringConst_36
	set	_StringConst_36,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_572  sizeInBytes=4
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
!   _temp_573 = _StringConst_37
	set	_StringConst_37,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_573  sizeInBytes=4
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
_Label_550:
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
	.word	_Label_574
	.word	20		! total size of parameters
	.word	52		! frame size = 52
	.word	_Label_575
	.word	8
	.word	4
	.word	_Label_576
	.word	12
	.word	4
	.word	_Label_577
	.word	16
	.word	4
	.word	_Label_578
	.word	20
	.word	4
	.word	_Label_579
	.word	24
	.word	4
	.word	_Label_580
	.word	-12
	.word	4
	.word	_Label_581
	.word	-16
	.word	4
	.word	_Label_582
	.word	-20
	.word	4
	.word	_Label_583
	.word	-24
	.word	4
	.word	_Label_584
	.word	-28
	.word	4
	.word	_Label_585
	.word	-32
	.word	4
	.word	_Label_586
	.word	-36
	.word	4
	.word	_Label_587
	.word	-40
	.word	4
	.word	_Label_588
	.word	-44
	.word	4
	.word	_Label_589
	.word	-48
	.word	4
	.word	0
_Label_574:
	.ascii	"SyscallTrapHandler\0"
	.align
_Label_575:
	.byte	'I'
	.ascii	"syscallCodeNum\0"
	.align
_Label_576:
	.byte	'I'
	.ascii	"arg1\0"
	.align
_Label_577:
	.byte	'I'
	.ascii	"arg2\0"
	.align
_Label_578:
	.byte	'I'
	.ascii	"arg3\0"
	.align
_Label_579:
	.byte	'I'
	.ascii	"arg4\0"
	.align
_Label_580:
	.byte	'?'
	.ascii	"_temp_573\0"
	.align
_Label_581:
	.byte	'?'
	.ascii	"_temp_572\0"
	.align
_Label_582:
	.byte	'?'
	.ascii	"_temp_571\0"
	.align
_Label_583:
	.byte	'?'
	.ascii	"_temp_570\0"
	.align
_Label_584:
	.byte	'?'
	.ascii	"_temp_569\0"
	.align
_Label_585:
	.byte	'?'
	.ascii	"_temp_568\0"
	.align
_Label_586:
	.byte	'?'
	.ascii	"_temp_567\0"
	.align
_Label_587:
	.byte	'?'
	.ascii	"_temp_566\0"
	.align
_Label_588:
	.byte	'?'
	.ascii	"_temp_565\0"
	.align
_Label_589:
	.byte	'?'
	.ascii	"_temp_564\0"
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
_Label_3795:
	push	r0
	sub	r1,1,r1
	bne	_Label_3795
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
	.word	_Label_590
	.word	4		! total size of parameters
	.word	4		! frame size = 4
	.word	_Label_591
	.word	8
	.word	4
	.word	0
_Label_590:
	.ascii	"Handle_Sys_Exit\0"
	.align
_Label_591:
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
_Label_3796:
	push	r0
	sub	r1,1,r1
	bne	_Label_3796
	mov	1918,r13		! source line 1918
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   _temp_592 = _StringConst_38
	set	_StringConst_38,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_592  sizeInBytes=4
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
	.word	_Label_593
	.word	0		! total size of parameters
	.word	8		! frame size = 8
	.word	_Label_594
	.word	-12
	.word	4
	.word	0
_Label_593:
	.ascii	"Handle_Sys_Shutdown\0"
	.align
_Label_594:
	.byte	'?'
	.ascii	"_temp_592\0"
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
_Label_3797:
	push	r0
	sub	r1,1,r1
	bne	_Label_3797
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
	.word	_Label_595
	.word	0		! total size of parameters
	.word	4		! frame size = 4
	.word	0
_Label_595:
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
_Label_3798:
	push	r0
	sub	r1,1,r1
	bne	_Label_3798
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
!   _temp_596 = &_P_Kernel_processManager
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
!   _temp_597 = &_P_Kernel_threadManager
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
!   _temp_598 = childProcess + 24
	load	[r14+-212],r1
	add	r1,24,r1
	store	r1,[r14+-200]
!   Data Move: *_temp_598 = childThread  (sizeInBytes=4)
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
!   _temp_599 = childProcess + 16
	load	[r14+-212],r1
	add	r1,16,r1
	store	r1,[r14+-196]
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_602 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-184]
!   Data Move: _temp_601 = *_temp_602  (sizeInBytes=4)
	load	[r14+-184],r1
	load	[r1],r1
	store	r1,[r14+-188]
!   if intIsZero (_temp_601) then goto _runtimeErrorNullPointer
	load	[r14+-188],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_603 = _temp_601 + 12
	load	[r14+-188],r1
	add	r1,12,r1
	store	r1,[r14+-180]
!   Data Move: _temp_600 = *_temp_603  (sizeInBytes=4)
	load	[r14+-180],r1
	load	[r1],r1
	store	r1,[r14+-192]
!   Data Move: *_temp_599 = _temp_600  (sizeInBytes=4)
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
!   _temp_604 = childThread + 76
	load	[r14+-216],r1
	add	r1,76,r1
	store	r1,[r14+-176]
!   Data Move: *_temp_604 = 2  (sizeInBytes=4)
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
!   _temp_605 = childThread + 4160
	load	[r14+-216],r1
	add	r1,4160,r1
	store	r1,[r14+-172]
!   Data Move: *_temp_605 = childProcess  (sizeInBytes=4)
	load	[r14+-212],r1
	load	[r14+-172],r2
	store	r1,[r2]
! CALL STATEMENT...
!   if intIsZero (childThread) then goto _runtimeErrorNullPointer
	load	[r14+-216],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_607 = childThread + 4096
	load	[r14+-216],r1
	add	r1,4096,r1
	store	r1,[r14+-164]
!   Move address of _temp_607 [0 ] into _temp_608
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
!   _temp_606 = _temp_608		(4 bytes)
	load	[r14+-160],r1
	store	r1,[r14+-168]
!   Prepare Argument: offset=8  value=_temp_606  sizeInBytes=4
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
_Label_609:
!   if i >= 10 then goto _Label_611		(int)
	load	[r14+-228],r1
	mov	10,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_611
!	jmp	_Label_610
_Label_610:
	mov	1965,r13		! source line 1965
	mov	"\0\0WB",r10
! ASSIGNMENT STATEMENT...
	mov	1966,r13		! source line 1966
	mov	"\0\0AS",r10
!   if intIsZero (childProcess) then goto _runtimeErrorNullPointer
	load	[r14+-212],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_612 = childProcess + 124
	load	[r14+-212],r1
	add	r1,124,r1
	store	r1,[r14+-156]
!   Move address of _temp_612 [i ] into _temp_613
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
!   _temp_616 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-140]
!   Data Move: _temp_615 = *_temp_616  (sizeInBytes=4)
	load	[r14+-140],r1
	load	[r1],r1
	store	r1,[r14+-144]
!   if intIsZero (_temp_615) then goto _runtimeErrorNullPointer
	load	[r14+-144],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_617 = _temp_615 + 124
	load	[r14+-144],r1
	add	r1,124,r1
	store	r1,[r14+-136]
!   Move address of _temp_617 [i ] into _temp_618
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
!   Data Move: _temp_614 = *_temp_618  (sizeInBytes=4)
	load	[r14+-132],r1
	load	[r1],r1
	store	r1,[r14+-148]
!   Data Move: *_temp_613 = _temp_614  (sizeInBytes=4)
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
	jmp	_Label_609
_Label_611:
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
!   _temp_619 = childThread + 68
	load	[r14+-216],r1
	add	r1,68,r1
	store	r1,[r14+-128]
!   if intIsZero (childThread) then goto _runtimeErrorNullPointer
	load	[r14+-216],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_621 = childThread + 88
	load	[r14+-216],r1
	add	r1,88,r1
	store	r1,[r14+-120]
!   Move address of _temp_621 [999 ] into _temp_622
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
!   _temp_620 = _temp_622		(4 bytes)
	load	[r14+-116],r1
	store	r1,[r14+-124]
!   Data Move: *_temp_619 = _temp_620  (sizeInBytes=4)
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
_Label_3799:
	store	r0,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_3799
!   childAddrSpace = _P_Kernel_AddrSpace
	set	_P_Kernel_AddrSpace,r1
	store	r1,[r14+-332]
! SEND STATEMENT...
	mov	1977,r13		! source line 1977
	mov	"\0\0SE",r10
!   _temp_624 = &childAddrSpace
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
!   _temp_625 = childProcess + 32
	load	[r14+-212],r1
	add	r1,32,r1
	store	r1,[r14+-104]
!   Data Move: *_temp_625 = childAddrSpace  (sizeInBytes=92)
	add	r14,-332,r5
	load	[r14+-104],r4
	mov	23,r3
_Label_3800:
	load	[r5],r1
	add	r5,4,r5
	store	r1,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_3800
! ASSIGNMENT STATEMENT...
	mov	1981,r13		! source line 1981
	mov	"\0\0AS",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_627 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-96]
!   Data Move: _temp_626 = *_temp_627  (sizeInBytes=4)
	load	[r14+-96],r1
	load	[r1],r1
	store	r1,[r14+-100]
!   if intIsZero (_temp_626) then goto _runtimeErrorNullPointer
	load	[r14+-100],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_628 = _temp_626 + 32
	load	[r14+-100],r1
	add	r1,32,r1
	store	r1,[r14+-92]
!   _temp_629 = _temp_628 + 4
	load	[r14+-92],r1
	add	r1,4,r1
	store	r1,[r14+-88]
!   Data Move: numPagesRequired = *_temp_629  (sizeInBytes=4)
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
!   _temp_631 = childProcess + 32
	load	[r14+-212],r1
	add	r1,32,r1
	store	r1,[r14+-80]
!   _temp_630 = _temp_631		(4 bytes)
	load	[r14+-80],r1
	store	r1,[r14+-84]
!   _temp_632 = &_P_Kernel_frameManager
	set	_P_Kernel_frameManager,r1
	store	r1,[r14+-76]
!   Prepare Argument: offset=12  value=_temp_630  sizeInBytes=4
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
_Label_633:
!   if i >= numPagesRequired then goto _Label_635		(int)
	load	[r14+-228],r1
	load	[r14+-236],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_635
!	jmp	_Label_634
_Label_634:
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
!   _temp_637 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-68]
!   Data Move: _temp_636 = *_temp_637  (sizeInBytes=4)
	load	[r14+-68],r1
	load	[r1],r1
	store	r1,[r14+-72]
!   if intIsZero (_temp_636) then goto _runtimeErrorNullPointer
	load	[r14+-72],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_638 = _temp_636 + 32
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
!   _temp_639 = childProcess + 32
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
!   _temp_644 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-52]
!   Data Move: _temp_643 = *_temp_644  (sizeInBytes=4)
	load	[r14+-52],r1
	load	[r1],r1
	store	r1,[r14+-56]
!   if intIsZero (_temp_643) then goto _runtimeErrorNullPointer
	load	[r14+-56],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_645 = _temp_643 + 32
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
!   Retrieve Result: targetName=_temp_642  sizeInBytes=1
	loadb	[r15],r1
	storeb	r1,[r14+-12]
!   _temp_646 = _temp_642 XOR 1		(bool)
	loadb	[r14+-12],r1
	mov	1,r2
	xor	r1,r2,r1
	storeb	r1,[r14+-11]
!   if _temp_646 then goto _Label_641 else goto _Label_640
	loadb	[r14+-11],r1
	cmp	r1,0
	be	_Label_640
	jmp	_Label_641
_Label_640:
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
!   _temp_647 = childProcess + 32
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
_Label_641:
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
!   _temp_652 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-36]
!   Data Move: _temp_651 = *_temp_652  (sizeInBytes=4)
	load	[r14+-36],r1
	load	[r1],r1
	store	r1,[r14+-40]
!   if intIsZero (_temp_651) then goto _runtimeErrorNullPointer
	load	[r14+-40],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_653 = _temp_651 + 32
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
!   Retrieve Result: targetName=_temp_650  sizeInBytes=1
	loadb	[r15],r1
	storeb	r1,[r14+-10]
!   _temp_654 = _temp_650 XOR 0		(bool)
	loadb	[r14+-10],r1
	mov	0,r2
	xor	r1,r2,r1
	storeb	r1,[r14+-9]
!   if _temp_654 then goto _Label_649 else goto _Label_648
	loadb	[r14+-9],r1
	cmp	r1,0
	be	_Label_648
	jmp	_Label_649
_Label_648:
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
!   _temp_655 = childProcess + 32
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
_Label_649:
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
	jmp	_Label_633
_Label_635:
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
!   _temp_656 = _P_Kernel_ResumeChildAfterFork
	set	_P_Kernel_ResumeChildAfterFork,r1
	store	r1,[r14+-24]
!   if intIsZero (childThread) then goto _runtimeErrorNullPointer
	load	[r14+-216],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Prepare Argument: offset=12  value=_temp_656  sizeInBytes=4
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
!   _temp_658 = childProcess + 12
	load	[r14+-212],r1
	add	r1,12,r1
	store	r1,[r14+-16]
!   Data Move: _temp_657 = *_temp_658  (sizeInBytes=4)
	load	[r14+-16],r1
	load	[r1],r1
	store	r1,[r14+-20]
!   ReturnResult: _temp_657  (sizeInBytes=4)
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
	.word	_Label_659
	.word	0		! total size of parameters
	.word	336		! frame size = 336
	.word	_Label_660
	.word	-16
	.word	4
	.word	_Label_661
	.word	-20
	.word	4
	.word	_Label_662
	.word	-24
	.word	4
	.word	_Label_663
	.word	-28
	.word	4
	.word	_Label_664
	.word	-9
	.word	1
	.word	_Label_665
	.word	-32
	.word	4
	.word	_Label_666
	.word	-36
	.word	4
	.word	_Label_667
	.word	-40
	.word	4
	.word	_Label_668
	.word	-10
	.word	1
	.word	_Label_669
	.word	-44
	.word	4
	.word	_Label_670
	.word	-11
	.word	1
	.word	_Label_671
	.word	-48
	.word	4
	.word	_Label_672
	.word	-52
	.word	4
	.word	_Label_673
	.word	-56
	.word	4
	.word	_Label_674
	.word	-12
	.word	1
	.word	_Label_675
	.word	-60
	.word	4
	.word	_Label_676
	.word	-64
	.word	4
	.word	_Label_677
	.word	-68
	.word	4
	.word	_Label_678
	.word	-72
	.word	4
	.word	_Label_679
	.word	-76
	.word	4
	.word	_Label_680
	.word	-80
	.word	4
	.word	_Label_681
	.word	-84
	.word	4
	.word	_Label_682
	.word	-88
	.word	4
	.word	_Label_683
	.word	-92
	.word	4
	.word	_Label_684
	.word	-96
	.word	4
	.word	_Label_685
	.word	-100
	.word	4
	.word	_Label_686
	.word	-104
	.word	4
	.word	_Label_687
	.word	-108
	.word	4
	.word	_Label_688
	.word	-112
	.word	4
	.word	_Label_689
	.word	-116
	.word	4
	.word	_Label_690
	.word	-120
	.word	4
	.word	_Label_691
	.word	-124
	.word	4
	.word	_Label_692
	.word	-128
	.word	4
	.word	_Label_693
	.word	-132
	.word	4
	.word	_Label_694
	.word	-136
	.word	4
	.word	_Label_695
	.word	-140
	.word	4
	.word	_Label_696
	.word	-144
	.word	4
	.word	_Label_697
	.word	-148
	.word	4
	.word	_Label_698
	.word	-152
	.word	4
	.word	_Label_699
	.word	-156
	.word	4
	.word	_Label_700
	.word	-160
	.word	4
	.word	_Label_701
	.word	-164
	.word	4
	.word	_Label_702
	.word	-168
	.word	4
	.word	_Label_703
	.word	-172
	.word	4
	.word	_Label_704
	.word	-176
	.word	4
	.word	_Label_705
	.word	-180
	.word	4
	.word	_Label_706
	.word	-184
	.word	4
	.word	_Label_707
	.word	-188
	.word	4
	.word	_Label_708
	.word	-192
	.word	4
	.word	_Label_709
	.word	-196
	.word	4
	.word	_Label_710
	.word	-200
	.word	4
	.word	_Label_711
	.word	-204
	.word	4
	.word	_Label_712
	.word	-208
	.word	4
	.word	_Label_713
	.word	-212
	.word	4
	.word	_Label_714
	.word	-216
	.word	4
	.word	_Label_715
	.word	-220
	.word	4
	.word	_Label_716
	.word	-224
	.word	4
	.word	_Label_717
	.word	-228
	.word	4
	.word	_Label_718
	.word	-232
	.word	4
	.word	_Label_719
	.word	-236
	.word	4
	.word	_Label_720
	.word	-240
	.word	4
	.word	_Label_721
	.word	-332
	.word	92
	.word	0
_Label_659:
	.ascii	"Handle_Sys_Fork\0"
	.align
_Label_660:
	.byte	'?'
	.ascii	"_temp_658\0"
	.align
_Label_661:
	.byte	'?'
	.ascii	"_temp_657\0"
	.align
_Label_662:
	.byte	'?'
	.ascii	"_temp_656\0"
	.align
_Label_663:
	.byte	'?'
	.ascii	"_temp_655\0"
	.align
_Label_664:
	.byte	'C'
	.ascii	"_temp_654\0"
	.align
_Label_665:
	.byte	'?'
	.ascii	"_temp_653\0"
	.align
_Label_666:
	.byte	'?'
	.ascii	"_temp_652\0"
	.align
_Label_667:
	.byte	'?'
	.ascii	"_temp_651\0"
	.align
_Label_668:
	.byte	'C'
	.ascii	"_temp_650\0"
	.align
_Label_669:
	.byte	'?'
	.ascii	"_temp_647\0"
	.align
_Label_670:
	.byte	'C'
	.ascii	"_temp_646\0"
	.align
_Label_671:
	.byte	'?'
	.ascii	"_temp_645\0"
	.align
_Label_672:
	.byte	'?'
	.ascii	"_temp_644\0"
	.align
_Label_673:
	.byte	'?'
	.ascii	"_temp_643\0"
	.align
_Label_674:
	.byte	'C'
	.ascii	"_temp_642\0"
	.align
_Label_675:
	.byte	'?'
	.ascii	"_temp_639\0"
	.align
_Label_676:
	.byte	'?'
	.ascii	"_temp_638\0"
	.align
_Label_677:
	.byte	'?'
	.ascii	"_temp_637\0"
	.align
_Label_678:
	.byte	'?'
	.ascii	"_temp_636\0"
	.align
_Label_679:
	.byte	'?'
	.ascii	"_temp_632\0"
	.align
_Label_680:
	.byte	'?'
	.ascii	"_temp_631\0"
	.align
_Label_681:
	.byte	'?'
	.ascii	"_temp_630\0"
	.align
_Label_682:
	.byte	'?'
	.ascii	"_temp_629\0"
	.align
_Label_683:
	.byte	'?'
	.ascii	"_temp_628\0"
	.align
_Label_684:
	.byte	'?'
	.ascii	"_temp_627\0"
	.align
_Label_685:
	.byte	'?'
	.ascii	"_temp_626\0"
	.align
_Label_686:
	.byte	'?'
	.ascii	"_temp_625\0"
	.align
_Label_687:
	.byte	'?'
	.ascii	"_temp_624\0"
	.align
_Label_688:
	.byte	'?'
	.ascii	"_temp_623\0"
	.align
_Label_689:
	.byte	'?'
	.ascii	"_temp_622\0"
	.align
_Label_690:
	.byte	'?'
	.ascii	"_temp_621\0"
	.align
_Label_691:
	.byte	'?'
	.ascii	"_temp_620\0"
	.align
_Label_692:
	.byte	'?'
	.ascii	"_temp_619\0"
	.align
_Label_693:
	.byte	'?'
	.ascii	"_temp_618\0"
	.align
_Label_694:
	.byte	'?'
	.ascii	"_temp_617\0"
	.align
_Label_695:
	.byte	'?'
	.ascii	"_temp_616\0"
	.align
_Label_696:
	.byte	'?'
	.ascii	"_temp_615\0"
	.align
_Label_697:
	.byte	'?'
	.ascii	"_temp_614\0"
	.align
_Label_698:
	.byte	'?'
	.ascii	"_temp_613\0"
	.align
_Label_699:
	.byte	'?'
	.ascii	"_temp_612\0"
	.align
_Label_700:
	.byte	'?'
	.ascii	"_temp_608\0"
	.align
_Label_701:
	.byte	'?'
	.ascii	"_temp_607\0"
	.align
_Label_702:
	.byte	'?'
	.ascii	"_temp_606\0"
	.align
_Label_703:
	.byte	'?'
	.ascii	"_temp_605\0"
	.align
_Label_704:
	.byte	'?'
	.ascii	"_temp_604\0"
	.align
_Label_705:
	.byte	'?'
	.ascii	"_temp_603\0"
	.align
_Label_706:
	.byte	'?'
	.ascii	"_temp_602\0"
	.align
_Label_707:
	.byte	'?'
	.ascii	"_temp_601\0"
	.align
_Label_708:
	.byte	'?'
	.ascii	"_temp_600\0"
	.align
_Label_709:
	.byte	'?'
	.ascii	"_temp_599\0"
	.align
_Label_710:
	.byte	'?'
	.ascii	"_temp_598\0"
	.align
_Label_711:
	.byte	'?'
	.ascii	"_temp_597\0"
	.align
_Label_712:
	.byte	'?'
	.ascii	"_temp_596\0"
	.align
_Label_713:
	.byte	'P'
	.ascii	"childProcess\0"
	.align
_Label_714:
	.byte	'P'
	.ascii	"childThread\0"
	.align
_Label_715:
	.byte	'I'
	.ascii	"childFrameAddress\0"
	.align
_Label_716:
	.byte	'I'
	.ascii	"parentFrameAddress\0"
	.align
_Label_717:
	.byte	'I'
	.ascii	"i\0"
	.align
_Label_718:
	.byte	'I'
	.ascii	"junk\0"
	.align
_Label_719:
	.byte	'I'
	.ascii	"numPagesRequired\0"
	.align
_Label_720:
	.byte	'I'
	.ascii	"oldUserPC\0"
	.align
_Label_721:
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
_Label_3801:
	push	r0
	sub	r1,1,r1
	bne	_Label_3801
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
_Label_722:
!   if i >= 10 then goto _Label_724		(int)
	load	[r14+-92],r1
	mov	10,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_724
!	jmp	_Label_723
_Label_723:
	mov	2017,r13		! source line 2017
	mov	"\0\0WB",r10
! IF STATEMENT...
	mov	2019,r13		! source line 2019
	mov	"\0\0IF",r10
!   _temp_729 = &_P_Kernel_processManager
	set	_P_Kernel_processManager,r1
	store	r1,[r14+-84]
!   _temp_730 = _temp_729 + 8
	load	[r14+-84],r1
	add	r1,8,r1
	store	r1,[r14+-80]
!   Move address of _temp_730 [i ] into _temp_731
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
!   _temp_732 = _temp_731 + 12
	load	[r14+-76],r1
	add	r1,12,r1
	store	r1,[r14+-72]
!   Data Move: _temp_728 = *_temp_732  (sizeInBytes=4)
	load	[r14+-72],r1
	load	[r1],r1
	store	r1,[r14+-88]
!   if processID != _temp_728 then goto _Label_726		(int)
	load	[r14+8],r1
	load	[r14+-88],r2
	cmp	r1,r2
	bne	_Label_726
!	jmp	_Label_727
_Label_727:
!   if processID <= -1 then goto _Label_726		(int)
	load	[r14+8],r1
	mov	-1,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	ble	_Label_726
!	jmp	_Label_725
_Label_725:
! THEN...
	mov	2022,r13		! source line 2022
	mov	"\0\0TN",r10
! IF STATEMENT...
	mov	2022,r13		! source line 2022
	mov	"\0\0IF",r10
!   _temp_736 = &_P_Kernel_processManager
	set	_P_Kernel_processManager,r1
	store	r1,[r14+-64]
!   _temp_737 = _temp_736 + 8
	load	[r14+-64],r1
	add	r1,8,r1
	store	r1,[r14+-60]
!   Move address of _temp_737 [i ] into _temp_738
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
!   _temp_739 = _temp_738 + 16
	load	[r14+-56],r1
	add	r1,16,r1
	store	r1,[r14+-52]
!   Data Move: _temp_735 = *_temp_739  (sizeInBytes=4)
	load	[r14+-52],r1
	load	[r1],r1
	store	r1,[r14+-68]
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_742 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-40]
!   Data Move: _temp_741 = *_temp_742  (sizeInBytes=4)
	load	[r14+-40],r1
	load	[r1],r1
	store	r1,[r14+-44]
!   if intIsZero (_temp_741) then goto _runtimeErrorNullPointer
	load	[r14+-44],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_743 = _temp_741 + 12
	load	[r14+-44],r1
	add	r1,12,r1
	store	r1,[r14+-36]
!   Data Move: _temp_740 = *_temp_743  (sizeInBytes=4)
	load	[r14+-36],r1
	load	[r1],r1
	store	r1,[r14+-48]
!   if _temp_735 != _temp_740 then goto _Label_734		(int)
	load	[r14+-68],r1
	load	[r14+-48],r2
	cmp	r1,r2
	bne	_Label_734
!	jmp	_Label_733
_Label_733:
! THEN...
	mov	2024,r13		! source line 2024
	mov	"\0\0TN",r10
! RETURN STATEMENT...
	mov	2024,r13		! source line 2024
	mov	"\0\0RE",r10
	mov	2024,r13		! source line 2024
	mov	"\0\0SE",r10
!   _temp_746 = &_P_Kernel_processManager
	set	_P_Kernel_processManager,r1
	store	r1,[r14+-24]
!   _temp_747 = _temp_746 + 8
	load	[r14+-24],r1
	add	r1,8,r1
	store	r1,[r14+-20]
!   Move address of _temp_747 [i ] into _temp_748
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
!   _temp_745 = _temp_748		(4 bytes)
	load	[r14+-16],r1
	store	r1,[r14+-28]
!   _temp_749 = &_P_Kernel_processManager
	set	_P_Kernel_processManager,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=12  value=_temp_745  sizeInBytes=4
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
!   Retrieve Result: targetName=_temp_744  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-32]
!   ReturnResult: _temp_744  (sizeInBytes=4)
	load	[r14+-32],r1
	store	r1,[r14+8]
	add	r15,96,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_734:
! END IF...
_Label_726:
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
	jmp	_Label_722
_Label_724:
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
	.word	_Label_750
	.word	4		! total size of parameters
	.word	92		! frame size = 92
	.word	_Label_751
	.word	8
	.word	4
	.word	_Label_752
	.word	-12
	.word	4
	.word	_Label_753
	.word	-16
	.word	4
	.word	_Label_754
	.word	-20
	.word	4
	.word	_Label_755
	.word	-24
	.word	4
	.word	_Label_756
	.word	-28
	.word	4
	.word	_Label_757
	.word	-32
	.word	4
	.word	_Label_758
	.word	-36
	.word	4
	.word	_Label_759
	.word	-40
	.word	4
	.word	_Label_760
	.word	-44
	.word	4
	.word	_Label_761
	.word	-48
	.word	4
	.word	_Label_762
	.word	-52
	.word	4
	.word	_Label_763
	.word	-56
	.word	4
	.word	_Label_764
	.word	-60
	.word	4
	.word	_Label_765
	.word	-64
	.word	4
	.word	_Label_766
	.word	-68
	.word	4
	.word	_Label_767
	.word	-72
	.word	4
	.word	_Label_768
	.word	-76
	.word	4
	.word	_Label_769
	.word	-80
	.word	4
	.word	_Label_770
	.word	-84
	.word	4
	.word	_Label_771
	.word	-88
	.word	4
	.word	_Label_772
	.word	-92
	.word	4
	.word	0
_Label_750:
	.ascii	"Handle_Sys_Join\0"
	.align
_Label_751:
	.byte	'I'
	.ascii	"processID\0"
	.align
_Label_752:
	.byte	'?'
	.ascii	"_temp_749\0"
	.align
_Label_753:
	.byte	'?'
	.ascii	"_temp_748\0"
	.align
_Label_754:
	.byte	'?'
	.ascii	"_temp_747\0"
	.align
_Label_755:
	.byte	'?'
	.ascii	"_temp_746\0"
	.align
_Label_756:
	.byte	'?'
	.ascii	"_temp_745\0"
	.align
_Label_757:
	.byte	'?'
	.ascii	"_temp_744\0"
	.align
_Label_758:
	.byte	'?'
	.ascii	"_temp_743\0"
	.align
_Label_759:
	.byte	'?'
	.ascii	"_temp_742\0"
	.align
_Label_760:
	.byte	'?'
	.ascii	"_temp_741\0"
	.align
_Label_761:
	.byte	'?'
	.ascii	"_temp_740\0"
	.align
_Label_762:
	.byte	'?'
	.ascii	"_temp_739\0"
	.align
_Label_763:
	.byte	'?'
	.ascii	"_temp_738\0"
	.align
_Label_764:
	.byte	'?'
	.ascii	"_temp_737\0"
	.align
_Label_765:
	.byte	'?'
	.ascii	"_temp_736\0"
	.align
_Label_766:
	.byte	'?'
	.ascii	"_temp_735\0"
	.align
_Label_767:
	.byte	'?'
	.ascii	"_temp_732\0"
	.align
_Label_768:
	.byte	'?'
	.ascii	"_temp_731\0"
	.align
_Label_769:
	.byte	'?'
	.ascii	"_temp_730\0"
	.align
_Label_770:
	.byte	'?'
	.ascii	"_temp_729\0"
	.align
_Label_771:
	.byte	'?'
	.ascii	"_temp_728\0"
	.align
_Label_772:
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
_Label_3802:
	push	r0
	sub	r1,1,r1
	bne	_Label_3802
	mov	2034,r13		! source line 2034
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	2050,r13		! source line 2050
	mov	"\0\0AS",r10
!   _temp_773 = &container
	add	r14,-320,r1
	store	r1,[r14+-200]
!   NEW ARRAY Constructor...
!   _temp_775 = &_temp_774
	add	r14,-196,r1
	store	r1,[r14+-172]
!   _temp_775 = _temp_775 + 4
	load	[r14+-172],r1
	add	r1,4,r1
	store	r1,[r14+-172]
!   Next value...
	mov	20,r1
	store	r1,[r14+-168]
_Label_777:
!   Data Move: *_temp_775 = 97  (sizeInBytes=1)
	mov	97,r1
	load	[r14+-172],r2
	storeb	r1,[r2]
!   _temp_775 = _temp_775 + 1
	load	[r14+-172],r1
	add	r1,1,r1
	store	r1,[r14+-172]
!   _temp_776 = _temp_776 + -1
	load	[r14+-168],r1
	add	r1,-1,r1
	store	r1,[r14+-168]
!   if intNotZero (_temp_776) then goto _Label_777
	load	[r14+-168],r1
	cmp	r1,r0
	bne	_Label_777
!   Initialize the array size...
	mov	20,r1
	store	r1,[r14+-196]
!   _temp_778 = &_temp_774
	add	r14,-196,r1
	store	r1,[r14+-164]
!   make sure array has size 20
	load	[r14+-200],r1
	load	[r1],r1
	set	20, r2
	cmp	r1,0
	be	_Label_3803
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bne	_runtimeErrorWrongArraySize
_Label_3803:
!   make sure array has size 20
	load	[r14+-164],r1
	load	[r1],r1
	set	20, r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bne	_runtimeErrorWrongArraySize
!   Data Move: *_temp_773 = *_temp_778  (sizeInBytes=24)
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
!   _temp_779 = filename		(4 bytes)
	load	[r14+8],r1
	store	r1,[r14+-160]
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_781 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-152]
!   Data Move: _temp_780 = *_temp_781  (sizeInBytes=4)
	load	[r14+-152],r1
	load	[r1],r1
	store	r1,[r14+-156]
!   if intIsZero (_temp_780) then goto _runtimeErrorNullPointer
	load	[r14+-156],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_782 = _temp_780 + 32
	load	[r14+-156],r1
	add	r1,32,r1
	store	r1,[r14+-148]
!   Prepare Argument: offset=12  value=filenamePointer  sizeInBytes=4
	load	[r14+-324],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=_temp_779  sizeInBytes=4
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
_Label_3804:
	store	r0,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_3804
!   newAddrSpace = _P_Kernel_AddrSpace
	set	_P_Kernel_AddrSpace,r1
	store	r1,[r14+-292]
! SEND STATEMENT...
	mov	2058,r13		! source line 2058
	mov	"\0\0SE",r10
!   _temp_784 = &newAddrSpace
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
!   _temp_785 = &_P_Kernel_fileManager
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
!   if intIsZero (openFile) then goto _Label_786
	load	[r14+-296],r1
	cmp	r1,r0
	be	_Label_786
	jmp	_Label_787
_Label_786:
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
_Label_787:
! ASSIGNMENT STATEMENT...
	mov	2069,r13		! source line 2069
	mov	"\0\0AS",r10
	mov	2069,r13		! source line 2069
	mov	"\0\0SE",r10
!   _temp_788 = &newAddrSpace
	add	r14,-292,r1
	store	r1,[r14+-132]
!   if intIsZero (openFile) then goto _runtimeErrorNullPointer
	load	[r14+-296],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Prepare Argument: offset=12  value=_temp_788  sizeInBytes=4
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
!   if initUserPC != -1 then goto _Label_790		(int)
	load	[r14+-332],r1
	mov	-1,r2
	cmp	r1,r2
	bne	_Label_790
!	jmp	_Label_789
_Label_789:
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
_Label_790:
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
_Label_791:
!   if i >= 10 then goto _Label_793		(int)
	load	[r14+-348],r1
	mov	10,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_793
!	jmp	_Label_792
_Label_792:
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
!   _temp_798 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-120]
!   Data Move: _temp_797 = *_temp_798  (sizeInBytes=4)
	load	[r14+-120],r1
	load	[r1],r1
	store	r1,[r14+-124]
!   if intIsZero (_temp_797) then goto _runtimeErrorNullPointer
	load	[r14+-124],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_799 = _temp_797 + 124
	load	[r14+-124],r1
	add	r1,124,r1
	store	r1,[r14+-116]
!   Move address of _temp_799 [i ] into _temp_800
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
!   Data Move: _temp_796 = *_temp_800  (sizeInBytes=4)
	load	[r14+-112],r1
	load	[r1],r1
	store	r1,[r14+-128]
!   if intIsZero (_temp_796) then goto _Label_794
	load	[r14+-128],r1
	cmp	r1,r0
	be	_Label_794
	jmp	_Label_795
_Label_794:
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
!   _temp_802 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-104]
!   Data Move: _temp_801 = *_temp_802  (sizeInBytes=4)
	load	[r14+-104],r1
	load	[r1],r1
	store	r1,[r14+-108]
!   if intIsZero (_temp_801) then goto _runtimeErrorNullPointer
	load	[r14+-108],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_803 = _temp_801 + 124
	load	[r14+-108],r1
	add	r1,124,r1
	store	r1,[r14+-100]
!   Move address of _temp_803 [i ] into _temp_804
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
!   Data Move: *_temp_804 = openFilePtr  (sizeInBytes=4)
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
	jmp	_Label_793
! END IF...
_Label_795:
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
	jmp	_Label_791
_Label_793:
! IF STATEMENT...
	mov	2087,r13		! source line 2087
	mov	"\0\0IF",r10
!   _temp_807 = emptySlotFound XOR 0		(bool)
	loadb	[r14+-10],r1
	mov	0,r2
	xor	r1,r2,r1
	storeb	r1,[r14+-9]
!   if _temp_807 then goto _Label_806 else goto _Label_805
	loadb	[r14+-9],r1
	cmp	r1,0
	be	_Label_805
	jmp	_Label_806
_Label_805:
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
_Label_806:
! SEND STATEMENT...
	mov	2092,r13		! source line 2092
	mov	"\0\0SE",r10
!   _temp_808 = &_P_Kernel_fileManager
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
!   _temp_811 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-80]
!   Data Move: _temp_810 = *_temp_811  (sizeInBytes=4)
	load	[r14+-80],r1
	load	[r1],r1
	store	r1,[r14+-84]
!   if intIsZero (_temp_810) then goto _runtimeErrorNullPointer
	load	[r14+-84],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_812 = _temp_810 + 32
	load	[r14+-84],r1
	add	r1,32,r1
	store	r1,[r14+-76]
!   _temp_809 = _temp_812		(4 bytes)
	load	[r14+-76],r1
	store	r1,[r14+-88]
!   _temp_813 = &_P_Kernel_frameManager
	set	_P_Kernel_frameManager,r1
	store	r1,[r14+-72]
!   Prepare Argument: offset=12  value=_temp_809  sizeInBytes=4
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
!   _temp_815 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-64]
!   Data Move: _temp_814 = *_temp_815  (sizeInBytes=4)
	load	[r14+-64],r1
	load	[r1],r1
	store	r1,[r14+-68]
!   if intIsZero (_temp_814) then goto _runtimeErrorNullPointer
	load	[r14+-68],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_816 = _temp_814 + 32
	load	[r14+-68],r1
	add	r1,32,r1
	store	r1,[r14+-60]
!   Data Move: *_temp_816 = newAddrSpace  (sizeInBytes=92)
	add	r14,-292,r5
	load	[r14+-60],r4
	mov	23,r3
_Label_3805:
	load	[r5],r1
	add	r5,4,r5
	store	r1,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_3805
! ASSIGNMENT STATEMENT...
	mov	2101,r13		! source line 2101
	mov	"\0\0AS",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_819 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-48]
!   Data Move: _temp_818 = *_temp_819  (sizeInBytes=4)
	load	[r14+-48],r1
	load	[r1],r1
	store	r1,[r14+-52]
!   if intIsZero (_temp_818) then goto _runtimeErrorNullPointer
	load	[r14+-52],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_820 = _temp_818 + 32
	load	[r14+-52],r1
	add	r1,32,r1
	store	r1,[r14+-44]
!   _temp_821 = _temp_820 + 4
	load	[r14+-44],r1
	add	r1,4,r1
	store	r1,[r14+-40]
!   Data Move: _temp_817 = *_temp_821  (sizeInBytes=4)
	load	[r14+-40],r1
	load	[r1],r1
	store	r1,[r14+-56]
!   initUserStackTop = _temp_817 * 8192		(int)
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
!   _temp_822 = _P_Kernel_currentThread + 88
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,88,r1
	store	r1,[r14+-36]
!   Move address of _temp_822 [999 ] into _temp_823
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
!   initSystemStackTop = _temp_823		(4 bytes)
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
!   _temp_825 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-24]
!   Data Move: _temp_824 = *_temp_825  (sizeInBytes=4)
	load	[r14+-24],r1
	load	[r1],r1
	store	r1,[r14+-28]
!   if intIsZero (_temp_824) then goto _runtimeErrorNullPointer
	load	[r14+-28],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_826 = _temp_824 + 32
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
!   _temp_827 = _P_Kernel_currentThread + 4092
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4092,r1
	store	r1,[r14+-16]
!   Data Move: *_temp_827 = 1  (sizeInBytes=1)
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
	.word	_Label_828
	.word	4		! total size of parameters
	.word	360		! frame size = 360
	.word	_Label_829
	.word	8
	.word	4
	.word	_Label_830
	.word	-16
	.word	4
	.word	_Label_831
	.word	-20
	.word	4
	.word	_Label_832
	.word	-24
	.word	4
	.word	_Label_833
	.word	-28
	.word	4
	.word	_Label_834
	.word	-32
	.word	4
	.word	_Label_835
	.word	-36
	.word	4
	.word	_Label_836
	.word	-40
	.word	4
	.word	_Label_837
	.word	-44
	.word	4
	.word	_Label_838
	.word	-48
	.word	4
	.word	_Label_839
	.word	-52
	.word	4
	.word	_Label_840
	.word	-56
	.word	4
	.word	_Label_841
	.word	-60
	.word	4
	.word	_Label_842
	.word	-64
	.word	4
	.word	_Label_843
	.word	-68
	.word	4
	.word	_Label_844
	.word	-72
	.word	4
	.word	_Label_845
	.word	-76
	.word	4
	.word	_Label_846
	.word	-80
	.word	4
	.word	_Label_847
	.word	-84
	.word	4
	.word	_Label_848
	.word	-88
	.word	4
	.word	_Label_849
	.word	-92
	.word	4
	.word	_Label_850
	.word	-9
	.word	1
	.word	_Label_851
	.word	-96
	.word	4
	.word	_Label_852
	.word	-100
	.word	4
	.word	_Label_853
	.word	-104
	.word	4
	.word	_Label_854
	.word	-108
	.word	4
	.word	_Label_855
	.word	-112
	.word	4
	.word	_Label_856
	.word	-116
	.word	4
	.word	_Label_857
	.word	-120
	.word	4
	.word	_Label_858
	.word	-124
	.word	4
	.word	_Label_859
	.word	-128
	.word	4
	.word	_Label_860
	.word	-132
	.word	4
	.word	_Label_861
	.word	-136
	.word	4
	.word	_Label_862
	.word	-140
	.word	4
	.word	_Label_863
	.word	-144
	.word	4
	.word	_Label_864
	.word	-148
	.word	4
	.word	_Label_865
	.word	-152
	.word	4
	.word	_Label_866
	.word	-156
	.word	4
	.word	_Label_867
	.word	-160
	.word	4
	.word	_Label_868
	.word	-164
	.word	4
	.word	_Label_869
	.word	-168
	.word	4
	.word	_Label_870
	.word	-172
	.word	4
	.word	_Label_871
	.word	-196
	.word	24
	.word	_Label_872
	.word	-200
	.word	4
	.word	_Label_873
	.word	-292
	.word	92
	.word	_Label_874
	.word	-296
	.word	4
	.word	_Label_875
	.word	-320
	.word	24
	.word	_Label_876
	.word	-324
	.word	4
	.word	_Label_877
	.word	-328
	.word	4
	.word	_Label_878
	.word	-332
	.word	4
	.word	_Label_879
	.word	-336
	.word	4
	.word	_Label_880
	.word	-340
	.word	4
	.word	_Label_881
	.word	-344
	.word	4
	.word	_Label_882
	.word	-10
	.word	1
	.word	_Label_883
	.word	-348
	.word	4
	.word	_Label_884
	.word	-352
	.word	4
	.word	0
_Label_828:
	.ascii	"Handle_Sys_Exec\0"
	.align
_Label_829:
	.byte	'P'
	.ascii	"filename\0"
	.align
_Label_830:
	.byte	'?'
	.ascii	"_temp_827\0"
	.align
_Label_831:
	.byte	'?'
	.ascii	"_temp_826\0"
	.align
_Label_832:
	.byte	'?'
	.ascii	"_temp_825\0"
	.align
_Label_833:
	.byte	'?'
	.ascii	"_temp_824\0"
	.align
_Label_834:
	.byte	'?'
	.ascii	"_temp_823\0"
	.align
_Label_835:
	.byte	'?'
	.ascii	"_temp_822\0"
	.align
_Label_836:
	.byte	'?'
	.ascii	"_temp_821\0"
	.align
_Label_837:
	.byte	'?'
	.ascii	"_temp_820\0"
	.align
_Label_838:
	.byte	'?'
	.ascii	"_temp_819\0"
	.align
_Label_839:
	.byte	'?'
	.ascii	"_temp_818\0"
	.align
_Label_840:
	.byte	'?'
	.ascii	"_temp_817\0"
	.align
_Label_841:
	.byte	'?'
	.ascii	"_temp_816\0"
	.align
_Label_842:
	.byte	'?'
	.ascii	"_temp_815\0"
	.align
_Label_843:
	.byte	'?'
	.ascii	"_temp_814\0"
	.align
_Label_844:
	.byte	'?'
	.ascii	"_temp_813\0"
	.align
_Label_845:
	.byte	'?'
	.ascii	"_temp_812\0"
	.align
_Label_846:
	.byte	'?'
	.ascii	"_temp_811\0"
	.align
_Label_847:
	.byte	'?'
	.ascii	"_temp_810\0"
	.align
_Label_848:
	.byte	'?'
	.ascii	"_temp_809\0"
	.align
_Label_849:
	.byte	'?'
	.ascii	"_temp_808\0"
	.align
_Label_850:
	.byte	'C'
	.ascii	"_temp_807\0"
	.align
_Label_851:
	.byte	'?'
	.ascii	"_temp_804\0"
	.align
_Label_852:
	.byte	'?'
	.ascii	"_temp_803\0"
	.align
_Label_853:
	.byte	'?'
	.ascii	"_temp_802\0"
	.align
_Label_854:
	.byte	'?'
	.ascii	"_temp_801\0"
	.align
_Label_855:
	.byte	'?'
	.ascii	"_temp_800\0"
	.align
_Label_856:
	.byte	'?'
	.ascii	"_temp_799\0"
	.align
_Label_857:
	.byte	'?'
	.ascii	"_temp_798\0"
	.align
_Label_858:
	.byte	'?'
	.ascii	"_temp_797\0"
	.align
_Label_859:
	.byte	'?'
	.ascii	"_temp_796\0"
	.align
_Label_860:
	.byte	'?'
	.ascii	"_temp_788\0"
	.align
_Label_861:
	.byte	'?'
	.ascii	"_temp_785\0"
	.align
_Label_862:
	.byte	'?'
	.ascii	"_temp_784\0"
	.align
_Label_863:
	.byte	'?'
	.ascii	"_temp_783\0"
	.align
_Label_864:
	.byte	'?'
	.ascii	"_temp_782\0"
	.align
_Label_865:
	.byte	'?'
	.ascii	"_temp_781\0"
	.align
_Label_866:
	.byte	'?'
	.ascii	"_temp_780\0"
	.align
_Label_867:
	.byte	'?'
	.ascii	"_temp_779\0"
	.align
_Label_868:
	.byte	'?'
	.ascii	"_temp_778\0"
	.align
_Label_869:
	.byte	'?'
	.ascii	"_temp_776\0"
	.align
_Label_870:
	.byte	'?'
	.ascii	"_temp_775\0"
	.align
_Label_871:
	.byte	'?'
	.ascii	"_temp_774\0"
	.align
_Label_872:
	.byte	'?'
	.ascii	"_temp_773\0"
	.align
_Label_873:
	.byte	'O'
	.ascii	"newAddrSpace\0"
	.align
_Label_874:
	.byte	'P'
	.ascii	"openFile\0"
	.align
_Label_875:
	.byte	'A'
	.ascii	"container\0"
	.align
_Label_876:
	.byte	'P'
	.ascii	"filenamePointer\0"
	.align
_Label_877:
	.byte	'I'
	.ascii	"numOfCharCopied\0"
	.align
_Label_878:
	.byte	'I'
	.ascii	"initUserPC\0"
	.align
_Label_879:
	.byte	'I'
	.ascii	"initUserStackTop\0"
	.align
_Label_880:
	.byte	'I'
	.ascii	"initSystemStackTop\0"
	.align
_Label_881:
	.byte	'I'
	.ascii	"junk\0"
	.align
_Label_882:
	.byte	'B'
	.ascii	"emptySlotFound\0"
	.align
_Label_883:
	.byte	'I'
	.ascii	"i\0"
	.align
_Label_884:
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
_Label_3806:
	push	r0
	sub	r1,1,r1
	bne	_Label_3806
	mov	2118,r13		! source line 2118
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	2123,r13		! source line 2123
	mov	"\0\0AS",r10
!   _temp_885 = &container
	add	r14,-104,r1
	store	r1,[r14+-76]
!   NEW ARRAY Constructor...
!   _temp_887 = &_temp_886
	add	r14,-72,r1
	store	r1,[r14+-48]
!   _temp_887 = _temp_887 + 4
	load	[r14+-48],r1
	add	r1,4,r1
	store	r1,[r14+-48]
!   Next value...
	mov	20,r1
	store	r1,[r14+-44]
_Label_889:
!   Data Move: *_temp_887 = 97  (sizeInBytes=1)
	mov	97,r1
	load	[r14+-48],r2
	storeb	r1,[r2]
!   _temp_887 = _temp_887 + 1
	load	[r14+-48],r1
	add	r1,1,r1
	store	r1,[r14+-48]
!   _temp_888 = _temp_888 + -1
	load	[r14+-44],r1
	add	r1,-1,r1
	store	r1,[r14+-44]
!   if intNotZero (_temp_888) then goto _Label_889
	load	[r14+-44],r1
	cmp	r1,r0
	bne	_Label_889
!   Initialize the array size...
	mov	20,r1
	store	r1,[r14+-72]
!   _temp_890 = &_temp_886
	add	r14,-72,r1
	store	r1,[r14+-40]
!   make sure array has size 20
	load	[r14+-76],r1
	load	[r1],r1
	set	20, r2
	cmp	r1,0
	be	_Label_3807
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bne	_runtimeErrorWrongArraySize
_Label_3807:
!   make sure array has size 20
	load	[r14+-40],r1
	load	[r1],r1
	set	20, r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bne	_runtimeErrorWrongArraySize
!   Data Move: *_temp_885 = *_temp_890  (sizeInBytes=24)
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
!   _temp_891 = filename		(4 bytes)
	load	[r14+8],r1
	store	r1,[r14+-36]
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_893 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-28]
!   Data Move: _temp_892 = *_temp_893  (sizeInBytes=4)
	load	[r14+-28],r1
	load	[r1],r1
	store	r1,[r14+-32]
!   if intIsZero (_temp_892) then goto _runtimeErrorNullPointer
	load	[r14+-32],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_894 = _temp_892 + 32
	load	[r14+-32],r1
	add	r1,32,r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=12  value=kernelAddr  sizeInBytes=4
	load	[r14+-108],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=_temp_891  sizeInBytes=4
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
!   _temp_895 = _StringConst_39
	set	_StringConst_39,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_895  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   Call the function
	mov	2126,r13		! source line 2126
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_896 = _StringConst_40
	set	_StringConst_40,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_896  sizeInBytes=4
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
!   _temp_897 = _StringConst_41
	set	_StringConst_41,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_897  sizeInBytes=4
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
	.word	_Label_898
	.word	4		! total size of parameters
	.word	116		! frame size = 116
	.word	_Label_899
	.word	8
	.word	4
	.word	_Label_900
	.word	-12
	.word	4
	.word	_Label_901
	.word	-16
	.word	4
	.word	_Label_902
	.word	-20
	.word	4
	.word	_Label_903
	.word	-24
	.word	4
	.word	_Label_904
	.word	-28
	.word	4
	.word	_Label_905
	.word	-32
	.word	4
	.word	_Label_906
	.word	-36
	.word	4
	.word	_Label_907
	.word	-40
	.word	4
	.word	_Label_908
	.word	-44
	.word	4
	.word	_Label_909
	.word	-48
	.word	4
	.word	_Label_910
	.word	-72
	.word	24
	.word	_Label_911
	.word	-76
	.word	4
	.word	_Label_912
	.word	-80
	.word	4
	.word	_Label_913
	.word	-104
	.word	24
	.word	_Label_914
	.word	-108
	.word	4
	.word	0
_Label_898:
	.ascii	"Handle_Sys_Create\0"
	.align
_Label_899:
	.byte	'P'
	.ascii	"filename\0"
	.align
_Label_900:
	.byte	'?'
	.ascii	"_temp_897\0"
	.align
_Label_901:
	.byte	'?'
	.ascii	"_temp_896\0"
	.align
_Label_902:
	.byte	'?'
	.ascii	"_temp_895\0"
	.align
_Label_903:
	.byte	'?'
	.ascii	"_temp_894\0"
	.align
_Label_904:
	.byte	'?'
	.ascii	"_temp_893\0"
	.align
_Label_905:
	.byte	'?'
	.ascii	"_temp_892\0"
	.align
_Label_906:
	.byte	'?'
	.ascii	"_temp_891\0"
	.align
_Label_907:
	.byte	'?'
	.ascii	"_temp_890\0"
	.align
_Label_908:
	.byte	'?'
	.ascii	"_temp_888\0"
	.align
_Label_909:
	.byte	'?'
	.ascii	"_temp_887\0"
	.align
_Label_910:
	.byte	'?'
	.ascii	"_temp_886\0"
	.align
_Label_911:
	.byte	'?'
	.ascii	"_temp_885\0"
	.align
_Label_912:
	.byte	'I'
	.ascii	"numOfCharCopied\0"
	.align
_Label_913:
	.byte	'A'
	.ascii	"container\0"
	.align
_Label_914:
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
	mov	40,r1
_Label_3808:
	push	r0
	sub	r1,1,r1
	bne	_Label_3808
	mov	2137,r13		! source line 2137
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	2149,r13		! source line 2149
	mov	"\0\0AS",r10
!   _temp_915 = &container
	add	r14,-136,r1
	store	r1,[r14+-108]
!   NEW ARRAY Constructor...
!   _temp_917 = &_temp_916
	add	r14,-104,r1
	store	r1,[r14+-80]
!   _temp_917 = _temp_917 + 4
	load	[r14+-80],r1
	add	r1,4,r1
	store	r1,[r14+-80]
!   Next value...
	mov	20,r1
	store	r1,[r14+-76]
_Label_919:
!   Data Move: *_temp_917 = 97  (sizeInBytes=1)
	mov	97,r1
	load	[r14+-80],r2
	storeb	r1,[r2]
!   _temp_917 = _temp_917 + 1
	load	[r14+-80],r1
	add	r1,1,r1
	store	r1,[r14+-80]
!   _temp_918 = _temp_918 + -1
	load	[r14+-76],r1
	add	r1,-1,r1
	store	r1,[r14+-76]
!   if intNotZero (_temp_918) then goto _Label_919
	load	[r14+-76],r1
	cmp	r1,r0
	bne	_Label_919
!   Initialize the array size...
	mov	20,r1
	store	r1,[r14+-104]
!   _temp_920 = &_temp_916
	add	r14,-104,r1
	store	r1,[r14+-72]
!   make sure array has size 20
	load	[r14+-108],r1
	load	[r1],r1
	set	20, r2
	cmp	r1,0
	be	_Label_3809
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bne	_runtimeErrorWrongArraySize
_Label_3809:
!   make sure array has size 20
	load	[r14+-72],r1
	load	[r1],r1
	set	20, r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bne	_runtimeErrorWrongArraySize
!   Data Move: *_temp_915 = *_temp_920  (sizeInBytes=24)
	load	[r14+-72],r5
	load	[r14+-108],r4
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
	add	r14,-136,r1
	store	r1,[r14+-140]
! ASSIGNMENT STATEMENT...
	mov	2151,r13		! source line 2151
	mov	"\0\0AS",r10
	mov	2151,r13		! source line 2151
	mov	"\0\0SE",r10
!   _temp_921 = filename		(4 bytes)
	load	[r14+8],r1
	store	r1,[r14+-68]
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_923 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-60]
!   Data Move: _temp_922 = *_temp_923  (sizeInBytes=4)
	load	[r14+-60],r1
	load	[r1],r1
	store	r1,[r14+-64]
!   if intIsZero (_temp_922) then goto _runtimeErrorNullPointer
	load	[r14+-64],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_924 = _temp_922 + 32
	load	[r14+-64],r1
	add	r1,32,r1
	store	r1,[r14+-56]
!   Prepare Argument: offset=12  value=strKernelAddr  sizeInBytes=4
	load	[r14+-140],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=_temp_921  sizeInBytes=4
	load	[r14+-68],r1
	store	r1,[r15+8]
!   Prepare Argument: offset=20  value=20  sizeInBytes=4
	mov	20,r1
	store	r1,[r15+12]
!   Send message GetStringFromVirtual
	load	[r14+-56],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,84,r2
	call	r2
!   Retrieve Result: targetName=numOfCharCopied  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-112]
! IF STATEMENT...
	mov	2154,r13		! source line 2154
	mov	"\0\0IF",r10
!   if numOfCharCopied <= 20 then goto _Label_926		(int)
	load	[r14+-112],r1
	mov	20,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	ble	_Label_926
!	jmp	_Label_925
_Label_925:
! THEN...
	mov	2155,r13		! source line 2155
	mov	"\0\0TN",r10
! RETURN STATEMENT...
	mov	2155,r13		! source line 2155
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,164,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_926:
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
	store	r1,[r14+-144]
! WHILE STATEMENT...
	mov	2160,r13		! source line 2160
	mov	"\0\0WH",r10
_Label_927:
!   if i >= 10 then goto _Label_929		(int)
	load	[r14+-144],r1
	mov	10,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_929
!	jmp	_Label_928
_Label_928:
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
!   _temp_934 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-44]
!   Data Move: _temp_933 = *_temp_934  (sizeInBytes=4)
	load	[r14+-44],r1
	load	[r1],r1
	store	r1,[r14+-48]
!   if intIsZero (_temp_933) then goto _runtimeErrorNullPointer
	load	[r14+-48],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_935 = _temp_933 + 124
	load	[r14+-48],r1
	add	r1,124,r1
	store	r1,[r14+-40]
!   Move address of _temp_935 [i ] into _temp_936
!     make sure index expr is >= 0
	load	[r14+-144],r2
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
!   Data Move: _temp_932 = *_temp_936  (sizeInBytes=4)
	load	[r14+-36],r1
	load	[r1],r1
	store	r1,[r14+-52]
!   if intIsZero (_temp_932) then goto _Label_930
	load	[r14+-52],r1
	cmp	r1,r0
	be	_Label_930
	jmp	_Label_931
_Label_930:
! THEN...
	mov	2162,r13		! source line 2162
	mov	"\0\0TN",r10
! ASSIGNMENT STATEMENT...
	mov	2162,r13		! source line 2162
	mov	"\0\0AS",r10
!   emptySlotIndex = i		(4 bytes)
	load	[r14+-144],r1
	store	r1,[r14+-148]
! ASSIGNMENT STATEMENT...
	mov	2163,r13		! source line 2163
	mov	"\0\0AS",r10
!   emptySlotFound = 1		(1 byte)
	mov	1,r1
	storeb	r1,[r14+-10]
! BREAK STATEMENT...
	mov	2164,r13		! source line 2164
	mov	"\0\0BR",r10
	jmp	_Label_929
! END IF...
_Label_931:
! ASSIGNMENT STATEMENT...
	mov	2160,r13		! source line 2160
	mov	"\0\0AS",r10
!   i = i + 1		(int)
	load	[r14+-144],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-144]
! END WHILE...
	jmp	_Label_927
_Label_929:
! IF STATEMENT...
	mov	2169,r13		! source line 2169
	mov	"\0\0IF",r10
!   _temp_939 = emptySlotFound XOR 0		(bool)
	loadb	[r14+-10],r1
	mov	0,r2
	xor	r1,r2,r1
	storeb	r1,[r14+-9]
!   if _temp_939 then goto _Label_938 else goto _Label_937
	loadb	[r14+-9],r1
	cmp	r1,0
	be	_Label_937
	jmp	_Label_938
_Label_937:
! THEN...
	mov	2170,r13		! source line 2170
	mov	"\0\0TN",r10
! RETURN STATEMENT...
	mov	2170,r13		! source line 2170
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,164,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_938:
! ASSIGNMENT STATEMENT...
	mov	2174,r13		! source line 2174
	mov	"\0\0AS",r10
	mov	2174,r13		! source line 2174
	mov	"\0\0SE",r10
!   _temp_940 = &_P_Kernel_fileManager
	set	_P_Kernel_fileManager,r1
	store	r1,[r14+-32]
!   Prepare Argument: offset=12  value=strKernelAddr  sizeInBytes=4
	load	[r14+-140],r1
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
	store	r1,[r14+-152]
! IF STATEMENT...
	mov	2177,r13		! source line 2177
	mov	"\0\0IF",r10
!   if intIsZero (openFilePtr) then goto _Label_941
	load	[r14+-152],r1
	cmp	r1,r0
	be	_Label_941
	jmp	_Label_942
_Label_941:
! THEN...
	mov	2178,r13		! source line 2178
	mov	"\0\0TN",r10
! RETURN STATEMENT...
	mov	2178,r13		! source line 2178
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,164,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_942:
! ASSIGNMENT STATEMENT...
	mov	2182,r13		! source line 2182
	mov	"\0\0AS",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_944 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-24]
!   Data Move: _temp_943 = *_temp_944  (sizeInBytes=4)
	load	[r14+-24],r1
	load	[r1],r1
	store	r1,[r14+-28]
!   if intIsZero (_temp_943) then goto _runtimeErrorNullPointer
	load	[r14+-28],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_945 = _temp_943 + 124
	load	[r14+-28],r1
	add	r1,124,r1
	store	r1,[r14+-20]
!   Move address of _temp_945 [emptySlotIndex ] into _temp_946
!     make sure index expr is >= 0
	load	[r14+-148],r2
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
!   Data Move: *_temp_946 = openFilePtr  (sizeInBytes=4)
	load	[r14+-152],r1
	load	[r14+-16],r2
	store	r1,[r2]
! RETURN STATEMENT...
	mov	2184,r13		! source line 2184
	mov	"\0\0RE",r10
!   ReturnResult: emptySlotIndex  (sizeInBytes=4)
	load	[r14+-148],r1
	store	r1,[r14+8]
	add	r15,164,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__P_Kernel_Handle_Sys_Open:
	.word	_sourceFileName
	.word	_Label_947
	.word	4		! total size of parameters
	.word	160		! frame size = 160
	.word	_Label_948
	.word	8
	.word	4
	.word	_Label_949
	.word	-16
	.word	4
	.word	_Label_950
	.word	-20
	.word	4
	.word	_Label_951
	.word	-24
	.word	4
	.word	_Label_952
	.word	-28
	.word	4
	.word	_Label_953
	.word	-32
	.word	4
	.word	_Label_954
	.word	-9
	.word	1
	.word	_Label_955
	.word	-36
	.word	4
	.word	_Label_956
	.word	-40
	.word	4
	.word	_Label_957
	.word	-44
	.word	4
	.word	_Label_958
	.word	-48
	.word	4
	.word	_Label_959
	.word	-52
	.word	4
	.word	_Label_960
	.word	-56
	.word	4
	.word	_Label_961
	.word	-60
	.word	4
	.word	_Label_962
	.word	-64
	.word	4
	.word	_Label_963
	.word	-68
	.word	4
	.word	_Label_964
	.word	-72
	.word	4
	.word	_Label_965
	.word	-76
	.word	4
	.word	_Label_966
	.word	-80
	.word	4
	.word	_Label_967
	.word	-104
	.word	24
	.word	_Label_968
	.word	-108
	.word	4
	.word	_Label_969
	.word	-112
	.word	4
	.word	_Label_970
	.word	-136
	.word	24
	.word	_Label_971
	.word	-140
	.word	4
	.word	_Label_972
	.word	-144
	.word	4
	.word	_Label_973
	.word	-148
	.word	4
	.word	_Label_974
	.word	-10
	.word	1
	.word	_Label_975
	.word	-152
	.word	4
	.word	0
_Label_947:
	.ascii	"Handle_Sys_Open\0"
	.align
_Label_948:
	.byte	'P'
	.ascii	"filename\0"
	.align
_Label_949:
	.byte	'?'
	.ascii	"_temp_946\0"
	.align
_Label_950:
	.byte	'?'
	.ascii	"_temp_945\0"
	.align
_Label_951:
	.byte	'?'
	.ascii	"_temp_944\0"
	.align
_Label_952:
	.byte	'?'
	.ascii	"_temp_943\0"
	.align
_Label_953:
	.byte	'?'
	.ascii	"_temp_940\0"
	.align
_Label_954:
	.byte	'C'
	.ascii	"_temp_939\0"
	.align
_Label_955:
	.byte	'?'
	.ascii	"_temp_936\0"
	.align
_Label_956:
	.byte	'?'
	.ascii	"_temp_935\0"
	.align
_Label_957:
	.byte	'?'
	.ascii	"_temp_934\0"
	.align
_Label_958:
	.byte	'?'
	.ascii	"_temp_933\0"
	.align
_Label_959:
	.byte	'?'
	.ascii	"_temp_932\0"
	.align
_Label_960:
	.byte	'?'
	.ascii	"_temp_924\0"
	.align
_Label_961:
	.byte	'?'
	.ascii	"_temp_923\0"
	.align
_Label_962:
	.byte	'?'
	.ascii	"_temp_922\0"
	.align
_Label_963:
	.byte	'?'
	.ascii	"_temp_921\0"
	.align
_Label_964:
	.byte	'?'
	.ascii	"_temp_920\0"
	.align
_Label_965:
	.byte	'?'
	.ascii	"_temp_918\0"
	.align
_Label_966:
	.byte	'?'
	.ascii	"_temp_917\0"
	.align
_Label_967:
	.byte	'?'
	.ascii	"_temp_916\0"
	.align
_Label_968:
	.byte	'?'
	.ascii	"_temp_915\0"
	.align
_Label_969:
	.byte	'I'
	.ascii	"numOfCharCopied\0"
	.align
_Label_970:
	.byte	'A'
	.ascii	"container\0"
	.align
_Label_971:
	.byte	'P'
	.ascii	"strKernelAddr\0"
	.align
_Label_972:
	.byte	'I'
	.ascii	"i\0"
	.align
_Label_973:
	.byte	'I'
	.ascii	"emptySlotIndex\0"
	.align
_Label_974:
	.byte	'B'
	.ascii	"emptySlotFound\0"
	.align
_Label_975:
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
_Label_3810:
	push	r0
	sub	r1,1,r1
	bne	_Label_3810
	mov	2189,r13		! source line 2189
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! IF STATEMENT...
	mov	2206,r13		! source line 2206
	mov	"\0\0IF",r10
!   if fileDesc < 10 then goto _Label_978		(int)
	load	[r14+8],r1
	mov	10,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bl	_Label_978
	jmp	_Label_976
_Label_978:
!   if fileDesc >= 0 then goto _Label_977		(int)
	load	[r14+8],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_977
!	jmp	_Label_976
_Label_976:
! THEN...
	mov	2207,r13		! source line 2207
	mov	"\0\0TN",r10
! RETURN STATEMENT...
	mov	2207,r13		! source line 2207
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,248,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_977:
! ASSIGNMENT STATEMENT...
	mov	2211,r13		! source line 2211
	mov	"\0\0AS",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_980 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-184]
!   Data Move: _temp_979 = *_temp_980  (sizeInBytes=4)
	load	[r14+-184],r1
	load	[r1],r1
	store	r1,[r14+-188]
!   if intIsZero (_temp_979) then goto _runtimeErrorNullPointer
	load	[r14+-188],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_981 = _temp_979 + 124
	load	[r14+-188],r1
	add	r1,124,r1
	store	r1,[r14+-180]
!   Move address of _temp_981 [fileDesc ] into _temp_982
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
!   Data Move: openFilePtr = *_temp_982  (sizeInBytes=4)
	load	[r14+-176],r1
	load	[r1],r1
	store	r1,[r14+-192]
! IF STATEMENT...
	mov	2212,r13		! source line 2212
	mov	"\0\0IF",r10
!   if intIsZero (openFilePtr) then goto _Label_983
	load	[r14+-192],r1
	cmp	r1,r0
	be	_Label_983
	jmp	_Label_984
_Label_983:
! THEN...
	mov	2213,r13		! source line 2213
	mov	"\0\0TN",r10
! RETURN STATEMENT...
	mov	2213,r13		! source line 2213
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,248,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_984:
! IF STATEMENT...
	mov	2217,r13		! source line 2217
	mov	"\0\0IF",r10
!   if sizeInBytes >= 0 then goto _Label_986		(int)
	load	[r14+16],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_986
!	jmp	_Label_985
_Label_985:
! THEN...
	mov	2218,r13		! source line 2218
	mov	"\0\0TN",r10
! RETURN STATEMENT...
	mov	2218,r13		! source line 2218
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,248,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_986:
! IF STATEMENT...
	mov	2222,r13		! source line 2222
	mov	"\0\0IF",r10
!   _temp_990 = buffer		(4 bytes)
	load	[r14+12],r1
	store	r1,[r14+-172]
!   if _temp_990 < 163840 then goto _Label_989		(int)
	load	[r14+-172],r1
	set	163840,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bl	_Label_989
	jmp	_Label_987
_Label_989:
!   _temp_991 = buffer		(4 bytes)
	load	[r14+12],r1
	store	r1,[r14+-168]
!   if _temp_991 >= 0 then goto _Label_988		(int)
	load	[r14+-168],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_988
!	jmp	_Label_987
_Label_987:
! THEN...
	mov	2223,r13		! source line 2223
	mov	"\0\0TN",r10
! RETURN STATEMENT...
	mov	2223,r13		! source line 2223
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,248,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_988:
! ASSIGNMENT STATEMENT...
	mov	2228,r13		! source line 2228
	mov	"\0\0AS",r10
!   virtAddr = buffer		(4 bytes)
	load	[r14+12],r1
	store	r1,[r14+-196]
! ASSIGNMENT STATEMENT...
	mov	2229,r13		! source line 2229
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
	mov	2230,r13		! source line 2230
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
	mov	2231,r13		! source line 2231
	mov	"\0\0AS",r10
!   copiedSoFar = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-228]
! ASSIGNMENT STATEMENT...
	mov	2232,r13		! source line 2232
	mov	"\0\0AS",r10
!   chunkSize = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-208]
! ASSIGNMENT STATEMENT...
	mov	2235,r13		! source line 2235
	mov	"\0\0AS",r10
!   if intIsZero (openFilePtr) then goto _runtimeErrorNullPointer
	load	[r14+-192],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_992 = openFilePtr + 16
	load	[r14+-192],r1
	add	r1,16,r1
	store	r1,[r14+-164]
!   Data Move: currentPos = *_temp_992  (sizeInBytes=4)
	load	[r14+-164],r1
	load	[r1],r1
	store	r1,[r14+-216]
! ASSIGNMENT STATEMENT...
	mov	2236,r13		! source line 2236
	mov	"\0\0AS",r10
!   nextPosInFile = currentPos		(4 bytes)
	load	[r14+-216],r1
	store	r1,[r14+-220]
! WHILE STATEMENT...
	mov	2241,r13		! source line 2241
	mov	"\0\0WH",r10
_Label_993:
!	jmp	_Label_994
_Label_994:
	mov	2241,r13		! source line 2241
	mov	"\0\0WB",r10
! ASSIGNMENT STATEMENT...
	mov	2244,r13		! source line 2244
	mov	"\0\0AS",r10
!   thisChunkSize = 8192 - offset		(int)
	mov	8192,r1
	load	[r14+-204],r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-212]
! ASSIGNMENT STATEMENT...
	mov	2245,r13		! source line 2245
	mov	"\0\0AS",r10
!   if intIsZero (openFilePtr) then goto _runtimeErrorNullPointer
	load	[r14+-192],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_997 = openFilePtr + 20
	load	[r14+-192],r1
	add	r1,20,r1
	store	r1,[r14+-156]
!   Data Move: _temp_996 = *_temp_997  (sizeInBytes=4)
	load	[r14+-156],r1
	load	[r1],r1
	store	r1,[r14+-160]
!   if intIsZero (_temp_996) then goto _runtimeErrorNullPointer
	load	[r14+-160],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_998 = _temp_996 + 24
	load	[r14+-160],r1
	add	r1,24,r1
	store	r1,[r14+-152]
!   Data Move: sizeOfFileInBytes = *_temp_998  (sizeInBytes=4)
	load	[r14+-152],r1
	load	[r1],r1
	store	r1,[r14+-224]
! IF STATEMENT...
	mov	2247,r13		! source line 2247
	mov	"\0\0IF",r10
!   _temp_1001 = nextPosInFile + thisChunkSize		(int)
	load	[r14+-220],r1
	load	[r14+-212],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-148]
!   if _temp_1001 <= sizeOfFileInBytes then goto _Label_1000		(int)
	load	[r14+-148],r1
	load	[r14+-224],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	ble	_Label_1000
!	jmp	_Label_999
_Label_999:
! THEN...
	mov	2248,r13		! source line 2248
	mov	"\0\0TN",r10
! ASSIGNMENT STATEMENT...
	mov	2248,r13		! source line 2248
	mov	"\0\0AS",r10
!   thisChunkSize = sizeOfFileInBytes - nextPosInFile		(int)
	load	[r14+-224],r1
	load	[r14+-220],r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-212]
! END IF...
_Label_1000:
! IF STATEMENT...
	mov	2251,r13		! source line 2251
	mov	"\0\0IF",r10
!   _temp_1004 = copiedSoFar + thisChunkSize		(int)
	load	[r14+-228],r1
	load	[r14+-212],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-144]
!   if _temp_1004 <= sizeInBytes then goto _Label_1003		(int)
	load	[r14+-144],r1
	load	[r14+16],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	ble	_Label_1003
!	jmp	_Label_1002
_Label_1002:
! THEN...
	mov	2252,r13		! source line 2252
	mov	"\0\0TN",r10
! ASSIGNMENT STATEMENT...
	mov	2252,r13		! source line 2252
	mov	"\0\0AS",r10
!   thisChunkSize = sizeInBytes - copiedSoFar		(int)
	load	[r14+16],r1
	load	[r14+-228],r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-212]
! END IF...
_Label_1003:
! IF STATEMENT...
	mov	2256,r13		! source line 2256
	mov	"\0\0IF",r10
!   if thisChunkSize > 0 then goto _Label_1006		(int)
	load	[r14+-212],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_1006
!	jmp	_Label_1005
_Label_1005:
! THEN...
	mov	2257,r13		! source line 2257
	mov	"\0\0TN",r10
! BREAK STATEMENT...
	mov	2257,r13		! source line 2257
	mov	"\0\0BR",r10
	jmp	_Label_995
! END IF...
_Label_1006:
! IF STATEMENT...
	mov	2261,r13		! source line 2261
	mov	"\0\0IF",r10
!   if virtPage >= 0 then goto _Label_1010		(int)
	load	[r14+-200],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_1010
!	jmp	_Label_1011
_Label_1011:
!   if virtPage < 20 then goto _Label_1010		(int)
	load	[r14+-200],r1
	mov	20,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bl	_Label_1010
	jmp	_Label_1007
_Label_1010:
	mov	2261,r13		! source line 2261
	mov	"\0\0SE",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1014 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-136]
!   Data Move: _temp_1013 = *_temp_1014  (sizeInBytes=4)
	load	[r14+-136],r1
	load	[r1],r1
	store	r1,[r14+-140]
!   if intIsZero (_temp_1013) then goto _runtimeErrorNullPointer
	load	[r14+-140],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1015 = _temp_1013 + 32
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
!   Retrieve Result: targetName=_temp_1012  sizeInBytes=1
	loadb	[r15],r1
	storeb	r1,[r14+-12]
!   _temp_1016 = _temp_1012 XOR 0		(bool)
	loadb	[r14+-12],r1
	mov	0,r2
	xor	r1,r2,r1
	storeb	r1,[r14+-11]
!   if _temp_1016 then goto _Label_1009 else goto _Label_1007
	loadb	[r14+-11],r1
	cmp	r1,0
	be	_Label_1007
	jmp	_Label_1009
_Label_1009:
	mov	2261,r13		! source line 2261
	mov	"\0\0SE",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1019 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-124]
!   Data Move: _temp_1018 = *_temp_1019  (sizeInBytes=4)
	load	[r14+-124],r1
	load	[r1],r1
	store	r1,[r14+-128]
!   if intIsZero (_temp_1018) then goto _runtimeErrorNullPointer
	load	[r14+-128],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1020 = _temp_1018 + 32
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
!   Retrieve Result: targetName=_temp_1017  sizeInBytes=1
	loadb	[r15],r1
	storeb	r1,[r14+-10]
!   _temp_1021 = _temp_1017 XOR 0		(bool)
	loadb	[r14+-10],r1
	mov	0,r2
	xor	r1,r2,r1
	storeb	r1,[r14+-9]
!   if _temp_1021 then goto _Label_1008 else goto _Label_1007
	loadb	[r14+-9],r1
	cmp	r1,0
	be	_Label_1007
	jmp	_Label_1008
_Label_1007:
! THEN...
	mov	2262,r13		! source line 2262
	mov	"\0\0TN",r10
! RETURN STATEMENT...
	mov	2262,r13		! source line 2262
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,248,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_1008:
! ASSIGNMENT STATEMENT...
	mov	2266,r13		! source line 2266
	mov	"\0\0AS",r10
!   nextPosInFile = nextPosInFile + thisChunkSize		(int)
	load	[r14+-220],r1
	load	[r14+-212],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-220]
! ASSIGNMENT STATEMENT...
	mov	2267,r13		! source line 2267
	mov	"\0\0AS",r10
!   copiedSoFar = copiedSoFar + thisChunkSize		(int)
	load	[r14+-228],r1
	load	[r14+-212],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-228]
! ASSIGNMENT STATEMENT...
	mov	2268,r13		! source line 2268
	mov	"\0\0AS",r10
!   virtPage = virtPage + 1		(int)
	load	[r14+-200],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-200]
! ASSIGNMENT STATEMENT...
	mov	2269,r13		! source line 2269
	mov	"\0\0AS",r10
!   offset = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-204]
! IF STATEMENT...
	mov	2272,r13		! source line 2272
	mov	"\0\0IF",r10
!   if copiedSoFar != sizeInBytes then goto _Label_1023		(int)
	load	[r14+-228],r1
	load	[r14+16],r2
	cmp	r1,r2
	bne	_Label_1023
!	jmp	_Label_1022
_Label_1022:
! THEN...
	mov	2273,r13		! source line 2273
	mov	"\0\0TN",r10
! BREAK STATEMENT...
	mov	2273,r13		! source line 2273
	mov	"\0\0BR",r10
	jmp	_Label_995
! END IF...
_Label_1023:
! END WHILE...
	jmp	_Label_993
_Label_995:
! ASSIGNMENT STATEMENT...
	mov	2284,r13		! source line 2284
	mov	"\0\0AS",r10
!   virtAddr = buffer		(4 bytes)
	load	[r14+12],r1
	store	r1,[r14+-196]
! ASSIGNMENT STATEMENT...
	mov	2285,r13		! source line 2285
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
	mov	2286,r13		! source line 2286
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
	mov	2287,r13		! source line 2287
	mov	"\0\0AS",r10
!   copiedSoFar = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-228]
! ASSIGNMENT STATEMENT...
	mov	2288,r13		! source line 2288
	mov	"\0\0AS",r10
!   chunkSize = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-208]
! ASSIGNMENT STATEMENT...
	mov	2291,r13		! source line 2291
	mov	"\0\0AS",r10
!   if intIsZero (openFilePtr) then goto _runtimeErrorNullPointer
	load	[r14+-192],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1024 = openFilePtr + 16
	load	[r14+-192],r1
	add	r1,16,r1
	store	r1,[r14+-116]
!   Data Move: currentPos = *_temp_1024  (sizeInBytes=4)
	load	[r14+-116],r1
	load	[r1],r1
	store	r1,[r14+-216]
! ASSIGNMENT STATEMENT...
	mov	2292,r13		! source line 2292
	mov	"\0\0AS",r10
!   nextPosInFile = currentPos		(4 bytes)
	load	[r14+-216],r1
	store	r1,[r14+-220]
! WHILE STATEMENT...
	mov	2294,r13		! source line 2294
	mov	"\0\0WH",r10
_Label_1025:
!	jmp	_Label_1026
_Label_1026:
	mov	2294,r13		! source line 2294
	mov	"\0\0WB",r10
! ASSIGNMENT STATEMENT...
	mov	2297,r13		! source line 2297
	mov	"\0\0AS",r10
!   thisChunkSize = 8192 - offset		(int)
	mov	8192,r1
	load	[r14+-204],r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-212]
! ASSIGNMENT STATEMENT...
	mov	2298,r13		! source line 2298
	mov	"\0\0AS",r10
!   if intIsZero (openFilePtr) then goto _runtimeErrorNullPointer
	load	[r14+-192],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1029 = openFilePtr + 20
	load	[r14+-192],r1
	add	r1,20,r1
	store	r1,[r14+-108]
!   Data Move: _temp_1028 = *_temp_1029  (sizeInBytes=4)
	load	[r14+-108],r1
	load	[r1],r1
	store	r1,[r14+-112]
!   if intIsZero (_temp_1028) then goto _runtimeErrorNullPointer
	load	[r14+-112],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1030 = _temp_1028 + 24
	load	[r14+-112],r1
	add	r1,24,r1
	store	r1,[r14+-104]
!   Data Move: sizeOfFileInBytes = *_temp_1030  (sizeInBytes=4)
	load	[r14+-104],r1
	load	[r1],r1
	store	r1,[r14+-224]
! IF STATEMENT...
	mov	2300,r13		! source line 2300
	mov	"\0\0IF",r10
!   _temp_1033 = nextPosInFile + thisChunkSize		(int)
	load	[r14+-220],r1
	load	[r14+-212],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-100]
!   if _temp_1033 <= sizeOfFileInBytes then goto _Label_1032		(int)
	load	[r14+-100],r1
	load	[r14+-224],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	ble	_Label_1032
!	jmp	_Label_1031
_Label_1031:
! THEN...
	mov	2301,r13		! source line 2301
	mov	"\0\0TN",r10
! ASSIGNMENT STATEMENT...
	mov	2301,r13		! source line 2301
	mov	"\0\0AS",r10
!   thisChunkSize = sizeOfFileInBytes - nextPosInFile		(int)
	load	[r14+-224],r1
	load	[r14+-220],r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-212]
! END IF...
_Label_1032:
! IF STATEMENT...
	mov	2304,r13		! source line 2304
	mov	"\0\0IF",r10
!   _temp_1036 = copiedSoFar + thisChunkSize		(int)
	load	[r14+-228],r1
	load	[r14+-212],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-96]
!   if _temp_1036 <= sizeInBytes then goto _Label_1035		(int)
	load	[r14+-96],r1
	load	[r14+16],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	ble	_Label_1035
!	jmp	_Label_1034
_Label_1034:
! THEN...
	mov	2305,r13		! source line 2305
	mov	"\0\0TN",r10
! ASSIGNMENT STATEMENT...
	mov	2305,r13		! source line 2305
	mov	"\0\0AS",r10
!   thisChunkSize = sizeInBytes - copiedSoFar		(int)
	load	[r14+16],r1
	load	[r14+-228],r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-212]
! END IF...
_Label_1035:
! IF STATEMENT...
	mov	2309,r13		! source line 2309
	mov	"\0\0IF",r10
!   if thisChunkSize > 0 then goto _Label_1038		(int)
	load	[r14+-212],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_1038
!	jmp	_Label_1037
_Label_1037:
! THEN...
	mov	2310,r13		! source line 2310
	mov	"\0\0TN",r10
! BREAK STATEMENT...
	mov	2310,r13		! source line 2310
	mov	"\0\0BR",r10
	jmp	_Label_1027
! END IF...
_Label_1038:
! SEND STATEMENT...
	mov	2313,r13		! source line 2313
	mov	"\0\0SE",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1040 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-88]
!   Data Move: _temp_1039 = *_temp_1040  (sizeInBytes=4)
	load	[r14+-88],r1
	load	[r1],r1
	store	r1,[r14+-92]
!   if intIsZero (_temp_1039) then goto _runtimeErrorNullPointer
	load	[r14+-92],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1041 = _temp_1039 + 32
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
	mov	2314,r13		! source line 2314
	mov	"\0\0SE",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1043 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-76]
!   Data Move: _temp_1042 = *_temp_1043  (sizeInBytes=4)
	load	[r14+-76],r1
	load	[r1],r1
	store	r1,[r14+-80]
!   if intIsZero (_temp_1042) then goto _runtimeErrorNullPointer
	load	[r14+-80],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1044 = _temp_1042 + 32
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
	mov	2315,r13		! source line 2315
	mov	"\0\0AS",r10
	mov	2315,r13		! source line 2315
	mov	"\0\0SE",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1047 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-60]
!   Data Move: _temp_1046 = *_temp_1047  (sizeInBytes=4)
	load	[r14+-60],r1
	load	[r1],r1
	store	r1,[r14+-64]
!   if intIsZero (_temp_1046) then goto _runtimeErrorNullPointer
	load	[r14+-64],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1048 = _temp_1046 + 32
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
!   Retrieve Result: targetName=_temp_1045  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-68]
!   destAddr = _temp_1045 + offset		(int)
	load	[r14+-68],r1
	load	[r14+-204],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-232]
! ASSIGNMENT STATEMENT...
	mov	2316,r13		! source line 2316
	mov	"\0\0AS",r10
	mov	2316,r13		! source line 2316
	mov	"\0\0SE",r10
!   _temp_1049 = &_P_Kernel_fileManager
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
	mov	2319,r13		! source line 2319
	mov	"\0\0AS",r10
!   nextPosInFile = nextPosInFile + thisChunkSize		(int)
	load	[r14+-220],r1
	load	[r14+-212],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-220]
! ASSIGNMENT STATEMENT...
	mov	2320,r13		! source line 2320
	mov	"\0\0AS",r10
!   copiedSoFar = copiedSoFar + thisChunkSize		(int)
	load	[r14+-228],r1
	load	[r14+-212],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-228]
! ASSIGNMENT STATEMENT...
	mov	2321,r13		! source line 2321
	mov	"\0\0AS",r10
!   virtPage = virtPage + 1		(int)
	load	[r14+-200],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-200]
! ASSIGNMENT STATEMENT...
	mov	2322,r13		! source line 2322
	mov	"\0\0AS",r10
!   offset = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-204]
! IF STATEMENT...
	mov	2325,r13		! source line 2325
	mov	"\0\0IF",r10
!   if copiedSoFar != sizeInBytes then goto _Label_1051		(int)
	load	[r14+-228],r1
	load	[r14+16],r2
	cmp	r1,r2
	bne	_Label_1051
!	jmp	_Label_1050
_Label_1050:
! THEN...
	mov	2326,r13		! source line 2326
	mov	"\0\0TN",r10
! ASSIGNMENT STATEMENT...
	mov	2326,r13		! source line 2326
	mov	"\0\0AS",r10
!   if intIsZero (openFilePtr) then goto _runtimeErrorNullPointer
	load	[r14+-192],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1052 = openFilePtr + 16
	load	[r14+-192],r1
	add	r1,16,r1
	store	r1,[r14+-48]
!   if intIsZero (openFilePtr) then goto _runtimeErrorNullPointer
	load	[r14+-192],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1055 = openFilePtr + 16
	load	[r14+-192],r1
	add	r1,16,r1
	store	r1,[r14+-36]
!   Data Move: _temp_1054 = *_temp_1055  (sizeInBytes=4)
	load	[r14+-36],r1
	load	[r1],r1
	store	r1,[r14+-40]
!   _temp_1053 = _temp_1054 + copiedSoFar		(int)
	load	[r14+-40],r1
	load	[r14+-228],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-44]
!   Data Move: *_temp_1052 = _temp_1053  (sizeInBytes=4)
	load	[r14+-44],r1
	load	[r14+-48],r2
	store	r1,[r2]
! RETURN STATEMENT...
	mov	2327,r13		! source line 2327
	mov	"\0\0RE",r10
!   ReturnResult: copiedSoFar  (sizeInBytes=4)
	load	[r14+-228],r1
	store	r1,[r14+8]
	add	r15,248,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_1051:
! END WHILE...
	jmp	_Label_1025
_Label_1027:
! ASSIGNMENT STATEMENT...
	mov	2332,r13		! source line 2332
	mov	"\0\0AS",r10
!   if intIsZero (openFilePtr) then goto _runtimeErrorNullPointer
	load	[r14+-192],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1056 = openFilePtr + 16
	load	[r14+-192],r1
	add	r1,16,r1
	store	r1,[r14+-32]
!   if intIsZero (openFilePtr) then goto _runtimeErrorNullPointer
	load	[r14+-192],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1059 = openFilePtr + 16
	load	[r14+-192],r1
	add	r1,16,r1
	store	r1,[r14+-20]
!   Data Move: _temp_1058 = *_temp_1059  (sizeInBytes=4)
	load	[r14+-20],r1
	load	[r1],r1
	store	r1,[r14+-24]
!   _temp_1057 = _temp_1058 + copiedSoFar		(int)
	load	[r14+-24],r1
	load	[r14+-228],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-28]
!   Data Move: *_temp_1056 = _temp_1057  (sizeInBytes=4)
	load	[r14+-28],r1
	load	[r14+-32],r2
	store	r1,[r2]
! RETURN STATEMENT...
	mov	2333,r13		! source line 2333
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
	.word	_Label_1060
	.word	12		! total size of parameters
	.word	244		! frame size = 244
	.word	_Label_1061
	.word	8
	.word	4
	.word	_Label_1062
	.word	12
	.word	4
	.word	_Label_1063
	.word	16
	.word	4
	.word	_Label_1064
	.word	-20
	.word	4
	.word	_Label_1065
	.word	-24
	.word	4
	.word	_Label_1066
	.word	-28
	.word	4
	.word	_Label_1067
	.word	-32
	.word	4
	.word	_Label_1068
	.word	-36
	.word	4
	.word	_Label_1069
	.word	-40
	.word	4
	.word	_Label_1070
	.word	-44
	.word	4
	.word	_Label_1071
	.word	-48
	.word	4
	.word	_Label_1072
	.word	-52
	.word	4
	.word	_Label_1073
	.word	-56
	.word	4
	.word	_Label_1074
	.word	-60
	.word	4
	.word	_Label_1075
	.word	-64
	.word	4
	.word	_Label_1076
	.word	-68
	.word	4
	.word	_Label_1077
	.word	-72
	.word	4
	.word	_Label_1078
	.word	-76
	.word	4
	.word	_Label_1079
	.word	-80
	.word	4
	.word	_Label_1080
	.word	-84
	.word	4
	.word	_Label_1081
	.word	-88
	.word	4
	.word	_Label_1082
	.word	-92
	.word	4
	.word	_Label_1083
	.word	-96
	.word	4
	.word	_Label_1084
	.word	-100
	.word	4
	.word	_Label_1085
	.word	-104
	.word	4
	.word	_Label_1086
	.word	-108
	.word	4
	.word	_Label_1087
	.word	-112
	.word	4
	.word	_Label_1088
	.word	-116
	.word	4
	.word	_Label_1089
	.word	-9
	.word	1
	.word	_Label_1090
	.word	-120
	.word	4
	.word	_Label_1091
	.word	-124
	.word	4
	.word	_Label_1092
	.word	-128
	.word	4
	.word	_Label_1093
	.word	-10
	.word	1
	.word	_Label_1094
	.word	-11
	.word	1
	.word	_Label_1095
	.word	-132
	.word	4
	.word	_Label_1096
	.word	-136
	.word	4
	.word	_Label_1097
	.word	-140
	.word	4
	.word	_Label_1098
	.word	-12
	.word	1
	.word	_Label_1099
	.word	-144
	.word	4
	.word	_Label_1100
	.word	-148
	.word	4
	.word	_Label_1101
	.word	-152
	.word	4
	.word	_Label_1102
	.word	-156
	.word	4
	.word	_Label_1103
	.word	-160
	.word	4
	.word	_Label_1104
	.word	-164
	.word	4
	.word	_Label_1105
	.word	-168
	.word	4
	.word	_Label_1106
	.word	-172
	.word	4
	.word	_Label_1107
	.word	-176
	.word	4
	.word	_Label_1108
	.word	-180
	.word	4
	.word	_Label_1109
	.word	-184
	.word	4
	.word	_Label_1110
	.word	-188
	.word	4
	.word	_Label_1111
	.word	-192
	.word	4
	.word	_Label_1112
	.word	-196
	.word	4
	.word	_Label_1113
	.word	-200
	.word	4
	.word	_Label_1114
	.word	-204
	.word	4
	.word	_Label_1115
	.word	-208
	.word	4
	.word	_Label_1116
	.word	-212
	.word	4
	.word	_Label_1117
	.word	-216
	.word	4
	.word	_Label_1118
	.word	-220
	.word	4
	.word	_Label_1119
	.word	-224
	.word	4
	.word	_Label_1120
	.word	-228
	.word	4
	.word	_Label_1121
	.word	-232
	.word	4
	.word	_Label_1122
	.word	-13
	.word	1
	.word	0
_Label_1060:
	.ascii	"Handle_Sys_Read\0"
	.align
_Label_1061:
	.byte	'I'
	.ascii	"fileDesc\0"
	.align
_Label_1062:
	.byte	'P'
	.ascii	"buffer\0"
	.align
_Label_1063:
	.byte	'I'
	.ascii	"sizeInBytes\0"
	.align
_Label_1064:
	.byte	'?'
	.ascii	"_temp_1059\0"
	.align
_Label_1065:
	.byte	'?'
	.ascii	"_temp_1058\0"
	.align
_Label_1066:
	.byte	'?'
	.ascii	"_temp_1057\0"
	.align
_Label_1067:
	.byte	'?'
	.ascii	"_temp_1056\0"
	.align
_Label_1068:
	.byte	'?'
	.ascii	"_temp_1055\0"
	.align
_Label_1069:
	.byte	'?'
	.ascii	"_temp_1054\0"
	.align
_Label_1070:
	.byte	'?'
	.ascii	"_temp_1053\0"
	.align
_Label_1071:
	.byte	'?'
	.ascii	"_temp_1052\0"
	.align
_Label_1072:
	.byte	'?'
	.ascii	"_temp_1049\0"
	.align
_Label_1073:
	.byte	'?'
	.ascii	"_temp_1048\0"
	.align
_Label_1074:
	.byte	'?'
	.ascii	"_temp_1047\0"
	.align
_Label_1075:
	.byte	'?'
	.ascii	"_temp_1046\0"
	.align
_Label_1076:
	.byte	'?'
	.ascii	"_temp_1045\0"
	.align
_Label_1077:
	.byte	'?'
	.ascii	"_temp_1044\0"
	.align
_Label_1078:
	.byte	'?'
	.ascii	"_temp_1043\0"
	.align
_Label_1079:
	.byte	'?'
	.ascii	"_temp_1042\0"
	.align
_Label_1080:
	.byte	'?'
	.ascii	"_temp_1041\0"
	.align
_Label_1081:
	.byte	'?'
	.ascii	"_temp_1040\0"
	.align
_Label_1082:
	.byte	'?'
	.ascii	"_temp_1039\0"
	.align
_Label_1083:
	.byte	'?'
	.ascii	"_temp_1036\0"
	.align
_Label_1084:
	.byte	'?'
	.ascii	"_temp_1033\0"
	.align
_Label_1085:
	.byte	'?'
	.ascii	"_temp_1030\0"
	.align
_Label_1086:
	.byte	'?'
	.ascii	"_temp_1029\0"
	.align
_Label_1087:
	.byte	'?'
	.ascii	"_temp_1028\0"
	.align
_Label_1088:
	.byte	'?'
	.ascii	"_temp_1024\0"
	.align
_Label_1089:
	.byte	'C'
	.ascii	"_temp_1021\0"
	.align
_Label_1090:
	.byte	'?'
	.ascii	"_temp_1020\0"
	.align
_Label_1091:
	.byte	'?'
	.ascii	"_temp_1019\0"
	.align
_Label_1092:
	.byte	'?'
	.ascii	"_temp_1018\0"
	.align
_Label_1093:
	.byte	'C'
	.ascii	"_temp_1017\0"
	.align
_Label_1094:
	.byte	'C'
	.ascii	"_temp_1016\0"
	.align
_Label_1095:
	.byte	'?'
	.ascii	"_temp_1015\0"
	.align
_Label_1096:
	.byte	'?'
	.ascii	"_temp_1014\0"
	.align
_Label_1097:
	.byte	'?'
	.ascii	"_temp_1013\0"
	.align
_Label_1098:
	.byte	'C'
	.ascii	"_temp_1012\0"
	.align
_Label_1099:
	.byte	'?'
	.ascii	"_temp_1004\0"
	.align
_Label_1100:
	.byte	'?'
	.ascii	"_temp_1001\0"
	.align
_Label_1101:
	.byte	'?'
	.ascii	"_temp_998\0"
	.align
_Label_1102:
	.byte	'?'
	.ascii	"_temp_997\0"
	.align
_Label_1103:
	.byte	'?'
	.ascii	"_temp_996\0"
	.align
_Label_1104:
	.byte	'?'
	.ascii	"_temp_992\0"
	.align
_Label_1105:
	.byte	'?'
	.ascii	"_temp_991\0"
	.align
_Label_1106:
	.byte	'?'
	.ascii	"_temp_990\0"
	.align
_Label_1107:
	.byte	'?'
	.ascii	"_temp_982\0"
	.align
_Label_1108:
	.byte	'?'
	.ascii	"_temp_981\0"
	.align
_Label_1109:
	.byte	'?'
	.ascii	"_temp_980\0"
	.align
_Label_1110:
	.byte	'?'
	.ascii	"_temp_979\0"
	.align
_Label_1111:
	.byte	'P'
	.ascii	"openFilePtr\0"
	.align
_Label_1112:
	.byte	'I'
	.ascii	"virtAddr\0"
	.align
_Label_1113:
	.byte	'I'
	.ascii	"virtPage\0"
	.align
_Label_1114:
	.byte	'I'
	.ascii	"offset\0"
	.align
_Label_1115:
	.byte	'I'
	.ascii	"chunkSize\0"
	.align
_Label_1116:
	.byte	'I'
	.ascii	"thisChunkSize\0"
	.align
_Label_1117:
	.byte	'I'
	.ascii	"currentPos\0"
	.align
_Label_1118:
	.byte	'I'
	.ascii	"nextPosInFile\0"
	.align
_Label_1119:
	.byte	'I'
	.ascii	"sizeOfFileInBytes\0"
	.align
_Label_1120:
	.byte	'I'
	.ascii	"copiedSoFar\0"
	.align
_Label_1121:
	.byte	'I'
	.ascii	"destAddr\0"
	.align
_Label_1122:
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
_Label_3811:
	push	r0
	sub	r1,1,r1
	bne	_Label_3811
	mov	2339,r13		! source line 2339
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! IF STATEMENT...
	mov	2356,r13		! source line 2356
	mov	"\0\0IF",r10
!   if fileDesc < 10 then goto _Label_1125		(int)
	load	[r14+8],r1
	mov	10,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bl	_Label_1125
	jmp	_Label_1123
_Label_1125:
!   if fileDesc >= 0 then goto _Label_1124		(int)
	load	[r14+8],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_1124
!	jmp	_Label_1123
_Label_1123:
! THEN...
	mov	2357,r13		! source line 2357
	mov	"\0\0TN",r10
! RETURN STATEMENT...
	mov	2357,r13		! source line 2357
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,212,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_1124:
! ASSIGNMENT STATEMENT...
	mov	2361,r13		! source line 2361
	mov	"\0\0AS",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1127 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-148]
!   Data Move: _temp_1126 = *_temp_1127  (sizeInBytes=4)
	load	[r14+-148],r1
	load	[r1],r1
	store	r1,[r14+-152]
!   if intIsZero (_temp_1126) then goto _runtimeErrorNullPointer
	load	[r14+-152],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1128 = _temp_1126 + 124
	load	[r14+-152],r1
	add	r1,124,r1
	store	r1,[r14+-144]
!   Move address of _temp_1128 [fileDesc ] into _temp_1129
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
!   Data Move: openFilePtr = *_temp_1129  (sizeInBytes=4)
	load	[r14+-140],r1
	load	[r1],r1
	store	r1,[r14+-156]
! IF STATEMENT...
	mov	2363,r13		! source line 2363
	mov	"\0\0IF",r10
!   if intIsZero (openFilePtr) then goto _Label_1130
	load	[r14+-156],r1
	cmp	r1,r0
	be	_Label_1130
	jmp	_Label_1131
_Label_1130:
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
_Label_1131:
! IF STATEMENT...
	mov	2368,r13		! source line 2368
	mov	"\0\0IF",r10
!   if sizeInBytes >= 0 then goto _Label_1133		(int)
	load	[r14+16],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_1133
!	jmp	_Label_1132
_Label_1132:
! THEN...
	mov	2369,r13		! source line 2369
	mov	"\0\0TN",r10
! RETURN STATEMENT...
	mov	2369,r13		! source line 2369
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,212,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_1133:
! ASSIGNMENT STATEMENT...
	mov	2374,r13		! source line 2374
	mov	"\0\0AS",r10
!   virtAddr = buffer		(4 bytes)
	load	[r14+12],r1
	store	r1,[r14+-160]
! ASSIGNMENT STATEMENT...
	mov	2375,r13		! source line 2375
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
	mov	2376,r13		! source line 2376
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
	mov	2377,r13		! source line 2377
	mov	"\0\0AS",r10
!   copiedSoFar = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-192]
! ASSIGNMENT STATEMENT...
	mov	2378,r13		! source line 2378
	mov	"\0\0AS",r10
!   chunkSize = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-172]
! ASSIGNMENT STATEMENT...
	mov	2381,r13		! source line 2381
	mov	"\0\0AS",r10
!   if intIsZero (openFilePtr) then goto _runtimeErrorNullPointer
	load	[r14+-156],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1134 = openFilePtr + 16
	load	[r14+-156],r1
	add	r1,16,r1
	store	r1,[r14+-136]
!   Data Move: currentPos = *_temp_1134  (sizeInBytes=4)
	load	[r14+-136],r1
	load	[r1],r1
	store	r1,[r14+-180]
! ASSIGNMENT STATEMENT...
	mov	2382,r13		! source line 2382
	mov	"\0\0AS",r10
!   nextPosInFile = currentPos		(4 bytes)
	load	[r14+-180],r1
	store	r1,[r14+-184]
! WHILE STATEMENT...
	mov	2387,r13		! source line 2387
	mov	"\0\0WH",r10
_Label_1135:
!	jmp	_Label_1136
_Label_1136:
	mov	2387,r13		! source line 2387
	mov	"\0\0WB",r10
! ASSIGNMENT STATEMENT...
	mov	2390,r13		! source line 2390
	mov	"\0\0AS",r10
!   thisChunkSize = 8192 - offset		(int)
	mov	8192,r1
	load	[r14+-168],r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-176]
! ASSIGNMENT STATEMENT...
	mov	2391,r13		! source line 2391
	mov	"\0\0AS",r10
!   if intIsZero (openFilePtr) then goto _runtimeErrorNullPointer
	load	[r14+-156],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1139 = openFilePtr + 20
	load	[r14+-156],r1
	add	r1,20,r1
	store	r1,[r14+-128]
!   Data Move: _temp_1138 = *_temp_1139  (sizeInBytes=4)
	load	[r14+-128],r1
	load	[r1],r1
	store	r1,[r14+-132]
!   if intIsZero (_temp_1138) then goto _runtimeErrorNullPointer
	load	[r14+-132],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1140 = _temp_1138 + 24
	load	[r14+-132],r1
	add	r1,24,r1
	store	r1,[r14+-124]
!   Data Move: sizeOfFileInBytes = *_temp_1140  (sizeInBytes=4)
	load	[r14+-124],r1
	load	[r1],r1
	store	r1,[r14+-188]
! IF STATEMENT...
	mov	2393,r13		! source line 2393
	mov	"\0\0IF",r10
!   _temp_1143 = nextPosInFile + thisChunkSize		(int)
	load	[r14+-184],r1
	load	[r14+-176],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-120]
!   if _temp_1143 <= sizeOfFileInBytes then goto _Label_1142		(int)
	load	[r14+-120],r1
	load	[r14+-188],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	ble	_Label_1142
!	jmp	_Label_1141
_Label_1141:
! THEN...
	mov	2394,r13		! source line 2394
	mov	"\0\0TN",r10
! ASSIGNMENT STATEMENT...
	mov	2394,r13		! source line 2394
	mov	"\0\0AS",r10
!   thisChunkSize = sizeOfFileInBytes - nextPosInFile		(int)
	load	[r14+-188],r1
	load	[r14+-184],r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-176]
! END IF...
_Label_1142:
! IF STATEMENT...
	mov	2397,r13		! source line 2397
	mov	"\0\0IF",r10
!   _temp_1146 = copiedSoFar + thisChunkSize		(int)
	load	[r14+-192],r1
	load	[r14+-176],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-116]
!   if _temp_1146 <= sizeInBytes then goto _Label_1145		(int)
	load	[r14+-116],r1
	load	[r14+16],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	ble	_Label_1145
!	jmp	_Label_1144
_Label_1144:
! THEN...
	mov	2398,r13		! source line 2398
	mov	"\0\0TN",r10
! ASSIGNMENT STATEMENT...
	mov	2398,r13		! source line 2398
	mov	"\0\0AS",r10
!   thisChunkSize = sizeInBytes - copiedSoFar		(int)
	load	[r14+16],r1
	load	[r14+-192],r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-176]
! END IF...
_Label_1145:
! IF STATEMENT...
	mov	2402,r13		! source line 2402
	mov	"\0\0IF",r10
!   if thisChunkSize > 0 then goto _Label_1148		(int)
	load	[r14+-176],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_1148
!	jmp	_Label_1147
_Label_1147:
! THEN...
	mov	2403,r13		! source line 2403
	mov	"\0\0TN",r10
! BREAK STATEMENT...
	mov	2403,r13		! source line 2403
	mov	"\0\0BR",r10
	jmp	_Label_1137
! END IF...
_Label_1148:
! IF STATEMENT...
	mov	2407,r13		! source line 2407
	mov	"\0\0IF",r10
!   if virtPage >= 0 then goto _Label_1151		(int)
	load	[r14+-164],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_1151
!	jmp	_Label_1152
_Label_1152:
!   if virtPage < 20 then goto _Label_1151		(int)
	load	[r14+-164],r1
	mov	20,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bl	_Label_1151
	jmp	_Label_1149
_Label_1151:
	mov	2407,r13		! source line 2407
	mov	"\0\0SE",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1155 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-108]
!   Data Move: _temp_1154 = *_temp_1155  (sizeInBytes=4)
	load	[r14+-108],r1
	load	[r1],r1
	store	r1,[r14+-112]
!   if intIsZero (_temp_1154) then goto _runtimeErrorNullPointer
	load	[r14+-112],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1156 = _temp_1154 + 32
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
!   Retrieve Result: targetName=_temp_1153  sizeInBytes=1
	loadb	[r15],r1
	storeb	r1,[r14+-10]
!   _temp_1157 = _temp_1153 XOR 0		(bool)
	loadb	[r14+-10],r1
	mov	0,r2
	xor	r1,r2,r1
	storeb	r1,[r14+-9]
!   if _temp_1157 then goto _Label_1150 else goto _Label_1149
	loadb	[r14+-9],r1
	cmp	r1,0
	be	_Label_1149
	jmp	_Label_1150
_Label_1149:
! THEN...
	mov	2410,r13		! source line 2410
	mov	"\0\0TN",r10
! RETURN STATEMENT...
	mov	2410,r13		! source line 2410
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
	mov	2414,r13		! source line 2414
	mov	"\0\0AS",r10
!   nextPosInFile = nextPosInFile + thisChunkSize		(int)
	load	[r14+-184],r1
	load	[r14+-176],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-184]
! ASSIGNMENT STATEMENT...
	mov	2415,r13		! source line 2415
	mov	"\0\0AS",r10
!   copiedSoFar = copiedSoFar + thisChunkSize		(int)
	load	[r14+-192],r1
	load	[r14+-176],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-192]
! ASSIGNMENT STATEMENT...
	mov	2416,r13		! source line 2416
	mov	"\0\0AS",r10
!   virtPage = virtPage + 1		(int)
	load	[r14+-164],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-164]
! ASSIGNMENT STATEMENT...
	mov	2417,r13		! source line 2417
	mov	"\0\0AS",r10
!   offset = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-168]
! IF STATEMENT...
	mov	2420,r13		! source line 2420
	mov	"\0\0IF",r10
!   if copiedSoFar != sizeInBytes then goto _Label_1159		(int)
	load	[r14+-192],r1
	load	[r14+16],r2
	cmp	r1,r2
	bne	_Label_1159
!	jmp	_Label_1158
_Label_1158:
! THEN...
	mov	2421,r13		! source line 2421
	mov	"\0\0TN",r10
! BREAK STATEMENT...
	mov	2421,r13		! source line 2421
	mov	"\0\0BR",r10
	jmp	_Label_1137
! END IF...
_Label_1159:
! END WHILE...
	jmp	_Label_1135
_Label_1137:
! ASSIGNMENT STATEMENT...
	mov	2432,r13		! source line 2432
	mov	"\0\0AS",r10
!   virtAddr = buffer		(4 bytes)
	load	[r14+12],r1
	store	r1,[r14+-160]
! ASSIGNMENT STATEMENT...
	mov	2433,r13		! source line 2433
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
	mov	2434,r13		! source line 2434
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
	mov	2435,r13		! source line 2435
	mov	"\0\0AS",r10
!   copiedSoFar = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-192]
! ASSIGNMENT STATEMENT...
	mov	2436,r13		! source line 2436
	mov	"\0\0AS",r10
!   chunkSize = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-172]
! ASSIGNMENT STATEMENT...
	mov	2439,r13		! source line 2439
	mov	"\0\0AS",r10
!   if intIsZero (openFilePtr) then goto _runtimeErrorNullPointer
	load	[r14+-156],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1160 = openFilePtr + 16
	load	[r14+-156],r1
	add	r1,16,r1
	store	r1,[r14+-100]
!   Data Move: currentPos = *_temp_1160  (sizeInBytes=4)
	load	[r14+-100],r1
	load	[r1],r1
	store	r1,[r14+-180]
! ASSIGNMENT STATEMENT...
	mov	2440,r13		! source line 2440
	mov	"\0\0AS",r10
!   nextPosInFile = currentPos		(4 bytes)
	load	[r14+-180],r1
	store	r1,[r14+-184]
! WHILE STATEMENT...
	mov	2442,r13		! source line 2442
	mov	"\0\0WH",r10
_Label_1161:
!	jmp	_Label_1162
_Label_1162:
	mov	2442,r13		! source line 2442
	mov	"\0\0WB",r10
! ASSIGNMENT STATEMENT...
	mov	2445,r13		! source line 2445
	mov	"\0\0AS",r10
!   thisChunkSize = 8192 - offset		(int)
	mov	8192,r1
	load	[r14+-168],r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-176]
! ASSIGNMENT STATEMENT...
	mov	2446,r13		! source line 2446
	mov	"\0\0AS",r10
!   if intIsZero (openFilePtr) then goto _runtimeErrorNullPointer
	load	[r14+-156],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1165 = openFilePtr + 20
	load	[r14+-156],r1
	add	r1,20,r1
	store	r1,[r14+-92]
!   Data Move: _temp_1164 = *_temp_1165  (sizeInBytes=4)
	load	[r14+-92],r1
	load	[r1],r1
	store	r1,[r14+-96]
!   if intIsZero (_temp_1164) then goto _runtimeErrorNullPointer
	load	[r14+-96],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1166 = _temp_1164 + 24
	load	[r14+-96],r1
	add	r1,24,r1
	store	r1,[r14+-88]
!   Data Move: sizeOfFileInBytes = *_temp_1166  (sizeInBytes=4)
	load	[r14+-88],r1
	load	[r1],r1
	store	r1,[r14+-188]
! IF STATEMENT...
	mov	2448,r13		! source line 2448
	mov	"\0\0IF",r10
!   _temp_1169 = nextPosInFile + thisChunkSize		(int)
	load	[r14+-184],r1
	load	[r14+-176],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-84]
!   if _temp_1169 <= sizeOfFileInBytes then goto _Label_1168		(int)
	load	[r14+-84],r1
	load	[r14+-188],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	ble	_Label_1168
!	jmp	_Label_1167
_Label_1167:
! THEN...
	mov	2449,r13		! source line 2449
	mov	"\0\0TN",r10
! ASSIGNMENT STATEMENT...
	mov	2449,r13		! source line 2449
	mov	"\0\0AS",r10
!   thisChunkSize = sizeOfFileInBytes - nextPosInFile		(int)
	load	[r14+-188],r1
	load	[r14+-184],r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-176]
! END IF...
_Label_1168:
! IF STATEMENT...
	mov	2452,r13		! source line 2452
	mov	"\0\0IF",r10
!   _temp_1172 = copiedSoFar + thisChunkSize		(int)
	load	[r14+-192],r1
	load	[r14+-176],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-80]
!   if _temp_1172 <= sizeInBytes then goto _Label_1171		(int)
	load	[r14+-80],r1
	load	[r14+16],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	ble	_Label_1171
!	jmp	_Label_1170
_Label_1170:
! THEN...
	mov	2453,r13		! source line 2453
	mov	"\0\0TN",r10
! ASSIGNMENT STATEMENT...
	mov	2453,r13		! source line 2453
	mov	"\0\0AS",r10
!   thisChunkSize = sizeInBytes - copiedSoFar		(int)
	load	[r14+16],r1
	load	[r14+-192],r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-176]
! END IF...
_Label_1171:
! IF STATEMENT...
	mov	2457,r13		! source line 2457
	mov	"\0\0IF",r10
!   if thisChunkSize > 0 then goto _Label_1174		(int)
	load	[r14+-176],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_1174
!	jmp	_Label_1173
_Label_1173:
! THEN...
	mov	2458,r13		! source line 2458
	mov	"\0\0TN",r10
! BREAK STATEMENT...
	mov	2458,r13		! source line 2458
	mov	"\0\0BR",r10
	jmp	_Label_1163
! END IF...
_Label_1174:
! SEND STATEMENT...
	mov	2462,r13		! source line 2462
	mov	"\0\0SE",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1176 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-72]
!   Data Move: _temp_1175 = *_temp_1176  (sizeInBytes=4)
	load	[r14+-72],r1
	load	[r1],r1
	store	r1,[r14+-76]
!   if intIsZero (_temp_1175) then goto _runtimeErrorNullPointer
	load	[r14+-76],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1177 = _temp_1175 + 32
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
	mov	2463,r13		! source line 2463
	mov	"\0\0AS",r10
	mov	2463,r13		! source line 2463
	mov	"\0\0SE",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1180 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-56]
!   Data Move: _temp_1179 = *_temp_1180  (sizeInBytes=4)
	load	[r14+-56],r1
	load	[r1],r1
	store	r1,[r14+-60]
!   if intIsZero (_temp_1179) then goto _runtimeErrorNullPointer
	load	[r14+-60],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1181 = _temp_1179 + 32
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
!   Retrieve Result: targetName=_temp_1178  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-64]
!   destAddr = _temp_1178 + offset		(int)
	load	[r14+-64],r1
	load	[r14+-168],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-196]
! ASSIGNMENT STATEMENT...
	mov	2464,r13		! source line 2464
	mov	"\0\0AS",r10
	mov	2464,r13		! source line 2464
	mov	"\0\0SE",r10
!   _temp_1182 = &_P_Kernel_fileManager
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
	mov	2467,r13		! source line 2467
	mov	"\0\0AS",r10
!   nextPosInFile = nextPosInFile + thisChunkSize		(int)
	load	[r14+-184],r1
	load	[r14+-176],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-184]
! ASSIGNMENT STATEMENT...
	mov	2468,r13		! source line 2468
	mov	"\0\0AS",r10
!   copiedSoFar = copiedSoFar + thisChunkSize		(int)
	load	[r14+-192],r1
	load	[r14+-176],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-192]
! ASSIGNMENT STATEMENT...
	mov	2469,r13		! source line 2469
	mov	"\0\0AS",r10
!   virtPage = virtPage + 1		(int)
	load	[r14+-164],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-164]
! ASSIGNMENT STATEMENT...
	mov	2470,r13		! source line 2470
	mov	"\0\0AS",r10
!   offset = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-168]
! IF STATEMENT...
	mov	2473,r13		! source line 2473
	mov	"\0\0IF",r10
!   if copiedSoFar != sizeInBytes then goto _Label_1184		(int)
	load	[r14+-192],r1
	load	[r14+16],r2
	cmp	r1,r2
	bne	_Label_1184
!	jmp	_Label_1183
_Label_1183:
! THEN...
	mov	2474,r13		! source line 2474
	mov	"\0\0TN",r10
! ASSIGNMENT STATEMENT...
	mov	2474,r13		! source line 2474
	mov	"\0\0AS",r10
!   if intIsZero (openFilePtr) then goto _runtimeErrorNullPointer
	load	[r14+-156],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1185 = openFilePtr + 16
	load	[r14+-156],r1
	add	r1,16,r1
	store	r1,[r14+-44]
!   if intIsZero (openFilePtr) then goto _runtimeErrorNullPointer
	load	[r14+-156],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1188 = openFilePtr + 16
	load	[r14+-156],r1
	add	r1,16,r1
	store	r1,[r14+-32]
!   Data Move: _temp_1187 = *_temp_1188  (sizeInBytes=4)
	load	[r14+-32],r1
	load	[r1],r1
	store	r1,[r14+-36]
!   _temp_1186 = _temp_1187 + copiedSoFar		(int)
	load	[r14+-36],r1
	load	[r14+-192],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-40]
!   Data Move: *_temp_1185 = _temp_1186  (sizeInBytes=4)
	load	[r14+-40],r1
	load	[r14+-44],r2
	store	r1,[r2]
! RETURN STATEMENT...
	mov	2475,r13		! source line 2475
	mov	"\0\0RE",r10
!   ReturnResult: copiedSoFar  (sizeInBytes=4)
	load	[r14+-192],r1
	store	r1,[r14+8]
	add	r15,212,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_1184:
! END WHILE...
	jmp	_Label_1161
_Label_1163:
! ASSIGNMENT STATEMENT...
	mov	2480,r13		! source line 2480
	mov	"\0\0AS",r10
!   if intIsZero (openFilePtr) then goto _runtimeErrorNullPointer
	load	[r14+-156],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1189 = openFilePtr + 16
	load	[r14+-156],r1
	add	r1,16,r1
	store	r1,[r14+-28]
!   if intIsZero (openFilePtr) then goto _runtimeErrorNullPointer
	load	[r14+-156],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1192 = openFilePtr + 16
	load	[r14+-156],r1
	add	r1,16,r1
	store	r1,[r14+-16]
!   Data Move: _temp_1191 = *_temp_1192  (sizeInBytes=4)
	load	[r14+-16],r1
	load	[r1],r1
	store	r1,[r14+-20]
!   _temp_1190 = _temp_1191 + copiedSoFar		(int)
	load	[r14+-20],r1
	load	[r14+-192],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-24]
!   Data Move: *_temp_1189 = _temp_1190  (sizeInBytes=4)
	load	[r14+-24],r1
	load	[r14+-28],r2
	store	r1,[r2]
! RETURN STATEMENT...
	mov	2481,r13		! source line 2481
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
	.word	_Label_1193
	.word	12		! total size of parameters
	.word	208		! frame size = 208
	.word	_Label_1194
	.word	8
	.word	4
	.word	_Label_1195
	.word	12
	.word	4
	.word	_Label_1196
	.word	16
	.word	4
	.word	_Label_1197
	.word	-16
	.word	4
	.word	_Label_1198
	.word	-20
	.word	4
	.word	_Label_1199
	.word	-24
	.word	4
	.word	_Label_1200
	.word	-28
	.word	4
	.word	_Label_1201
	.word	-32
	.word	4
	.word	_Label_1202
	.word	-36
	.word	4
	.word	_Label_1203
	.word	-40
	.word	4
	.word	_Label_1204
	.word	-44
	.word	4
	.word	_Label_1205
	.word	-48
	.word	4
	.word	_Label_1206
	.word	-52
	.word	4
	.word	_Label_1207
	.word	-56
	.word	4
	.word	_Label_1208
	.word	-60
	.word	4
	.word	_Label_1209
	.word	-64
	.word	4
	.word	_Label_1210
	.word	-68
	.word	4
	.word	_Label_1211
	.word	-72
	.word	4
	.word	_Label_1212
	.word	-76
	.word	4
	.word	_Label_1213
	.word	-80
	.word	4
	.word	_Label_1214
	.word	-84
	.word	4
	.word	_Label_1215
	.word	-88
	.word	4
	.word	_Label_1216
	.word	-92
	.word	4
	.word	_Label_1217
	.word	-96
	.word	4
	.word	_Label_1218
	.word	-100
	.word	4
	.word	_Label_1219
	.word	-9
	.word	1
	.word	_Label_1220
	.word	-104
	.word	4
	.word	_Label_1221
	.word	-108
	.word	4
	.word	_Label_1222
	.word	-112
	.word	4
	.word	_Label_1223
	.word	-10
	.word	1
	.word	_Label_1224
	.word	-116
	.word	4
	.word	_Label_1225
	.word	-120
	.word	4
	.word	_Label_1226
	.word	-124
	.word	4
	.word	_Label_1227
	.word	-128
	.word	4
	.word	_Label_1228
	.word	-132
	.word	4
	.word	_Label_1229
	.word	-136
	.word	4
	.word	_Label_1230
	.word	-140
	.word	4
	.word	_Label_1231
	.word	-144
	.word	4
	.word	_Label_1232
	.word	-148
	.word	4
	.word	_Label_1233
	.word	-152
	.word	4
	.word	_Label_1234
	.word	-156
	.word	4
	.word	_Label_1235
	.word	-160
	.word	4
	.word	_Label_1236
	.word	-164
	.word	4
	.word	_Label_1237
	.word	-168
	.word	4
	.word	_Label_1238
	.word	-172
	.word	4
	.word	_Label_1239
	.word	-176
	.word	4
	.word	_Label_1240
	.word	-180
	.word	4
	.word	_Label_1241
	.word	-184
	.word	4
	.word	_Label_1242
	.word	-188
	.word	4
	.word	_Label_1243
	.word	-192
	.word	4
	.word	_Label_1244
	.word	-196
	.word	4
	.word	_Label_1245
	.word	-11
	.word	1
	.word	0
_Label_1193:
	.ascii	"Handle_Sys_Write\0"
	.align
_Label_1194:
	.byte	'I'
	.ascii	"fileDesc\0"
	.align
_Label_1195:
	.byte	'P'
	.ascii	"buffer\0"
	.align
_Label_1196:
	.byte	'I'
	.ascii	"sizeInBytes\0"
	.align
_Label_1197:
	.byte	'?'
	.ascii	"_temp_1192\0"
	.align
_Label_1198:
	.byte	'?'
	.ascii	"_temp_1191\0"
	.align
_Label_1199:
	.byte	'?'
	.ascii	"_temp_1190\0"
	.align
_Label_1200:
	.byte	'?'
	.ascii	"_temp_1189\0"
	.align
_Label_1201:
	.byte	'?'
	.ascii	"_temp_1188\0"
	.align
_Label_1202:
	.byte	'?'
	.ascii	"_temp_1187\0"
	.align
_Label_1203:
	.byte	'?'
	.ascii	"_temp_1186\0"
	.align
_Label_1204:
	.byte	'?'
	.ascii	"_temp_1185\0"
	.align
_Label_1205:
	.byte	'?'
	.ascii	"_temp_1182\0"
	.align
_Label_1206:
	.byte	'?'
	.ascii	"_temp_1181\0"
	.align
_Label_1207:
	.byte	'?'
	.ascii	"_temp_1180\0"
	.align
_Label_1208:
	.byte	'?'
	.ascii	"_temp_1179\0"
	.align
_Label_1209:
	.byte	'?'
	.ascii	"_temp_1178\0"
	.align
_Label_1210:
	.byte	'?'
	.ascii	"_temp_1177\0"
	.align
_Label_1211:
	.byte	'?'
	.ascii	"_temp_1176\0"
	.align
_Label_1212:
	.byte	'?'
	.ascii	"_temp_1175\0"
	.align
_Label_1213:
	.byte	'?'
	.ascii	"_temp_1172\0"
	.align
_Label_1214:
	.byte	'?'
	.ascii	"_temp_1169\0"
	.align
_Label_1215:
	.byte	'?'
	.ascii	"_temp_1166\0"
	.align
_Label_1216:
	.byte	'?'
	.ascii	"_temp_1165\0"
	.align
_Label_1217:
	.byte	'?'
	.ascii	"_temp_1164\0"
	.align
_Label_1218:
	.byte	'?'
	.ascii	"_temp_1160\0"
	.align
_Label_1219:
	.byte	'C'
	.ascii	"_temp_1157\0"
	.align
_Label_1220:
	.byte	'?'
	.ascii	"_temp_1156\0"
	.align
_Label_1221:
	.byte	'?'
	.ascii	"_temp_1155\0"
	.align
_Label_1222:
	.byte	'?'
	.ascii	"_temp_1154\0"
	.align
_Label_1223:
	.byte	'C'
	.ascii	"_temp_1153\0"
	.align
_Label_1224:
	.byte	'?'
	.ascii	"_temp_1146\0"
	.align
_Label_1225:
	.byte	'?'
	.ascii	"_temp_1143\0"
	.align
_Label_1226:
	.byte	'?'
	.ascii	"_temp_1140\0"
	.align
_Label_1227:
	.byte	'?'
	.ascii	"_temp_1139\0"
	.align
_Label_1228:
	.byte	'?'
	.ascii	"_temp_1138\0"
	.align
_Label_1229:
	.byte	'?'
	.ascii	"_temp_1134\0"
	.align
_Label_1230:
	.byte	'?'
	.ascii	"_temp_1129\0"
	.align
_Label_1231:
	.byte	'?'
	.ascii	"_temp_1128\0"
	.align
_Label_1232:
	.byte	'?'
	.ascii	"_temp_1127\0"
	.align
_Label_1233:
	.byte	'?'
	.ascii	"_temp_1126\0"
	.align
_Label_1234:
	.byte	'P'
	.ascii	"openFilePtr\0"
	.align
_Label_1235:
	.byte	'I'
	.ascii	"virtAddr\0"
	.align
_Label_1236:
	.byte	'I'
	.ascii	"virtPage\0"
	.align
_Label_1237:
	.byte	'I'
	.ascii	"offset\0"
	.align
_Label_1238:
	.byte	'I'
	.ascii	"chunkSize\0"
	.align
_Label_1239:
	.byte	'I'
	.ascii	"thisChunkSize\0"
	.align
_Label_1240:
	.byte	'I'
	.ascii	"currentPos\0"
	.align
_Label_1241:
	.byte	'I'
	.ascii	"nextPosInFile\0"
	.align
_Label_1242:
	.byte	'I'
	.ascii	"sizeOfFileInBytes\0"
	.align
_Label_1243:
	.byte	'I'
	.ascii	"copiedSoFar\0"
	.align
_Label_1244:
	.byte	'I'
	.ascii	"destAddr\0"
	.align
_Label_1245:
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
_Label_3812:
	push	r0
	sub	r1,1,r1
	bne	_Label_3812
	mov	2487,r13		! source line 2487
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! SEND STATEMENT...
	mov	2494,r13		! source line 2494
	mov	"\0\0SE",r10
!   _temp_1246 = &_P_Kernel_fileManager
	set	_P_Kernel_fileManager,r1
	store	r1,[r14+-92]
!   _temp_1247 = _temp_1246 + 4
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
	mov	2497,r13		! source line 2497
	mov	"\0\0IF",r10
!   if fileDesc < 10 then goto _Label_1250		(int)
	load	[r14+8],r1
	mov	10,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bl	_Label_1250
	jmp	_Label_1248
_Label_1250:
!   if fileDesc >= 0 then goto _Label_1249		(int)
	load	[r14+8],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_1249
!	jmp	_Label_1248
_Label_1248:
! THEN...
	mov	2498,r13		! source line 2498
	mov	"\0\0TN",r10
! SEND STATEMENT...
	mov	2498,r13		! source line 2498
	mov	"\0\0SE",r10
!   _temp_1251 = &_P_Kernel_fileManager
	set	_P_Kernel_fileManager,r1
	store	r1,[r14+-84]
!   _temp_1252 = _temp_1251 + 4
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
	mov	2499,r13		! source line 2499
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,100,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_1249:
! ASSIGNMENT STATEMENT...
	mov	2503,r13		! source line 2503
	mov	"\0\0AS",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1254 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-72]
!   Data Move: _temp_1253 = *_temp_1254  (sizeInBytes=4)
	load	[r14+-72],r1
	load	[r1],r1
	store	r1,[r14+-76]
!   if intIsZero (_temp_1253) then goto _runtimeErrorNullPointer
	load	[r14+-76],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1255 = _temp_1253 + 124
	load	[r14+-76],r1
	add	r1,124,r1
	store	r1,[r14+-68]
!   Move address of _temp_1255 [fileDesc ] into _temp_1256
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
!   Data Move: openFilePtr = *_temp_1256  (sizeInBytes=4)
	load	[r14+-64],r1
	load	[r1],r1
	store	r1,[r14+-96]
! IF STATEMENT...
	mov	2506,r13		! source line 2506
	mov	"\0\0IF",r10
!   if intIsZero (openFilePtr) then goto _Label_1257
	load	[r14+-96],r1
	cmp	r1,r0
	be	_Label_1257
	jmp	_Label_1258
_Label_1257:
! THEN...
	mov	2507,r13		! source line 2507
	mov	"\0\0TN",r10
! SEND STATEMENT...
	mov	2507,r13		! source line 2507
	mov	"\0\0SE",r10
!   _temp_1259 = &_P_Kernel_fileManager
	set	_P_Kernel_fileManager,r1
	store	r1,[r14+-60]
!   _temp_1260 = _temp_1259 + 4
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
	mov	2508,r13		! source line 2508
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,100,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_1258:
! ASSIGNMENT STATEMENT...
	mov	2511,r13		! source line 2511
	mov	"\0\0AS",r10
!   if intIsZero (openFilePtr) then goto _runtimeErrorNullPointer
	load	[r14+-96],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1262 = openFilePtr + 20
	load	[r14+-96],r1
	add	r1,20,r1
	store	r1,[r14+-48]
!   Data Move: _temp_1261 = *_temp_1262  (sizeInBytes=4)
	load	[r14+-48],r1
	load	[r1],r1
	store	r1,[r14+-52]
!   if intIsZero (_temp_1261) then goto _runtimeErrorNullPointer
	load	[r14+-52],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1263 = _temp_1261 + 24
	load	[r14+-52],r1
	add	r1,24,r1
	store	r1,[r14+-44]
!   Data Move: sizeOfFileInBytes = *_temp_1263  (sizeInBytes=4)
	load	[r14+-44],r1
	load	[r1],r1
	store	r1,[r14+-100]
! IF STATEMENT...
	mov	2515,r13		! source line 2515
	mov	"\0\0IF",r10
!   if newCurrentPos != -1 then goto _Label_1265		(int)
	load	[r14+12],r1
	mov	-1,r2
	cmp	r1,r2
	bne	_Label_1265
!	jmp	_Label_1264
_Label_1264:
! THEN...
	mov	2516,r13		! source line 2516
	mov	"\0\0TN",r10
! ASSIGNMENT STATEMENT...
	mov	2516,r13		! source line 2516
	mov	"\0\0AS",r10
!   if intIsZero (openFilePtr) then goto _runtimeErrorNullPointer
	load	[r14+-96],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1266 = openFilePtr + 16
	load	[r14+-96],r1
	add	r1,16,r1
	store	r1,[r14+-40]
!   Data Move: *_temp_1266 = sizeOfFileInBytes  (sizeInBytes=4)
	load	[r14+-100],r1
	load	[r14+-40],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	2517,r13		! source line 2517
	mov	"\0\0SE",r10
!   _temp_1267 = &_P_Kernel_fileManager
	set	_P_Kernel_fileManager,r1
	store	r1,[r14+-36]
!   _temp_1268 = _temp_1267 + 4
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
	mov	2518,r13		! source line 2518
	mov	"\0\0RE",r10
!   ReturnResult: sizeOfFileInBytes  (sizeInBytes=4)
	load	[r14+-100],r1
	store	r1,[r14+8]
	add	r15,100,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_1265:
! IF STATEMENT...
	mov	2522,r13		! source line 2522
	mov	"\0\0IF",r10
!   if newCurrentPos <= sizeOfFileInBytes then goto _Label_1271		(int)
	load	[r14+12],r1
	load	[r14+-100],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	ble	_Label_1271
	jmp	_Label_1269
_Label_1271:
!   if newCurrentPos >= -1 then goto _Label_1270		(int)
	load	[r14+12],r1
	mov	-1,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_1270
!	jmp	_Label_1269
_Label_1269:
! THEN...
	mov	2523,r13		! source line 2523
	mov	"\0\0TN",r10
! SEND STATEMENT...
	mov	2523,r13		! source line 2523
	mov	"\0\0SE",r10
!   _temp_1272 = &_P_Kernel_fileManager
	set	_P_Kernel_fileManager,r1
	store	r1,[r14+-28]
!   _temp_1273 = _temp_1272 + 4
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
	mov	2524,r13		! source line 2524
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,100,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_1270:
! ASSIGNMENT STATEMENT...
	mov	2529,r13		! source line 2529
	mov	"\0\0AS",r10
!   if intIsZero (openFilePtr) then goto _runtimeErrorNullPointer
	load	[r14+-96],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1274 = openFilePtr + 16
	load	[r14+-96],r1
	add	r1,16,r1
	store	r1,[r14+-20]
!   Data Move: *_temp_1274 = newCurrentPos  (sizeInBytes=4)
	load	[r14+12],r1
	load	[r14+-20],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	2532,r13		! source line 2532
	mov	"\0\0SE",r10
!   _temp_1275 = &_P_Kernel_fileManager
	set	_P_Kernel_fileManager,r1
	store	r1,[r14+-16]
!   _temp_1276 = _temp_1275 + 4
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
	mov	2534,r13		! source line 2534
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
	.word	_Label_1277
	.word	8		! total size of parameters
	.word	96		! frame size = 96
	.word	_Label_1278
	.word	8
	.word	4
	.word	_Label_1279
	.word	12
	.word	4
	.word	_Label_1280
	.word	-12
	.word	4
	.word	_Label_1281
	.word	-16
	.word	4
	.word	_Label_1282
	.word	-20
	.word	4
	.word	_Label_1283
	.word	-24
	.word	4
	.word	_Label_1284
	.word	-28
	.word	4
	.word	_Label_1285
	.word	-32
	.word	4
	.word	_Label_1286
	.word	-36
	.word	4
	.word	_Label_1287
	.word	-40
	.word	4
	.word	_Label_1288
	.word	-44
	.word	4
	.word	_Label_1289
	.word	-48
	.word	4
	.word	_Label_1290
	.word	-52
	.word	4
	.word	_Label_1291
	.word	-56
	.word	4
	.word	_Label_1292
	.word	-60
	.word	4
	.word	_Label_1293
	.word	-64
	.word	4
	.word	_Label_1294
	.word	-68
	.word	4
	.word	_Label_1295
	.word	-72
	.word	4
	.word	_Label_1296
	.word	-76
	.word	4
	.word	_Label_1297
	.word	-80
	.word	4
	.word	_Label_1298
	.word	-84
	.word	4
	.word	_Label_1299
	.word	-88
	.word	4
	.word	_Label_1300
	.word	-92
	.word	4
	.word	_Label_1301
	.word	-96
	.word	4
	.word	_Label_1302
	.word	-100
	.word	4
	.word	0
_Label_1277:
	.ascii	"Handle_Sys_Seek\0"
	.align
_Label_1278:
	.byte	'I'
	.ascii	"fileDesc\0"
	.align
_Label_1279:
	.byte	'I'
	.ascii	"newCurrentPos\0"
	.align
_Label_1280:
	.byte	'?'
	.ascii	"_temp_1276\0"
	.align
_Label_1281:
	.byte	'?'
	.ascii	"_temp_1275\0"
	.align
_Label_1282:
	.byte	'?'
	.ascii	"_temp_1274\0"
	.align
_Label_1283:
	.byte	'?'
	.ascii	"_temp_1273\0"
	.align
_Label_1284:
	.byte	'?'
	.ascii	"_temp_1272\0"
	.align
_Label_1285:
	.byte	'?'
	.ascii	"_temp_1268\0"
	.align
_Label_1286:
	.byte	'?'
	.ascii	"_temp_1267\0"
	.align
_Label_1287:
	.byte	'?'
	.ascii	"_temp_1266\0"
	.align
_Label_1288:
	.byte	'?'
	.ascii	"_temp_1263\0"
	.align
_Label_1289:
	.byte	'?'
	.ascii	"_temp_1262\0"
	.align
_Label_1290:
	.byte	'?'
	.ascii	"_temp_1261\0"
	.align
_Label_1291:
	.byte	'?'
	.ascii	"_temp_1260\0"
	.align
_Label_1292:
	.byte	'?'
	.ascii	"_temp_1259\0"
	.align
_Label_1293:
	.byte	'?'
	.ascii	"_temp_1256\0"
	.align
_Label_1294:
	.byte	'?'
	.ascii	"_temp_1255\0"
	.align
_Label_1295:
	.byte	'?'
	.ascii	"_temp_1254\0"
	.align
_Label_1296:
	.byte	'?'
	.ascii	"_temp_1253\0"
	.align
_Label_1297:
	.byte	'?'
	.ascii	"_temp_1252\0"
	.align
_Label_1298:
	.byte	'?'
	.ascii	"_temp_1251\0"
	.align
_Label_1299:
	.byte	'?'
	.ascii	"_temp_1247\0"
	.align
_Label_1300:
	.byte	'?'
	.ascii	"_temp_1246\0"
	.align
_Label_1301:
	.byte	'P'
	.ascii	"openFilePtr\0"
	.align
_Label_1302:
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
_Label_3813:
	push	r0
	sub	r1,1,r1
	bne	_Label_3813
	mov	2540,r13		! source line 2540
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! IF STATEMENT...
	mov	2546,r13		! source line 2546
	mov	"\0\0IF",r10
!   if fileDesc < 10 then goto _Label_1305		(int)
	load	[r14+8],r1
	mov	10,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bl	_Label_1305
	jmp	_Label_1303
_Label_1305:
!   if fileDesc >= 0 then goto _Label_1304		(int)
	load	[r14+8],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_1304
!	jmp	_Label_1303
_Label_1303:
! THEN...
	mov	2547,r13		! source line 2547
	mov	"\0\0TN",r10
! RETURN STATEMENT...
	mov	2547,r13		! source line 2547
	mov	"\0\0RE",r10
	add	r15,52,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_1304:
! ASSIGNMENT STATEMENT...
	mov	2551,r13		! source line 2551
	mov	"\0\0AS",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1307 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-40]
!   Data Move: _temp_1306 = *_temp_1307  (sizeInBytes=4)
	load	[r14+-40],r1
	load	[r1],r1
	store	r1,[r14+-44]
!   if intIsZero (_temp_1306) then goto _runtimeErrorNullPointer
	load	[r14+-44],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1308 = _temp_1306 + 124
	load	[r14+-44],r1
	add	r1,124,r1
	store	r1,[r14+-36]
!   Move address of _temp_1308 [fileDesc ] into _temp_1309
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
!   Data Move: openFilePtr = *_temp_1309  (sizeInBytes=4)
	load	[r14+-32],r1
	load	[r1],r1
	store	r1,[r14+-48]
! ASSIGNMENT STATEMENT...
	mov	2554,r13		! source line 2554
	mov	"\0\0AS",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1311 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-24]
!   Data Move: _temp_1310 = *_temp_1311  (sizeInBytes=4)
	load	[r14+-24],r1
	load	[r1],r1
	store	r1,[r14+-28]
!   if intIsZero (_temp_1310) then goto _runtimeErrorNullPointer
	load	[r14+-28],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1312 = _temp_1310 + 124
	load	[r14+-28],r1
	add	r1,124,r1
	store	r1,[r14+-20]
!   Move address of _temp_1312 [fileDesc ] into _temp_1313
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
!   Data Move: *_temp_1313 = 0  (sizeInBytes=4)
	mov	0,r1
	load	[r14+-16],r2
	store	r1,[r2]
! IF STATEMENT...
	mov	2557,r13		! source line 2557
	mov	"\0\0IF",r10
!   if intIsZero (openFilePtr) then goto _Label_1315
	load	[r14+-48],r1
	cmp	r1,r0
	be	_Label_1315
!	jmp	_Label_1314
_Label_1314:
! THEN...
	mov	2558,r13		! source line 2558
	mov	"\0\0TN",r10
! SEND STATEMENT...
	mov	2558,r13		! source line 2558
	mov	"\0\0SE",r10
!   _temp_1316 = &_P_Kernel_fileManager
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
_Label_1315:
! RETURN STATEMENT...
	mov	2557,r13		! source line 2557
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
	.word	_Label_1317
	.word	4		! total size of parameters
	.word	48		! frame size = 48
	.word	_Label_1318
	.word	8
	.word	4
	.word	_Label_1319
	.word	-12
	.word	4
	.word	_Label_1320
	.word	-16
	.word	4
	.word	_Label_1321
	.word	-20
	.word	4
	.word	_Label_1322
	.word	-24
	.word	4
	.word	_Label_1323
	.word	-28
	.word	4
	.word	_Label_1324
	.word	-32
	.word	4
	.word	_Label_1325
	.word	-36
	.word	4
	.word	_Label_1326
	.word	-40
	.word	4
	.word	_Label_1327
	.word	-44
	.word	4
	.word	_Label_1328
	.word	-48
	.word	4
	.word	0
_Label_1317:
	.ascii	"Handle_Sys_Close\0"
	.align
_Label_1318:
	.byte	'I'
	.ascii	"fileDesc\0"
	.align
_Label_1319:
	.byte	'?'
	.ascii	"_temp_1316\0"
	.align
_Label_1320:
	.byte	'?'
	.ascii	"_temp_1313\0"
	.align
_Label_1321:
	.byte	'?'
	.ascii	"_temp_1312\0"
	.align
_Label_1322:
	.byte	'?'
	.ascii	"_temp_1311\0"
	.align
_Label_1323:
	.byte	'?'
	.ascii	"_temp_1310\0"
	.align
_Label_1324:
	.byte	'?'
	.ascii	"_temp_1309\0"
	.align
_Label_1325:
	.byte	'?'
	.ascii	"_temp_1308\0"
	.align
_Label_1326:
	.byte	'?'
	.ascii	"_temp_1307\0"
	.align
_Label_1327:
	.byte	'?'
	.ascii	"_temp_1306\0"
	.align
_Label_1328:
	.byte	'P'
	.ascii	"openFilePtr\0"
	.align
! 
! ===============  FUNCTION copyUnalignedWord  ===============
! 
_function_191_copyUnalignedWord:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__function_191_copyUnalignedWord,r1
	push	r1
	mov	9,r1
_Label_3814:
	push	r0
	sub	r1,1,r1
	bne	_Label_3814
	mov	3152,r13		! source line 3152
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	3154,r13		! source line 3154
	mov	"\0\0AS",r10
!   from = fromPtr		(4 bytes)
	load	[r14+12],r1
	store	r1,[r14+-40]
! ASSIGNMENT STATEMENT...
	mov	3155,r13		! source line 3155
	mov	"\0\0AS",r10
!   dest = destPtr		(4 bytes)
	load	[r14+8],r1
	store	r1,[r14+-44]
! ASSIGNMENT STATEMENT...
	mov	3156,r13		! source line 3156
	mov	"\0\0AS",r10
!   if intIsZero (dest) then goto _runtimeErrorNullPointer
	load	[r14+-44],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   if intIsZero (from) then goto _runtimeErrorNullPointer
	load	[r14+-40],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Data Move: _temp_1329 = *from  (sizeInBytes=1)
	load	[r14+-40],r1
	loadb	[r1],r1
	storeb	r1,[r14+-12]
!   Data Move: *dest = _temp_1329  (sizeInBytes=1)
	loadb	[r14+-12],r1
	load	[r14+-44],r2
	storeb	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	3157,r13		! source line 3157
	mov	"\0\0AS",r10
!   _temp_1330 = dest + 1		(int)
	load	[r14+-44],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-36]
!   if intIsZero (_temp_1330) then goto _runtimeErrorNullPointer
	load	[r14+-36],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1332 = from + 1		(int)
	load	[r14+-40],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-32]
!   if intIsZero (_temp_1332) then goto _runtimeErrorNullPointer
	load	[r14+-32],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Data Move: _temp_1331 = *_temp_1332  (sizeInBytes=1)
	load	[r14+-32],r1
	loadb	[r1],r1
	storeb	r1,[r14+-11]
!   Data Move: *_temp_1330 = _temp_1331  (sizeInBytes=1)
	loadb	[r14+-11],r1
	load	[r14+-36],r2
	storeb	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	3158,r13		! source line 3158
	mov	"\0\0AS",r10
!   _temp_1333 = dest + 2		(int)
	load	[r14+-44],r1
	mov	2,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-28]
!   if intIsZero (_temp_1333) then goto _runtimeErrorNullPointer
	load	[r14+-28],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1335 = from + 2		(int)
	load	[r14+-40],r1
	mov	2,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-24]
!   if intIsZero (_temp_1335) then goto _runtimeErrorNullPointer
	load	[r14+-24],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Data Move: _temp_1334 = *_temp_1335  (sizeInBytes=1)
	load	[r14+-24],r1
	loadb	[r1],r1
	storeb	r1,[r14+-10]
!   Data Move: *_temp_1333 = _temp_1334  (sizeInBytes=1)
	loadb	[r14+-10],r1
	load	[r14+-28],r2
	storeb	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	3159,r13		! source line 3159
	mov	"\0\0AS",r10
!   _temp_1336 = dest + 3		(int)
	load	[r14+-44],r1
	mov	3,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-20]
!   if intIsZero (_temp_1336) then goto _runtimeErrorNullPointer
	load	[r14+-20],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1338 = from + 3		(int)
	load	[r14+-40],r1
	mov	3,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-16]
!   if intIsZero (_temp_1338) then goto _runtimeErrorNullPointer
	load	[r14+-16],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Data Move: _temp_1337 = *_temp_1338  (sizeInBytes=1)
	load	[r14+-16],r1
	loadb	[r1],r1
	storeb	r1,[r14+-9]
!   Data Move: *_temp_1336 = _temp_1337  (sizeInBytes=1)
	loadb	[r14+-9],r1
	load	[r14+-20],r2
	storeb	r1,[r2]
! RETURN STATEMENT...
	mov	3159,r13		! source line 3159
	mov	"\0\0RE",r10
	add	r15,40,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__function_191_copyUnalignedWord:
	.word	_sourceFileName
	.word	_Label_1339
	.word	8		! total size of parameters
	.word	36		! frame size = 36
	.word	_Label_1340
	.word	8
	.word	4
	.word	_Label_1341
	.word	12
	.word	4
	.word	_Label_1342
	.word	-16
	.word	4
	.word	_Label_1343
	.word	-9
	.word	1
	.word	_Label_1344
	.word	-20
	.word	4
	.word	_Label_1345
	.word	-24
	.word	4
	.word	_Label_1346
	.word	-10
	.word	1
	.word	_Label_1347
	.word	-28
	.word	4
	.word	_Label_1348
	.word	-32
	.word	4
	.word	_Label_1349
	.word	-11
	.word	1
	.word	_Label_1350
	.word	-36
	.word	4
	.word	_Label_1351
	.word	-12
	.word	1
	.word	_Label_1352
	.word	-40
	.word	4
	.word	_Label_1353
	.word	-44
	.word	4
	.word	0
_Label_1339:
	.ascii	"copyUnalignedWord\0"
	.align
_Label_1340:
	.byte	'P'
	.ascii	"destPtr\0"
	.align
_Label_1341:
	.byte	'P'
	.ascii	"fromPtr\0"
	.align
_Label_1342:
	.byte	'?'
	.ascii	"_temp_1338\0"
	.align
_Label_1343:
	.byte	'C'
	.ascii	"_temp_1337\0"
	.align
_Label_1344:
	.byte	'?'
	.ascii	"_temp_1336\0"
	.align
_Label_1345:
	.byte	'?'
	.ascii	"_temp_1335\0"
	.align
_Label_1346:
	.byte	'C'
	.ascii	"_temp_1334\0"
	.align
_Label_1347:
	.byte	'?'
	.ascii	"_temp_1333\0"
	.align
_Label_1348:
	.byte	'?'
	.ascii	"_temp_1332\0"
	.align
_Label_1349:
	.byte	'C'
	.ascii	"_temp_1331\0"
	.align
_Label_1350:
	.byte	'?'
	.ascii	"_temp_1330\0"
	.align
_Label_1351:
	.byte	'C'
	.ascii	"_temp_1329\0"
	.align
_Label_1352:
	.byte	'P'
	.ascii	"from\0"
	.align
_Label_1353:
	.byte	'P'
	.ascii	"dest\0"
	.align
! 
! ===============  FUNCTION printFCB  ===============
! 
_function_190_printFCB:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__function_190_printFCB,r1
	push	r1
	mov	3,r1
_Label_3815:
	push	r0
	sub	r1,1,r1
	bne	_Label_3815
	mov	3162,r13		! source line 3162
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+8],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1355 = fcb + 12
	load	[r14+8],r1
	add	r1,12,r1
	store	r1,[r14+-12]
!   Data Move: _temp_1354 = *_temp_1355  (sizeInBytes=4)
	load	[r14+-12],r1
	load	[r1],r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_1354  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+0]
!   Call the function
	mov	3163,r13		! source line 3163
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=32  sizeInBytes=1
	mov	32,r1
	storeb	r1,[r15+0]
!   Call the function
	mov	3164,r13		! source line 3164
	mov	"\0\0CE",r10
	call	printChar
! RETURN STATEMENT...
	mov	3164,r13		! source line 3164
	mov	"\0\0RE",r10
	add	r15,16,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__function_190_printFCB:
	.word	_sourceFileName
	.word	_Label_1356
	.word	4		! total size of parameters
	.word	12		! frame size = 12
	.word	_Label_1357
	.word	8
	.word	4
	.word	_Label_1358
	.word	-12
	.word	4
	.word	_Label_1359
	.word	-16
	.word	4
	.word	0
_Label_1356:
	.ascii	"printFCB\0"
	.align
_Label_1357:
	.byte	'P'
	.ascii	"fcb\0"
	.align
_Label_1358:
	.byte	'?'
	.ascii	"_temp_1355\0"
	.align
_Label_1359:
	.byte	'?'
	.ascii	"_temp_1354\0"
	.align
! 
! ===============  FUNCTION printOpen  ===============
! 
_function_189_printOpen:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__function_189_printOpen,r1
	push	r1
	mov	4,r1
_Label_3816:
	push	r0
	sub	r1,1,r1
	bne	_Label_3816
	mov	3167,r13		! source line 3167
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   _temp_1360 = _StringConst_42
	set	_StringConst_42,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_1360  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   Call the function
	mov	3168,r13		! source line 3168
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_1361 = open		(4 bytes)
	load	[r14+8],r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_1361  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+0]
!   Call the function
	mov	3169,r13		! source line 3169
	mov	"\0\0CE",r10
	call	printHex
! CALL STATEMENT...
!   _temp_1362 = _StringConst_43
	set	_StringConst_43,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_1362  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	3170,r13		! source line 3170
	mov	"\0\0CE",r10
	call	print
! SEND STATEMENT...
	mov	3171,r13		! source line 3171
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
	mov	3171,r13		! source line 3171
	mov	"\0\0RE",r10
	add	r15,20,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__function_189_printOpen:
	.word	_sourceFileName
	.word	_Label_1363
	.word	4		! total size of parameters
	.word	16		! frame size = 16
	.word	_Label_1364
	.word	8
	.word	4
	.word	_Label_1365
	.word	-12
	.word	4
	.word	_Label_1366
	.word	-16
	.word	4
	.word	_Label_1367
	.word	-20
	.word	4
	.word	0
_Label_1363:
	.ascii	"printOpen\0"
	.align
_Label_1364:
	.byte	'P'
	.ascii	"open\0"
	.align
_Label_1365:
	.byte	'?'
	.ascii	"_temp_1362\0"
	.align
_Label_1366:
	.byte	'?'
	.ascii	"_temp_1361\0"
	.align
_Label_1367:
	.byte	'?'
	.ascii	"_temp_1360\0"
	.align
! 
! ===============  CLASS Semaphore  ===============
! 
! Dispatch Table:
! 
_P_Kernel_Semaphore:
	.word	_Label_1368
	jmp	_Method_P_Kernel_Semaphore_1	! 4:	Init
	jmp	_Method_P_Kernel_Semaphore_3	! 8:	Down
	jmp	_Method_P_Kernel_Semaphore_2	! 12:	Up
	.word	0
! 
! Class descriptor:
! 
_Label_1368:
	.word	1129070931		! Magic number 0x434c4153 == 'CLAS'
	.word	_Label_1369
	.word	_sourceFileName
	.word	129		! line number
	.word	20		! size of instances, in bytes
	.word	_P_Kernel_Semaphore
	.word	_P_System_Object
	.word	0
_Label_1369:
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
_Label_3817:
	push	r0
	sub	r1,1,r1
	bne	_Label_3817
	mov	230,r13		! source line 230
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! IF STATEMENT...
	mov	231,r13		! source line 231
	mov	"\0\0IF",r10
!   if initialCount >= 0 then goto _Label_1371		(int)
	load	[r14+12],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_1371
!	jmp	_Label_1370
_Label_1370:
! THEN...
	mov	232,r13		! source line 232
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_1372 = _StringConst_44
	set	_StringConst_44,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_1372  sizeInBytes=4
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
_Label_1371:
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
	.word	_Label_1374
	.word	8		! total size of parameters
	.word	12		! frame size = 12
	.word	_Label_1375
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1376
	.word	12
	.word	4
	.word	_Label_1377
	.word	-12
	.word	4
	.word	_Label_1378
	.word	-16
	.word	4
	.word	0
_Label_1374:
	.ascii	"Semaphore"
	.ascii	"::"
	.ascii	"Init\0"
	.align
_Label_1375:
	.ascii	"Pself\0"
	.align
_Label_1376:
	.byte	'I'
	.ascii	"initialCount\0"
	.align
_Label_1377:
	.byte	'?'
	.ascii	"_temp_1373\0"
	.align
_Label_1378:
	.byte	'?'
	.ascii	"_temp_1372\0"
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
_Label_3818:
	push	r0
	sub	r1,1,r1
	bne	_Label_3818
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
!   if count != 2147483647 then goto _Label_1380		(int)
	load	[r14+8],r1
	load	[r1+4],r1
	set	2147483647,r2
	cmp	r1,r2
	bne	_Label_1380
!	jmp	_Label_1379
_Label_1379:
! THEN...
	mov	246,r13		! source line 246
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_1381 = _StringConst_45
	set	_StringConst_45,r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=8  value=_temp_1381  sizeInBytes=4
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
_Label_1380:
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
!   if count > 0 then goto _Label_1383		(int)
	load	[r14+8],r1
	load	[r1+4],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_1383
!	jmp	_Label_1382
_Label_1382:
! THEN...
	mov	250,r13		! source line 250
	mov	"\0\0TN",r10
! ASSIGNMENT STATEMENT...
	mov	250,r13		! source line 250
	mov	"\0\0AS",r10
	mov	250,r13		! source line 250
	mov	"\0\0SE",r10
!   _temp_1384 = &waitingThreads
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
!   _temp_1385 = t + 76
	load	[r14+-32],r1
	add	r1,76,r1
	store	r1,[r14+-16]
!   Data Move: *_temp_1385 = 2  (sizeInBytes=4)
	mov	2,r1
	load	[r14+-16],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	252,r13		! source line 252
	mov	"\0\0SE",r10
!   _temp_1386 = &_P_Kernel_readyList
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
_Label_1383:
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
	.word	_Label_1387
	.word	4		! total size of parameters
	.word	32		! frame size = 32
	.word	_Label_1388
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1389
	.word	-12
	.word	4
	.word	_Label_1390
	.word	-16
	.word	4
	.word	_Label_1391
	.word	-20
	.word	4
	.word	_Label_1392
	.word	-24
	.word	4
	.word	_Label_1393
	.word	-28
	.word	4
	.word	_Label_1394
	.word	-32
	.word	4
	.word	0
_Label_1387:
	.ascii	"Semaphore"
	.ascii	"::"
	.ascii	"Up\0"
	.align
_Label_1388:
	.ascii	"Pself\0"
	.align
_Label_1389:
	.byte	'?'
	.ascii	"_temp_1386\0"
	.align
_Label_1390:
	.byte	'?'
	.ascii	"_temp_1385\0"
	.align
_Label_1391:
	.byte	'?'
	.ascii	"_temp_1384\0"
	.align
_Label_1392:
	.byte	'?'
	.ascii	"_temp_1381\0"
	.align
_Label_1393:
	.byte	'I'
	.ascii	"oldIntStat\0"
	.align
_Label_1394:
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
_Label_3819:
	push	r0
	sub	r1,1,r1
	bne	_Label_3819
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
!   if count != -2147483648 then goto _Label_1396		(int)
	load	[r14+8],r1
	load	[r1+4],r1
	set	0x80000000,r2
	cmp	r1,r2
	bne	_Label_1396
!	jmp	_Label_1395
_Label_1395:
! THEN...
	mov	264,r13		! source line 264
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_1397 = _StringConst_46
	set	_StringConst_46,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_1397  sizeInBytes=4
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
_Label_1396:
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
!   if count >= 0 then goto _Label_1399		(int)
	load	[r14+8],r1
	load	[r1+4],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_1399
!	jmp	_Label_1398
_Label_1398:
! THEN...
	mov	268,r13		! source line 268
	mov	"\0\0TN",r10
! SEND STATEMENT...
	mov	268,r13		! source line 268
	mov	"\0\0SE",r10
!   _temp_1400 = &waitingThreads
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
_Label_1399:
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
	.word	_Label_1401
	.word	4		! total size of parameters
	.word	20		! frame size = 20
	.word	_Label_1402
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1403
	.word	-12
	.word	4
	.word	_Label_1404
	.word	-16
	.word	4
	.word	_Label_1405
	.word	-20
	.word	4
	.word	0
_Label_1401:
	.ascii	"Semaphore"
	.ascii	"::"
	.ascii	"Down\0"
	.align
_Label_1402:
	.ascii	"Pself\0"
	.align
_Label_1403:
	.byte	'?'
	.ascii	"_temp_1400\0"
	.align
_Label_1404:
	.byte	'?'
	.ascii	"_temp_1397\0"
	.align
_Label_1405:
	.byte	'I'
	.ascii	"oldIntStat\0"
	.align
! 
! ===============  CLASS Mutex  ===============
! 
! Dispatch Table:
! 
_P_Kernel_Mutex:
	.word	_Label_1406
	jmp	_Method_P_Kernel_Mutex_1	! 4:	Init
	jmp	_Method_P_Kernel_Mutex_2	! 8:	Lock
	jmp	_Method_P_Kernel_Mutex_3	! 12:	Unlock
	jmp	_Method_P_Kernel_Mutex_4	! 16:	IsHeldByCurrentThread
	.word	0
! 
! Class descriptor:
! 
_Label_1406:
	.word	1129070931		! Magic number 0x434c4153 == 'CLAS'
	.word	_Label_1407
	.word	_sourceFileName
	.word	142		! line number
	.word	20		! size of instances, in bytes
	.word	_P_Kernel_Mutex
	.word	_P_System_Object
	.word	0
_Label_1407:
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
_Label_3820:
	push	r0
	sub	r1,1,r1
	bne	_Label_3820
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
	.word	_Label_1409
	.word	4		! total size of parameters
	.word	4		! frame size = 4
	.word	_Label_1410
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1411
	.word	-12
	.word	4
	.word	0
_Label_1409:
	.ascii	"Mutex"
	.ascii	"::"
	.ascii	"Init\0"
	.align
_Label_1410:
	.ascii	"Pself\0"
	.align
_Label_1411:
	.byte	'?'
	.ascii	"_temp_1408\0"
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
_Label_3821:
	push	r0
	sub	r1,1,r1
	bne	_Label_3821
	mov	300,r13		! source line 300
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! IF STATEMENT...
	mov	303,r13		! source line 303
	mov	"\0\0IF",r10
!   if heldBy != _P_Kernel_currentThread then goto _Label_1413		(int)
	load	[r14+8],r1
	load	[r1+4],r1
	set	_P_Kernel_currentThread,r2
	load	[r2],r2
	cmp	r1,r2
	bne	_Label_1413
!	jmp	_Label_1412
_Label_1412:
! THEN...
	mov	304,r13		! source line 304
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_1414 = _StringConst_47
	set	_StringConst_47,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_1414  sizeInBytes=4
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
_Label_1413:
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
!   if heldBy == 0 then goto _Label_1418		(int)
	load	[r14+8],r1
	load	[r1+4],r1
	mov	0,r2
	cmp	r1,r2
	be	_Label_1418
!   _temp_1417 = 1		(1 byte)
	mov	1,r1
	storeb	r1,[r14+-9]
	jmp	_Label_1419
_Label_1418:
!   _temp_1417 = 0		(1 byte)
	mov	0,r1
	storeb	r1,[r14+-9]
_Label_1419:
!   if _temp_1417 then goto _Label_1416 else goto _Label_1415
	loadb	[r14+-9],r1
	cmp	r1,0
	be	_Label_1415
	jmp	_Label_1416
_Label_1415:
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
	jmp	_Label_1420
_Label_1416:
! ELSE...
	mov	310,r13		! source line 310
	mov	"\0\0EL",r10
! SEND STATEMENT...
	mov	310,r13		! source line 310
	mov	"\0\0SE",r10
!   _temp_1421 = &waitingThreads
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
_Label_1420:
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
	.word	_Label_1422
	.word	4		! total size of parameters
	.word	24		! frame size = 24
	.word	_Label_1423
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1424
	.word	-16
	.word	4
	.word	_Label_1425
	.word	-9
	.word	1
	.word	_Label_1426
	.word	-20
	.word	4
	.word	_Label_1427
	.word	-24
	.word	4
	.word	0
_Label_1422:
	.ascii	"Mutex"
	.ascii	"::"
	.ascii	"Lock\0"
	.align
_Label_1423:
	.ascii	"Pself\0"
	.align
_Label_1424:
	.byte	'?'
	.ascii	"_temp_1421\0"
	.align
_Label_1425:
	.byte	'C'
	.ascii	"_temp_1417\0"
	.align
_Label_1426:
	.byte	'?'
	.ascii	"_temp_1414\0"
	.align
_Label_1427:
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
_Label_3822:
	push	r0
	sub	r1,1,r1
	bne	_Label_3822
	mov	318,r13		! source line 318
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! IF STATEMENT...
	mov	322,r13		! source line 322
	mov	"\0\0IF",r10
!   if heldBy == _P_Kernel_currentThread then goto _Label_1429		(int)
	load	[r14+8],r1
	load	[r1+4],r1
	set	_P_Kernel_currentThread,r2
	load	[r2],r2
	cmp	r1,r2
	be	_Label_1429
!	jmp	_Label_1428
_Label_1428:
! THEN...
	mov	323,r13		! source line 323
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_1430 = _StringConst_48
	set	_StringConst_48,r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=8  value=_temp_1430  sizeInBytes=4
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
_Label_1429:
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
!   _temp_1431 = &waitingThreads
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
!   if t == 0 then goto _Label_1433		(int)
	load	[r14+-32],r1
	mov	0,r2
	cmp	r1,r2
	be	_Label_1433
!	jmp	_Label_1432
_Label_1432:
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
!   _temp_1434 = t + 76
	load	[r14+-32],r1
	add	r1,76,r1
	store	r1,[r14+-16]
!   Data Move: *_temp_1434 = 2  (sizeInBytes=4)
	mov	2,r1
	load	[r14+-16],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	329,r13		! source line 329
	mov	"\0\0SE",r10
!   _temp_1435 = &_P_Kernel_readyList
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
	jmp	_Label_1436
_Label_1433:
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
_Label_1436:
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
	.word	_Label_1437
	.word	4		! total size of parameters
	.word	32		! frame size = 32
	.word	_Label_1438
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1439
	.word	-12
	.word	4
	.word	_Label_1440
	.word	-16
	.word	4
	.word	_Label_1441
	.word	-20
	.word	4
	.word	_Label_1442
	.word	-24
	.word	4
	.word	_Label_1443
	.word	-28
	.word	4
	.word	_Label_1444
	.word	-32
	.word	4
	.word	0
_Label_1437:
	.ascii	"Mutex"
	.ascii	"::"
	.ascii	"Unlock\0"
	.align
_Label_1438:
	.ascii	"Pself\0"
	.align
_Label_1439:
	.byte	'?'
	.ascii	"_temp_1435\0"
	.align
_Label_1440:
	.byte	'?'
	.ascii	"_temp_1434\0"
	.align
_Label_1441:
	.byte	'?'
	.ascii	"_temp_1431\0"
	.align
_Label_1442:
	.byte	'?'
	.ascii	"_temp_1430\0"
	.align
_Label_1443:
	.byte	'I'
	.ascii	"oldIntStat\0"
	.align
_Label_1444:
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
_Label_3823:
	push	r0
	sub	r1,1,r1
	bne	_Label_3823
	mov	339,r13		! source line 339
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! RETURN STATEMENT...
	mov	340,r13		! source line 340
	mov	"\0\0RE",r10
!   if heldBy != _P_Kernel_currentThread then goto _Label_1447		(int)
	load	[r14+8],r1
	load	[r1+4],r1
	set	_P_Kernel_currentThread,r2
	load	[r2],r2
	cmp	r1,r2
	bne	_Label_1447
!	jmp	_Label_1446
_Label_1446:
!   _temp_1445 = 1		(1 byte)
	mov	1,r1
	storeb	r1,[r14+-9]
	jmp	_Label_1448
_Label_1447:
!   _temp_1445 = 0		(1 byte)
	mov	0,r1
	storeb	r1,[r14+-9]
_Label_1448:
!   ReturnResult: _temp_1445  (sizeInBytes=1)
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
	.word	_Label_1449
	.word	4		! total size of parameters
	.word	4		! frame size = 4
	.word	_Label_1450
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1451
	.word	-9
	.word	1
	.word	0
_Label_1449:
	.ascii	"Mutex"
	.ascii	"::"
	.ascii	"IsHeldByCurrentThread\0"
	.align
_Label_1450:
	.ascii	"Pself\0"
	.align
_Label_1451:
	.byte	'C'
	.ascii	"_temp_1445\0"
	.align
! 
! ===============  CLASS Condition  ===============
! 
! Dispatch Table:
! 
_P_Kernel_Condition:
	.word	_Label_1452
	jmp	_Method_P_Kernel_Condition_1	! 4:	Init
	jmp	_Method_P_Kernel_Condition_2	! 8:	Wait
	jmp	_Method_P_Kernel_Condition_3	! 12:	Signal
	jmp	_Method_P_Kernel_Condition_4	! 16:	Broadcast
	.word	0
! 
! Class descriptor:
! 
_Label_1452:
	.word	1129070931		! Magic number 0x434c4153 == 'CLAS'
	.word	_Label_1453
	.word	_sourceFileName
	.word	156		! line number
	.word	16		! size of instances, in bytes
	.word	_P_Kernel_Condition
	.word	_P_System_Object
	.word	0
_Label_1453:
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
_Label_3824:
	push	r0
	sub	r1,1,r1
	bne	_Label_3824
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
	.word	_Label_1455
	.word	4		! total size of parameters
	.word	4		! frame size = 4
	.word	_Label_1456
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1457
	.word	-12
	.word	4
	.word	0
_Label_1455:
	.ascii	"Condition"
	.ascii	"::"
	.ascii	"Init\0"
	.align
_Label_1456:
	.ascii	"Pself\0"
	.align
_Label_1457:
	.byte	'?'
	.ascii	"_temp_1454\0"
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
_Label_3825:
	push	r0
	sub	r1,1,r1
	bne	_Label_3825
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
!   Retrieve Result: targetName=_temp_1460  sizeInBytes=1
	loadb	[r15],r1
	storeb	r1,[r14+-9]
!   if _temp_1460 then goto _Label_1459 else goto _Label_1458
	loadb	[r14+-9],r1
	cmp	r1,0
	be	_Label_1458
	jmp	_Label_1459
_Label_1458:
! THEN...
	mov	390,r13		! source line 390
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_1461 = _StringConst_49
	set	_StringConst_49,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_1461  sizeInBytes=4
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
_Label_1459:
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
!   _temp_1462 = &waitingThreads
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
	.word	_Label_1463
	.word	8		! total size of parameters
	.word	24		! frame size = 24
	.word	_Label_1464
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1465
	.word	12
	.word	4
	.word	_Label_1466
	.word	-16
	.word	4
	.word	_Label_1467
	.word	-20
	.word	4
	.word	_Label_1468
	.word	-9
	.word	1
	.word	_Label_1469
	.word	-24
	.word	4
	.word	0
_Label_1463:
	.ascii	"Condition"
	.ascii	"::"
	.ascii	"Wait\0"
	.align
_Label_1464:
	.ascii	"Pself\0"
	.align
_Label_1465:
	.byte	'P'
	.ascii	"mutex\0"
	.align
_Label_1466:
	.byte	'?'
	.ascii	"_temp_1462\0"
	.align
_Label_1467:
	.byte	'?'
	.ascii	"_temp_1461\0"
	.align
_Label_1468:
	.byte	'C'
	.ascii	"_temp_1460\0"
	.align
_Label_1469:
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
_Label_3826:
	push	r0
	sub	r1,1,r1
	bne	_Label_3826
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
!   Retrieve Result: targetName=_temp_1472  sizeInBytes=1
	loadb	[r15],r1
	storeb	r1,[r14+-9]
!   if _temp_1472 then goto _Label_1471 else goto _Label_1470
	loadb	[r14+-9],r1
	cmp	r1,0
	be	_Label_1470
	jmp	_Label_1471
_Label_1470:
! THEN...
	mov	407,r13		! source line 407
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_1473 = _StringConst_50
	set	_StringConst_50,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=8  value=_temp_1473  sizeInBytes=4
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
_Label_1471:
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
!   _temp_1474 = &waitingThreads
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
!   if t == 0 then goto _Label_1476		(int)
	load	[r14+-36],r1
	mov	0,r2
	cmp	r1,r2
	be	_Label_1476
!	jmp	_Label_1475
_Label_1475:
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
!   _temp_1477 = t + 76
	load	[r14+-36],r1
	add	r1,76,r1
	store	r1,[r14+-20]
!   Data Move: *_temp_1477 = 2  (sizeInBytes=4)
	mov	2,r1
	load	[r14+-20],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	413,r13		! source line 413
	mov	"\0\0SE",r10
!   _temp_1478 = &_P_Kernel_readyList
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
_Label_1476:
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
	.word	_Label_1479
	.word	8		! total size of parameters
	.word	36		! frame size = 36
	.word	_Label_1480
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1481
	.word	12
	.word	4
	.word	_Label_1482
	.word	-16
	.word	4
	.word	_Label_1483
	.word	-20
	.word	4
	.word	_Label_1484
	.word	-24
	.word	4
	.word	_Label_1485
	.word	-28
	.word	4
	.word	_Label_1486
	.word	-9
	.word	1
	.word	_Label_1487
	.word	-32
	.word	4
	.word	_Label_1488
	.word	-36
	.word	4
	.word	0
_Label_1479:
	.ascii	"Condition"
	.ascii	"::"
	.ascii	"Signal\0"
	.align
_Label_1480:
	.ascii	"Pself\0"
	.align
_Label_1481:
	.byte	'P'
	.ascii	"mutex\0"
	.align
_Label_1482:
	.byte	'?'
	.ascii	"_temp_1478\0"
	.align
_Label_1483:
	.byte	'?'
	.ascii	"_temp_1477\0"
	.align
_Label_1484:
	.byte	'?'
	.ascii	"_temp_1474\0"
	.align
_Label_1485:
	.byte	'?'
	.ascii	"_temp_1473\0"
	.align
_Label_1486:
	.byte	'C'
	.ascii	"_temp_1472\0"
	.align
_Label_1487:
	.byte	'I'
	.ascii	"oldIntStat\0"
	.align
_Label_1488:
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
_Label_3827:
	push	r0
	sub	r1,1,r1
	bne	_Label_3827
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
!   Retrieve Result: targetName=_temp_1491  sizeInBytes=1
	loadb	[r15],r1
	storeb	r1,[r14+-9]
!   if _temp_1491 then goto _Label_1490 else goto _Label_1489
	loadb	[r14+-9],r1
	cmp	r1,0
	be	_Label_1489
	jmp	_Label_1490
_Label_1489:
! THEN...
	mov	425,r13		! source line 425
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_1492 = _StringConst_51
	set	_StringConst_51,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=8  value=_temp_1492  sizeInBytes=4
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
_Label_1490:
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
_Label_1493:
!	jmp	_Label_1494
_Label_1494:
	mov	428,r13		! source line 428
	mov	"\0\0WB",r10
! ASSIGNMENT STATEMENT...
	mov	429,r13		! source line 429
	mov	"\0\0AS",r10
	mov	429,r13		! source line 429
	mov	"\0\0SE",r10
!   _temp_1496 = &waitingThreads
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
!   if intIsZero (t) then goto _Label_1497
	load	[r14+-36],r1
	cmp	r1,r0
	be	_Label_1497
	jmp	_Label_1498
_Label_1497:
! THEN...
	mov	432,r13		! source line 432
	mov	"\0\0TN",r10
! BREAK STATEMENT...
	mov	432,r13		! source line 432
	mov	"\0\0BR",r10
	jmp	_Label_1495
! END IF...
_Label_1498:
! ASSIGNMENT STATEMENT...
	mov	434,r13		! source line 434
	mov	"\0\0AS",r10
!   if intIsZero (t) then goto _runtimeErrorNullPointer
	load	[r14+-36],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1499 = t + 76
	load	[r14+-36],r1
	add	r1,76,r1
	store	r1,[r14+-20]
!   Data Move: *_temp_1499 = 2  (sizeInBytes=4)
	mov	2,r1
	load	[r14+-20],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	435,r13		! source line 435
	mov	"\0\0SE",r10
!   _temp_1500 = &_P_Kernel_readyList
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
	jmp	_Label_1493
_Label_1495:
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
	.word	_Label_1501
	.word	8		! total size of parameters
	.word	36		! frame size = 36
	.word	_Label_1502
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1503
	.word	12
	.word	4
	.word	_Label_1504
	.word	-16
	.word	4
	.word	_Label_1505
	.word	-20
	.word	4
	.word	_Label_1506
	.word	-24
	.word	4
	.word	_Label_1507
	.word	-28
	.word	4
	.word	_Label_1508
	.word	-9
	.word	1
	.word	_Label_1509
	.word	-32
	.word	4
	.word	_Label_1510
	.word	-36
	.word	4
	.word	0
_Label_1501:
	.ascii	"Condition"
	.ascii	"::"
	.ascii	"Broadcast\0"
	.align
_Label_1502:
	.ascii	"Pself\0"
	.align
_Label_1503:
	.byte	'P'
	.ascii	"mutex\0"
	.align
_Label_1504:
	.byte	'?'
	.ascii	"_temp_1500\0"
	.align
_Label_1505:
	.byte	'?'
	.ascii	"_temp_1499\0"
	.align
_Label_1506:
	.byte	'?'
	.ascii	"_temp_1496\0"
	.align
_Label_1507:
	.byte	'?'
	.ascii	"_temp_1492\0"
	.align
_Label_1508:
	.byte	'C'
	.ascii	"_temp_1491\0"
	.align
_Label_1509:
	.byte	'I'
	.ascii	"oldIntStat\0"
	.align
_Label_1510:
	.byte	'P'
	.ascii	"t\0"
	.align
! 
! ===============  CLASS Thread  ===============
! 
! Dispatch Table:
! 
_P_Kernel_Thread:
	.word	_Label_1511
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
_Label_1511:
	.word	1129070931		! Magic number 0x434c4153 == 'CLAS'
	.word	_Label_1512
	.word	_sourceFileName
	.word	169		! line number
	.word	4164		! size of instances, in bytes
	.word	_P_Kernel_Thread
	.word	_P_List_Listable
	.word	_P_System_Object
	.word	0
_Label_1512:
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
_Label_3828:
	push	r0
	sub	r1,1,r1
	bne	_Label_3828
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
!   _temp_1513 = &systemStack
	load	[r14+8],r1
	add	r1,88,r1
	store	r1,[r14+-188]
!   if intIsZero (_temp_1513) then goto _runtimeErrorNullPointer
	load	[r14+-188],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Data Move: *_temp_1513 = 1000  (sizeInBytes=4)
	mov	1000,r1
	load	[r14+-188],r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	457,r13		! source line 457
	mov	"\0\0AS",r10
!   _temp_1514 = &systemStack
	load	[r14+8],r1
	add	r1,88,r1
	store	r1,[r14+-184]
!   Move address of _temp_1514 [0 ] into _temp_1515
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
!   Data Move: *_temp_1515 = 606348324  (sizeInBytes=4)
	set	606348324,r1
	load	[r14+-180],r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	458,r13		! source line 458
	mov	"\0\0AS",r10
!   _temp_1516 = &systemStack
	load	[r14+8],r1
	add	r1,88,r1
	store	r1,[r14+-176]
!   Move address of _temp_1516 [999 ] into _temp_1517
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
!   Data Move: *_temp_1517 = 606348324  (sizeInBytes=4)
	set	606348324,r1
	load	[r14+-172],r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	459,r13		! source line 459
	mov	"\0\0AS",r10
!   _temp_1518 = &systemStack
	load	[r14+8],r1
	add	r1,88,r1
	store	r1,[r14+-168]
!   Move address of _temp_1518 [999 ] into _temp_1519
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
!   stackTop = _temp_1519		(4 bytes)
	load	[r14+-164],r1
	load	[r14+8],r2
	store	r1,[r2+68]
! ASSIGNMENT STATEMENT...
	mov	460,r13		! source line 460
	mov	"\0\0AS",r10
!   _temp_1520 = &regs
	load	[r14+8],r1
	add	r1,12,r1
	store	r1,[r14+-160]
!   NEW ARRAY Constructor...
!   _temp_1522 = &_temp_1521
	add	r14,-156,r1
	store	r1,[r14+-100]
!   _temp_1522 = _temp_1522 + 4
	load	[r14+-100],r1
	add	r1,4,r1
	store	r1,[r14+-100]
!   Next value...
	mov	13,r1
	store	r1,[r14+-96]
_Label_1524:
!   Data Move: *_temp_1522 = 0  (sizeInBytes=4)
	mov	0,r1
	load	[r14+-100],r2
	store	r1,[r2]
!   _temp_1522 = _temp_1522 + 4
	load	[r14+-100],r1
	add	r1,4,r1
	store	r1,[r14+-100]
!   _temp_1523 = _temp_1523 + -1
	load	[r14+-96],r1
	add	r1,-1,r1
	store	r1,[r14+-96]
!   if intNotZero (_temp_1523) then goto _Label_1524
	load	[r14+-96],r1
	cmp	r1,r0
	bne	_Label_1524
!   Initialize the array size...
	mov	13,r1
	store	r1,[r14+-156]
!   _temp_1525 = &_temp_1521
	add	r14,-156,r1
	store	r1,[r14+-92]
!   make sure array has size 13
	load	[r14+-160],r1
	load	[r1],r1
	set	13, r2
	cmp	r1,0
	be	_Label_3829
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bne	_runtimeErrorWrongArraySize
_Label_3829:
!   make sure array has size 13
	load	[r14+-92],r1
	load	[r1],r1
	set	13, r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bne	_runtimeErrorWrongArraySize
!   Data Move: *_temp_1520 = *_temp_1525  (sizeInBytes=56)
	load	[r14+-92],r5
	load	[r14+-160],r4
	mov	14,r3
_Label_3830:
	load	[r5],r1
	add	r5,4,r5
	store	r1,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_3830
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
!   _temp_1526 = &userRegs
	load	[r14+8],r1
	add	r1,4096,r1
	store	r1,[r14+-88]
!   NEW ARRAY Constructor...
!   _temp_1528 = &_temp_1527
	add	r14,-84,r1
	store	r1,[r14+-20]
!   _temp_1528 = _temp_1528 + 4
	load	[r14+-20],r1
	add	r1,4,r1
	store	r1,[r14+-20]
!   Next value...
	mov	15,r1
	store	r1,[r14+-16]
_Label_1530:
!   Data Move: *_temp_1528 = 0  (sizeInBytes=4)
	mov	0,r1
	load	[r14+-20],r2
	store	r1,[r2]
!   _temp_1528 = _temp_1528 + 4
	load	[r14+-20],r1
	add	r1,4,r1
	store	r1,[r14+-20]
!   _temp_1529 = _temp_1529 + -1
	load	[r14+-16],r1
	add	r1,-1,r1
	store	r1,[r14+-16]
!   if intNotZero (_temp_1529) then goto _Label_1530
	load	[r14+-16],r1
	cmp	r1,r0
	bne	_Label_1530
!   Initialize the array size...
	mov	15,r1
	store	r1,[r14+-84]
!   _temp_1531 = &_temp_1527
	add	r14,-84,r1
	store	r1,[r14+-12]
!   make sure array has size 15
	load	[r14+-88],r1
	load	[r1],r1
	set	15, r2
	cmp	r1,0
	be	_Label_3831
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bne	_runtimeErrorWrongArraySize
_Label_3831:
!   make sure array has size 15
	load	[r14+-12],r1
	load	[r1],r1
	set	15, r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bne	_runtimeErrorWrongArraySize
!   Data Move: *_temp_1526 = *_temp_1531  (sizeInBytes=64)
	load	[r14+-12],r5
	load	[r14+-88],r4
	mov	16,r3
_Label_3832:
	load	[r5],r1
	add	r5,4,r5
	store	r1,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_3832
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
	.word	_Label_1532
	.word	8		! total size of parameters
	.word	180		! frame size = 180
	.word	_Label_1533
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1534
	.word	12
	.word	4
	.word	_Label_1535
	.word	-12
	.word	4
	.word	_Label_1536
	.word	-16
	.word	4
	.word	_Label_1537
	.word	-20
	.word	4
	.word	_Label_1538
	.word	-84
	.word	64
	.word	_Label_1539
	.word	-88
	.word	4
	.word	_Label_1540
	.word	-92
	.word	4
	.word	_Label_1541
	.word	-96
	.word	4
	.word	_Label_1542
	.word	-100
	.word	4
	.word	_Label_1543
	.word	-156
	.word	56
	.word	_Label_1544
	.word	-160
	.word	4
	.word	_Label_1545
	.word	-164
	.word	4
	.word	_Label_1546
	.word	-168
	.word	4
	.word	_Label_1547
	.word	-172
	.word	4
	.word	_Label_1548
	.word	-176
	.word	4
	.word	_Label_1549
	.word	-180
	.word	4
	.word	_Label_1550
	.word	-184
	.word	4
	.word	_Label_1551
	.word	-188
	.word	4
	.word	0
_Label_1532:
	.ascii	"Thread"
	.ascii	"::"
	.ascii	"Init\0"
	.align
_Label_1533:
	.ascii	"Pself\0"
	.align
_Label_1534:
	.byte	'P'
	.ascii	"n\0"
	.align
_Label_1535:
	.byte	'?'
	.ascii	"_temp_1531\0"
	.align
_Label_1536:
	.byte	'?'
	.ascii	"_temp_1529\0"
	.align
_Label_1537:
	.byte	'?'
	.ascii	"_temp_1528\0"
	.align
_Label_1538:
	.byte	'?'
	.ascii	"_temp_1527\0"
	.align
_Label_1539:
	.byte	'?'
	.ascii	"_temp_1526\0"
	.align
_Label_1540:
	.byte	'?'
	.ascii	"_temp_1525\0"
	.align
_Label_1541:
	.byte	'?'
	.ascii	"_temp_1523\0"
	.align
_Label_1542:
	.byte	'?'
	.ascii	"_temp_1522\0"
	.align
_Label_1543:
	.byte	'?'
	.ascii	"_temp_1521\0"
	.align
_Label_1544:
	.byte	'?'
	.ascii	"_temp_1520\0"
	.align
_Label_1545:
	.byte	'?'
	.ascii	"_temp_1519\0"
	.align
_Label_1546:
	.byte	'?'
	.ascii	"_temp_1518\0"
	.align
_Label_1547:
	.byte	'?'
	.ascii	"_temp_1517\0"
	.align
_Label_1548:
	.byte	'?'
	.ascii	"_temp_1516\0"
	.align
_Label_1549:
	.byte	'?'
	.ascii	"_temp_1515\0"
	.align
_Label_1550:
	.byte	'?'
	.ascii	"_temp_1514\0"
	.align
_Label_1551:
	.byte	'?'
	.ascii	"_temp_1513\0"
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
_Label_3833:
	push	r0
	sub	r1,1,r1
	bne	_Label_3833
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
!   _temp_1552 = ThreadStartUp
	set	ThreadStartUp,r1
	store	r1,[r14+-20]
!   Data Move: *stackTop = _temp_1552  (sizeInBytes=4)
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
!   _temp_1554 = &_P_Kernel_readyList
	set	_P_Kernel_readyList,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=12  value=_temp_1553  sizeInBytes=4
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
	.word	_Label_1555
	.word	12		! total size of parameters
	.word	28		! frame size = 28
	.word	_Label_1556
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1557
	.word	12
	.word	4
	.word	_Label_1558
	.word	16
	.word	4
	.word	_Label_1559
	.word	-12
	.word	4
	.word	_Label_1560
	.word	-16
	.word	4
	.word	_Label_1561
	.word	-20
	.word	4
	.word	_Label_1562
	.word	-24
	.word	4
	.word	_Label_1563
	.word	-28
	.word	4
	.word	0
_Label_1555:
	.ascii	"Thread"
	.ascii	"::"
	.ascii	"Fork\0"
	.align
_Label_1556:
	.ascii	"Pself\0"
	.align
_Label_1557:
	.byte	'P'
	.ascii	"fun\0"
	.align
_Label_1558:
	.byte	'I'
	.ascii	"arg\0"
	.align
_Label_1559:
	.byte	'?'
	.ascii	"_temp_1554\0"
	.align
_Label_1560:
	.byte	'?'
	.ascii	"_temp_1553\0"
	.align
_Label_1561:
	.byte	'?'
	.ascii	"_temp_1552\0"
	.align
_Label_1562:
	.byte	'I'
	.ascii	"oldIntStat\0"
	.align
_Label_1563:
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
_Label_3834:
	push	r0
	sub	r1,1,r1
	bne	_Label_3834
	mov	491,r13		! source line 491
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! IF STATEMENT...
	mov	507,r13		! source line 507
	mov	"\0\0IF",r10
	load	[r14+8],r1
	store	r1,[r14+-32]
!   if _temp_1566 == _P_Kernel_currentThread then goto _Label_1565		(int)
	load	[r14+-32],r1
	set	_P_Kernel_currentThread,r2
	load	[r2],r2
	cmp	r1,r2
	be	_Label_1565
!	jmp	_Label_1564
_Label_1564:
! THEN...
	mov	508,r13		! source line 508
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_1567 = _StringConst_52
	set	_StringConst_52,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=8  value=_temp_1567  sizeInBytes=4
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
_Label_1565:
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
!   _temp_1568 = &_P_Kernel_readyList
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
!   if nextTh == 0 then goto _Label_1570		(int)
	load	[r14+-36],r1
	mov	0,r2
	cmp	r1,r2
	be	_Label_1570
!	jmp	_Label_1569
_Label_1569:
! THEN...
	mov	519,r13		! source line 519
	mov	"\0\0TN",r10
! IF STATEMENT...
	mov	519,r13		! source line 519
	mov	"\0\0IF",r10
!   if status != 4 then goto _Label_1572		(int)
	load	[r14+8],r1
	load	[r1+76],r1
	mov	4,r2
	cmp	r1,r2
	bne	_Label_1572
!	jmp	_Label_1571
_Label_1571:
! THEN...
	mov	520,r13		! source line 520
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_1573 = _StringConst_53
	set	_StringConst_53,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_1573  sizeInBytes=4
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
_Label_1572:
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
!   _temp_1575 = &_P_Kernel_readyList
	set	_P_Kernel_readyList,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=12  value=_temp_1574  sizeInBytes=4
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
_Label_1570:
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
	.word	_Label_1576
	.word	4		! total size of parameters
	.word	44		! frame size = 44
	.word	_Label_1577
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1578
	.word	-12
	.word	4
	.word	_Label_1579
	.word	-16
	.word	4
	.word	_Label_1580
	.word	-20
	.word	4
	.word	_Label_1581
	.word	-24
	.word	4
	.word	_Label_1582
	.word	-28
	.word	4
	.word	_Label_1583
	.word	-32
	.word	4
	.word	_Label_1584
	.word	-36
	.word	4
	.word	_Label_1585
	.word	-40
	.word	4
	.word	_Label_1586
	.word	-44
	.word	4
	.word	0
_Label_1576:
	.ascii	"Thread"
	.ascii	"::"
	.ascii	"Yield\0"
	.align
_Label_1577:
	.ascii	"Pself\0"
	.align
_Label_1578:
	.byte	'?'
	.ascii	"_temp_1575\0"
	.align
_Label_1579:
	.byte	'?'
	.ascii	"_temp_1574\0"
	.align
_Label_1580:
	.byte	'?'
	.ascii	"_temp_1573\0"
	.align
_Label_1581:
	.byte	'?'
	.ascii	"_temp_1568\0"
	.align
_Label_1582:
	.byte	'?'
	.ascii	"_temp_1567\0"
	.align
_Label_1583:
	.byte	'?'
	.ascii	"_temp_1566\0"
	.align
_Label_1584:
	.byte	'P'
	.ascii	"nextTh\0"
	.align
_Label_1585:
	.byte	'I'
	.ascii	"oldIntStat\0"
	.align
_Label_1586:
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
_Label_3835:
	push	r0
	sub	r1,1,r1
	bne	_Label_3835
	mov	531,r13		! source line 531
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! IF STATEMENT...
	mov	543,r13		! source line 543
	mov	"\0\0IF",r10
!   if _P_Kernel_currentInterruptStatus == 2 then goto _Label_1588		(int)
	set	_P_Kernel_currentInterruptStatus,r1
	load	[r1],r1
	mov	2,r2
	cmp	r1,r2
	be	_Label_1588
!	jmp	_Label_1587
_Label_1587:
! THEN...
	mov	544,r13		! source line 544
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_1589 = _StringConst_54
	set	_StringConst_54,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=8  value=_temp_1589  sizeInBytes=4
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
_Label_1588:
! IF STATEMENT...
	mov	547,r13		! source line 547
	mov	"\0\0IF",r10
	load	[r14+8],r1
	store	r1,[r14+-24]
!   if _temp_1592 == _P_Kernel_currentThread then goto _Label_1591		(int)
	load	[r14+-24],r1
	set	_P_Kernel_currentThread,r2
	load	[r2],r2
	cmp	r1,r2
	be	_Label_1591
!	jmp	_Label_1590
_Label_1590:
! THEN...
	mov	548,r13		! source line 548
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_1593 = _StringConst_55
	set	_StringConst_55,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_1593  sizeInBytes=4
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
_Label_1591:
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
!   _temp_1594 = &_P_Kernel_readyList
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
!   if intIsZero (nextTh) then goto _Label_1595
	load	[r14+-32],r1
	cmp	r1,r0
	be	_Label_1595
	jmp	_Label_1596
_Label_1595:
! THEN...
	mov	556,r13		! source line 556
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_1597 = _StringConst_56
	set	_StringConst_56,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_1597  sizeInBytes=4
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
_Label_1596:
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
	.word	_Label_1598
	.word	4		! total size of parameters
	.word	28		! frame size = 28
	.word	_Label_1599
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1600
	.word	-12
	.word	4
	.word	_Label_1601
	.word	-16
	.word	4
	.word	_Label_1602
	.word	-20
	.word	4
	.word	_Label_1603
	.word	-24
	.word	4
	.word	_Label_1604
	.word	-28
	.word	4
	.word	_Label_1605
	.word	-32
	.word	4
	.word	0
_Label_1598:
	.ascii	"Thread"
	.ascii	"::"
	.ascii	"Sleep\0"
	.align
_Label_1599:
	.ascii	"Pself\0"
	.align
_Label_1600:
	.byte	'?'
	.ascii	"_temp_1597\0"
	.align
_Label_1601:
	.byte	'?'
	.ascii	"_temp_1594\0"
	.align
_Label_1602:
	.byte	'?'
	.ascii	"_temp_1593\0"
	.align
_Label_1603:
	.byte	'?'
	.ascii	"_temp_1592\0"
	.align
_Label_1604:
	.byte	'?'
	.ascii	"_temp_1589\0"
	.align
_Label_1605:
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
_Label_3836:
	push	r0
	sub	r1,1,r1
	bne	_Label_3836
	mov	563,r13		! source line 563
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! IF STATEMENT...
	mov	569,r13		! source line 569
	mov	"\0\0IF",r10
!   _temp_1609 = &systemStack
	load	[r14+8],r1
	add	r1,88,r1
	store	r1,[r14+-36]
!   Move address of _temp_1609 [0 ] into _temp_1610
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
!   Data Move: _temp_1608 = *_temp_1610  (sizeInBytes=4)
	load	[r14+-32],r1
	load	[r1],r1
	store	r1,[r14+-40]
!   if _temp_1608 == 606348324 then goto _Label_1607		(int)
	load	[r14+-40],r1
	set	606348324,r2
	cmp	r1,r2
	be	_Label_1607
!	jmp	_Label_1606
_Label_1606:
! THEN...
	mov	570,r13		! source line 570
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_1611 = _StringConst_57
	set	_StringConst_57,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=8  value=_temp_1611  sizeInBytes=4
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
	jmp	_Label_1612
_Label_1607:
! ELSE...
	mov	571,r13		! source line 571
	mov	"\0\0EL",r10
! IF STATEMENT...
	mov	571,r13		! source line 571
	mov	"\0\0IF",r10
!   _temp_1616 = &systemStack
	load	[r14+8],r1
	add	r1,88,r1
	store	r1,[r14+-20]
!   Move address of _temp_1616 [999 ] into _temp_1617
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
!   Data Move: _temp_1615 = *_temp_1617  (sizeInBytes=4)
	load	[r14+-16],r1
	load	[r1],r1
	store	r1,[r14+-24]
!   if _temp_1615 == 606348324 then goto _Label_1614		(int)
	load	[r14+-24],r1
	set	606348324,r2
	cmp	r1,r2
	be	_Label_1614
!	jmp	_Label_1613
_Label_1613:
! THEN...
	mov	572,r13		! source line 572
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_1618 = _StringConst_58
	set	_StringConst_58,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_1618  sizeInBytes=4
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
_Label_1614:
! END IF...
_Label_1612:
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
	.word	_Label_1619
	.word	4		! total size of parameters
	.word	36		! frame size = 36
	.word	_Label_1620
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1621
	.word	-12
	.word	4
	.word	_Label_1622
	.word	-16
	.word	4
	.word	_Label_1623
	.word	-20
	.word	4
	.word	_Label_1624
	.word	-24
	.word	4
	.word	_Label_1625
	.word	-28
	.word	4
	.word	_Label_1626
	.word	-32
	.word	4
	.word	_Label_1627
	.word	-36
	.word	4
	.word	_Label_1628
	.word	-40
	.word	4
	.word	0
_Label_1619:
	.ascii	"Thread"
	.ascii	"::"
	.ascii	"CheckOverflow\0"
	.align
_Label_1620:
	.ascii	"Pself\0"
	.align
_Label_1621:
	.byte	'?'
	.ascii	"_temp_1618\0"
	.align
_Label_1622:
	.byte	'?'
	.ascii	"_temp_1617\0"
	.align
_Label_1623:
	.byte	'?'
	.ascii	"_temp_1616\0"
	.align
_Label_1624:
	.byte	'?'
	.ascii	"_temp_1615\0"
	.align
_Label_1625:
	.byte	'?'
	.ascii	"_temp_1611\0"
	.align
_Label_1626:
	.byte	'?'
	.ascii	"_temp_1610\0"
	.align
_Label_1627:
	.byte	'?'
	.ascii	"_temp_1609\0"
	.align
_Label_1628:
	.byte	'?'
	.ascii	"_temp_1608\0"
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
_Label_3837:
	push	r0
	sub	r1,1,r1
	bne	_Label_3837
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
!   _temp_1629 = _StringConst_59
	set	_StringConst_59,r1
	store	r1,[r14+-188]
!   Prepare Argument: offset=8  value=_temp_1629  sizeInBytes=4
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
!   _temp_1630 = _StringConst_60
	set	_StringConst_60,r1
	store	r1,[r14+-184]
!   Prepare Argument: offset=8  value=_temp_1630  sizeInBytes=4
	load	[r14+-184],r1
	store	r1,[r15+0]
!   Call the function
	mov	587,r13		! source line 587
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
	load	[r14+8],r1
	store	r1,[r14+-180]
!   Prepare Argument: offset=8  value=_temp_1631  sizeInBytes=4
	load	[r14+-180],r1
	store	r1,[r15+0]
!   Call the function
	mov	588,r13		! source line 588
	mov	"\0\0CE",r10
	call	printHex
! CALL STATEMENT...
!   _temp_1632 = _StringConst_61
	set	_StringConst_61,r1
	store	r1,[r14+-176]
!   Prepare Argument: offset=8  value=_temp_1632  sizeInBytes=4
	load	[r14+-176],r1
	store	r1,[r15+0]
!   Call the function
	mov	589,r13		! source line 589
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_1633 = _StringConst_62
	set	_StringConst_62,r1
	store	r1,[r14+-172]
!   Prepare Argument: offset=8  value=_temp_1633  sizeInBytes=4
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
!   _temp_1638 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-168]
!   Calculate and save the FOR-LOOP ending value
!   _temp_1639 = 12		(4 bytes)
	mov	12,r1
	store	r1,[r14+-164]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_1638  (sizeInBytes=4)
	load	[r14+-168],r1
	store	r1,[r14+-192]
_Label_1634:
!   Perform the FOR-LOOP termination test
!   if i > _temp_1639 then goto _Label_1637		
	load	[r14+-192],r1
	load	[r14+-164],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_1637
_Label_1635:
	mov	591,r13		! source line 591
	mov	"\0\0FB",r10
! CALL STATEMENT...
!   _temp_1640 = _StringConst_63
	set	_StringConst_63,r1
	store	r1,[r14+-160]
!   Prepare Argument: offset=8  value=_temp_1640  sizeInBytes=4
	load	[r14+-160],r1
	store	r1,[r15+0]
!   Call the function
	mov	592,r13		! source line 592
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_1641 = i + 2		(int)
	load	[r14+-192],r1
	mov	2,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-156]
!   Prepare Argument: offset=8  value=_temp_1641  sizeInBytes=4
	load	[r14+-156],r1
	store	r1,[r15+0]
!   Call the function
	mov	593,r13		! source line 593
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   _temp_1642 = _StringConst_64
	set	_StringConst_64,r1
	store	r1,[r14+-152]
!   Prepare Argument: offset=8  value=_temp_1642  sizeInBytes=4
	load	[r14+-152],r1
	store	r1,[r15+0]
!   Call the function
	mov	594,r13		! source line 594
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_1644 = &regs
	load	[r14+8],r1
	add	r1,12,r1
	store	r1,[r14+-144]
!   Move address of _temp_1644 [i ] into _temp_1645
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
!   Data Move: _temp_1643 = *_temp_1645  (sizeInBytes=4)
	load	[r14+-140],r1
	load	[r1],r1
	store	r1,[r14+-148]
!   Prepare Argument: offset=8  value=_temp_1643  sizeInBytes=4
	load	[r14+-148],r1
	store	r1,[r15+0]
!   Call the function
	mov	595,r13		! source line 595
	mov	"\0\0CE",r10
	call	printHex
! CALL STATEMENT...
!   _temp_1646 = _StringConst_65
	set	_StringConst_65,r1
	store	r1,[r14+-136]
!   Prepare Argument: offset=8  value=_temp_1646  sizeInBytes=4
	load	[r14+-136],r1
	store	r1,[r15+0]
!   Call the function
	mov	596,r13		! source line 596
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_1648 = &regs
	load	[r14+8],r1
	add	r1,12,r1
	store	r1,[r14+-128]
!   Move address of _temp_1648 [i ] into _temp_1649
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
!   Data Move: _temp_1647 = *_temp_1649  (sizeInBytes=4)
	load	[r14+-124],r1
	load	[r1],r1
	store	r1,[r14+-132]
!   Prepare Argument: offset=8  value=_temp_1647  sizeInBytes=4
	load	[r14+-132],r1
	store	r1,[r15+0]
!   Call the function
	mov	597,r13		! source line 597
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   _temp_1650 = _StringConst_66
	set	_StringConst_66,r1
	store	r1,[r14+-120]
!   Prepare Argument: offset=8  value=_temp_1650  sizeInBytes=4
	load	[r14+-120],r1
	store	r1,[r15+0]
!   Call the function
	mov	598,r13		! source line 598
	mov	"\0\0CE",r10
	call	print
!   Increment the FOR-LOOP index variable and jump back
_Label_1636:
!   i = i + 1
	load	[r14+-192],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-192]
	jmp	_Label_1634
! END FOR
_Label_1637:
! CALL STATEMENT...
!   _temp_1651 = _StringConst_67
	set	_StringConst_67,r1
	store	r1,[r14+-116]
!   _temp_1652 = stackTop		(4 bytes)
	load	[r14+8],r1
	load	[r1+68],r1
	store	r1,[r14+-112]
!   Prepare Argument: offset=8  value=_temp_1651  sizeInBytes=4
	load	[r14+-116],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=_temp_1652  sizeInBytes=4
	load	[r14+-112],r1
	store	r1,[r15+4]
!   Call the function
	mov	600,r13		! source line 600
	mov	"\0\0CA",r10
	call	_P_System_printHexVar
! CALL STATEMENT...
!   _temp_1653 = _StringConst_68
	set	_StringConst_68,r1
	store	r1,[r14+-108]
!   _temp_1655 = &systemStack
	load	[r14+8],r1
	add	r1,88,r1
	store	r1,[r14+-100]
!   Move address of _temp_1655 [0 ] into _temp_1656
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
!   _temp_1654 = _temp_1656		(4 bytes)
	load	[r14+-96],r1
	store	r1,[r14+-104]
!   Prepare Argument: offset=8  value=_temp_1653  sizeInBytes=4
	load	[r14+-108],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=_temp_1654  sizeInBytes=4
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
	be	_Label_1659
	cmp	r1,2
	be	_Label_1660
	cmp	r1,3
	be	_Label_1661
	cmp	r1,4
	be	_Label_1662
	cmp	r1,5
	be	_Label_1663
	jmp	_Label_1657
! CASE 1...
_Label_1659:
! CALL STATEMENT...
!   _temp_1664 = _StringConst_69
	set	_StringConst_69,r1
	store	r1,[r14+-92]
!   Prepare Argument: offset=8  value=_temp_1664  sizeInBytes=4
	load	[r14+-92],r1
	store	r1,[r15+0]
!   Call the function
	mov	604,r13		! source line 604
	mov	"\0\0CE",r10
	call	print
! BREAK STATEMENT...
	mov	605,r13		! source line 605
	mov	"\0\0BR",r10
	jmp	_Label_1658
! CASE 2...
_Label_1660:
! CALL STATEMENT...
!   _temp_1665 = _StringConst_70
	set	_StringConst_70,r1
	store	r1,[r14+-88]
!   Prepare Argument: offset=8  value=_temp_1665  sizeInBytes=4
	load	[r14+-88],r1
	store	r1,[r15+0]
!   Call the function
	mov	607,r13		! source line 607
	mov	"\0\0CE",r10
	call	print
! BREAK STATEMENT...
	mov	608,r13		! source line 608
	mov	"\0\0BR",r10
	jmp	_Label_1658
! CASE 3...
_Label_1661:
! CALL STATEMENT...
!   _temp_1666 = _StringConst_71
	set	_StringConst_71,r1
	store	r1,[r14+-84]
!   Prepare Argument: offset=8  value=_temp_1666  sizeInBytes=4
	load	[r14+-84],r1
	store	r1,[r15+0]
!   Call the function
	mov	610,r13		! source line 610
	mov	"\0\0CE",r10
	call	print
! BREAK STATEMENT...
	mov	611,r13		! source line 611
	mov	"\0\0BR",r10
	jmp	_Label_1658
! CASE 4...
_Label_1662:
! CALL STATEMENT...
!   _temp_1667 = _StringConst_72
	set	_StringConst_72,r1
	store	r1,[r14+-80]
!   Prepare Argument: offset=8  value=_temp_1667  sizeInBytes=4
	load	[r14+-80],r1
	store	r1,[r15+0]
!   Call the function
	mov	613,r13		! source line 613
	mov	"\0\0CE",r10
	call	print
! BREAK STATEMENT...
	mov	614,r13		! source line 614
	mov	"\0\0BR",r10
	jmp	_Label_1658
! CASE 5...
_Label_1663:
! CALL STATEMENT...
!   _temp_1668 = _StringConst_73
	set	_StringConst_73,r1
	store	r1,[r14+-76]
!   Prepare Argument: offset=8  value=_temp_1668  sizeInBytes=4
	load	[r14+-76],r1
	store	r1,[r15+0]
!   Call the function
	mov	616,r13		! source line 616
	mov	"\0\0CE",r10
	call	print
! BREAK STATEMENT...
	mov	617,r13		! source line 617
	mov	"\0\0BR",r10
	jmp	_Label_1658
! DEFAULT CASE...
_Label_1657:
! CALL STATEMENT...
!   _temp_1669 = _StringConst_74
	set	_StringConst_74,r1
	store	r1,[r14+-72]
!   Prepare Argument: offset=8  value=_temp_1669  sizeInBytes=4
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
_Label_1658:
! CALL STATEMENT...
!   _temp_1670 = _StringConst_75
	set	_StringConst_75,r1
	store	r1,[r14+-68]
!   Prepare Argument: offset=8  value=_temp_1670  sizeInBytes=4
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
!   _temp_1671 = _StringConst_76
	set	_StringConst_76,r1
	store	r1,[r14+-64]
!   Prepare Argument: offset=8  value=_temp_1671  sizeInBytes=4
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
!   _temp_1676 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-60]
!   Calculate and save the FOR-LOOP ending value
!   _temp_1677 = 14		(4 bytes)
	mov	14,r1
	store	r1,[r14+-56]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_1676  (sizeInBytes=4)
	load	[r14+-60],r1
	store	r1,[r14+-192]
_Label_1672:
!   Perform the FOR-LOOP termination test
!   if i > _temp_1677 then goto _Label_1675		
	load	[r14+-192],r1
	load	[r14+-56],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_1675
_Label_1673:
	mov	625,r13		! source line 625
	mov	"\0\0FB",r10
! CALL STATEMENT...
!   _temp_1678 = _StringConst_77
	set	_StringConst_77,r1
	store	r1,[r14+-52]
!   Prepare Argument: offset=8  value=_temp_1678  sizeInBytes=4
	load	[r14+-52],r1
	store	r1,[r15+0]
!   Call the function
	mov	626,r13		! source line 626
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_1679 = i + 1		(int)
	load	[r14+-192],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-48]
!   Prepare Argument: offset=8  value=_temp_1679  sizeInBytes=4
	load	[r14+-48],r1
	store	r1,[r15+0]
!   Call the function
	mov	627,r13		! source line 627
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   _temp_1680 = _StringConst_78
	set	_StringConst_78,r1
	store	r1,[r14+-44]
!   Prepare Argument: offset=8  value=_temp_1680  sizeInBytes=4
	load	[r14+-44],r1
	store	r1,[r15+0]
!   Call the function
	mov	628,r13		! source line 628
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_1682 = &userRegs
	load	[r14+8],r1
	add	r1,4096,r1
	store	r1,[r14+-36]
!   Move address of _temp_1682 [i ] into _temp_1683
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
!   Data Move: _temp_1681 = *_temp_1683  (sizeInBytes=4)
	load	[r14+-32],r1
	load	[r1],r1
	store	r1,[r14+-40]
!   Prepare Argument: offset=8  value=_temp_1681  sizeInBytes=4
	load	[r14+-40],r1
	store	r1,[r15+0]
!   Call the function
	mov	629,r13		! source line 629
	mov	"\0\0CE",r10
	call	printHex
! CALL STATEMENT...
!   _temp_1684 = _StringConst_79
	set	_StringConst_79,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=8  value=_temp_1684  sizeInBytes=4
	load	[r14+-28],r1
	store	r1,[r15+0]
!   Call the function
	mov	630,r13		! source line 630
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_1686 = &userRegs
	load	[r14+8],r1
	add	r1,4096,r1
	store	r1,[r14+-20]
!   Move address of _temp_1686 [i ] into _temp_1687
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
!   Data Move: _temp_1685 = *_temp_1687  (sizeInBytes=4)
	load	[r14+-16],r1
	load	[r1],r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=8  value=_temp_1685  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+0]
!   Call the function
	mov	631,r13		! source line 631
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   _temp_1688 = _StringConst_80
	set	_StringConst_80,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_1688  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	632,r13		! source line 632
	mov	"\0\0CE",r10
	call	print
!   Increment the FOR-LOOP index variable and jump back
_Label_1674:
!   i = i + 1
	load	[r14+-192],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-192]
	jmp	_Label_1672
! END FOR
_Label_1675:
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
	.word	_Label_1689
	.word	4		! total size of parameters
	.word	196		! frame size = 196
	.word	_Label_1690
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1691
	.word	-12
	.word	4
	.word	_Label_1692
	.word	-16
	.word	4
	.word	_Label_1693
	.word	-20
	.word	4
	.word	_Label_1694
	.word	-24
	.word	4
	.word	_Label_1695
	.word	-28
	.word	4
	.word	_Label_1696
	.word	-32
	.word	4
	.word	_Label_1697
	.word	-36
	.word	4
	.word	_Label_1698
	.word	-40
	.word	4
	.word	_Label_1699
	.word	-44
	.word	4
	.word	_Label_1700
	.word	-48
	.word	4
	.word	_Label_1701
	.word	-52
	.word	4
	.word	_Label_1702
	.word	-56
	.word	4
	.word	_Label_1703
	.word	-60
	.word	4
	.word	_Label_1704
	.word	-64
	.word	4
	.word	_Label_1705
	.word	-68
	.word	4
	.word	_Label_1706
	.word	-72
	.word	4
	.word	_Label_1707
	.word	-76
	.word	4
	.word	_Label_1708
	.word	-80
	.word	4
	.word	_Label_1709
	.word	-84
	.word	4
	.word	_Label_1710
	.word	-88
	.word	4
	.word	_Label_1711
	.word	-92
	.word	4
	.word	_Label_1712
	.word	-96
	.word	4
	.word	_Label_1713
	.word	-100
	.word	4
	.word	_Label_1714
	.word	-104
	.word	4
	.word	_Label_1715
	.word	-108
	.word	4
	.word	_Label_1716
	.word	-112
	.word	4
	.word	_Label_1717
	.word	-116
	.word	4
	.word	_Label_1718
	.word	-120
	.word	4
	.word	_Label_1719
	.word	-124
	.word	4
	.word	_Label_1720
	.word	-128
	.word	4
	.word	_Label_1721
	.word	-132
	.word	4
	.word	_Label_1722
	.word	-136
	.word	4
	.word	_Label_1723
	.word	-140
	.word	4
	.word	_Label_1724
	.word	-144
	.word	4
	.word	_Label_1725
	.word	-148
	.word	4
	.word	_Label_1726
	.word	-152
	.word	4
	.word	_Label_1727
	.word	-156
	.word	4
	.word	_Label_1728
	.word	-160
	.word	4
	.word	_Label_1729
	.word	-164
	.word	4
	.word	_Label_1730
	.word	-168
	.word	4
	.word	_Label_1731
	.word	-172
	.word	4
	.word	_Label_1732
	.word	-176
	.word	4
	.word	_Label_1733
	.word	-180
	.word	4
	.word	_Label_1734
	.word	-184
	.word	4
	.word	_Label_1735
	.word	-188
	.word	4
	.word	_Label_1736
	.word	-192
	.word	4
	.word	_Label_1737
	.word	-196
	.word	4
	.word	0
_Label_1689:
	.ascii	"Thread"
	.ascii	"::"
	.ascii	"Print\0"
	.align
_Label_1690:
	.ascii	"Pself\0"
	.align
_Label_1691:
	.byte	'?'
	.ascii	"_temp_1688\0"
	.align
_Label_1692:
	.byte	'?'
	.ascii	"_temp_1687\0"
	.align
_Label_1693:
	.byte	'?'
	.ascii	"_temp_1686\0"
	.align
_Label_1694:
	.byte	'?'
	.ascii	"_temp_1685\0"
	.align
_Label_1695:
	.byte	'?'
	.ascii	"_temp_1684\0"
	.align
_Label_1696:
	.byte	'?'
	.ascii	"_temp_1683\0"
	.align
_Label_1697:
	.byte	'?'
	.ascii	"_temp_1682\0"
	.align
_Label_1698:
	.byte	'?'
	.ascii	"_temp_1681\0"
	.align
_Label_1699:
	.byte	'?'
	.ascii	"_temp_1680\0"
	.align
_Label_1700:
	.byte	'?'
	.ascii	"_temp_1679\0"
	.align
_Label_1701:
	.byte	'?'
	.ascii	"_temp_1678\0"
	.align
_Label_1702:
	.byte	'?'
	.ascii	"_temp_1677\0"
	.align
_Label_1703:
	.byte	'?'
	.ascii	"_temp_1676\0"
	.align
_Label_1704:
	.byte	'?'
	.ascii	"_temp_1671\0"
	.align
_Label_1705:
	.byte	'?'
	.ascii	"_temp_1670\0"
	.align
_Label_1706:
	.byte	'?'
	.ascii	"_temp_1669\0"
	.align
_Label_1707:
	.byte	'?'
	.ascii	"_temp_1668\0"
	.align
_Label_1708:
	.byte	'?'
	.ascii	"_temp_1667\0"
	.align
_Label_1709:
	.byte	'?'
	.ascii	"_temp_1666\0"
	.align
_Label_1710:
	.byte	'?'
	.ascii	"_temp_1665\0"
	.align
_Label_1711:
	.byte	'?'
	.ascii	"_temp_1664\0"
	.align
_Label_1712:
	.byte	'?'
	.ascii	"_temp_1656\0"
	.align
_Label_1713:
	.byte	'?'
	.ascii	"_temp_1655\0"
	.align
_Label_1714:
	.byte	'?'
	.ascii	"_temp_1654\0"
	.align
_Label_1715:
	.byte	'?'
	.ascii	"_temp_1653\0"
	.align
_Label_1716:
	.byte	'?'
	.ascii	"_temp_1652\0"
	.align
_Label_1717:
	.byte	'?'
	.ascii	"_temp_1651\0"
	.align
_Label_1718:
	.byte	'?'
	.ascii	"_temp_1650\0"
	.align
_Label_1719:
	.byte	'?'
	.ascii	"_temp_1649\0"
	.align
_Label_1720:
	.byte	'?'
	.ascii	"_temp_1648\0"
	.align
_Label_1721:
	.byte	'?'
	.ascii	"_temp_1647\0"
	.align
_Label_1722:
	.byte	'?'
	.ascii	"_temp_1646\0"
	.align
_Label_1723:
	.byte	'?'
	.ascii	"_temp_1645\0"
	.align
_Label_1724:
	.byte	'?'
	.ascii	"_temp_1644\0"
	.align
_Label_1725:
	.byte	'?'
	.ascii	"_temp_1643\0"
	.align
_Label_1726:
	.byte	'?'
	.ascii	"_temp_1642\0"
	.align
_Label_1727:
	.byte	'?'
	.ascii	"_temp_1641\0"
	.align
_Label_1728:
	.byte	'?'
	.ascii	"_temp_1640\0"
	.align
_Label_1729:
	.byte	'?'
	.ascii	"_temp_1639\0"
	.align
_Label_1730:
	.byte	'?'
	.ascii	"_temp_1638\0"
	.align
_Label_1731:
	.byte	'?'
	.ascii	"_temp_1633\0"
	.align
_Label_1732:
	.byte	'?'
	.ascii	"_temp_1632\0"
	.align
_Label_1733:
	.byte	'?'
	.ascii	"_temp_1631\0"
	.align
_Label_1734:
	.byte	'?'
	.ascii	"_temp_1630\0"
	.align
_Label_1735:
	.byte	'?'
	.ascii	"_temp_1629\0"
	.align
_Label_1736:
	.byte	'I'
	.ascii	"i\0"
	.align
_Label_1737:
	.byte	'I'
	.ascii	"oldStatus\0"
	.align
! 
! ===============  CLASS ThreadManager  ===============
! 
! Dispatch Table:
! 
_P_Kernel_ThreadManager:
	.word	_Label_1738
	jmp	_Method_P_Kernel_ThreadManager_1	! 4:	Init
	jmp	_Method_P_Kernel_ThreadManager_2	! 8:	Print
	jmp	_Method_P_Kernel_ThreadManager_3	! 12:	GetANewThread
	jmp	_Method_P_Kernel_ThreadManager_4	! 16:	FreeThread
	.word	0
! 
! Class descriptor:
! 
_Label_1738:
	.word	1129070931		! Magic number 0x434c4153 == 'CLAS'
	.word	_Label_1739
	.word	_sourceFileName
	.word	196		! line number
	.word	41696		! size of instances, in bytes
	.word	_P_Kernel_ThreadManager
	.word	_P_System_Object
	.word	0
_Label_1739:
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
_Label_3838:
	push	r0
	sub	r1,1,r1
	bne	_Label_3838
	mov	689,r13		! source line 689
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   _temp_1740 = _StringConst_81
	set	_StringConst_81,r1
	set	-45880,r2
	store	r1,[r14+r2]
!   Prepare Argument: offset=8  value=_temp_1740  sizeInBytes=4
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
!   _temp_1741 = &threadTable
	load	[r14+8],r1
	add	r1,4,r1
	set	-45876,r2
	store	r1,[r14+r2]
!   NEW ARRAY Constructor...
!   _temp_1743 = &_temp_1742
	set	-45872,r1
	add	r14,r1,r1
	store	r1,[r14+-4228]
!   _temp_1743 = _temp_1743 + 4
	load	[r14+-4228],r1
	add	r1,4,r1
	store	r1,[r14+-4228]
!   Next value...
!   NEW CLASS Constructor...
!   ZeroMemory: _temp_1745 = zeros  (sizeInBytes=4164)
	add	r14,-4220,r4
	mov	1041,r3
_Label_3839:
	store	r0,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_3839
!   _temp_1745 = _P_Kernel_Thread
	set	_P_Kernel_Thread,r1
	store	r1,[r14+-4220]
	mov	10,r1
	store	r1,[r14+-4224]
_Label_1747:
!   Data Move: *_temp_1743 = _temp_1745  (sizeInBytes=4164)
	add	r14,-4220,r5
	load	[r14+-4228],r4
	mov	1041,r3
_Label_3840:
	load	[r5],r1
	add	r5,4,r5
	store	r1,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_3840
!   _temp_1743 = _temp_1743 + 4164
	load	[r14+-4228],r1
	add	r1,4164,r1
	store	r1,[r14+-4228]
!   _temp_1744 = _temp_1744 + -1
	load	[r14+-4224],r1
	add	r1,-1,r1
	store	r1,[r14+-4224]
!   if intNotZero (_temp_1744) then goto _Label_1747
	load	[r14+-4224],r1
	cmp	r1,r0
	bne	_Label_1747
!   Initialize the array size...
	mov	10,r1
	set	-45872,r2
	store	r1,[r14+r2]
!   _temp_1748 = &_temp_1742
	set	-45872,r1
	add	r14,r1,r1
	store	r1,[r14+-52]
!   make sure array has size 10
	set	-45876,r1
	load	[r14+r1],r1
	load	[r1],r1
	set	10, r2
	cmp	r1,0
	be	_Label_3841
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bne	_runtimeErrorWrongArraySize
_Label_3841:
!   make sure array has size 10
	load	[r14+-52],r1
	load	[r1],r1
	set	10, r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bne	_runtimeErrorWrongArraySize
!   Data Move: *_temp_1741 = *_temp_1748  (sizeInBytes=41644)
	load	[r14+-52],r5
	set	-45876,r4
	load	[r14+r4],r4
	mov	10411,r3
_Label_3842:
	load	[r5],r1
	add	r5,4,r5
	store	r1,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_3842
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
_Label_1750:
!   if i >= 10 then goto _Label_1752		(int)
	set	-45884,r1
	load	[r14+r1],r1
	mov	10,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_1752
!	jmp	_Label_1751
_Label_1751:
	mov	700,r13		! source line 700
	mov	"\0\0WB",r10
! ASSIGNMENT STATEMENT...
	mov	701,r13		! source line 701
	mov	"\0\0AS",r10
!   _temp_1753 = &threadTable
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-44]
!   Move address of _temp_1753 [i ] into _temp_1754
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
!   thread = _temp_1754		(4 bytes)
	load	[r14+-40],r1
	set	-45888,r2
	store	r1,[r14+r2]
! SEND STATEMENT...
	mov	702,r13		! source line 702
	mov	"\0\0SE",r10
!   _temp_1755 = _StringConst_82
	set	_StringConst_82,r1
	store	r1,[r14+-36]
!   if intIsZero (thread) then goto _runtimeErrorNullPointer
	set	-45888,r1
	load	[r14+r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Prepare Argument: offset=12  value=_temp_1755  sizeInBytes=4
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
!   _temp_1756 = thread + 76
	set	-45888,r1
	load	[r14+r1],r1
	add	r1,76,r1
	store	r1,[r14+-32]
!   Data Move: *_temp_1756 = 5  (sizeInBytes=4)
	mov	5,r1
	load	[r14+-32],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	704,r13		! source line 704
	mov	"\0\0SE",r10
!   _temp_1757 = &freeList
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
	jmp	_Label_1750
_Label_1752:
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
!   _temp_1759 = &threadManagerLock
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
!   _temp_1761 = &aThreadBecameFree
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
	.word	_Label_1762
	.word	4		! total size of parameters
	.word	45888		! frame size = 45888
	.word	_Label_1763
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1764
	.word	-12
	.word	4
	.word	_Label_1765
	.word	-16
	.word	4
	.word	_Label_1766
	.word	-20
	.word	4
	.word	_Label_1767
	.word	-24
	.word	4
	.word	_Label_1768
	.word	-28
	.word	4
	.word	_Label_1769
	.word	-32
	.word	4
	.word	_Label_1770
	.word	-36
	.word	4
	.word	_Label_1771
	.word	-40
	.word	4
	.word	_Label_1772
	.word	-44
	.word	4
	.word	_Label_1773
	.word	-48
	.word	4
	.word	_Label_1774
	.word	-52
	.word	4
	.word	_Label_1775
	.word	-56
	.word	4
	.word	_Label_1776
	.word	-4220
	.word	4164
	.word	_Label_1777
	.word	-4224
	.word	4
	.word	_Label_1778
	.word	-4228
	.word	4
	.word	_Label_1779
	.word	-45872
	.word	41644
	.word	_Label_1780
	.word	-45876
	.word	4
	.word	_Label_1781
	.word	-45880
	.word	4
	.word	_Label_1782
	.word	-45884
	.word	4
	.word	_Label_1783
	.word	-45888
	.word	4
	.word	0
_Label_1762:
	.ascii	"ThreadManager"
	.ascii	"::"
	.ascii	"Init\0"
	.align
_Label_1763:
	.ascii	"Pself\0"
	.align
_Label_1764:
	.byte	'?'
	.ascii	"_temp_1761\0"
	.align
_Label_1765:
	.byte	'?'
	.ascii	"_temp_1760\0"
	.align
_Label_1766:
	.byte	'?'
	.ascii	"_temp_1759\0"
	.align
_Label_1767:
	.byte	'?'
	.ascii	"_temp_1758\0"
	.align
_Label_1768:
	.byte	'?'
	.ascii	"_temp_1757\0"
	.align
_Label_1769:
	.byte	'?'
	.ascii	"_temp_1756\0"
	.align
_Label_1770:
	.byte	'?'
	.ascii	"_temp_1755\0"
	.align
_Label_1771:
	.byte	'?'
	.ascii	"_temp_1754\0"
	.align
_Label_1772:
	.byte	'?'
	.ascii	"_temp_1753\0"
	.align
_Label_1773:
	.byte	'?'
	.ascii	"_temp_1749\0"
	.align
_Label_1774:
	.byte	'?'
	.ascii	"_temp_1748\0"
	.align
_Label_1775:
	.byte	'?'
	.ascii	"_temp_1746\0"
	.align
_Label_1776:
	.byte	'?'
	.ascii	"_temp_1745\0"
	.align
_Label_1777:
	.byte	'?'
	.ascii	"_temp_1744\0"
	.align
_Label_1778:
	.byte	'?'
	.ascii	"_temp_1743\0"
	.align
_Label_1779:
	.byte	'?'
	.ascii	"_temp_1742\0"
	.align
_Label_1780:
	.byte	'?'
	.ascii	"_temp_1741\0"
	.align
_Label_1781:
	.byte	'?'
	.ascii	"_temp_1740\0"
	.align
_Label_1782:
	.byte	'I'
	.ascii	"i\0"
	.align
_Label_1783:
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
_Label_3843:
	push	r0
	sub	r1,1,r1
	bne	_Label_3843
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
!   _temp_1784 = _StringConst_83
	set	_StringConst_83,r1
	store	r1,[r14+-52]
!   Prepare Argument: offset=8  value=_temp_1784  sizeInBytes=4
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
!   _temp_1789 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-48]
!   Calculate and save the FOR-LOOP ending value
!   _temp_1790 = 9		(4 bytes)
	mov	9,r1
	store	r1,[r14+-44]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_1789  (sizeInBytes=4)
	load	[r14+-48],r1
	store	r1,[r14+-56]
_Label_1785:
!   Perform the FOR-LOOP termination test
!   if i > _temp_1790 then goto _Label_1788		
	load	[r14+-56],r1
	load	[r14+-44],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_1788
_Label_1786:
	mov	723,r13		! source line 723
	mov	"\0\0FB",r10
! CALL STATEMENT...
!   _temp_1791 = _StringConst_84
	set	_StringConst_84,r1
	store	r1,[r14+-40]
!   Prepare Argument: offset=8  value=_temp_1791  sizeInBytes=4
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
!   _temp_1792 = _StringConst_85
	set	_StringConst_85,r1
	store	r1,[r14+-36]
!   Prepare Argument: offset=8  value=_temp_1792  sizeInBytes=4
	load	[r14+-36],r1
	store	r1,[r15+0]
!   Call the function
	mov	726,r13		! source line 726
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_1794 = &threadTable
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-28]
!   Move address of _temp_1794 [i ] into _temp_1795
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
!   _temp_1793 = _temp_1795		(4 bytes)
	load	[r14+-24],r1
	store	r1,[r14+-32]
!   Prepare Argument: offset=8  value=_temp_1793  sizeInBytes=4
	load	[r14+-32],r1
	store	r1,[r15+0]
!   Call the function
	mov	727,r13		! source line 727
	mov	"\0\0CA",r10
	call	_function_195_ThreadPrintShort
!   Increment the FOR-LOOP index variable and jump back
_Label_1787:
!   i = i + 1
	load	[r14+-56],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-56]
	jmp	_Label_1785
! END FOR
_Label_1788:
! CALL STATEMENT...
!   _temp_1796 = _StringConst_86
	set	_StringConst_86,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_1796  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   Call the function
	mov	729,r13		! source line 729
	mov	"\0\0CE",r10
	call	print
! SEND STATEMENT...
	mov	730,r13		! source line 730
	mov	"\0\0SE",r10
!   _temp_1797 = _function_194_PrintObjectAddr
	set	_function_194_PrintObjectAddr,r1
	store	r1,[r14+-16]
!   _temp_1798 = &freeList
	set	41648,r11
	load	[r14+8],r1
	add	r1,r11,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=12  value=_temp_1797  sizeInBytes=4
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
	.word	_Label_1799
	.word	4		! total size of parameters
	.word	60		! frame size = 60
	.word	_Label_1800
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1801
	.word	-12
	.word	4
	.word	_Label_1802
	.word	-16
	.word	4
	.word	_Label_1803
	.word	-20
	.word	4
	.word	_Label_1804
	.word	-24
	.word	4
	.word	_Label_1805
	.word	-28
	.word	4
	.word	_Label_1806
	.word	-32
	.word	4
	.word	_Label_1807
	.word	-36
	.word	4
	.word	_Label_1808
	.word	-40
	.word	4
	.word	_Label_1809
	.word	-44
	.word	4
	.word	_Label_1810
	.word	-48
	.word	4
	.word	_Label_1811
	.word	-52
	.word	4
	.word	_Label_1812
	.word	-56
	.word	4
	.word	_Label_1813
	.word	-60
	.word	4
	.word	0
_Label_1799:
	.ascii	"ThreadManager"
	.ascii	"::"
	.ascii	"Print\0"
	.align
_Label_1800:
	.ascii	"Pself\0"
	.align
_Label_1801:
	.byte	'?'
	.ascii	"_temp_1798\0"
	.align
_Label_1802:
	.byte	'?'
	.ascii	"_temp_1797\0"
	.align
_Label_1803:
	.byte	'?'
	.ascii	"_temp_1796\0"
	.align
_Label_1804:
	.byte	'?'
	.ascii	"_temp_1795\0"
	.align
_Label_1805:
	.byte	'?'
	.ascii	"_temp_1794\0"
	.align
_Label_1806:
	.byte	'?'
	.ascii	"_temp_1793\0"
	.align
_Label_1807:
	.byte	'?'
	.ascii	"_temp_1792\0"
	.align
_Label_1808:
	.byte	'?'
	.ascii	"_temp_1791\0"
	.align
_Label_1809:
	.byte	'?'
	.ascii	"_temp_1790\0"
	.align
_Label_1810:
	.byte	'?'
	.ascii	"_temp_1789\0"
	.align
_Label_1811:
	.byte	'?'
	.ascii	"_temp_1784\0"
	.align
_Label_1812:
	.byte	'I'
	.ascii	"i\0"
	.align
_Label_1813:
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
_Label_3844:
	push	r0
	sub	r1,1,r1
	bne	_Label_3844
	mov	737,r13		! source line 737
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! SEND STATEMENT...
	mov	745,r13		! source line 745
	mov	"\0\0SE",r10
!   _temp_1814 = &threadManagerLock
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
!   _temp_1815 = &freeList
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
_Label_1816:
!   if intIsZero (thread) then goto _Label_1817
	load	[r14+-36],r1
	cmp	r1,r0
	be	_Label_1817
	jmp	_Label_1818
_Label_1817:
	mov	747,r13		! source line 747
	mov	"\0\0WB",r10
! SEND STATEMENT...
	mov	748,r13		! source line 748
	mov	"\0\0SE",r10
!   _temp_1819 = &threadManagerLock
	set	41660,r11
	load	[r14+8],r1
	add	r1,r11,r1
	store	r1,[r14+-24]
!   _temp_1820 = &aThreadBecameFree
	set	41680,r11
	load	[r14+8],r1
	add	r1,r11,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=12  value=_temp_1819  sizeInBytes=4
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
!   _temp_1821 = &freeList
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
	jmp	_Label_1816
_Label_1818:
! SEND STATEMENT...
	mov	751,r13		! source line 751
	mov	"\0\0SE",r10
!   _temp_1822 = &threadManagerLock
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
	.word	_Label_1823
	.word	4		! total size of parameters
	.word	36		! frame size = 36
	.word	_Label_1824
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1825
	.word	-12
	.word	4
	.word	_Label_1826
	.word	-16
	.word	4
	.word	_Label_1827
	.word	-20
	.word	4
	.word	_Label_1828
	.word	-24
	.word	4
	.word	_Label_1829
	.word	-28
	.word	4
	.word	_Label_1830
	.word	-32
	.word	4
	.word	_Label_1831
	.word	-36
	.word	4
	.word	0
_Label_1823:
	.ascii	"ThreadManager"
	.ascii	"::"
	.ascii	"GetANewThread\0"
	.align
_Label_1824:
	.ascii	"Pself\0"
	.align
_Label_1825:
	.byte	'?'
	.ascii	"_temp_1822\0"
	.align
_Label_1826:
	.byte	'?'
	.ascii	"_temp_1821\0"
	.align
_Label_1827:
	.byte	'?'
	.ascii	"_temp_1820\0"
	.align
_Label_1828:
	.byte	'?'
	.ascii	"_temp_1819\0"
	.align
_Label_1829:
	.byte	'?'
	.ascii	"_temp_1815\0"
	.align
_Label_1830:
	.byte	'?'
	.ascii	"_temp_1814\0"
	.align
_Label_1831:
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
_Label_3845:
	push	r0
	sub	r1,1,r1
	bne	_Label_3845
	mov	757,r13		! source line 757
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! SEND STATEMENT...
	mov	762,r13		! source line 762
	mov	"\0\0SE",r10
!   _temp_1832 = &threadManagerLock
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
!   _temp_1833 = &freeList
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
!   _temp_1834 = &threadManagerLock
	set	41660,r11
	load	[r14+8],r1
	add	r1,r11,r1
	store	r1,[r14+-20]
!   _temp_1835 = &aThreadBecameFree
	set	41680,r11
	load	[r14+8],r1
	add	r1,r11,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=12  value=_temp_1834  sizeInBytes=4
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
!   _temp_1836 = &threadManagerLock
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
	.word	_Label_1837
	.word	8		! total size of parameters
	.word	28		! frame size = 28
	.word	_Label_1838
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1839
	.word	12
	.word	4
	.word	_Label_1840
	.word	-12
	.word	4
	.word	_Label_1841
	.word	-16
	.word	4
	.word	_Label_1842
	.word	-20
	.word	4
	.word	_Label_1843
	.word	-24
	.word	4
	.word	_Label_1844
	.word	-28
	.word	4
	.word	0
_Label_1837:
	.ascii	"ThreadManager"
	.ascii	"::"
	.ascii	"FreeThread\0"
	.align
_Label_1838:
	.ascii	"Pself\0"
	.align
_Label_1839:
	.byte	'P'
	.ascii	"th\0"
	.align
_Label_1840:
	.byte	'?'
	.ascii	"_temp_1836\0"
	.align
_Label_1841:
	.byte	'?'
	.ascii	"_temp_1835\0"
	.align
_Label_1842:
	.byte	'?'
	.ascii	"_temp_1834\0"
	.align
_Label_1843:
	.byte	'?'
	.ascii	"_temp_1833\0"
	.align
_Label_1844:
	.byte	'?'
	.ascii	"_temp_1832\0"
	.align
! 
! ===============  CLASS ProcessControlBlock  ===============
! 
! Dispatch Table:
! 
_P_Kernel_ProcessControlBlock:
	.word	_Label_1845
	jmp	_Method_P_Kernel_ProcessControlBlock_1	! 4:	Init
	jmp	_Method_P_Kernel_ProcessControlBlock_2	! 8:	Print
	jmp	_Method_P_Kernel_ProcessControlBlock_3	! 12:	PrintShort
	.word	0
! 
! Class descriptor:
! 
_Label_1845:
	.word	1129070931		! Magic number 0x434c4153 == 'CLAS'
	.word	_Label_1846
	.word	_sourceFileName
	.word	217		! line number
	.word	168		! size of instances, in bytes
	.word	_P_Kernel_ProcessControlBlock
	.word	_P_List_Listable
	.word	_P_System_Object
	.word	0
_Label_1846:
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
_Label_3846:
	push	r0
	sub	r1,1,r1
	bne	_Label_3846
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
_Label_3847:
	store	r0,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_3847
!   addrSpace = _P_Kernel_AddrSpace
	set	_P_Kernel_AddrSpace,r1
	load	[r14+8],r2
	store	r1,[r2+32]
! SEND STATEMENT...
	mov	782,r13		! source line 782
	mov	"\0\0SE",r10
!   _temp_1848 = &addrSpace
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
!   _temp_1849 = &fileDescriptor
	load	[r14+8],r1
	add	r1,124,r1
	store	r1,[r14+-68]
!   NEW ARRAY Constructor...
!   _temp_1851 = &_temp_1850
	add	r14,-64,r1
	store	r1,[r14+-20]
!   _temp_1851 = _temp_1851 + 4
	load	[r14+-20],r1
	add	r1,4,r1
	store	r1,[r14+-20]
!   Next value...
	mov	10,r1
	store	r1,[r14+-16]
_Label_1853:
!   Data Move: *_temp_1851 = 0  (sizeInBytes=4)
	mov	0,r1
	load	[r14+-20],r2
	store	r1,[r2]
!   _temp_1851 = _temp_1851 + 4
	load	[r14+-20],r1
	add	r1,4,r1
	store	r1,[r14+-20]
!   _temp_1852 = _temp_1852 + -1
	load	[r14+-16],r1
	add	r1,-1,r1
	store	r1,[r14+-16]
!   if intNotZero (_temp_1852) then goto _Label_1853
	load	[r14+-16],r1
	cmp	r1,r0
	bne	_Label_1853
!   Initialize the array size...
	mov	10,r1
	store	r1,[r14+-64]
!   _temp_1854 = &_temp_1850
	add	r14,-64,r1
	store	r1,[r14+-12]
!   make sure array has size 10
	load	[r14+-68],r1
	load	[r1],r1
	set	10, r2
	cmp	r1,0
	be	_Label_3848
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bne	_runtimeErrorWrongArraySize
_Label_3848:
!   make sure array has size 10
	load	[r14+-12],r1
	load	[r1],r1
	set	10, r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bne	_runtimeErrorWrongArraySize
!   Data Move: *_temp_1849 = *_temp_1854  (sizeInBytes=44)
	load	[r14+-12],r5
	load	[r14+-68],r4
	mov	11,r3
_Label_3849:
	load	[r5],r1
	add	r5,4,r5
	store	r1,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_3849
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
	.word	_Label_1855
	.word	4		! total size of parameters
	.word	72		! frame size = 72
	.word	_Label_1856
	.word	4		! size of self
	.word	8		! offset of self
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
	.word	-64
	.word	44
	.word	_Label_1861
	.word	-68
	.word	4
	.word	_Label_1862
	.word	-72
	.word	4
	.word	_Label_1863
	.word	-76
	.word	4
	.word	0
_Label_1855:
	.ascii	"ProcessControlBlock"
	.ascii	"::"
	.ascii	"Init\0"
	.align
_Label_1856:
	.ascii	"Pself\0"
	.align
_Label_1857:
	.byte	'?'
	.ascii	"_temp_1854\0"
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
_Label_1862:
	.byte	'?'
	.ascii	"_temp_1848\0"
	.align
_Label_1863:
	.byte	'?'
	.ascii	"_temp_1847\0"
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
_Label_3850:
	push	r0
	sub	r1,1,r1
	bne	_Label_3850
	mov	792,r13		! source line 792
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! SEND STATEMENT...
	mov	797,r13		! source line 797
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-20]
!   if intIsZero (_temp_1864) then goto _runtimeErrorNullPointer
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
!   _temp_1865 = &addrSpace
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
!   _temp_1866 = _StringConst_87
	set	_StringConst_87,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_1866  sizeInBytes=4
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
	call	_function_195_ThreadPrintShort
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
	.word	_Label_1867
	.word	4		! total size of parameters
	.word	16		! frame size = 16
	.word	_Label_1868
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1869
	.word	-12
	.word	4
	.word	_Label_1870
	.word	-16
	.word	4
	.word	_Label_1871
	.word	-20
	.word	4
	.word	0
_Label_1867:
	.ascii	"ProcessControlBlock"
	.ascii	"::"
	.ascii	"Print\0"
	.align
_Label_1868:
	.ascii	"Pself\0"
	.align
_Label_1869:
	.byte	'?'
	.ascii	"_temp_1866\0"
	.align
_Label_1870:
	.byte	'?'
	.ascii	"_temp_1865\0"
	.align
_Label_1871:
	.byte	'?'
	.ascii	"_temp_1864\0"
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
_Label_3851:
	push	r0
	sub	r1,1,r1
	bne	_Label_3851
	mov	815,r13		! source line 815
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   _temp_1872 = _StringConst_88
	set	_StringConst_88,r1
	store	r1,[r14+-48]
!   Prepare Argument: offset=8  value=_temp_1872  sizeInBytes=4
	load	[r14+-48],r1
	store	r1,[r15+0]
!   Call the function
	mov	819,r13		! source line 819
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
	load	[r14+8],r1
	store	r1,[r14+-44]
!   Prepare Argument: offset=8  value=_temp_1873  sizeInBytes=4
	load	[r14+-44],r1
	store	r1,[r15+0]
!   Call the function
	mov	820,r13		! source line 820
	mov	"\0\0CE",r10
	call	printHex
! CALL STATEMENT...
!   _temp_1874 = _StringConst_89
	set	_StringConst_89,r1
	store	r1,[r14+-40]
!   Prepare Argument: offset=8  value=_temp_1874  sizeInBytes=4
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
!   _temp_1875 = _StringConst_90
	set	_StringConst_90,r1
	store	r1,[r14+-36]
!   Prepare Argument: offset=8  value=_temp_1875  sizeInBytes=4
	load	[r14+-36],r1
	store	r1,[r15+0]
!   Call the function
	mov	823,r13		! source line 823
	mov	"\0\0CE",r10
	call	print
! IF STATEMENT...
	mov	824,r13		! source line 824
	mov	"\0\0IF",r10
!   if status != 1 then goto _Label_1877		(int)
	load	[r14+8],r1
	load	[r1+20],r1
	mov	1,r2
	cmp	r1,r2
	bne	_Label_1877
!	jmp	_Label_1876
_Label_1876:
! THEN...
	mov	825,r13		! source line 825
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_1878 = _StringConst_91
	set	_StringConst_91,r1
	store	r1,[r14+-32]
!   Prepare Argument: offset=8  value=_temp_1878  sizeInBytes=4
	load	[r14+-32],r1
	store	r1,[r15+0]
!   Call the function
	mov	825,r13		! source line 825
	mov	"\0\0CE",r10
	call	print
	jmp	_Label_1879
_Label_1877:
! ELSE...
	mov	826,r13		! source line 826
	mov	"\0\0EL",r10
! IF STATEMENT...
	mov	826,r13		! source line 826
	mov	"\0\0IF",r10
!   if status != 2 then goto _Label_1881		(int)
	load	[r14+8],r1
	load	[r1+20],r1
	mov	2,r2
	cmp	r1,r2
	bne	_Label_1881
!	jmp	_Label_1880
_Label_1880:
! THEN...
	mov	827,r13		! source line 827
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_1882 = _StringConst_92
	set	_StringConst_92,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=8  value=_temp_1882  sizeInBytes=4
	load	[r14+-28],r1
	store	r1,[r15+0]
!   Call the function
	mov	827,r13		! source line 827
	mov	"\0\0CE",r10
	call	print
	jmp	_Label_1883
_Label_1881:
! ELSE...
	mov	828,r13		! source line 828
	mov	"\0\0EL",r10
! IF STATEMENT...
	mov	828,r13		! source line 828
	mov	"\0\0IF",r10
!   if status != 3 then goto _Label_1885		(int)
	load	[r14+8],r1
	load	[r1+20],r1
	mov	3,r2
	cmp	r1,r2
	bne	_Label_1885
!	jmp	_Label_1884
_Label_1884:
! THEN...
	mov	829,r13		! source line 829
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_1886 = _StringConst_93
	set	_StringConst_93,r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=8  value=_temp_1886  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+0]
!   Call the function
	mov	829,r13		! source line 829
	mov	"\0\0CE",r10
	call	print
	jmp	_Label_1887
_Label_1885:
! ELSE...
	mov	831,r13		! source line 831
	mov	"\0\0EL",r10
! CALL STATEMENT...
!   _temp_1888 = _StringConst_94
	set	_StringConst_94,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_1888  sizeInBytes=4
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
_Label_1887:
! END IF...
_Label_1883:
! END IF...
_Label_1879:
! CALL STATEMENT...
!   _temp_1889 = _StringConst_95
	set	_StringConst_95,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_1889  sizeInBytes=4
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
!   _temp_1890 = _StringConst_96
	set	_StringConst_96,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_1890  sizeInBytes=4
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
	.word	_Label_1891
	.word	4		! total size of parameters
	.word	44		! frame size = 44
	.word	_Label_1892
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1893
	.word	-12
	.word	4
	.word	_Label_1894
	.word	-16
	.word	4
	.word	_Label_1895
	.word	-20
	.word	4
	.word	_Label_1896
	.word	-24
	.word	4
	.word	_Label_1897
	.word	-28
	.word	4
	.word	_Label_1898
	.word	-32
	.word	4
	.word	_Label_1899
	.word	-36
	.word	4
	.word	_Label_1900
	.word	-40
	.word	4
	.word	_Label_1901
	.word	-44
	.word	4
	.word	_Label_1902
	.word	-48
	.word	4
	.word	0
_Label_1891:
	.ascii	"ProcessControlBlock"
	.ascii	"::"
	.ascii	"PrintShort\0"
	.align
_Label_1892:
	.ascii	"Pself\0"
	.align
_Label_1893:
	.byte	'?'
	.ascii	"_temp_1890\0"
	.align
_Label_1894:
	.byte	'?'
	.ascii	"_temp_1889\0"
	.align
_Label_1895:
	.byte	'?'
	.ascii	"_temp_1888\0"
	.align
_Label_1896:
	.byte	'?'
	.ascii	"_temp_1886\0"
	.align
_Label_1897:
	.byte	'?'
	.ascii	"_temp_1882\0"
	.align
_Label_1898:
	.byte	'?'
	.ascii	"_temp_1878\0"
	.align
_Label_1899:
	.byte	'?'
	.ascii	"_temp_1875\0"
	.align
_Label_1900:
	.byte	'?'
	.ascii	"_temp_1874\0"
	.align
_Label_1901:
	.byte	'?'
	.ascii	"_temp_1873\0"
	.align
_Label_1902:
	.byte	'?'
	.ascii	"_temp_1872\0"
	.align
! 
! ===============  CLASS ProcessManager  ===============
! 
! Dispatch Table:
! 
_P_Kernel_ProcessManager:
	.word	_Label_1903
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
_Label_1903:
	.word	1129070931		! Magic number 0x434c4153 == 'CLAS'
	.word	_Label_1904
	.word	_sourceFileName
	.word	237		! line number
	.word	1760		! size of instances, in bytes
	.word	_P_Kernel_ProcessManager
	.word	_P_System_Object
	.word	0
_Label_1904:
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
_Label_3852:
	push	r0
	sub	r1,1,r1
	bne	_Label_3852
	mov	848,r13		! source line 848
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   _temp_1905 = _StringConst_97
	set	_StringConst_97,r1
	store	r1,[r14+-1924]
!   Prepare Argument: offset=8  value=_temp_1905  sizeInBytes=4
	load	[r14+-1924],r1
	store	r1,[r15+0]
!   Call the function
	mov	856,r13		! source line 856
	mov	"\0\0CE",r10
	call	print
! ASSIGNMENT STATEMENT...
	mov	857,r13		! source line 857
	mov	"\0\0AS",r10
!   _temp_1906 = &processTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-1920]
!   NEW ARRAY Constructor...
!   _temp_1908 = &_temp_1907
	add	r14,-1916,r1
	store	r1,[r14+-232]
!   _temp_1908 = _temp_1908 + 4
	load	[r14+-232],r1
	add	r1,4,r1
	store	r1,[r14+-232]
!   Next value...
!   NEW CLASS Constructor...
!   ZeroMemory: _temp_1910 = zeros  (sizeInBytes=168)
	add	r14,-224,r4
	mov	42,r3
_Label_3853:
	store	r0,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_3853
!   _temp_1910 = _P_Kernel_ProcessControlBlock
	set	_P_Kernel_ProcessControlBlock,r1
	store	r1,[r14+-224]
	mov	10,r1
	store	r1,[r14+-228]
_Label_1912:
!   Data Move: *_temp_1908 = _temp_1910  (sizeInBytes=168)
	add	r14,-224,r5
	load	[r14+-232],r4
	mov	42,r3
_Label_3854:
	load	[r5],r1
	add	r5,4,r5
	store	r1,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_3854
!   _temp_1908 = _temp_1908 + 168
	load	[r14+-232],r1
	add	r1,168,r1
	store	r1,[r14+-232]
!   _temp_1909 = _temp_1909 + -1
	load	[r14+-228],r1
	add	r1,-1,r1
	store	r1,[r14+-228]
!   if intNotZero (_temp_1909) then goto _Label_1912
	load	[r14+-228],r1
	cmp	r1,r0
	bne	_Label_1912
!   Initialize the array size...
	mov	10,r1
	store	r1,[r14+-1916]
!   _temp_1913 = &_temp_1907
	add	r14,-1916,r1
	store	r1,[r14+-52]
!   make sure array has size 10
	load	[r14+-1920],r1
	load	[r1],r1
	set	10, r2
	cmp	r1,0
	be	_Label_3855
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bne	_runtimeErrorWrongArraySize
_Label_3855:
!   make sure array has size 10
	load	[r14+-52],r1
	load	[r1],r1
	set	10, r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bne	_runtimeErrorWrongArraySize
!   Data Move: *_temp_1906 = *_temp_1913  (sizeInBytes=1684)
	load	[r14+-52],r5
	load	[r14+-1920],r4
	mov	421,r3
_Label_3856:
	load	[r5],r1
	add	r5,4,r5
	store	r1,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_3856
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
_Label_1915:
!   if i >= 10 then goto _Label_1917		(int)
	load	[r14+-1928],r1
	mov	10,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_1917
!	jmp	_Label_1916
_Label_1916:
	mov	860,r13		! source line 860
	mov	"\0\0WB",r10
! ASSIGNMENT STATEMENT...
	mov	861,r13		! source line 861
	mov	"\0\0AS",r10
!   _temp_1918 = &processTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-44]
!   Move address of _temp_1918 [i ] into _temp_1919
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
!   process = _temp_1919		(4 bytes)
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
!   _temp_1920 = &freeList
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
	jmp	_Label_1915
_Label_1917:
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
!   _temp_1922 = &processManagerLock
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
!   _temp_1924 = &aProcessBecameFree
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
!   _temp_1926 = &aProcessDied
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
	.word	_Label_1927
	.word	4		! total size of parameters
	.word	1932		! frame size = 1932
	.word	_Label_1928
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1929
	.word	-12
	.word	4
	.word	_Label_1930
	.word	-16
	.word	4
	.word	_Label_1931
	.word	-20
	.word	4
	.word	_Label_1932
	.word	-24
	.word	4
	.word	_Label_1933
	.word	-28
	.word	4
	.word	_Label_1934
	.word	-32
	.word	4
	.word	_Label_1935
	.word	-36
	.word	4
	.word	_Label_1936
	.word	-40
	.word	4
	.word	_Label_1937
	.word	-44
	.word	4
	.word	_Label_1938
	.word	-48
	.word	4
	.word	_Label_1939
	.word	-52
	.word	4
	.word	_Label_1940
	.word	-56
	.word	4
	.word	_Label_1941
	.word	-224
	.word	168
	.word	_Label_1942
	.word	-228
	.word	4
	.word	_Label_1943
	.word	-232
	.word	4
	.word	_Label_1944
	.word	-1916
	.word	1684
	.word	_Label_1945
	.word	-1920
	.word	4
	.word	_Label_1946
	.word	-1924
	.word	4
	.word	_Label_1947
	.word	-1928
	.word	4
	.word	_Label_1948
	.word	-1932
	.word	4
	.word	0
_Label_1927:
	.ascii	"ProcessManager"
	.ascii	"::"
	.ascii	"Init\0"
	.align
_Label_1928:
	.ascii	"Pself\0"
	.align
_Label_1929:
	.byte	'?'
	.ascii	"_temp_1926\0"
	.align
_Label_1930:
	.byte	'?'
	.ascii	"_temp_1925\0"
	.align
_Label_1931:
	.byte	'?'
	.ascii	"_temp_1924\0"
	.align
_Label_1932:
	.byte	'?'
	.ascii	"_temp_1923\0"
	.align
_Label_1933:
	.byte	'?'
	.ascii	"_temp_1922\0"
	.align
_Label_1934:
	.byte	'?'
	.ascii	"_temp_1921\0"
	.align
_Label_1935:
	.byte	'?'
	.ascii	"_temp_1920\0"
	.align
_Label_1936:
	.byte	'?'
	.ascii	"_temp_1919\0"
	.align
_Label_1937:
	.byte	'?'
	.ascii	"_temp_1918\0"
	.align
_Label_1938:
	.byte	'?'
	.ascii	"_temp_1914\0"
	.align
_Label_1939:
	.byte	'?'
	.ascii	"_temp_1913\0"
	.align
_Label_1940:
	.byte	'?'
	.ascii	"_temp_1911\0"
	.align
_Label_1941:
	.byte	'?'
	.ascii	"_temp_1910\0"
	.align
_Label_1942:
	.byte	'?'
	.ascii	"_temp_1909\0"
	.align
_Label_1943:
	.byte	'?'
	.ascii	"_temp_1908\0"
	.align
_Label_1944:
	.byte	'?'
	.ascii	"_temp_1907\0"
	.align
_Label_1945:
	.byte	'?'
	.ascii	"_temp_1906\0"
	.align
_Label_1946:
	.byte	'?'
	.ascii	"_temp_1905\0"
	.align
_Label_1947:
	.byte	'I'
	.ascii	"i\0"
	.align
_Label_1948:
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
_Label_3857:
	push	r0
	sub	r1,1,r1
	bne	_Label_3857
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
!   _temp_1949 = _StringConst_98
	set	_StringConst_98,r1
	store	r1,[r14+-48]
!   Prepare Argument: offset=8  value=_temp_1949  sizeInBytes=4
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
!   _temp_1954 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-44]
!   Calculate and save the FOR-LOOP ending value
!   _temp_1955 = 9		(4 bytes)
	mov	9,r1
	store	r1,[r14+-40]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_1954  (sizeInBytes=4)
	load	[r14+-44],r1
	store	r1,[r14+-52]
_Label_1950:
!   Perform the FOR-LOOP termination test
!   if i > _temp_1955 then goto _Label_1953		
	load	[r14+-52],r1
	load	[r14+-40],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_1953
_Label_1951:
	mov	884,r13		! source line 884
	mov	"\0\0FB",r10
! CALL STATEMENT...
!   _temp_1956 = _StringConst_99
	set	_StringConst_99,r1
	store	r1,[r14+-36]
!   Prepare Argument: offset=8  value=_temp_1956  sizeInBytes=4
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
!   _temp_1957 = _StringConst_100
	set	_StringConst_100,r1
	store	r1,[r14+-32]
!   Prepare Argument: offset=8  value=_temp_1957  sizeInBytes=4
	load	[r14+-32],r1
	store	r1,[r15+0]
!   Call the function
	mov	887,r13		! source line 887
	mov	"\0\0CE",r10
	call	print
! SEND STATEMENT...
	mov	888,r13		! source line 888
	mov	"\0\0SE",r10
!   _temp_1958 = &processTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-28]
!   Move address of _temp_1958 [i ] into _temp_1959
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
_Label_1952:
!   i = i + 1
	load	[r14+-52],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-52]
	jmp	_Label_1950
! END FOR
_Label_1953:
! CALL STATEMENT...
!   _temp_1960 = _StringConst_101
	set	_StringConst_101,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_1960  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   Call the function
	mov	890,r13		! source line 890
	mov	"\0\0CE",r10
	call	print
! SEND STATEMENT...
	mov	891,r13		! source line 891
	mov	"\0\0SE",r10
!   _temp_1961 = _function_194_PrintObjectAddr
	set	_function_194_PrintObjectAddr,r1
	store	r1,[r14+-16]
!   _temp_1962 = &freeList
	load	[r14+8],r1
	add	r1,1728,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=12  value=_temp_1961  sizeInBytes=4
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
	.word	_Label_1963
	.word	4		! total size of parameters
	.word	56		! frame size = 56
	.word	_Label_1964
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1965
	.word	-12
	.word	4
	.word	_Label_1966
	.word	-16
	.word	4
	.word	_Label_1967
	.word	-20
	.word	4
	.word	_Label_1968
	.word	-24
	.word	4
	.word	_Label_1969
	.word	-28
	.word	4
	.word	_Label_1970
	.word	-32
	.word	4
	.word	_Label_1971
	.word	-36
	.word	4
	.word	_Label_1972
	.word	-40
	.word	4
	.word	_Label_1973
	.word	-44
	.word	4
	.word	_Label_1974
	.word	-48
	.word	4
	.word	_Label_1975
	.word	-52
	.word	4
	.word	_Label_1976
	.word	-56
	.word	4
	.word	0
_Label_1963:
	.ascii	"ProcessManager"
	.ascii	"::"
	.ascii	"Print\0"
	.align
_Label_1964:
	.ascii	"Pself\0"
	.align
_Label_1965:
	.byte	'?'
	.ascii	"_temp_1962\0"
	.align
_Label_1966:
	.byte	'?'
	.ascii	"_temp_1961\0"
	.align
_Label_1967:
	.byte	'?'
	.ascii	"_temp_1960\0"
	.align
_Label_1968:
	.byte	'?'
	.ascii	"_temp_1959\0"
	.align
_Label_1969:
	.byte	'?'
	.ascii	"_temp_1958\0"
	.align
_Label_1970:
	.byte	'?'
	.ascii	"_temp_1957\0"
	.align
_Label_1971:
	.byte	'?'
	.ascii	"_temp_1956\0"
	.align
_Label_1972:
	.byte	'?'
	.ascii	"_temp_1955\0"
	.align
_Label_1973:
	.byte	'?'
	.ascii	"_temp_1954\0"
	.align
_Label_1974:
	.byte	'?'
	.ascii	"_temp_1949\0"
	.align
_Label_1975:
	.byte	'I'
	.ascii	"i\0"
	.align
_Label_1976:
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
_Label_3858:
	push	r0
	sub	r1,1,r1
	bne	_Label_3858
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
!   _temp_1977 = _StringConst_102
	set	_StringConst_102,r1
	store	r1,[r14+-44]
!   Prepare Argument: offset=8  value=_temp_1977  sizeInBytes=4
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
!   _temp_1982 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-40]
!   Calculate and save the FOR-LOOP ending value
!   _temp_1983 = 9		(4 bytes)
	mov	9,r1
	store	r1,[r14+-36]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_1982  (sizeInBytes=4)
	load	[r14+-40],r1
	store	r1,[r14+-48]
_Label_1978:
!   Perform the FOR-LOOP termination test
!   if i > _temp_1983 then goto _Label_1981		
	load	[r14+-48],r1
	load	[r14+-36],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_1981
_Label_1979:
	mov	907,r13		! source line 907
	mov	"\0\0FB",r10
! CALL STATEMENT...
!   _temp_1984 = _StringConst_103
	set	_StringConst_103,r1
	store	r1,[r14+-32]
!   Prepare Argument: offset=8  value=_temp_1984  sizeInBytes=4
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
!   _temp_1985 = &processTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-28]
!   Move address of _temp_1985 [i ] into _temp_1986
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
_Label_1980:
!   i = i + 1
	load	[r14+-48],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-48]
	jmp	_Label_1978
! END FOR
_Label_1981:
! CALL STATEMENT...
!   _temp_1987 = _StringConst_104
	set	_StringConst_104,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_1987  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   Call the function
	mov	912,r13		! source line 912
	mov	"\0\0CE",r10
	call	print
! SEND STATEMENT...
	mov	913,r13		! source line 913
	mov	"\0\0SE",r10
!   _temp_1988 = _function_194_PrintObjectAddr
	set	_function_194_PrintObjectAddr,r1
	store	r1,[r14+-16]
!   _temp_1989 = &freeList
	load	[r14+8],r1
	add	r1,1728,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=12  value=_temp_1988  sizeInBytes=4
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
	.word	_Label_1990
	.word	4		! total size of parameters
	.word	52		! frame size = 52
	.word	_Label_1991
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1992
	.word	-12
	.word	4
	.word	_Label_1993
	.word	-16
	.word	4
	.word	_Label_1994
	.word	-20
	.word	4
	.word	_Label_1995
	.word	-24
	.word	4
	.word	_Label_1996
	.word	-28
	.word	4
	.word	_Label_1997
	.word	-32
	.word	4
	.word	_Label_1998
	.word	-36
	.word	4
	.word	_Label_1999
	.word	-40
	.word	4
	.word	_Label_2000
	.word	-44
	.word	4
	.word	_Label_2001
	.word	-48
	.word	4
	.word	_Label_2002
	.word	-52
	.word	4
	.word	0
_Label_1990:
	.ascii	"ProcessManager"
	.ascii	"::"
	.ascii	"PrintShort\0"
	.align
_Label_1991:
	.ascii	"Pself\0"
	.align
_Label_1992:
	.byte	'?'
	.ascii	"_temp_1989\0"
	.align
_Label_1993:
	.byte	'?'
	.ascii	"_temp_1988\0"
	.align
_Label_1994:
	.byte	'?'
	.ascii	"_temp_1987\0"
	.align
_Label_1995:
	.byte	'?'
	.ascii	"_temp_1986\0"
	.align
_Label_1996:
	.byte	'?'
	.ascii	"_temp_1985\0"
	.align
_Label_1997:
	.byte	'?'
	.ascii	"_temp_1984\0"
	.align
_Label_1998:
	.byte	'?'
	.ascii	"_temp_1983\0"
	.align
_Label_1999:
	.byte	'?'
	.ascii	"_temp_1982\0"
	.align
_Label_2000:
	.byte	'?'
	.ascii	"_temp_1977\0"
	.align
_Label_2001:
	.byte	'I'
	.ascii	"i\0"
	.align
_Label_2002:
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
_Label_3859:
	push	r0
	sub	r1,1,r1
	bne	_Label_3859
	mov	920,r13		! source line 920
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! SEND STATEMENT...
	mov	928,r13		! source line 928
	mov	"\0\0SE",r10
!   _temp_2003 = &processManagerLock
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
!   _temp_2004 = &freeList
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
_Label_2005:
!   if intIsZero (process) then goto _Label_2006
	load	[r14+-44],r1
	cmp	r1,r0
	be	_Label_2006
	jmp	_Label_2007
_Label_2006:
	mov	930,r13		! source line 930
	mov	"\0\0WB",r10
! SEND STATEMENT...
	mov	931,r13		! source line 931
	mov	"\0\0SE",r10
!   _temp_2008 = &processManagerLock
	load	[r14+8],r1
	add	r1,1692,r1
	store	r1,[r14+-32]
!   _temp_2009 = &aProcessBecameFree
	load	[r14+8],r1
	add	r1,1712,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=12  value=_temp_2008  sizeInBytes=4
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
!   _temp_2010 = &freeList
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
	jmp	_Label_2005
_Label_2007:
! ASSIGNMENT STATEMENT...
	mov	934,r13		! source line 934
	mov	"\0\0AS",r10
!   if intIsZero (process) then goto _runtimeErrorNullPointer
	load	[r14+-44],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2011 = process + 20
	load	[r14+-44],r1
	add	r1,20,r1
	store	r1,[r14+-20]
!   Data Move: *_temp_2011 = 1  (sizeInBytes=4)
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
!   _temp_2012 = process + 12
	load	[r14+-44],r1
	add	r1,12,r1
	store	r1,[r14+-16]
!   Data Move: *_temp_2012 = pidCount  (sizeInBytes=4)
	load	[r14+8],r1
	load	[r1+4],r1
	load	[r14+-16],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	937,r13		! source line 937
	mov	"\0\0SE",r10
!   _temp_2013 = &processManagerLock
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
	.word	_Label_2014
	.word	4		! total size of parameters
	.word	44		! frame size = 44
	.word	_Label_2015
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2016
	.word	-12
	.word	4
	.word	_Label_2017
	.word	-16
	.word	4
	.word	_Label_2018
	.word	-20
	.word	4
	.word	_Label_2019
	.word	-24
	.word	4
	.word	_Label_2020
	.word	-28
	.word	4
	.word	_Label_2021
	.word	-32
	.word	4
	.word	_Label_2022
	.word	-36
	.word	4
	.word	_Label_2023
	.word	-40
	.word	4
	.word	_Label_2024
	.word	-44
	.word	4
	.word	0
_Label_2014:
	.ascii	"ProcessManager"
	.ascii	"::"
	.ascii	"GetANewProcess\0"
	.align
_Label_2015:
	.ascii	"Pself\0"
	.align
_Label_2016:
	.byte	'?'
	.ascii	"_temp_2013\0"
	.align
_Label_2017:
	.byte	'?'
	.ascii	"_temp_2012\0"
	.align
_Label_2018:
	.byte	'?'
	.ascii	"_temp_2011\0"
	.align
_Label_2019:
	.byte	'?'
	.ascii	"_temp_2010\0"
	.align
_Label_2020:
	.byte	'?'
	.ascii	"_temp_2009\0"
	.align
_Label_2021:
	.byte	'?'
	.ascii	"_temp_2008\0"
	.align
_Label_2022:
	.byte	'?'
	.ascii	"_temp_2004\0"
	.align
_Label_2023:
	.byte	'?'
	.ascii	"_temp_2003\0"
	.align
_Label_2024:
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
_Label_3860:
	push	r0
	sub	r1,1,r1
	bne	_Label_3860
	mov	943,r13		! source line 943
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   _temp_2025 = _StringConst_105
	set	_StringConst_105,r1
	store	r1,[r14+-36]
!   Prepare Argument: offset=8  value=_temp_2025  sizeInBytes=4
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
!   _temp_2026 = &processManagerLock
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
!   _temp_2027 = &freeList
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
!   _temp_2028 = p + 20
	load	[r14+12],r1
	add	r1,20,r1
	store	r1,[r14+-24]
!   Data Move: *_temp_2028 = 3  (sizeInBytes=4)
	mov	3,r1
	load	[r14+-24],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	953,r13		! source line 953
	mov	"\0\0SE",r10
!   _temp_2029 = &processManagerLock
	load	[r14+8],r1
	add	r1,1692,r1
	store	r1,[r14+-20]
!   _temp_2030 = &aProcessBecameFree
	load	[r14+8],r1
	add	r1,1712,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=12  value=_temp_2029  sizeInBytes=4
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
!   _temp_2031 = &processManagerLock
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
	.word	_Label_2032
	.word	8		! total size of parameters
	.word	36		! frame size = 36
	.word	_Label_2033
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2034
	.word	12
	.word	4
	.word	_Label_2035
	.word	-12
	.word	4
	.word	_Label_2036
	.word	-16
	.word	4
	.word	_Label_2037
	.word	-20
	.word	4
	.word	_Label_2038
	.word	-24
	.word	4
	.word	_Label_2039
	.word	-28
	.word	4
	.word	_Label_2040
	.word	-32
	.word	4
	.word	_Label_2041
	.word	-36
	.word	4
	.word	0
_Label_2032:
	.ascii	"ProcessManager"
	.ascii	"::"
	.ascii	"FreeProcess\0"
	.align
_Label_2033:
	.ascii	"Pself\0"
	.align
_Label_2034:
	.byte	'P'
	.ascii	"p\0"
	.align
_Label_2035:
	.byte	'?'
	.ascii	"_temp_2031\0"
	.align
_Label_2036:
	.byte	'?'
	.ascii	"_temp_2030\0"
	.align
_Label_2037:
	.byte	'?'
	.ascii	"_temp_2029\0"
	.align
_Label_2038:
	.byte	'?'
	.ascii	"_temp_2028\0"
	.align
_Label_2039:
	.byte	'?'
	.ascii	"_temp_2027\0"
	.align
_Label_2040:
	.byte	'?'
	.ascii	"_temp_2026\0"
	.align
_Label_2041:
	.byte	'?'
	.ascii	"_temp_2025\0"
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
_Label_3861:
	push	r0
	sub	r1,1,r1
	bne	_Label_3861
	mov	960,r13		! source line 960
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! SEND STATEMENT...
	mov	968,r13		! source line 968
	mov	"\0\0SE",r10
!   _temp_2042 = &processManagerLock
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
!   _temp_2043 = p + 12
	load	[r14+12],r1
	add	r1,12,r1
	store	r1,[r14+-188]
!   Data Move: myPid = *_temp_2043  (sizeInBytes=4)
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
_Label_2044:
!   if i >= 10 then goto _Label_2046		(int)
	load	[r14+-196],r1
	mov	10,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_2046
!	jmp	_Label_2045
_Label_2045:
	mov	973,r13		! source line 973
	mov	"\0\0WB",r10
! IF STATEMENT...
	mov	974,r13		! source line 974
	mov	"\0\0IF",r10
!   _temp_2051 = &processTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-180]
!   Move address of _temp_2051 [i ] into _temp_2052
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
!   _temp_2053 = _temp_2052 + 16
	load	[r14+-176],r1
	add	r1,16,r1
	store	r1,[r14+-172]
!   Data Move: _temp_2050 = *_temp_2053  (sizeInBytes=4)
	load	[r14+-172],r1
	load	[r1],r1
	store	r1,[r14+-184]
!   if _temp_2050 != myPid then goto _Label_2048		(int)
	load	[r14+-184],r1
	load	[r14+-200],r2
	cmp	r1,r2
	bne	_Label_2048
!	jmp	_Label_2049
_Label_2049:
!   _temp_2055 = &processTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-164]
!   Move address of _temp_2055 [i ] into _temp_2056
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
!   _temp_2057 = _temp_2056 + 20
	load	[r14+-160],r1
	add	r1,20,r1
	store	r1,[r14+-156]
!   Data Move: _temp_2054 = *_temp_2057  (sizeInBytes=4)
	load	[r14+-156],r1
	load	[r1],r1
	store	r1,[r14+-168]
!   if _temp_2054 != 2 then goto _Label_2048		(int)
	load	[r14+-168],r1
	mov	2,r2
	cmp	r1,r2
	bne	_Label_2048
!	jmp	_Label_2047
_Label_2047:
! THEN...
	mov	975,r13		! source line 975
	mov	"\0\0TN",r10
! ASSIGNMENT STATEMENT...
	mov	975,r13		! source line 975
	mov	"\0\0AS",r10
!   _temp_2058 = &processTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-152]
!   Move address of _temp_2058 [i ] into _temp_2059
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
!   _temp_2060 = _temp_2059 + 20
	load	[r14+-148],r1
	add	r1,20,r1
	store	r1,[r14+-144]
!   Data Move: *_temp_2060 = 3  (sizeInBytes=4)
	mov	3,r1
	load	[r14+-144],r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	976,r13		! source line 976
	mov	"\0\0AS",r10
!   _temp_2061 = &processTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-140]
!   Move address of _temp_2061 [i ] into _temp_2062
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
!   _temp_2063 = _temp_2062 + 12
	load	[r14+-136],r1
	add	r1,12,r1
	store	r1,[r14+-132]
!   Data Move: *_temp_2063 = -1  (sizeInBytes=4)
	mov	-1,r1
	load	[r14+-132],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	977,r13		! source line 977
	mov	"\0\0SE",r10
!   _temp_2065 = &processTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-124]
!   Move address of _temp_2065 [i ] into _temp_2066
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
!   _temp_2064 = _temp_2066		(4 bytes)
	load	[r14+-120],r1
	store	r1,[r14+-128]
!   _temp_2067 = &freeList
	load	[r14+8],r1
	add	r1,1728,r1
	store	r1,[r14+-116]
!   Prepare Argument: offset=12  value=_temp_2064  sizeInBytes=4
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
!   _temp_2068 = &processManagerLock
	load	[r14+8],r1
	add	r1,1692,r1
	store	r1,[r14+-112]
!   _temp_2069 = &aProcessBecameFree
	load	[r14+8],r1
	add	r1,1712,r1
	store	r1,[r14+-108]
!   Prepare Argument: offset=12  value=_temp_2068  sizeInBytes=4
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
_Label_2048:
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
	jmp	_Label_2044
_Label_2046:
! ASSIGNMENT STATEMENT...
	mov	983,r13		! source line 983
	mov	"\0\0AS",r10
!   if intIsZero (p) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2070 = p + 16
	load	[r14+12],r1
	add	r1,16,r1
	store	r1,[r14+-104]
!   Data Move: parentPid = *_temp_2070  (sizeInBytes=4)
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
_Label_2071:
!   if i >= 10 then goto _Label_2073		(int)
	load	[r14+-196],r1
	mov	10,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_2073
!	jmp	_Label_2072
_Label_2072:
	mov	985,r13		! source line 985
	mov	"\0\0WB",r10
! IF STATEMENT...
	mov	986,r13		! source line 986
	mov	"\0\0IF",r10
!   _temp_2077 = &processTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-96]
!   Move address of _temp_2077 [i ] into _temp_2078
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
!   _temp_2079 = _temp_2078 + 12
	load	[r14+-92],r1
	add	r1,12,r1
	store	r1,[r14+-88]
!   Data Move: _temp_2076 = *_temp_2079  (sizeInBytes=4)
	load	[r14+-88],r1
	load	[r1],r1
	store	r1,[r14+-100]
!   if _temp_2076 != parentPid then goto _Label_2075		(int)
	load	[r14+-100],r1
	load	[r14+-204],r2
	cmp	r1,r2
	bne	_Label_2075
!	jmp	_Label_2074
_Label_2074:
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
!   _temp_2083 = &processTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-80]
!   Move address of _temp_2083 [i ] into _temp_2084
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
!   _temp_2085 = _temp_2084 + 20
	load	[r14+-76],r1
	add	r1,20,r1
	store	r1,[r14+-72]
!   Data Move: _temp_2082 = *_temp_2085  (sizeInBytes=4)
	load	[r14+-72],r1
	load	[r1],r1
	store	r1,[r14+-84]
!   if _temp_2082 != 1 then goto _Label_2081		(int)
	load	[r14+-84],r1
	mov	1,r2
	cmp	r1,r2
	bne	_Label_2081
!	jmp	_Label_2080
_Label_2080:
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
!   _temp_2086 = p + 20
	load	[r14+12],r1
	add	r1,20,r1
	store	r1,[r14+-68]
!   Data Move: *_temp_2086 = 2  (sizeInBytes=4)
	mov	2,r1
	load	[r14+-68],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	992,r13		! source line 992
	mov	"\0\0SE",r10
!   _temp_2087 = &processManagerLock
	load	[r14+8],r1
	add	r1,1692,r1
	store	r1,[r14+-64]
!   _temp_2088 = &aProcessDied
	load	[r14+8],r1
	add	r1,1740,r1
	store	r1,[r14+-60]
!   Prepare Argument: offset=12  value=_temp_2087  sizeInBytes=4
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
	jmp	_Label_2089
_Label_2081:
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
!   _temp_2090 = p + 20
	load	[r14+12],r1
	add	r1,20,r1
	store	r1,[r14+-56]
!   Data Move: *_temp_2090 = 3  (sizeInBytes=4)
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
!   _temp_2091 = p + 12
	load	[r14+12],r1
	add	r1,12,r1
	store	r1,[r14+-52]
!   Data Move: *_temp_2091 = -1  (sizeInBytes=4)
	mov	-1,r1
	load	[r14+-52],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	998,r13		! source line 998
	mov	"\0\0SE",r10
!   _temp_2092 = &freeList
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
!   _temp_2093 = &processManagerLock
	load	[r14+8],r1
	add	r1,1692,r1
	store	r1,[r14+-44]
!   _temp_2094 = &aProcessBecameFree
	load	[r14+8],r1
	add	r1,1712,r1
	store	r1,[r14+-40]
!   Prepare Argument: offset=12  value=_temp_2093  sizeInBytes=4
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
_Label_2089:
! END IF...
_Label_2075:
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
	jmp	_Label_2071
_Label_2073:
! IF STATEMENT...
	mov	1004,r13		! source line 1004
	mov	"\0\0IF",r10
!   _temp_2097 = parentFound XOR 0		(bool)
	loadb	[r14+-10],r1
	mov	0,r2
	xor	r1,r2,r1
	storeb	r1,[r14+-9]
!   if _temp_2097 then goto _Label_2096 else goto _Label_2095
	loadb	[r14+-9],r1
	cmp	r1,0
	be	_Label_2095
	jmp	_Label_2096
_Label_2095:
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
!   _temp_2098 = p + 20
	load	[r14+12],r1
	add	r1,20,r1
	store	r1,[r14+-36]
!   Data Move: *_temp_2098 = 3  (sizeInBytes=4)
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
!   _temp_2099 = p + 12
	load	[r14+12],r1
	add	r1,12,r1
	store	r1,[r14+-32]
!   Data Move: *_temp_2099 = -1  (sizeInBytes=4)
	mov	-1,r1
	load	[r14+-32],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	1007,r13		! source line 1007
	mov	"\0\0SE",r10
!   _temp_2100 = &freeList
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
!   _temp_2101 = &processManagerLock
	load	[r14+8],r1
	add	r1,1692,r1
	store	r1,[r14+-24]
!   _temp_2102 = &aProcessBecameFree
	load	[r14+8],r1
	add	r1,1712,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=12  value=_temp_2101  sizeInBytes=4
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
_Label_2096:
! SEND STATEMENT...
	mov	1011,r13		! source line 1011
	mov	"\0\0SE",r10
!   _temp_2103 = &processManagerLock
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
	.word	_Label_2104
	.word	8		! total size of parameters
	.word	204		! frame size = 204
	.word	_Label_2105
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2106
	.word	12
	.word	4
	.word	_Label_2107
	.word	-16
	.word	4
	.word	_Label_2108
	.word	-20
	.word	4
	.word	_Label_2109
	.word	-24
	.word	4
	.word	_Label_2110
	.word	-28
	.word	4
	.word	_Label_2111
	.word	-32
	.word	4
	.word	_Label_2112
	.word	-36
	.word	4
	.word	_Label_2113
	.word	-9
	.word	1
	.word	_Label_2114
	.word	-40
	.word	4
	.word	_Label_2115
	.word	-44
	.word	4
	.word	_Label_2116
	.word	-48
	.word	4
	.word	_Label_2117
	.word	-52
	.word	4
	.word	_Label_2118
	.word	-56
	.word	4
	.word	_Label_2119
	.word	-60
	.word	4
	.word	_Label_2120
	.word	-64
	.word	4
	.word	_Label_2121
	.word	-68
	.word	4
	.word	_Label_2122
	.word	-72
	.word	4
	.word	_Label_2123
	.word	-76
	.word	4
	.word	_Label_2124
	.word	-80
	.word	4
	.word	_Label_2125
	.word	-84
	.word	4
	.word	_Label_2126
	.word	-88
	.word	4
	.word	_Label_2127
	.word	-92
	.word	4
	.word	_Label_2128
	.word	-96
	.word	4
	.word	_Label_2129
	.word	-100
	.word	4
	.word	_Label_2130
	.word	-104
	.word	4
	.word	_Label_2131
	.word	-108
	.word	4
	.word	_Label_2132
	.word	-112
	.word	4
	.word	_Label_2133
	.word	-116
	.word	4
	.word	_Label_2134
	.word	-120
	.word	4
	.word	_Label_2135
	.word	-124
	.word	4
	.word	_Label_2136
	.word	-128
	.word	4
	.word	_Label_2137
	.word	-132
	.word	4
	.word	_Label_2138
	.word	-136
	.word	4
	.word	_Label_2139
	.word	-140
	.word	4
	.word	_Label_2140
	.word	-144
	.word	4
	.word	_Label_2141
	.word	-148
	.word	4
	.word	_Label_2142
	.word	-152
	.word	4
	.word	_Label_2143
	.word	-156
	.word	4
	.word	_Label_2144
	.word	-160
	.word	4
	.word	_Label_2145
	.word	-164
	.word	4
	.word	_Label_2146
	.word	-168
	.word	4
	.word	_Label_2147
	.word	-172
	.word	4
	.word	_Label_2148
	.word	-176
	.word	4
	.word	_Label_2149
	.word	-180
	.word	4
	.word	_Label_2150
	.word	-184
	.word	4
	.word	_Label_2151
	.word	-188
	.word	4
	.word	_Label_2152
	.word	-192
	.word	4
	.word	_Label_2153
	.word	-196
	.word	4
	.word	_Label_2154
	.word	-200
	.word	4
	.word	_Label_2155
	.word	-204
	.word	4
	.word	_Label_2156
	.word	-10
	.word	1
	.word	0
_Label_2104:
	.ascii	"ProcessManager"
	.ascii	"::"
	.ascii	"TurnIntoZombie\0"
	.align
_Label_2105:
	.ascii	"Pself\0"
	.align
_Label_2106:
	.byte	'P'
	.ascii	"p\0"
	.align
_Label_2107:
	.byte	'?'
	.ascii	"_temp_2103\0"
	.align
_Label_2108:
	.byte	'?'
	.ascii	"_temp_2102\0"
	.align
_Label_2109:
	.byte	'?'
	.ascii	"_temp_2101\0"
	.align
_Label_2110:
	.byte	'?'
	.ascii	"_temp_2100\0"
	.align
_Label_2111:
	.byte	'?'
	.ascii	"_temp_2099\0"
	.align
_Label_2112:
	.byte	'?'
	.ascii	"_temp_2098\0"
	.align
_Label_2113:
	.byte	'C'
	.ascii	"_temp_2097\0"
	.align
_Label_2114:
	.byte	'?'
	.ascii	"_temp_2094\0"
	.align
_Label_2115:
	.byte	'?'
	.ascii	"_temp_2093\0"
	.align
_Label_2116:
	.byte	'?'
	.ascii	"_temp_2092\0"
	.align
_Label_2117:
	.byte	'?'
	.ascii	"_temp_2091\0"
	.align
_Label_2118:
	.byte	'?'
	.ascii	"_temp_2090\0"
	.align
_Label_2119:
	.byte	'?'
	.ascii	"_temp_2088\0"
	.align
_Label_2120:
	.byte	'?'
	.ascii	"_temp_2087\0"
	.align
_Label_2121:
	.byte	'?'
	.ascii	"_temp_2086\0"
	.align
_Label_2122:
	.byte	'?'
	.ascii	"_temp_2085\0"
	.align
_Label_2123:
	.byte	'?'
	.ascii	"_temp_2084\0"
	.align
_Label_2124:
	.byte	'?'
	.ascii	"_temp_2083\0"
	.align
_Label_2125:
	.byte	'?'
	.ascii	"_temp_2082\0"
	.align
_Label_2126:
	.byte	'?'
	.ascii	"_temp_2079\0"
	.align
_Label_2127:
	.byte	'?'
	.ascii	"_temp_2078\0"
	.align
_Label_2128:
	.byte	'?'
	.ascii	"_temp_2077\0"
	.align
_Label_2129:
	.byte	'?'
	.ascii	"_temp_2076\0"
	.align
_Label_2130:
	.byte	'?'
	.ascii	"_temp_2070\0"
	.align
_Label_2131:
	.byte	'?'
	.ascii	"_temp_2069\0"
	.align
_Label_2132:
	.byte	'?'
	.ascii	"_temp_2068\0"
	.align
_Label_2133:
	.byte	'?'
	.ascii	"_temp_2067\0"
	.align
_Label_2134:
	.byte	'?'
	.ascii	"_temp_2066\0"
	.align
_Label_2135:
	.byte	'?'
	.ascii	"_temp_2065\0"
	.align
_Label_2136:
	.byte	'?'
	.ascii	"_temp_2064\0"
	.align
_Label_2137:
	.byte	'?'
	.ascii	"_temp_2063\0"
	.align
_Label_2138:
	.byte	'?'
	.ascii	"_temp_2062\0"
	.align
_Label_2139:
	.byte	'?'
	.ascii	"_temp_2061\0"
	.align
_Label_2140:
	.byte	'?'
	.ascii	"_temp_2060\0"
	.align
_Label_2141:
	.byte	'?'
	.ascii	"_temp_2059\0"
	.align
_Label_2142:
	.byte	'?'
	.ascii	"_temp_2058\0"
	.align
_Label_2143:
	.byte	'?'
	.ascii	"_temp_2057\0"
	.align
_Label_2144:
	.byte	'?'
	.ascii	"_temp_2056\0"
	.align
_Label_2145:
	.byte	'?'
	.ascii	"_temp_2055\0"
	.align
_Label_2146:
	.byte	'?'
	.ascii	"_temp_2054\0"
	.align
_Label_2147:
	.byte	'?'
	.ascii	"_temp_2053\0"
	.align
_Label_2148:
	.byte	'?'
	.ascii	"_temp_2052\0"
	.align
_Label_2149:
	.byte	'?'
	.ascii	"_temp_2051\0"
	.align
_Label_2150:
	.byte	'?'
	.ascii	"_temp_2050\0"
	.align
_Label_2151:
	.byte	'?'
	.ascii	"_temp_2043\0"
	.align
_Label_2152:
	.byte	'?'
	.ascii	"_temp_2042\0"
	.align
_Label_2153:
	.byte	'I'
	.ascii	"i\0"
	.align
_Label_2154:
	.byte	'I'
	.ascii	"myPid\0"
	.align
_Label_2155:
	.byte	'I'
	.ascii	"parentPid\0"
	.align
_Label_2156:
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
_Label_3862:
	push	r0
	sub	r1,1,r1
	bne	_Label_3862
	mov	1018,r13		! source line 1018
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! SEND STATEMENT...
	mov	1023,r13		! source line 1023
	mov	"\0\0SE",r10
!   _temp_2157 = &processManagerLock
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
_Label_2158:
!   if intIsZero (proc) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2162 = proc + 20
	load	[r14+12],r1
	add	r1,20,r1
	store	r1,[r14+-48]
!   Data Move: _temp_2161 = *_temp_2162  (sizeInBytes=4)
	load	[r14+-48],r1
	load	[r1],r1
	store	r1,[r14+-52]
!   if _temp_2161 == 2 then goto _Label_2160		(int)
	load	[r14+-52],r1
	mov	2,r2
	cmp	r1,r2
	be	_Label_2160
!	jmp	_Label_2159
_Label_2159:
	mov	1029,r13		! source line 1029
	mov	"\0\0WB",r10
! SEND STATEMENT...
	mov	1031,r13		! source line 1031
	mov	"\0\0SE",r10
!   _temp_2163 = &processManagerLock
	load	[r14+8],r1
	add	r1,1692,r1
	store	r1,[r14+-44]
!   _temp_2164 = &aProcessDied
	load	[r14+8],r1
	add	r1,1740,r1
	store	r1,[r14+-40]
!   Prepare Argument: offset=12  value=_temp_2163  sizeInBytes=4
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
	jmp	_Label_2158
_Label_2160:
! ASSIGNMENT STATEMENT...
	mov	1037,r13		! source line 1037
	mov	"\0\0AS",r10
!   if intIsZero (proc) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2165 = proc + 28
	load	[r14+12],r1
	add	r1,28,r1
	store	r1,[r14+-36]
!   Data Move: exitStatus = *_temp_2165  (sizeInBytes=4)
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
!   _temp_2166 = proc + 20
	load	[r14+12],r1
	add	r1,20,r1
	store	r1,[r14+-32]
!   Data Move: *_temp_2166 = 3  (sizeInBytes=4)
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
!   _temp_2167 = proc + 12
	load	[r14+12],r1
	add	r1,12,r1
	store	r1,[r14+-28]
!   Data Move: *_temp_2167 = -1  (sizeInBytes=4)
	mov	-1,r1
	load	[r14+-28],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	1042,r13		! source line 1042
	mov	"\0\0SE",r10
!   _temp_2168 = &freeList
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
!   _temp_2169 = &processManagerLock
	load	[r14+8],r1
	add	r1,1692,r1
	store	r1,[r14+-20]
!   _temp_2170 = &aProcessBecameFree
	load	[r14+8],r1
	add	r1,1712,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=12  value=_temp_2169  sizeInBytes=4
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
!   _temp_2171 = &processManagerLock
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
	.word	_Label_2172
	.word	8		! total size of parameters
	.word	60		! frame size = 60
	.word	_Label_2173
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2174
	.word	12
	.word	4
	.word	_Label_2175
	.word	-12
	.word	4
	.word	_Label_2176
	.word	-16
	.word	4
	.word	_Label_2177
	.word	-20
	.word	4
	.word	_Label_2178
	.word	-24
	.word	4
	.word	_Label_2179
	.word	-28
	.word	4
	.word	_Label_2180
	.word	-32
	.word	4
	.word	_Label_2181
	.word	-36
	.word	4
	.word	_Label_2182
	.word	-40
	.word	4
	.word	_Label_2183
	.word	-44
	.word	4
	.word	_Label_2184
	.word	-48
	.word	4
	.word	_Label_2185
	.word	-52
	.word	4
	.word	_Label_2186
	.word	-56
	.word	4
	.word	_Label_2187
	.word	-60
	.word	4
	.word	0
_Label_2172:
	.ascii	"ProcessManager"
	.ascii	"::"
	.ascii	"WaitForZombie\0"
	.align
_Label_2173:
	.ascii	"Pself\0"
	.align
_Label_2174:
	.byte	'P'
	.ascii	"proc\0"
	.align
_Label_2175:
	.byte	'?'
	.ascii	"_temp_2171\0"
	.align
_Label_2176:
	.byte	'?'
	.ascii	"_temp_2170\0"
	.align
_Label_2177:
	.byte	'?'
	.ascii	"_temp_2169\0"
	.align
_Label_2178:
	.byte	'?'
	.ascii	"_temp_2168\0"
	.align
_Label_2179:
	.byte	'?'
	.ascii	"_temp_2167\0"
	.align
_Label_2180:
	.byte	'?'
	.ascii	"_temp_2166\0"
	.align
_Label_2181:
	.byte	'?'
	.ascii	"_temp_2165\0"
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
	.byte	'?'
	.ascii	"_temp_2162\0"
	.align
_Label_2185:
	.byte	'?'
	.ascii	"_temp_2161\0"
	.align
_Label_2186:
	.byte	'?'
	.ascii	"_temp_2157\0"
	.align
_Label_2187:
	.byte	'I'
	.ascii	"exitStatus\0"
	.align
! 
! ===============  CLASS FrameManager  ===============
! 
! Dispatch Table:
! 
_P_Kernel_FrameManager:
	.word	_Label_2188
	jmp	_Method_P_Kernel_FrameManager_1	! 4:	Init
	jmp	_Method_P_Kernel_FrameManager_2	! 8:	Print
	jmp	_Method_P_Kernel_FrameManager_3	! 12:	GetAFrame
	jmp	_Method_P_Kernel_FrameManager_4	! 16:	GetNewFrames
	jmp	_Method_P_Kernel_FrameManager_5	! 20:	ReturnAllFrames
	.word	0
! 
! Class descriptor:
! 
_Label_2188:
	.word	1129070931		! Magic number 0x434c4153 == 'CLAS'
	.word	_Label_2189
	.word	_sourceFileName
	.word	261		! line number
	.word	56		! size of instances, in bytes
	.word	_P_Kernel_FrameManager
	.word	_P_System_Object
	.word	0
_Label_2189:
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
_Label_3863:
	push	r0
	sub	r1,1,r1
	bne	_Label_3863
	mov	1211,r13		! source line 1211
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   _temp_2190 = _StringConst_106
	set	_StringConst_106,r1
	store	r1,[r14+-52]
!   Prepare Argument: offset=8  value=_temp_2190  sizeInBytes=4
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
!   _temp_2192 = &framesInUse
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
!   _temp_2194 = &frameManagerLock
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
!   _temp_2196 = &newFramesAvailable
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
!   _temp_2201 = 1048576		(4 bytes)
	set	1048576,r1
	store	r1,[r14+-24]
!   Calculate and save the FOR-LOOP ending value
!   _temp_2202 = 1048876		(4 bytes)
	set	1048876,r1
	store	r1,[r14+-20]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_2201  (sizeInBytes=4)
	load	[r14+-24],r1
	store	r1,[r14+-56]
_Label_2197:
!   Perform the FOR-LOOP termination test
!   if i > _temp_2202 then goto _Label_2200		
	load	[r14+-56],r1
	load	[r14+-20],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_2200
_Label_2198:
	mov	1230,r13		! source line 1230
	mov	"\0\0FB",r10
! IF STATEMENT...
	mov	1233,r13		! source line 1233
	mov	"\0\0IF",r10
!   if intIsZero (i) then goto _runtimeErrorNullPointer
	load	[r14+-56],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Data Move: _temp_2205 = *i  (sizeInBytes=4)
	load	[r14+-56],r1
	load	[r1],r1
	store	r1,[r14+-16]
!   if intIsZero (_temp_2205) then goto _Label_2204
	load	[r14+-16],r1
	cmp	r1,r0
	be	_Label_2204
!	jmp	_Label_2203
_Label_2203:
! THEN...
	mov	1234,r13		! source line 1234
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_2206 = _StringConst_107
	set	_StringConst_107,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_2206  sizeInBytes=4
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
_Label_2204:
!   Increment the FOR-LOOP index variable and jump back
_Label_2199:
!   i = i + 4
	load	[r14+-56],r1
	add	r1,4,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-56]
	jmp	_Label_2197
! END FOR
_Label_2200:
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
	.word	_Label_2207
	.word	4		! total size of parameters
	.word	56		! frame size = 56
	.word	_Label_2208
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2209
	.word	-12
	.word	4
	.word	_Label_2210
	.word	-16
	.word	4
	.word	_Label_2211
	.word	-20
	.word	4
	.word	_Label_2212
	.word	-24
	.word	4
	.word	_Label_2213
	.word	-28
	.word	4
	.word	_Label_2214
	.word	-32
	.word	4
	.word	_Label_2215
	.word	-36
	.word	4
	.word	_Label_2216
	.word	-40
	.word	4
	.word	_Label_2217
	.word	-44
	.word	4
	.word	_Label_2218
	.word	-48
	.word	4
	.word	_Label_2219
	.word	-52
	.word	4
	.word	_Label_2220
	.word	-56
	.word	4
	.word	0
_Label_2207:
	.ascii	"FrameManager"
	.ascii	"::"
	.ascii	"Init\0"
	.align
_Label_2208:
	.ascii	"Pself\0"
	.align
_Label_2209:
	.byte	'?'
	.ascii	"_temp_2206\0"
	.align
_Label_2210:
	.byte	'?'
	.ascii	"_temp_2205\0"
	.align
_Label_2211:
	.byte	'?'
	.ascii	"_temp_2202\0"
	.align
_Label_2212:
	.byte	'?'
	.ascii	"_temp_2201\0"
	.align
_Label_2213:
	.byte	'?'
	.ascii	"_temp_2196\0"
	.align
_Label_2214:
	.byte	'?'
	.ascii	"_temp_2195\0"
	.align
_Label_2215:
	.byte	'?'
	.ascii	"_temp_2194\0"
	.align
_Label_2216:
	.byte	'?'
	.ascii	"_temp_2193\0"
	.align
_Label_2217:
	.byte	'?'
	.ascii	"_temp_2192\0"
	.align
_Label_2218:
	.byte	'?'
	.ascii	"_temp_2191\0"
	.align
_Label_2219:
	.byte	'?'
	.ascii	"_temp_2190\0"
	.align
_Label_2220:
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
_Label_3864:
	push	r0
	sub	r1,1,r1
	bne	_Label_3864
	mov	1241,r13		! source line 1241
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! SEND STATEMENT...
	mov	1245,r13		! source line 1245
	mov	"\0\0SE",r10
!   _temp_2221 = &frameManagerLock
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
!   _temp_2222 = _StringConst_108
	set	_StringConst_108,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=8  value=_temp_2222  sizeInBytes=4
	load	[r14+-28],r1
	store	r1,[r15+0]
!   Call the function
	mov	1246,r13		! source line 1246
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_2223 = _StringConst_109
	set	_StringConst_109,r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=8  value=_temp_2223  sizeInBytes=4
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
!   _temp_2224 = _StringConst_110
	set	_StringConst_110,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_2224  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   Call the function
	mov	1248,r13		! source line 1248
	mov	"\0\0CE",r10
	call	print
! SEND STATEMENT...
	mov	1249,r13		! source line 1249
	mov	"\0\0SE",r10
!   _temp_2225 = &framesInUse
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
!   _temp_2226 = &frameManagerLock
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
	.word	_Label_2227
	.word	4		! total size of parameters
	.word	32		! frame size = 32
	.word	_Label_2228
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2229
	.word	-12
	.word	4
	.word	_Label_2230
	.word	-16
	.word	4
	.word	_Label_2231
	.word	-20
	.word	4
	.word	_Label_2232
	.word	-24
	.word	4
	.word	_Label_2233
	.word	-28
	.word	4
	.word	_Label_2234
	.word	-32
	.word	4
	.word	0
_Label_2227:
	.ascii	"FrameManager"
	.ascii	"::"
	.ascii	"Print\0"
	.align
_Label_2228:
	.ascii	"Pself\0"
	.align
_Label_2229:
	.byte	'?'
	.ascii	"_temp_2226\0"
	.align
_Label_2230:
	.byte	'?'
	.ascii	"_temp_2225\0"
	.align
_Label_2231:
	.byte	'?'
	.ascii	"_temp_2224\0"
	.align
_Label_2232:
	.byte	'?'
	.ascii	"_temp_2223\0"
	.align
_Label_2233:
	.byte	'?'
	.ascii	"_temp_2222\0"
	.align
_Label_2234:
	.byte	'?'
	.ascii	"_temp_2221\0"
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
_Label_3865:
	push	r0
	sub	r1,1,r1
	bne	_Label_3865
	mov	1255,r13		! source line 1255
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! SEND STATEMENT...
	mov	1263,r13		! source line 1263
	mov	"\0\0SE",r10
!   _temp_2235 = &frameManagerLock
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
_Label_2236:
!   if numberFreeFrames >= 1 then goto _Label_2238		(int)
	load	[r14+8],r1
	load	[r1+16],r1
	mov	1,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_2238
!	jmp	_Label_2237
_Label_2237:
	mov	1266,r13		! source line 1266
	mov	"\0\0WB",r10
! SEND STATEMENT...
	mov	1267,r13		! source line 1267
	mov	"\0\0SE",r10
!   _temp_2239 = &frameManagerLock
	load	[r14+8],r1
	add	r1,20,r1
	store	r1,[r14+-28]
!   _temp_2240 = &newFramesAvailable
	load	[r14+8],r1
	add	r1,40,r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=12  value=_temp_2239  sizeInBytes=4
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
	jmp	_Label_2236
_Label_2238:
! ASSIGNMENT STATEMENT...
	mov	1271,r13		! source line 1271
	mov	"\0\0AS",r10
	mov	1271,r13		! source line 1271
	mov	"\0\0SE",r10
!   _temp_2241 = &framesInUse
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
!   _temp_2242 = &frameManagerLock
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
!   _temp_2243 = f * 8192		(int)
	load	[r14+-36],r1
	mov	8192,r2
	mul	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-12]
!   frameAddr = 1048576 + _temp_2243		(int)
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
	.word	_Label_2244
	.word	4		! total size of parameters
	.word	40		! frame size = 40
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
	.word	_Label_2252
	.word	-36
	.word	4
	.word	_Label_2253
	.word	-40
	.word	4
	.word	0
_Label_2244:
	.ascii	"FrameManager"
	.ascii	"::"
	.ascii	"GetAFrame\0"
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
	.ascii	"_temp_2235\0"
	.align
_Label_2252:
	.byte	'I'
	.ascii	"f\0"
	.align
_Label_2253:
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
_Label_3866:
	push	r0
	sub	r1,1,r1
	bne	_Label_3866
	mov	1285,r13		! source line 1285
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! SEND STATEMENT...
	mov	1290,r13		! source line 1290
	mov	"\0\0SE",r10
!   _temp_2254 = &frameManagerLock
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
_Label_2255:
!   if numberFreeFrames >= numFramesNeeded then goto _Label_2257		(int)
	load	[r14+8],r1
	load	[r1+16],r1
	load	[r14+16],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_2257
!	jmp	_Label_2256
_Label_2256:
	mov	1292,r13		! source line 1292
	mov	"\0\0WB",r10
! SEND STATEMENT...
	mov	1293,r13		! source line 1293
	mov	"\0\0SE",r10
!   _temp_2258 = &frameManagerLock
	load	[r14+8],r1
	add	r1,20,r1
	store	r1,[r14+-32]
!   _temp_2259 = &newFramesAvailable
	load	[r14+8],r1
	add	r1,40,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=12  value=_temp_2258  sizeInBytes=4
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
	jmp	_Label_2255
_Label_2257:
! ASSIGNMENT STATEMENT...
	mov	1296,r13		! source line 1296
	mov	"\0\0AS",r10
!   i = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-40]
! WHILE STATEMENT...
	mov	1296,r13		! source line 1296
	mov	"\0\0WH",r10
_Label_2260:
!   if i >= numFramesNeeded then goto _Label_2262		(int)
	load	[r14+-40],r1
	load	[r14+16],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_2262
!	jmp	_Label_2261
_Label_2261:
	mov	1296,r13		! source line 1296
	mov	"\0\0WB",r10
! ASSIGNMENT STATEMENT...
	mov	1297,r13		! source line 1297
	mov	"\0\0AS",r10
	mov	1297,r13		! source line 1297
	mov	"\0\0SE",r10
!   _temp_2263 = &framesInUse
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
!   _temp_2264 = f * 8192		(int)
	load	[r14+-44],r1
	mov	8192,r2
	mul	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-20]
!   frameAddr = 1048576 + _temp_2264		(int)
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
	jmp	_Label_2260
_Label_2262:
! ASSIGNMENT STATEMENT...
	mov	1302,r13		! source line 1302
	mov	"\0\0AS",r10
!   if intIsZero (aPageTable) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2265 = aPageTable + 4
	load	[r14+12],r1
	add	r1,4,r1
	store	r1,[r14+-16]
!   Data Move: *_temp_2265 = numFramesNeeded  (sizeInBytes=4)
	load	[r14+16],r1
	load	[r14+-16],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	1303,r13		! source line 1303
	mov	"\0\0SE",r10
!   _temp_2266 = &frameManagerLock
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
	.word	_Label_2267
	.word	12		! total size of parameters
	.word	52		! frame size = 52
	.word	_Label_2268
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2269
	.word	12
	.word	4
	.word	_Label_2270
	.word	16
	.word	4
	.word	_Label_2271
	.word	-12
	.word	4
	.word	_Label_2272
	.word	-16
	.word	4
	.word	_Label_2273
	.word	-20
	.word	4
	.word	_Label_2274
	.word	-24
	.word	4
	.word	_Label_2275
	.word	-28
	.word	4
	.word	_Label_2276
	.word	-32
	.word	4
	.word	_Label_2277
	.word	-36
	.word	4
	.word	_Label_2278
	.word	-40
	.word	4
	.word	_Label_2279
	.word	-44
	.word	4
	.word	_Label_2280
	.word	-48
	.word	4
	.word	0
_Label_2267:
	.ascii	"FrameManager"
	.ascii	"::"
	.ascii	"GetNewFrames\0"
	.align
_Label_2268:
	.ascii	"Pself\0"
	.align
_Label_2269:
	.byte	'P'
	.ascii	"aPageTable\0"
	.align
_Label_2270:
	.byte	'I'
	.ascii	"numFramesNeeded\0"
	.align
_Label_2271:
	.byte	'?'
	.ascii	"_temp_2266\0"
	.align
_Label_2272:
	.byte	'?'
	.ascii	"_temp_2265\0"
	.align
_Label_2273:
	.byte	'?'
	.ascii	"_temp_2264\0"
	.align
_Label_2274:
	.byte	'?'
	.ascii	"_temp_2263\0"
	.align
_Label_2275:
	.byte	'?'
	.ascii	"_temp_2259\0"
	.align
_Label_2276:
	.byte	'?'
	.ascii	"_temp_2258\0"
	.align
_Label_2277:
	.byte	'?'
	.ascii	"_temp_2254\0"
	.align
_Label_2278:
	.byte	'I'
	.ascii	"i\0"
	.align
_Label_2279:
	.byte	'I'
	.ascii	"f\0"
	.align
_Label_2280:
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
_Label_3867:
	push	r0
	sub	r1,1,r1
	bne	_Label_3867
	mov	1308,r13		! source line 1308
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! SEND STATEMENT...
	mov	1314,r13		! source line 1314
	mov	"\0\0SE",r10
!   _temp_2281 = &frameManagerLock
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
!   _temp_2282 = aPageTable + 4
	load	[r14+12],r1
	add	r1,4,r1
	store	r1,[r14+-32]
!   Data Move: pageToBeReturned = *_temp_2282  (sizeInBytes=4)
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
_Label_2283:
!   if i >= pageToBeReturned then goto _Label_2285		(int)
	load	[r14+-44],r1
	load	[r14+-40],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_2285
!	jmp	_Label_2284
_Label_2284:
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
!   _temp_2286 = frameAddr - 1048576		(int)
	load	[r14+-48],r1
	set	1048576,r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-28]
!   bitNumber = _temp_2286 div 8192		(int)
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
!   _temp_2287 = &framesInUse
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
!   _temp_2288 = &frameManagerLock
	load	[r14+8],r1
	add	r1,20,r1
	store	r1,[r14+-20]
!   _temp_2289 = &newFramesAvailable
	load	[r14+8],r1
	add	r1,40,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=12  value=_temp_2288  sizeInBytes=4
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
	jmp	_Label_2283
_Label_2285:
! SEND STATEMENT...
	mov	1323,r13		! source line 1323
	mov	"\0\0SE",r10
!   _temp_2290 = &frameManagerLock
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
	.word	_Label_2291
	.word	8		! total size of parameters
	.word	52		! frame size = 52
	.word	_Label_2292
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2293
	.word	12
	.word	4
	.word	_Label_2294
	.word	-12
	.word	4
	.word	_Label_2295
	.word	-16
	.word	4
	.word	_Label_2296
	.word	-20
	.word	4
	.word	_Label_2297
	.word	-24
	.word	4
	.word	_Label_2298
	.word	-28
	.word	4
	.word	_Label_2299
	.word	-32
	.word	4
	.word	_Label_2300
	.word	-36
	.word	4
	.word	_Label_2301
	.word	-40
	.word	4
	.word	_Label_2302
	.word	-44
	.word	4
	.word	_Label_2303
	.word	-48
	.word	4
	.word	_Label_2304
	.word	-52
	.word	4
	.word	0
_Label_2291:
	.ascii	"FrameManager"
	.ascii	"::"
	.ascii	"ReturnAllFrames\0"
	.align
_Label_2292:
	.ascii	"Pself\0"
	.align
_Label_2293:
	.byte	'P'
	.ascii	"aPageTable\0"
	.align
_Label_2294:
	.byte	'?'
	.ascii	"_temp_2290\0"
	.align
_Label_2295:
	.byte	'?'
	.ascii	"_temp_2289\0"
	.align
_Label_2296:
	.byte	'?'
	.ascii	"_temp_2288\0"
	.align
_Label_2297:
	.byte	'?'
	.ascii	"_temp_2287\0"
	.align
_Label_2298:
	.byte	'?'
	.ascii	"_temp_2286\0"
	.align
_Label_2299:
	.byte	'?'
	.ascii	"_temp_2282\0"
	.align
_Label_2300:
	.byte	'?'
	.ascii	"_temp_2281\0"
	.align
_Label_2301:
	.byte	'I'
	.ascii	"pageToBeReturned\0"
	.align
_Label_2302:
	.byte	'I'
	.ascii	"i\0"
	.align
_Label_2303:
	.byte	'I'
	.ascii	"frameAddr\0"
	.align
_Label_2304:
	.byte	'I'
	.ascii	"bitNumber\0"
	.align
! 
! ===============  CLASS AddrSpace  ===============
! 
! Dispatch Table:
! 
_P_Kernel_AddrSpace:
	.word	_Label_2305
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
_Label_2305:
	.word	1129070931		! Magic number 0x434c4153 == 'CLAS'
	.word	_Label_2306
	.word	_sourceFileName
	.word	280		! line number
	.word	92		! size of instances, in bytes
	.word	_P_Kernel_AddrSpace
	.word	_P_System_Object
	.word	0
_Label_2306:
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
_Label_3868:
	push	r0
	sub	r1,1,r1
	bne	_Label_3868
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
!   _temp_2307 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-108]
!   NEW ARRAY Constructor...
!   _temp_2309 = &_temp_2308
	add	r14,-104,r1
	store	r1,[r14+-20]
!   _temp_2309 = _temp_2309 + 4
	load	[r14+-20],r1
	add	r1,4,r1
	store	r1,[r14+-20]
!   Next value...
	mov	20,r1
	store	r1,[r14+-16]
_Label_2311:
!   Data Move: *_temp_2309 = 3  (sizeInBytes=4)
	mov	3,r1
	load	[r14+-20],r2
	store	r1,[r2]
!   _temp_2309 = _temp_2309 + 4
	load	[r14+-20],r1
	add	r1,4,r1
	store	r1,[r14+-20]
!   _temp_2310 = _temp_2310 + -1
	load	[r14+-16],r1
	add	r1,-1,r1
	store	r1,[r14+-16]
!   if intNotZero (_temp_2310) then goto _Label_2311
	load	[r14+-16],r1
	cmp	r1,r0
	bne	_Label_2311
!   Initialize the array size...
	mov	20,r1
	store	r1,[r14+-104]
!   _temp_2312 = &_temp_2308
	add	r14,-104,r1
	store	r1,[r14+-12]
!   make sure array has size 20
	load	[r14+-108],r1
	load	[r1],r1
	set	20, r2
	cmp	r1,0
	be	_Label_3869
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bne	_runtimeErrorWrongArraySize
_Label_3869:
!   make sure array has size 20
	load	[r14+-12],r1
	load	[r1],r1
	set	20, r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bne	_runtimeErrorWrongArraySize
!   Data Move: *_temp_2307 = *_temp_2312  (sizeInBytes=84)
	load	[r14+-12],r5
	load	[r14+-108],r4
	mov	21,r3
_Label_3870:
	load	[r5],r1
	add	r5,4,r5
	store	r1,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_3870
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
	.word	_Label_2313
	.word	4		! total size of parameters
	.word	100		! frame size = 100
	.word	_Label_2314
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2315
	.word	-12
	.word	4
	.word	_Label_2316
	.word	-16
	.word	4
	.word	_Label_2317
	.word	-20
	.word	4
	.word	_Label_2318
	.word	-104
	.word	84
	.word	_Label_2319
	.word	-108
	.word	4
	.word	0
_Label_2313:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"Init\0"
	.align
_Label_2314:
	.ascii	"Pself\0"
	.align
_Label_2315:
	.byte	'?'
	.ascii	"_temp_2312\0"
	.align
_Label_2316:
	.byte	'?'
	.ascii	"_temp_2310\0"
	.align
_Label_2317:
	.byte	'?'
	.ascii	"_temp_2309\0"
	.align
_Label_2318:
	.byte	'?'
	.ascii	"_temp_2308\0"
	.align
_Label_2319:
	.byte	'?'
	.ascii	"_temp_2307\0"
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
_Label_3871:
	push	r0
	sub	r1,1,r1
	bne	_Label_3871
	mov	1344,r13		! source line 1344
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   _temp_2320 = _StringConst_111
	set	_StringConst_111,r1
	store	r1,[r14+-164]
!   Prepare Argument: offset=8  value=_temp_2320  sizeInBytes=4
	load	[r14+-164],r1
	store	r1,[r15+0]
!   Call the function
	mov	1349,r13		! source line 1349
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_2321 = _StringConst_112
	set	_StringConst_112,r1
	store	r1,[r14+-160]
!   Prepare Argument: offset=8  value=_temp_2321  sizeInBytes=4
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
!   _temp_2326 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-156]
!   Calculate and save the FOR-LOOP ending value
!   _temp_2327 = numberOfPages - 1		(int)
	load	[r14+8],r1
	load	[r1+4],r1
	mov	1,r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-152]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_2326  (sizeInBytes=4)
	load	[r14+-156],r1
	store	r1,[r14+-168]
_Label_2322:
!   Perform the FOR-LOOP termination test
!   if i > _temp_2327 then goto _Label_2325		
	load	[r14+-168],r1
	load	[r14+-152],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_2325
_Label_2323:
	mov	1351,r13		! source line 1351
	mov	"\0\0FB",r10
! CALL STATEMENT...
!   _temp_2328 = _StringConst_113
	set	_StringConst_113,r1
	store	r1,[r14+-148]
!   Prepare Argument: offset=8  value=_temp_2328  sizeInBytes=4
	load	[r14+-148],r1
	store	r1,[r15+0]
!   Call the function
	mov	1352,r13		! source line 1352
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_2330 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-140]
!   Move address of _temp_2330 [i ] into _temp_2331
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
!   _temp_2329 = _temp_2331		(4 bytes)
	load	[r14+-136],r1
	store	r1,[r14+-144]
!   Prepare Argument: offset=8  value=_temp_2329  sizeInBytes=4
	load	[r14+-144],r1
	store	r1,[r15+0]
!   Call the function
	mov	1353,r13		! source line 1353
	mov	"\0\0CE",r10
	call	printHex
! CALL STATEMENT...
!   _temp_2332 = _StringConst_114
	set	_StringConst_114,r1
	store	r1,[r14+-132]
!   Prepare Argument: offset=8  value=_temp_2332  sizeInBytes=4
	load	[r14+-132],r1
	store	r1,[r15+0]
!   Call the function
	mov	1354,r13		! source line 1354
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_2334 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-124]
!   Move address of _temp_2334 [i ] into _temp_2335
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
!   Data Move: _temp_2333 = *_temp_2335  (sizeInBytes=4)
	load	[r14+-120],r1
	load	[r1],r1
	store	r1,[r14+-128]
!   Prepare Argument: offset=8  value=_temp_2333  sizeInBytes=4
	load	[r14+-128],r1
	store	r1,[r15+0]
!   Call the function
	mov	1355,r13		! source line 1355
	mov	"\0\0CE",r10
	call	printHex
! CALL STATEMENT...
!   _temp_2336 = _StringConst_115
	set	_StringConst_115,r1
	store	r1,[r14+-116]
!   Prepare Argument: offset=8  value=_temp_2336  sizeInBytes=4
	load	[r14+-116],r1
	store	r1,[r15+0]
!   Call the function
	mov	1356,r13		! source line 1356
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_2337 = i * 8192		(int)
	load	[r14+-168],r1
	mov	8192,r2
	mul	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-112]
!   Prepare Argument: offset=8  value=_temp_2337  sizeInBytes=4
	load	[r14+-112],r1
	store	r1,[r15+0]
!   Call the function
	mov	1357,r13		! source line 1357
	mov	"\0\0CE",r10
	call	printHex
! CALL STATEMENT...
!   _temp_2338 = _StringConst_116
	set	_StringConst_116,r1
	store	r1,[r14+-108]
!   Prepare Argument: offset=8  value=_temp_2338  sizeInBytes=4
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
!   if intIsZero (_temp_2340) then goto _runtimeErrorNullPointer
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
!   Retrieve Result: targetName=_temp_2339  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-104]
!   Prepare Argument: offset=8  value=_temp_2339  sizeInBytes=4
	load	[r14+-104],r1
	store	r1,[r15+0]
!   Call the function
	mov	1359,r13		! source line 1359
	mov	"\0\0CE",r10
	call	printHex
! CALL STATEMENT...
!   _temp_2341 = _StringConst_117
	set	_StringConst_117,r1
	store	r1,[r14+-96]
!   Prepare Argument: offset=8  value=_temp_2341  sizeInBytes=4
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
!   if intIsZero (_temp_2345) then goto _runtimeErrorNullPointer
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
!   Retrieve Result: targetName=_temp_2344  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-92]
!   if intIsZero (_temp_2344) then goto _Label_2343
	load	[r14+-92],r1
	cmp	r1,r0
	be	_Label_2343
!	jmp	_Label_2342
_Label_2342:
! THEN...
	mov	1362,r13		! source line 1362
	mov	"\0\0TN",r10
! CALL STATEMENT...
	mov	1362,r13		! source line 1362
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-80]
!   if intIsZero (_temp_2347) then goto _runtimeErrorNullPointer
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
!   Retrieve Result: targetName=_temp_2346  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-84]
!   Prepare Argument: offset=8  value=_temp_2346  sizeInBytes=4
	load	[r14+-84],r1
	store	r1,[r15+0]
!   Call the function
	mov	1362,r13		! source line 1362
	mov	"\0\0CE",r10
	call	printHex
	jmp	_Label_2348
_Label_2343:
! ELSE...
	mov	1364,r13		! source line 1364
	mov	"\0\0EL",r10
! CALL STATEMENT...
!   _temp_2349 = _StringConst_118
	set	_StringConst_118,r1
	store	r1,[r14+-76]
!   Prepare Argument: offset=8  value=_temp_2349  sizeInBytes=4
	load	[r14+-76],r1
	store	r1,[r15+0]
!   Call the function
	mov	1364,r13		! source line 1364
	mov	"\0\0CE",r10
	call	print
! END IF...
_Label_2348:
! CALL STATEMENT...
!   _temp_2350 = _StringConst_119
	set	_StringConst_119,r1
	store	r1,[r14+-72]
!   Prepare Argument: offset=8  value=_temp_2350  sizeInBytes=4
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
!   if intIsZero (_temp_2353) then goto _runtimeErrorNullPointer
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
!   if result==true then goto _Label_2351 else goto _Label_2352
	loadb	[r15],r1
	cmp	r1,0
	be	_Label_2352
	jmp	_Label_2351
_Label_2351:
! THEN...
	mov	1368,r13		! source line 1368
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_2354 = _StringConst_120
	set	_StringConst_120,r1
	store	r1,[r14+-64]
!   Prepare Argument: offset=8  value=_temp_2354  sizeInBytes=4
	load	[r14+-64],r1
	store	r1,[r15+0]
!   Call the function
	mov	1368,r13		! source line 1368
	mov	"\0\0CE",r10
	call	print
	jmp	_Label_2355
_Label_2352:
! ELSE...
	mov	1370,r13		! source line 1370
	mov	"\0\0EL",r10
! CALL STATEMENT...
!   _temp_2356 = _StringConst_121
	set	_StringConst_121,r1
	store	r1,[r14+-60]
!   Prepare Argument: offset=8  value=_temp_2356  sizeInBytes=4
	load	[r14+-60],r1
	store	r1,[r15+0]
!   Call the function
	mov	1370,r13		! source line 1370
	mov	"\0\0CE",r10
	call	print
! END IF...
_Label_2355:
! CALL STATEMENT...
!   _temp_2357 = _StringConst_122
	set	_StringConst_122,r1
	store	r1,[r14+-56]
!   Prepare Argument: offset=8  value=_temp_2357  sizeInBytes=4
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
!   if intIsZero (_temp_2360) then goto _runtimeErrorNullPointer
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
!   if result==true then goto _Label_2358 else goto _Label_2359
	loadb	[r15],r1
	cmp	r1,0
	be	_Label_2359
	jmp	_Label_2358
_Label_2358:
! THEN...
	mov	1374,r13		! source line 1374
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_2361 = _StringConst_123
	set	_StringConst_123,r1
	store	r1,[r14+-48]
!   Prepare Argument: offset=8  value=_temp_2361  sizeInBytes=4
	load	[r14+-48],r1
	store	r1,[r15+0]
!   Call the function
	mov	1374,r13		! source line 1374
	mov	"\0\0CE",r10
	call	print
	jmp	_Label_2362
_Label_2359:
! ELSE...
	mov	1376,r13		! source line 1376
	mov	"\0\0EL",r10
! CALL STATEMENT...
!   _temp_2363 = _StringConst_124
	set	_StringConst_124,r1
	store	r1,[r14+-44]
!   Prepare Argument: offset=8  value=_temp_2363  sizeInBytes=4
	load	[r14+-44],r1
	store	r1,[r15+0]
!   Call the function
	mov	1376,r13		! source line 1376
	mov	"\0\0CE",r10
	call	print
! END IF...
_Label_2362:
! CALL STATEMENT...
!   _temp_2364 = _StringConst_125
	set	_StringConst_125,r1
	store	r1,[r14+-40]
!   Prepare Argument: offset=8  value=_temp_2364  sizeInBytes=4
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
!   if intIsZero (_temp_2367) then goto _runtimeErrorNullPointer
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
!   if result==true then goto _Label_2365 else goto _Label_2366
	loadb	[r15],r1
	cmp	r1,0
	be	_Label_2366
	jmp	_Label_2365
_Label_2365:
! THEN...
	mov	1380,r13		! source line 1380
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_2368 = _StringConst_126
	set	_StringConst_126,r1
	store	r1,[r14+-32]
!   Prepare Argument: offset=8  value=_temp_2368  sizeInBytes=4
	load	[r14+-32],r1
	store	r1,[r15+0]
!   Call the function
	mov	1380,r13		! source line 1380
	mov	"\0\0CE",r10
	call	print
	jmp	_Label_2369
_Label_2366:
! ELSE...
	mov	1382,r13		! source line 1382
	mov	"\0\0EL",r10
! CALL STATEMENT...
!   _temp_2370 = _StringConst_127
	set	_StringConst_127,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=8  value=_temp_2370  sizeInBytes=4
	load	[r14+-28],r1
	store	r1,[r15+0]
!   Call the function
	mov	1382,r13		! source line 1382
	mov	"\0\0CE",r10
	call	print
! END IF...
_Label_2369:
! CALL STATEMENT...
!   _temp_2371 = _StringConst_128
	set	_StringConst_128,r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=8  value=_temp_2371  sizeInBytes=4
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
!   if intIsZero (_temp_2374) then goto _runtimeErrorNullPointer
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
!   if result==true then goto _Label_2372 else goto _Label_2373
	loadb	[r15],r1
	cmp	r1,0
	be	_Label_2373
	jmp	_Label_2372
_Label_2372:
! THEN...
	mov	1386,r13		! source line 1386
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_2375 = _StringConst_129
	set	_StringConst_129,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_2375  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+0]
!   Call the function
	mov	1386,r13		! source line 1386
	mov	"\0\0CE",r10
	call	print
	jmp	_Label_2376
_Label_2373:
! ELSE...
	mov	1388,r13		! source line 1388
	mov	"\0\0EL",r10
! CALL STATEMENT...
!   _temp_2377 = _StringConst_130
	set	_StringConst_130,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_2377  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	1388,r13		! source line 1388
	mov	"\0\0CE",r10
	call	print
! END IF...
_Label_2376:
! CALL STATEMENT...
!   Call the function
	mov	1390,r13		! source line 1390
	mov	"\0\0CA",r10
	call	_P_System_nl
!   Increment the FOR-LOOP index variable and jump back
_Label_2324:
!   i = i + 1
	load	[r14+-168],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-168]
	jmp	_Label_2322
! END FOR
_Label_2325:
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
	.word	_Label_2378
	.word	4		! total size of parameters
	.word	168		! frame size = 168
	.word	_Label_2379
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2380
	.word	-12
	.word	4
	.word	_Label_2381
	.word	-16
	.word	4
	.word	_Label_2382
	.word	-20
	.word	4
	.word	_Label_2383
	.word	-24
	.word	4
	.word	_Label_2384
	.word	-28
	.word	4
	.word	_Label_2385
	.word	-32
	.word	4
	.word	_Label_2386
	.word	-36
	.word	4
	.word	_Label_2387
	.word	-40
	.word	4
	.word	_Label_2388
	.word	-44
	.word	4
	.word	_Label_2389
	.word	-48
	.word	4
	.word	_Label_2390
	.word	-52
	.word	4
	.word	_Label_2391
	.word	-56
	.word	4
	.word	_Label_2392
	.word	-60
	.word	4
	.word	_Label_2393
	.word	-64
	.word	4
	.word	_Label_2394
	.word	-68
	.word	4
	.word	_Label_2395
	.word	-72
	.word	4
	.word	_Label_2396
	.word	-76
	.word	4
	.word	_Label_2397
	.word	-80
	.word	4
	.word	_Label_2398
	.word	-84
	.word	4
	.word	_Label_2399
	.word	-88
	.word	4
	.word	_Label_2400
	.word	-92
	.word	4
	.word	_Label_2401
	.word	-96
	.word	4
	.word	_Label_2402
	.word	-100
	.word	4
	.word	_Label_2403
	.word	-104
	.word	4
	.word	_Label_2404
	.word	-108
	.word	4
	.word	_Label_2405
	.word	-112
	.word	4
	.word	_Label_2406
	.word	-116
	.word	4
	.word	_Label_2407
	.word	-120
	.word	4
	.word	_Label_2408
	.word	-124
	.word	4
	.word	_Label_2409
	.word	-128
	.word	4
	.word	_Label_2410
	.word	-132
	.word	4
	.word	_Label_2411
	.word	-136
	.word	4
	.word	_Label_2412
	.word	-140
	.word	4
	.word	_Label_2413
	.word	-144
	.word	4
	.word	_Label_2414
	.word	-148
	.word	4
	.word	_Label_2415
	.word	-152
	.word	4
	.word	_Label_2416
	.word	-156
	.word	4
	.word	_Label_2417
	.word	-160
	.word	4
	.word	_Label_2418
	.word	-164
	.word	4
	.word	_Label_2419
	.word	-168
	.word	4
	.word	0
_Label_2378:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"Print\0"
	.align
_Label_2379:
	.ascii	"Pself\0"
	.align
_Label_2380:
	.byte	'?'
	.ascii	"_temp_2377\0"
	.align
_Label_2381:
	.byte	'?'
	.ascii	"_temp_2375\0"
	.align
_Label_2382:
	.byte	'?'
	.ascii	"_temp_2374\0"
	.align
_Label_2383:
	.byte	'?'
	.ascii	"_temp_2371\0"
	.align
_Label_2384:
	.byte	'?'
	.ascii	"_temp_2370\0"
	.align
_Label_2385:
	.byte	'?'
	.ascii	"_temp_2368\0"
	.align
_Label_2386:
	.byte	'?'
	.ascii	"_temp_2367\0"
	.align
_Label_2387:
	.byte	'?'
	.ascii	"_temp_2364\0"
	.align
_Label_2388:
	.byte	'?'
	.ascii	"_temp_2363\0"
	.align
_Label_2389:
	.byte	'?'
	.ascii	"_temp_2361\0"
	.align
_Label_2390:
	.byte	'?'
	.ascii	"_temp_2360\0"
	.align
_Label_2391:
	.byte	'?'
	.ascii	"_temp_2357\0"
	.align
_Label_2392:
	.byte	'?'
	.ascii	"_temp_2356\0"
	.align
_Label_2393:
	.byte	'?'
	.ascii	"_temp_2354\0"
	.align
_Label_2394:
	.byte	'?'
	.ascii	"_temp_2353\0"
	.align
_Label_2395:
	.byte	'?'
	.ascii	"_temp_2350\0"
	.align
_Label_2396:
	.byte	'?'
	.ascii	"_temp_2349\0"
	.align
_Label_2397:
	.byte	'?'
	.ascii	"_temp_2347\0"
	.align
_Label_2398:
	.byte	'?'
	.ascii	"_temp_2346\0"
	.align
_Label_2399:
	.byte	'?'
	.ascii	"_temp_2345\0"
	.align
_Label_2400:
	.byte	'?'
	.ascii	"_temp_2344\0"
	.align
_Label_2401:
	.byte	'?'
	.ascii	"_temp_2341\0"
	.align
_Label_2402:
	.byte	'?'
	.ascii	"_temp_2340\0"
	.align
_Label_2403:
	.byte	'?'
	.ascii	"_temp_2339\0"
	.align
_Label_2404:
	.byte	'?'
	.ascii	"_temp_2338\0"
	.align
_Label_2405:
	.byte	'?'
	.ascii	"_temp_2337\0"
	.align
_Label_2406:
	.byte	'?'
	.ascii	"_temp_2336\0"
	.align
_Label_2407:
	.byte	'?'
	.ascii	"_temp_2335\0"
	.align
_Label_2408:
	.byte	'?'
	.ascii	"_temp_2334\0"
	.align
_Label_2409:
	.byte	'?'
	.ascii	"_temp_2333\0"
	.align
_Label_2410:
	.byte	'?'
	.ascii	"_temp_2332\0"
	.align
_Label_2411:
	.byte	'?'
	.ascii	"_temp_2331\0"
	.align
_Label_2412:
	.byte	'?'
	.ascii	"_temp_2330\0"
	.align
_Label_2413:
	.byte	'?'
	.ascii	"_temp_2329\0"
	.align
_Label_2414:
	.byte	'?'
	.ascii	"_temp_2328\0"
	.align
_Label_2415:
	.byte	'?'
	.ascii	"_temp_2327\0"
	.align
_Label_2416:
	.byte	'?'
	.ascii	"_temp_2326\0"
	.align
_Label_2417:
	.byte	'?'
	.ascii	"_temp_2321\0"
	.align
_Label_2418:
	.byte	'?'
	.ascii	"_temp_2320\0"
	.align
_Label_2419:
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
_Label_3872:
	push	r0
	sub	r1,1,r1
	bne	_Label_3872
	mov	1396,r13		! source line 1396
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! RETURN STATEMENT...
	mov	1401,r13		! source line 1401
	mov	"\0\0RE",r10
!   _temp_2422 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-16]
!   Move address of _temp_2422 [entry ] into _temp_2423
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
!   Data Move: _temp_2421 = *_temp_2423  (sizeInBytes=4)
	load	[r14+-12],r1
	load	[r1],r1
	store	r1,[r14+-20]
!   _temp_2420 = _temp_2421 AND -8192		(int)
	load	[r14+-20],r1
	mov	-8192,r2
	and	r1,r2,r1
	store	r1,[r14+-24]
!   ReturnResult: _temp_2420  (sizeInBytes=4)
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
	.word	_Label_2424
	.word	8		! total size of parameters
	.word	16		! frame size = 16
	.word	_Label_2425
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2426
	.word	12
	.word	4
	.word	_Label_2427
	.word	-12
	.word	4
	.word	_Label_2428
	.word	-16
	.word	4
	.word	_Label_2429
	.word	-20
	.word	4
	.word	_Label_2430
	.word	-24
	.word	4
	.word	0
_Label_2424:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"ExtractFrameAddr\0"
	.align
_Label_2425:
	.ascii	"Pself\0"
	.align
_Label_2426:
	.byte	'I'
	.ascii	"entry\0"
	.align
_Label_2427:
	.byte	'?'
	.ascii	"_temp_2423\0"
	.align
_Label_2428:
	.byte	'?'
	.ascii	"_temp_2422\0"
	.align
_Label_2429:
	.byte	'?'
	.ascii	"_temp_2421\0"
	.align
_Label_2430:
	.byte	'?'
	.ascii	"_temp_2420\0"
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
_Label_3873:
	push	r0
	sub	r1,1,r1
	bne	_Label_3873
	mov	1406,r13		! source line 1406
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! RETURN STATEMENT...
	mov	1410,r13		! source line 1410
	mov	"\0\0RE",r10
!   _temp_2433 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-16]
!   Move address of _temp_2433 [entry ] into _temp_2434
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
!   Data Move: _temp_2432 = *_temp_2434  (sizeInBytes=4)
	load	[r14+-12],r1
	load	[r1],r1
	store	r1,[r14+-20]
!   _temp_2431 = _temp_2432 AND 8176		(int)
	load	[r14+-20],r1
	mov	8176,r2
	and	r1,r2,r1
	store	r1,[r14+-24]
!   ReturnResult: _temp_2431  (sizeInBytes=4)
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
	.word	_Label_2435
	.word	8		! total size of parameters
	.word	16		! frame size = 16
	.word	_Label_2436
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2437
	.word	12
	.word	4
	.word	_Label_2438
	.word	-12
	.word	4
	.word	_Label_2439
	.word	-16
	.word	4
	.word	_Label_2440
	.word	-20
	.word	4
	.word	_Label_2441
	.word	-24
	.word	4
	.word	0
_Label_2435:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"ExtractUndefinedBits\0"
	.align
_Label_2436:
	.ascii	"Pself\0"
	.align
_Label_2437:
	.byte	'I'
	.ascii	"entry\0"
	.align
_Label_2438:
	.byte	'?'
	.ascii	"_temp_2434\0"
	.align
_Label_2439:
	.byte	'?'
	.ascii	"_temp_2433\0"
	.align
_Label_2440:
	.byte	'?'
	.ascii	"_temp_2432\0"
	.align
_Label_2441:
	.byte	'?'
	.ascii	"_temp_2431\0"
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
_Label_3874:
	push	r0
	sub	r1,1,r1
	bne	_Label_3874
	mov	1415,r13		! source line 1415
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1420,r13		! source line 1420
	mov	"\0\0AS",r10
!   _temp_2442 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-36]
!   Move address of _temp_2442 [entry ] into _temp_2443
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
!   _temp_2447 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-16]
!   Move address of _temp_2447 [entry ] into _temp_2448
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
!   Data Move: _temp_2446 = *_temp_2448  (sizeInBytes=4)
	load	[r14+-12],r1
	load	[r1],r1
	store	r1,[r14+-20]
!   _temp_2445 = _temp_2446 AND 8191		(int)
	load	[r14+-20],r1
	mov	8191,r2
	and	r1,r2,r1
	store	r1,[r14+-24]
!   _temp_2444 = _temp_2445 OR frameAddr		(int)
	load	[r14+-24],r1
	load	[r14+16],r2
	or	r1,r2,r1
	store	r1,[r14+-28]
!   Data Move: *_temp_2443 = _temp_2444  (sizeInBytes=4)
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
	.word	_Label_2449
	.word	12		! total size of parameters
	.word	28		! frame size = 28
	.word	_Label_2450
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2451
	.word	12
	.word	4
	.word	_Label_2452
	.word	16
	.word	4
	.word	_Label_2453
	.word	-12
	.word	4
	.word	_Label_2454
	.word	-16
	.word	4
	.word	_Label_2455
	.word	-20
	.word	4
	.word	_Label_2456
	.word	-24
	.word	4
	.word	_Label_2457
	.word	-28
	.word	4
	.word	_Label_2458
	.word	-32
	.word	4
	.word	_Label_2459
	.word	-36
	.word	4
	.word	0
_Label_2449:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"SetFrameAddr\0"
	.align
_Label_2450:
	.ascii	"Pself\0"
	.align
_Label_2451:
	.byte	'I'
	.ascii	"entry\0"
	.align
_Label_2452:
	.byte	'I'
	.ascii	"frameAddr\0"
	.align
_Label_2453:
	.byte	'?'
	.ascii	"_temp_2448\0"
	.align
_Label_2454:
	.byte	'?'
	.ascii	"_temp_2447\0"
	.align
_Label_2455:
	.byte	'?'
	.ascii	"_temp_2446\0"
	.align
_Label_2456:
	.byte	'?'
	.ascii	"_temp_2445\0"
	.align
_Label_2457:
	.byte	'?'
	.ascii	"_temp_2444\0"
	.align
_Label_2458:
	.byte	'?'
	.ascii	"_temp_2443\0"
	.align
_Label_2459:
	.byte	'?'
	.ascii	"_temp_2442\0"
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
_Label_3875:
	push	r0
	sub	r1,1,r1
	bne	_Label_3875
	mov	1425,r13		! source line 1425
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! RETURN STATEMENT...
	mov	1429,r13		! source line 1429
	mov	"\0\0RE",r10
!   _temp_2463 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-20]
!   Move address of _temp_2463 [entry ] into _temp_2464
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
!   Data Move: _temp_2462 = *_temp_2464  (sizeInBytes=4)
	load	[r14+-16],r1
	load	[r1],r1
	store	r1,[r14+-24]
!   _temp_2461 = _temp_2462 AND 8		(int)
	load	[r14+-24],r1
	mov	8,r2
	and	r1,r2,r1
	store	r1,[r14+-28]
!   if intIsZero (_temp_2461) then goto _Label_2465
	load	[r14+-28],r1
	cmp	r1,r0
	be	_Label_2465
!   _temp_2460 = 1		(1 byte)
	mov	1,r1
	storeb	r1,[r14+-9]
	jmp	_Label_2466
_Label_2465:
!   _temp_2460 = 0		(1 byte)
	mov	0,r1
	storeb	r1,[r14+-9]
_Label_2466:
!   ReturnResult: _temp_2460  (sizeInBytes=1)
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
	.word	_Label_2467
	.word	8		! total size of parameters
	.word	20		! frame size = 20
	.word	_Label_2468
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2469
	.word	12
	.word	4
	.word	_Label_2470
	.word	-16
	.word	4
	.word	_Label_2471
	.word	-20
	.word	4
	.word	_Label_2472
	.word	-24
	.word	4
	.word	_Label_2473
	.word	-28
	.word	4
	.word	_Label_2474
	.word	-9
	.word	1
	.word	0
_Label_2467:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"IsDirty\0"
	.align
_Label_2468:
	.ascii	"Pself\0"
	.align
_Label_2469:
	.byte	'I'
	.ascii	"entry\0"
	.align
_Label_2470:
	.byte	'?'
	.ascii	"_temp_2464\0"
	.align
_Label_2471:
	.byte	'?'
	.ascii	"_temp_2463\0"
	.align
_Label_2472:
	.byte	'?'
	.ascii	"_temp_2462\0"
	.align
_Label_2473:
	.byte	'?'
	.ascii	"_temp_2461\0"
	.align
_Label_2474:
	.byte	'C'
	.ascii	"_temp_2460\0"
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
_Label_3876:
	push	r0
	sub	r1,1,r1
	bne	_Label_3876
	mov	1434,r13		! source line 1434
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! RETURN STATEMENT...
	mov	1438,r13		! source line 1438
	mov	"\0\0RE",r10
!   _temp_2478 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-20]
!   Move address of _temp_2478 [entry ] into _temp_2479
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
!   Data Move: _temp_2477 = *_temp_2479  (sizeInBytes=4)
	load	[r14+-16],r1
	load	[r1],r1
	store	r1,[r14+-24]
!   _temp_2476 = _temp_2477 AND 4		(int)
	load	[r14+-24],r1
	mov	4,r2
	and	r1,r2,r1
	store	r1,[r14+-28]
!   if intIsZero (_temp_2476) then goto _Label_2480
	load	[r14+-28],r1
	cmp	r1,r0
	be	_Label_2480
!   _temp_2475 = 1		(1 byte)
	mov	1,r1
	storeb	r1,[r14+-9]
	jmp	_Label_2481
_Label_2480:
!   _temp_2475 = 0		(1 byte)
	mov	0,r1
	storeb	r1,[r14+-9]
_Label_2481:
!   ReturnResult: _temp_2475  (sizeInBytes=1)
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
	.word	_Label_2482
	.word	8		! total size of parameters
	.word	20		! frame size = 20
	.word	_Label_2483
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2484
	.word	12
	.word	4
	.word	_Label_2485
	.word	-16
	.word	4
	.word	_Label_2486
	.word	-20
	.word	4
	.word	_Label_2487
	.word	-24
	.word	4
	.word	_Label_2488
	.word	-28
	.word	4
	.word	_Label_2489
	.word	-9
	.word	1
	.word	0
_Label_2482:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"IsReferenced\0"
	.align
_Label_2483:
	.ascii	"Pself\0"
	.align
_Label_2484:
	.byte	'I'
	.ascii	"entry\0"
	.align
_Label_2485:
	.byte	'?'
	.ascii	"_temp_2479\0"
	.align
_Label_2486:
	.byte	'?'
	.ascii	"_temp_2478\0"
	.align
_Label_2487:
	.byte	'?'
	.ascii	"_temp_2477\0"
	.align
_Label_2488:
	.byte	'?'
	.ascii	"_temp_2476\0"
	.align
_Label_2489:
	.byte	'C'
	.ascii	"_temp_2475\0"
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
_Label_3877:
	push	r0
	sub	r1,1,r1
	bne	_Label_3877
	mov	1443,r13		! source line 1443
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! RETURN STATEMENT...
	mov	1447,r13		! source line 1447
	mov	"\0\0RE",r10
!   _temp_2493 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-20]
!   Move address of _temp_2493 [entry ] into _temp_2494
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
!   Data Move: _temp_2492 = *_temp_2494  (sizeInBytes=4)
	load	[r14+-16],r1
	load	[r1],r1
	store	r1,[r14+-24]
!   _temp_2491 = _temp_2492 AND 2		(int)
	load	[r14+-24],r1
	mov	2,r2
	and	r1,r2,r1
	store	r1,[r14+-28]
!   if intIsZero (_temp_2491) then goto _Label_2495
	load	[r14+-28],r1
	cmp	r1,r0
	be	_Label_2495
!   _temp_2490 = 1		(1 byte)
	mov	1,r1
	storeb	r1,[r14+-9]
	jmp	_Label_2496
_Label_2495:
!   _temp_2490 = 0		(1 byte)
	mov	0,r1
	storeb	r1,[r14+-9]
_Label_2496:
!   ReturnResult: _temp_2490  (sizeInBytes=1)
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
	.word	_Label_2497
	.word	8		! total size of parameters
	.word	20		! frame size = 20
	.word	_Label_2498
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2499
	.word	12
	.word	4
	.word	_Label_2500
	.word	-16
	.word	4
	.word	_Label_2501
	.word	-20
	.word	4
	.word	_Label_2502
	.word	-24
	.word	4
	.word	_Label_2503
	.word	-28
	.word	4
	.word	_Label_2504
	.word	-9
	.word	1
	.word	0
_Label_2497:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"IsWritable\0"
	.align
_Label_2498:
	.ascii	"Pself\0"
	.align
_Label_2499:
	.byte	'I'
	.ascii	"entry\0"
	.align
_Label_2500:
	.byte	'?'
	.ascii	"_temp_2494\0"
	.align
_Label_2501:
	.byte	'?'
	.ascii	"_temp_2493\0"
	.align
_Label_2502:
	.byte	'?'
	.ascii	"_temp_2492\0"
	.align
_Label_2503:
	.byte	'?'
	.ascii	"_temp_2491\0"
	.align
_Label_2504:
	.byte	'C'
	.ascii	"_temp_2490\0"
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
_Label_3878:
	push	r0
	sub	r1,1,r1
	bne	_Label_3878
	mov	1452,r13		! source line 1452
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! RETURN STATEMENT...
	mov	1456,r13		! source line 1456
	mov	"\0\0RE",r10
!   _temp_2508 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-20]
!   Move address of _temp_2508 [entry ] into _temp_2509
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
!   Data Move: _temp_2507 = *_temp_2509  (sizeInBytes=4)
	load	[r14+-16],r1
	load	[r1],r1
	store	r1,[r14+-24]
!   _temp_2506 = _temp_2507 AND 1		(int)
	load	[r14+-24],r1
	mov	1,r2
	and	r1,r2,r1
	store	r1,[r14+-28]
!   if intIsZero (_temp_2506) then goto _Label_2510
	load	[r14+-28],r1
	cmp	r1,r0
	be	_Label_2510
!   _temp_2505 = 1		(1 byte)
	mov	1,r1
	storeb	r1,[r14+-9]
	jmp	_Label_2511
_Label_2510:
!   _temp_2505 = 0		(1 byte)
	mov	0,r1
	storeb	r1,[r14+-9]
_Label_2511:
!   ReturnResult: _temp_2505  (sizeInBytes=1)
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
	.word	_Label_2512
	.word	8		! total size of parameters
	.word	20		! frame size = 20
	.word	_Label_2513
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2514
	.word	12
	.word	4
	.word	_Label_2515
	.word	-16
	.word	4
	.word	_Label_2516
	.word	-20
	.word	4
	.word	_Label_2517
	.word	-24
	.word	4
	.word	_Label_2518
	.word	-28
	.word	4
	.word	_Label_2519
	.word	-9
	.word	1
	.word	0
_Label_2512:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"IsValid\0"
	.align
_Label_2513:
	.ascii	"Pself\0"
	.align
_Label_2514:
	.byte	'I'
	.ascii	"entry\0"
	.align
_Label_2515:
	.byte	'?'
	.ascii	"_temp_2509\0"
	.align
_Label_2516:
	.byte	'?'
	.ascii	"_temp_2508\0"
	.align
_Label_2517:
	.byte	'?'
	.ascii	"_temp_2507\0"
	.align
_Label_2518:
	.byte	'?'
	.ascii	"_temp_2506\0"
	.align
_Label_2519:
	.byte	'C'
	.ascii	"_temp_2505\0"
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
_Label_3879:
	push	r0
	sub	r1,1,r1
	bne	_Label_3879
	mov	1461,r13		! source line 1461
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1465,r13		! source line 1465
	mov	"\0\0AS",r10
!   _temp_2520 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-32]
!   Move address of _temp_2520 [entry ] into _temp_2521
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
!   _temp_2524 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-16]
!   Move address of _temp_2524 [entry ] into _temp_2525
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
!   Data Move: _temp_2523 = *_temp_2525  (sizeInBytes=4)
	load	[r14+-12],r1
	load	[r1],r1
	store	r1,[r14+-20]
!   _temp_2522 = _temp_2523 OR 8		(int)
	load	[r14+-20],r1
	mov	8,r2
	or	r1,r2,r1
	store	r1,[r14+-24]
!   Data Move: *_temp_2521 = _temp_2522  (sizeInBytes=4)
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
	.word	_Label_2526
	.word	8		! total size of parameters
	.word	24		! frame size = 24
	.word	_Label_2527
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2528
	.word	12
	.word	4
	.word	_Label_2529
	.word	-12
	.word	4
	.word	_Label_2530
	.word	-16
	.word	4
	.word	_Label_2531
	.word	-20
	.word	4
	.word	_Label_2532
	.word	-24
	.word	4
	.word	_Label_2533
	.word	-28
	.word	4
	.word	_Label_2534
	.word	-32
	.word	4
	.word	0
_Label_2526:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"SetDirty\0"
	.align
_Label_2527:
	.ascii	"Pself\0"
	.align
_Label_2528:
	.byte	'I'
	.ascii	"entry\0"
	.align
_Label_2529:
	.byte	'?'
	.ascii	"_temp_2525\0"
	.align
_Label_2530:
	.byte	'?'
	.ascii	"_temp_2524\0"
	.align
_Label_2531:
	.byte	'?'
	.ascii	"_temp_2523\0"
	.align
_Label_2532:
	.byte	'?'
	.ascii	"_temp_2522\0"
	.align
_Label_2533:
	.byte	'?'
	.ascii	"_temp_2521\0"
	.align
_Label_2534:
	.byte	'?'
	.ascii	"_temp_2520\0"
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
_Label_3880:
	push	r0
	sub	r1,1,r1
	bne	_Label_3880
	mov	1470,r13		! source line 1470
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1474,r13		! source line 1474
	mov	"\0\0AS",r10
!   _temp_2535 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-32]
!   Move address of _temp_2535 [entry ] into _temp_2536
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
!   _temp_2539 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-16]
!   Move address of _temp_2539 [entry ] into _temp_2540
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
!   Data Move: _temp_2538 = *_temp_2540  (sizeInBytes=4)
	load	[r14+-12],r1
	load	[r1],r1
	store	r1,[r14+-20]
!   _temp_2537 = _temp_2538 OR 4		(int)
	load	[r14+-20],r1
	mov	4,r2
	or	r1,r2,r1
	store	r1,[r14+-24]
!   Data Move: *_temp_2536 = _temp_2537  (sizeInBytes=4)
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
	.word	_Label_2541
	.word	8		! total size of parameters
	.word	24		! frame size = 24
	.word	_Label_2542
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2543
	.word	12
	.word	4
	.word	_Label_2544
	.word	-12
	.word	4
	.word	_Label_2545
	.word	-16
	.word	4
	.word	_Label_2546
	.word	-20
	.word	4
	.word	_Label_2547
	.word	-24
	.word	4
	.word	_Label_2548
	.word	-28
	.word	4
	.word	_Label_2549
	.word	-32
	.word	4
	.word	0
_Label_2541:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"SetReferenced\0"
	.align
_Label_2542:
	.ascii	"Pself\0"
	.align
_Label_2543:
	.byte	'I'
	.ascii	"entry\0"
	.align
_Label_2544:
	.byte	'?'
	.ascii	"_temp_2540\0"
	.align
_Label_2545:
	.byte	'?'
	.ascii	"_temp_2539\0"
	.align
_Label_2546:
	.byte	'?'
	.ascii	"_temp_2538\0"
	.align
_Label_2547:
	.byte	'?'
	.ascii	"_temp_2537\0"
	.align
_Label_2548:
	.byte	'?'
	.ascii	"_temp_2536\0"
	.align
_Label_2549:
	.byte	'?'
	.ascii	"_temp_2535\0"
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
_Label_3881:
	push	r0
	sub	r1,1,r1
	bne	_Label_3881
	mov	1479,r13		! source line 1479
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1483,r13		! source line 1483
	mov	"\0\0AS",r10
!   _temp_2550 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-32]
!   Move address of _temp_2550 [entry ] into _temp_2551
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
!   _temp_2554 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-16]
!   Move address of _temp_2554 [entry ] into _temp_2555
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
!   Data Move: _temp_2553 = *_temp_2555  (sizeInBytes=4)
	load	[r14+-12],r1
	load	[r1],r1
	store	r1,[r14+-20]
!   _temp_2552 = _temp_2553 OR 2		(int)
	load	[r14+-20],r1
	mov	2,r2
	or	r1,r2,r1
	store	r1,[r14+-24]
!   Data Move: *_temp_2551 = _temp_2552  (sizeInBytes=4)
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
	.word	_Label_2556
	.word	8		! total size of parameters
	.word	24		! frame size = 24
	.word	_Label_2557
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2558
	.word	12
	.word	4
	.word	_Label_2559
	.word	-12
	.word	4
	.word	_Label_2560
	.word	-16
	.word	4
	.word	_Label_2561
	.word	-20
	.word	4
	.word	_Label_2562
	.word	-24
	.word	4
	.word	_Label_2563
	.word	-28
	.word	4
	.word	_Label_2564
	.word	-32
	.word	4
	.word	0
_Label_2556:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"SetWritable\0"
	.align
_Label_2557:
	.ascii	"Pself\0"
	.align
_Label_2558:
	.byte	'I'
	.ascii	"entry\0"
	.align
_Label_2559:
	.byte	'?'
	.ascii	"_temp_2555\0"
	.align
_Label_2560:
	.byte	'?'
	.ascii	"_temp_2554\0"
	.align
_Label_2561:
	.byte	'?'
	.ascii	"_temp_2553\0"
	.align
_Label_2562:
	.byte	'?'
	.ascii	"_temp_2552\0"
	.align
_Label_2563:
	.byte	'?'
	.ascii	"_temp_2551\0"
	.align
_Label_2564:
	.byte	'?'
	.ascii	"_temp_2550\0"
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
_Label_3882:
	push	r0
	sub	r1,1,r1
	bne	_Label_3882
	mov	1488,r13		! source line 1488
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1492,r13		! source line 1492
	mov	"\0\0AS",r10
!   _temp_2565 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-32]
!   Move address of _temp_2565 [entry ] into _temp_2566
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
!   _temp_2569 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-16]
!   Move address of _temp_2569 [entry ] into _temp_2570
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
!   Data Move: _temp_2568 = *_temp_2570  (sizeInBytes=4)
	load	[r14+-12],r1
	load	[r1],r1
	store	r1,[r14+-20]
!   _temp_2567 = _temp_2568 OR 1		(int)
	load	[r14+-20],r1
	mov	1,r2
	or	r1,r2,r1
	store	r1,[r14+-24]
!   Data Move: *_temp_2566 = _temp_2567  (sizeInBytes=4)
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
	.word	_Label_2571
	.word	8		! total size of parameters
	.word	24		! frame size = 24
	.word	_Label_2572
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2573
	.word	12
	.word	4
	.word	_Label_2574
	.word	-12
	.word	4
	.word	_Label_2575
	.word	-16
	.word	4
	.word	_Label_2576
	.word	-20
	.word	4
	.word	_Label_2577
	.word	-24
	.word	4
	.word	_Label_2578
	.word	-28
	.word	4
	.word	_Label_2579
	.word	-32
	.word	4
	.word	0
_Label_2571:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"SetValid\0"
	.align
_Label_2572:
	.ascii	"Pself\0"
	.align
_Label_2573:
	.byte	'I'
	.ascii	"entry\0"
	.align
_Label_2574:
	.byte	'?'
	.ascii	"_temp_2570\0"
	.align
_Label_2575:
	.byte	'?'
	.ascii	"_temp_2569\0"
	.align
_Label_2576:
	.byte	'?'
	.ascii	"_temp_2568\0"
	.align
_Label_2577:
	.byte	'?'
	.ascii	"_temp_2567\0"
	.align
_Label_2578:
	.byte	'?'
	.ascii	"_temp_2566\0"
	.align
_Label_2579:
	.byte	'?'
	.ascii	"_temp_2565\0"
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
_Label_3883:
	push	r0
	sub	r1,1,r1
	bne	_Label_3883
	mov	1497,r13		! source line 1497
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1501,r13		! source line 1501
	mov	"\0\0AS",r10
!   _temp_2580 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-32]
!   Move address of _temp_2580 [entry ] into _temp_2581
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
!   _temp_2584 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-16]
!   Move address of _temp_2584 [entry ] into _temp_2585
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
!   Data Move: _temp_2583 = *_temp_2585  (sizeInBytes=4)
	load	[r14+-12],r1
	load	[r1],r1
	store	r1,[r14+-20]
!   _temp_2582 = _temp_2583 AND -9		(int)
	load	[r14+-20],r1
	mov	-9,r2
	and	r1,r2,r1
	store	r1,[r14+-24]
!   Data Move: *_temp_2581 = _temp_2582  (sizeInBytes=4)
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
	.word	_Label_2586
	.word	8		! total size of parameters
	.word	24		! frame size = 24
	.word	_Label_2587
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2588
	.word	12
	.word	4
	.word	_Label_2589
	.word	-12
	.word	4
	.word	_Label_2590
	.word	-16
	.word	4
	.word	_Label_2591
	.word	-20
	.word	4
	.word	_Label_2592
	.word	-24
	.word	4
	.word	_Label_2593
	.word	-28
	.word	4
	.word	_Label_2594
	.word	-32
	.word	4
	.word	0
_Label_2586:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"ClearDirty\0"
	.align
_Label_2587:
	.ascii	"Pself\0"
	.align
_Label_2588:
	.byte	'I'
	.ascii	"entry\0"
	.align
_Label_2589:
	.byte	'?'
	.ascii	"_temp_2585\0"
	.align
_Label_2590:
	.byte	'?'
	.ascii	"_temp_2584\0"
	.align
_Label_2591:
	.byte	'?'
	.ascii	"_temp_2583\0"
	.align
_Label_2592:
	.byte	'?'
	.ascii	"_temp_2582\0"
	.align
_Label_2593:
	.byte	'?'
	.ascii	"_temp_2581\0"
	.align
_Label_2594:
	.byte	'?'
	.ascii	"_temp_2580\0"
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
_Label_3884:
	push	r0
	sub	r1,1,r1
	bne	_Label_3884
	mov	1506,r13		! source line 1506
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1510,r13		! source line 1510
	mov	"\0\0AS",r10
!   _temp_2595 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-32]
!   Move address of _temp_2595 [entry ] into _temp_2596
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
!   _temp_2599 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-16]
!   Move address of _temp_2599 [entry ] into _temp_2600
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
!   Data Move: _temp_2598 = *_temp_2600  (sizeInBytes=4)
	load	[r14+-12],r1
	load	[r1],r1
	store	r1,[r14+-20]
!   _temp_2597 = _temp_2598 AND -5		(int)
	load	[r14+-20],r1
	mov	-5,r2
	and	r1,r2,r1
	store	r1,[r14+-24]
!   Data Move: *_temp_2596 = _temp_2597  (sizeInBytes=4)
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
	.word	_Label_2601
	.word	8		! total size of parameters
	.word	24		! frame size = 24
	.word	_Label_2602
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2603
	.word	12
	.word	4
	.word	_Label_2604
	.word	-12
	.word	4
	.word	_Label_2605
	.word	-16
	.word	4
	.word	_Label_2606
	.word	-20
	.word	4
	.word	_Label_2607
	.word	-24
	.word	4
	.word	_Label_2608
	.word	-28
	.word	4
	.word	_Label_2609
	.word	-32
	.word	4
	.word	0
_Label_2601:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"ClearReferenced\0"
	.align
_Label_2602:
	.ascii	"Pself\0"
	.align
_Label_2603:
	.byte	'I'
	.ascii	"entry\0"
	.align
_Label_2604:
	.byte	'?'
	.ascii	"_temp_2600\0"
	.align
_Label_2605:
	.byte	'?'
	.ascii	"_temp_2599\0"
	.align
_Label_2606:
	.byte	'?'
	.ascii	"_temp_2598\0"
	.align
_Label_2607:
	.byte	'?'
	.ascii	"_temp_2597\0"
	.align
_Label_2608:
	.byte	'?'
	.ascii	"_temp_2596\0"
	.align
_Label_2609:
	.byte	'?'
	.ascii	"_temp_2595\0"
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
_Label_3885:
	push	r0
	sub	r1,1,r1
	bne	_Label_3885
	mov	1515,r13		! source line 1515
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1519,r13		! source line 1519
	mov	"\0\0AS",r10
!   _temp_2610 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-32]
!   Move address of _temp_2610 [entry ] into _temp_2611
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
!   _temp_2614 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-16]
!   Move address of _temp_2614 [entry ] into _temp_2615
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
!   Data Move: _temp_2613 = *_temp_2615  (sizeInBytes=4)
	load	[r14+-12],r1
	load	[r1],r1
	store	r1,[r14+-20]
!   _temp_2612 = _temp_2613 AND -3		(int)
	load	[r14+-20],r1
	mov	-3,r2
	and	r1,r2,r1
	store	r1,[r14+-24]
!   Data Move: *_temp_2611 = _temp_2612  (sizeInBytes=4)
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
	.word	_Label_2616
	.word	8		! total size of parameters
	.word	24		! frame size = 24
	.word	_Label_2617
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2618
	.word	12
	.word	4
	.word	_Label_2619
	.word	-12
	.word	4
	.word	_Label_2620
	.word	-16
	.word	4
	.word	_Label_2621
	.word	-20
	.word	4
	.word	_Label_2622
	.word	-24
	.word	4
	.word	_Label_2623
	.word	-28
	.word	4
	.word	_Label_2624
	.word	-32
	.word	4
	.word	0
_Label_2616:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"ClearWritable\0"
	.align
_Label_2617:
	.ascii	"Pself\0"
	.align
_Label_2618:
	.byte	'I'
	.ascii	"entry\0"
	.align
_Label_2619:
	.byte	'?'
	.ascii	"_temp_2615\0"
	.align
_Label_2620:
	.byte	'?'
	.ascii	"_temp_2614\0"
	.align
_Label_2621:
	.byte	'?'
	.ascii	"_temp_2613\0"
	.align
_Label_2622:
	.byte	'?'
	.ascii	"_temp_2612\0"
	.align
_Label_2623:
	.byte	'?'
	.ascii	"_temp_2611\0"
	.align
_Label_2624:
	.byte	'?'
	.ascii	"_temp_2610\0"
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
_Label_3886:
	push	r0
	sub	r1,1,r1
	bne	_Label_3886
	mov	1524,r13		! source line 1524
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1528,r13		! source line 1528
	mov	"\0\0AS",r10
!   _temp_2625 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-32]
!   Move address of _temp_2625 [entry ] into _temp_2626
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
!   _temp_2629 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-16]
!   Move address of _temp_2629 [entry ] into _temp_2630
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
!   Data Move: _temp_2628 = *_temp_2630  (sizeInBytes=4)
	load	[r14+-12],r1
	load	[r1],r1
	store	r1,[r14+-20]
!   _temp_2627 = _temp_2628 AND -2		(int)
	load	[r14+-20],r1
	mov	-2,r2
	and	r1,r2,r1
	store	r1,[r14+-24]
!   Data Move: *_temp_2626 = _temp_2627  (sizeInBytes=4)
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
	.word	_Label_2631
	.word	8		! total size of parameters
	.word	24		! frame size = 24
	.word	_Label_2632
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2633
	.word	12
	.word	4
	.word	_Label_2634
	.word	-12
	.word	4
	.word	_Label_2635
	.word	-16
	.word	4
	.word	_Label_2636
	.word	-20
	.word	4
	.word	_Label_2637
	.word	-24
	.word	4
	.word	_Label_2638
	.word	-28
	.word	4
	.word	_Label_2639
	.word	-32
	.word	4
	.word	0
_Label_2631:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"ClearValid\0"
	.align
_Label_2632:
	.ascii	"Pself\0"
	.align
_Label_2633:
	.byte	'I'
	.ascii	"entry\0"
	.align
_Label_2634:
	.byte	'?'
	.ascii	"_temp_2630\0"
	.align
_Label_2635:
	.byte	'?'
	.ascii	"_temp_2629\0"
	.align
_Label_2636:
	.byte	'?'
	.ascii	"_temp_2628\0"
	.align
_Label_2637:
	.byte	'?'
	.ascii	"_temp_2627\0"
	.align
_Label_2638:
	.byte	'?'
	.ascii	"_temp_2626\0"
	.align
_Label_2639:
	.byte	'?'
	.ascii	"_temp_2625\0"
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
_Label_3887:
	push	r0
	sub	r1,1,r1
	bne	_Label_3887
	mov	1533,r13		! source line 1533
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   _temp_2641 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-20]
!   Move address of _temp_2641 [0 ] into _temp_2642
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
!   _temp_2640 = _temp_2642		(4 bytes)
	load	[r14+-16],r1
	store	r1,[r14+-24]
!   _temp_2643 = numberOfPages * 4		(int)
	load	[r14+8],r1
	load	[r1+4],r1
	mov	4,r2
	mul	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_2640  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=_temp_2643  sizeInBytes=4
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
	.word	_Label_2644
	.word	4		! total size of parameters
	.word	24		! frame size = 24
	.word	_Label_2645
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2646
	.word	-12
	.word	4
	.word	_Label_2647
	.word	-16
	.word	4
	.word	_Label_2648
	.word	-20
	.word	4
	.word	_Label_2649
	.word	-24
	.word	4
	.word	0
_Label_2644:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"SetToThisPageTable\0"
	.align
_Label_2645:
	.ascii	"Pself\0"
	.align
_Label_2646:
	.byte	'?'
	.ascii	"_temp_2643\0"
	.align
_Label_2647:
	.byte	'?'
	.ascii	"_temp_2642\0"
	.align
_Label_2648:
	.byte	'?'
	.ascii	"_temp_2641\0"
	.align
_Label_2649:
	.byte	'?'
	.ascii	"_temp_2640\0"
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
_Label_3888:
	push	r0
	sub	r1,1,r1
	bne	_Label_3888
	mov	1544,r13		! source line 1544
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! IF STATEMENT...
	mov	1559,r13		! source line 1559
	mov	"\0\0IF",r10
!   if intIsZero (numBytes) then goto _Label_2650
	load	[r14+20],r1
	cmp	r1,r0
	be	_Label_2650
	jmp	_Label_2651
_Label_2650:
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
	jmp	_Label_2652
_Label_2651:
! ELSE...
	mov	1561,r13		! source line 1561
	mov	"\0\0EL",r10
! IF STATEMENT...
	mov	1561,r13		! source line 1561
	mov	"\0\0IF",r10
!   if numBytes >= 0 then goto _Label_2654		(int)
	load	[r14+20],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_2654
!	jmp	_Label_2653
_Label_2653:
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
_Label_2654:
! END IF...
_Label_2652:
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
_Label_2655:
!	jmp	_Label_2656
_Label_2656:
	mov	1568,r13		! source line 1568
	mov	"\0\0WB",r10
! IF STATEMENT...
	mov	1569,r13		! source line 1569
	mov	"\0\0IF",r10
!   if virtPage < numberOfPages then goto _Label_2659		(int)
	load	[r14+-40],r1
	load	[r14+8],r2
	load	[r2+4],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bl	_Label_2659
!	jmp	_Label_2658
_Label_2658:
! THEN...
	mov	1570,r13		! source line 1570
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_2660 = _StringConst_131
	set	_StringConst_131,r1
	store	r1,[r14+-32]
!   Prepare Argument: offset=8  value=_temp_2660  sizeInBytes=4
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
_Label_2659:
! IF STATEMENT...
	mov	1573,r13		! source line 1573
	mov	"\0\0IF",r10
	mov	1573,r13		! source line 1573
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-28]
!   if intIsZero (_temp_2664) then goto _runtimeErrorNullPointer
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
!   Retrieve Result: targetName=_temp_2663  sizeInBytes=1
	loadb	[r15],r1
	storeb	r1,[r14+-10]
!   if _temp_2663 then goto _Label_2662 else goto _Label_2661
	loadb	[r14+-10],r1
	cmp	r1,0
	be	_Label_2661
	jmp	_Label_2662
_Label_2661:
! THEN...
	mov	1574,r13		! source line 1574
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_2665 = _StringConst_132
	set	_StringConst_132,r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=8  value=_temp_2665  sizeInBytes=4
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
_Label_2662:
! ASSIGNMENT STATEMENT...
	mov	1577,r13		! source line 1577
	mov	"\0\0AS",r10
	mov	1577,r13		! source line 1577
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-16]
!   if intIsZero (_temp_2667) then goto _runtimeErrorNullPointer
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
!   Retrieve Result: targetName=_temp_2666  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-20]
!   fromAddr = _temp_2666 + offset		(int)
	load	[r14+-20],r1
	load	[r14+-44],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-48]
! WHILE STATEMENT...
	mov	1579,r13		! source line 1579
	mov	"\0\0WH",r10
_Label_2668:
!   if offset >= 8192 then goto _Label_2670		(int)
	load	[r14+-44],r1
	mov	8192,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_2670
!	jmp	_Label_2669
_Label_2669:
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
!   Data Move: _temp_2671 = *fromAddr  (sizeInBytes=1)
	load	[r14+-48],r1
	loadb	[r1],r1
	storeb	r1,[r14+-9]
!   Data Move: *kernelAddr = _temp_2671  (sizeInBytes=1)
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
!   if copiedSoFar != numBytes then goto _Label_2673		(int)
	load	[r14+-36],r1
	load	[r14+20],r2
	cmp	r1,r2
	bne	_Label_2673
!	jmp	_Label_2672
_Label_2672:
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
_Label_2673:
! END WHILE...
	jmp	_Label_2668
_Label_2670:
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
	jmp	_Label_2655
_Label_2657:
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_AddrSpace_19:
	.word	_sourceFileName
	.word	_Label_2674
	.word	16		! total size of parameters
	.word	48		! frame size = 48
	.word	_Label_2675
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2676
	.word	12
	.word	4
	.word	_Label_2677
	.word	16
	.word	4
	.word	_Label_2678
	.word	20
	.word	4
	.word	_Label_2679
	.word	-9
	.word	1
	.word	_Label_2680
	.word	-16
	.word	4
	.word	_Label_2681
	.word	-20
	.word	4
	.word	_Label_2682
	.word	-24
	.word	4
	.word	_Label_2683
	.word	-28
	.word	4
	.word	_Label_2684
	.word	-10
	.word	1
	.word	_Label_2685
	.word	-32
	.word	4
	.word	_Label_2686
	.word	-36
	.word	4
	.word	_Label_2687
	.word	-40
	.word	4
	.word	_Label_2688
	.word	-44
	.word	4
	.word	_Label_2689
	.word	-48
	.word	4
	.word	0
_Label_2674:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"CopyBytesFromVirtual\0"
	.align
_Label_2675:
	.ascii	"Pself\0"
	.align
_Label_2676:
	.byte	'I'
	.ascii	"kernelAddr\0"
	.align
_Label_2677:
	.byte	'I'
	.ascii	"virtAddr\0"
	.align
_Label_2678:
	.byte	'I'
	.ascii	"numBytes\0"
	.align
_Label_2679:
	.byte	'C'
	.ascii	"_temp_2671\0"
	.align
_Label_2680:
	.byte	'?'
	.ascii	"_temp_2667\0"
	.align
_Label_2681:
	.byte	'?'
	.ascii	"_temp_2666\0"
	.align
_Label_2682:
	.byte	'?'
	.ascii	"_temp_2665\0"
	.align
_Label_2683:
	.byte	'?'
	.ascii	"_temp_2664\0"
	.align
_Label_2684:
	.byte	'C'
	.ascii	"_temp_2663\0"
	.align
_Label_2685:
	.byte	'?'
	.ascii	"_temp_2660\0"
	.align
_Label_2686:
	.byte	'I'
	.ascii	"copiedSoFar\0"
	.align
_Label_2687:
	.byte	'I'
	.ascii	"virtPage\0"
	.align
_Label_2688:
	.byte	'I'
	.ascii	"offset\0"
	.align
_Label_2689:
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
_Label_3889:
	push	r0
	sub	r1,1,r1
	bne	_Label_3889
	mov	1598,r13		! source line 1598
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! IF STATEMENT...
	mov	1609,r13		! source line 1609
	mov	"\0\0IF",r10
!   if intIsZero (numBytes) then goto _Label_2690
	load	[r14+20],r1
	cmp	r1,r0
	be	_Label_2690
	jmp	_Label_2691
_Label_2690:
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
	jmp	_Label_2692
_Label_2691:
! ELSE...
	mov	1611,r13		! source line 1611
	mov	"\0\0EL",r10
! IF STATEMENT...
	mov	1611,r13		! source line 1611
	mov	"\0\0IF",r10
!   if numBytes >= 0 then goto _Label_2694		(int)
	load	[r14+20],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_2694
!	jmp	_Label_2693
_Label_2693:
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
_Label_2694:
! END IF...
_Label_2692:
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
_Label_2695:
!	jmp	_Label_2696
_Label_2696:
	mov	1616,r13		! source line 1616
	mov	"\0\0WB",r10
! IF STATEMENT...
	mov	1617,r13		! source line 1617
	mov	"\0\0IF",r10
!   if virtPage < numberOfPages then goto _Label_2701		(int)
	load	[r14+-36],r1
	load	[r14+8],r2
	load	[r2+4],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bl	_Label_2701
	jmp	_Label_2698
_Label_2701:
	mov	1618,r13		! source line 1618
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-28]
!   if intIsZero (_temp_2703) then goto _runtimeErrorNullPointer
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
!   Retrieve Result: targetName=_temp_2702  sizeInBytes=1
	loadb	[r15],r1
	storeb	r1,[r14+-11]
!   if _temp_2702 then goto _Label_2700 else goto _Label_2698
	loadb	[r14+-11],r1
	cmp	r1,0
	be	_Label_2698
	jmp	_Label_2700
_Label_2700:
	mov	1619,r13		! source line 1619
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-24]
!   if intIsZero (_temp_2705) then goto _runtimeErrorNullPointer
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
!   Retrieve Result: targetName=_temp_2704  sizeInBytes=1
	loadb	[r15],r1
	storeb	r1,[r14+-10]
!   if _temp_2704 then goto _Label_2699 else goto _Label_2698
	loadb	[r14+-10],r1
	cmp	r1,0
	be	_Label_2698
	jmp	_Label_2699
_Label_2698:
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
_Label_2699:
! ASSIGNMENT STATEMENT...
	mov	1622,r13		! source line 1622
	mov	"\0\0AS",r10
	mov	1622,r13		! source line 1622
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-16]
!   if intIsZero (_temp_2707) then goto _runtimeErrorNullPointer
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
!   Retrieve Result: targetName=_temp_2706  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-20]
!   destAddr = _temp_2706 + offset		(int)
	load	[r14+-20],r1
	load	[r14+-40],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-44]
! WHILE STATEMENT...
	mov	1623,r13		! source line 1623
	mov	"\0\0WH",r10
_Label_2708:
!   if offset >= 8192 then goto _Label_2710		(int)
	load	[r14+-40],r1
	mov	8192,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_2710
!	jmp	_Label_2709
_Label_2709:
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
!   Data Move: _temp_2711 = *kernelAddr  (sizeInBytes=1)
	load	[r14+16],r1
	loadb	[r1],r1
	storeb	r1,[r14+-9]
!   Data Move: *destAddr = _temp_2711  (sizeInBytes=1)
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
!   if copiedSoFar != numBytes then goto _Label_2713		(int)
	load	[r14+-32],r1
	load	[r14+20],r2
	cmp	r1,r2
	bne	_Label_2713
!	jmp	_Label_2712
_Label_2712:
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
_Label_2713:
! END WHILE...
	jmp	_Label_2708
_Label_2710:
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
	jmp	_Label_2695
_Label_2697:
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_AddrSpace_20:
	.word	_sourceFileName
	.word	_Label_2714
	.word	16		! total size of parameters
	.word	44		! frame size = 44
	.word	_Label_2715
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2716
	.word	12
	.word	4
	.word	_Label_2717
	.word	16
	.word	4
	.word	_Label_2718
	.word	20
	.word	4
	.word	_Label_2719
	.word	-9
	.word	1
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
	.word	-10
	.word	1
	.word	_Label_2724
	.word	-28
	.word	4
	.word	_Label_2725
	.word	-11
	.word	1
	.word	_Label_2726
	.word	-32
	.word	4
	.word	_Label_2727
	.word	-36
	.word	4
	.word	_Label_2728
	.word	-40
	.word	4
	.word	_Label_2729
	.word	-44
	.word	4
	.word	0
_Label_2714:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"CopyBytesToVirtual\0"
	.align
_Label_2715:
	.ascii	"Pself\0"
	.align
_Label_2716:
	.byte	'I'
	.ascii	"virtAddr\0"
	.align
_Label_2717:
	.byte	'I'
	.ascii	"kernelAddr\0"
	.align
_Label_2718:
	.byte	'I'
	.ascii	"numBytes\0"
	.align
_Label_2719:
	.byte	'C'
	.ascii	"_temp_2711\0"
	.align
_Label_2720:
	.byte	'?'
	.ascii	"_temp_2707\0"
	.align
_Label_2721:
	.byte	'?'
	.ascii	"_temp_2706\0"
	.align
_Label_2722:
	.byte	'?'
	.ascii	"_temp_2705\0"
	.align
_Label_2723:
	.byte	'C'
	.ascii	"_temp_2704\0"
	.align
_Label_2724:
	.byte	'?'
	.ascii	"_temp_2703\0"
	.align
_Label_2725:
	.byte	'C'
	.ascii	"_temp_2702\0"
	.align
_Label_2726:
	.byte	'I'
	.ascii	"copiedSoFar\0"
	.align
_Label_2727:
	.byte	'I'
	.ascii	"virtPage\0"
	.align
_Label_2728:
	.byte	'I'
	.ascii	"offset\0"
	.align
_Label_2729:
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
_Label_3890:
	push	r0
	sub	r1,1,r1
	bne	_Label_3890
	mov	1640,r13		! source line 1640
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! IF STATEMENT...
	mov	1664,r13		! source line 1664
	mov	"\0\0IF",r10
	mov	1664,r13		! source line 1664
	mov	"\0\0SE",r10
!   _temp_2733 = &sourceSize
	add	r14,-44,r1
	store	r1,[r14+-36]
	load	[r14+8],r1
	store	r1,[r14+-32]
!   if intIsZero (_temp_2734) then goto _runtimeErrorNullPointer
	load	[r14+-32],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Prepare Argument: offset=12  value=_temp_2733  sizeInBytes=4
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
!   Retrieve Result: targetName=_temp_2732  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-40]
!   if _temp_2732 >= 4 then goto _Label_2731		(int)
	load	[r14+-40],r1
	mov	4,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_2731
!	jmp	_Label_2730
_Label_2730:
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
_Label_2731:
! IF STATEMENT...
	mov	1671,r13		! source line 1671
	mov	"\0\0IF",r10
!   if sourceSize <= maxSize then goto _Label_2736		(int)
	load	[r14+-44],r1
	load	[r14+20],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	ble	_Label_2736
!	jmp	_Label_2735
_Label_2735:
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
_Label_2736:
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
!   _temp_2739 = kernelAddr		(4 bytes)
	load	[r14+12],r1
	store	r1,[r14+-20]
!   _temp_2738 = _temp_2739 + 4		(int)
	load	[r14+-20],r1
	mov	4,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-24]
!   _temp_2740 = virtAddr + 4		(int)
	load	[r14+16],r1
	mov	4,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-16]
	load	[r14+8],r1
	store	r1,[r14+-12]
!   if intIsZero (_temp_2741) then goto _runtimeErrorNullPointer
	load	[r14+-12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Prepare Argument: offset=12  value=_temp_2738  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=_temp_2740  sizeInBytes=4
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
!   Retrieve Result: targetName=_temp_2737  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-28]
!   ReturnResult: _temp_2737  (sizeInBytes=4)
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
	.word	_Label_2742
	.word	16		! total size of parameters
	.word	52		! frame size = 52
	.word	_Label_2743
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2744
	.word	12
	.word	4
	.word	_Label_2745
	.word	16
	.word	4
	.word	_Label_2746
	.word	20
	.word	4
	.word	_Label_2747
	.word	-12
	.word	4
	.word	_Label_2748
	.word	-16
	.word	4
	.word	_Label_2749
	.word	-20
	.word	4
	.word	_Label_2750
	.word	-24
	.word	4
	.word	_Label_2751
	.word	-28
	.word	4
	.word	_Label_2752
	.word	-32
	.word	4
	.word	_Label_2753
	.word	-36
	.word	4
	.word	_Label_2754
	.word	-40
	.word	4
	.word	_Label_2755
	.word	-44
	.word	4
	.word	0
_Label_2742:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"GetStringFromVirtual\0"
	.align
_Label_2743:
	.ascii	"Pself\0"
	.align
_Label_2744:
	.byte	'P'
	.ascii	"kernelAddr\0"
	.align
_Label_2745:
	.byte	'I'
	.ascii	"virtAddr\0"
	.align
_Label_2746:
	.byte	'I'
	.ascii	"maxSize\0"
	.align
_Label_2747:
	.byte	'?'
	.ascii	"_temp_2741\0"
	.align
_Label_2748:
	.byte	'?'
	.ascii	"_temp_2740\0"
	.align
_Label_2749:
	.byte	'?'
	.ascii	"_temp_2739\0"
	.align
_Label_2750:
	.byte	'?'
	.ascii	"_temp_2738\0"
	.align
_Label_2751:
	.byte	'?'
	.ascii	"_temp_2737\0"
	.align
_Label_2752:
	.byte	'?'
	.ascii	"_temp_2734\0"
	.align
_Label_2753:
	.byte	'?'
	.ascii	"_temp_2733\0"
	.align
_Label_2754:
	.byte	'?'
	.ascii	"_temp_2732\0"
	.align
_Label_2755:
	.byte	'I'
	.ascii	"sourceSize\0"
	.align
! 
! ===============  CLASS DiskDriver  ===============
! 
! Dispatch Table:
! 
_P_Kernel_DiskDriver:
	.word	_Label_2756
	jmp	_Method_P_Kernel_DiskDriver_1	! 4:	Init
	jmp	_Method_P_Kernel_DiskDriver_2	! 8:	SynchReadSector
	jmp	_Method_P_Kernel_DiskDriver_3	! 12:	StartReadSector
	jmp	_Method_P_Kernel_DiskDriver_4	! 16:	SynchWriteSector
	jmp	_Method_P_Kernel_DiskDriver_5	! 20:	StartWriteSector
	.word	0
! 
! Class descriptor:
! 
_Label_2756:
	.word	1129070931		! Magic number 0x434c4153 == 'CLAS'
	.word	_Label_2757
	.word	_sourceFileName
	.word	313		! line number
	.word	68		! size of instances, in bytes
	.word	_P_Kernel_DiskDriver
	.word	_P_System_Object
	.word	0
_Label_2757:
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
_Label_3891:
	push	r0
	sub	r1,1,r1
	bne	_Label_3891
	mov	2587,r13		! source line 2587
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   _temp_2758 = _StringConst_133
	set	_StringConst_133,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=8  value=_temp_2758  sizeInBytes=4
	load	[r14+-28],r1
	store	r1,[r15+0]
!   Call the function
	mov	2588,r13		! source line 2588
	mov	"\0\0CE",r10
	call	print
! ASSIGNMENT STATEMENT...
	mov	2589,r13		! source line 2589
	mov	"\0\0AS",r10
!   DISK_STATUS_WORD_ADDRESS = 16776968		(4 bytes)
	set	16776968,r1
	load	[r14+8],r2
	store	r1,[r2+4]
! ASSIGNMENT STATEMENT...
	mov	2590,r13		! source line 2590
	mov	"\0\0AS",r10
!   DISK_COMMAND_WORD_ADDRESS = 16776968		(4 bytes)
	set	16776968,r1
	load	[r14+8],r2
	store	r1,[r2+8]
! ASSIGNMENT STATEMENT...
	mov	2591,r13		! source line 2591
	mov	"\0\0AS",r10
!   DISK_MEMORY_ADDRESS_REGISTER = 16776972		(4 bytes)
	set	16776972,r1
	load	[r14+8],r2
	store	r1,[r2+12]
! ASSIGNMENT STATEMENT...
	mov	2592,r13		! source line 2592
	mov	"\0\0AS",r10
!   DISK_SECTOR_NUMBER_REGISTER = 16776976		(4 bytes)
	set	16776976,r1
	load	[r14+8],r2
	store	r1,[r2+16]
! ASSIGNMENT STATEMENT...
	mov	2593,r13		! source line 2593
	mov	"\0\0AS",r10
!   DISK_SECTOR_COUNT_REGISTER = 16776980		(4 bytes)
	set	16776980,r1
	load	[r14+8],r2
	store	r1,[r2+20]
! ASSIGNMENT STATEMENT...
	mov	2594,r13		! source line 2594
	mov	"\0\0AS",r10
!   semToSignalOnCompletion = 0		(4 bytes)
	mov	0,r1
	load	[r14+8],r2
	store	r1,[r2+24]
! ASSIGNMENT STATEMENT...
	mov	2595,r13		! source line 2595
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
	mov	2596,r13		! source line 2596
	mov	"\0\0SE",r10
!   _temp_2760 = &semUsedInSynchMethods
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
	mov	2597,r13		! source line 2597
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
	mov	2598,r13		! source line 2598
	mov	"\0\0SE",r10
!   _temp_2762 = &diskBusy
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
	mov	2598,r13		! source line 2598
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
	.word	_Label_2763
	.word	4		! total size of parameters
	.word	28		! frame size = 28
	.word	_Label_2764
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2765
	.word	-12
	.word	4
	.word	_Label_2766
	.word	-16
	.word	4
	.word	_Label_2767
	.word	-20
	.word	4
	.word	_Label_2768
	.word	-24
	.word	4
	.word	_Label_2769
	.word	-28
	.word	4
	.word	0
_Label_2763:
	.ascii	"DiskDriver"
	.ascii	"::"
	.ascii	"Init\0"
	.align
_Label_2764:
	.ascii	"Pself\0"
	.align
_Label_2765:
	.byte	'?'
	.ascii	"_temp_2762\0"
	.align
_Label_2766:
	.byte	'?'
	.ascii	"_temp_2761\0"
	.align
_Label_2767:
	.byte	'?'
	.ascii	"_temp_2760\0"
	.align
_Label_2768:
	.byte	'?'
	.ascii	"_temp_2759\0"
	.align
_Label_2769:
	.byte	'?'
	.ascii	"_temp_2758\0"
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
_Label_3892:
	push	r0
	sub	r1,1,r1
	bne	_Label_3892
	mov	2603,r13		! source line 2603
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! SEND STATEMENT...
	mov	2616,r13		! source line 2616
	mov	"\0\0SE",r10
!   _temp_2770 = &diskBusy
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
	mov	2617,r13		! source line 2617
	mov	"\0\0WH",r10
_Label_2771:
!	jmp	_Label_2772
_Label_2772:
	mov	2617,r13		! source line 2617
	mov	"\0\0WB",r10
! SEND STATEMENT...
	mov	2619,r13		! source line 2619
	mov	"\0\0SE",r10
!   _temp_2774 = &semUsedInSynchMethods
	load	[r14+8],r1
	add	r1,28,r1
	store	r1,[r14+-48]
	load	[r14+8],r1
	store	r1,[r14+-44]
!   if intIsZero (_temp_2775) then goto _runtimeErrorNullPointer
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
!   Prepare Argument: offset=24  value=_temp_2774  sizeInBytes=4
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
	mov	2621,r13		! source line 2621
	mov	"\0\0SE",r10
!   _temp_2776 = &semUsedInSynchMethods
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
	mov	2624,r13		! source line 2624
	mov	"\0\0SW",r10
!   Evaluate the switch expression...
!   if intIsZero (DISK_STATUS_WORD_ADDRESS) then goto _runtimeErrorNullPointer
	load	[r14+8],r1
	load	[r1+4],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Data Move: _temp_2785 = *DISK_STATUS_WORD_ADDRESS  (sizeInBytes=4)
	load	[r14+8],r1
	load	[r1+4],r1
	load	[r1],r1
	store	r1,[r14+-36]
!   Branch to the right case label
	load	[r14+-36],r1
	cmp	r1,1
	be	_Label_2779
	cmp	r1,2
	be	_Label_2780
	cmp	r1,3
	be	_Label_2781
	cmp	r1,4
	be	_Label_2782
	cmp	r1,5
	be	_Label_2783
	cmp	r1,6
	be	_Label_2784
	jmp	_Label_2777
! CASE 1...
_Label_2779:
! SEND STATEMENT...
	mov	2626,r13		! source line 2626
	mov	"\0\0SE",r10
!   _temp_2786 = &diskBusy
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
	mov	2627,r13		! source line 2627
	mov	"\0\0RE",r10
	add	r15,68,r15
	pop	r13
	pop	r14
	ret
! CASE 2...
_Label_2780:
! CALL STATEMENT...
!   _temp_2787 = _StringConst_134
	set	_StringConst_134,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=8  value=_temp_2787  sizeInBytes=4
	load	[r14+-28],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	2629,r13		! source line 2629
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! CASE 3...
_Label_2781:
! CALL STATEMENT...
!   _temp_2788 = _StringConst_135
	set	_StringConst_135,r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=8  value=_temp_2788  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	2631,r13		! source line 2631
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! CASE 4...
_Label_2782:
! CALL STATEMENT...
!   _temp_2789 = _StringConst_136
	set	_StringConst_136,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_2789  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	2633,r13		! source line 2633
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! CASE 5...
_Label_2783:
! BREAK STATEMENT...
	mov	2637,r13		! source line 2637
	mov	"\0\0BR",r10
	jmp	_Label_2778
! CASE 6...
_Label_2784:
! CALL STATEMENT...
!   _temp_2790 = _StringConst_137
	set	_StringConst_137,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_2790  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	2639,r13		! source line 2639
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! DEFAULT CASE...
_Label_2777:
! CALL STATEMENT...
!   _temp_2791 = _StringConst_138
	set	_StringConst_138,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_2791  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	2641,r13		! source line 2641
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END SWITCH...
_Label_2778:
! END WHILE...
	jmp	_Label_2771
_Label_2773:
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_DiskDriver_2:
	.word	_sourceFileName
	.word	_Label_2792
	.word	16		! total size of parameters
	.word	64		! frame size = 64
	.word	_Label_2793
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2794
	.word	12
	.word	4
	.word	_Label_2795
	.word	16
	.word	4
	.word	_Label_2796
	.word	20
	.word	4
	.word	_Label_2797
	.word	-12
	.word	4
	.word	_Label_2798
	.word	-16
	.word	4
	.word	_Label_2799
	.word	-20
	.word	4
	.word	_Label_2800
	.word	-24
	.word	4
	.word	_Label_2801
	.word	-28
	.word	4
	.word	_Label_2802
	.word	-32
	.word	4
	.word	_Label_2803
	.word	-36
	.word	4
	.word	_Label_2804
	.word	-40
	.word	4
	.word	_Label_2805
	.word	-44
	.word	4
	.word	_Label_2806
	.word	-48
	.word	4
	.word	_Label_2807
	.word	-52
	.word	4
	.word	0
_Label_2792:
	.ascii	"DiskDriver"
	.ascii	"::"
	.ascii	"SynchReadSector\0"
	.align
_Label_2793:
	.ascii	"Pself\0"
	.align
_Label_2794:
	.byte	'I'
	.ascii	"sectorAddr\0"
	.align
_Label_2795:
	.byte	'I'
	.ascii	"numberOfSectors\0"
	.align
_Label_2796:
	.byte	'I'
	.ascii	"memoryAddr\0"
	.align
_Label_2797:
	.byte	'?'
	.ascii	"_temp_2791\0"
	.align
_Label_2798:
	.byte	'?'
	.ascii	"_temp_2790\0"
	.align
_Label_2799:
	.byte	'?'
	.ascii	"_temp_2789\0"
	.align
_Label_2800:
	.byte	'?'
	.ascii	"_temp_2788\0"
	.align
_Label_2801:
	.byte	'?'
	.ascii	"_temp_2787\0"
	.align
_Label_2802:
	.byte	'?'
	.ascii	"_temp_2786\0"
	.align
_Label_2803:
	.byte	'?'
	.ascii	"_temp_2785\0"
	.align
_Label_2804:
	.byte	'?'
	.ascii	"_temp_2776\0"
	.align
_Label_2805:
	.byte	'?'
	.ascii	"_temp_2775\0"
	.align
_Label_2806:
	.byte	'?'
	.ascii	"_temp_2774\0"
	.align
_Label_2807:
	.byte	'?'
	.ascii	"_temp_2770\0"
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
	mov	2650,r13		! source line 2650
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	2665,r13		! source line 2665
	mov	"\0\0AS",r10
!   semToSignalOnCompletion = whoCares		(4 bytes)
	load	[r14+24],r1
	load	[r14+8],r2
	store	r1,[r2+24]
! ASSIGNMENT STATEMENT...
	mov	2668,r13		! source line 2668
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
	mov	2669,r13		! source line 2669
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
	mov	2670,r13		! source line 2670
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
	mov	2671,r13		! source line 2671
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
	mov	2671,r13		! source line 2671
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
	.word	_Label_2808
	.word	20		! total size of parameters
	.word	0		! frame size = 0
	.word	_Label_2809
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2810
	.word	12
	.word	4
	.word	_Label_2811
	.word	16
	.word	4
	.word	_Label_2812
	.word	20
	.word	4
	.word	_Label_2813
	.word	24
	.word	4
	.word	0
_Label_2808:
	.ascii	"DiskDriver"
	.ascii	"::"
	.ascii	"StartReadSector\0"
	.align
_Label_2809:
	.ascii	"Pself\0"
	.align
_Label_2810:
	.byte	'I'
	.ascii	"sectorAddr\0"
	.align
_Label_2811:
	.byte	'I'
	.ascii	"numberOfSectors\0"
	.align
_Label_2812:
	.byte	'I'
	.ascii	"memoryAddr\0"
	.align
_Label_2813:
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
_Label_3893:
	push	r0
	sub	r1,1,r1
	bne	_Label_3893
	mov	2676,r13		! source line 2676
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! SEND STATEMENT...
	mov	2688,r13		! source line 2688
	mov	"\0\0SE",r10
!   _temp_2814 = &diskBusy
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
	mov	2689,r13		! source line 2689
	mov	"\0\0WH",r10
_Label_2815:
!	jmp	_Label_2816
_Label_2816:
	mov	2689,r13		! source line 2689
	mov	"\0\0WB",r10
! SEND STATEMENT...
	mov	2690,r13		! source line 2690
	mov	"\0\0SE",r10
!   _temp_2818 = &semUsedInSynchMethods
	load	[r14+8],r1
	add	r1,28,r1
	store	r1,[r14+-48]
	load	[r14+8],r1
	store	r1,[r14+-44]
!   if intIsZero (_temp_2819) then goto _runtimeErrorNullPointer
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
!   Prepare Argument: offset=24  value=_temp_2818  sizeInBytes=4
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
	mov	2692,r13		! source line 2692
	mov	"\0\0SE",r10
!   _temp_2820 = &semUsedInSynchMethods
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
	mov	2695,r13		! source line 2695
	mov	"\0\0SW",r10
!   Evaluate the switch expression...
!   if intIsZero (DISK_STATUS_WORD_ADDRESS) then goto _runtimeErrorNullPointer
	load	[r14+8],r1
	load	[r1+4],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Data Move: _temp_2829 = *DISK_STATUS_WORD_ADDRESS  (sizeInBytes=4)
	load	[r14+8],r1
	load	[r1+4],r1
	load	[r1],r1
	store	r1,[r14+-36]
!   Branch to the right case label
	load	[r14+-36],r1
	cmp	r1,1
	be	_Label_2823
	cmp	r1,2
	be	_Label_2824
	cmp	r1,3
	be	_Label_2825
	cmp	r1,4
	be	_Label_2826
	cmp	r1,5
	be	_Label_2827
	cmp	r1,6
	be	_Label_2828
	jmp	_Label_2821
! CASE 1...
_Label_2823:
! SEND STATEMENT...
	mov	2697,r13		! source line 2697
	mov	"\0\0SE",r10
!   _temp_2830 = &diskBusy
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
	mov	2698,r13		! source line 2698
	mov	"\0\0RE",r10
	add	r15,68,r15
	pop	r13
	pop	r14
	ret
! CASE 2...
_Label_2824:
! CALL STATEMENT...
!   _temp_2831 = _StringConst_139
	set	_StringConst_139,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=8  value=_temp_2831  sizeInBytes=4
	load	[r14+-28],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	2700,r13		! source line 2700
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! CASE 3...
_Label_2825:
! CALL STATEMENT...
!   _temp_2832 = _StringConst_140
	set	_StringConst_140,r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=8  value=_temp_2832  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	2702,r13		! source line 2702
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! CASE 4...
_Label_2826:
! CALL STATEMENT...
!   _temp_2833 = _StringConst_141
	set	_StringConst_141,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_2833  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	2704,r13		! source line 2704
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! CASE 5...
_Label_2827:
! BREAK STATEMENT...
	mov	2708,r13		! source line 2708
	mov	"\0\0BR",r10
	jmp	_Label_2822
! CASE 6...
_Label_2828:
! CALL STATEMENT...
!   _temp_2834 = _StringConst_142
	set	_StringConst_142,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_2834  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	2710,r13		! source line 2710
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! DEFAULT CASE...
_Label_2821:
! CALL STATEMENT...
!   _temp_2835 = _StringConst_143
	set	_StringConst_143,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_2835  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	2712,r13		! source line 2712
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END SWITCH...
_Label_2822:
! END WHILE...
	jmp	_Label_2815
_Label_2817:
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_DiskDriver_4:
	.word	_sourceFileName
	.word	_Label_2836
	.word	16		! total size of parameters
	.word	64		! frame size = 64
	.word	_Label_2837
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2838
	.word	12
	.word	4
	.word	_Label_2839
	.word	16
	.word	4
	.word	_Label_2840
	.word	20
	.word	4
	.word	_Label_2841
	.word	-12
	.word	4
	.word	_Label_2842
	.word	-16
	.word	4
	.word	_Label_2843
	.word	-20
	.word	4
	.word	_Label_2844
	.word	-24
	.word	4
	.word	_Label_2845
	.word	-28
	.word	4
	.word	_Label_2846
	.word	-32
	.word	4
	.word	_Label_2847
	.word	-36
	.word	4
	.word	_Label_2848
	.word	-40
	.word	4
	.word	_Label_2849
	.word	-44
	.word	4
	.word	_Label_2850
	.word	-48
	.word	4
	.word	_Label_2851
	.word	-52
	.word	4
	.word	0
_Label_2836:
	.ascii	"DiskDriver"
	.ascii	"::"
	.ascii	"SynchWriteSector\0"
	.align
_Label_2837:
	.ascii	"Pself\0"
	.align
_Label_2838:
	.byte	'I'
	.ascii	"sectorAddr\0"
	.align
_Label_2839:
	.byte	'I'
	.ascii	"numberOfSectors\0"
	.align
_Label_2840:
	.byte	'I'
	.ascii	"memoryAddr\0"
	.align
_Label_2841:
	.byte	'?'
	.ascii	"_temp_2835\0"
	.align
_Label_2842:
	.byte	'?'
	.ascii	"_temp_2834\0"
	.align
_Label_2843:
	.byte	'?'
	.ascii	"_temp_2833\0"
	.align
_Label_2844:
	.byte	'?'
	.ascii	"_temp_2832\0"
	.align
_Label_2845:
	.byte	'?'
	.ascii	"_temp_2831\0"
	.align
_Label_2846:
	.byte	'?'
	.ascii	"_temp_2830\0"
	.align
_Label_2847:
	.byte	'?'
	.ascii	"_temp_2829\0"
	.align
_Label_2848:
	.byte	'?'
	.ascii	"_temp_2820\0"
	.align
_Label_2849:
	.byte	'?'
	.ascii	"_temp_2819\0"
	.align
_Label_2850:
	.byte	'?'
	.ascii	"_temp_2818\0"
	.align
_Label_2851:
	.byte	'?'
	.ascii	"_temp_2814\0"
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
	mov	2721,r13		! source line 2721
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	2736,r13		! source line 2736
	mov	"\0\0AS",r10
!   semToSignalOnCompletion = whoCares		(4 bytes)
	load	[r14+24],r1
	load	[r14+8],r2
	store	r1,[r2+24]
! ASSIGNMENT STATEMENT...
	mov	2738,r13		! source line 2738
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
	mov	2739,r13		! source line 2739
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
	mov	2740,r13		! source line 2740
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
	mov	2741,r13		! source line 2741
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
	mov	2741,r13		! source line 2741
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
	.word	_Label_2852
	.word	20		! total size of parameters
	.word	0		! frame size = 0
	.word	_Label_2853
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2854
	.word	12
	.word	4
	.word	_Label_2855
	.word	16
	.word	4
	.word	_Label_2856
	.word	20
	.word	4
	.word	_Label_2857
	.word	24
	.word	4
	.word	0
_Label_2852:
	.ascii	"DiskDriver"
	.ascii	"::"
	.ascii	"StartWriteSector\0"
	.align
_Label_2853:
	.ascii	"Pself\0"
	.align
_Label_2854:
	.byte	'I'
	.ascii	"sectorAddr\0"
	.align
_Label_2855:
	.byte	'I'
	.ascii	"numberOfSectors\0"
	.align
_Label_2856:
	.byte	'I'
	.ascii	"memoryAddr\0"
	.align
_Label_2857:
	.byte	'P'
	.ascii	"whoCares\0"
	.align
! 
! ===============  CLASS FileManager  ===============
! 
! Dispatch Table:
! 
_P_Kernel_FileManager:
	.word	_Label_2858
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
_Label_2858:
	.word	1129070931		! Magic number 0x434c4153 == 'CLAS'
	.word	_Label_2859
	.word	_sourceFileName
	.word	336		! line number
	.word	800		! size of instances, in bytes
	.word	_P_Kernel_FileManager
	.word	_P_System_Object
	.word	0
_Label_2859:
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
_Label_3894:
	push	r0
	sub	r1,1,r1
	bne	_Label_3894
	mov	2752,r13		! source line 2752
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   _temp_2860 = _StringConst_144
	set	_StringConst_144,r1
	store	r1,[r14+-940]
!   Prepare Argument: offset=8  value=_temp_2860  sizeInBytes=4
	load	[r14+-940],r1
	store	r1,[r15+0]
!   Call the function
	mov	2759,r13		! source line 2759
	mov	"\0\0CE",r10
	call	print
! ASSIGNMENT STATEMENT...
	mov	2760,r13		! source line 2760
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
	mov	2761,r13		! source line 2761
	mov	"\0\0SE",r10
!   _temp_2862 = &fileManagerLock
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
	mov	2764,r13		! source line 2764
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
	mov	2765,r13		! source line 2765
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
	mov	2766,r13		! source line 2766
	mov	"\0\0SE",r10
!   _temp_2865 = &anFCBBecameFree
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
	mov	2767,r13		! source line 2767
	mov	"\0\0AS",r10
!   _temp_2866 = &fcbTable
	load	[r14+8],r1
	add	r1,24,r1
	store	r1,[r14+-916]
!   NEW ARRAY Constructor...
!   _temp_2868 = &_temp_2867
	add	r14,-912,r1
	store	r1,[r14+-508]
!   _temp_2868 = _temp_2868 + 4
	load	[r14+-508],r1
	add	r1,4,r1
	store	r1,[r14+-508]
!   Next value...
!   NEW CLASS Constructor...
!   ZeroMemory: _temp_2870 = zeros  (sizeInBytes=40)
	add	r14,-500,r4
	mov	10,r3
_Label_3895:
	store	r0,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_3895
!   _temp_2870 = _P_Kernel_FileControlBlock
	set	_P_Kernel_FileControlBlock,r1
	store	r1,[r14+-500]
	mov	10,r1
	store	r1,[r14+-504]
_Label_2872:
!   Data Move: *_temp_2868 = _temp_2870  (sizeInBytes=40)
	add	r14,-500,r5
	load	[r14+-508],r4
	mov	10,r3
_Label_3896:
	load	[r5],r1
	add	r5,4,r5
	store	r1,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_3896
!   _temp_2868 = _temp_2868 + 40
	load	[r14+-508],r1
	add	r1,40,r1
	store	r1,[r14+-508]
!   _temp_2869 = _temp_2869 + -1
	load	[r14+-504],r1
	add	r1,-1,r1
	store	r1,[r14+-504]
!   if intNotZero (_temp_2869) then goto _Label_2872
	load	[r14+-504],r1
	cmp	r1,r0
	bne	_Label_2872
!   Initialize the array size...
	mov	10,r1
	store	r1,[r14+-912]
!   _temp_2873 = &_temp_2867
	add	r14,-912,r1
	store	r1,[r14+-456]
!   make sure array has size 10
	load	[r14+-916],r1
	load	[r1],r1
	set	10, r2
	cmp	r1,0
	be	_Label_3897
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bne	_runtimeErrorWrongArraySize
_Label_3897:
!   make sure array has size 10
	load	[r14+-456],r1
	load	[r1],r1
	set	10, r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bne	_runtimeErrorWrongArraySize
!   Data Move: *_temp_2866 = *_temp_2873  (sizeInBytes=404)
	load	[r14+-456],r5
	load	[r14+-916],r4
	mov	101,r3
_Label_3898:
	load	[r5],r1
	add	r5,4,r5
	store	r1,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_3898
! FOR STATEMENT...
	mov	2769,r13		! source line 2769
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_2878 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-452]
!   Calculate and save the FOR-LOOP ending value
!   _temp_2879 = 9		(4 bytes)
	mov	9,r1
	store	r1,[r14+-448]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_2878  (sizeInBytes=4)
	load	[r14+-452],r1
	store	r1,[r14+-944]
_Label_2874:
!   Perform the FOR-LOOP termination test
!   if i > _temp_2879 then goto _Label_2877		
	load	[r14+-944],r1
	load	[r14+-448],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_2877
_Label_2875:
	mov	2769,r13		! source line 2769
	mov	"\0\0FB",r10
! ASSIGNMENT STATEMENT...
	mov	2770,r13		! source line 2770
	mov	"\0\0AS",r10
!   _temp_2880 = &fcbTable
	load	[r14+8],r1
	add	r1,24,r1
	store	r1,[r14+-444]
!   Move address of _temp_2880 [i ] into _temp_2881
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
!   _temp_2882 = _temp_2881 + 12
	load	[r14+-440],r1
	add	r1,12,r1
	store	r1,[r14+-436]
!   Data Move: *_temp_2882 = i  (sizeInBytes=4)
	load	[r14+-944],r1
	load	[r14+-436],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	2771,r13		! source line 2771
	mov	"\0\0SE",r10
!   _temp_2883 = &fcbTable
	load	[r14+8],r1
	add	r1,24,r1
	store	r1,[r14+-432]
!   Move address of _temp_2883 [i ] into _temp_2884
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
	mov	2772,r13		! source line 2772
	mov	"\0\0SE",r10
!   _temp_2886 = &fcbTable
	load	[r14+8],r1
	add	r1,24,r1
	store	r1,[r14+-420]
!   Move address of _temp_2886 [i ] into _temp_2887
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
!   _temp_2885 = _temp_2887		(4 bytes)
	load	[r14+-416],r1
	store	r1,[r14+-424]
!   _temp_2888 = &fcbFreeList
	load	[r14+8],r1
	add	r1,444,r1
	store	r1,[r14+-412]
!   Prepare Argument: offset=12  value=_temp_2885  sizeInBytes=4
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
_Label_2876:
!   i = i + 1
	load	[r14+-944],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-944]
	jmp	_Label_2874
! END FOR
_Label_2877:
! ASSIGNMENT STATEMENT...
	mov	2776,r13		! source line 2776
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
	mov	2777,r13		! source line 2777
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
	mov	2778,r13		! source line 2778
	mov	"\0\0SE",r10
!   _temp_2891 = &anOpenFileBecameFree
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
	mov	2779,r13		! source line 2779
	mov	"\0\0AS",r10
!   _temp_2892 = &openFileTable
	load	[r14+8],r1
	add	r1,456,r1
	store	r1,[r14+-396]
!   NEW ARRAY Constructor...
!   _temp_2894 = &_temp_2893
	add	r14,-392,r1
	store	r1,[r14+-108]
!   _temp_2894 = _temp_2894 + 4
	load	[r14+-108],r1
	add	r1,4,r1
	store	r1,[r14+-108]
!   Next value...
!   NEW CLASS Constructor...
!   ZeroMemory: _temp_2896 = zeros  (sizeInBytes=28)
	add	r14,-100,r4
	mov	7,r3
_Label_3899:
	store	r0,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_3899
!   _temp_2896 = _P_Kernel_OpenFile
	set	_P_Kernel_OpenFile,r1
	store	r1,[r14+-100]
	mov	10,r1
	store	r1,[r14+-104]
_Label_2898:
!   Data Move: *_temp_2894 = _temp_2896  (sizeInBytes=28)
	add	r14,-100,r5
	load	[r14+-108],r4
	mov	7,r3
_Label_3900:
	load	[r5],r1
	add	r5,4,r5
	store	r1,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_3900
!   _temp_2894 = _temp_2894 + 28
	load	[r14+-108],r1
	add	r1,28,r1
	store	r1,[r14+-108]
!   _temp_2895 = _temp_2895 + -1
	load	[r14+-104],r1
	add	r1,-1,r1
	store	r1,[r14+-104]
!   if intNotZero (_temp_2895) then goto _Label_2898
	load	[r14+-104],r1
	cmp	r1,r0
	bne	_Label_2898
!   Initialize the array size...
	mov	10,r1
	store	r1,[r14+-392]
!   _temp_2899 = &_temp_2893
	add	r14,-392,r1
	store	r1,[r14+-68]
!   make sure array has size 10
	load	[r14+-396],r1
	load	[r1],r1
	set	10, r2
	cmp	r1,0
	be	_Label_3901
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bne	_runtimeErrorWrongArraySize
_Label_3901:
!   make sure array has size 10
	load	[r14+-68],r1
	load	[r1],r1
	set	10, r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bne	_runtimeErrorWrongArraySize
!   Data Move: *_temp_2892 = *_temp_2899  (sizeInBytes=284)
	load	[r14+-68],r5
	load	[r14+-396],r4
	mov	71,r3
_Label_3902:
	load	[r5],r1
	add	r5,4,r5
	store	r1,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_3902
! FOR STATEMENT...
	mov	2781,r13		! source line 2781
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_2904 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-64]
!   Calculate and save the FOR-LOOP ending value
!   _temp_2905 = 9		(4 bytes)
	mov	9,r1
	store	r1,[r14+-60]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_2904  (sizeInBytes=4)
	load	[r14+-64],r1
	store	r1,[r14+-944]
_Label_2900:
!   Perform the FOR-LOOP termination test
!   if i > _temp_2905 then goto _Label_2903		
	load	[r14+-944],r1
	load	[r14+-60],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_2903
_Label_2901:
	mov	2781,r13		! source line 2781
	mov	"\0\0FB",r10
! ASSIGNMENT STATEMENT...
	mov	2782,r13		! source line 2782
	mov	"\0\0AS",r10
!   _temp_2906 = &openFileTable
	load	[r14+8],r1
	add	r1,456,r1
	store	r1,[r14+-56]
!   Move address of _temp_2906 [i ] into _temp_2907
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
!   _temp_2908 = _temp_2907 + 12
	load	[r14+-52],r1
	add	r1,12,r1
	store	r1,[r14+-48]
!   Data Move: *_temp_2908 = 1  (sizeInBytes=4)
	mov	1,r1
	load	[r14+-48],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	2783,r13		! source line 2783
	mov	"\0\0SE",r10
!   _temp_2910 = &openFileTable
	load	[r14+8],r1
	add	r1,456,r1
	store	r1,[r14+-40]
!   Move address of _temp_2910 [i ] into _temp_2911
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
!   _temp_2909 = _temp_2911		(4 bytes)
	load	[r14+-36],r1
	store	r1,[r14+-44]
!   _temp_2912 = &openFileFreeList
	load	[r14+8],r1
	add	r1,756,r1
	store	r1,[r14+-32]
!   Prepare Argument: offset=12  value=_temp_2909  sizeInBytes=4
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
_Label_2902:
!   i = i + 1
	load	[r14+-944],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-944]
	jmp	_Label_2900
! END FOR
_Label_2903:
! ASSIGNMENT STATEMENT...
	mov	2787,r13		! source line 2787
	mov	"\0\0AS",r10
!   NEW CLASS Constructor...
!   ZeroMemory: serialTerminalFile = zeros  (sizeInBytes=28)
	load	[r14+8],r4
	add	r4,772,r4
	mov	7,r3
_Label_3903:
	store	r0,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_3903
!   serialTerminalFile = _P_Kernel_OpenFile
	set	_P_Kernel_OpenFile,r1
	load	[r14+8],r2
	store	r1,[r2+772]
! ASSIGNMENT STATEMENT...
	mov	2788,r13		! source line 2788
	mov	"\0\0AS",r10
!   _temp_2914 = &serialTerminalFile
	load	[r14+8],r1
	add	r1,772,r1
	store	r1,[r14+-24]
!   _temp_2915 = _temp_2914 + 12
	load	[r14+-24],r1
	add	r1,12,r1
	store	r1,[r14+-20]
!   Data Move: *_temp_2915 = 2  (sizeInBytes=4)
	mov	2,r1
	load	[r14+-20],r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	2793,r13		! source line 2793
	mov	"\0\0AS",r10
	mov	2793,r13		! source line 2793
	mov	"\0\0SE",r10
!   _temp_2916 = &_P_Kernel_frameManager
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
	mov	2794,r13		! source line 2794
	mov	"\0\0SE",r10
!   _temp_2917 = &_P_Kernel_diskDriver
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
	mov	2794,r13		! source line 2794
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
	.word	_Label_2918
	.word	4		! total size of parameters
	.word	952		! frame size = 952
	.word	_Label_2919
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2920
	.word	-12
	.word	4
	.word	_Label_2921
	.word	-16
	.word	4
	.word	_Label_2922
	.word	-20
	.word	4
	.word	_Label_2923
	.word	-24
	.word	4
	.word	_Label_2924
	.word	-28
	.word	4
	.word	_Label_2925
	.word	-32
	.word	4
	.word	_Label_2926
	.word	-36
	.word	4
	.word	_Label_2927
	.word	-40
	.word	4
	.word	_Label_2928
	.word	-44
	.word	4
	.word	_Label_2929
	.word	-48
	.word	4
	.word	_Label_2930
	.word	-52
	.word	4
	.word	_Label_2931
	.word	-56
	.word	4
	.word	_Label_2932
	.word	-60
	.word	4
	.word	_Label_2933
	.word	-64
	.word	4
	.word	_Label_2934
	.word	-68
	.word	4
	.word	_Label_2935
	.word	-72
	.word	4
	.word	_Label_2936
	.word	-100
	.word	28
	.word	_Label_2937
	.word	-104
	.word	4
	.word	_Label_2938
	.word	-108
	.word	4
	.word	_Label_2939
	.word	-392
	.word	284
	.word	_Label_2940
	.word	-396
	.word	4
	.word	_Label_2941
	.word	-400
	.word	4
	.word	_Label_2942
	.word	-404
	.word	4
	.word	_Label_2943
	.word	-408
	.word	4
	.word	_Label_2944
	.word	-412
	.word	4
	.word	_Label_2945
	.word	-416
	.word	4
	.word	_Label_2946
	.word	-420
	.word	4
	.word	_Label_2947
	.word	-424
	.word	4
	.word	_Label_2948
	.word	-428
	.word	4
	.word	_Label_2949
	.word	-432
	.word	4
	.word	_Label_2950
	.word	-436
	.word	4
	.word	_Label_2951
	.word	-440
	.word	4
	.word	_Label_2952
	.word	-444
	.word	4
	.word	_Label_2953
	.word	-448
	.word	4
	.word	_Label_2954
	.word	-452
	.word	4
	.word	_Label_2955
	.word	-456
	.word	4
	.word	_Label_2956
	.word	-460
	.word	4
	.word	_Label_2957
	.word	-500
	.word	40
	.word	_Label_2958
	.word	-504
	.word	4
	.word	_Label_2959
	.word	-508
	.word	4
	.word	_Label_2960
	.word	-912
	.word	404
	.word	_Label_2961
	.word	-916
	.word	4
	.word	_Label_2962
	.word	-920
	.word	4
	.word	_Label_2963
	.word	-924
	.word	4
	.word	_Label_2964
	.word	-928
	.word	4
	.word	_Label_2965
	.word	-932
	.word	4
	.word	_Label_2966
	.word	-936
	.word	4
	.word	_Label_2967
	.word	-940
	.word	4
	.word	_Label_2968
	.word	-944
	.word	4
	.word	0
_Label_2918:
	.ascii	"FileManager"
	.ascii	"::"
	.ascii	"Init\0"
	.align
_Label_2919:
	.ascii	"Pself\0"
	.align
_Label_2920:
	.byte	'?'
	.ascii	"_temp_2917\0"
	.align
_Label_2921:
	.byte	'?'
	.ascii	"_temp_2916\0"
	.align
_Label_2922:
	.byte	'?'
	.ascii	"_temp_2915\0"
	.align
_Label_2923:
	.byte	'?'
	.ascii	"_temp_2914\0"
	.align
_Label_2924:
	.byte	'?'
	.ascii	"_temp_2913\0"
	.align
_Label_2925:
	.byte	'?'
	.ascii	"_temp_2912\0"
	.align
_Label_2926:
	.byte	'?'
	.ascii	"_temp_2911\0"
	.align
_Label_2927:
	.byte	'?'
	.ascii	"_temp_2910\0"
	.align
_Label_2928:
	.byte	'?'
	.ascii	"_temp_2909\0"
	.align
_Label_2929:
	.byte	'?'
	.ascii	"_temp_2908\0"
	.align
_Label_2930:
	.byte	'?'
	.ascii	"_temp_2907\0"
	.align
_Label_2931:
	.byte	'?'
	.ascii	"_temp_2906\0"
	.align
_Label_2932:
	.byte	'?'
	.ascii	"_temp_2905\0"
	.align
_Label_2933:
	.byte	'?'
	.ascii	"_temp_2904\0"
	.align
_Label_2934:
	.byte	'?'
	.ascii	"_temp_2899\0"
	.align
_Label_2935:
	.byte	'?'
	.ascii	"_temp_2897\0"
	.align
_Label_2936:
	.byte	'?'
	.ascii	"_temp_2896\0"
	.align
_Label_2937:
	.byte	'?'
	.ascii	"_temp_2895\0"
	.align
_Label_2938:
	.byte	'?'
	.ascii	"_temp_2894\0"
	.align
_Label_2939:
	.byte	'?'
	.ascii	"_temp_2893\0"
	.align
_Label_2940:
	.byte	'?'
	.ascii	"_temp_2892\0"
	.align
_Label_2941:
	.byte	'?'
	.ascii	"_temp_2891\0"
	.align
_Label_2942:
	.byte	'?'
	.ascii	"_temp_2890\0"
	.align
_Label_2943:
	.byte	'?'
	.ascii	"_temp_2889\0"
	.align
_Label_2944:
	.byte	'?'
	.ascii	"_temp_2888\0"
	.align
_Label_2945:
	.byte	'?'
	.ascii	"_temp_2887\0"
	.align
_Label_2946:
	.byte	'?'
	.ascii	"_temp_2886\0"
	.align
_Label_2947:
	.byte	'?'
	.ascii	"_temp_2885\0"
	.align
_Label_2948:
	.byte	'?'
	.ascii	"_temp_2884\0"
	.align
_Label_2949:
	.byte	'?'
	.ascii	"_temp_2883\0"
	.align
_Label_2950:
	.byte	'?'
	.ascii	"_temp_2882\0"
	.align
_Label_2951:
	.byte	'?'
	.ascii	"_temp_2881\0"
	.align
_Label_2952:
	.byte	'?'
	.ascii	"_temp_2880\0"
	.align
_Label_2953:
	.byte	'?'
	.ascii	"_temp_2879\0"
	.align
_Label_2954:
	.byte	'?'
	.ascii	"_temp_2878\0"
	.align
_Label_2955:
	.byte	'?'
	.ascii	"_temp_2873\0"
	.align
_Label_2956:
	.byte	'?'
	.ascii	"_temp_2871\0"
	.align
_Label_2957:
	.byte	'?'
	.ascii	"_temp_2870\0"
	.align
_Label_2958:
	.byte	'?'
	.ascii	"_temp_2869\0"
	.align
_Label_2959:
	.byte	'?'
	.ascii	"_temp_2868\0"
	.align
_Label_2960:
	.byte	'?'
	.ascii	"_temp_2867\0"
	.align
_Label_2961:
	.byte	'?'
	.ascii	"_temp_2866\0"
	.align
_Label_2962:
	.byte	'?'
	.ascii	"_temp_2865\0"
	.align
_Label_2963:
	.byte	'?'
	.ascii	"_temp_2864\0"
	.align
_Label_2964:
	.byte	'?'
	.ascii	"_temp_2863\0"
	.align
_Label_2965:
	.byte	'?'
	.ascii	"_temp_2862\0"
	.align
_Label_2966:
	.byte	'?'
	.ascii	"_temp_2861\0"
	.align
_Label_2967:
	.byte	'?'
	.ascii	"_temp_2860\0"
	.align
_Label_2968:
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
_Label_3904:
	push	r0
	sub	r1,1,r1
	bne	_Label_3904
	mov	2801,r13		! source line 2801
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! SEND STATEMENT...
	mov	2803,r13		! source line 2803
	mov	"\0\0SE",r10
!   _temp_2969 = &fileManagerLock
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
!   _temp_2970 = _StringConst_145
	set	_StringConst_145,r1
	store	r1,[r14+-108]
!   Prepare Argument: offset=8  value=_temp_2970  sizeInBytes=4
	load	[r14+-108],r1
	store	r1,[r15+0]
!   Call the function
	mov	2804,r13		! source line 2804
	mov	"\0\0CE",r10
	call	print
! FOR STATEMENT...
	mov	2805,r13		! source line 2805
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_2975 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-104]
!   Calculate and save the FOR-LOOP ending value
!   _temp_2976 = 9		(4 bytes)
	mov	9,r1
	store	r1,[r14+-100]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_2975  (sizeInBytes=4)
	load	[r14+-104],r1
	store	r1,[r14+-116]
_Label_2971:
!   Perform the FOR-LOOP termination test
!   if i > _temp_2976 then goto _Label_2974		
	load	[r14+-116],r1
	load	[r14+-100],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_2974
_Label_2972:
	mov	2805,r13		! source line 2805
	mov	"\0\0FB",r10
! CALL STATEMENT...
!   _temp_2977 = _StringConst_146
	set	_StringConst_146,r1
	store	r1,[r14+-96]
!   Prepare Argument: offset=8  value=_temp_2977  sizeInBytes=4
	load	[r14+-96],r1
	store	r1,[r15+0]
!   Call the function
	mov	2806,r13		! source line 2806
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=i  sizeInBytes=4
	load	[r14+-116],r1
	store	r1,[r15+0]
!   Call the function
	mov	2807,r13		! source line 2807
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   _temp_2978 = _StringConst_147
	set	_StringConst_147,r1
	store	r1,[r14+-92]
!   Prepare Argument: offset=8  value=_temp_2978  sizeInBytes=4
	load	[r14+-92],r1
	store	r1,[r15+0]
!   Call the function
	mov	2808,r13		! source line 2808
	mov	"\0\0CE",r10
	call	print
! SEND STATEMENT...
	mov	2809,r13		! source line 2809
	mov	"\0\0SE",r10
!   _temp_2979 = &fcbTable
	load	[r14+8],r1
	add	r1,24,r1
	store	r1,[r14+-88]
!   Move address of _temp_2979 [i ] into _temp_2980
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
_Label_2973:
!   i = i + 1
	load	[r14+-116],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-116]
	jmp	_Label_2971
! END FOR
_Label_2974:
! CALL STATEMENT...
!   _temp_2981 = _StringConst_148
	set	_StringConst_148,r1
	store	r1,[r14+-80]
!   Prepare Argument: offset=8  value=_temp_2981  sizeInBytes=4
	load	[r14+-80],r1
	store	r1,[r15+0]
!   Call the function
	mov	2811,r13		! source line 2811
	mov	"\0\0CE",r10
	call	print
! SEND STATEMENT...
	mov	2812,r13		! source line 2812
	mov	"\0\0SE",r10
!   _temp_2982 = _function_190_printFCB
	set	_function_190_printFCB,r1
	store	r1,[r14+-76]
!   _temp_2983 = &fcbFreeList
	load	[r14+8],r1
	add	r1,444,r1
	store	r1,[r14+-72]
!   Prepare Argument: offset=12  value=_temp_2982  sizeInBytes=4
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
	mov	2813,r13		! source line 2813
	mov	"\0\0CA",r10
	call	_P_System_nl
! CALL STATEMENT...
!   _temp_2984 = _StringConst_149
	set	_StringConst_149,r1
	store	r1,[r14+-68]
!   Prepare Argument: offset=8  value=_temp_2984  sizeInBytes=4
	load	[r14+-68],r1
	store	r1,[r15+0]
!   Call the function
	mov	2814,r13		! source line 2814
	mov	"\0\0CE",r10
	call	print
! FOR STATEMENT...
	mov	2815,r13		! source line 2815
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_2989 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-64]
!   Calculate and save the FOR-LOOP ending value
!   _temp_2990 = 9		(4 bytes)
	mov	9,r1
	store	r1,[r14+-60]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_2989  (sizeInBytes=4)
	load	[r14+-64],r1
	store	r1,[r14+-116]
_Label_2985:
!   Perform the FOR-LOOP termination test
!   if i > _temp_2990 then goto _Label_2988		
	load	[r14+-116],r1
	load	[r14+-60],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_2988
_Label_2986:
	mov	2815,r13		! source line 2815
	mov	"\0\0FB",r10
! CALL STATEMENT...
!   _temp_2991 = _StringConst_150
	set	_StringConst_150,r1
	store	r1,[r14+-56]
!   Prepare Argument: offset=8  value=_temp_2991  sizeInBytes=4
	load	[r14+-56],r1
	store	r1,[r15+0]
!   Call the function
	mov	2816,r13		! source line 2816
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=i  sizeInBytes=4
	load	[r14+-116],r1
	store	r1,[r15+0]
!   Call the function
	mov	2817,r13		! source line 2817
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   _temp_2992 = _StringConst_151
	set	_StringConst_151,r1
	store	r1,[r14+-52]
!   Prepare Argument: offset=8  value=_temp_2992  sizeInBytes=4
	load	[r14+-52],r1
	store	r1,[r15+0]
!   Call the function
	mov	2818,r13		! source line 2818
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_2994 = &openFileTable
	load	[r14+8],r1
	add	r1,456,r1
	store	r1,[r14+-44]
!   Move address of _temp_2994 [i ] into _temp_2995
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
!   _temp_2993 = _temp_2995		(4 bytes)
	load	[r14+-40],r1
	store	r1,[r14+-48]
!   Prepare Argument: offset=8  value=_temp_2993  sizeInBytes=4
	load	[r14+-48],r1
	store	r1,[r15+0]
!   Call the function
	mov	2819,r13		! source line 2819
	mov	"\0\0CE",r10
	call	printHex
! CALL STATEMENT...
!   _temp_2996 = _StringConst_152
	set	_StringConst_152,r1
	store	r1,[r14+-36]
!   Prepare Argument: offset=8  value=_temp_2996  sizeInBytes=4
	load	[r14+-36],r1
	store	r1,[r15+0]
!   Call the function
	mov	2820,r13		! source line 2820
	mov	"\0\0CE",r10
	call	print
! SEND STATEMENT...
	mov	2821,r13		! source line 2821
	mov	"\0\0SE",r10
!   _temp_2997 = &openFileTable
	load	[r14+8],r1
	add	r1,456,r1
	store	r1,[r14+-32]
!   Move address of _temp_2997 [i ] into _temp_2998
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
_Label_2987:
!   i = i + 1
	load	[r14+-116],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-116]
	jmp	_Label_2985
! END FOR
_Label_2988:
! CALL STATEMENT...
!   _temp_2999 = _StringConst_153
	set	_StringConst_153,r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=8  value=_temp_2999  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+0]
!   Call the function
	mov	2823,r13		! source line 2823
	mov	"\0\0CE",r10
	call	print
! SEND STATEMENT...
	mov	2824,r13		! source line 2824
	mov	"\0\0SE",r10
!   _temp_3000 = _function_189_printOpen
	set	_function_189_printOpen,r1
	store	r1,[r14+-20]
!   _temp_3001 = &openFileFreeList
	load	[r14+8],r1
	add	r1,756,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=12  value=_temp_3000  sizeInBytes=4
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
	mov	2825,r13		! source line 2825
	mov	"\0\0SE",r10
!   _temp_3002 = &fileManagerLock
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
	mov	2825,r13		! source line 2825
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
	.word	_Label_3003
	.word	4		! total size of parameters
	.word	116		! frame size = 116
	.word	_Label_3004
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_3005
	.word	-12
	.word	4
	.word	_Label_3006
	.word	-16
	.word	4
	.word	_Label_3007
	.word	-20
	.word	4
	.word	_Label_3008
	.word	-24
	.word	4
	.word	_Label_3009
	.word	-28
	.word	4
	.word	_Label_3010
	.word	-32
	.word	4
	.word	_Label_3011
	.word	-36
	.word	4
	.word	_Label_3012
	.word	-40
	.word	4
	.word	_Label_3013
	.word	-44
	.word	4
	.word	_Label_3014
	.word	-48
	.word	4
	.word	_Label_3015
	.word	-52
	.word	4
	.word	_Label_3016
	.word	-56
	.word	4
	.word	_Label_3017
	.word	-60
	.word	4
	.word	_Label_3018
	.word	-64
	.word	4
	.word	_Label_3019
	.word	-68
	.word	4
	.word	_Label_3020
	.word	-72
	.word	4
	.word	_Label_3021
	.word	-76
	.word	4
	.word	_Label_3022
	.word	-80
	.word	4
	.word	_Label_3023
	.word	-84
	.word	4
	.word	_Label_3024
	.word	-88
	.word	4
	.word	_Label_3025
	.word	-92
	.word	4
	.word	_Label_3026
	.word	-96
	.word	4
	.word	_Label_3027
	.word	-100
	.word	4
	.word	_Label_3028
	.word	-104
	.word	4
	.word	_Label_3029
	.word	-108
	.word	4
	.word	_Label_3030
	.word	-112
	.word	4
	.word	_Label_3031
	.word	-116
	.word	4
	.word	0
_Label_3003:
	.ascii	"FileManager"
	.ascii	"::"
	.ascii	"Print\0"
	.align
_Label_3004:
	.ascii	"Pself\0"
	.align
_Label_3005:
	.byte	'?'
	.ascii	"_temp_3002\0"
	.align
_Label_3006:
	.byte	'?'
	.ascii	"_temp_3001\0"
	.align
_Label_3007:
	.byte	'?'
	.ascii	"_temp_3000\0"
	.align
_Label_3008:
	.byte	'?'
	.ascii	"_temp_2999\0"
	.align
_Label_3009:
	.byte	'?'
	.ascii	"_temp_2998\0"
	.align
_Label_3010:
	.byte	'?'
	.ascii	"_temp_2997\0"
	.align
_Label_3011:
	.byte	'?'
	.ascii	"_temp_2996\0"
	.align
_Label_3012:
	.byte	'?'
	.ascii	"_temp_2995\0"
	.align
_Label_3013:
	.byte	'?'
	.ascii	"_temp_2994\0"
	.align
_Label_3014:
	.byte	'?'
	.ascii	"_temp_2993\0"
	.align
_Label_3015:
	.byte	'?'
	.ascii	"_temp_2992\0"
	.align
_Label_3016:
	.byte	'?'
	.ascii	"_temp_2991\0"
	.align
_Label_3017:
	.byte	'?'
	.ascii	"_temp_2990\0"
	.align
_Label_3018:
	.byte	'?'
	.ascii	"_temp_2989\0"
	.align
_Label_3019:
	.byte	'?'
	.ascii	"_temp_2984\0"
	.align
_Label_3020:
	.byte	'?'
	.ascii	"_temp_2983\0"
	.align
_Label_3021:
	.byte	'?'
	.ascii	"_temp_2982\0"
	.align
_Label_3022:
	.byte	'?'
	.ascii	"_temp_2981\0"
	.align
_Label_3023:
	.byte	'?'
	.ascii	"_temp_2980\0"
	.align
_Label_3024:
	.byte	'?'
	.ascii	"_temp_2979\0"
	.align
_Label_3025:
	.byte	'?'
	.ascii	"_temp_2978\0"
	.align
_Label_3026:
	.byte	'?'
	.ascii	"_temp_2977\0"
	.align
_Label_3027:
	.byte	'?'
	.ascii	"_temp_2976\0"
	.align
_Label_3028:
	.byte	'?'
	.ascii	"_temp_2975\0"
	.align
_Label_3029:
	.byte	'?'
	.ascii	"_temp_2970\0"
	.align
_Label_3030:
	.byte	'?'
	.ascii	"_temp_2969\0"
	.align
_Label_3031:
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
_Label_3905:
	push	r0
	sub	r1,1,r1
	bne	_Label_3905
	mov	2830,r13		! source line 2830
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	2847,r13		! source line 2847
	mov	"\0\0AS",r10
	mov	2847,r13		! source line 2847
	mov	"\0\0SE",r10
!   _temp_3032 = &_P_Kernel_fileManager
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
	mov	2848,r13		! source line 2848
	mov	"\0\0IF",r10
!   if intIsZero (fcb) then goto _Label_3033
	load	[r14+-56],r1
	cmp	r1,r0
	be	_Label_3033
	jmp	_Label_3034
_Label_3033:
! THEN...
	mov	2849,r13		! source line 2849
	mov	"\0\0TN",r10
! RETURN STATEMENT...
	mov	2849,r13		! source line 2849
	mov	"\0\0RE",r10
!   ReturnResult: 0  (sizeInBytes=4)
	mov	0,r1
	store	r1,[r14+8]
	add	r15,60,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_3034:
! SEND STATEMENT...
	mov	2853,r13		! source line 2853
	mov	"\0\0SE",r10
!   _temp_3035 = &fileManagerLock
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
	mov	2854,r13		! source line 2854
	mov	"\0\0WH",r10
_Label_3036:
	mov	2854,r13		! source line 2854
	mov	"\0\0SE",r10
!   _temp_3039 = &openFileFreeList
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
!   if result==true then goto _Label_3037 else goto _Label_3038
	loadb	[r15],r1
	cmp	r1,0
	be	_Label_3038
	jmp	_Label_3037
_Label_3037:
	mov	2854,r13		! source line 2854
	mov	"\0\0WB",r10
! SEND STATEMENT...
	mov	2855,r13		! source line 2855
	mov	"\0\0SE",r10
!   _temp_3040 = &fileManagerLock
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-36]
!   _temp_3041 = &anOpenFileBecameFree
	load	[r14+8],r1
	add	r1,740,r1
	store	r1,[r14+-32]
!   Prepare Argument: offset=12  value=_temp_3040  sizeInBytes=4
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
	jmp	_Label_3036
_Label_3038:
! ASSIGNMENT STATEMENT...
	mov	2857,r13		! source line 2857
	mov	"\0\0AS",r10
	mov	2857,r13		! source line 2857
	mov	"\0\0SE",r10
!   _temp_3042 = &openFileFreeList
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
	mov	2860,r13		! source line 2860
	mov	"\0\0AS",r10
!   if intIsZero (open) then goto _runtimeErrorNullPointer
	load	[r14+-52],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3043 = open + 20
	load	[r14+-52],r1
	add	r1,20,r1
	store	r1,[r14+-24]
!   Data Move: *_temp_3043 = fcb  (sizeInBytes=4)
	load	[r14+-56],r1
	load	[r14+-24],r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	2861,r13		! source line 2861
	mov	"\0\0AS",r10
!   if intIsZero (open) then goto _runtimeErrorNullPointer
	load	[r14+-52],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3044 = open + 24
	load	[r14+-52],r1
	add	r1,24,r1
	store	r1,[r14+-20]
!   Data Move: *_temp_3044 = 1  (sizeInBytes=4)
	mov	1,r1
	load	[r14+-20],r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	2864,r13		! source line 2864
	mov	"\0\0AS",r10
!   if intIsZero (open) then goto _runtimeErrorNullPointer
	load	[r14+-52],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3045 = open + 16
	load	[r14+-52],r1
	add	r1,16,r1
	store	r1,[r14+-16]
!   Data Move: *_temp_3045 = 0  (sizeInBytes=4)
	mov	0,r1
	load	[r14+-16],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	2866,r13		! source line 2866
	mov	"\0\0SE",r10
!   _temp_3046 = &fileManagerLock
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
	mov	2867,r13		! source line 2867
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
	.word	_Label_3047
	.word	8		! total size of parameters
	.word	56		! frame size = 56
	.word	_Label_3048
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_3049
	.word	12
	.word	4
	.word	_Label_3050
	.word	-12
	.word	4
	.word	_Label_3051
	.word	-16
	.word	4
	.word	_Label_3052
	.word	-20
	.word	4
	.word	_Label_3053
	.word	-24
	.word	4
	.word	_Label_3054
	.word	-28
	.word	4
	.word	_Label_3055
	.word	-32
	.word	4
	.word	_Label_3056
	.word	-36
	.word	4
	.word	_Label_3057
	.word	-40
	.word	4
	.word	_Label_3058
	.word	-44
	.word	4
	.word	_Label_3059
	.word	-48
	.word	4
	.word	_Label_3060
	.word	-52
	.word	4
	.word	_Label_3061
	.word	-56
	.word	4
	.word	0
_Label_3047:
	.ascii	"FileManager"
	.ascii	"::"
	.ascii	"Open\0"
	.align
_Label_3048:
	.ascii	"Pself\0"
	.align
_Label_3049:
	.byte	'P'
	.ascii	"filename\0"
	.align
_Label_3050:
	.byte	'?'
	.ascii	"_temp_3046\0"
	.align
_Label_3051:
	.byte	'?'
	.ascii	"_temp_3045\0"
	.align
_Label_3052:
	.byte	'?'
	.ascii	"_temp_3044\0"
	.align
_Label_3053:
	.byte	'?'
	.ascii	"_temp_3043\0"
	.align
_Label_3054:
	.byte	'?'
	.ascii	"_temp_3042\0"
	.align
_Label_3055:
	.byte	'?'
	.ascii	"_temp_3041\0"
	.align
_Label_3056:
	.byte	'?'
	.ascii	"_temp_3040\0"
	.align
_Label_3057:
	.byte	'?'
	.ascii	"_temp_3039\0"
	.align
_Label_3058:
	.byte	'?'
	.ascii	"_temp_3035\0"
	.align
_Label_3059:
	.byte	'?'
	.ascii	"_temp_3032\0"
	.align
_Label_3060:
	.byte	'P'
	.ascii	"open\0"
	.align
_Label_3061:
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
_Label_3906:
	push	r0
	sub	r1,1,r1
	bne	_Label_3906
	mov	2872,r13		! source line 2872
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	2897,r13		! source line 2897
	mov	"\0\0AS",r10
!   p = directoryFrame		(4 bytes)
	load	[r14+8],r1
	load	[r1+768],r1
	store	r1,[r14+-160]
! ASSIGNMENT STATEMENT...
	mov	2900,r13		! source line 2900
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
	mov	2901,r13		! source line 2901
	mov	"\0\0AS",r10
!   p = p + 4		(int)
	load	[r14+-160],r1
	mov	4,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-160]
! IF STATEMENT...
	mov	2902,r13		! source line 2902
	mov	"\0\0IF",r10
!   if i == 1937012066 then goto _Label_3063		(int)
	load	[r14+-136],r1
	set	1937012066,r2
	cmp	r1,r2
	be	_Label_3063
!	jmp	_Label_3062
_Label_3062:
! THEN...
	mov	2903,r13		! source line 2903
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_3064 = _StringConst_154
	set	_StringConst_154,r1
	store	r1,[r14+-132]
!   Prepare Argument: offset=8  value=_temp_3064  sizeInBytes=4
	load	[r14+-132],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	2903,r13		! source line 2903
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END IF...
_Label_3063:
! ASSIGNMENT STATEMENT...
	mov	2907,r13		! source line 2907
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
	mov	2908,r13		! source line 2908
	mov	"\0\0AS",r10
!   p = p + 4		(int)
	load	[r14+-160],r1
	mov	4,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-160]
! ASSIGNMENT STATEMENT...
	mov	2909,r13		! source line 2909
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
	mov	2910,r13		! source line 2910
	mov	"\0\0AS",r10
!   p = p + 4		(int)
	load	[r14+-160],r1
	mov	4,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-160]
! WHILE STATEMENT...
	mov	2913,r13		! source line 2913
	mov	"\0\0WH",r10
_Label_3065:
!   if numFiles <= 0 then goto _Label_3067		(int)
	load	[r14+-144],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	ble	_Label_3067
!	jmp	_Label_3066
_Label_3066:
	mov	2913,r13		! source line 2913
	mov	"\0\0WB",r10
! CALL STATEMENT...
!   _temp_3068 = &start
	add	r14,-140,r1
	store	r1,[r14+-128]
!   Prepare Argument: offset=8  value=_temp_3068  sizeInBytes=4
	load	[r14+-128],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=p  sizeInBytes=4
	load	[r14+-160],r1
	store	r1,[r15+4]
!   Call the function
	mov	2914,r13		! source line 2914
	mov	"\0\0CA",r10
	call	_function_191_copyUnalignedWord
! ASSIGNMENT STATEMENT...
	mov	2915,r13		! source line 2915
	mov	"\0\0AS",r10
!   p = p + 4		(int)
	load	[r14+-160],r1
	mov	4,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-160]
! CALL STATEMENT...
!   _temp_3069 = &fileLen
	add	r14,-148,r1
	store	r1,[r14+-124]
!   Prepare Argument: offset=8  value=_temp_3069  sizeInBytes=4
	load	[r14+-124],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=p  sizeInBytes=4
	load	[r14+-160],r1
	store	r1,[r15+4]
!   Call the function
	mov	2916,r13		! source line 2916
	mov	"\0\0CA",r10
	call	_function_191_copyUnalignedWord
! ASSIGNMENT STATEMENT...
	mov	2917,r13		! source line 2917
	mov	"\0\0AS",r10
!   p = p + 4		(int)
	load	[r14+-160],r1
	mov	4,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-160]
! CALL STATEMENT...
!   _temp_3070 = &fileNameLen
	add	r14,-152,r1
	store	r1,[r14+-120]
!   Prepare Argument: offset=8  value=_temp_3070  sizeInBytes=4
	load	[r14+-120],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=p  sizeInBytes=4
	load	[r14+-160],r1
	store	r1,[r15+4]
!   Call the function
	mov	2918,r13		! source line 2918
	mov	"\0\0CA",r10
	call	_function_191_copyUnalignedWord
! ASSIGNMENT STATEMENT...
	mov	2919,r13		! source line 2919
	mov	"\0\0AS",r10
!   p = p + 4		(int)
	load	[r14+-160],r1
	mov	4,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-160]
! IF STATEMENT...
	mov	2920,r13		! source line 2920
	mov	"\0\0IF",r10
!   if intIsZero (filename) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Data Move: _temp_3074 = *filename  (sizeInBytes=4)
	load	[r14+12],r1
	load	[r1],r1
	store	r1,[r14+-116]
!   if fileNameLen != _temp_3074 then goto _Label_3072		(int)
	load	[r14+-152],r1
	load	[r14+-116],r2
	cmp	r1,r2
	bne	_Label_3072
!	jmp	_Label_3073
_Label_3073:
!   if intIsZero (filename) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Move address of filename [0 ] into _temp_3076
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
!   _temp_3075 = _temp_3076		(4 bytes)
	load	[r14+-108],r1
	store	r1,[r14+-112]
!   Prepare Argument: offset=8  value=p  sizeInBytes=4
	load	[r14+-160],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=_temp_3075  sizeInBytes=4
	load	[r14+-112],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=fileNameLen  sizeInBytes=4
	load	[r14+-152],r1
	store	r1,[r15+8]
!   Call the function
	mov	2921,r13		! source line 2921
	mov	"\0\0CA",r10
	call	_P_System_MemoryEqual
!   if result==true then goto _Label_3071 else goto _Label_3072
	loadb	[r15],r1
	cmp	r1,0
	be	_Label_3072
	jmp	_Label_3071
_Label_3071:
! THEN...
	mov	2922,r13		! source line 2922
	mov	"\0\0TN",r10
! BREAK STATEMENT...
	mov	2922,r13		! source line 2922
	mov	"\0\0BR",r10
	jmp	_Label_3067
! END IF...
_Label_3072:
! ASSIGNMENT STATEMENT...
	mov	2924,r13		! source line 2924
	mov	"\0\0AS",r10
!   p = p + fileNameLen		(int)
	load	[r14+-160],r1
	load	[r14+-152],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-160]
! ASSIGNMENT STATEMENT...
	mov	2925,r13		! source line 2925
	mov	"\0\0AS",r10
!   numFiles = numFiles - 1		(int)
	load	[r14+-144],r1
	mov	1,r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-144]
! END WHILE...
	jmp	_Label_3065
_Label_3067:
! IF STATEMENT...
	mov	2929,r13		! source line 2929
	mov	"\0\0IF",r10
!   if numFiles > 0 then goto _Label_3078		(int)
	load	[r14+-144],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_3078
!	jmp	_Label_3077
_Label_3077:
! THEN...
	mov	2930,r13		! source line 2930
	mov	"\0\0TN",r10
! RETURN STATEMENT...
	mov	2930,r13		! source line 2930
	mov	"\0\0RE",r10
!   ReturnResult: 0  (sizeInBytes=4)
	mov	0,r1
	store	r1,[r14+8]
	add	r15,168,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_3078:
! SEND STATEMENT...
	mov	2933,r13		! source line 2933
	mov	"\0\0SE",r10
!   _temp_3079 = &fileManagerLock
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
	mov	2935,r13		! source line 2935
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_3084 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-100]
!   Calculate and save the FOR-LOOP ending value
!   _temp_3085 = 9		(4 bytes)
	mov	9,r1
	store	r1,[r14+-96]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_3084  (sizeInBytes=4)
	load	[r14+-100],r1
	store	r1,[r14+-136]
_Label_3080:
!   Perform the FOR-LOOP termination test
!   if i > _temp_3085 then goto _Label_3083		
	load	[r14+-136],r1
	load	[r14+-96],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_3083
_Label_3081:
	mov	2935,r13		! source line 2935
	mov	"\0\0FB",r10
! ASSIGNMENT STATEMENT...
	mov	2936,r13		! source line 2936
	mov	"\0\0AS",r10
!   _temp_3086 = &fcbTable
	load	[r14+8],r1
	add	r1,24,r1
	store	r1,[r14+-92]
!   Move address of _temp_3086 [i ] into _temp_3087
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
!   fcb = _temp_3087		(4 bytes)
	load	[r14+-88],r1
	store	r1,[r14+-156]
! IF STATEMENT...
	mov	2937,r13		! source line 2937
	mov	"\0\0IF",r10
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-156],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3091 = fcb + 20
	load	[r14+-156],r1
	add	r1,20,r1
	store	r1,[r14+-80]
!   Data Move: _temp_3090 = *_temp_3091  (sizeInBytes=4)
	load	[r14+-80],r1
	load	[r1],r1
	store	r1,[r14+-84]
!   if _temp_3090 != start then goto _Label_3089		(int)
	load	[r14+-84],r1
	load	[r14+-140],r2
	cmp	r1,r2
	bne	_Label_3089
!	jmp	_Label_3088
_Label_3088:
! THEN...
	mov	2938,r13		! source line 2938
	mov	"\0\0TN",r10
! ASSIGNMENT STATEMENT...
	mov	2938,r13		! source line 2938
	mov	"\0\0AS",r10
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-156],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3092 = fcb + 16
	load	[r14+-156],r1
	add	r1,16,r1
	store	r1,[r14+-76]
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-156],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3095 = fcb + 16
	load	[r14+-156],r1
	add	r1,16,r1
	store	r1,[r14+-64]
!   Data Move: _temp_3094 = *_temp_3095  (sizeInBytes=4)
	load	[r14+-64],r1
	load	[r1],r1
	store	r1,[r14+-68]
!   _temp_3093 = _temp_3094 + 1		(int)
	load	[r14+-68],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-72]
!   Data Move: *_temp_3092 = _temp_3093  (sizeInBytes=4)
	load	[r14+-72],r1
	load	[r14+-76],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	2939,r13		! source line 2939
	mov	"\0\0SE",r10
!   _temp_3096 = &fileManagerLock
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
	mov	2940,r13		! source line 2940
	mov	"\0\0RE",r10
!   ReturnResult: fcb  (sizeInBytes=4)
	load	[r14+-156],r1
	store	r1,[r14+8]
	add	r15,168,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_3089:
!   Increment the FOR-LOOP index variable and jump back
_Label_3082:
!   i = i + 1
	load	[r14+-136],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-136]
	jmp	_Label_3080
! END FOR
_Label_3083:
! WHILE STATEMENT...
	mov	2945,r13		! source line 2945
	mov	"\0\0WH",r10
_Label_3097:
	mov	2945,r13		! source line 2945
	mov	"\0\0SE",r10
!   _temp_3100 = &fcbFreeList
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
!   if result==true then goto _Label_3098 else goto _Label_3099
	loadb	[r15],r1
	cmp	r1,0
	be	_Label_3099
	jmp	_Label_3098
_Label_3098:
	mov	2945,r13		! source line 2945
	mov	"\0\0WB",r10
! SEND STATEMENT...
	mov	2946,r13		! source line 2946
	mov	"\0\0SE",r10
!   _temp_3101 = &fileManagerLock
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-52]
!   _temp_3102 = &anFCBBecameFree
	load	[r14+8],r1
	add	r1,428,r1
	store	r1,[r14+-48]
!   Prepare Argument: offset=12  value=_temp_3101  sizeInBytes=4
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
	jmp	_Label_3097
_Label_3099:
! ASSIGNMENT STATEMENT...
	mov	2948,r13		! source line 2948
	mov	"\0\0AS",r10
	mov	2948,r13		! source line 2948
	mov	"\0\0SE",r10
!   _temp_3103 = &fcbFreeList
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
	mov	2951,r13		! source line 2951
	mov	"\0\0SE",r10
!   _temp_3104 = &fileManagerLock
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
	mov	2954,r13		! source line 2954
	mov	"\0\0AS",r10
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-156],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3105 = fcb + 20
	load	[r14+-156],r1
	add	r1,20,r1
	store	r1,[r14+-36]
!   Data Move: *_temp_3105 = start  (sizeInBytes=4)
	load	[r14+-140],r1
	load	[r14+-36],r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	2955,r13		! source line 2955
	mov	"\0\0AS",r10
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-156],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3106 = fcb + 24
	load	[r14+-156],r1
	add	r1,24,r1
	store	r1,[r14+-32]
!   Data Move: *_temp_3106 = fileLen  (sizeInBytes=4)
	load	[r14+-148],r1
	load	[r14+-32],r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	2956,r13		! source line 2956
	mov	"\0\0AS",r10
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-156],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3107 = fcb + 16
	load	[r14+-156],r1
	add	r1,16,r1
	store	r1,[r14+-28]
!   Data Move: *_temp_3107 = 1  (sizeInBytes=4)
	mov	1,r1
	load	[r14+-28],r2
	store	r1,[r2]
! IF STATEMENT...
	mov	2957,r13		! source line 2957
	mov	"\0\0IF",r10
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-156],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3112 = fcb + 32
	load	[r14+-156],r1
	add	r1,32,r1
	store	r1,[r14+-20]
!   Data Move: _temp_3111 = *_temp_3112  (sizeInBytes=4)
	load	[r14+-20],r1
	load	[r1],r1
	store	r1,[r14+-24]
!   if _temp_3111 < 0 then goto _Label_3110		(int)
	load	[r14+-24],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bl	_Label_3110
	jmp	_Label_3108
_Label_3110:
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-156],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3113 = fcb + 36
	load	[r14+-156],r1
	add	r1,36,r1
	store	r1,[r14+-16]
!   if boolIsZero (_temp_3113 ) then goto _Label_3109		(int)
	load	[r14+-16],r1
	loadb	[r1],r1
	cmp	r1,r0
	be	_Label_3109
!	jmp	_Label_3108
_Label_3108:
! THEN...
	mov	2958,r13		! source line 2958
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_3114 = _StringConst_155
	set	_StringConst_155,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_3114  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	2958,r13		! source line 2958
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END IF...
_Label_3109:
! RETURN STATEMENT...
	mov	2960,r13		! source line 2960
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
	.word	_Label_3115
	.word	8		! total size of parameters
	.word	164		! frame size = 164
	.word	_Label_3116
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_3117
	.word	12
	.word	4
	.word	_Label_3118
	.word	-12
	.word	4
	.word	_Label_3119
	.word	-16
	.word	4
	.word	_Label_3120
	.word	-20
	.word	4
	.word	_Label_3121
	.word	-24
	.word	4
	.word	_Label_3122
	.word	-28
	.word	4
	.word	_Label_3123
	.word	-32
	.word	4
	.word	_Label_3124
	.word	-36
	.word	4
	.word	_Label_3125
	.word	-40
	.word	4
	.word	_Label_3126
	.word	-44
	.word	4
	.word	_Label_3127
	.word	-48
	.word	4
	.word	_Label_3128
	.word	-52
	.word	4
	.word	_Label_3129
	.word	-56
	.word	4
	.word	_Label_3130
	.word	-60
	.word	4
	.word	_Label_3131
	.word	-64
	.word	4
	.word	_Label_3132
	.word	-68
	.word	4
	.word	_Label_3133
	.word	-72
	.word	4
	.word	_Label_3134
	.word	-76
	.word	4
	.word	_Label_3135
	.word	-80
	.word	4
	.word	_Label_3136
	.word	-84
	.word	4
	.word	_Label_3137
	.word	-88
	.word	4
	.word	_Label_3138
	.word	-92
	.word	4
	.word	_Label_3139
	.word	-96
	.word	4
	.word	_Label_3140
	.word	-100
	.word	4
	.word	_Label_3141
	.word	-104
	.word	4
	.word	_Label_3142
	.word	-108
	.word	4
	.word	_Label_3143
	.word	-112
	.word	4
	.word	_Label_3144
	.word	-116
	.word	4
	.word	_Label_3145
	.word	-120
	.word	4
	.word	_Label_3146
	.word	-124
	.word	4
	.word	_Label_3147
	.word	-128
	.word	4
	.word	_Label_3148
	.word	-132
	.word	4
	.word	_Label_3149
	.word	-136
	.word	4
	.word	_Label_3150
	.word	-140
	.word	4
	.word	_Label_3151
	.word	-144
	.word	4
	.word	_Label_3152
	.word	-148
	.word	4
	.word	_Label_3153
	.word	-152
	.word	4
	.word	_Label_3154
	.word	-156
	.word	4
	.word	_Label_3155
	.word	-160
	.word	4
	.word	0
_Label_3115:
	.ascii	"FileManager"
	.ascii	"::"
	.ascii	"FindFCB\0"
	.align
_Label_3116:
	.ascii	"Pself\0"
	.align
_Label_3117:
	.byte	'P'
	.ascii	"filename\0"
	.align
_Label_3118:
	.byte	'?'
	.ascii	"_temp_3114\0"
	.align
_Label_3119:
	.byte	'?'
	.ascii	"_temp_3113\0"
	.align
_Label_3120:
	.byte	'?'
	.ascii	"_temp_3112\0"
	.align
_Label_3121:
	.byte	'?'
	.ascii	"_temp_3111\0"
	.align
_Label_3122:
	.byte	'?'
	.ascii	"_temp_3107\0"
	.align
_Label_3123:
	.byte	'?'
	.ascii	"_temp_3106\0"
	.align
_Label_3124:
	.byte	'?'
	.ascii	"_temp_3105\0"
	.align
_Label_3125:
	.byte	'?'
	.ascii	"_temp_3104\0"
	.align
_Label_3126:
	.byte	'?'
	.ascii	"_temp_3103\0"
	.align
_Label_3127:
	.byte	'?'
	.ascii	"_temp_3102\0"
	.align
_Label_3128:
	.byte	'?'
	.ascii	"_temp_3101\0"
	.align
_Label_3129:
	.byte	'?'
	.ascii	"_temp_3100\0"
	.align
_Label_3130:
	.byte	'?'
	.ascii	"_temp_3096\0"
	.align
_Label_3131:
	.byte	'?'
	.ascii	"_temp_3095\0"
	.align
_Label_3132:
	.byte	'?'
	.ascii	"_temp_3094\0"
	.align
_Label_3133:
	.byte	'?'
	.ascii	"_temp_3093\0"
	.align
_Label_3134:
	.byte	'?'
	.ascii	"_temp_3092\0"
	.align
_Label_3135:
	.byte	'?'
	.ascii	"_temp_3091\0"
	.align
_Label_3136:
	.byte	'?'
	.ascii	"_temp_3090\0"
	.align
_Label_3137:
	.byte	'?'
	.ascii	"_temp_3087\0"
	.align
_Label_3138:
	.byte	'?'
	.ascii	"_temp_3086\0"
	.align
_Label_3139:
	.byte	'?'
	.ascii	"_temp_3085\0"
	.align
_Label_3140:
	.byte	'?'
	.ascii	"_temp_3084\0"
	.align
_Label_3141:
	.byte	'?'
	.ascii	"_temp_3079\0"
	.align
_Label_3142:
	.byte	'?'
	.ascii	"_temp_3076\0"
	.align
_Label_3143:
	.byte	'?'
	.ascii	"_temp_3075\0"
	.align
_Label_3144:
	.byte	'?'
	.ascii	"_temp_3074\0"
	.align
_Label_3145:
	.byte	'?'
	.ascii	"_temp_3070\0"
	.align
_Label_3146:
	.byte	'?'
	.ascii	"_temp_3069\0"
	.align
_Label_3147:
	.byte	'?'
	.ascii	"_temp_3068\0"
	.align
_Label_3148:
	.byte	'?'
	.ascii	"_temp_3064\0"
	.align
_Label_3149:
	.byte	'I'
	.ascii	"i\0"
	.align
_Label_3150:
	.byte	'I'
	.ascii	"start\0"
	.align
_Label_3151:
	.byte	'I'
	.ascii	"numFiles\0"
	.align
_Label_3152:
	.byte	'I'
	.ascii	"fileLen\0"
	.align
_Label_3153:
	.byte	'I'
	.ascii	"fileNameLen\0"
	.align
_Label_3154:
	.byte	'P'
	.ascii	"fcb\0"
	.align
_Label_3155:
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
_Label_3907:
	push	r0
	sub	r1,1,r1
	bne	_Label_3907
	mov	2973,r13		! source line 2973
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! IF STATEMENT...
	mov	2975,r13		! source line 2975
	mov	"\0\0IF",r10
!   _temp_3158 = &serialTerminalFile
	load	[r14+8],r1
	add	r1,772,r1
	store	r1,[r14+-100]
!   if open != _temp_3158 then goto _Label_3157		(int)
	load	[r14+12],r1
	load	[r14+-100],r2
	cmp	r1,r2
	bne	_Label_3157
!	jmp	_Label_3156
_Label_3156:
! THEN...
	mov	2976,r13		! source line 2976
	mov	"\0\0TN",r10
! RETURN STATEMENT...
	mov	2976,r13		! source line 2976
	mov	"\0\0RE",r10
	add	r15,108,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_3157:
! SEND STATEMENT...
	mov	2978,r13		! source line 2978
	mov	"\0\0SE",r10
!   _temp_3159 = &fileManagerLock
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
	mov	2979,r13		! source line 2979
	mov	"\0\0SE",r10
!   _temp_3160 = &_P_Kernel_fileManager
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
	mov	2980,r13		! source line 2980
	mov	"\0\0AS",r10
!   if intIsZero (open) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3161 = open + 20
	load	[r14+12],r1
	add	r1,20,r1
	store	r1,[r14+-88]
!   Data Move: fcb = *_temp_3161  (sizeInBytes=4)
	load	[r14+-88],r1
	load	[r1],r1
	store	r1,[r14+-104]
! ASSIGNMENT STATEMENT...
	mov	2981,r13		! source line 2981
	mov	"\0\0AS",r10
!   if intIsZero (open) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3162 = open + 24
	load	[r14+12],r1
	add	r1,24,r1
	store	r1,[r14+-84]
!   if intIsZero (open) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3165 = open + 24
	load	[r14+12],r1
	add	r1,24,r1
	store	r1,[r14+-72]
!   Data Move: _temp_3164 = *_temp_3165  (sizeInBytes=4)
	load	[r14+-72],r1
	load	[r1],r1
	store	r1,[r14+-76]
!   _temp_3163 = _temp_3164 - 1		(int)
	load	[r14+-76],r1
	mov	1,r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-80]
!   Data Move: *_temp_3162 = _temp_3163  (sizeInBytes=4)
	load	[r14+-80],r1
	load	[r14+-84],r2
	store	r1,[r2]
! IF STATEMENT...
	mov	2982,r13		! source line 2982
	mov	"\0\0IF",r10
!   if intIsZero (open) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3169 = open + 24
	load	[r14+12],r1
	add	r1,24,r1
	store	r1,[r14+-64]
!   Data Move: _temp_3168 = *_temp_3169  (sizeInBytes=4)
	load	[r14+-64],r1
	load	[r1],r1
	store	r1,[r14+-68]
!   if _temp_3168 > 0 then goto _Label_3167		(int)
	load	[r14+-68],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_3167
!	jmp	_Label_3166
_Label_3166:
! THEN...
	mov	2983,r13		! source line 2983
	mov	"\0\0TN",r10
! SEND STATEMENT...
	mov	2983,r13		! source line 2983
	mov	"\0\0SE",r10
!   _temp_3170 = &openFileFreeList
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
	mov	2984,r13		! source line 2984
	mov	"\0\0SE",r10
!   _temp_3171 = &fileManagerLock
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-56]
!   _temp_3172 = &anOpenFileBecameFree
	load	[r14+8],r1
	add	r1,740,r1
	store	r1,[r14+-52]
!   Prepare Argument: offset=12  value=_temp_3171  sizeInBytes=4
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
	mov	2985,r13		! source line 2985
	mov	"\0\0AS",r10
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-104],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3173 = fcb + 16
	load	[r14+-104],r1
	add	r1,16,r1
	store	r1,[r14+-48]
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-104],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3176 = fcb + 16
	load	[r14+-104],r1
	add	r1,16,r1
	store	r1,[r14+-36]
!   Data Move: _temp_3175 = *_temp_3176  (sizeInBytes=4)
	load	[r14+-36],r1
	load	[r1],r1
	store	r1,[r14+-40]
!   _temp_3174 = _temp_3175 - 1		(int)
	load	[r14+-40],r1
	mov	1,r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-44]
!   Data Move: *_temp_3173 = _temp_3174  (sizeInBytes=4)
	load	[r14+-44],r1
	load	[r14+-48],r2
	store	r1,[r2]
! IF STATEMENT...
	mov	2986,r13		! source line 2986
	mov	"\0\0IF",r10
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-104],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3180 = fcb + 16
	load	[r14+-104],r1
	add	r1,16,r1
	store	r1,[r14+-28]
!   Data Move: _temp_3179 = *_temp_3180  (sizeInBytes=4)
	load	[r14+-28],r1
	load	[r1],r1
	store	r1,[r14+-32]
!   if _temp_3179 > 0 then goto _Label_3178		(int)
	load	[r14+-32],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_3178
!	jmp	_Label_3177
_Label_3177:
! THEN...
	mov	2987,r13		! source line 2987
	mov	"\0\0TN",r10
! SEND STATEMENT...
	mov	2987,r13		! source line 2987
	mov	"\0\0SE",r10
!   _temp_3181 = &fcbFreeList
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
	mov	2988,r13		! source line 2988
	mov	"\0\0SE",r10
!   _temp_3182 = &fileManagerLock
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-20]
!   _temp_3183 = &anFCBBecameFree
	load	[r14+8],r1
	add	r1,428,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=12  value=_temp_3182  sizeInBytes=4
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
_Label_3178:
! END IF...
_Label_3167:
! SEND STATEMENT...
	mov	2991,r13		! source line 2991
	mov	"\0\0SE",r10
!   _temp_3184 = &fileManagerLock
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
	mov	2991,r13		! source line 2991
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
	.word	_Label_3185
	.word	8		! total size of parameters
	.word	104		! frame size = 104
	.word	_Label_3186
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_3187
	.word	12
	.word	4
	.word	_Label_3188
	.word	-12
	.word	4
	.word	_Label_3189
	.word	-16
	.word	4
	.word	_Label_3190
	.word	-20
	.word	4
	.word	_Label_3191
	.word	-24
	.word	4
	.word	_Label_3192
	.word	-28
	.word	4
	.word	_Label_3193
	.word	-32
	.word	4
	.word	_Label_3194
	.word	-36
	.word	4
	.word	_Label_3195
	.word	-40
	.word	4
	.word	_Label_3196
	.word	-44
	.word	4
	.word	_Label_3197
	.word	-48
	.word	4
	.word	_Label_3198
	.word	-52
	.word	4
	.word	_Label_3199
	.word	-56
	.word	4
	.word	_Label_3200
	.word	-60
	.word	4
	.word	_Label_3201
	.word	-64
	.word	4
	.word	_Label_3202
	.word	-68
	.word	4
	.word	_Label_3203
	.word	-72
	.word	4
	.word	_Label_3204
	.word	-76
	.word	4
	.word	_Label_3205
	.word	-80
	.word	4
	.word	_Label_3206
	.word	-84
	.word	4
	.word	_Label_3207
	.word	-88
	.word	4
	.word	_Label_3208
	.word	-92
	.word	4
	.word	_Label_3209
	.word	-96
	.word	4
	.word	_Label_3210
	.word	-100
	.word	4
	.word	_Label_3211
	.word	-104
	.word	4
	.word	0
_Label_3185:
	.ascii	"FileManager"
	.ascii	"::"
	.ascii	"Close\0"
	.align
_Label_3186:
	.ascii	"Pself\0"
	.align
_Label_3187:
	.byte	'P'
	.ascii	"open\0"
	.align
_Label_3188:
	.byte	'?'
	.ascii	"_temp_3184\0"
	.align
_Label_3189:
	.byte	'?'
	.ascii	"_temp_3183\0"
	.align
_Label_3190:
	.byte	'?'
	.ascii	"_temp_3182\0"
	.align
_Label_3191:
	.byte	'?'
	.ascii	"_temp_3181\0"
	.align
_Label_3192:
	.byte	'?'
	.ascii	"_temp_3180\0"
	.align
_Label_3193:
	.byte	'?'
	.ascii	"_temp_3179\0"
	.align
_Label_3194:
	.byte	'?'
	.ascii	"_temp_3176\0"
	.align
_Label_3195:
	.byte	'?'
	.ascii	"_temp_3175\0"
	.align
_Label_3196:
	.byte	'?'
	.ascii	"_temp_3174\0"
	.align
_Label_3197:
	.byte	'?'
	.ascii	"_temp_3173\0"
	.align
_Label_3198:
	.byte	'?'
	.ascii	"_temp_3172\0"
	.align
_Label_3199:
	.byte	'?'
	.ascii	"_temp_3171\0"
	.align
_Label_3200:
	.byte	'?'
	.ascii	"_temp_3170\0"
	.align
_Label_3201:
	.byte	'?'
	.ascii	"_temp_3169\0"
	.align
_Label_3202:
	.byte	'?'
	.ascii	"_temp_3168\0"
	.align
_Label_3203:
	.byte	'?'
	.ascii	"_temp_3165\0"
	.align
_Label_3204:
	.byte	'?'
	.ascii	"_temp_3164\0"
	.align
_Label_3205:
	.byte	'?'
	.ascii	"_temp_3163\0"
	.align
_Label_3206:
	.byte	'?'
	.ascii	"_temp_3162\0"
	.align
_Label_3207:
	.byte	'?'
	.ascii	"_temp_3161\0"
	.align
_Label_3208:
	.byte	'?'
	.ascii	"_temp_3160\0"
	.align
_Label_3209:
	.byte	'?'
	.ascii	"_temp_3159\0"
	.align
_Label_3210:
	.byte	'?'
	.ascii	"_temp_3158\0"
	.align
_Label_3211:
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
_Label_3908:
	push	r0
	sub	r1,1,r1
	bne	_Label_3908
	mov	2996,r13		! source line 2996
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! IF STATEMENT...
	mov	3001,r13		! source line 3001
	mov	"\0\0IF",r10
!   if intIsZero (open) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3215 = open + 20
	load	[r14+12],r1
	add	r1,20,r1
	store	r1,[r14+-104]
!   Data Move: _temp_3214 = *_temp_3215  (sizeInBytes=4)
	load	[r14+-104],r1
	load	[r1],r1
	store	r1,[r14+-108]
!   if intIsZero (_temp_3214) then goto _runtimeErrorNullPointer
	load	[r14+-108],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3216 = _temp_3214 + 36
	load	[r14+-108],r1
	add	r1,36,r1
	store	r1,[r14+-100]
!   if boolIsZero (_temp_3216 ) then goto _Label_3213		(int)
	load	[r14+-100],r1
	loadb	[r1],r1
	cmp	r1,r0
	be	_Label_3213
!	jmp	_Label_3212
_Label_3212:
! THEN...
	mov	3002,r13		! source line 3002
	mov	"\0\0TN",r10
! IF STATEMENT...
	mov	3002,r13		! source line 3002
	mov	"\0\0IF",r10
!   if intIsZero (open) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3221 = open + 20
	load	[r14+12],r1
	add	r1,20,r1
	store	r1,[r14+-88]
!   Data Move: _temp_3220 = *_temp_3221  (sizeInBytes=4)
	load	[r14+-88],r1
	load	[r1],r1
	store	r1,[r14+-92]
!   if intIsZero (_temp_3220) then goto _runtimeErrorNullPointer
	load	[r14+-92],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3222 = _temp_3220 + 32
	load	[r14+-92],r1
	add	r1,32,r1
	store	r1,[r14+-84]
!   Data Move: _temp_3219 = *_temp_3222  (sizeInBytes=4)
	load	[r14+-84],r1
	load	[r1],r1
	store	r1,[r14+-96]
!   if _temp_3219 >= 0 then goto _Label_3218		(int)
	load	[r14+-96],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_3218
!	jmp	_Label_3217
_Label_3217:
! THEN...
	mov	3003,r13		! source line 3003
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_3223 = _StringConst_156
	set	_StringConst_156,r1
	store	r1,[r14+-80]
!   Prepare Argument: offset=8  value=_temp_3223  sizeInBytes=4
	load	[r14+-80],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	3003,r13		! source line 3003
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END IF...
_Label_3218:
! ASSIGNMENT STATEMENT...
	mov	3005,r13		! source line 3005
	mov	"\0\0AS",r10
!   if intIsZero (open) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3225 = open + 20
	load	[r14+12],r1
	add	r1,20,r1
	store	r1,[r14+-72]
!   Data Move: _temp_3224 = *_temp_3225  (sizeInBytes=4)
	load	[r14+-72],r1
	load	[r1],r1
	store	r1,[r14+-76]
!   if intIsZero (_temp_3224) then goto _runtimeErrorNullPointer
	load	[r14+-76],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3226 = _temp_3224 + 36
	load	[r14+-76],r1
	add	r1,36,r1
	store	r1,[r14+-68]
!   Data Move: *_temp_3226 = 0  (sizeInBytes=1)
	mov	0,r1
	load	[r14+-68],r2
	storeb	r1,[r2]
! SEND STATEMENT...
	mov	3006,r13		! source line 3006
	mov	"\0\0SE",r10
!   if intIsZero (open) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3230 = open + 20
	load	[r14+12],r1
	add	r1,20,r1
	store	r1,[r14+-52]
!   Data Move: _temp_3229 = *_temp_3230  (sizeInBytes=4)
	load	[r14+-52],r1
	load	[r1],r1
	store	r1,[r14+-56]
!   if intIsZero (_temp_3229) then goto _runtimeErrorNullPointer
	load	[r14+-56],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3231 = _temp_3229 + 32
	load	[r14+-56],r1
	add	r1,32,r1
	store	r1,[r14+-48]
!   Data Move: _temp_3228 = *_temp_3231  (sizeInBytes=4)
	load	[r14+-48],r1
	load	[r1],r1
	store	r1,[r14+-60]
!   if intIsZero (open) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3234 = open + 20
	load	[r14+12],r1
	add	r1,20,r1
	store	r1,[r14+-36]
!   Data Move: _temp_3233 = *_temp_3234  (sizeInBytes=4)
	load	[r14+-36],r1
	load	[r1],r1
	store	r1,[r14+-40]
!   if intIsZero (_temp_3233) then goto _runtimeErrorNullPointer
	load	[r14+-40],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3235 = _temp_3233 + 20
	load	[r14+-40],r1
	add	r1,20,r1
	store	r1,[r14+-32]
!   Data Move: _temp_3232 = *_temp_3235  (sizeInBytes=4)
	load	[r14+-32],r1
	load	[r1],r1
	store	r1,[r14+-44]
!   _temp_3227 = _temp_3228 + _temp_3232		(int)
	load	[r14+-60],r1
	load	[r14+-44],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-64]
!   if intIsZero (open) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3238 = open + 20
	load	[r14+12],r1
	add	r1,20,r1
	store	r1,[r14+-20]
!   Data Move: _temp_3237 = *_temp_3238  (sizeInBytes=4)
	load	[r14+-20],r1
	load	[r1],r1
	store	r1,[r14+-24]
!   if intIsZero (_temp_3237) then goto _runtimeErrorNullPointer
	load	[r14+-24],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3239 = _temp_3237 + 28
	load	[r14+-24],r1
	add	r1,28,r1
	store	r1,[r14+-16]
!   Data Move: _temp_3236 = *_temp_3239  (sizeInBytes=4)
	load	[r14+-16],r1
	load	[r1],r1
	store	r1,[r14+-28]
!   _temp_3240 = &_P_Kernel_diskDriver
	set	_P_Kernel_diskDriver,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=12  value=_temp_3227  sizeInBytes=4
	load	[r14+-64],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=1  sizeInBytes=4
	mov	1,r1
	store	r1,[r15+8]
!   Prepare Argument: offset=20  value=_temp_3236  sizeInBytes=4
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
_Label_3213:
! RETURN STATEMENT...
	mov	3001,r13		! source line 3001
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
	.word	_Label_3241
	.word	8		! total size of parameters
	.word	116		! frame size = 116
	.word	_Label_3242
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_3243
	.word	12
	.word	4
	.word	_Label_3244
	.word	-12
	.word	4
	.word	_Label_3245
	.word	-16
	.word	4
	.word	_Label_3246
	.word	-20
	.word	4
	.word	_Label_3247
	.word	-24
	.word	4
	.word	_Label_3248
	.word	-28
	.word	4
	.word	_Label_3249
	.word	-32
	.word	4
	.word	_Label_3250
	.word	-36
	.word	4
	.word	_Label_3251
	.word	-40
	.word	4
	.word	_Label_3252
	.word	-44
	.word	4
	.word	_Label_3253
	.word	-48
	.word	4
	.word	_Label_3254
	.word	-52
	.word	4
	.word	_Label_3255
	.word	-56
	.word	4
	.word	_Label_3256
	.word	-60
	.word	4
	.word	_Label_3257
	.word	-64
	.word	4
	.word	_Label_3258
	.word	-68
	.word	4
	.word	_Label_3259
	.word	-72
	.word	4
	.word	_Label_3260
	.word	-76
	.word	4
	.word	_Label_3261
	.word	-80
	.word	4
	.word	_Label_3262
	.word	-84
	.word	4
	.word	_Label_3263
	.word	-88
	.word	4
	.word	_Label_3264
	.word	-92
	.word	4
	.word	_Label_3265
	.word	-96
	.word	4
	.word	_Label_3266
	.word	-100
	.word	4
	.word	_Label_3267
	.word	-104
	.word	4
	.word	_Label_3268
	.word	-108
	.word	4
	.word	0
_Label_3241:
	.ascii	"FileManager"
	.ascii	"::"
	.ascii	"Flush\0"
	.align
_Label_3242:
	.ascii	"Pself\0"
	.align
_Label_3243:
	.byte	'P'
	.ascii	"open\0"
	.align
_Label_3244:
	.byte	'?'
	.ascii	"_temp_3240\0"
	.align
_Label_3245:
	.byte	'?'
	.ascii	"_temp_3239\0"
	.align
_Label_3246:
	.byte	'?'
	.ascii	"_temp_3238\0"
	.align
_Label_3247:
	.byte	'?'
	.ascii	"_temp_3237\0"
	.align
_Label_3248:
	.byte	'?'
	.ascii	"_temp_3236\0"
	.align
_Label_3249:
	.byte	'?'
	.ascii	"_temp_3235\0"
	.align
_Label_3250:
	.byte	'?'
	.ascii	"_temp_3234\0"
	.align
_Label_3251:
	.byte	'?'
	.ascii	"_temp_3233\0"
	.align
_Label_3252:
	.byte	'?'
	.ascii	"_temp_3232\0"
	.align
_Label_3253:
	.byte	'?'
	.ascii	"_temp_3231\0"
	.align
_Label_3254:
	.byte	'?'
	.ascii	"_temp_3230\0"
	.align
_Label_3255:
	.byte	'?'
	.ascii	"_temp_3229\0"
	.align
_Label_3256:
	.byte	'?'
	.ascii	"_temp_3228\0"
	.align
_Label_3257:
	.byte	'?'
	.ascii	"_temp_3227\0"
	.align
_Label_3258:
	.byte	'?'
	.ascii	"_temp_3226\0"
	.align
_Label_3259:
	.byte	'?'
	.ascii	"_temp_3225\0"
	.align
_Label_3260:
	.byte	'?'
	.ascii	"_temp_3224\0"
	.align
_Label_3261:
	.byte	'?'
	.ascii	"_temp_3223\0"
	.align
_Label_3262:
	.byte	'?'
	.ascii	"_temp_3222\0"
	.align
_Label_3263:
	.byte	'?'
	.ascii	"_temp_3221\0"
	.align
_Label_3264:
	.byte	'?'
	.ascii	"_temp_3220\0"
	.align
_Label_3265:
	.byte	'?'
	.ascii	"_temp_3219\0"
	.align
_Label_3266:
	.byte	'?'
	.ascii	"_temp_3216\0"
	.align
_Label_3267:
	.byte	'?'
	.ascii	"_temp_3215\0"
	.align
_Label_3268:
	.byte	'?'
	.ascii	"_temp_3214\0"
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
_Label_3909:
	push	r0
	sub	r1,1,r1
	bne	_Label_3909
	mov	3015,r13		! source line 3015
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! SEND STATEMENT...
	mov	3030,r13		! source line 3030
	mov	"\0\0SE",r10
!   _temp_3269 = &fileManagerLock
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
	mov	3031,r13		! source line 3031
	mov	"\0\0IF",r10
!   if open == 0 then goto _Label_3275		(int)
	load	[r14+12],r1
	mov	0,r2
	cmp	r1,r2
	be	_Label_3275
!   _temp_3274 = 1		(1 byte)
	mov	1,r1
	storeb	r1,[r14+-10]
	jmp	_Label_3276
_Label_3275:
!   _temp_3274 = 0		(1 byte)
	mov	0,r1
	storeb	r1,[r14+-10]
_Label_3276:
!   if _temp_3274 then goto _Label_3273 else goto _Label_3270
	loadb	[r14+-10],r1
	cmp	r1,0
	be	_Label_3270
	jmp	_Label_3273
_Label_3273:
!   if intIsZero (open) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3279 = open + 20
	load	[r14+12],r1
	add	r1,20,r1
	store	r1,[r14+-100]
!   Data Move: _temp_3278 = *_temp_3279  (sizeInBytes=4)
	load	[r14+-100],r1
	load	[r1],r1
	store	r1,[r14+-104]
!   if _temp_3278 == 0 then goto _Label_3280		(int)
	load	[r14+-104],r1
	mov	0,r2
	cmp	r1,r2
	be	_Label_3280
!   _temp_3277 = 1		(1 byte)
	mov	1,r1
	storeb	r1,[r14+-9]
	jmp	_Label_3281
_Label_3280:
!   _temp_3277 = 0		(1 byte)
	mov	0,r1
	storeb	r1,[r14+-9]
_Label_3281:
!   if _temp_3277 then goto _Label_3272 else goto _Label_3270
	loadb	[r14+-9],r1
	cmp	r1,0
	be	_Label_3270
	jmp	_Label_3272
_Label_3272:
!   if intIsZero (open) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3284 = open + 20
	load	[r14+12],r1
	add	r1,20,r1
	store	r1,[r14+-88]
!   Data Move: _temp_3283 = *_temp_3284  (sizeInBytes=4)
	load	[r14+-88],r1
	load	[r1],r1
	store	r1,[r14+-92]
!   if intIsZero (_temp_3283) then goto _runtimeErrorNullPointer
	load	[r14+-92],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3285 = _temp_3283 + 20
	load	[r14+-92],r1
	add	r1,20,r1
	store	r1,[r14+-84]
!   Data Move: _temp_3282 = *_temp_3285  (sizeInBytes=4)
	load	[r14+-84],r1
	load	[r1],r1
	store	r1,[r14+-96]
!   if _temp_3282 >= 0 then goto _Label_3271		(int)
	load	[r14+-96],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_3271
!	jmp	_Label_3270
_Label_3270:
! THEN...
	mov	3032,r13		! source line 3032
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_3286 = _StringConst_157
	set	_StringConst_157,r1
	store	r1,[r14+-80]
!   Prepare Argument: offset=8  value=_temp_3286  sizeInBytes=4
	load	[r14+-80],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	3032,r13		! source line 3032
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END IF...
_Label_3271:
! ASSIGNMENT STATEMENT...
	mov	3034,r13		! source line 3034
	mov	"\0\0AS",r10
!   if intIsZero (open) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3287 = open + 20
	load	[r14+12],r1
	add	r1,20,r1
	store	r1,[r14+-76]
!   Data Move: fcb = *_temp_3287  (sizeInBytes=4)
	load	[r14+-76],r1
	load	[r1],r1
	store	r1,[r14+-128]
! WHILE STATEMENT...
	mov	3035,r13		! source line 3035
	mov	"\0\0WH",r10
_Label_3288:
!   if numBytes <= 0 then goto _Label_3290		(int)
	load	[r14+24],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	ble	_Label_3290
!	jmp	_Label_3289
_Label_3289:
	mov	3035,r13		! source line 3035
	mov	"\0\0WB",r10
! ASSIGNMENT STATEMENT...
	mov	3044,r13		! source line 3044
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
	mov	3045,r13		! source line 3045
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
	mov	3049,r13		! source line 3049
	mov	"\0\0IF",r10
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-128],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3294 = fcb + 32
	load	[r14+-128],r1
	add	r1,32,r1
	store	r1,[r14+-68]
!   Data Move: _temp_3293 = *_temp_3294  (sizeInBytes=4)
	load	[r14+-68],r1
	load	[r1],r1
	store	r1,[r14+-72]
!   if _temp_3293 == sector then goto _Label_3292		(int)
	load	[r14+-72],r1
	load	[r14+-112],r2
	cmp	r1,r2
	be	_Label_3292
!	jmp	_Label_3291
_Label_3291:
! THEN...
	mov	3050,r13		! source line 3050
	mov	"\0\0TN",r10
! SEND STATEMENT...
	mov	3050,r13		! source line 3050
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-64]
!   if intIsZero (_temp_3295) then goto _runtimeErrorNullPointer
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
	mov	3052,r13		! source line 3052
	mov	"\0\0SE",r10
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-128],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3298 = fcb + 20
	load	[r14+-128],r1
	add	r1,20,r1
	store	r1,[r14+-52]
!   Data Move: _temp_3297 = *_temp_3298  (sizeInBytes=4)
	load	[r14+-52],r1
	load	[r1],r1
	store	r1,[r14+-56]
!   _temp_3296 = sector + _temp_3297		(int)
	load	[r14+-112],r1
	load	[r14+-56],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-60]
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-128],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3300 = fcb + 28
	load	[r14+-128],r1
	add	r1,28,r1
	store	r1,[r14+-44]
!   Data Move: _temp_3299 = *_temp_3300  (sizeInBytes=4)
	load	[r14+-44],r1
	load	[r1],r1
	store	r1,[r14+-48]
!   _temp_3301 = &_P_Kernel_diskDriver
	set	_P_Kernel_diskDriver,r1
	store	r1,[r14+-40]
!   Prepare Argument: offset=12  value=_temp_3296  sizeInBytes=4
	load	[r14+-60],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=1  sizeInBytes=4
	mov	1,r1
	store	r1,[r15+8]
!   Prepare Argument: offset=20  value=_temp_3299  sizeInBytes=4
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
	mov	3055,r13		! source line 3055
	mov	"\0\0AS",r10
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-128],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3302 = fcb + 32
	load	[r14+-128],r1
	add	r1,32,r1
	store	r1,[r14+-36]
!   Data Move: *_temp_3302 = sector  (sizeInBytes=4)
	load	[r14+-112],r1
	load	[r14+-36],r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	3056,r13		! source line 3056
	mov	"\0\0AS",r10
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-128],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3303 = fcb + 36
	load	[r14+-128],r1
	add	r1,36,r1
	store	r1,[r14+-32]
!   Data Move: *_temp_3303 = 0  (sizeInBytes=1)
	mov	0,r1
	load	[r14+-32],r2
	storeb	r1,[r2]
! END IF...
_Label_3292:
! ASSIGNMENT STATEMENT...
	mov	3058,r13		! source line 3058
	mov	"\0\0AS",r10
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-128],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3305 = fcb + 28
	load	[r14+-128],r1
	add	r1,28,r1
	store	r1,[r14+-24]
!   Data Move: _temp_3304 = *_temp_3305  (sizeInBytes=4)
	load	[r14+-24],r1
	load	[r1],r1
	store	r1,[r14+-28]
!   posInBuffer = _temp_3304 + offset		(int)
	load	[r14+-28],r1
	load	[r14+-116],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-120]
! ASSIGNMENT STATEMENT...
	mov	3059,r13		! source line 3059
	mov	"\0\0AS",r10
!   _temp_3306 = 8192 - offset		(int)
	mov	8192,r1
	load	[r14+-116],r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=numBytes  sizeInBytes=4
	load	[r14+24],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=_temp_3306  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+4]
!   Call the function
	mov	3059,r13		! source line 3059
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
	mov	3063,r13		! source line 3063
	mov	"\0\0CE",r10
	call	MemoryCopy
! ASSIGNMENT STATEMENT...
	mov	3064,r13		! source line 3064
	mov	"\0\0AS",r10
!   targetAddr = targetAddr + bytesToMove		(int)
	load	[r14+16],r1
	load	[r14+-124],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+16]
! ASSIGNMENT STATEMENT...
	mov	3065,r13		! source line 3065
	mov	"\0\0AS",r10
!   bytePos = bytePos + bytesToMove		(int)
	load	[r14+20],r1
	load	[r14+-124],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+20]
! ASSIGNMENT STATEMENT...
	mov	3066,r13		! source line 3066
	mov	"\0\0AS",r10
!   numBytes = numBytes - bytesToMove		(int)
	load	[r14+24],r1
	load	[r14+-124],r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+24]
! END WHILE...
	jmp	_Label_3288
_Label_3290:
! SEND STATEMENT...
	mov	3073,r13		! source line 3073
	mov	"\0\0SE",r10
!   _temp_3307 = &fileManagerLock
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
	mov	3074,r13		! source line 3074
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
	.word	_Label_3308
	.word	20		! total size of parameters
	.word	136		! frame size = 136
	.word	_Label_3309
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_3310
	.word	12
	.word	4
	.word	_Label_3311
	.word	16
	.word	4
	.word	_Label_3312
	.word	20
	.word	4
	.word	_Label_3313
	.word	24
	.word	4
	.word	_Label_3314
	.word	-16
	.word	4
	.word	_Label_3315
	.word	-20
	.word	4
	.word	_Label_3316
	.word	-24
	.word	4
	.word	_Label_3317
	.word	-28
	.word	4
	.word	_Label_3318
	.word	-32
	.word	4
	.word	_Label_3319
	.word	-36
	.word	4
	.word	_Label_3320
	.word	-40
	.word	4
	.word	_Label_3321
	.word	-44
	.word	4
	.word	_Label_3322
	.word	-48
	.word	4
	.word	_Label_3323
	.word	-52
	.word	4
	.word	_Label_3324
	.word	-56
	.word	4
	.word	_Label_3325
	.word	-60
	.word	4
	.word	_Label_3326
	.word	-64
	.word	4
	.word	_Label_3327
	.word	-68
	.word	4
	.word	_Label_3328
	.word	-72
	.word	4
	.word	_Label_3329
	.word	-76
	.word	4
	.word	_Label_3330
	.word	-80
	.word	4
	.word	_Label_3331
	.word	-84
	.word	4
	.word	_Label_3332
	.word	-88
	.word	4
	.word	_Label_3333
	.word	-92
	.word	4
	.word	_Label_3334
	.word	-96
	.word	4
	.word	_Label_3335
	.word	-100
	.word	4
	.word	_Label_3336
	.word	-104
	.word	4
	.word	_Label_3337
	.word	-9
	.word	1
	.word	_Label_3338
	.word	-10
	.word	1
	.word	_Label_3339
	.word	-108
	.word	4
	.word	_Label_3340
	.word	-112
	.word	4
	.word	_Label_3341
	.word	-116
	.word	4
	.word	_Label_3342
	.word	-120
	.word	4
	.word	_Label_3343
	.word	-124
	.word	4
	.word	_Label_3344
	.word	-128
	.word	4
	.word	0
_Label_3308:
	.ascii	"FileManager"
	.ascii	"::"
	.ascii	"SynchRead\0"
	.align
_Label_3309:
	.ascii	"Pself\0"
	.align
_Label_3310:
	.byte	'P'
	.ascii	"open\0"
	.align
_Label_3311:
	.byte	'I'
	.ascii	"targetAddr\0"
	.align
_Label_3312:
	.byte	'I'
	.ascii	"bytePos\0"
	.align
_Label_3313:
	.byte	'I'
	.ascii	"numBytes\0"
	.align
_Label_3314:
	.byte	'?'
	.ascii	"_temp_3307\0"
	.align
_Label_3315:
	.byte	'?'
	.ascii	"_temp_3306\0"
	.align
_Label_3316:
	.byte	'?'
	.ascii	"_temp_3305\0"
	.align
_Label_3317:
	.byte	'?'
	.ascii	"_temp_3304\0"
	.align
_Label_3318:
	.byte	'?'
	.ascii	"_temp_3303\0"
	.align
_Label_3319:
	.byte	'?'
	.ascii	"_temp_3302\0"
	.align
_Label_3320:
	.byte	'?'
	.ascii	"_temp_3301\0"
	.align
_Label_3321:
	.byte	'?'
	.ascii	"_temp_3300\0"
	.align
_Label_3322:
	.byte	'?'
	.ascii	"_temp_3299\0"
	.align
_Label_3323:
	.byte	'?'
	.ascii	"_temp_3298\0"
	.align
_Label_3324:
	.byte	'?'
	.ascii	"_temp_3297\0"
	.align
_Label_3325:
	.byte	'?'
	.ascii	"_temp_3296\0"
	.align
_Label_3326:
	.byte	'?'
	.ascii	"_temp_3295\0"
	.align
_Label_3327:
	.byte	'?'
	.ascii	"_temp_3294\0"
	.align
_Label_3328:
	.byte	'?'
	.ascii	"_temp_3293\0"
	.align
_Label_3329:
	.byte	'?'
	.ascii	"_temp_3287\0"
	.align
_Label_3330:
	.byte	'?'
	.ascii	"_temp_3286\0"
	.align
_Label_3331:
	.byte	'?'
	.ascii	"_temp_3285\0"
	.align
_Label_3332:
	.byte	'?'
	.ascii	"_temp_3284\0"
	.align
_Label_3333:
	.byte	'?'
	.ascii	"_temp_3283\0"
	.align
_Label_3334:
	.byte	'?'
	.ascii	"_temp_3282\0"
	.align
_Label_3335:
	.byte	'?'
	.ascii	"_temp_3279\0"
	.align
_Label_3336:
	.byte	'?'
	.ascii	"_temp_3278\0"
	.align
_Label_3337:
	.byte	'C'
	.ascii	"_temp_3277\0"
	.align
_Label_3338:
	.byte	'C'
	.ascii	"_temp_3274\0"
	.align
_Label_3339:
	.byte	'?'
	.ascii	"_temp_3269\0"
	.align
_Label_3340:
	.byte	'I'
	.ascii	"sector\0"
	.align
_Label_3341:
	.byte	'I'
	.ascii	"offset\0"
	.align
_Label_3342:
	.byte	'I'
	.ascii	"posInBuffer\0"
	.align
_Label_3343:
	.byte	'I'
	.ascii	"bytesToMove\0"
	.align
_Label_3344:
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
_Label_3910:
	push	r0
	sub	r1,1,r1
	bne	_Label_3910
	mov	3079,r13		! source line 3079
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! SEND STATEMENT...
	mov	3095,r13		! source line 3095
	mov	"\0\0SE",r10
!   _temp_3345 = &fileManagerLock
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
	mov	3096,r13		! source line 3096
	mov	"\0\0IF",r10
!   if open == 0 then goto _Label_3351		(int)
	load	[r14+12],r1
	mov	0,r2
	cmp	r1,r2
	be	_Label_3351
!   _temp_3350 = 1		(1 byte)
	mov	1,r1
	storeb	r1,[r14+-10]
	jmp	_Label_3352
_Label_3351:
!   _temp_3350 = 0		(1 byte)
	mov	0,r1
	storeb	r1,[r14+-10]
_Label_3352:
!   if _temp_3350 then goto _Label_3349 else goto _Label_3346
	loadb	[r14+-10],r1
	cmp	r1,0
	be	_Label_3346
	jmp	_Label_3349
_Label_3349:
!   if intIsZero (open) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3355 = open + 20
	load	[r14+12],r1
	add	r1,20,r1
	store	r1,[r14+-108]
!   Data Move: _temp_3354 = *_temp_3355  (sizeInBytes=4)
	load	[r14+-108],r1
	load	[r1],r1
	store	r1,[r14+-112]
!   if _temp_3354 == 0 then goto _Label_3356		(int)
	load	[r14+-112],r1
	mov	0,r2
	cmp	r1,r2
	be	_Label_3356
!   _temp_3353 = 1		(1 byte)
	mov	1,r1
	storeb	r1,[r14+-9]
	jmp	_Label_3357
_Label_3356:
!   _temp_3353 = 0		(1 byte)
	mov	0,r1
	storeb	r1,[r14+-9]
_Label_3357:
!   if _temp_3353 then goto _Label_3348 else goto _Label_3346
	loadb	[r14+-9],r1
	cmp	r1,0
	be	_Label_3346
	jmp	_Label_3348
_Label_3348:
!   if intIsZero (open) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3360 = open + 20
	load	[r14+12],r1
	add	r1,20,r1
	store	r1,[r14+-96]
!   Data Move: _temp_3359 = *_temp_3360  (sizeInBytes=4)
	load	[r14+-96],r1
	load	[r1],r1
	store	r1,[r14+-100]
!   if intIsZero (_temp_3359) then goto _runtimeErrorNullPointer
	load	[r14+-100],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3361 = _temp_3359 + 20
	load	[r14+-100],r1
	add	r1,20,r1
	store	r1,[r14+-92]
!   Data Move: _temp_3358 = *_temp_3361  (sizeInBytes=4)
	load	[r14+-92],r1
	load	[r1],r1
	store	r1,[r14+-104]
!   if _temp_3358 >= 0 then goto _Label_3347		(int)
	load	[r14+-104],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_3347
!	jmp	_Label_3346
_Label_3346:
! THEN...
	mov	3097,r13		! source line 3097
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_3362 = _StringConst_158
	set	_StringConst_158,r1
	store	r1,[r14+-88]
!   Prepare Argument: offset=8  value=_temp_3362  sizeInBytes=4
	load	[r14+-88],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	3097,r13		! source line 3097
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END IF...
_Label_3347:
! ASSIGNMENT STATEMENT...
	mov	3099,r13		! source line 3099
	mov	"\0\0AS",r10
!   if intIsZero (open) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3363 = open + 20
	load	[r14+12],r1
	add	r1,20,r1
	store	r1,[r14+-84]
!   Data Move: fcb = *_temp_3363  (sizeInBytes=4)
	load	[r14+-84],r1
	load	[r1],r1
	store	r1,[r14+-136]
! WHILE STATEMENT...
	mov	3100,r13		! source line 3100
	mov	"\0\0WH",r10
_Label_3364:
!   if numBytes <= 0 then goto _Label_3366		(int)
	load	[r14+24],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	ble	_Label_3366
!	jmp	_Label_3365
_Label_3365:
	mov	3100,r13		! source line 3100
	mov	"\0\0WB",r10
! ASSIGNMENT STATEMENT...
	mov	3109,r13		! source line 3109
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
	mov	3110,r13		! source line 3110
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
	mov	3114,r13		! source line 3114
	mov	"\0\0IF",r10
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-136],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3370 = fcb + 32
	load	[r14+-136],r1
	add	r1,32,r1
	store	r1,[r14+-76]
!   Data Move: _temp_3369 = *_temp_3370  (sizeInBytes=4)
	load	[r14+-76],r1
	load	[r1],r1
	store	r1,[r14+-80]
!   if _temp_3369 == sector then goto _Label_3368		(int)
	load	[r14+-80],r1
	load	[r14+-120],r2
	cmp	r1,r2
	be	_Label_3368
!	jmp	_Label_3367
_Label_3367:
! THEN...
	mov	3116,r13		! source line 3116
	mov	"\0\0TN",r10
! SEND STATEMENT...
	mov	3116,r13		! source line 3116
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-72]
!   if intIsZero (_temp_3371) then goto _runtimeErrorNullPointer
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
_Label_3368:
! ASSIGNMENT STATEMENT...
	mov	3118,r13		! source line 3118
	mov	"\0\0AS",r10
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-136],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3373 = fcb + 28
	load	[r14+-136],r1
	add	r1,28,r1
	store	r1,[r14+-64]
!   Data Move: _temp_3372 = *_temp_3373  (sizeInBytes=4)
	load	[r14+-64],r1
	load	[r1],r1
	store	r1,[r14+-68]
!   posInBuffer = _temp_3372 + offset		(int)
	load	[r14+-68],r1
	load	[r14+-124],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-128]
! ASSIGNMENT STATEMENT...
	mov	3119,r13		! source line 3119
	mov	"\0\0AS",r10
!   _temp_3374 = 8192 - offset		(int)
	mov	8192,r1
	load	[r14+-124],r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-60]
!   Prepare Argument: offset=8  value=numBytes  sizeInBytes=4
	load	[r14+24],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=_temp_3374  sizeInBytes=4
	load	[r14+-60],r1
	store	r1,[r15+4]
!   Call the function
	mov	3119,r13		! source line 3119
	mov	"\0\0CA",r10
	call	_P_System_Min
!   Retrieve Result: targetName=bytesToMove  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-132]
! IF STATEMENT...
	mov	3120,r13		! source line 3120
	mov	"\0\0IF",r10
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-136],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3378 = fcb + 32
	load	[r14+-136],r1
	add	r1,32,r1
	store	r1,[r14+-52]
!   Data Move: _temp_3377 = *_temp_3378  (sizeInBytes=4)
	load	[r14+-52],r1
	load	[r1],r1
	store	r1,[r14+-56]
!   if _temp_3377 != sector then goto _Label_3376		(int)
	load	[r14+-56],r1
	load	[r14+-120],r2
	cmp	r1,r2
	bne	_Label_3376
!	jmp	_Label_3375
_Label_3375:
	jmp	_Label_3379
_Label_3376:
! ELSE...
	mov	3122,r13		! source line 3122
	mov	"\0\0EL",r10
! IF STATEMENT...
	mov	3122,r13		! source line 3122
	mov	"\0\0IF",r10
!   if intIsZero (offset) then goto _Label_3382
	load	[r14+-124],r1
	cmp	r1,r0
	be	_Label_3382
	jmp	_Label_3381
_Label_3382:
!   if bytesToMove != 8192 then goto _Label_3381		(int)
	load	[r14+-132],r1
	mov	8192,r2
	cmp	r1,r2
	bne	_Label_3381
!	jmp	_Label_3380
_Label_3380:
	jmp	_Label_3383
_Label_3381:
! ELSE...
	mov	3126,r13		! source line 3126
	mov	"\0\0EL",r10
! SEND STATEMENT...
	mov	3126,r13		! source line 3126
	mov	"\0\0SE",r10
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-136],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3386 = fcb + 20
	load	[r14+-136],r1
	add	r1,20,r1
	store	r1,[r14+-40]
!   Data Move: _temp_3385 = *_temp_3386  (sizeInBytes=4)
	load	[r14+-40],r1
	load	[r1],r1
	store	r1,[r14+-44]
!   _temp_3384 = sector + _temp_3385		(int)
	load	[r14+-120],r1
	load	[r14+-44],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-48]
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-136],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3388 = fcb + 28
	load	[r14+-136],r1
	add	r1,28,r1
	store	r1,[r14+-32]
!   Data Move: _temp_3387 = *_temp_3388  (sizeInBytes=4)
	load	[r14+-32],r1
	load	[r1],r1
	store	r1,[r14+-36]
!   _temp_3389 = &_P_Kernel_diskDriver
	set	_P_Kernel_diskDriver,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=12  value=_temp_3384  sizeInBytes=4
	load	[r14+-48],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=1  sizeInBytes=4
	mov	1,r1
	store	r1,[r15+8]
!   Prepare Argument: offset=20  value=_temp_3387  sizeInBytes=4
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
_Label_3383:
! END IF...
_Label_3379:
! ASSIGNMENT STATEMENT...
	mov	3130,r13		! source line 3130
	mov	"\0\0AS",r10
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-136],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3390 = fcb + 32
	load	[r14+-136],r1
	add	r1,32,r1
	store	r1,[r14+-24]
!   Data Move: *_temp_3390 = sector  (sizeInBytes=4)
	load	[r14+-120],r1
	load	[r14+-24],r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	3131,r13		! source line 3131
	mov	"\0\0AS",r10
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-136],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3391 = fcb + 36
	load	[r14+-136],r1
	add	r1,36,r1
	store	r1,[r14+-20]
!   Data Move: *_temp_3391 = 1  (sizeInBytes=1)
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
	mov	3135,r13		! source line 3135
	mov	"\0\0CE",r10
	call	MemoryCopy
! ASSIGNMENT STATEMENT...
	mov	3136,r13		! source line 3136
	mov	"\0\0AS",r10
!   sourceAddr = sourceAddr + bytesToMove		(int)
	load	[r14+16],r1
	load	[r14+-132],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+16]
! ASSIGNMENT STATEMENT...
	mov	3137,r13		! source line 3137
	mov	"\0\0AS",r10
!   bytePos = bytePos + bytesToMove		(int)
	load	[r14+20],r1
	load	[r14+-132],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+20]
! ASSIGNMENT STATEMENT...
	mov	3138,r13		! source line 3138
	mov	"\0\0AS",r10
!   numBytes = numBytes - bytesToMove		(int)
	load	[r14+24],r1
	load	[r14+-132],r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+24]
! END WHILE...
	jmp	_Label_3364
_Label_3366:
! SEND STATEMENT...
	mov	3145,r13		! source line 3145
	mov	"\0\0SE",r10
!   _temp_3392 = &fileManagerLock
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
	mov	3147,r13		! source line 3147
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
	.word	_Label_3393
	.word	20		! total size of parameters
	.word	144		! frame size = 144
	.word	_Label_3394
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_3395
	.word	12
	.word	4
	.word	_Label_3396
	.word	16
	.word	4
	.word	_Label_3397
	.word	20
	.word	4
	.word	_Label_3398
	.word	24
	.word	4
	.word	_Label_3399
	.word	-16
	.word	4
	.word	_Label_3400
	.word	-20
	.word	4
	.word	_Label_3401
	.word	-24
	.word	4
	.word	_Label_3402
	.word	-28
	.word	4
	.word	_Label_3403
	.word	-32
	.word	4
	.word	_Label_3404
	.word	-36
	.word	4
	.word	_Label_3405
	.word	-40
	.word	4
	.word	_Label_3406
	.word	-44
	.word	4
	.word	_Label_3407
	.word	-48
	.word	4
	.word	_Label_3408
	.word	-52
	.word	4
	.word	_Label_3409
	.word	-56
	.word	4
	.word	_Label_3410
	.word	-60
	.word	4
	.word	_Label_3411
	.word	-64
	.word	4
	.word	_Label_3412
	.word	-68
	.word	4
	.word	_Label_3413
	.word	-72
	.word	4
	.word	_Label_3414
	.word	-76
	.word	4
	.word	_Label_3415
	.word	-80
	.word	4
	.word	_Label_3416
	.word	-84
	.word	4
	.word	_Label_3417
	.word	-88
	.word	4
	.word	_Label_3418
	.word	-92
	.word	4
	.word	_Label_3419
	.word	-96
	.word	4
	.word	_Label_3420
	.word	-100
	.word	4
	.word	_Label_3421
	.word	-104
	.word	4
	.word	_Label_3422
	.word	-108
	.word	4
	.word	_Label_3423
	.word	-112
	.word	4
	.word	_Label_3424
	.word	-9
	.word	1
	.word	_Label_3425
	.word	-10
	.word	1
	.word	_Label_3426
	.word	-116
	.word	4
	.word	_Label_3427
	.word	-120
	.word	4
	.word	_Label_3428
	.word	-124
	.word	4
	.word	_Label_3429
	.word	-128
	.word	4
	.word	_Label_3430
	.word	-132
	.word	4
	.word	_Label_3431
	.word	-136
	.word	4
	.word	0
_Label_3393:
	.ascii	"FileManager"
	.ascii	"::"
	.ascii	"SynchWrite\0"
	.align
_Label_3394:
	.ascii	"Pself\0"
	.align
_Label_3395:
	.byte	'P'
	.ascii	"open\0"
	.align
_Label_3396:
	.byte	'I'
	.ascii	"sourceAddr\0"
	.align
_Label_3397:
	.byte	'I'
	.ascii	"bytePos\0"
	.align
_Label_3398:
	.byte	'I'
	.ascii	"numBytes\0"
	.align
_Label_3399:
	.byte	'?'
	.ascii	"_temp_3392\0"
	.align
_Label_3400:
	.byte	'?'
	.ascii	"_temp_3391\0"
	.align
_Label_3401:
	.byte	'?'
	.ascii	"_temp_3390\0"
	.align
_Label_3402:
	.byte	'?'
	.ascii	"_temp_3389\0"
	.align
_Label_3403:
	.byte	'?'
	.ascii	"_temp_3388\0"
	.align
_Label_3404:
	.byte	'?'
	.ascii	"_temp_3387\0"
	.align
_Label_3405:
	.byte	'?'
	.ascii	"_temp_3386\0"
	.align
_Label_3406:
	.byte	'?'
	.ascii	"_temp_3385\0"
	.align
_Label_3407:
	.byte	'?'
	.ascii	"_temp_3384\0"
	.align
_Label_3408:
	.byte	'?'
	.ascii	"_temp_3378\0"
	.align
_Label_3409:
	.byte	'?'
	.ascii	"_temp_3377\0"
	.align
_Label_3410:
	.byte	'?'
	.ascii	"_temp_3374\0"
	.align
_Label_3411:
	.byte	'?'
	.ascii	"_temp_3373\0"
	.align
_Label_3412:
	.byte	'?'
	.ascii	"_temp_3372\0"
	.align
_Label_3413:
	.byte	'?'
	.ascii	"_temp_3371\0"
	.align
_Label_3414:
	.byte	'?'
	.ascii	"_temp_3370\0"
	.align
_Label_3415:
	.byte	'?'
	.ascii	"_temp_3369\0"
	.align
_Label_3416:
	.byte	'?'
	.ascii	"_temp_3363\0"
	.align
_Label_3417:
	.byte	'?'
	.ascii	"_temp_3362\0"
	.align
_Label_3418:
	.byte	'?'
	.ascii	"_temp_3361\0"
	.align
_Label_3419:
	.byte	'?'
	.ascii	"_temp_3360\0"
	.align
_Label_3420:
	.byte	'?'
	.ascii	"_temp_3359\0"
	.align
_Label_3421:
	.byte	'?'
	.ascii	"_temp_3358\0"
	.align
_Label_3422:
	.byte	'?'
	.ascii	"_temp_3355\0"
	.align
_Label_3423:
	.byte	'?'
	.ascii	"_temp_3354\0"
	.align
_Label_3424:
	.byte	'C'
	.ascii	"_temp_3353\0"
	.align
_Label_3425:
	.byte	'C'
	.ascii	"_temp_3350\0"
	.align
_Label_3426:
	.byte	'?'
	.ascii	"_temp_3345\0"
	.align
_Label_3427:
	.byte	'I'
	.ascii	"sector\0"
	.align
_Label_3428:
	.byte	'I'
	.ascii	"offset\0"
	.align
_Label_3429:
	.byte	'I'
	.ascii	"posInBuffer\0"
	.align
_Label_3430:
	.byte	'I'
	.ascii	"bytesToMove\0"
	.align
_Label_3431:
	.byte	'P'
	.ascii	"fcb\0"
	.align
! 
! ===============  CLASS FileControlBlock  ===============
! 
! Dispatch Table:
! 
_P_Kernel_FileControlBlock:
	.word	_Label_3432
	jmp	_Method_P_Kernel_FileControlBlock_1	! 4:	Init
	jmp	_Method_P_Kernel_FileControlBlock_2	! 8:	Print
	.word	0
! 
! Class descriptor:
! 
_Label_3432:
	.word	1129070931		! Magic number 0x434c4153 == 'CLAS'
	.word	_Label_3433
	.word	_sourceFileName
	.word	361		! line number
	.word	40		! size of instances, in bytes
	.word	_P_Kernel_FileControlBlock
	.word	_P_List_Listable
	.word	_P_System_Object
	.word	0
_Label_3433:
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
_Label_3911:
	push	r0
	sub	r1,1,r1
	bne	_Label_3911
	mov	3183,r13		! source line 3183
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	3184,r13		! source line 3184
	mov	"\0\0AS",r10
!   numberOfUsers = 0		(4 bytes)
	mov	0,r1
	load	[r14+8],r2
	store	r1,[r2+16]
! ASSIGNMENT STATEMENT...
	mov	3185,r13		! source line 3185
	mov	"\0\0AS",r10
	mov	3185,r13		! source line 3185
	mov	"\0\0SE",r10
!   _temp_3434 = &_P_Kernel_frameManager
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
	mov	3186,r13		! source line 3186
	mov	"\0\0AS",r10
!   relativeSectorInBuffer = -1		(4 bytes)
	mov	-1,r1
	load	[r14+8],r2
	store	r1,[r2+32]
! ASSIGNMENT STATEMENT...
	mov	3187,r13		! source line 3187
	mov	"\0\0AS",r10
!   bufferIsDirty = 0		(1 byte)
	mov	0,r1
	load	[r14+8],r2
	storeb	r1,[r2+36]
! ASSIGNMENT STATEMENT...
	mov	3188,r13		! source line 3188
	mov	"\0\0AS",r10
!   startingSectorOfFile = -1		(4 bytes)
	mov	-1,r1
	load	[r14+8],r2
	store	r1,[r2+20]
! RETURN STATEMENT...
	mov	3188,r13		! source line 3188
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
	.word	_Label_3435
	.word	4		! total size of parameters
	.word	8		! frame size = 8
	.word	_Label_3436
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_3437
	.word	-12
	.word	4
	.word	0
_Label_3435:
	.ascii	"FileControlBlock"
	.ascii	"::"
	.ascii	"Init\0"
	.align
_Label_3436:
	.ascii	"Pself\0"
	.align
_Label_3437:
	.byte	'?'
	.ascii	"_temp_3434\0"
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
_Label_3912:
	push	r0
	sub	r1,1,r1
	bne	_Label_3912
	mov	3193,r13		! source line 3193
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   _temp_3438 = _StringConst_159
	set	_StringConst_159,r1
	store	r1,[r14+-32]
!   Prepare Argument: offset=8  value=_temp_3438  sizeInBytes=4
	load	[r14+-32],r1
	store	r1,[r15+0]
!   Call the function
	mov	3194,r13		! source line 3194
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=fcbID  sizeInBytes=4
	load	[r14+8],r1
	load	[r1+12],r1
	store	r1,[r15+0]
!   Call the function
	mov	3195,r13		! source line 3195
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   _temp_3439 = _StringConst_160
	set	_StringConst_160,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=8  value=_temp_3439  sizeInBytes=4
	load	[r14+-28],r1
	store	r1,[r15+0]
!   Call the function
	mov	3196,r13		! source line 3196
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=numberOfUsers  sizeInBytes=4
	load	[r14+8],r1
	load	[r1+16],r1
	store	r1,[r15+0]
!   Call the function
	mov	3197,r13		! source line 3197
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   _temp_3440 = _StringConst_161
	set	_StringConst_161,r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=8  value=_temp_3440  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+0]
!   Call the function
	mov	3198,r13		! source line 3198
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=startingSectorOfFile  sizeInBytes=4
	load	[r14+8],r1
	load	[r1+20],r1
	store	r1,[r15+0]
!   Call the function
	mov	3199,r13		! source line 3199
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   _temp_3441 = _StringConst_162
	set	_StringConst_162,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_3441  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   Call the function
	mov	3200,r13		! source line 3200
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=sizeOfFileInBytes  sizeInBytes=4
	load	[r14+8],r1
	load	[r1+24],r1
	store	r1,[r15+0]
!   Call the function
	mov	3201,r13		! source line 3201
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   _temp_3442 = _StringConst_163
	set	_StringConst_163,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_3442  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+0]
!   Call the function
	mov	3202,r13		! source line 3202
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=bufferPtr  sizeInBytes=4
	load	[r14+8],r1
	load	[r1+28],r1
	store	r1,[r15+0]
!   Call the function
	mov	3203,r13		! source line 3203
	mov	"\0\0CE",r10
	call	printHex
! CALL STATEMENT...
!   _temp_3443 = _StringConst_164
	set	_StringConst_164,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_3443  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	3204,r13		! source line 3204
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=relativeSectorInBuffer  sizeInBytes=4
	load	[r14+8],r1
	load	[r1+32],r1
	store	r1,[r15+0]
!   Call the function
	mov	3205,r13		! source line 3205
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   Call the function
	mov	3206,r13		! source line 3206
	mov	"\0\0CA",r10
	call	_P_System_nl
! RETURN STATEMENT...
	mov	3206,r13		! source line 3206
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
	.word	_Label_3444
	.word	4		! total size of parameters
	.word	28		! frame size = 28
	.word	_Label_3445
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_3446
	.word	-12
	.word	4
	.word	_Label_3447
	.word	-16
	.word	4
	.word	_Label_3448
	.word	-20
	.word	4
	.word	_Label_3449
	.word	-24
	.word	4
	.word	_Label_3450
	.word	-28
	.word	4
	.word	_Label_3451
	.word	-32
	.word	4
	.word	0
_Label_3444:
	.ascii	"FileControlBlock"
	.ascii	"::"
	.ascii	"Print\0"
	.align
_Label_3445:
	.ascii	"Pself\0"
	.align
_Label_3446:
	.byte	'?'
	.ascii	"_temp_3443\0"
	.align
_Label_3447:
	.byte	'?'
	.ascii	"_temp_3442\0"
	.align
_Label_3448:
	.byte	'?'
	.ascii	"_temp_3441\0"
	.align
_Label_3449:
	.byte	'?'
	.ascii	"_temp_3440\0"
	.align
_Label_3450:
	.byte	'?'
	.ascii	"_temp_3439\0"
	.align
_Label_3451:
	.byte	'?'
	.ascii	"_temp_3438\0"
	.align
! 
! ===============  CLASS OpenFile  ===============
! 
! Dispatch Table:
! 
_P_Kernel_OpenFile:
	.word	_Label_3452
	jmp	_Method_P_Kernel_OpenFile_1	! 4:	Print
	jmp	_Method_P_Kernel_OpenFile_2	! 8:	ReadBytes
	jmp	_Method_P_Kernel_OpenFile_3	! 12:	ReadInt
	jmp	_Method_P_Kernel_OpenFile_4	! 16:	LoadExecutable
	.word	0
! 
! Class descriptor:
! 
_Label_3452:
	.word	1129070931		! Magic number 0x434c4153 == 'CLAS'
	.word	_Label_3453
	.word	_sourceFileName
	.word	378		! line number
	.word	28		! size of instances, in bytes
	.word	_P_Kernel_OpenFile
	.word	_P_List_Listable
	.word	_P_System_Object
	.word	0
_Label_3453:
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
_Label_3913:
	push	r0
	sub	r1,1,r1
	bne	_Label_3913
	mov	3217,r13		! source line 3217
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   _temp_3454 = _StringConst_165
	set	_StringConst_165,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_3454  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   Call the function
	mov	3218,r13		! source line 3218
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=currentPos  sizeInBytes=4
	load	[r14+8],r1
	load	[r1+16],r1
	store	r1,[r15+0]
!   Call the function
	mov	3219,r13		! source line 3219
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   _temp_3455 = _StringConst_166
	set	_StringConst_166,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_3455  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+0]
!   Call the function
	mov	3220,r13		! source line 3220
	mov	"\0\0CE",r10
	call	print
! IF STATEMENT...
	mov	3221,r13		! source line 3221
	mov	"\0\0IF",r10
!   if fcb == 0 then goto _Label_3457		(int)
	load	[r14+8],r1
	load	[r1+20],r1
	mov	0,r2
	cmp	r1,r2
	be	_Label_3457
!	jmp	_Label_3456
_Label_3456:
! THEN...
	mov	3222,r13		! source line 3222
	mov	"\0\0TN",r10
! SEND STATEMENT...
	mov	3222,r13		! source line 3222
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
	jmp	_Label_3458
_Label_3457:
! ELSE...
	mov	3224,r13		! source line 3224
	mov	"\0\0EL",r10
! CALL STATEMENT...
!   _temp_3459 = _StringConst_167
	set	_StringConst_167,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_3459  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	3224,r13		! source line 3224
	mov	"\0\0CE",r10
	call	print
! END IF...
_Label_3458:
! RETURN STATEMENT...
	mov	3221,r13		! source line 3221
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
	.word	_Label_3460
	.word	4		! total size of parameters
	.word	16		! frame size = 16
	.word	_Label_3461
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_3462
	.word	-12
	.word	4
	.word	_Label_3463
	.word	-16
	.word	4
	.word	_Label_3464
	.word	-20
	.word	4
	.word	0
_Label_3460:
	.ascii	"OpenFile"
	.ascii	"::"
	.ascii	"Print\0"
	.align
_Label_3461:
	.ascii	"Pself\0"
	.align
_Label_3462:
	.byte	'?'
	.ascii	"_temp_3459\0"
	.align
_Label_3463:
	.byte	'?'
	.ascii	"_temp_3455\0"
	.align
_Label_3464:
	.byte	'?'
	.ascii	"_temp_3454\0"
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
_Label_3914:
	push	r0
	sub	r1,1,r1
	bne	_Label_3914
	mov	3230,r13		! source line 3230
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! SEND STATEMENT...
	mov	3240,r13		! source line 3240
	mov	"\0\0SE",r10
!   _temp_3465 = &_P_Kernel_fileManager
	set	_P_Kernel_fileManager,r1
	store	r1,[r14+-36]
!   _temp_3466 = _temp_3465 + 4
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
	mov	3241,r13		! source line 3241
	mov	"\0\0AS",r10
!   pos = currentPos		(4 bytes)
	load	[r14+8],r1
	load	[r1+16],r1
	store	r1,[r14+-40]
! ASSIGNMENT STATEMENT...
	mov	3242,r13		! source line 3242
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
	mov	3243,r13		! source line 3243
	mov	"\0\0SE",r10
!   _temp_3467 = &_P_Kernel_fileManager
	set	_P_Kernel_fileManager,r1
	store	r1,[r14+-28]
!   _temp_3468 = _temp_3467 + 4
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
	mov	3244,r13		! source line 3244
	mov	"\0\0RE",r10
	mov	3244,r13		! source line 3244
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-20]
!   _temp_3471 = &_P_Kernel_fileManager
	set	_P_Kernel_fileManager,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=12  value=_temp_3470  sizeInBytes=4
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
!   Retrieve Result: targetName=_temp_3469  sizeInBytes=1
	loadb	[r15],r1
	storeb	r1,[r14+-9]
!   ReturnResult: _temp_3469  (sizeInBytes=1)
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
	.word	_Label_3472
	.word	12		! total size of parameters
	.word	52		! frame size = 52
	.word	_Label_3473
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_3474
	.word	12
	.word	4
	.word	_Label_3475
	.word	16
	.word	4
	.word	_Label_3476
	.word	-16
	.word	4
	.word	_Label_3477
	.word	-20
	.word	4
	.word	_Label_3478
	.word	-9
	.word	1
	.word	_Label_3479
	.word	-24
	.word	4
	.word	_Label_3480
	.word	-28
	.word	4
	.word	_Label_3481
	.word	-32
	.word	4
	.word	_Label_3482
	.word	-36
	.word	4
	.word	_Label_3483
	.word	-40
	.word	4
	.word	0
_Label_3472:
	.ascii	"OpenFile"
	.ascii	"::"
	.ascii	"ReadBytes\0"
	.align
_Label_3473:
	.ascii	"Pself\0"
	.align
_Label_3474:
	.byte	'I'
	.ascii	"targetAddr\0"
	.align
_Label_3475:
	.byte	'I'
	.ascii	"numBytes\0"
	.align
_Label_3476:
	.byte	'?'
	.ascii	"_temp_3471\0"
	.align
_Label_3477:
	.byte	'?'
	.ascii	"_temp_3470\0"
	.align
_Label_3478:
	.byte	'C'
	.ascii	"_temp_3469\0"
	.align
_Label_3479:
	.byte	'?'
	.ascii	"_temp_3468\0"
	.align
_Label_3480:
	.byte	'?'
	.ascii	"_temp_3467\0"
	.align
_Label_3481:
	.byte	'?'
	.ascii	"_temp_3466\0"
	.align
_Label_3482:
	.byte	'?'
	.ascii	"_temp_3465\0"
	.align
_Label_3483:
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
_Label_3915:
	push	r0
	sub	r1,1,r1
	bne	_Label_3915
	mov	3249,r13		! source line 3249
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! IF STATEMENT...
	mov	3254,r13		! source line 3254
	mov	"\0\0IF",r10
	mov	3254,r13		! source line 3254
	mov	"\0\0SE",r10
!   _temp_3487 = &i
	add	r14,-28,r1
	store	r1,[r14+-24]
	load	[r14+8],r1
	store	r1,[r14+-20]
!   if intIsZero (_temp_3488) then goto _runtimeErrorNullPointer
	load	[r14+-20],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Prepare Argument: offset=12  value=_temp_3487  sizeInBytes=4
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
!   Retrieve Result: targetName=_temp_3486  sizeInBytes=1
	loadb	[r15],r1
	storeb	r1,[r14+-9]
!   if _temp_3486 then goto _Label_3485 else goto _Label_3484
	loadb	[r14+-9],r1
	cmp	r1,0
	be	_Label_3484
	jmp	_Label_3485
_Label_3484:
! THEN...
	mov	3255,r13		! source line 3255
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_3489 = _StringConst_168
	set	_StringConst_168,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_3489  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	3255,r13		! source line 3255
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END IF...
_Label_3485:
! RETURN STATEMENT...
	mov	3257,r13		! source line 3257
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
	.word	_Label_3490
	.word	4		! total size of parameters
	.word	32		! frame size = 32
	.word	_Label_3491
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_3492
	.word	-16
	.word	4
	.word	_Label_3493
	.word	-20
	.word	4
	.word	_Label_3494
	.word	-24
	.word	4
	.word	_Label_3495
	.word	-9
	.word	1
	.word	_Label_3496
	.word	-28
	.word	4
	.word	0
_Label_3490:
	.ascii	"OpenFile"
	.ascii	"::"
	.ascii	"ReadInt\0"
	.align
_Label_3491:
	.ascii	"Pself\0"
	.align
_Label_3492:
	.byte	'?'
	.ascii	"_temp_3489\0"
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
_Label_3916:
	push	r0
	sub	r1,1,r1
	bne	_Label_3916
	mov	3262,r13		! source line 3262
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! IF STATEMENT...
	mov	3288,r13		! source line 3288
	mov	"\0\0IF",r10
!   if intIsZero (addrSpace) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3500 = addrSpace + 4
	load	[r14+12],r1
	add	r1,4,r1
	store	r1,[r14+-216]
!   Data Move: _temp_3499 = *_temp_3500  (sizeInBytes=4)
	load	[r14+-216],r1
	load	[r1],r1
	store	r1,[r14+-220]
!   if intIsZero (_temp_3499) then goto _Label_3498
	load	[r14+-220],r1
	cmp	r1,r0
	be	_Label_3498
!	jmp	_Label_3497
_Label_3497:
! THEN...
	mov	3289,r13		! source line 3289
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_3501 = _StringConst_169
	set	_StringConst_169,r1
	store	r1,[r14+-212]
!   Prepare Argument: offset=8  value=_temp_3501  sizeInBytes=4
	load	[r14+-212],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	3289,r13		! source line 3289
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END IF...
_Label_3498:
! IF STATEMENT...
	mov	3293,r13		! source line 3293
	mov	"\0\0IF",r10
	mov	3293,r13		! source line 3293
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-204]
!   if intIsZero (_temp_3505) then goto _runtimeErrorNullPointer
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
!   Retrieve Result: targetName=_temp_3504  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-208]
!   if _temp_3504 == 1112300152 then goto _Label_3503		(int)
	load	[r14+-208],r1
	set	1112300152,r2
	cmp	r1,r2
	be	_Label_3503
!	jmp	_Label_3502
_Label_3502:
! THEN...
	mov	3294,r13		! source line 3294
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_3506 = _StringConst_170
	set	_StringConst_170,r1
	store	r1,[r14+-200]
!   Prepare Argument: offset=8  value=_temp_3506  sizeInBytes=4
	load	[r14+-200],r1
	store	r1,[r15+0]
!   Call the function
	mov	3294,r13		! source line 3294
	mov	"\0\0CE",r10
	call	print
! RETURN STATEMENT...
	mov	3295,r13		! source line 3295
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,276,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_3503:
! ASSIGNMENT STATEMENT...
	mov	3299,r13		! source line 3299
	mov	"\0\0AS",r10
	mov	3299,r13		! source line 3299
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-196]
!   if intIsZero (_temp_3507) then goto _runtimeErrorNullPointer
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
	mov	3300,r13		! source line 3300
	mov	"\0\0AS",r10
	mov	3300,r13		! source line 3300
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-192]
!   if intIsZero (_temp_3508) then goto _runtimeErrorNullPointer
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
	mov	3301,r13		! source line 3301
	mov	"\0\0AS",r10
	mov	3301,r13		! source line 3301
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-188]
!   if intIsZero (_temp_3509) then goto _runtimeErrorNullPointer
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
	mov	3302,r13		! source line 3302
	mov	"\0\0AS",r10
	mov	3302,r13		! source line 3302
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-184]
!   if intIsZero (_temp_3510) then goto _runtimeErrorNullPointer
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
	mov	3303,r13		! source line 3303
	mov	"\0\0AS",r10
	mov	3303,r13		! source line 3303
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-180]
!   if intIsZero (_temp_3511) then goto _runtimeErrorNullPointer
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
	mov	3304,r13		! source line 3304
	mov	"\0\0AS",r10
	mov	3304,r13		! source line 3304
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-176]
!   if intIsZero (_temp_3512) then goto _runtimeErrorNullPointer
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
	mov	3307,r13		! source line 3307
	mov	"\0\0IF",r10
!   _temp_3515 = textSize rem 8192		(int)
	load	[r14+-232],r1
	mov	8192,r2
	cmp	r2,0
	be	_runtimeErrorZeroDivide
	rem	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-172]
!   if intIsZero (_temp_3515) then goto _Label_3514
	load	[r14+-172],r1
	cmp	r1,r0
	be	_Label_3514
!	jmp	_Label_3513
_Label_3513:
! THEN...
	mov	3308,r13		! source line 3308
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_3516 = _StringConst_171
	set	_StringConst_171,r1
	store	r1,[r14+-168]
!   Prepare Argument: offset=8  value=_temp_3516  sizeInBytes=4
	load	[r14+-168],r1
	store	r1,[r15+0]
!   Call the function
	mov	3308,r13		! source line 3308
	mov	"\0\0CE",r10
	call	print
! RETURN STATEMENT...
	mov	3309,r13		! source line 3309
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,276,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_3514:
! ASSIGNMENT STATEMENT...
	mov	3311,r13		! source line 3311
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
	mov	3315,r13		! source line 3315
	mov	"\0\0IF",r10
!   if intIsZero (textStart) then goto _Label_3518
	load	[r14+-244],r1
	cmp	r1,r0
	be	_Label_3518
!	jmp	_Label_3517
_Label_3517:
! THEN...
	mov	3316,r13		! source line 3316
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_3519 = _StringConst_172
	set	_StringConst_172,r1
	store	r1,[r14+-164]
!   Prepare Argument: offset=8  value=_temp_3519  sizeInBytes=4
	load	[r14+-164],r1
	store	r1,[r15+0]
!   Call the function
	mov	3316,r13		! source line 3316
	mov	"\0\0CE",r10
	call	print
! RETURN STATEMENT...
	mov	3317,r13		! source line 3317
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,276,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_3518:
! IF STATEMENT...
	mov	3321,r13		! source line 3321
	mov	"\0\0IF",r10
!   _temp_3522 = dataSize rem 8192		(int)
	load	[r14+-236],r1
	mov	8192,r2
	cmp	r2,0
	be	_runtimeErrorZeroDivide
	rem	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-160]
!   if intIsZero (_temp_3522) then goto _Label_3521
	load	[r14+-160],r1
	cmp	r1,r0
	be	_Label_3521
!	jmp	_Label_3520
_Label_3520:
! THEN...
	mov	3322,r13		! source line 3322
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_3523 = _StringConst_173
	set	_StringConst_173,r1
	store	r1,[r14+-156]
!   Prepare Argument: offset=8  value=_temp_3523  sizeInBytes=4
	load	[r14+-156],r1
	store	r1,[r15+0]
!   Call the function
	mov	3322,r13		! source line 3322
	mov	"\0\0CE",r10
	call	print
! RETURN STATEMENT...
	mov	3323,r13		! source line 3323
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,276,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_3521:
! IF STATEMENT...
	mov	3325,r13		! source line 3325
	mov	"\0\0IF",r10
!   _temp_3526 = textStart + textSize		(int)
	load	[r14+-244],r1
	load	[r14+-232],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-152]
!   if dataStart == _temp_3526 then goto _Label_3525		(int)
	load	[r14+-248],r1
	load	[r14+-152],r2
	cmp	r1,r2
	be	_Label_3525
!	jmp	_Label_3524
_Label_3524:
! THEN...
	mov	3326,r13		! source line 3326
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_3527 = _StringConst_174
	set	_StringConst_174,r1
	store	r1,[r14+-148]
!   Prepare Argument: offset=8  value=_temp_3527  sizeInBytes=4
	load	[r14+-148],r1
	store	r1,[r15+0]
!   Call the function
	mov	3326,r13		! source line 3326
	mov	"\0\0CE",r10
	call	print
! RETURN STATEMENT...
	mov	3327,r13		! source line 3327
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,276,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_3525:
! ASSIGNMENT STATEMENT...
	mov	3329,r13		! source line 3329
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
	mov	3332,r13		! source line 3332
	mov	"\0\0IF",r10
!   _temp_3530 = bssSize rem 8192		(int)
	load	[r14+-240],r1
	mov	8192,r2
	cmp	r2,0
	be	_runtimeErrorZeroDivide
	rem	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-144]
!   if intIsZero (_temp_3530) then goto _Label_3529
	load	[r14+-144],r1
	cmp	r1,r0
	be	_Label_3529
!	jmp	_Label_3528
_Label_3528:
! THEN...
	mov	3333,r13		! source line 3333
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_3531 = _StringConst_175
	set	_StringConst_175,r1
	store	r1,[r14+-140]
!   Prepare Argument: offset=8  value=_temp_3531  sizeInBytes=4
	load	[r14+-140],r1
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
_Label_3529:
! IF STATEMENT...
	mov	3336,r13		! source line 3336
	mov	"\0\0IF",r10
!   _temp_3534 = dataStart + dataSize		(int)
	load	[r14+-248],r1
	load	[r14+-236],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-136]
!   if bssStart == _temp_3534 then goto _Label_3533		(int)
	load	[r14+-252],r1
	load	[r14+-136],r2
	cmp	r1,r2
	be	_Label_3533
!	jmp	_Label_3532
_Label_3532:
! THEN...
	mov	3337,r13		! source line 3337
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_3535 = _StringConst_176
	set	_StringConst_176,r1
	store	r1,[r14+-132]
!   Prepare Argument: offset=8  value=_temp_3535  sizeInBytes=4
	load	[r14+-132],r1
	store	r1,[r15+0]
!   Call the function
	mov	3337,r13		! source line 3337
	mov	"\0\0CE",r10
	call	print
! RETURN STATEMENT...
	mov	3338,r13		! source line 3338
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,276,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_3533:
! ASSIGNMENT STATEMENT...
	mov	3340,r13		! source line 3340
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
	mov	3343,r13		! source line 3343
	mov	"\0\0AS",r10
!   _temp_3538 = textSizeInPages + dataSizeInPages		(int)
	load	[r14+-260],r1
	load	[r14+-264],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-120]
!   _temp_3537 = _temp_3538 + bssSizeInPages		(int)
	load	[r14+-120],r1
	load	[r14+-268],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-124]
!   _temp_3536 = _temp_3537 + 1		(int)
	load	[r14+-124],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-128]
!   i = _temp_3536 + 0		(int)
	load	[r14+-128],r1
	mov	0,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-256]
! IF STATEMENT...
	mov	3358,r13		! source line 3358
	mov	"\0\0IF",r10
!   if i <= 20 then goto _Label_3540		(int)
	load	[r14+-256],r1
	mov	20,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	ble	_Label_3540
!	jmp	_Label_3539
_Label_3539:
! THEN...
	mov	3359,r13		! source line 3359
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_3541 = _StringConst_177
	set	_StringConst_177,r1
	store	r1,[r14+-116]
!   Prepare Argument: offset=8  value=_temp_3541  sizeInBytes=4
	load	[r14+-116],r1
	store	r1,[r15+0]
!   Call the function
	mov	3359,r13		! source line 3359
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_3542 = _StringConst_178
	set	_StringConst_178,r1
	store	r1,[r14+-112]
!   Prepare Argument: offset=8  value=_temp_3542  sizeInBytes=4
	load	[r14+-112],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=i  sizeInBytes=4
	load	[r14+-256],r1
	store	r1,[r15+4]
!   Call the function
	mov	3360,r13		! source line 3360
	mov	"\0\0CA",r10
	call	_P_System_printIntVar
! CALL STATEMENT...
!   _temp_3543 = _StringConst_179
	set	_StringConst_179,r1
	store	r1,[r14+-108]
!   Prepare Argument: offset=8  value=_temp_3543  sizeInBytes=4
	load	[r14+-108],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=20  sizeInBytes=4
	mov	20,r1
	store	r1,[r15+4]
!   Call the function
	mov	3361,r13		! source line 3361
	mov	"\0\0CA",r10
	call	_P_System_printIntVar
! RETURN STATEMENT...
	mov	3362,r13		! source line 3362
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,276,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_3540:
! SEND STATEMENT...
	mov	3365,r13		! source line 3365
	mov	"\0\0SE",r10
!   _temp_3544 = &_P_Kernel_frameManager
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
	mov	3371,r13		! source line 3371
	mov	"\0\0IF",r10
	mov	3371,r13		! source line 3371
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-96]
!   if intIsZero (_temp_3548) then goto _runtimeErrorNullPointer
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
!   Retrieve Result: targetName=_temp_3547  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-100]
!   if _temp_3547 == 707406378 then goto _Label_3546		(int)
	load	[r14+-100],r1
	set	707406378,r2
	cmp	r1,r2
	be	_Label_3546
!	jmp	_Label_3545
_Label_3545:
! THEN...
	mov	3372,r13		! source line 3372
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_3549 = _StringConst_180
	set	_StringConst_180,r1
	store	r1,[r14+-92]
!   Prepare Argument: offset=8  value=_temp_3549  sizeInBytes=4
	load	[r14+-92],r1
	store	r1,[r15+0]
!   Call the function
	mov	3372,r13		! source line 3372
	mov	"\0\0CE",r10
	call	print
! SEND STATEMENT...
	mov	3373,r13		! source line 3373
	mov	"\0\0SE",r10
!   _temp_3550 = &_P_Kernel_frameManager
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
	mov	3374,r13		! source line 3374
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
! ASSIGNMENT STATEMENT...
	mov	3378,r13		! source line 3378
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
	mov	3379,r13		! source line 3379
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_3555 = 1		(4 bytes)
	mov	1,r1
	store	r1,[r14+-84]
!   Calculate and save the FOR-LOOP ending value
!   _temp_3556 = textSizeInPages		(4 bytes)
	load	[r14+-260],r1
	store	r1,[r14+-80]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_3555  (sizeInBytes=4)
	load	[r14+-84],r1
	store	r1,[r14+-256]
_Label_3551:
!   Perform the FOR-LOOP termination test
!   if i > _temp_3556 then goto _Label_3554		
	load	[r14+-256],r1
	load	[r14+-80],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_3554
_Label_3552:
	mov	3379,r13		! source line 3379
	mov	"\0\0FB",r10
! ASSIGNMENT STATEMENT...
	mov	3380,r13		! source line 3380
	mov	"\0\0AS",r10
	mov	3380,r13		! source line 3380
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
	mov	3383,r13		! source line 3383
	mov	"\0\0IF",r10
	mov	3383,r13		! source line 3383
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-76]
!   if intIsZero (_temp_3560) then goto _runtimeErrorNullPointer
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
!   Retrieve Result: targetName=_temp_3559  sizeInBytes=1
	loadb	[r15],r1
	storeb	r1,[r14+-10]
!   if _temp_3559 then goto _Label_3558 else goto _Label_3557
	loadb	[r14+-10],r1
	cmp	r1,0
	be	_Label_3557
	jmp	_Label_3558
_Label_3557:
! THEN...
	mov	3384,r13		! source line 3384
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_3561 = _StringConst_181
	set	_StringConst_181,r1
	store	r1,[r14+-72]
!   Prepare Argument: offset=8  value=_temp_3561  sizeInBytes=4
	load	[r14+-72],r1
	store	r1,[r15+0]
!   Call the function
	mov	3384,r13		! source line 3384
	mov	"\0\0CE",r10
	call	print
! SEND STATEMENT...
	mov	3385,r13		! source line 3385
	mov	"\0\0SE",r10
!   _temp_3562 = &_P_Kernel_frameManager
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
	mov	3386,r13		! source line 3386
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,276,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_3558:
! SEND STATEMENT...
	mov	3388,r13		! source line 3388
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
	mov	3389,r13		! source line 3389
	mov	"\0\0AS",r10
!   nextVirtPage = nextVirtPage + 1		(int)
	load	[r14+-224],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-224]
!   Increment the FOR-LOOP index variable and jump back
_Label_3553:
!   i = i + 1
	load	[r14+-256],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-256]
	jmp	_Label_3551
! END FOR
_Label_3554:
! IF STATEMENT...
	mov	3393,r13		! source line 3393
	mov	"\0\0IF",r10
	mov	3393,r13		! source line 3393
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-60]
!   if intIsZero (_temp_3566) then goto _runtimeErrorNullPointer
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
!   Retrieve Result: targetName=_temp_3565  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-64]
!   if _temp_3565 == 707406378 then goto _Label_3564		(int)
	load	[r14+-64],r1
	set	707406378,r2
	cmp	r1,r2
	be	_Label_3564
!	jmp	_Label_3563
_Label_3563:
! THEN...
	mov	3394,r13		! source line 3394
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_3567 = _StringConst_182
	set	_StringConst_182,r1
	store	r1,[r14+-56]
!   Prepare Argument: offset=8  value=_temp_3567  sizeInBytes=4
	load	[r14+-56],r1
	store	r1,[r15+0]
!   Call the function
	mov	3394,r13		! source line 3394
	mov	"\0\0CE",r10
	call	print
! SEND STATEMENT...
	mov	3395,r13		! source line 3395
	mov	"\0\0SE",r10
!   _temp_3568 = &_P_Kernel_frameManager
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
	mov	3396,r13		! source line 3396
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,276,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_3564:
! FOR STATEMENT...
	mov	3400,r13		! source line 3400
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_3573 = 1		(4 bytes)
	mov	1,r1
	store	r1,[r14+-48]
!   Calculate and save the FOR-LOOP ending value
!   _temp_3574 = dataSizeInPages		(4 bytes)
	load	[r14+-264],r1
	store	r1,[r14+-44]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_3573  (sizeInBytes=4)
	load	[r14+-48],r1
	store	r1,[r14+-256]
_Label_3569:
!   Perform the FOR-LOOP termination test
!   if i > _temp_3574 then goto _Label_3572		
	load	[r14+-256],r1
	load	[r14+-44],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_3572
_Label_3570:
	mov	3400,r13		! source line 3400
	mov	"\0\0FB",r10
! ASSIGNMENT STATEMENT...
	mov	3401,r13		! source line 3401
	mov	"\0\0AS",r10
	mov	3401,r13		! source line 3401
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
	mov	3404,r13		! source line 3404
	mov	"\0\0IF",r10
	mov	3404,r13		! source line 3404
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-40]
!   if intIsZero (_temp_3578) then goto _runtimeErrorNullPointer
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
!   Retrieve Result: targetName=_temp_3577  sizeInBytes=1
	loadb	[r15],r1
	storeb	r1,[r14+-9]
!   if _temp_3577 then goto _Label_3576 else goto _Label_3575
	loadb	[r14+-9],r1
	cmp	r1,0
	be	_Label_3575
	jmp	_Label_3576
_Label_3575:
! THEN...
	mov	3405,r13		! source line 3405
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_3579 = _StringConst_183
	set	_StringConst_183,r1
	store	r1,[r14+-36]
!   Prepare Argument: offset=8  value=_temp_3579  sizeInBytes=4
	load	[r14+-36],r1
	store	r1,[r15+0]
!   Call the function
	mov	3405,r13		! source line 3405
	mov	"\0\0CE",r10
	call	print
! SEND STATEMENT...
	mov	3406,r13		! source line 3406
	mov	"\0\0SE",r10
!   _temp_3580 = &_P_Kernel_frameManager
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
	mov	3407,r13		! source line 3407
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,276,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_3576:
! ASSIGNMENT STATEMENT...
	mov	3409,r13		! source line 3409
	mov	"\0\0AS",r10
!   nextVirtPage = nextVirtPage + 1		(int)
	load	[r14+-224],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-224]
!   Increment the FOR-LOOP index variable and jump back
_Label_3571:
!   i = i + 1
	load	[r14+-256],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-256]
	jmp	_Label_3569
! END FOR
_Label_3572:
! IF STATEMENT...
	mov	3413,r13		! source line 3413
	mov	"\0\0IF",r10
	mov	3413,r13		! source line 3413
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-24]
!   if intIsZero (_temp_3584) then goto _runtimeErrorNullPointer
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
!   Retrieve Result: targetName=_temp_3583  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-28]
!   if _temp_3583 == 707406378 then goto _Label_3582		(int)
	load	[r14+-28],r1
	set	707406378,r2
	cmp	r1,r2
	be	_Label_3582
!	jmp	_Label_3581
_Label_3581:
! THEN...
	mov	3414,r13		! source line 3414
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_3585 = _StringConst_184
	set	_StringConst_184,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_3585  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   Call the function
	mov	3414,r13		! source line 3414
	mov	"\0\0CE",r10
	call	print
! SEND STATEMENT...
	mov	3415,r13		! source line 3415
	mov	"\0\0SE",r10
!   _temp_3586 = &_P_Kernel_frameManager
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
	mov	3416,r13		! source line 3416
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,276,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_3582:
! ASSIGNMENT STATEMENT...
	mov	3420,r13		! source line 3420
	mov	"\0\0AS",r10
	mov	3420,r13		! source line 3420
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
	mov	3424,r13		! source line 3424
	mov	"\0\0CE",r10
	call	MemoryZero
! RETURN STATEMENT...
	mov	3427,r13		! source line 3427
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
	.word	_Label_3587
	.word	8		! total size of parameters
	.word	272		! frame size = 272
	.word	_Label_3588
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_3589
	.word	12
	.word	4
	.word	_Label_3590
	.word	-16
	.word	4
	.word	_Label_3591
	.word	-20
	.word	4
	.word	_Label_3592
	.word	-24
	.word	4
	.word	_Label_3593
	.word	-28
	.word	4
	.word	_Label_3594
	.word	-32
	.word	4
	.word	_Label_3595
	.word	-36
	.word	4
	.word	_Label_3596
	.word	-40
	.word	4
	.word	_Label_3597
	.word	-9
	.word	1
	.word	_Label_3598
	.word	-44
	.word	4
	.word	_Label_3599
	.word	-48
	.word	4
	.word	_Label_3600
	.word	-52
	.word	4
	.word	_Label_3601
	.word	-56
	.word	4
	.word	_Label_3602
	.word	-60
	.word	4
	.word	_Label_3603
	.word	-64
	.word	4
	.word	_Label_3604
	.word	-68
	.word	4
	.word	_Label_3605
	.word	-72
	.word	4
	.word	_Label_3606
	.word	-76
	.word	4
	.word	_Label_3607
	.word	-10
	.word	1
	.word	_Label_3608
	.word	-80
	.word	4
	.word	_Label_3609
	.word	-84
	.word	4
	.word	_Label_3610
	.word	-88
	.word	4
	.word	_Label_3611
	.word	-92
	.word	4
	.word	_Label_3612
	.word	-96
	.word	4
	.word	_Label_3613
	.word	-100
	.word	4
	.word	_Label_3614
	.word	-104
	.word	4
	.word	_Label_3615
	.word	-108
	.word	4
	.word	_Label_3616
	.word	-112
	.word	4
	.word	_Label_3617
	.word	-116
	.word	4
	.word	_Label_3618
	.word	-120
	.word	4
	.word	_Label_3619
	.word	-124
	.word	4
	.word	_Label_3620
	.word	-128
	.word	4
	.word	_Label_3621
	.word	-132
	.word	4
	.word	_Label_3622
	.word	-136
	.word	4
	.word	_Label_3623
	.word	-140
	.word	4
	.word	_Label_3624
	.word	-144
	.word	4
	.word	_Label_3625
	.word	-148
	.word	4
	.word	_Label_3626
	.word	-152
	.word	4
	.word	_Label_3627
	.word	-156
	.word	4
	.word	_Label_3628
	.word	-160
	.word	4
	.word	_Label_3629
	.word	-164
	.word	4
	.word	_Label_3630
	.word	-168
	.word	4
	.word	_Label_3631
	.word	-172
	.word	4
	.word	_Label_3632
	.word	-176
	.word	4
	.word	_Label_3633
	.word	-180
	.word	4
	.word	_Label_3634
	.word	-184
	.word	4
	.word	_Label_3635
	.word	-188
	.word	4
	.word	_Label_3636
	.word	-192
	.word	4
	.word	_Label_3637
	.word	-196
	.word	4
	.word	_Label_3638
	.word	-200
	.word	4
	.word	_Label_3639
	.word	-204
	.word	4
	.word	_Label_3640
	.word	-208
	.word	4
	.word	_Label_3641
	.word	-212
	.word	4
	.word	_Label_3642
	.word	-216
	.word	4
	.word	_Label_3643
	.word	-220
	.word	4
	.word	_Label_3644
	.word	-224
	.word	4
	.word	_Label_3645
	.word	-228
	.word	4
	.word	_Label_3646
	.word	-232
	.word	4
	.word	_Label_3647
	.word	-236
	.word	4
	.word	_Label_3648
	.word	-240
	.word	4
	.word	_Label_3649
	.word	-244
	.word	4
	.word	_Label_3650
	.word	-248
	.word	4
	.word	_Label_3651
	.word	-252
	.word	4
	.word	_Label_3652
	.word	-256
	.word	4
	.word	_Label_3653
	.word	-260
	.word	4
	.word	_Label_3654
	.word	-264
	.word	4
	.word	_Label_3655
	.word	-268
	.word	4
	.word	0
_Label_3587:
	.ascii	"OpenFile"
	.ascii	"::"
	.ascii	"LoadExecutable\0"
	.align
_Label_3588:
	.ascii	"Pself\0"
	.align
_Label_3589:
	.byte	'P'
	.ascii	"addrSpace\0"
	.align
_Label_3590:
	.byte	'?'
	.ascii	"_temp_3586\0"
	.align
_Label_3591:
	.byte	'?'
	.ascii	"_temp_3585\0"
	.align
_Label_3592:
	.byte	'?'
	.ascii	"_temp_3584\0"
	.align
_Label_3593:
	.byte	'?'
	.ascii	"_temp_3583\0"
	.align
_Label_3594:
	.byte	'?'
	.ascii	"_temp_3580\0"
	.align
_Label_3595:
	.byte	'?'
	.ascii	"_temp_3579\0"
	.align
_Label_3596:
	.byte	'?'
	.ascii	"_temp_3578\0"
	.align
_Label_3597:
	.byte	'C'
	.ascii	"_temp_3577\0"
	.align
_Label_3598:
	.byte	'?'
	.ascii	"_temp_3574\0"
	.align
_Label_3599:
	.byte	'?'
	.ascii	"_temp_3573\0"
	.align
_Label_3600:
	.byte	'?'
	.ascii	"_temp_3568\0"
	.align
_Label_3601:
	.byte	'?'
	.ascii	"_temp_3567\0"
	.align
_Label_3602:
	.byte	'?'
	.ascii	"_temp_3566\0"
	.align
_Label_3603:
	.byte	'?'
	.ascii	"_temp_3565\0"
	.align
_Label_3604:
	.byte	'?'
	.ascii	"_temp_3562\0"
	.align
_Label_3605:
	.byte	'?'
	.ascii	"_temp_3561\0"
	.align
_Label_3606:
	.byte	'?'
	.ascii	"_temp_3560\0"
	.align
_Label_3607:
	.byte	'C'
	.ascii	"_temp_3559\0"
	.align
_Label_3608:
	.byte	'?'
	.ascii	"_temp_3556\0"
	.align
_Label_3609:
	.byte	'?'
	.ascii	"_temp_3555\0"
	.align
_Label_3610:
	.byte	'?'
	.ascii	"_temp_3550\0"
	.align
_Label_3611:
	.byte	'?'
	.ascii	"_temp_3549\0"
	.align
_Label_3612:
	.byte	'?'
	.ascii	"_temp_3548\0"
	.align
_Label_3613:
	.byte	'?'
	.ascii	"_temp_3547\0"
	.align
_Label_3614:
	.byte	'?'
	.ascii	"_temp_3544\0"
	.align
_Label_3615:
	.byte	'?'
	.ascii	"_temp_3543\0"
	.align
_Label_3616:
	.byte	'?'
	.ascii	"_temp_3542\0"
	.align
_Label_3617:
	.byte	'?'
	.ascii	"_temp_3541\0"
	.align
_Label_3618:
	.byte	'?'
	.ascii	"_temp_3538\0"
	.align
_Label_3619:
	.byte	'?'
	.ascii	"_temp_3537\0"
	.align
_Label_3620:
	.byte	'?'
	.ascii	"_temp_3536\0"
	.align
_Label_3621:
	.byte	'?'
	.ascii	"_temp_3535\0"
	.align
_Label_3622:
	.byte	'?'
	.ascii	"_temp_3534\0"
	.align
_Label_3623:
	.byte	'?'
	.ascii	"_temp_3531\0"
	.align
_Label_3624:
	.byte	'?'
	.ascii	"_temp_3530\0"
	.align
_Label_3625:
	.byte	'?'
	.ascii	"_temp_3527\0"
	.align
_Label_3626:
	.byte	'?'
	.ascii	"_temp_3526\0"
	.align
_Label_3627:
	.byte	'?'
	.ascii	"_temp_3523\0"
	.align
_Label_3628:
	.byte	'?'
	.ascii	"_temp_3522\0"
	.align
_Label_3629:
	.byte	'?'
	.ascii	"_temp_3519\0"
	.align
_Label_3630:
	.byte	'?'
	.ascii	"_temp_3516\0"
	.align
_Label_3631:
	.byte	'?'
	.ascii	"_temp_3515\0"
	.align
_Label_3632:
	.byte	'?'
	.ascii	"_temp_3512\0"
	.align
_Label_3633:
	.byte	'?'
	.ascii	"_temp_3511\0"
	.align
_Label_3634:
	.byte	'?'
	.ascii	"_temp_3510\0"
	.align
_Label_3635:
	.byte	'?'
	.ascii	"_temp_3509\0"
	.align
_Label_3636:
	.byte	'?'
	.ascii	"_temp_3508\0"
	.align
_Label_3637:
	.byte	'?'
	.ascii	"_temp_3507\0"
	.align
_Label_3638:
	.byte	'?'
	.ascii	"_temp_3506\0"
	.align
_Label_3639:
	.byte	'?'
	.ascii	"_temp_3505\0"
	.align
_Label_3640:
	.byte	'?'
	.ascii	"_temp_3504\0"
	.align
_Label_3641:
	.byte	'?'
	.ascii	"_temp_3501\0"
	.align
_Label_3642:
	.byte	'?'
	.ascii	"_temp_3500\0"
	.align
_Label_3643:
	.byte	'?'
	.ascii	"_temp_3499\0"
	.align
_Label_3644:
	.byte	'I'
	.ascii	"nextVirtPage\0"
	.align
_Label_3645:
	.byte	'I'
	.ascii	"addr\0"
	.align
_Label_3646:
	.byte	'I'
	.ascii	"textSize\0"
	.align
_Label_3647:
	.byte	'I'
	.ascii	"dataSize\0"
	.align
_Label_3648:
	.byte	'I'
	.ascii	"bssSize\0"
	.align
_Label_3649:
	.byte	'I'
	.ascii	"textStart\0"
	.align
_Label_3650:
	.byte	'I'
	.ascii	"dataStart\0"
	.align
_Label_3651:
	.byte	'I'
	.ascii	"bssStart\0"
	.align
_Label_3652:
	.byte	'I'
	.ascii	"i\0"
	.align
_Label_3653:
	.byte	'I'
	.ascii	"textSizeInPages\0"
	.align
_Label_3654:
	.byte	'I'
	.ascii	"dataSizeInPages\0"
	.align
_Label_3655:
	.byte	'I'
	.ascii	"bssSizeInPages\0"
	.align
! 
! ===============  CLASS SerialDriver  ===============
! 
! Dispatch Table:
! 
_P_Kernel_SerialDriver:
	.word	_Label_3656
	jmp	_Method_P_Kernel_SerialDriver_1	! 4:	Init
	jmp	_Method_P_Kernel_SerialDriver_3	! 8:	PutChar
	jmp	_Method_P_Kernel_SerialDriver_2	! 12:	GetChar
	jmp	_Method_P_Kernel_SerialDriver_4	! 16:	SerialHandler
	.word	0
! 
! Class descriptor:
! 
_Label_3656:
	.word	1129070931		! Magic number 0x434c4153 == 'CLAS'
	.word	_Label_3657
	.word	_sourceFileName
	.word	402		! line number
	.word	4308		! size of instances, in bytes
	.word	_P_Kernel_SerialDriver
	.word	_P_System_Object
	.word	0
_Label_3657:
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
_Label_3917:
	push	r0
	sub	r1,1,r1
	bne	_Label_3917
	mov	3438,r13		! source line 3438
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   _temp_3658 = _StringConst_185
	set	_StringConst_185,r1
	store	r1,[r14+-128]
!   Prepare Argument: offset=8  value=_temp_3658  sizeInBytes=4
	load	[r14+-128],r1
	store	r1,[r15+0]
!   Call the function
	mov	3440,r13		! source line 3440
	mov	"\0\0CE",r10
	call	print
! ASSIGNMENT STATEMENT...
	mov	3443,r13		! source line 3443
	mov	"\0\0AS",r10
!   serial_status_word_address = 16776964		(4 bytes)
	set	16776964,r1
	load	[r14+8],r2
	store	r1,[r2+4]
! ASSIGNMENT STATEMENT...
	mov	3444,r13		! source line 3444
	mov	"\0\0AS",r10
!   serial_data_word_address = 16776964		(4 bytes)
	set	16776964,r1
	load	[r14+8],r2
	store	r1,[r2+8]
! ASSIGNMENT STATEMENT...
	mov	3447,r13		! source line 3447
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
	mov	3448,r13		! source line 3448
	mov	"\0\0SE",r10
!   _temp_3660 = &serialLock
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
	mov	3450,r13		! source line 3450
	mov	"\0\0AS",r10
!   _temp_3661 = &getBuffer
	load	[r14+8],r1
	add	r1,32,r1
	store	r1,[r14+-116]
!   NEW ARRAY Constructor...
!   _temp_3663 = &_temp_3662
	add	r14,-112,r1
	store	r1,[r14+-96]
!   _temp_3663 = _temp_3663 + 4
	load	[r14+-96],r1
	add	r1,4,r1
	store	r1,[r14+-96]
!   Next value...
	mov	10,r1
	store	r1,[r14+-92]
_Label_3665:
!   Data Move: *_temp_3663 = 97  (sizeInBytes=1)
	mov	97,r1
	load	[r14+-96],r2
	storeb	r1,[r2]
!   _temp_3663 = _temp_3663 + 1
	load	[r14+-96],r1
	add	r1,1,r1
	store	r1,[r14+-96]
!   _temp_3664 = _temp_3664 + -1
	load	[r14+-92],r1
	add	r1,-1,r1
	store	r1,[r14+-92]
!   if intNotZero (_temp_3664) then goto _Label_3665
	load	[r14+-92],r1
	cmp	r1,r0
	bne	_Label_3665
!   Initialize the array size...
	mov	10,r1
	store	r1,[r14+-112]
!   _temp_3666 = &_temp_3662
	add	r14,-112,r1
	store	r1,[r14+-88]
!   make sure array has size 10
	load	[r14+-116],r1
	load	[r1],r1
	set	10, r2
	cmp	r1,0
	be	_Label_3918
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bne	_runtimeErrorWrongArraySize
_Label_3918:
!   make sure array has size 10
	load	[r14+-88],r1
	load	[r1],r1
	set	10, r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bne	_runtimeErrorWrongArraySize
!   Data Move: *_temp_3661 = *_temp_3666  (sizeInBytes=16)
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
	mov	3451,r13		! source line 3451
	mov	"\0\0AS",r10
!   getBufferSize = 0		(4 bytes)
	mov	0,r1
	load	[r14+8],r2
	store	r1,[r2+48]
! ASSIGNMENT STATEMENT...
	mov	3452,r13		! source line 3452
	mov	"\0\0AS",r10
!   getBufferNextIn = 0		(4 bytes)
	mov	0,r1
	load	[r14+8],r2
	store	r1,[r2+52]
! ASSIGNMENT STATEMENT...
	mov	3453,r13		! source line 3453
	mov	"\0\0AS",r10
!   getBufferNextOut = 0		(4 bytes)
	mov	0,r1
	load	[r14+8],r2
	store	r1,[r2+56]
! ASSIGNMENT STATEMENT...
	mov	3454,r13		! source line 3454
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
	mov	3455,r13		! source line 3455
	mov	"\0\0SE",r10
!   _temp_3668 = &getCharacterAvail
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
	mov	3457,r13		! source line 3457
	mov	"\0\0AS",r10
!   _temp_3669 = &putBuffer
	load	[r14+8],r1
	add	r1,76,r1
	store	r1,[r14+-76]
!   NEW ARRAY Constructor...
!   _temp_3671 = &_temp_3670
	add	r14,-72,r1
	store	r1,[r14+-56]
!   _temp_3671 = _temp_3671 + 4
	load	[r14+-56],r1
	add	r1,4,r1
	store	r1,[r14+-56]
!   Next value...
	mov	10,r1
	store	r1,[r14+-52]
_Label_3673:
!   Data Move: *_temp_3671 = 97  (sizeInBytes=1)
	mov	97,r1
	load	[r14+-56],r2
	storeb	r1,[r2]
!   _temp_3671 = _temp_3671 + 1
	load	[r14+-56],r1
	add	r1,1,r1
	store	r1,[r14+-56]
!   _temp_3672 = _temp_3672 + -1
	load	[r14+-52],r1
	add	r1,-1,r1
	store	r1,[r14+-52]
!   if intNotZero (_temp_3672) then goto _Label_3673
	load	[r14+-52],r1
	cmp	r1,r0
	bne	_Label_3673
!   Initialize the array size...
	mov	10,r1
	store	r1,[r14+-72]
!   _temp_3674 = &_temp_3670
	add	r14,-72,r1
	store	r1,[r14+-48]
!   make sure array has size 10
	load	[r14+-76],r1
	load	[r1],r1
	set	10, r2
	cmp	r1,0
	be	_Label_3919
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bne	_runtimeErrorWrongArraySize
_Label_3919:
!   make sure array has size 10
	load	[r14+-48],r1
	load	[r1],r1
	set	10, r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bne	_runtimeErrorWrongArraySize
!   Data Move: *_temp_3669 = *_temp_3674  (sizeInBytes=16)
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
	mov	3458,r13		! source line 3458
	mov	"\0\0AS",r10
!   putBufferSize = 0		(4 bytes)
	mov	0,r1
	load	[r14+8],r2
	store	r1,[r2+92]
! ASSIGNMENT STATEMENT...
	mov	3459,r13		! source line 3459
	mov	"\0\0AS",r10
!   putBufferNextIn = 0		(4 bytes)
	mov	0,r1
	load	[r14+8],r2
	store	r1,[r2+96]
! ASSIGNMENT STATEMENT...
	mov	3460,r13		! source line 3460
	mov	"\0\0AS",r10
!   putBufferNextOut = 0		(4 bytes)
	mov	0,r1
	load	[r14+8],r2
	store	r1,[r2+100]
! ASSIGNMENT STATEMENT...
	mov	3461,r13		! source line 3461
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
	mov	3462,r13		! source line 3462
	mov	"\0\0SE",r10
!   _temp_3676 = &putBufferSem
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
	mov	3464,r13		! source line 3464
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
	mov	3465,r13		! source line 3465
	mov	"\0\0SE",r10
!   _temp_3678 = &serialNeedsAttention
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
	mov	3467,r13		! source line 3467
	mov	"\0\0AS",r10
!   NEW CLASS Constructor...
!   ZeroMemory: serialHandlerThread = zeros  (sizeInBytes=4164)
	load	[r14+8],r4
	add	r4,144,r4
	mov	1041,r3
_Label_3920:
	store	r0,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_3920
!   serialHandlerThread = _P_Kernel_Thread
	set	_P_Kernel_Thread,r1
	load	[r14+8],r2
	store	r1,[r2+144]
! SEND STATEMENT...
	mov	3468,r13		! source line 3468
	mov	"\0\0SE",r10
!   _temp_3680 = _StringConst_186
	set	_StringConst_186,r1
	store	r1,[r14+-24]
!   _temp_3681 = &serialHandlerThread
	load	[r14+8],r1
	add	r1,144,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=12  value=_temp_3680  sizeInBytes=4
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
	mov	3469,r13		! source line 3469
	mov	"\0\0SE",r10
!   _temp_3682 = _function_193_SerialHandlerFunction
	set	_function_193_SerialHandlerFunction,r1
	store	r1,[r14+-16]
!   _temp_3683 = &serialHandlerThread
	load	[r14+8],r1
	add	r1,144,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=12  value=_temp_3682  sizeInBytes=4
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
	mov	3471,r13		! source line 3471
	mov	"\0\0AS",r10
!   _P_Kernel_serialHasBeenInitialized = 1		(1 byte)
	mov	1,r1
	set	_P_Kernel_serialHasBeenInitialized,r2
	storeb	r1,[r2]
! RETURN STATEMENT...
	mov	3471,r13		! source line 3471
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
	.word	_Label_3684
	.word	4		! total size of parameters
	.word	132		! frame size = 132
	.word	_Label_3685
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_3686
	.word	-12
	.word	4
	.word	_Label_3687
	.word	-16
	.word	4
	.word	_Label_3688
	.word	-20
	.word	4
	.word	_Label_3689
	.word	-24
	.word	4
	.word	_Label_3690
	.word	-28
	.word	4
	.word	_Label_3691
	.word	-32
	.word	4
	.word	_Label_3692
	.word	-36
	.word	4
	.word	_Label_3693
	.word	-40
	.word	4
	.word	_Label_3694
	.word	-44
	.word	4
	.word	_Label_3695
	.word	-48
	.word	4
	.word	_Label_3696
	.word	-52
	.word	4
	.word	_Label_3697
	.word	-56
	.word	4
	.word	_Label_3698
	.word	-72
	.word	16
	.word	_Label_3699
	.word	-76
	.word	4
	.word	_Label_3700
	.word	-80
	.word	4
	.word	_Label_3701
	.word	-84
	.word	4
	.word	_Label_3702
	.word	-88
	.word	4
	.word	_Label_3703
	.word	-92
	.word	4
	.word	_Label_3704
	.word	-96
	.word	4
	.word	_Label_3705
	.word	-112
	.word	16
	.word	_Label_3706
	.word	-116
	.word	4
	.word	_Label_3707
	.word	-120
	.word	4
	.word	_Label_3708
	.word	-124
	.word	4
	.word	_Label_3709
	.word	-128
	.word	4
	.word	0
_Label_3684:
	.ascii	"SerialDriver"
	.ascii	"::"
	.ascii	"Init\0"
	.align
_Label_3685:
	.ascii	"Pself\0"
	.align
_Label_3686:
	.byte	'?'
	.ascii	"_temp_3683\0"
	.align
_Label_3687:
	.byte	'?'
	.ascii	"_temp_3682\0"
	.align
_Label_3688:
	.byte	'?'
	.ascii	"_temp_3681\0"
	.align
_Label_3689:
	.byte	'?'
	.ascii	"_temp_3680\0"
	.align
_Label_3690:
	.byte	'?'
	.ascii	"_temp_3679\0"
	.align
_Label_3691:
	.byte	'?'
	.ascii	"_temp_3678\0"
	.align
_Label_3692:
	.byte	'?'
	.ascii	"_temp_3677\0"
	.align
_Label_3693:
	.byte	'?'
	.ascii	"_temp_3676\0"
	.align
_Label_3694:
	.byte	'?'
	.ascii	"_temp_3675\0"
	.align
_Label_3695:
	.byte	'?'
	.ascii	"_temp_3674\0"
	.align
_Label_3696:
	.byte	'?'
	.ascii	"_temp_3672\0"
	.align
_Label_3697:
	.byte	'?'
	.ascii	"_temp_3671\0"
	.align
_Label_3698:
	.byte	'?'
	.ascii	"_temp_3670\0"
	.align
_Label_3699:
	.byte	'?'
	.ascii	"_temp_3669\0"
	.align
_Label_3700:
	.byte	'?'
	.ascii	"_temp_3668\0"
	.align
_Label_3701:
	.byte	'?'
	.ascii	"_temp_3667\0"
	.align
_Label_3702:
	.byte	'?'
	.ascii	"_temp_3666\0"
	.align
_Label_3703:
	.byte	'?'
	.ascii	"_temp_3664\0"
	.align
_Label_3704:
	.byte	'?'
	.ascii	"_temp_3663\0"
	.align
_Label_3705:
	.byte	'?'
	.ascii	"_temp_3662\0"
	.align
_Label_3706:
	.byte	'?'
	.ascii	"_temp_3661\0"
	.align
_Label_3707:
	.byte	'?'
	.ascii	"_temp_3660\0"
	.align
_Label_3708:
	.byte	'?'
	.ascii	"_temp_3659\0"
	.align
_Label_3709:
	.byte	'?'
	.ascii	"_temp_3658\0"
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
	mov	3477,r13		! source line 3477
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! RETURN STATEMENT...
	mov	3478,r13		! source line 3478
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
	.word	_Label_3710
	.word	4		! total size of parameters
	.word	0		! frame size = 0
	.word	_Label_3711
	.word	4		! size of self
	.word	8		! offset of self
	.word	0
_Label_3710:
	.ascii	"SerialDriver"
	.ascii	"::"
	.ascii	"GetChar\0"
	.align
_Label_3711:
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
	mov	3483,r13		! source line 3483
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! RETURN STATEMENT...
	mov	3483,r13		! source line 3483
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
	.word	_Label_3712
	.word	8		! total size of parameters
	.word	0		! frame size = 0
	.word	_Label_3713
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_3714
	.word	12
	.word	1
	.word	0
_Label_3712:
	.ascii	"SerialDriver"
	.ascii	"::"
	.ascii	"PutChar\0"
	.align
_Label_3713:
	.ascii	"Pself\0"
	.align
_Label_3714:
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
_Label_3921:
	push	r0
	sub	r1,1,r1
	bne	_Label_3921
	mov	3489,r13		! source line 3489
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! SEND STATEMENT...
	mov	3499,r13		! source line 3499
	mov	"\0\0SE",r10
!   _temp_3715 = &serialNeedsAttention
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
	mov	3502,r13		! source line 3502
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
	mov	3505,r13		! source line 3505
	mov	"\0\0AS",r10
!   character_available_bit = serial_status_word AND 1		(int)
	load	[r14+-80],r1
	mov	1,r2
	and	r1,r2,r1
	store	r1,[r14+-84]
! IF STATEMENT...
	mov	3508,r13		! source line 3508
	mov	"\0\0IF",r10
!   if character_available_bit != 1 then goto _Label_3717		(int)
	load	[r14+-84],r1
	mov	1,r2
	cmp	r1,r2
	bne	_Label_3717
!	jmp	_Label_3716
_Label_3716:
! THEN...
	mov	3510,r13		! source line 3510
	mov	"\0\0TN",r10
! SEND STATEMENT...
	mov	3510,r13		! source line 3510
	mov	"\0\0SE",r10
!   _temp_3718 = &serialLock
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
	mov	3513,r13		! source line 3513
	mov	"\0\0AS",r10
!   if intIsZero (serial_data_word_address) then goto _runtimeErrorNullPointer
	load	[r14+8],r1
	load	[r1+8],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Data Move: _temp_3719 = *serial_data_word_address  (sizeInBytes=4)
	load	[r14+8],r1
	load	[r1+8],r1
	load	[r1],r1
	store	r1,[r14+-68]
!   inChar = intToChar (_temp_3719)
	load	[r14+-68],r1
	storeb	r1,[r14+-9]
! IF STATEMENT...
	mov	3516,r13		! source line 3516
	mov	"\0\0IF",r10
!   if intIsZero (getBufferSize) then goto _Label_3720
	load	[r14+8],r1
	load	[r1+48],r1
	cmp	r1,r0
	be	_Label_3720
	jmp	_Label_3721
_Label_3720:
! THEN...
	mov	3517,r13		! source line 3517
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_3722 = _StringConst_187
	set	_StringConst_187,r1
	store	r1,[r14+-64]
!   Prepare Argument: offset=8  value=_temp_3722  sizeInBytes=4
	load	[r14+-64],r1
	store	r1,[r15+0]
!   Call the function
	mov	3517,r13		! source line 3517
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=inChar  sizeInBytes=1
	loadb	[r14+-9],r1
	storeb	r1,[r15+0]
!   Call the function
	mov	3518,r13		! source line 3518
	mov	"\0\0CE",r10
	call	printChar
! CALL STATEMENT...
!   _temp_3723 = _StringConst_188
	set	_StringConst_188,r1
	store	r1,[r14+-60]
!   Prepare Argument: offset=8  value=_temp_3723  sizeInBytes=4
	load	[r14+-60],r1
	store	r1,[r15+0]
!   Call the function
	mov	3519,r13		! source line 3519
	mov	"\0\0CE",r10
	call	print
	jmp	_Label_3724
_Label_3721:
! ELSE...
	mov	3523,r13		! source line 3523
	mov	"\0\0EL",r10
! ASSIGNMENT STATEMENT...
	mov	3523,r13		! source line 3523
	mov	"\0\0AS",r10
!   _temp_3725 = &getBuffer
	load	[r14+8],r1
	add	r1,32,r1
	store	r1,[r14+-56]
!   Move address of _temp_3725 [getBufferNextIn ] into _temp_3726
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
!   Data Move: *_temp_3726 = inChar  (sizeInBytes=1)
	loadb	[r14+-9],r1
	load	[r14+-52],r2
	storeb	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	3524,r13		! source line 3524
	mov	"\0\0AS",r10
!   _temp_3727 = getBufferNextIn + 1		(int)
	load	[r14+8],r1
	load	[r1+52],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-48]
!   getBufferNextIn = _temp_3727 rem 10		(int)
	load	[r14+-48],r1
	mov	10,r2
	cmp	r2,0
	be	_runtimeErrorZeroDivide
	rem	r1,r2,r1
	bvs	_runtimeErrorOverflow
	load	[r14+8],r2
	store	r1,[r2+52]
! SEND STATEMENT...
	mov	3525,r13		! source line 3525
	mov	"\0\0SE",r10
!   _temp_3728 = &serialLock
	load	[r14+8],r1
	add	r1,12,r1
	store	r1,[r14+-44]
!   _temp_3729 = &getCharacterAvail
	load	[r14+8],r1
	add	r1,60,r1
	store	r1,[r14+-40]
!   Prepare Argument: offset=12  value=_temp_3728  sizeInBytes=4
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
_Label_3724:
! SEND STATEMENT...
	mov	3528,r13		! source line 3528
	mov	"\0\0SE",r10
!   _temp_3730 = &serialLock
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
_Label_3717:
! ASSIGNMENT STATEMENT...
	mov	3535,r13		! source line 3535
	mov	"\0\0AS",r10
!   output_ready_bit = serial_status_word AND 2		(int)
	load	[r14+-80],r1
	mov	2,r2
	and	r1,r2,r1
	store	r1,[r14+-88]
! IF STATEMENT...
	mov	3537,r13		! source line 3537
	mov	"\0\0IF",r10
!   if output_ready_bit != 1 then goto _Label_3732		(int)
	load	[r14+-88],r1
	mov	1,r2
	cmp	r1,r2
	bne	_Label_3732
!	jmp	_Label_3731
_Label_3731:
! THEN...
	mov	3539,r13		! source line 3539
	mov	"\0\0TN",r10
! SEND STATEMENT...
	mov	3539,r13		! source line 3539
	mov	"\0\0SE",r10
!   _temp_3733 = &serialLock
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
	mov	3542,r13		! source line 3542
	mov	"\0\0IF",r10
!   if intIsZero (putBufferSize) then goto _Label_3735
	load	[r14+8],r1
	load	[r1+92],r1
	cmp	r1,r0
	be	_Label_3735
!	jmp	_Label_3734
_Label_3734:
! THEN...
	mov	3543,r13		! source line 3543
	mov	"\0\0TN",r10
! WHILE STATEMENT...
	mov	3543,r13		! source line 3543
	mov	"\0\0WH",r10
_Label_3736:
!   if putBufferSize <= 0 then goto _Label_3738		(int)
	load	[r14+8],r1
	load	[r1+92],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	ble	_Label_3738
!	jmp	_Label_3737
_Label_3737:
	mov	3543,r13		! source line 3543
	mov	"\0\0WB",r10
! ASSIGNMENT STATEMENT...
	mov	3544,r13		! source line 3544
	mov	"\0\0AS",r10
!   _temp_3739 = &putBuffer
	load	[r14+8],r1
	add	r1,76,r1
	store	r1,[r14+-28]
!   Move address of _temp_3739 [putBufferNextOut ] into _temp_3740
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
!   Data Move: outChar = *_temp_3740  (sizeInBytes=1)
	load	[r14+-24],r1
	loadb	[r1],r1
	storeb	r1,[r14+-10]
! ASSIGNMENT STATEMENT...
	mov	3545,r13		! source line 3545
	mov	"\0\0AS",r10
!   if intIsZero (serial_data_word_address) then goto _runtimeErrorNullPointer
	load	[r14+8],r1
	load	[r1+8],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3741 = charToInt (outChar)
	loadb	[r14+-10],r1
	sll	r1,24,r1
	sra	r1,24,r1
	store	r1,[r14+-20]
!   Data Move: *serial_data_word_address = _temp_3741  (sizeInBytes=4)
	load	[r14+-20],r1
	load	[r14+8],r2
	load	[r2+8],r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	3546,r13		! source line 3546
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
	mov	3547,r13		! source line 3547
	mov	"\0\0AS",r10
!   _temp_3742 = putBufferNextOut + 1		(int)
	load	[r14+8],r1
	load	[r1+100],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-16]
!   putBufferNextOut = _temp_3742 rem 10		(int)
	load	[r14+-16],r1
	mov	10,r2
	cmp	r2,0
	be	_runtimeErrorZeroDivide
	rem	r1,r2,r1
	bvs	_runtimeErrorOverflow
	load	[r14+8],r2
	store	r1,[r2+100]
! END WHILE...
	jmp	_Label_3736
_Label_3738:
! END IF...
_Label_3735:
! END IF...
_Label_3732:
! RETURN STATEMENT...
	mov	3537,r13		! source line 3537
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
	.word	_Label_3743
	.word	4		! total size of parameters
	.word	88		! frame size = 88
	.word	_Label_3744
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_3745
	.word	-16
	.word	4
	.word	_Label_3746
	.word	-20
	.word	4
	.word	_Label_3747
	.word	-24
	.word	4
	.word	_Label_3748
	.word	-28
	.word	4
	.word	_Label_3749
	.word	-32
	.word	4
	.word	_Label_3750
	.word	-36
	.word	4
	.word	_Label_3751
	.word	-40
	.word	4
	.word	_Label_3752
	.word	-44
	.word	4
	.word	_Label_3753
	.word	-48
	.word	4
	.word	_Label_3754
	.word	-52
	.word	4
	.word	_Label_3755
	.word	-56
	.word	4
	.word	_Label_3756
	.word	-60
	.word	4
	.word	_Label_3757
	.word	-64
	.word	4
	.word	_Label_3758
	.word	-68
	.word	4
	.word	_Label_3759
	.word	-72
	.word	4
	.word	_Label_3760
	.word	-76
	.word	4
	.word	_Label_3761
	.word	-80
	.word	4
	.word	_Label_3762
	.word	-84
	.word	4
	.word	_Label_3763
	.word	-88
	.word	4
	.word	_Label_3764
	.word	-9
	.word	1
	.word	_Label_3765
	.word	-10
	.word	1
	.word	0
_Label_3743:
	.ascii	"SerialDriver"
	.ascii	"::"
	.ascii	"SerialHandler\0"
	.align
_Label_3744:
	.ascii	"Pself\0"
	.align
_Label_3745:
	.byte	'?'
	.ascii	"_temp_3742\0"
	.align
_Label_3746:
	.byte	'?'
	.ascii	"_temp_3741\0"
	.align
_Label_3747:
	.byte	'?'
	.ascii	"_temp_3740\0"
	.align
_Label_3748:
	.byte	'?'
	.ascii	"_temp_3739\0"
	.align
_Label_3749:
	.byte	'?'
	.ascii	"_temp_3733\0"
	.align
_Label_3750:
	.byte	'?'
	.ascii	"_temp_3730\0"
	.align
_Label_3751:
	.byte	'?'
	.ascii	"_temp_3729\0"
	.align
_Label_3752:
	.byte	'?'
	.ascii	"_temp_3728\0"
	.align
_Label_3753:
	.byte	'?'
	.ascii	"_temp_3727\0"
	.align
_Label_3754:
	.byte	'?'
	.ascii	"_temp_3726\0"
	.align
_Label_3755:
	.byte	'?'
	.ascii	"_temp_3725\0"
	.align
_Label_3756:
	.byte	'?'
	.ascii	"_temp_3723\0"
	.align
_Label_3757:
	.byte	'?'
	.ascii	"_temp_3722\0"
	.align
_Label_3758:
	.byte	'?'
	.ascii	"_temp_3719\0"
	.align
_Label_3759:
	.byte	'?'
	.ascii	"_temp_3718\0"
	.align
_Label_3760:
	.byte	'?'
	.ascii	"_temp_3715\0"
	.align
_Label_3761:
	.byte	'I'
	.ascii	"serial_status_word\0"
	.align
_Label_3762:
	.byte	'I'
	.ascii	"character_available_bit\0"
	.align
_Label_3763:
	.byte	'I'
	.ascii	"output_ready_bit\0"
	.align
_Label_3764:
	.byte	'C'
	.ascii	"inChar\0"
	.align
_Label_3765:
	.byte	'C'
	.ascii	"outChar\0"
	.align
