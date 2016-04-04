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
_StringConst_210:
	.word	22			! length
	.ascii	"char output available\n"
	.align
_StringConst_209:
	.word	11			! length
	.ascii	"no overflow"
	.align
_StringConst_208:
	.word	14			! length
	.ascii	"\' was ignored\n"
	.align
_StringConst_207:
	.word	42			! length
	.ascii	"\nSerial input buffer overrun - character \'"
	.align
_StringConst_206:
	.word	6			! length
	.ascii	"inChar"
	.align
_StringConst_205:
	.word	21			! length
	.ascii	"have input character\n"
	.align
_StringConst_204:
	.word	33			! length
	.ascii	"inside serialDriver.serialHandler"
	.align
_StringConst_203:
	.word	37			! length
	.ascii	"(inside GetChar function) charFetched"
	.align
_StringConst_202:
	.word	9			! length
	.ascii	"wakes up\n"
	.align
_StringConst_201:
	.word	32			! length
	.ascii	"waits in the condition variable\n"
	.align
_StringConst_200:
	.word	24			! length
	.ascii	"inside GetChar function\n"
	.align
_StringConst_199:
	.word	19			! length
	.ascii	"serialHandlerThread"
	.align
_StringConst_198:
	.word	30			! length
	.ascii	"Initializing Serial Driver...\n"
	.align
_StringConst_197:
	.word	60			! length
	.ascii	"LoadExecutable: Invalid file format - missing separator (3)\n"
	.align
_StringConst_196:
	.word	50			! length
	.ascii	"LoadExecutable: Problems reading from file (text)\n"
	.align
_StringConst_195:
	.word	60			! length
	.ascii	"LoadExecutable: Invalid file format - missing separator (2)\n"
	.align
_StringConst_194:
	.word	50			! length
	.ascii	"LoadExecutable: Problems reading from file (text)\n"
	.align
_StringConst_193:
	.word	60			! length
	.ascii	"LoadExecutable: Invalid file format - missing separator (1)\n"
	.align
_StringConst_192:
	.word	40			! length
	.ascii	"LoadExecutable: MAX_PAGES_PER_VIRT_SPACE"
	.align
_StringConst_191:
	.word	53			! length
	.ascii	"LoadExecutable: Number of pages in this address space"
	.align
_StringConst_190:
	.word	61			! length
	.ascii	"LoadExecutable: This virtual address space exceeds the limit\n"
	.align
_StringConst_189:
	.word	49			! length
	.ascii	"LoadExecutable: bssStart != dataStart + dataSize\n"
	.align
_StringConst_188:
	.word	65			! length
	.ascii	"LoadExecutable: The bss segment size not a multiple of page size\n"
	.align
_StringConst_187:
	.word	50			! length
	.ascii	"LoadExecutable: dataStart != textStart + textSize\n"
	.align
_StringConst_186:
	.word	66			! length
	.ascii	"LoadExecutable: The data segment size not a multiple of page size\n"
	.align
_StringConst_185:
	.word	95			! length
	.ascii	"LoadExecutable: The environment size does not match the \'loadAddr\' info supplied to the linker\n"
	.align
_StringConst_184:
	.word	66			! length
	.ascii	"LoadExecutable: The text segment size not a multiple of page size\n"
	.align
_StringConst_183:
	.word	33			! length
	.ascii	"LoadExecutable: Bad magic number\n"
	.align
_StringConst_182:
	.word	55			! length
	.ascii	"LoadExecutable: This virtual address space is not empty"
	.align
_StringConst_181:
	.word	32			! length
	.ascii	"Within ReadInt: ReadBytes failed"
	.align
_StringConst_180:
	.word	5			! length
	.ascii	"null\n"
	.align
_StringConst_179:
	.word	6			! length
	.ascii	", fcb="
	.align
_StringConst_178:
	.word	28			! length
	.ascii	"    OPEN FILE:   currentPos="
	.align
_StringConst_177:
	.word	26			! length
	.ascii	",  relativeSectorInBuffer="
	.align
_StringConst_176:
	.word	13			! length
	.ascii	",  bufferPtr="
	.align
_StringConst_175:
	.word	21			! length
	.ascii	",  sizeOfFileInBytes="
	.align
_StringConst_174:
	.word	18			! length
	.ascii	",  startingSector="
	.align
_StringConst_173:
	.word	17			! length
	.ascii	",  numberOfUsers="
	.align
_StringConst_172:
	.word	6			! length
	.ascii	"fcbID="
	.align
_StringConst_171:
	.word	48			! length
	.ascii	"FileManager.SynchWrite: file not properly opened"
	.align
_StringConst_170:
	.word	47			! length
	.ascii	"FileManager.SynchRead: file not properly opened"
	.align
_StringConst_169:
	.word	67			! length
	.ascii	"FileManager.Flush: buffer is dirty but relativeSectorInBuffer =  -1"
	.align
_StringConst_168:
	.word	72			! length
	.ascii	"In FileManager.Open: a free FCB appears not to have been closed properly"
	.align
_StringConst_167:
	.word	51			! length
	.ascii	"Magic number in sector 0 of stub file system is bad"
	.align
_StringConst_166:
	.word	36			! length
	.ascii	"Here is the FREE list of OpenFiles:\n"
	.align
_StringConst_165:
	.word	3			! length
	.ascii	":  "
	.align
_StringConst_164:
	.word	5			! length
	.ascii	":  0x"
	.align
_StringConst_163:
	.word	2			! length
	.ascii	"  "
	.align
_StringConst_162:
	.word	30			! length
	.ascii	"Here is the OpenFile table...\n"
	.align
_StringConst_161:
	.word	47			! length
	.ascii	"Here is the FREE list of FileControlBlocks:\n   "
	.align
_StringConst_160:
	.word	3			! length
	.ascii	":  "
	.align
_StringConst_159:
	.word	2			! length
	.ascii	"  "
	.align
_StringConst_158:
	.word	38			! length
	.ascii	"Here is the FileControlBlock table...\n"
	.align
_StringConst_157:
	.word	29			! length
	.ascii	"Initializing File Manager...\n"
	.align
_StringConst_156:
	.word	40			! length
	.ascii	"SynchWriteSector: Unexpected status code"
	.align
_StringConst_155:
	.word	52			! length
	.ascii	"Disk I/O error in SynchWriteSector: Bad command word"
	.align
_StringConst_154:
	.word	95			! length
	.ascii	"Disk I/O error in SynchWriteSector: Bad sectorAddr or sectorCount specifies non-existant sector"
	.align
_StringConst_153:
	.word	76			! length
	.ascii	"Disk I/O error in SynchWriteSector: Attempt to access invalid memory address"
	.align
_StringConst_152:
	.word	99			! length
	.ascii	"Disk I/O error in SynchWriteSector: Memory addr is not page-aligned or sector count is not positive"
	.align
_StringConst_151:
	.word	39			! length
	.ascii	"SynchReadSector: Unexpected status code"
	.align
_StringConst_150:
	.word	51			! length
	.ascii	"Disk I/O error in SynchReadSector: Bad command word"
	.align
_StringConst_149:
	.word	94			! length
	.ascii	"Disk I/O error in SynchReadSector: Bad sectorAddr or sectorCount specifies non-existant sector"
	.align
_StringConst_148:
	.word	75			! length
	.ascii	"Disk I/O error in SynchReadSector: Attempt to access invalid memory address"
	.align
_StringConst_147:
	.word	98			! length
	.ascii	"Disk I/O error in SynchReadSector: Memory addr is not page-aligned or sector count is not positive"
	.align
_StringConst_146:
	.word	28			! length
	.ascii	"Initializing Disk Driver...\n"
	.align
_StringConst_145:
	.word	38			! length
	.ascii	"  Virtual page is not marked VALID!!!\n"
	.align
_StringConst_144:
	.word	38			! length
	.ascii	"  Virtual page number is too large!!!\n"
	.align
_StringConst_143:
	.word	3			! length
	.ascii	"   "
	.align
_StringConst_142:
	.word	3			! length
	.ascii	"YES"
	.align
_StringConst_141:
	.word	6			! length
	.ascii	"      "
	.align
_StringConst_140:
	.word	3			! length
	.ascii	"   "
	.align
_StringConst_139:
	.word	3			! length
	.ascii	"YES"
	.align
_StringConst_138:
	.word	9			! length
	.ascii	"         "
	.align
_StringConst_137:
	.word	3			! length
	.ascii	"   "
	.align
_StringConst_136:
	.word	3			! length
	.ascii	"YES"
	.align
_StringConst_135:
	.word	6			! length
	.ascii	"      "
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
	.word	5			! length
	.ascii	"     "
	.align
_StringConst_131:
	.word	10			! length
	.ascii	"          "
	.align
_StringConst_130:
	.word	4			! length
	.ascii	"    "
	.align
_StringConst_129:
	.word	2			! length
	.ascii	"  "
	.align
_StringConst_128:
	.word	5			! length
	.ascii	"     "
	.align
_StringConst_127:
	.word	3			! length
	.ascii	":  "
	.align
_StringConst_126:
	.word	5			! length
	.ascii	"     "
	.align
_StringConst_125:
	.word	109			! length
	.ascii	"     ==========   ==========     ==========  ==========  ==============  =====  ==========  =========  =====\n"
	.align
_StringConst_124:
	.word	109			! length
	.ascii	"        addr        entry          Virtual    Physical   Undefined Bits  Dirty  Referenced  Writeable  Valid\n"
	.align
_StringConst_123:
	.word	35			! length
	.ascii	"  Here are the frames in use: \n    "
	.align
_StringConst_122:
	.word	18			! length
	.ascii	"  numberFreeFrames"
	.align
_StringConst_121:
	.word	15			! length
	.ascii	"FRAME MANAGER:\n"
	.align
_StringConst_120:
	.word	89			! length
	.ascii	"Kernel code size appears to have grown too large and is overflowing into the frame region"
	.align
_StringConst_119:
	.word	30			! length
	.ascii	"Initializing Frame Manager...\n"
	.align
_StringConst_118:
	.word	22			! length
	.ascii	"Should never be called"
	.align
_StringConst_117:
	.word	50			! length
	.ascii	"Here is the FREE list of ProcessControlBlocks:\n   "
	.align
_StringConst_116:
	.word	2			! length
	.ascii	"  "
	.align
_StringConst_115:
	.word	29			! length
	.ascii	"Here is the process table...\n"
	.align
_StringConst_114:
	.word	50			! length
	.ascii	"Here is the FREE list of ProcessControlBlocks:\n   "
	.align
_StringConst_113:
	.word	1			! length
	.ascii	":"
	.align
_StringConst_112:
	.word	2			! length
	.ascii	"  "
	.align
_StringConst_111:
	.word	29			! length
	.ascii	"Here is the process table...\n"
	.align
_StringConst_110:
	.word	32			! length
	.ascii	"Initializing Process Manager...\n"
	.align
_StringConst_109:
	.word	13			! length
	.ascii	", exitStatus="
	.align
_StringConst_108:
	.word	13			! length
	.ascii	", parentsPid="
	.align
_StringConst_107:
	.word	33			! length
	.ascii	"Bad status in ProcessControlBlock"
	.align
_StringConst_106:
	.word	4			! length
	.ascii	"FREE"
	.align
_StringConst_105:
	.word	6			! length
	.ascii	"ZOMBIE"
	.align
_StringConst_104:
	.word	6			! length
	.ascii	"ACTIVE"
	.align
_StringConst_103:
	.word	9			! length
	.ascii	", status="
	.align
_StringConst_102:
	.word	8			! length
	.ascii	")   pid="
	.align
_StringConst_101:
	.word	30			! length
	.ascii	"  ProcessControlBlock   (addr="
	.align
_StringConst_100:
	.word	15			! length
	.ascii	"    myThread = "
	.align
_StringConst_99:
	.word	37			! length
	.ascii	"Here is the FREE list of Threads:\n   "
	.align
_StringConst_98:
	.word	1			! length
	.ascii	":"
	.align
_StringConst_97:
	.word	2			! length
	.ascii	"  "
	.align
_StringConst_96:
	.word	28			! length
	.ascii	"Here is the thread table...\n"
	.align
_StringConst_95:
	.word	6			! length
	.ascii	"thread"
	.align
_StringConst_94:
	.word	31			! length
	.ascii	"Initializing Thread Manager...\n"
	.align
_StringConst_93:
	.word	1			! length
	.ascii	"\n"
	.align
_StringConst_92:
	.word	3			! length
	.ascii	"   "
	.align
_StringConst_91:
	.word	2			! length
	.ascii	": "
	.align
_StringConst_90:
	.word	7			! length
	.ascii	"      r"
	.align
_StringConst_89:
	.word	20			! length
	.ascii	"    user registers:\n"
	.align
_StringConst_88:
	.word	20			! length
	.ascii	"    is user thread: "
	.align
_StringConst_87:
	.word	20			! length
	.ascii	"Bad status in Thread"
	.align
_StringConst_86:
	.word	20			! length
	.ascii	"    status = UNUSED\n"
	.align
_StringConst_85:
	.word	21			! length
	.ascii	"    status = BLOCKED\n"
	.align
_StringConst_84:
	.word	21			! length
	.ascii	"    status = RUNNING\n"
	.align
_StringConst_83:
	.word	19			! length
	.ascii	"    status = READY\n"
	.align
_StringConst_82:
	.word	26			! length
	.ascii	"    status = JUST_CREATED\n"
	.align
_StringConst_81:
	.word	23			! length
	.ascii	"    stack starting addr"
	.align
_StringConst_80:
	.word	12			! length
	.ascii	"    stackTop"
	.align
_StringConst_79:
	.word	1			! length
	.ascii	"\n"
	.align
_StringConst_78:
	.word	3			! length
	.ascii	"   "
	.align
_StringConst_77:
	.word	2			! length
	.ascii	": "
	.align
_StringConst_76:
	.word	7			! length
	.ascii	"      r"
	.align
_StringConst_75:
	.word	19			! length
	.ascii	"    machine state:\n"
	.align
_StringConst_74:
	.word	2			! length
	.ascii	")\n"
	.align
_StringConst_73:
	.word	29			! length
	.ascii	"\"    (addr of Thread object: "
	.align
_StringConst_72:
	.word	10			! length
	.ascii	"  Thread \""
	.align
_StringConst_71:
	.word	32			! length
	.ascii	"System stack underflow detected!"
	.align
_StringConst_70:
	.word	31			! length
	.ascii	"System stack overflow detected!"
	.align
_StringConst_69:
	.word	48			! length
	.ascii	"Ready list should always contain the idle thread"
	.align
_StringConst_68:
	.word	31			! length
	.ascii	"In Sleep, self != currentThread"
	.align
_StringConst_67:
	.word	44			! length
	.ascii	"In Sleep, currentInterruptStatus != DISABLED"
	.align
_StringConst_66:
	.word	51			! length
	.ascii	"Status of current thread should be READY or RUNNING"
	.align
_StringConst_65:
	.word	31			! length
	.ascii	"In Yield, self != currentThread"
	.align
_StringConst_64:
	.word	16			! length
	.ascii	"Forking thread: "
	.align
_StringConst_63:
	.word	54			! length
	.ascii	"Attempt to broadcast a condition when lock is not held"
	.align
_StringConst_62:
	.word	52			! length
	.ascii	"Attempt to signal a condition when mutex is not held"
	.align
_StringConst_61:
	.word	51			! length
	.ascii	"Attempt to wait on condition when mutex is not held"
	.align
_StringConst_60:
	.word	21			! length
	.ascii	"waiting in condition\n"
	.align
_StringConst_59:
	.word	52			! length
	.ascii	"Attempt to unlock a mutex by a thread not holding it"
	.align
_StringConst_58:
	.word	54			! length
	.ascii	"Attempt to lock a mutex by a thread already holding it"
	.align
_StringConst_57:
	.word	51			! length
	.ascii	"Semaphore count underflowed during \'Down\' operation"
	.align
_StringConst_56:
	.word	18			! length
	.ascii	"down on semaphore\n"
	.align
_StringConst_55:
	.word	48			! length
	.ascii	"Semaphore count overflowed during \'Up\' operation"
	.align
_StringConst_54:
	.word	39			! length
	.ascii	"Semaphore created with initialCount < 0"
	.align
_StringConst_53:
	.word	3			! length
	.ascii	":  "
	.align
_StringConst_52:
	.word	4			! length
	.ascii	"  0x"
	.align
_StringConst_51:
	.word	15			! length
	.ascii	"incomingChar(2)"
	.align
_StringConst_50:
	.word	15			! length
	.ascii	"getBufferNextIn"
	.align
_StringConst_49:
	.word	16			! length
	.ascii	"getBufferNextOut"
	.align
_StringConst_48:
	.word	2			! length
	.ascii	": "
	.align
_StringConst_47:
	.word	23			! length
	.ascii	"before calling GetChar\n"
	.align
_StringConst_46:
	.word	15			! length
	.ascii	"incomingChar(1)"
	.align
_StringConst_45:
	.word	8			! length
	.ascii	"terminal"
	.align
_StringConst_44:
	.word	11			! length
	.ascii	"filename = "
	.align
_StringConst_43:
	.word	21			! length
	.ascii	"virt addr of filename"
	.align
_StringConst_42:
	.word	27			! length
	.ascii	"Handle_Sys_Create invoked!\n"
	.align
_StringConst_41:
	.word	48			! length
	.ascii	"Syscall \'Shutdown\' was invoked by a user thread\n"
	.align
_StringConst_40:
	.word	37			! length
	.ascii	"Unknown syscall code from user thread"
	.align
_StringConst_39:
	.word	15			! length
	.ascii	"Syscall code = "
	.align
_StringConst_38:
	.word	42			! length
	.ascii	"  ERROR: currentThread.myProcess is null\n\n"
	.align
_StringConst_37:
	.word	14			! length
	.ascii	"  **********\n\n"
	.align
_StringConst_36:
	.word	13			! length
	.ascii	"\n**********  "
	.align
_StringConst_35:
	.word	62			! length
	.ascii	"An AlignmentException exception has occured while in user mode"
	.align
_StringConst_34:
	.word	64			! length
	.ascii	"A PrivilegedInstruction exception has occured while in user mode"
	.align
_StringConst_33:
	.word	64			! length
	.ascii	"A PageReadonlyException exception has occured while in user mode"
	.align
_StringConst_32:
	.word	63			! length
	.ascii	"A PageInvalidException exception has occured while in user mode"
	.align
_StringConst_31:
	.word	60			! length
	.ascii	"An AddressException exception has occured while in user mode"
	.align
_StringConst_30:
	.word	63			! length
	.ascii	"An ArithmeticException exception has occured while in user mode"
	.align
_StringConst_29:
	.word	62			! length
	.ascii	"An IllegalInstruction exception has occured while in user mode"
	.align
_StringConst_28:
	.word	30			! length
	.ascii	"serialNeedsAttention up done.\n"
	.align
_StringConst_27:
	.word	30			! length
	.ascii	"inside SerialInterruptHandler\n"
	.align
_StringConst_26:
	.word	49			! length
	.ascii	"serialHandlerThread inside SerialHandlerFunction\n"
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
	be	_Label_219
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
_Label_219:
	mov	0,r1
! Make sure _P_System_ has hash value 0x9e9d23b6 (decimal -1633868874)
	set	_packageName,r2
	set	0x9e9d23b6,r3
	call	_CheckVersion_P_System_
	.import	_CheckVersion_P_System_
	cmp	r1,0
	bne	_Label_220
! Make sure _P_BitMap_ has hash value 0xa596b1b5 (decimal -1516850763)
	set	_packageName,r2
	set	0xa596b1b5,r3
	call	_CheckVersion_P_BitMap_
	.import	_CheckVersion_P_BitMap_
	cmp	r1,0
	bne	_Label_220
! Make sure _P_List_ has hash value 0xafebcabb (decimal -1343501637)
	set	_packageName,r2
	set	0xafebcabb,r3
	call	_CheckVersion_P_List_
	.import	_CheckVersion_P_List_
	cmp	r1,0
	bne	_Label_220
_Label_220:
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
_Label_4060:
	push	r0
	sub	r1,1,r1
	bne	_Label_4060
	mov	7,r13		! source line 7
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   Call the function
	mov	14,r13		! source line 14
	mov	"\0\0CE",r10
	call	Cleari
! CALL STATEMENT...
!   _temp_221 = _StringConst_1
	set	_StringConst_1,r1
	store	r1,[r14+-60]
!   Prepare Argument: offset=8  value=_temp_221  sizeInBytes=4
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
_Label_4061:
	store	r0,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_4061
!   _P_Kernel_mainThread = _P_Kernel_Thread
	set	_P_Kernel_Thread,r1
	set	_P_Kernel_mainThread,r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	19,r13		! source line 19
	mov	"\0\0SE",r10
!   _temp_225 = _StringConst_2
	set	_StringConst_2,r1
	store	r1,[r14+-44]
!   _temp_226 = &_P_Kernel_mainThread
	set	_P_Kernel_mainThread,r1
	store	r1,[r14+-40]
!   Prepare Argument: offset=12  value=_temp_225  sizeInBytes=4
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
!   _temp_227 = &_P_Kernel_mainThread
	set	_P_Kernel_mainThread,r1
	store	r1,[r14+-36]
!   _temp_228 = _temp_227 + 76
	load	[r14+-36],r1
	add	r1,76,r1
	store	r1,[r14+-32]
!   Data Move: *_temp_228 = 3  (sizeInBytes=4)
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
_Label_4062:
	store	r0,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_4062
!   _P_Kernel_idleThread = _P_Kernel_Thread
	set	_P_Kernel_Thread,r1
	set	_P_Kernel_idleThread,r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	22,r13		! source line 22
	mov	"\0\0SE",r10
!   _temp_230 = _StringConst_3
	set	_StringConst_3,r1
	store	r1,[r14+-24]
!   _temp_231 = &_P_Kernel_idleThread
	set	_P_Kernel_idleThread,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=12  value=_temp_230  sizeInBytes=4
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
!   _temp_232 = _function_218_IdleFunction
	set	_function_218_IdleFunction,r1
	store	r1,[r14+-16]
!   _temp_233 = &_P_Kernel_idleThread
	set	_P_Kernel_idleThread,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=12  value=_temp_232  sizeInBytes=4
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
	.word	_Label_234
	.word	0		! total size of parameters
	.word	64		! frame size = 64
	.word	_Label_235
	.word	-12
	.word	4
	.word	_Label_236
	.word	-16
	.word	4
	.word	_Label_237
	.word	-20
	.word	4
	.word	_Label_238
	.word	-24
	.word	4
	.word	_Label_239
	.word	-28
	.word	4
	.word	_Label_240
	.word	-32
	.word	4
	.word	_Label_241
	.word	-36
	.word	4
	.word	_Label_242
	.word	-40
	.word	4
	.word	_Label_243
	.word	-44
	.word	4
	.word	_Label_244
	.word	-48
	.word	4
	.word	_Label_245
	.word	-52
	.word	4
	.word	_Label_246
	.word	-56
	.word	4
	.word	_Label_247
	.word	-60
	.word	4
	.word	0
_Label_234:
	.ascii	"InitializeScheduler\0"
	.align
_Label_235:
	.byte	'?'
	.ascii	"_temp_233\0"
	.align
_Label_236:
	.byte	'?'
	.ascii	"_temp_232\0"
	.align
_Label_237:
	.byte	'?'
	.ascii	"_temp_231\0"
	.align
_Label_238:
	.byte	'?'
	.ascii	"_temp_230\0"
	.align
_Label_239:
	.byte	'?'
	.ascii	"_temp_229\0"
	.align
_Label_240:
	.byte	'?'
	.ascii	"_temp_228\0"
	.align
_Label_241:
	.byte	'?'
	.ascii	"_temp_227\0"
	.align
_Label_242:
	.byte	'?'
	.ascii	"_temp_226\0"
	.align
_Label_243:
	.byte	'?'
	.ascii	"_temp_225\0"
	.align
_Label_244:
	.byte	'?'
	.ascii	"_temp_224\0"
	.align
_Label_245:
	.byte	'?'
	.ascii	"_temp_223\0"
	.align
_Label_246:
	.byte	'?'
	.ascii	"_temp_222\0"
	.align
_Label_247:
	.byte	'?'
	.ascii	"_temp_221\0"
	.align
! 
! ===============  FUNCTION IdleFunction  ===============
! 
_function_218_IdleFunction:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__function_218_IdleFunction,r1
	push	r1
	mov	3,r1
_Label_4063:
	push	r0
	sub	r1,1,r1
	bne	_Label_4063
	mov	32,r13		! source line 32
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! WHILE STATEMENT...
	mov	42,r13		! source line 42
	mov	"\0\0WH",r10
_Label_248:
!	jmp	_Label_249
_Label_249:
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
!   _temp_253 = &_P_Kernel_readyList
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
!   if result==true then goto _Label_251 else goto _Label_252
	loadb	[r15],r1
	cmp	r1,0
	be	_Label_252
	jmp	_Label_251
_Label_251:
! THEN...
	mov	45,r13		! source line 45
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   Call the function
	mov	45,r13		! source line 45
	mov	"\0\0CE",r10
	call	Wait
	jmp	_Label_254
_Label_252:
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
_Label_254:
! END WHILE...
	jmp	_Label_248
_Label_250:
! 
! Routine Descriptor
! 
_RoutineDescriptor__function_218_IdleFunction:
	.word	_sourceFileName
	.word	_Label_255
	.word	4		! total size of parameters
	.word	12		! frame size = 12
	.word	_Label_256
	.word	8
	.word	4
	.word	_Label_257
	.word	-12
	.word	4
	.word	_Label_258
	.word	-16
	.word	4
	.word	0
_Label_255:
	.ascii	"IdleFunction\0"
	.align
_Label_256:
	.byte	'I'
	.ascii	"arg\0"
	.align
_Label_257:
	.byte	'?'
	.ascii	"_temp_253\0"
	.align
_Label_258:
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
_Label_4064:
	push	r0
	sub	r1,1,r1
	bne	_Label_4064
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
!   _temp_261 = prevThread + 4092
	load	[r14+-76],r1
	add	r1,4092,r1
	store	r1,[r14+-72]
!   if boolIsZero (_temp_261 ) then goto _Label_260		(int)
	load	[r14+-72],r1
	loadb	[r1],r1
	cmp	r1,r0
	be	_Label_260
!	jmp	_Label_259
_Label_259:
! THEN...
	mov	71,r13		! source line 71
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   if intIsZero (prevThread) then goto _runtimeErrorNullPointer
	load	[r14+-76],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_263 = prevThread + 4096
	load	[r14+-76],r1
	add	r1,4096,r1
	store	r1,[r14+-64]
!   Move address of _temp_263 [0 ] into _temp_264
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
!   _temp_262 = _temp_264		(4 bytes)
	load	[r14+-60],r1
	store	r1,[r14+-68]
!   Prepare Argument: offset=8  value=_temp_262  sizeInBytes=4
	load	[r14+-68],r1
	store	r1,[r15+0]
!   Call the function
	mov	71,r13		! source line 71
	mov	"\0\0CE",r10
	call	SaveUserRegs
! END IF...
_Label_260:
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
!   _temp_265 = nextThread + 76
	load	[r14+8],r1
	add	r1,76,r1
	store	r1,[r14+-56]
!   Data Move: *_temp_265 = 3  (sizeInBytes=4)
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
_Label_266:
	mov	84,r13		! source line 84
	mov	"\0\0SE",r10
!   _temp_270 = &_P_Kernel_threadsToBeDestroyed
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
!   Retrieve Result: targetName=_temp_269  sizeInBytes=1
	loadb	[r15],r1
	storeb	r1,[r14+-9]
!   if _temp_269 then goto _Label_268 else goto _Label_267
	loadb	[r14+-9],r1
	cmp	r1,0
	be	_Label_267
	jmp	_Label_268
_Label_267:
	mov	84,r13		! source line 84
	mov	"\0\0WB",r10
! ASSIGNMENT STATEMENT...
	mov	85,r13		! source line 85
	mov	"\0\0AS",r10
	mov	85,r13		! source line 85
	mov	"\0\0SE",r10
!   _temp_271 = &_P_Kernel_threadsToBeDestroyed
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
!   _temp_272 = &_P_Kernel_threadManager
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
	jmp	_Label_266
_Label_268:
! IF STATEMENT...
	mov	89,r13		! source line 89
	mov	"\0\0IF",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_275 = _P_Kernel_currentThread + 4092
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4092,r1
	store	r1,[r14+-40]
!   if boolIsZero (_temp_275 ) then goto _Label_274		(int)
	load	[r14+-40],r1
	loadb	[r1],r1
	cmp	r1,r0
	be	_Label_274
!	jmp	_Label_273
_Label_273:
! THEN...
	mov	90,r13		! source line 90
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_277 = _P_Kernel_currentThread + 4096
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4096,r1
	store	r1,[r14+-32]
!   Move address of _temp_277 [0 ] into _temp_278
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
!   _temp_276 = _temp_278		(4 bytes)
	load	[r14+-28],r1
	store	r1,[r14+-36]
!   Prepare Argument: offset=8  value=_temp_276  sizeInBytes=4
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
!   _temp_280 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-20]
!   Data Move: _temp_279 = *_temp_280  (sizeInBytes=4)
	load	[r14+-20],r1
	load	[r1],r1
	store	r1,[r14+-24]
!   if intIsZero (_temp_279) then goto _runtimeErrorNullPointer
	load	[r14+-24],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_281 = _temp_279 + 32
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
_Label_274:
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
	.word	_Label_282
	.word	4		! total size of parameters
	.word	80		! frame size = 80
	.word	_Label_283
	.word	8
	.word	4
	.word	_Label_284
	.word	-16
	.word	4
	.word	_Label_285
	.word	-20
	.word	4
	.word	_Label_286
	.word	-24
	.word	4
	.word	_Label_287
	.word	-28
	.word	4
	.word	_Label_288
	.word	-32
	.word	4
	.word	_Label_289
	.word	-36
	.word	4
	.word	_Label_290
	.word	-40
	.word	4
	.word	_Label_291
	.word	-44
	.word	4
	.word	_Label_292
	.word	-48
	.word	4
	.word	_Label_293
	.word	-52
	.word	4
	.word	_Label_294
	.word	-9
	.word	1
	.word	_Label_295
	.word	-56
	.word	4
	.word	_Label_296
	.word	-60
	.word	4
	.word	_Label_297
	.word	-64
	.word	4
	.word	_Label_298
	.word	-68
	.word	4
	.word	_Label_299
	.word	-72
	.word	4
	.word	_Label_300
	.word	-76
	.word	4
	.word	_Label_301
	.word	-80
	.word	4
	.word	0
_Label_282:
	.ascii	"Run\0"
	.align
_Label_283:
	.byte	'P'
	.ascii	"nextThread\0"
	.align
_Label_284:
	.byte	'?'
	.ascii	"_temp_281\0"
	.align
_Label_285:
	.byte	'?'
	.ascii	"_temp_280\0"
	.align
_Label_286:
	.byte	'?'
	.ascii	"_temp_279\0"
	.align
_Label_287:
	.byte	'?'
	.ascii	"_temp_278\0"
	.align
_Label_288:
	.byte	'?'
	.ascii	"_temp_277\0"
	.align
_Label_289:
	.byte	'?'
	.ascii	"_temp_276\0"
	.align
_Label_290:
	.byte	'?'
	.ascii	"_temp_275\0"
	.align
_Label_291:
	.byte	'?'
	.ascii	"_temp_272\0"
	.align
_Label_292:
	.byte	'?'
	.ascii	"_temp_271\0"
	.align
_Label_293:
	.byte	'?'
	.ascii	"_temp_270\0"
	.align
_Label_294:
	.byte	'C'
	.ascii	"_temp_269\0"
	.align
_Label_295:
	.byte	'?'
	.ascii	"_temp_265\0"
	.align
_Label_296:
	.byte	'?'
	.ascii	"_temp_264\0"
	.align
_Label_297:
	.byte	'?'
	.ascii	"_temp_263\0"
	.align
_Label_298:
	.byte	'?'
	.ascii	"_temp_262\0"
	.align
_Label_299:
	.byte	'?'
	.ascii	"_temp_261\0"
	.align
_Label_300:
	.byte	'P'
	.ascii	"prevThread\0"
	.align
_Label_301:
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
_Label_4065:
	push	r0
	sub	r1,1,r1
	bne	_Label_4065
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
!   _temp_302 = _StringConst_4
	set	_StringConst_4,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_302  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   Call the function
	mov	105,r13		! source line 105
	mov	"\0\0CE",r10
	call	print
! SEND STATEMENT...
	mov	106,r13		! source line 106
	mov	"\0\0SE",r10
!   _temp_303 = _function_217_ThreadPrintShort
	set	_function_217_ThreadPrintShort,r1
	store	r1,[r14+-16]
!   _temp_304 = &_P_Kernel_readyList
	set	_P_Kernel_readyList,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=12  value=_temp_303  sizeInBytes=4
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
	.word	_Label_305
	.word	0		! total size of parameters
	.word	24		! frame size = 24
	.word	_Label_306
	.word	-12
	.word	4
	.word	_Label_307
	.word	-16
	.word	4
	.word	_Label_308
	.word	-20
	.word	4
	.word	_Label_309
	.word	-24
	.word	4
	.word	0
_Label_305:
	.ascii	"PrintReadyList\0"
	.align
_Label_306:
	.byte	'?'
	.ascii	"_temp_304\0"
	.align
_Label_307:
	.byte	'?'
	.ascii	"_temp_303\0"
	.align
_Label_308:
	.byte	'?'
	.ascii	"_temp_302\0"
	.align
_Label_309:
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
_Label_4066:
	push	r0
	sub	r1,1,r1
	bne	_Label_4066
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
!   _temp_310 = _P_Kernel_currentThread + 80
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,80,r1
	store	r1,[r14+-24]
!   Data Move: mainFun = *_temp_310  (sizeInBytes=4)
	load	[r14+-24],r1
	load	[r1],r1
	store	r1,[r14+-32]
! CALL STATEMENT...
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_312 = _P_Kernel_currentThread + 84
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,84,r1
	store	r1,[r14+-16]
!   Data Move: _temp_311 = *_temp_312  (sizeInBytes=4)
	load	[r14+-16],r1
	load	[r1],r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_311  sizeInBytes=4
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
!   _temp_313 = _StringConst_5
	set	_StringConst_5,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_313  sizeInBytes=4
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
	.word	_Label_314
	.word	0		! total size of parameters
	.word	28		! frame size = 28
	.word	_Label_315
	.word	-12
	.word	4
	.word	_Label_316
	.word	-16
	.word	4
	.word	_Label_317
	.word	-20
	.word	4
	.word	_Label_318
	.word	-24
	.word	4
	.word	_Label_319
	.word	-28
	.word	4
	.word	_Label_320
	.word	-32
	.word	4
	.word	0
_Label_314:
	.ascii	"ThreadStartMain\0"
	.align
_Label_315:
	.byte	'?'
	.ascii	"_temp_313\0"
	.align
_Label_316:
	.byte	'?'
	.ascii	"_temp_312\0"
	.align
_Label_317:
	.byte	'?'
	.ascii	"_temp_311\0"
	.align
_Label_318:
	.byte	'?'
	.ascii	"_temp_310\0"
	.align
_Label_319:
	.byte	'I'
	.ascii	"junk\0"
	.align
_Label_320:
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
_Label_4067:
	push	r0
	sub	r1,1,r1
	bne	_Label_4067
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
!   _temp_321 = &_P_Kernel_threadsToBeDestroyed
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
!   _temp_322 = _StringConst_6
	set	_StringConst_6,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_322  sizeInBytes=4
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
	.word	_Label_323
	.word	0		! total size of parameters
	.word	20		! frame size = 20
	.word	_Label_324
	.word	-12
	.word	4
	.word	_Label_325
	.word	-16
	.word	4
	.word	_Label_326
	.word	-20
	.word	4
	.word	0
_Label_323:
	.ascii	"ThreadFinish\0"
	.align
_Label_324:
	.byte	'?'
	.ascii	"_temp_322\0"
	.align
_Label_325:
	.byte	'?'
	.ascii	"_temp_321\0"
	.align
_Label_326:
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
_Label_4068:
	push	r0
	sub	r1,1,r1
	bne	_Label_4068
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
!   _temp_327 = _StringConst_7
	set	_StringConst_7,r1
	store	r1,[r14+-36]
!   Prepare Argument: offset=8  value=_temp_327  sizeInBytes=4
	load	[r14+-36],r1
	store	r1,[r15+0]
!   Call the function
	mov	165,r13		! source line 165
	mov	"\0\0CE",r10
	call	print
! IF STATEMENT...
	mov	166,r13		! source line 166
	mov	"\0\0IF",r10
!   if _P_Kernel_currentThread == 0 then goto _Label_329		(int)
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	mov	0,r2
	cmp	r1,r2
	be	_Label_329
!	jmp	_Label_328
_Label_328:
! THEN...
	mov	167,r13		! source line 167
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_330 = _StringConst_8
	set	_StringConst_8,r1
	store	r1,[r14+-32]
!   Prepare Argument: offset=8  value=_temp_330  sizeInBytes=4
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
!   _temp_332 = _P_Kernel_currentThread + 72
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,72,r1
	store	r1,[r14+-24]
!   Data Move: _temp_331 = *_temp_332  (sizeInBytes=4)
	load	[r14+-24],r1
	load	[r1],r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=8  value=_temp_331  sizeInBytes=4
	load	[r14+-28],r1
	store	r1,[r15+0]
!   Call the function
	mov	168,r13		! source line 168
	mov	"\0\0CE",r10
	call	print
! END IF...
_Label_329:
! CALL STATEMENT...
!   _temp_333 = _StringConst_9
	set	_StringConst_9,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_333  sizeInBytes=4
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
!   _temp_334 = _StringConst_10
	set	_StringConst_10,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_334  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+0]
!   Call the function
	mov	172,r13		! source line 172
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_335 = _StringConst_11
	set	_StringConst_11,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_335  sizeInBytes=4
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
	.word	_Label_336
	.word	4		! total size of parameters
	.word	36		! frame size = 36
	.word	_Label_337
	.word	8
	.word	4
	.word	_Label_338
	.word	-12
	.word	4
	.word	_Label_339
	.word	-16
	.word	4
	.word	_Label_340
	.word	-20
	.word	4
	.word	_Label_341
	.word	-24
	.word	4
	.word	_Label_342
	.word	-28
	.word	4
	.word	_Label_343
	.word	-32
	.word	4
	.word	_Label_344
	.word	-36
	.word	4
	.word	_Label_345
	.word	-40
	.word	4
	.word	0
_Label_336:
	.ascii	"FatalError_ThreadVersion\0"
	.align
_Label_337:
	.byte	'P'
	.ascii	"errorMessage\0"
	.align
_Label_338:
	.byte	'?'
	.ascii	"_temp_335\0"
	.align
_Label_339:
	.byte	'?'
	.ascii	"_temp_334\0"
	.align
_Label_340:
	.byte	'?'
	.ascii	"_temp_333\0"
	.align
_Label_341:
	.byte	'?'
	.ascii	"_temp_332\0"
	.align
_Label_342:
	.byte	'?'
	.ascii	"_temp_331\0"
	.align
_Label_343:
	.byte	'?'
	.ascii	"_temp_330\0"
	.align
_Label_344:
	.byte	'?'
	.ascii	"_temp_327\0"
	.align
_Label_345:
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
_Label_4069:
	push	r0
	sub	r1,1,r1
	bne	_Label_4069
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
!   if newStatus != 1 then goto _Label_347		(int)
	load	[r14+8],r1
	mov	1,r2
	cmp	r1,r2
	bne	_Label_347
!	jmp	_Label_346
_Label_346:
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
	jmp	_Label_348
_Label_347:
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
_Label_348:
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
	.word	_Label_349
	.word	4		! total size of parameters
	.word	4		! frame size = 4
	.word	_Label_350
	.word	8
	.word	4
	.word	_Label_351
	.word	-12
	.word	4
	.word	0
_Label_349:
	.ascii	"SetInterruptsTo\0"
	.align
_Label_350:
	.byte	'I'
	.ascii	"newStatus\0"
	.align
_Label_351:
	.byte	'I'
	.ascii	"oldStat\0"
	.align
! 
! ===============  FUNCTION ThreadPrintShort  ===============
! 
_function_217_ThreadPrintShort:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__function_217_ThreadPrintShort,r1
	push	r1
	mov	19,r1
_Label_4070:
	push	r0
	sub	r1,1,r1
	bne	_Label_4070
	mov	649,r13		! source line 649
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! oldStatus
!   Prepare Argument: offset=8  value=2  sizeInBytes=4
	mov	2,r1
	store	r1,[r15+0]
!   Call the function
	mov	656,r13		! source line 656
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=oldStatus  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-80]
! IF STATEMENT...
	mov	657,r13		! source line 657
	mov	"\0\0IF",r10
!   if t == 0 then goto _Label_355		(int)
	load	[r14+8],r1
	mov	0,r2
	cmp	r1,r2
	be	_Label_355
!   _temp_354 = 1		(1 byte)
	mov	1,r1
	storeb	r1,[r14+-9]
	jmp	_Label_356
_Label_355:
!   _temp_354 = 0		(1 byte)
	mov	0,r1
	storeb	r1,[r14+-9]
_Label_356:
!   if _temp_354 then goto _Label_353 else goto _Label_352
	loadb	[r14+-9],r1
	cmp	r1,0
	be	_Label_352
	jmp	_Label_353
_Label_352:
! THEN...
	mov	658,r13		! source line 658
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_357 = _StringConst_12
	set	_StringConst_12,r1
	store	r1,[r14+-76]
!   Prepare Argument: offset=8  value=_temp_357  sizeInBytes=4
	load	[r14+-76],r1
	store	r1,[r15+0]
!   Call the function
	mov	658,r13		! source line 658
	mov	"\0\0CE",r10
	call	print
! RETURN STATEMENT...
	mov	659,r13		! source line 659
	mov	"\0\0RE",r10
	add	r15,80,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_353:
! CALL STATEMENT...
!   _temp_358 = _StringConst_13
	set	_StringConst_13,r1
	store	r1,[r14+-72]
!   Prepare Argument: offset=8  value=_temp_358  sizeInBytes=4
	load	[r14+-72],r1
	store	r1,[r15+0]
!   Call the function
	mov	661,r13		! source line 661
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   if intIsZero (t) then goto _runtimeErrorNullPointer
	load	[r14+8],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_360 = t + 72
	load	[r14+8],r1
	add	r1,72,r1
	store	r1,[r14+-64]
!   Data Move: _temp_359 = *_temp_360  (sizeInBytes=4)
	load	[r14+-64],r1
	load	[r1],r1
	store	r1,[r14+-68]
!   Prepare Argument: offset=8  value=_temp_359  sizeInBytes=4
	load	[r14+-68],r1
	store	r1,[r15+0]
!   Call the function
	mov	662,r13		! source line 662
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_361 = _StringConst_14
	set	_StringConst_14,r1
	store	r1,[r14+-60]
!   Prepare Argument: offset=8  value=_temp_361  sizeInBytes=4
	load	[r14+-60],r1
	store	r1,[r15+0]
!   Call the function
	mov	663,r13		! source line 663
	mov	"\0\0CE",r10
	call	print
! SWITCH STATEMENT (using series of tests)...
	mov	664,r13		! source line 664
	mov	"\0\0SW",r10
!   Evaluate the switch expression...
!   if intIsZero (t) then goto _runtimeErrorNullPointer
	load	[r14+8],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_370 = t + 76
	load	[r14+8],r1
	add	r1,76,r1
	store	r1,[r14+-52]
!   Data Move: _temp_369 = *_temp_370  (sizeInBytes=4)
	load	[r14+-52],r1
	load	[r1],r1
	store	r1,[r14+-56]
!   Branch to the right case label
	load	[r14+-56],r1
	cmp	r1,1
	be	_Label_364
	cmp	r1,2
	be	_Label_365
	cmp	r1,3
	be	_Label_366
	cmp	r1,4
	be	_Label_367
	cmp	r1,5
	be	_Label_368
	jmp	_Label_362
! CASE 1...
_Label_364:
! CALL STATEMENT...
!   _temp_371 = _StringConst_15
	set	_StringConst_15,r1
	store	r1,[r14+-48]
!   Prepare Argument: offset=8  value=_temp_371  sizeInBytes=4
	load	[r14+-48],r1
	store	r1,[r15+0]
!   Call the function
	mov	666,r13		! source line 666
	mov	"\0\0CE",r10
	call	print
! BREAK STATEMENT...
	mov	667,r13		! source line 667
	mov	"\0\0BR",r10
	jmp	_Label_363
! CASE 2...
_Label_365:
! CALL STATEMENT...
!   _temp_372 = _StringConst_16
	set	_StringConst_16,r1
	store	r1,[r14+-44]
!   Prepare Argument: offset=8  value=_temp_372  sizeInBytes=4
	load	[r14+-44],r1
	store	r1,[r15+0]
!   Call the function
	mov	669,r13		! source line 669
	mov	"\0\0CE",r10
	call	print
! BREAK STATEMENT...
	mov	670,r13		! source line 670
	mov	"\0\0BR",r10
	jmp	_Label_363
! CASE 3...
_Label_366:
! CALL STATEMENT...
!   _temp_373 = _StringConst_17
	set	_StringConst_17,r1
	store	r1,[r14+-40]
!   Prepare Argument: offset=8  value=_temp_373  sizeInBytes=4
	load	[r14+-40],r1
	store	r1,[r15+0]
!   Call the function
	mov	672,r13		! source line 672
	mov	"\0\0CE",r10
	call	print
! BREAK STATEMENT...
	mov	673,r13		! source line 673
	mov	"\0\0BR",r10
	jmp	_Label_363
! CASE 4...
_Label_367:
! CALL STATEMENT...
!   _temp_374 = _StringConst_18
	set	_StringConst_18,r1
	store	r1,[r14+-36]
!   Prepare Argument: offset=8  value=_temp_374  sizeInBytes=4
	load	[r14+-36],r1
	store	r1,[r15+0]
!   Call the function
	mov	675,r13		! source line 675
	mov	"\0\0CE",r10
	call	print
! BREAK STATEMENT...
	mov	676,r13		! source line 676
	mov	"\0\0BR",r10
	jmp	_Label_363
! CASE 5...
_Label_368:
! CALL STATEMENT...
!   _temp_375 = _StringConst_19
	set	_StringConst_19,r1
	store	r1,[r14+-32]
!   Prepare Argument: offset=8  value=_temp_375  sizeInBytes=4
	load	[r14+-32],r1
	store	r1,[r15+0]
!   Call the function
	mov	678,r13		! source line 678
	mov	"\0\0CE",r10
	call	print
! BREAK STATEMENT...
	mov	679,r13		! source line 679
	mov	"\0\0BR",r10
	jmp	_Label_363
! DEFAULT CASE...
_Label_362:
! CALL STATEMENT...
!   _temp_376 = _StringConst_20
	set	_StringConst_20,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=8  value=_temp_376  sizeInBytes=4
	load	[r14+-28],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	681,r13		! source line 681
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END SWITCH...
_Label_363:
! CALL STATEMENT...
!   _temp_377 = _StringConst_21
	set	_StringConst_21,r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=8  value=_temp_377  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+0]
!   Call the function
	mov	683,r13		! source line 683
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_378 = t		(4 bytes)
	load	[r14+8],r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_378  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   Call the function
	mov	684,r13		! source line 684
	mov	"\0\0CE",r10
	call	printHex
! CALL STATEMENT...
!   _temp_379 = _StringConst_22
	set	_StringConst_22,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_379  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+0]
!   Call the function
	mov	685,r13		! source line 685
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Call the function
	mov	686,r13		! source line 686
	mov	"\0\0CA",r10
	call	_P_System_nl
! ASSIGNMENT STATEMENT...
	mov	688,r13		! source line 688
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=oldStatus  sizeInBytes=4
	load	[r14+-80],r1
	store	r1,[r15+0]
!   Call the function
	mov	688,r13		! source line 688
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=oldStatus  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-80]
! RETURN STATEMENT...
	mov	688,r13		! source line 688
	mov	"\0\0RE",r10
	add	r15,80,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__function_217_ThreadPrintShort:
	.word	_sourceFileName
	.word	_Label_380
	.word	4		! total size of parameters
	.word	76		! frame size = 76
	.word	_Label_381
	.word	8
	.word	4
	.word	_Label_382
	.word	-16
	.word	4
	.word	_Label_383
	.word	-20
	.word	4
	.word	_Label_384
	.word	-24
	.word	4
	.word	_Label_385
	.word	-28
	.word	4
	.word	_Label_386
	.word	-32
	.word	4
	.word	_Label_387
	.word	-36
	.word	4
	.word	_Label_388
	.word	-40
	.word	4
	.word	_Label_389
	.word	-44
	.word	4
	.word	_Label_390
	.word	-48
	.word	4
	.word	_Label_391
	.word	-52
	.word	4
	.word	_Label_392
	.word	-56
	.word	4
	.word	_Label_393
	.word	-60
	.word	4
	.word	_Label_394
	.word	-64
	.word	4
	.word	_Label_395
	.word	-68
	.word	4
	.word	_Label_396
	.word	-72
	.word	4
	.word	_Label_397
	.word	-76
	.word	4
	.word	_Label_398
	.word	-9
	.word	1
	.word	_Label_399
	.word	-80
	.word	4
	.word	0
_Label_380:
	.ascii	"ThreadPrintShort\0"
	.align
_Label_381:
	.byte	'P'
	.ascii	"t\0"
	.align
_Label_382:
	.byte	'?'
	.ascii	"_temp_379\0"
	.align
_Label_383:
	.byte	'?'
	.ascii	"_temp_378\0"
	.align
_Label_384:
	.byte	'?'
	.ascii	"_temp_377\0"
	.align
_Label_385:
	.byte	'?'
	.ascii	"_temp_376\0"
	.align
_Label_386:
	.byte	'?'
	.ascii	"_temp_375\0"
	.align
_Label_387:
	.byte	'?'
	.ascii	"_temp_374\0"
	.align
_Label_388:
	.byte	'?'
	.ascii	"_temp_373\0"
	.align
_Label_389:
	.byte	'?'
	.ascii	"_temp_372\0"
	.align
_Label_390:
	.byte	'?'
	.ascii	"_temp_371\0"
	.align
_Label_391:
	.byte	'?'
	.ascii	"_temp_370\0"
	.align
_Label_392:
	.byte	'?'
	.ascii	"_temp_369\0"
	.align
_Label_393:
	.byte	'?'
	.ascii	"_temp_361\0"
	.align
_Label_394:
	.byte	'?'
	.ascii	"_temp_360\0"
	.align
_Label_395:
	.byte	'?'
	.ascii	"_temp_359\0"
	.align
_Label_396:
	.byte	'?'
	.ascii	"_temp_358\0"
	.align
_Label_397:
	.byte	'?'
	.ascii	"_temp_357\0"
	.align
_Label_398:
	.byte	'C'
	.ascii	"_temp_354\0"
	.align
_Label_399:
	.byte	'I'
	.ascii	"oldStatus\0"
	.align
! 
! ===============  FUNCTION PrintObjectAddr  ===============
! 
_function_216_PrintObjectAddr:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__function_216_PrintObjectAddr,r1
	push	r1
	mov	2,r1
_Label_4071:
	push	r0
	sub	r1,1,r1
	bne	_Label_4071
	mov	1063,r13		! source line 1063
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   _temp_400 = p		(4 bytes)
	load	[r14+8],r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_400  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	1067,r13		! source line 1067
	mov	"\0\0CE",r10
	call	printHex
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=32  sizeInBytes=1
	mov	32,r1
	storeb	r1,[r15+0]
!   Call the function
	mov	1068,r13		! source line 1068
	mov	"\0\0CE",r10
	call	printChar
! RETURN STATEMENT...
	mov	1068,r13		! source line 1068
	mov	"\0\0RE",r10
	add	r15,12,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__function_216_PrintObjectAddr:
	.word	_sourceFileName
	.word	_Label_401
	.word	4		! total size of parameters
	.word	8		! frame size = 8
	.word	_Label_402
	.word	8
	.word	4
	.word	_Label_403
	.word	-12
	.word	4
	.word	0
_Label_401:
	.ascii	"PrintObjectAddr\0"
	.align
_Label_402:
	.byte	'P'
	.ascii	"p\0"
	.align
_Label_403:
	.byte	'?'
	.ascii	"_temp_400\0"
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
_Label_4072:
	push	r0
	sub	r1,1,r1
	bne	_Label_4072
	mov	1073,r13		! source line 1073
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1085,r13		! source line 1085
	mov	"\0\0AS",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_404 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-52]
!   Data Move: thisProcess = *_temp_404  (sizeInBytes=4)
	load	[r14+-52],r1
	load	[r1],r1
	store	r1,[r14+-60]
! ASSIGNMENT STATEMENT...
	mov	1088,r13		! source line 1088
	mov	"\0\0AS",r10
!   if intIsZero (thisProcess) then goto _runtimeErrorNullPointer
	load	[r14+-60],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_405 = thisProcess + 28
	load	[r14+-60],r1
	add	r1,28,r1
	store	r1,[r14+-48]
!   Data Move: *_temp_405 = exitStatus  (sizeInBytes=4)
	load	[r14+8],r1
	load	[r14+-48],r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	1091,r13		! source line 1091
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=2  sizeInBytes=4
	mov	2,r1
	store	r1,[r15+0]
!   Call the function
	mov	1091,r13		! source line 1091
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=oldInterruptStatus  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-56]
! ASSIGNMENT STATEMENT...
	mov	1094,r13		! source line 1094
	mov	"\0\0AS",r10
!   if intIsZero (thisProcess) then goto _runtimeErrorNullPointer
	load	[r14+-60],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_406 = thisProcess + 24
	load	[r14+-60],r1
	add	r1,24,r1
	store	r1,[r14+-44]
!   Data Move: *_temp_406 = 0  (sizeInBytes=4)
	mov	0,r1
	load	[r14+-44],r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	1095,r13		! source line 1095
	mov	"\0\0AS",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_407 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-40]
!   Data Move: *_temp_407 = 0  (sizeInBytes=4)
	mov	0,r1
	load	[r14+-40],r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	1097,r13		! source line 1097
	mov	"\0\0AS",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_408 = _P_Kernel_currentThread + 4092
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4092,r1
	store	r1,[r14+-36]
!   Data Move: *_temp_408 = 0  (sizeInBytes=1)
	mov	0,r1
	load	[r14+-36],r2
	storeb	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	1100,r13		! source line 1100
	mov	"\0\0AS",r10
!   i = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-64]
! WHILE STATEMENT...
	mov	1100,r13		! source line 1100
	mov	"\0\0WH",r10
_Label_409:
!   if i >= 10 then goto _Label_411		(int)
	load	[r14+-64],r1
	mov	10,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_411
!	jmp	_Label_410
_Label_410:
	mov	1100,r13		! source line 1100
	mov	"\0\0WB",r10
! ASSIGNMENT STATEMENT...
	mov	1101,r13		! source line 1101
	mov	"\0\0AS",r10
!   if intIsZero (thisProcess) then goto _runtimeErrorNullPointer
	load	[r14+-60],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_412 = thisProcess + 124
	load	[r14+-60],r1
	add	r1,124,r1
	store	r1,[r14+-32]
!   Move address of _temp_412 [i ] into _temp_413
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
!   Data Move: *_temp_413 = 0  (sizeInBytes=4)
	mov	0,r1
	load	[r14+-28],r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	1100,r13		! source line 1100
	mov	"\0\0AS",r10
!   i = i + 1		(int)
	load	[r14+-64],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-64]
! END WHILE...
	jmp	_Label_409
_Label_411:
! ASSIGNMENT STATEMENT...
	mov	1105,r13		! source line 1105
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=1  sizeInBytes=4
	mov	1,r1
	store	r1,[r15+0]
!   Call the function
	mov	1105,r13		! source line 1105
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=oldInterruptStatus  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-56]
! SEND STATEMENT...
	mov	1108,r13		! source line 1108
	mov	"\0\0SE",r10
!   if intIsZero (thisProcess) then goto _runtimeErrorNullPointer
	load	[r14+-60],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_415 = thisProcess + 32
	load	[r14+-60],r1
	add	r1,32,r1
	store	r1,[r14+-20]
!   _temp_414 = _temp_415		(4 bytes)
	load	[r14+-20],r1
	store	r1,[r14+-24]
!   _temp_416 = &_P_Kernel_frameManager
	set	_P_Kernel_frameManager,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=12  value=_temp_414  sizeInBytes=4
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
	mov	1110,r13		! source line 1110
	mov	"\0\0SE",r10
!   _temp_417 = &_P_Kernel_processManager
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
	mov	1112,r13		! source line 1112
	mov	"\0\0CA",r10
	call	_P_Kernel_ThreadFinish
! RETURN STATEMENT...
	mov	1112,r13		! source line 1112
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
	.word	_Label_418
	.word	4		! total size of parameters
	.word	64		! frame size = 64
	.word	_Label_419
	.word	8
	.word	4
	.word	_Label_420
	.word	-12
	.word	4
	.word	_Label_421
	.word	-16
	.word	4
	.word	_Label_422
	.word	-20
	.word	4
	.word	_Label_423
	.word	-24
	.word	4
	.word	_Label_424
	.word	-28
	.word	4
	.word	_Label_425
	.word	-32
	.word	4
	.word	_Label_426
	.word	-36
	.word	4
	.word	_Label_427
	.word	-40
	.word	4
	.word	_Label_428
	.word	-44
	.word	4
	.word	_Label_429
	.word	-48
	.word	4
	.word	_Label_430
	.word	-52
	.word	4
	.word	_Label_431
	.word	-56
	.word	4
	.word	_Label_432
	.word	-60
	.word	4
	.word	_Label_433
	.word	-64
	.word	4
	.word	0
_Label_418:
	.ascii	"ProcessFinish\0"
	.align
_Label_419:
	.byte	'I'
	.ascii	"exitStatus\0"
	.align
_Label_420:
	.byte	'?'
	.ascii	"_temp_417\0"
	.align
_Label_421:
	.byte	'?'
	.ascii	"_temp_416\0"
	.align
_Label_422:
	.byte	'?'
	.ascii	"_temp_415\0"
	.align
_Label_423:
	.byte	'?'
	.ascii	"_temp_414\0"
	.align
_Label_424:
	.byte	'?'
	.ascii	"_temp_413\0"
	.align
_Label_425:
	.byte	'?'
	.ascii	"_temp_412\0"
	.align
_Label_426:
	.byte	'?'
	.ascii	"_temp_408\0"
	.align
_Label_427:
	.byte	'?'
	.ascii	"_temp_407\0"
	.align
_Label_428:
	.byte	'?'
	.ascii	"_temp_406\0"
	.align
_Label_429:
	.byte	'?'
	.ascii	"_temp_405\0"
	.align
_Label_430:
	.byte	'?'
	.ascii	"_temp_404\0"
	.align
_Label_431:
	.byte	'I'
	.ascii	"oldInterruptStatus\0"
	.align
_Label_432:
	.byte	'P'
	.ascii	"thisProcess\0"
	.align
_Label_433:
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
_Label_4073:
	push	r0
	sub	r1,1,r1
	bne	_Label_4073
	mov	1118,r13		! source line 1118
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1123,r13		! source line 1123
	mov	"\0\0AS",r10
	mov	1123,r13		! source line 1123
	mov	"\0\0SE",r10
!   _temp_434 = &_P_Kernel_threadManager
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
	mov	1124,r13		! source line 1124
	mov	"\0\0SE",r10
!   _temp_435 = _StringConst_23
	set	_StringConst_23,r1
	store	r1,[r14+-20]
!   if intIsZero (newThread) then goto _runtimeErrorNullPointer
	load	[r14+-28],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Prepare Argument: offset=12  value=_temp_435  sizeInBytes=4
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
	mov	1125,r13		! source line 1125
	mov	"\0\0SE",r10
!   _temp_436 = _P_Kernel_StartUserProcess
	set	_P_Kernel_StartUserProcess,r1
	store	r1,[r14+-16]
!   _temp_437 = _StringConst_24
	set	_StringConst_24,r1
	store	r1,[r14+-12]
!   if intIsZero (newThread) then goto _runtimeErrorNullPointer
	load	[r14+-28],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Prepare Argument: offset=12  value=_temp_436  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=_temp_437  sizeInBytes=4
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
	mov	1125,r13		! source line 1125
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
	.word	_Label_438
	.word	0		! total size of parameters
	.word	32		! frame size = 32
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
	.word	0
_Label_438:
	.ascii	"InitFirstProcess\0"
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
_Label_4074:
	push	r0
	sub	r1,1,r1
	bne	_Label_4074
	mov	1130,r13		! source line 1130
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1141,r13		! source line 1141
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=1  sizeInBytes=4
	mov	1,r1
	store	r1,[r15+0]
!   Call the function
	mov	1141,r13		! source line 1141
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=junk  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-96]
! ASSIGNMENT STATEMENT...
	mov	1144,r13		! source line 1144
	mov	"\0\0AS",r10
	mov	1144,r13		! source line 1144
	mov	"\0\0SE",r10
!   _temp_444 = &_P_Kernel_processManager
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
	mov	1145,r13		! source line 1145
	mov	"\0\0AS",r10
!   if intIsZero (newProcess) then goto _runtimeErrorNullPointer
	load	[r14+-76],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_445 = newProcess + 24
	load	[r14+-76],r1
	add	r1,24,r1
	store	r1,[r14+-68]
!   Data Move: *_temp_445 = _P_Kernel_currentThread  (sizeInBytes=4)
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	load	[r14+-68],r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	1146,r13		! source line 1146
	mov	"\0\0AS",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_446 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-64]
!   Data Move: *_temp_446 = newProcess  (sizeInBytes=4)
	load	[r14+-76],r1
	load	[r14+-64],r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	1149,r13		! source line 1149
	mov	"\0\0AS",r10
	mov	1149,r13		! source line 1149
	mov	"\0\0SE",r10
!   _temp_447 = _StringConst_25
	set	_StringConst_25,r1
	store	r1,[r14+-60]
!   _temp_448 = &_P_Kernel_fileManager
	set	_P_Kernel_fileManager,r1
	store	r1,[r14+-56]
!   Prepare Argument: offset=12  value=_temp_447  sizeInBytes=4
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
	mov	1152,r13		! source line 1152
	mov	"\0\0SE",r10
!   if intIsZero (newProcess) then goto _runtimeErrorNullPointer
	load	[r14+-76],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_449 = newProcess + 32
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
	mov	1153,r13		! source line 1153
	mov	"\0\0AS",r10
	mov	1153,r13		! source line 1153
	mov	"\0\0SE",r10
!   if intIsZero (newProcess) then goto _runtimeErrorNullPointer
	load	[r14+-76],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_451 = newProcess + 32
	load	[r14+-76],r1
	add	r1,32,r1
	store	r1,[r14+-44]
!   _temp_450 = _temp_451		(4 bytes)
	load	[r14+-44],r1
	store	r1,[r14+-48]
!   if intIsZero (openFile) then goto _runtimeErrorNullPointer
	load	[r14+-80],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Prepare Argument: offset=12  value=_temp_450  sizeInBytes=4
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
	mov	1156,r13		! source line 1156
	mov	"\0\0SE",r10
!   _temp_452 = &_P_Kernel_fileManager
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
	mov	1159,r13		! source line 1159
	mov	"\0\0AS",r10
!   if intIsZero (newProcess) then goto _runtimeErrorNullPointer
	load	[r14+-76],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_454 = newProcess + 32
	load	[r14+-76],r1
	add	r1,32,r1
	store	r1,[r14+-32]
!   _temp_455 = _temp_454 + 4
	load	[r14+-32],r1
	add	r1,4,r1
	store	r1,[r14+-28]
!   Data Move: _temp_453 = *_temp_455  (sizeInBytes=4)
	load	[r14+-28],r1
	load	[r1],r1
	store	r1,[r14+-36]
!   initUserStackTop = _temp_453 * 8192		(int)
	load	[r14+-36],r1
	mov	8192,r2
	mul	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-88]
! ASSIGNMENT STATEMENT...
	mov	1162,r13		! source line 1162
	mov	"\0\0AS",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_456 = _P_Kernel_currentThread + 88
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,88,r1
	store	r1,[r14+-24]
!   Move address of _temp_456 [999 ] into _temp_457
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
!   initSystemStackTop = _temp_457		(4 bytes)
	load	[r14+-20],r1
	store	r1,[r14+-92]
! ASSIGNMENT STATEMENT...
	mov	1165,r13		! source line 1165
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=2  sizeInBytes=4
	mov	2,r1
	store	r1,[r15+0]
!   Call the function
	mov	1165,r13		! source line 1165
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=junk  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-96]
! SEND STATEMENT...
	mov	1166,r13		! source line 1166
	mov	"\0\0SE",r10
!   if intIsZero (newProcess) then goto _runtimeErrorNullPointer
	load	[r14+-76],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_458 = newProcess + 32
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
	mov	1167,r13		! source line 1167
	mov	"\0\0AS",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_459 = _P_Kernel_currentThread + 4092
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4092,r1
	store	r1,[r14+-12]
!   Data Move: *_temp_459 = 1  (sizeInBytes=1)
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
	mov	1169,r13		! source line 1169
	mov	"\0\0CE",r10
	call	BecomeUserThread
! RETURN STATEMENT...
	mov	1169,r13		! source line 1169
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
	.word	_Label_460
	.word	0		! total size of parameters
	.word	100		! frame size = 100
	.word	_Label_461
	.word	-12
	.word	4
	.word	_Label_462
	.word	-16
	.word	4
	.word	_Label_463
	.word	-20
	.word	4
	.word	_Label_464
	.word	-24
	.word	4
	.word	_Label_465
	.word	-28
	.word	4
	.word	_Label_466
	.word	-32
	.word	4
	.word	_Label_467
	.word	-36
	.word	4
	.word	_Label_468
	.word	-40
	.word	4
	.word	_Label_469
	.word	-44
	.word	4
	.word	_Label_470
	.word	-48
	.word	4
	.word	_Label_471
	.word	-52
	.word	4
	.word	_Label_472
	.word	-56
	.word	4
	.word	_Label_473
	.word	-60
	.word	4
	.word	_Label_474
	.word	-64
	.word	4
	.word	_Label_475
	.word	-68
	.word	4
	.word	_Label_476
	.word	-72
	.word	4
	.word	_Label_477
	.word	-76
	.word	4
	.word	_Label_478
	.word	-80
	.word	4
	.word	_Label_479
	.word	-84
	.word	4
	.word	_Label_480
	.word	-88
	.word	4
	.word	_Label_481
	.word	-92
	.word	4
	.word	_Label_482
	.word	-96
	.word	4
	.word	0
_Label_460:
	.ascii	"StartUserProcess\0"
	.align
_Label_461:
	.byte	'?'
	.ascii	"_temp_459\0"
	.align
_Label_462:
	.byte	'?'
	.ascii	"_temp_458\0"
	.align
_Label_463:
	.byte	'?'
	.ascii	"_temp_457\0"
	.align
_Label_464:
	.byte	'?'
	.ascii	"_temp_456\0"
	.align
_Label_465:
	.byte	'?'
	.ascii	"_temp_455\0"
	.align
_Label_466:
	.byte	'?'
	.ascii	"_temp_454\0"
	.align
_Label_467:
	.byte	'?'
	.ascii	"_temp_453\0"
	.align
_Label_468:
	.byte	'?'
	.ascii	"_temp_452\0"
	.align
_Label_469:
	.byte	'?'
	.ascii	"_temp_451\0"
	.align
_Label_470:
	.byte	'?'
	.ascii	"_temp_450\0"
	.align
_Label_471:
	.byte	'?'
	.ascii	"_temp_449\0"
	.align
_Label_472:
	.byte	'?'
	.ascii	"_temp_448\0"
	.align
_Label_473:
	.byte	'?'
	.ascii	"_temp_447\0"
	.align
_Label_474:
	.byte	'?'
	.ascii	"_temp_446\0"
	.align
_Label_475:
	.byte	'?'
	.ascii	"_temp_445\0"
	.align
_Label_476:
	.byte	'?'
	.ascii	"_temp_444\0"
	.align
_Label_477:
	.byte	'P'
	.ascii	"newProcess\0"
	.align
_Label_478:
	.byte	'P'
	.ascii	"openFile\0"
	.align
_Label_479:
	.byte	'I'
	.ascii	"initUserPC\0"
	.align
_Label_480:
	.byte	'I'
	.ascii	"initUserStackTop\0"
	.align
_Label_481:
	.byte	'I'
	.ascii	"initSystemStackTop\0"
	.align
_Label_482:
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
_Label_4075:
	push	r0
	sub	r1,1,r1
	bne	_Label_4075
	mov	1175,r13		! source line 1175
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1183,r13		! source line 1183
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=2  sizeInBytes=4
	mov	2,r1
	store	r1,[r15+0]
!   Call the function
	mov	1183,r13		! source line 1183
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=junk  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-56]
! SEND STATEMENT...
	mov	1186,r13		! source line 1186
	mov	"\0\0SE",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_484 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-48]
!   Data Move: _temp_483 = *_temp_484  (sizeInBytes=4)
	load	[r14+-48],r1
	load	[r1],r1
	store	r1,[r14+-52]
!   if intIsZero (_temp_483) then goto _runtimeErrorNullPointer
	load	[r14+-52],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_485 = _temp_483 + 32
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
!   _temp_487 = _P_Kernel_currentThread + 4096
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4096,r1
	store	r1,[r14+-36]
!   Move address of _temp_487 [0 ] into _temp_488
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
!   _temp_486 = _temp_488		(4 bytes)
	load	[r14+-32],r1
	store	r1,[r14+-40]
!   Prepare Argument: offset=8  value=_temp_486  sizeInBytes=4
	load	[r14+-40],r1
	store	r1,[r15+0]
!   Call the function
	mov	1189,r13		! source line 1189
	mov	"\0\0CE",r10
	call	RestoreUserRegs
! ASSIGNMENT STATEMENT...
	mov	1192,r13		! source line 1192
	mov	"\0\0AS",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_489 = _P_Kernel_currentThread + 4092
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4092,r1
	store	r1,[r14+-28]
!   Data Move: *_temp_489 = 1  (sizeInBytes=1)
	mov	1,r1
	load	[r14+-28],r2
	storeb	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	1195,r13		! source line 1195
	mov	"\0\0AS",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_490 = _P_Kernel_currentThread + 88
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,88,r1
	store	r1,[r14+-24]
!   Move address of _temp_490 [999 ] into _temp_491
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
!   systemStackTop = _temp_491		(4 bytes)
	load	[r14+-20],r1
	store	r1,[r14+-60]
! ASSIGNMENT STATEMENT...
	mov	1198,r13		! source line 1198
	mov	"\0\0AS",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_492 = _P_Kernel_currentThread + 4096
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4096,r1
	store	r1,[r14+-16]
!   Move address of _temp_492 [14 ] into _temp_493
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
!   Data Move: userStackTop = *_temp_493  (sizeInBytes=4)
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
	mov	1200,r13		! source line 1200
	mov	"\0\0CE",r10
	call	BecomeUserThread
! RETURN STATEMENT...
	mov	1200,r13		! source line 1200
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
	.word	_Label_494
	.word	4		! total size of parameters
	.word	68		! frame size = 68
	.word	_Label_495
	.word	8
	.word	4
	.word	_Label_496
	.word	-12
	.word	4
	.word	_Label_497
	.word	-16
	.word	4
	.word	_Label_498
	.word	-20
	.word	4
	.word	_Label_499
	.word	-24
	.word	4
	.word	_Label_500
	.word	-28
	.word	4
	.word	_Label_501
	.word	-32
	.word	4
	.word	_Label_502
	.word	-36
	.word	4
	.word	_Label_503
	.word	-40
	.word	4
	.word	_Label_504
	.word	-44
	.word	4
	.word	_Label_505
	.word	-48
	.word	4
	.word	_Label_506
	.word	-52
	.word	4
	.word	_Label_507
	.word	-56
	.word	4
	.word	_Label_508
	.word	-60
	.word	4
	.word	_Label_509
	.word	-64
	.word	4
	.word	0
_Label_494:
	.ascii	"ResumeChildAfterFork\0"
	.align
_Label_495:
	.byte	'I'
	.ascii	"oldUserPC\0"
	.align
_Label_496:
	.byte	'?'
	.ascii	"_temp_493\0"
	.align
_Label_497:
	.byte	'?'
	.ascii	"_temp_492\0"
	.align
_Label_498:
	.byte	'?'
	.ascii	"_temp_491\0"
	.align
_Label_499:
	.byte	'?'
	.ascii	"_temp_490\0"
	.align
_Label_500:
	.byte	'?'
	.ascii	"_temp_489\0"
	.align
_Label_501:
	.byte	'?'
	.ascii	"_temp_488\0"
	.align
_Label_502:
	.byte	'?'
	.ascii	"_temp_487\0"
	.align
_Label_503:
	.byte	'?'
	.ascii	"_temp_486\0"
	.align
_Label_504:
	.byte	'?'
	.ascii	"_temp_485\0"
	.align
_Label_505:
	.byte	'?'
	.ascii	"_temp_484\0"
	.align
_Label_506:
	.byte	'?'
	.ascii	"_temp_483\0"
	.align
_Label_507:
	.byte	'I'
	.ascii	"junk\0"
	.align
_Label_508:
	.byte	'I'
	.ascii	"systemStackTop\0"
	.align
_Label_509:
	.byte	'I'
	.ascii	"userStackTop\0"
	.align
! 
! ===============  FUNCTION SerialHandlerFunction  ===============
! 
_function_215_SerialHandlerFunction:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__function_215_SerialHandlerFunction,r1
	push	r1
	mov	3,r1
_Label_4076:
	push	r0
	sub	r1,1,r1
	bne	_Label_4076
	mov	1206,r13		! source line 1206
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   _temp_510 = _StringConst_26
	set	_StringConst_26,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_510  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+0]
!   Call the function
	mov	1207,r13		! source line 1207
	mov	"\0\0CE",r10
	call	print
! SEND STATEMENT...
	mov	1208,r13		! source line 1208
	mov	"\0\0SE",r10
!   _temp_511 = &_P_Kernel_serialDriver
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
	mov	1208,r13		! source line 1208
	mov	"\0\0RE",r10
	add	r15,16,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__function_215_SerialHandlerFunction:
	.word	_sourceFileName
	.word	_Label_512
	.word	4		! total size of parameters
	.word	12		! frame size = 12
	.word	_Label_513
	.word	8
	.word	4
	.word	_Label_514
	.word	-12
	.word	4
	.word	_Label_515
	.word	-16
	.word	4
	.word	0
_Label_512:
	.ascii	"SerialHandlerFunction\0"
	.align
_Label_513:
	.byte	'I'
	.ascii	"ignore\0"
	.align
_Label_514:
	.byte	'?'
	.ascii	"_temp_511\0"
	.align
_Label_515:
	.byte	'?'
	.ascii	"_temp_510\0"
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
_Label_4077:
	push	r0
	sub	r1,1,r1
	bne	_Label_4077
	mov	1694,r13		! source line 1694
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1704,r13		! source line 1704
	mov	"\0\0AS",r10
!   _P_Kernel_currentInterruptStatus = 2		(4 bytes)
	mov	2,r1
	set	_P_Kernel_currentInterruptStatus,r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	1706,r13		! source line 1706
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
	mov	1707,r13		! source line 1707
	mov	"\0\0AS",r10
!   _P_Kernel_currentInterruptStatus = 1		(4 bytes)
	mov	1,r1
	set	_P_Kernel_currentInterruptStatus,r2
	store	r1,[r2]
! RETURN STATEMENT...
	mov	1707,r13		! source line 1707
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
	.word	_Label_516
	.word	0		! total size of parameters
	.word	4		! frame size = 4
	.word	0
_Label_516:
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
_Label_4078:
	push	r0
	sub	r1,1,r1
	bne	_Label_4078
	mov	1712,r13		! source line 1712
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1723,r13		! source line 1723
	mov	"\0\0AS",r10
!   _P_Kernel_currentInterruptStatus = 2		(4 bytes)
	mov	2,r1
	set	_P_Kernel_currentInterruptStatus,r2
	store	r1,[r2]
! IF STATEMENT...
	mov	1725,r13		! source line 1725
	mov	"\0\0IF",r10
!   _temp_520 = &_P_Kernel_diskDriver
	set	_P_Kernel_diskDriver,r1
	store	r1,[r14+-28]
!   _temp_521 = _temp_520 + 24
	load	[r14+-28],r1
	add	r1,24,r1
	store	r1,[r14+-24]
!   Data Move: _temp_519 = *_temp_521  (sizeInBytes=4)
	load	[r14+-24],r1
	load	[r1],r1
	store	r1,[r14+-32]
!   if _temp_519 == 0 then goto _Label_518		(int)
	load	[r14+-32],r1
	mov	0,r2
	cmp	r1,r2
	be	_Label_518
!	jmp	_Label_517
_Label_517:
! THEN...
	mov	1726,r13		! source line 1726
	mov	"\0\0TN",r10
! SEND STATEMENT...
	mov	1726,r13		! source line 1726
	mov	"\0\0SE",r10
!   _temp_523 = &_P_Kernel_diskDriver
	set	_P_Kernel_diskDriver,r1
	store	r1,[r14+-16]
!   _temp_524 = _temp_523 + 24
	load	[r14+-16],r1
	add	r1,24,r1
	store	r1,[r14+-12]
!   Data Move: _temp_522 = *_temp_524  (sizeInBytes=4)
	load	[r14+-12],r1
	load	[r1],r1
	store	r1,[r14+-20]
!   if intIsZero (_temp_522) then goto _runtimeErrorNullPointer
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
_Label_518:
! RETURN STATEMENT...
	mov	1725,r13		! source line 1725
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
	.word	_Label_525
	.word	0		! total size of parameters
	.word	28		! frame size = 28
	.word	_Label_526
	.word	-12
	.word	4
	.word	_Label_527
	.word	-16
	.word	4
	.word	_Label_528
	.word	-20
	.word	4
	.word	_Label_529
	.word	-24
	.word	4
	.word	_Label_530
	.word	-28
	.word	4
	.word	_Label_531
	.word	-32
	.word	4
	.word	0
_Label_525:
	.ascii	"DiskInterruptHandler\0"
	.align
_Label_526:
	.byte	'?'
	.ascii	"_temp_524\0"
	.align
_Label_527:
	.byte	'?'
	.ascii	"_temp_523\0"
	.align
_Label_528:
	.byte	'?'
	.ascii	"_temp_522\0"
	.align
_Label_529:
	.byte	'?'
	.ascii	"_temp_521\0"
	.align
_Label_530:
	.byte	'?'
	.ascii	"_temp_520\0"
	.align
_Label_531:
	.byte	'?'
	.ascii	"_temp_519\0"
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
	mov	5,r1
_Label_4079:
	push	r0
	sub	r1,1,r1
	bne	_Label_4079
	mov	1733,r13		! source line 1733
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1742,r13		! source line 1742
	mov	"\0\0AS",r10
!   _P_Kernel_currentInterruptStatus = 2		(4 bytes)
	mov	2,r1
	set	_P_Kernel_currentInterruptStatus,r2
	store	r1,[r2]
! CALL STATEMENT...
!   _temp_532 = _StringConst_27
	set	_StringConst_27,r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=8  value=_temp_532  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+0]
!   Call the function
	mov	1743,r13		! source line 1743
	mov	"\0\0CE",r10
	call	print
! IF STATEMENT...
	mov	1744,r13		! source line 1744
	mov	"\0\0IF",r10
!   if _P_Kernel_serialHasBeenInitialized then goto _Label_533 else goto _Label_534
	set	_P_Kernel_serialHasBeenInitialized,r1
	loadb	[r1],r1
	cmp	r1,0
	be	_Label_534
	jmp	_Label_533
_Label_533:
! THEN...
	mov	1745,r13		! source line 1745
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_535 = _StringConst_28
	set	_StringConst_28,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_535  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   Call the function
	mov	1745,r13		! source line 1745
	mov	"\0\0CE",r10
	call	print
! SEND STATEMENT...
	mov	1746,r13		! source line 1746
	mov	"\0\0SE",r10
!   _temp_536 = &_P_Kernel_serialDriver
	set	_P_Kernel_serialDriver,r1
	store	r1,[r14+-16]
!   _temp_537 = _temp_536 + 124
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
_Label_534:
! ASSIGNMENT STATEMENT...
	mov	1749,r13		! source line 1749
	mov	"\0\0AS",r10
!   _P_Kernel_currentInterruptStatus = 1		(4 bytes)
	mov	1,r1
	set	_P_Kernel_currentInterruptStatus,r2
	store	r1,[r2]
! RETURN STATEMENT...
	mov	1751,r13		! source line 1751
	mov	"\0\0RE",r10
	add	r15,24,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__P_Kernel_SerialInterruptHandler:
	.word	_sourceFileName
	.word	_Label_538
	.word	0		! total size of parameters
	.word	20		! frame size = 20
	.word	_Label_539
	.word	-12
	.word	4
	.word	_Label_540
	.word	-16
	.word	4
	.word	_Label_541
	.word	-20
	.word	4
	.word	_Label_542
	.word	-24
	.word	4
	.word	0
_Label_538:
	.ascii	"SerialInterruptHandler\0"
	.align
_Label_539:
	.byte	'?'
	.ascii	"_temp_537\0"
	.align
_Label_540:
	.byte	'?'
	.ascii	"_temp_536\0"
	.align
_Label_541:
	.byte	'?'
	.ascii	"_temp_535\0"
	.align
_Label_542:
	.byte	'?'
	.ascii	"_temp_532\0"
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
_Label_4080:
	push	r0
	sub	r1,1,r1
	bne	_Label_4080
	mov	1756,r13		! source line 1756
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1762,r13		! source line 1762
	mov	"\0\0AS",r10
!   _P_Kernel_currentInterruptStatus = 2		(4 bytes)
	mov	2,r1
	set	_P_Kernel_currentInterruptStatus,r2
	store	r1,[r2]
! CALL STATEMENT...
!   _temp_543 = _StringConst_29
	set	_StringConst_29,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_543  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	1763,r13		! source line 1763
	mov	"\0\0CA",r10
	call	_function_214_ErrorInUserProcess
! RETURN STATEMENT...
	mov	1763,r13		! source line 1763
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
	.word	_Label_544
	.word	0		! total size of parameters
	.word	8		! frame size = 8
	.word	_Label_545
	.word	-12
	.word	4
	.word	0
_Label_544:
	.ascii	"IllegalInstructionHandler\0"
	.align
_Label_545:
	.byte	'?'
	.ascii	"_temp_543\0"
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
_Label_4081:
	push	r0
	sub	r1,1,r1
	bne	_Label_4081
	mov	1768,r13		! source line 1768
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1774,r13		! source line 1774
	mov	"\0\0AS",r10
!   _P_Kernel_currentInterruptStatus = 2		(4 bytes)
	mov	2,r1
	set	_P_Kernel_currentInterruptStatus,r2
	store	r1,[r2]
! CALL STATEMENT...
!   _temp_546 = _StringConst_30
	set	_StringConst_30,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_546  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	1775,r13		! source line 1775
	mov	"\0\0CA",r10
	call	_function_214_ErrorInUserProcess
! RETURN STATEMENT...
	mov	1775,r13		! source line 1775
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
	.word	_Label_547
	.word	0		! total size of parameters
	.word	8		! frame size = 8
	.word	_Label_548
	.word	-12
	.word	4
	.word	0
_Label_547:
	.ascii	"ArithmeticExceptionHandler\0"
	.align
_Label_548:
	.byte	'?'
	.ascii	"_temp_546\0"
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
_Label_4082:
	push	r0
	sub	r1,1,r1
	bne	_Label_4082
	mov	1780,r13		! source line 1780
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1786,r13		! source line 1786
	mov	"\0\0AS",r10
!   _P_Kernel_currentInterruptStatus = 2		(4 bytes)
	mov	2,r1
	set	_P_Kernel_currentInterruptStatus,r2
	store	r1,[r2]
! CALL STATEMENT...
!   _temp_549 = _StringConst_31
	set	_StringConst_31,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_549  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	1787,r13		! source line 1787
	mov	"\0\0CA",r10
	call	_function_214_ErrorInUserProcess
! RETURN STATEMENT...
	mov	1787,r13		! source line 1787
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
	.word	_Label_550
	.word	0		! total size of parameters
	.word	8		! frame size = 8
	.word	_Label_551
	.word	-12
	.word	4
	.word	0
_Label_550:
	.ascii	"AddressExceptionHandler\0"
	.align
_Label_551:
	.byte	'?'
	.ascii	"_temp_549\0"
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
_Label_4083:
	push	r0
	sub	r1,1,r1
	bne	_Label_4083
	mov	1792,r13		! source line 1792
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1798,r13		! source line 1798
	mov	"\0\0AS",r10
!   _P_Kernel_currentInterruptStatus = 2		(4 bytes)
	mov	2,r1
	set	_P_Kernel_currentInterruptStatus,r2
	store	r1,[r2]
! CALL STATEMENT...
!   _temp_552 = _StringConst_32
	set	_StringConst_32,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_552  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	1799,r13		! source line 1799
	mov	"\0\0CA",r10
	call	_function_214_ErrorInUserProcess
! RETURN STATEMENT...
	mov	1799,r13		! source line 1799
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
	.word	_Label_553
	.word	0		! total size of parameters
	.word	8		! frame size = 8
	.word	_Label_554
	.word	-12
	.word	4
	.word	0
_Label_553:
	.ascii	"PageInvalidExceptionHandler\0"
	.align
_Label_554:
	.byte	'?'
	.ascii	"_temp_552\0"
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
_Label_4084:
	push	r0
	sub	r1,1,r1
	bne	_Label_4084
	mov	1804,r13		! source line 1804
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1810,r13		! source line 1810
	mov	"\0\0AS",r10
!   _P_Kernel_currentInterruptStatus = 2		(4 bytes)
	mov	2,r1
	set	_P_Kernel_currentInterruptStatus,r2
	store	r1,[r2]
! CALL STATEMENT...
!   _temp_555 = _StringConst_33
	set	_StringConst_33,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_555  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	1811,r13		! source line 1811
	mov	"\0\0CA",r10
	call	_function_214_ErrorInUserProcess
! RETURN STATEMENT...
	mov	1811,r13		! source line 1811
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
	.word	_Label_556
	.word	0		! total size of parameters
	.word	8		! frame size = 8
	.word	_Label_557
	.word	-12
	.word	4
	.word	0
_Label_556:
	.ascii	"PageReadonlyExceptionHandler\0"
	.align
_Label_557:
	.byte	'?'
	.ascii	"_temp_555\0"
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
_Label_4085:
	push	r0
	sub	r1,1,r1
	bne	_Label_4085
	mov	1816,r13		! source line 1816
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1822,r13		! source line 1822
	mov	"\0\0AS",r10
!   _P_Kernel_currentInterruptStatus = 2		(4 bytes)
	mov	2,r1
	set	_P_Kernel_currentInterruptStatus,r2
	store	r1,[r2]
! CALL STATEMENT...
!   _temp_558 = _StringConst_34
	set	_StringConst_34,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_558  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	1823,r13		! source line 1823
	mov	"\0\0CA",r10
	call	_function_214_ErrorInUserProcess
! RETURN STATEMENT...
	mov	1823,r13		! source line 1823
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
	.word	_Label_559
	.word	0		! total size of parameters
	.word	8		! frame size = 8
	.word	_Label_560
	.word	-12
	.word	4
	.word	0
_Label_559:
	.ascii	"PrivilegedInstructionHandler\0"
	.align
_Label_560:
	.byte	'?'
	.ascii	"_temp_558\0"
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
_Label_4086:
	push	r0
	sub	r1,1,r1
	bne	_Label_4086
	mov	1828,r13		! source line 1828
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1834,r13		! source line 1834
	mov	"\0\0AS",r10
!   _P_Kernel_currentInterruptStatus = 2		(4 bytes)
	mov	2,r1
	set	_P_Kernel_currentInterruptStatus,r2
	store	r1,[r2]
! CALL STATEMENT...
!   _temp_561 = _StringConst_35
	set	_StringConst_35,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_561  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	1835,r13		! source line 1835
	mov	"\0\0CA",r10
	call	_function_214_ErrorInUserProcess
! RETURN STATEMENT...
	mov	1835,r13		! source line 1835
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
	.word	_Label_562
	.word	0		! total size of parameters
	.word	8		! frame size = 8
	.word	_Label_563
	.word	-12
	.word	4
	.word	0
_Label_562:
	.ascii	"AlignmentExceptionHandler\0"
	.align
_Label_563:
	.byte	'?'
	.ascii	"_temp_561\0"
	.align
! 
! ===============  FUNCTION ErrorInUserProcess  ===============
! 
_function_214_ErrorInUserProcess:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__function_214_ErrorInUserProcess,r1
	push	r1
	mov	8,r1
_Label_4087:
	push	r0
	sub	r1,1,r1
	bne	_Label_4087
	mov	1840,r13		! source line 1840
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   _temp_564 = _StringConst_36
	set	_StringConst_36,r1
	store	r1,[r14+-36]
!   Prepare Argument: offset=8  value=_temp_564  sizeInBytes=4
	load	[r14+-36],r1
	store	r1,[r15+0]
!   Call the function
	mov	1845,r13		! source line 1845
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=errorMessage  sizeInBytes=4
	load	[r14+8],r1
	store	r1,[r15+0]
!   Call the function
	mov	1846,r13		! source line 1846
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_565 = _StringConst_37
	set	_StringConst_37,r1
	store	r1,[r14+-32]
!   Prepare Argument: offset=8  value=_temp_565  sizeInBytes=4
	load	[r14+-32],r1
	store	r1,[r15+0]
!   Call the function
	mov	1847,r13		! source line 1847
	mov	"\0\0CE",r10
	call	print
! IF STATEMENT...
	mov	1850,r13		! source line 1850
	mov	"\0\0IF",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_569 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-24]
!   Data Move: _temp_568 = *_temp_569  (sizeInBytes=4)
	load	[r14+-24],r1
	load	[r1],r1
	store	r1,[r14+-28]
!   if _temp_568 == 0 then goto _Label_567		(int)
	load	[r14+-28],r1
	mov	0,r2
	cmp	r1,r2
	be	_Label_567
!	jmp	_Label_566
_Label_566:
! THEN...
	mov	1851,r13		! source line 1851
	mov	"\0\0TN",r10
! SEND STATEMENT...
	mov	1851,r13		! source line 1851
	mov	"\0\0SE",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_571 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-16]
!   Data Move: _temp_570 = *_temp_571  (sizeInBytes=4)
	load	[r14+-16],r1
	load	[r1],r1
	store	r1,[r14+-20]
!   if intIsZero (_temp_570) then goto _runtimeErrorNullPointer
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
	jmp	_Label_572
_Label_567:
! ELSE...
	mov	1853,r13		! source line 1853
	mov	"\0\0EL",r10
! CALL STATEMENT...
!   _temp_573 = _StringConst_38
	set	_StringConst_38,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_573  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	1853,r13		! source line 1853
	mov	"\0\0CE",r10
	call	print
! END IF...
_Label_572:
! SEND STATEMENT...
	mov	1855,r13		! source line 1855
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
	mov	1861,r13		! source line 1861
	mov	"\0\0CA",r10
	call	_P_Kernel_ProcessFinish
! RETURN STATEMENT...
	mov	1861,r13		! source line 1861
	mov	"\0\0RE",r10
	add	r15,36,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__function_214_ErrorInUserProcess:
	.word	_sourceFileName
	.word	_Label_574
	.word	4		! total size of parameters
	.word	32		! frame size = 32
	.word	_Label_575
	.word	8
	.word	4
	.word	_Label_576
	.word	-12
	.word	4
	.word	_Label_577
	.word	-16
	.word	4
	.word	_Label_578
	.word	-20
	.word	4
	.word	_Label_579
	.word	-24
	.word	4
	.word	_Label_580
	.word	-28
	.word	4
	.word	_Label_581
	.word	-32
	.word	4
	.word	_Label_582
	.word	-36
	.word	4
	.word	0
_Label_574:
	.ascii	"ErrorInUserProcess\0"
	.align
_Label_575:
	.byte	'P'
	.ascii	"errorMessage\0"
	.align
_Label_576:
	.byte	'?'
	.ascii	"_temp_573\0"
	.align
_Label_577:
	.byte	'?'
	.ascii	"_temp_571\0"
	.align
_Label_578:
	.byte	'?'
	.ascii	"_temp_570\0"
	.align
_Label_579:
	.byte	'?'
	.ascii	"_temp_569\0"
	.align
_Label_580:
	.byte	'?'
	.ascii	"_temp_568\0"
	.align
_Label_581:
	.byte	'?'
	.ascii	"_temp_565\0"
	.align
_Label_582:
	.byte	'?'
	.ascii	"_temp_564\0"
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
_Label_4088:
	push	r0
	sub	r1,1,r1
	bne	_Label_4088
	mov	1866,r13		! source line 1866
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1873,r13		! source line 1873
	mov	"\0\0AS",r10
!   _P_Kernel_currentInterruptStatus = 2		(4 bytes)
	mov	2,r1
	set	_P_Kernel_currentInterruptStatus,r2
	store	r1,[r2]
! SWITCH STATEMENT (using an indirect jump table)...
	mov	1887,r13		! source line 1887
	mov	"\0\0SW",r10
!   Evaluate the switch expression...
	load	[r14+8],r1
!   If syscallCodeNum is not within 16-bits goto default code
	srl	r1,15,r2
	cmp	r2,0
	be	_Label_4089
	set	0x1ffff,r3
	cmp	r2,r3
	bne	_Label_583
_Label_4089:
!   If syscallCodeNum is < 1 (==smallestCaseValue) goto default code
	cmp	r1,1
	bl	_Label_583
!   If syscallCodeNum is > 12 (==greatestCaseValue) goto default code
	cmp	r1,12
	bg	_Label_583
!   r1 = (r1-lowValue) * 4 + jumpTableAddr
	sub	r1,1,r1
	sll	r1,2,r1
	set	_Label_597,r2
	add	r1,r2,r1
!   Jump indirect through the jump table
	jmp	r1
!   Jump table
_Label_597:
	jmp	_Label_589	! 1:	
	jmp	_Label_596	! 2:	
	jmp	_Label_586	! 3:	
	jmp	_Label_585	! 4:	
	jmp	_Label_588	! 5:	
	jmp	_Label_587	! 6:	
	jmp	_Label_590	! 7:	
	jmp	_Label_591	! 8:	
	jmp	_Label_592	! 9:	
	jmp	_Label_593	! 10:	
	jmp	_Label_594	! 11:	
	jmp	_Label_595	! 12:	
! CASE 4...
_Label_585:
! RETURN STATEMENT...
	mov	1889,r13		! source line 1889
	mov	"\0\0RE",r10
!   Call the function
	mov	1889,r13		! source line 1889
	mov	"\0\0CA",r10
	call	_P_Kernel_Handle_Sys_Fork
!   Retrieve Result: targetName=_temp_598  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-48]
!   ReturnResult: _temp_598  (sizeInBytes=4)
	load	[r14+-48],r1
	store	r1,[r14+8]
	add	r15,56,r15
	pop	r13
	pop	r14
	ret
! CASE 3...
_Label_586:
! CALL STATEMENT...
!   Call the function
	mov	1891,r13		! source line 1891
	mov	"\0\0CA",r10
	call	_P_Kernel_Handle_Sys_Yield
! RETURN STATEMENT...
	mov	1892,r13		! source line 1892
	mov	"\0\0RE",r10
!   ReturnResult: 0  (sizeInBytes=4)
	mov	0,r1
	store	r1,[r14+8]
	add	r15,56,r15
	pop	r13
	pop	r14
	ret
! CASE 6...
_Label_587:
! RETURN STATEMENT...
	mov	1894,r13		! source line 1894
	mov	"\0\0RE",r10
!   Prepare Argument: offset=8  value=arg1  sizeInBytes=4
	load	[r14+12],r1
	store	r1,[r15+0]
!   Call the function
	mov	1894,r13		! source line 1894
	mov	"\0\0CA",r10
	call	_P_Kernel_Handle_Sys_Exec
!   Retrieve Result: targetName=_temp_599  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-44]
!   ReturnResult: _temp_599  (sizeInBytes=4)
	load	[r14+-44],r1
	store	r1,[r14+8]
	add	r15,56,r15
	pop	r13
	pop	r14
	ret
! CASE 5...
_Label_588:
! RETURN STATEMENT...
	mov	1896,r13		! source line 1896
	mov	"\0\0RE",r10
!   Prepare Argument: offset=8  value=arg1  sizeInBytes=4
	load	[r14+12],r1
	store	r1,[r15+0]
!   Call the function
	mov	1896,r13		! source line 1896
	mov	"\0\0CA",r10
	call	_P_Kernel_Handle_Sys_Join
!   Retrieve Result: targetName=_temp_600  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-40]
!   ReturnResult: _temp_600  (sizeInBytes=4)
	load	[r14+-40],r1
	store	r1,[r14+8]
	add	r15,56,r15
	pop	r13
	pop	r14
	ret
! CASE 1...
_Label_589:
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=arg1  sizeInBytes=4
	load	[r14+12],r1
	store	r1,[r15+0]
!   Call the function
	mov	1898,r13		! source line 1898
	mov	"\0\0CA",r10
	call	_P_Kernel_Handle_Sys_Exit
! RETURN STATEMENT...
	mov	1899,r13		! source line 1899
	mov	"\0\0RE",r10
!   ReturnResult: 0  (sizeInBytes=4)
	mov	0,r1
	store	r1,[r14+8]
	add	r15,56,r15
	pop	r13
	pop	r14
	ret
! CASE 7...
_Label_590:
! RETURN STATEMENT...
	mov	1901,r13		! source line 1901
	mov	"\0\0RE",r10
!   Prepare Argument: offset=8  value=arg1  sizeInBytes=4
	load	[r14+12],r1
	store	r1,[r15+0]
!   Call the function
	mov	1901,r13		! source line 1901
	mov	"\0\0CA",r10
	call	_P_Kernel_Handle_Sys_Create
!   Retrieve Result: targetName=_temp_601  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-36]
!   ReturnResult: _temp_601  (sizeInBytes=4)
	load	[r14+-36],r1
	store	r1,[r14+8]
	add	r15,56,r15
	pop	r13
	pop	r14
	ret
! CASE 8...
_Label_591:
! RETURN STATEMENT...
	mov	1903,r13		! source line 1903
	mov	"\0\0RE",r10
!   Prepare Argument: offset=8  value=arg1  sizeInBytes=4
	load	[r14+12],r1
	store	r1,[r15+0]
!   Call the function
	mov	1903,r13		! source line 1903
	mov	"\0\0CA",r10
	call	_P_Kernel_Handle_Sys_Open
!   Retrieve Result: targetName=_temp_602  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-32]
!   ReturnResult: _temp_602  (sizeInBytes=4)
	load	[r14+-32],r1
	store	r1,[r14+8]
	add	r15,56,r15
	pop	r13
	pop	r14
	ret
! CASE 9...
_Label_592:
! RETURN STATEMENT...
	mov	1905,r13		! source line 1905
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
	mov	1905,r13		! source line 1905
	mov	"\0\0CA",r10
	call	_P_Kernel_Handle_Sys_Read
!   Retrieve Result: targetName=_temp_603  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-28]
!   ReturnResult: _temp_603  (sizeInBytes=4)
	load	[r14+-28],r1
	store	r1,[r14+8]
	add	r15,56,r15
	pop	r13
	pop	r14
	ret
! CASE 10...
_Label_593:
! RETURN STATEMENT...
	mov	1907,r13		! source line 1907
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
	mov	1907,r13		! source line 1907
	mov	"\0\0CA",r10
	call	_P_Kernel_Handle_Sys_Write
!   Retrieve Result: targetName=_temp_604  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-24]
!   ReturnResult: _temp_604  (sizeInBytes=4)
	load	[r14+-24],r1
	store	r1,[r14+8]
	add	r15,56,r15
	pop	r13
	pop	r14
	ret
! CASE 11...
_Label_594:
! RETURN STATEMENT...
	mov	1909,r13		! source line 1909
	mov	"\0\0RE",r10
!   Prepare Argument: offset=8  value=arg1  sizeInBytes=4
	load	[r14+12],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=arg2  sizeInBytes=4
	load	[r14+16],r1
	store	r1,[r15+4]
!   Call the function
	mov	1909,r13		! source line 1909
	mov	"\0\0CA",r10
	call	_P_Kernel_Handle_Sys_Seek
!   Retrieve Result: targetName=_temp_605  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-20]
!   ReturnResult: _temp_605  (sizeInBytes=4)
	load	[r14+-20],r1
	store	r1,[r14+8]
	add	r15,56,r15
	pop	r13
	pop	r14
	ret
! CASE 12...
_Label_595:
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=arg1  sizeInBytes=4
	load	[r14+12],r1
	store	r1,[r15+0]
!   Call the function
	mov	1911,r13		! source line 1911
	mov	"\0\0CA",r10
	call	_P_Kernel_Handle_Sys_Close
! RETURN STATEMENT...
	mov	1912,r13		! source line 1912
	mov	"\0\0RE",r10
!   ReturnResult: 0  (sizeInBytes=4)
	mov	0,r1
	store	r1,[r14+8]
	add	r15,56,r15
	pop	r13
	pop	r14
	ret
! CASE 2...
_Label_596:
! CALL STATEMENT...
!   Call the function
	mov	1914,r13		! source line 1914
	mov	"\0\0CA",r10
	call	_P_Kernel_Handle_Sys_Shutdown
! RETURN STATEMENT...
	mov	1915,r13		! source line 1915
	mov	"\0\0RE",r10
!   ReturnResult: 0  (sizeInBytes=4)
	mov	0,r1
	store	r1,[r14+8]
	add	r15,56,r15
	pop	r13
	pop	r14
	ret
! DEFAULT CASE...
_Label_583:
! CALL STATEMENT...
!   _temp_606 = _StringConst_39
	set	_StringConst_39,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_606  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+0]
!   Call the function
	mov	1917,r13		! source line 1917
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=syscallCodeNum  sizeInBytes=4
	load	[r14+8],r1
	store	r1,[r15+0]
!   Call the function
	mov	1918,r13		! source line 1918
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   Call the function
	mov	1919,r13		! source line 1919
	mov	"\0\0CA",r10
	call	_P_System_nl
! CALL STATEMENT...
!   _temp_607 = _StringConst_40
	set	_StringConst_40,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_607  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	1920,r13		! source line 1920
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END SWITCH...
_Label_584:
! RETURN STATEMENT...
	mov	1922,r13		! source line 1922
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
	.word	_Label_608
	.word	20		! total size of parameters
	.word	52		! frame size = 52
	.word	_Label_609
	.word	8
	.word	4
	.word	_Label_610
	.word	12
	.word	4
	.word	_Label_611
	.word	16
	.word	4
	.word	_Label_612
	.word	20
	.word	4
	.word	_Label_613
	.word	24
	.word	4
	.word	_Label_614
	.word	-12
	.word	4
	.word	_Label_615
	.word	-16
	.word	4
	.word	_Label_616
	.word	-20
	.word	4
	.word	_Label_617
	.word	-24
	.word	4
	.word	_Label_618
	.word	-28
	.word	4
	.word	_Label_619
	.word	-32
	.word	4
	.word	_Label_620
	.word	-36
	.word	4
	.word	_Label_621
	.word	-40
	.word	4
	.word	_Label_622
	.word	-44
	.word	4
	.word	_Label_623
	.word	-48
	.word	4
	.word	0
_Label_608:
	.ascii	"SyscallTrapHandler\0"
	.align
_Label_609:
	.byte	'I'
	.ascii	"syscallCodeNum\0"
	.align
_Label_610:
	.byte	'I'
	.ascii	"arg1\0"
	.align
_Label_611:
	.byte	'I'
	.ascii	"arg2\0"
	.align
_Label_612:
	.byte	'I'
	.ascii	"arg3\0"
	.align
_Label_613:
	.byte	'I'
	.ascii	"arg4\0"
	.align
_Label_614:
	.byte	'?'
	.ascii	"_temp_607\0"
	.align
_Label_615:
	.byte	'?'
	.ascii	"_temp_606\0"
	.align
_Label_616:
	.byte	'?'
	.ascii	"_temp_605\0"
	.align
_Label_617:
	.byte	'?'
	.ascii	"_temp_604\0"
	.align
_Label_618:
	.byte	'?'
	.ascii	"_temp_603\0"
	.align
_Label_619:
	.byte	'?'
	.ascii	"_temp_602\0"
	.align
_Label_620:
	.byte	'?'
	.ascii	"_temp_601\0"
	.align
_Label_621:
	.byte	'?'
	.ascii	"_temp_600\0"
	.align
_Label_622:
	.byte	'?'
	.ascii	"_temp_599\0"
	.align
_Label_623:
	.byte	'?'
	.ascii	"_temp_598\0"
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
_Label_4090:
	push	r0
	sub	r1,1,r1
	bne	_Label_4090
	mov	1927,r13		! source line 1927
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=returnStatus  sizeInBytes=4
	load	[r14+8],r1
	store	r1,[r15+0]
!   Call the function
	mov	1929,r13		! source line 1929
	mov	"\0\0CA",r10
	call	_P_Kernel_ProcessFinish
! RETURN STATEMENT...
	mov	1929,r13		! source line 1929
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
	.word	_Label_624
	.word	4		! total size of parameters
	.word	4		! frame size = 4
	.word	_Label_625
	.word	8
	.word	4
	.word	0
_Label_624:
	.ascii	"Handle_Sys_Exit\0"
	.align
_Label_625:
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
_Label_4091:
	push	r0
	sub	r1,1,r1
	bne	_Label_4091
	mov	1935,r13		! source line 1935
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   _temp_626 = _StringConst_41
	set	_StringConst_41,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_626  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	1936,r13		! source line 1936
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! RETURN STATEMENT...
	mov	1936,r13		! source line 1936
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
	.word	_Label_627
	.word	0		! total size of parameters
	.word	8		! frame size = 8
	.word	_Label_628
	.word	-12
	.word	4
	.word	0
_Label_627:
	.ascii	"Handle_Sys_Shutdown\0"
	.align
_Label_628:
	.byte	'?'
	.ascii	"_temp_626\0"
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
_Label_4092:
	push	r0
	sub	r1,1,r1
	bne	_Label_4092
	mov	1941,r13		! source line 1941
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! SEND STATEMENT...
	mov	1943,r13		! source line 1943
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
	mov	1944,r13		! source line 1944
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
	.word	_Label_629
	.word	0		! total size of parameters
	.word	4		! frame size = 4
	.word	0
_Label_629:
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
_Label_4093:
	push	r0
	sub	r1,1,r1
	bne	_Label_4093
	mov	1951,r13		! source line 1951
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1964,r13		! source line 1964
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=2  sizeInBytes=4
	mov	2,r1
	store	r1,[r15+0]
!   Call the function
	mov	1964,r13		! source line 1964
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=junk  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-232]
! ASSIGNMENT STATEMENT...
	mov	1967,r13		! source line 1967
	mov	"\0\0AS",r10
	mov	1967,r13		! source line 1967
	mov	"\0\0SE",r10
!   _temp_630 = &_P_Kernel_processManager
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
	mov	1968,r13		! source line 1968
	mov	"\0\0AS",r10
	mov	1968,r13		! source line 1968
	mov	"\0\0SE",r10
!   _temp_631 = &_P_Kernel_threadManager
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
	mov	1971,r13		! source line 1971
	mov	"\0\0AS",r10
!   if intIsZero (childProcess) then goto _runtimeErrorNullPointer
	load	[r14+-212],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_632 = childProcess + 24
	load	[r14+-212],r1
	add	r1,24,r1
	store	r1,[r14+-200]
!   Data Move: *_temp_632 = childThread  (sizeInBytes=4)
	load	[r14+-216],r1
	load	[r14+-200],r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	1972,r13		! source line 1972
	mov	"\0\0AS",r10
!   if intIsZero (childProcess) then goto _runtimeErrorNullPointer
	load	[r14+-212],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_633 = childProcess + 16
	load	[r14+-212],r1
	add	r1,16,r1
	store	r1,[r14+-196]
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_636 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-184]
!   Data Move: _temp_635 = *_temp_636  (sizeInBytes=4)
	load	[r14+-184],r1
	load	[r1],r1
	store	r1,[r14+-188]
!   if intIsZero (_temp_635) then goto _runtimeErrorNullPointer
	load	[r14+-188],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_637 = _temp_635 + 12
	load	[r14+-188],r1
	add	r1,12,r1
	store	r1,[r14+-180]
!   Data Move: _temp_634 = *_temp_637  (sizeInBytes=4)
	load	[r14+-180],r1
	load	[r1],r1
	store	r1,[r14+-192]
!   Data Move: *_temp_633 = _temp_634  (sizeInBytes=4)
	load	[r14+-192],r1
	load	[r14+-196],r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	1975,r13		! source line 1975
	mov	"\0\0AS",r10
!   if intIsZero (childThread) then goto _runtimeErrorNullPointer
	load	[r14+-216],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_638 = childThread + 76
	load	[r14+-216],r1
	add	r1,76,r1
	store	r1,[r14+-176]
!   Data Move: *_temp_638 = 2  (sizeInBytes=4)
	mov	2,r1
	load	[r14+-176],r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	1976,r13		! source line 1976
	mov	"\0\0AS",r10
!   if intIsZero (childThread) then goto _runtimeErrorNullPointer
	load	[r14+-216],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_639 = childThread + 4160
	load	[r14+-216],r1
	add	r1,4160,r1
	store	r1,[r14+-172]
!   Data Move: *_temp_639 = childProcess  (sizeInBytes=4)
	load	[r14+-212],r1
	load	[r14+-172],r2
	store	r1,[r2]
! CALL STATEMENT...
!   if intIsZero (childThread) then goto _runtimeErrorNullPointer
	load	[r14+-216],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_641 = childThread + 4096
	load	[r14+-216],r1
	add	r1,4096,r1
	store	r1,[r14+-164]
!   Move address of _temp_641 [0 ] into _temp_642
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
!   _temp_640 = _temp_642		(4 bytes)
	load	[r14+-160],r1
	store	r1,[r14+-168]
!   Prepare Argument: offset=8  value=_temp_640  sizeInBytes=4
	load	[r14+-168],r1
	store	r1,[r15+0]
!   Call the function
	mov	1979,r13		! source line 1979
	mov	"\0\0CE",r10
	call	SaveUserRegs
! ASSIGNMENT STATEMENT...
	mov	1982,r13		! source line 1982
	mov	"\0\0AS",r10
!   i = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-228]
! WHILE STATEMENT...
	mov	1982,r13		! source line 1982
	mov	"\0\0WH",r10
_Label_643:
!   if i >= 10 then goto _Label_645		(int)
	load	[r14+-228],r1
	mov	10,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_645
!	jmp	_Label_644
_Label_644:
	mov	1982,r13		! source line 1982
	mov	"\0\0WB",r10
! ASSIGNMENT STATEMENT...
	mov	1983,r13		! source line 1983
	mov	"\0\0AS",r10
!   if intIsZero (childProcess) then goto _runtimeErrorNullPointer
	load	[r14+-212],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_646 = childProcess + 124
	load	[r14+-212],r1
	add	r1,124,r1
	store	r1,[r14+-156]
!   Move address of _temp_646 [i ] into _temp_647
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
!   _temp_650 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-140]
!   Data Move: _temp_649 = *_temp_650  (sizeInBytes=4)
	load	[r14+-140],r1
	load	[r1],r1
	store	r1,[r14+-144]
!   if intIsZero (_temp_649) then goto _runtimeErrorNullPointer
	load	[r14+-144],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_651 = _temp_649 + 124
	load	[r14+-144],r1
	add	r1,124,r1
	store	r1,[r14+-136]
!   Move address of _temp_651 [i ] into _temp_652
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
!   Data Move: _temp_648 = *_temp_652  (sizeInBytes=4)
	load	[r14+-132],r1
	load	[r1],r1
	store	r1,[r14+-148]
!   Data Move: *_temp_647 = _temp_648  (sizeInBytes=4)
	load	[r14+-148],r1
	load	[r14+-152],r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	1982,r13		! source line 1982
	mov	"\0\0AS",r10
!   i = i + 1		(int)
	load	[r14+-228],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-228]
! END WHILE...
	jmp	_Label_643
_Label_645:
! ASSIGNMENT STATEMENT...
	mov	1987,r13		! source line 1987
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=1  sizeInBytes=4
	mov	1,r1
	store	r1,[r15+0]
!   Call the function
	mov	1987,r13		! source line 1987
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=junk  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-232]
! ASSIGNMENT STATEMENT...
	mov	1990,r13		! source line 1990
	mov	"\0\0AS",r10
!   if intIsZero (childThread) then goto _runtimeErrorNullPointer
	load	[r14+-216],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_653 = childThread + 68
	load	[r14+-216],r1
	add	r1,68,r1
	store	r1,[r14+-128]
!   if intIsZero (childThread) then goto _runtimeErrorNullPointer
	load	[r14+-216],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_655 = childThread + 88
	load	[r14+-216],r1
	add	r1,88,r1
	store	r1,[r14+-120]
!   Move address of _temp_655 [999 ] into _temp_656
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
!   _temp_654 = _temp_656		(4 bytes)
	load	[r14+-116],r1
	store	r1,[r14+-124]
!   Data Move: *_temp_653 = _temp_654  (sizeInBytes=4)
	load	[r14+-124],r1
	load	[r14+-128],r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	1993,r13		! source line 1993
	mov	"\0\0AS",r10
!   NEW CLASS Constructor...
!   ZeroMemory: childAddrSpace = zeros  (sizeInBytes=92)
	add	r14,-332,r4
	mov	23,r3
_Label_4094:
	store	r0,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_4094
!   childAddrSpace = _P_Kernel_AddrSpace
	set	_P_Kernel_AddrSpace,r1
	store	r1,[r14+-332]
! SEND STATEMENT...
	mov	1994,r13		! source line 1994
	mov	"\0\0SE",r10
!   _temp_658 = &childAddrSpace
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
	mov	1995,r13		! source line 1995
	mov	"\0\0AS",r10
!   if intIsZero (childProcess) then goto _runtimeErrorNullPointer
	load	[r14+-212],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_659 = childProcess + 32
	load	[r14+-212],r1
	add	r1,32,r1
	store	r1,[r14+-104]
!   Data Move: *_temp_659 = childAddrSpace  (sizeInBytes=92)
	add	r14,-332,r5
	load	[r14+-104],r4
	mov	23,r3
_Label_4095:
	load	[r5],r1
	add	r5,4,r5
	store	r1,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_4095
! ASSIGNMENT STATEMENT...
	mov	1998,r13		! source line 1998
	mov	"\0\0AS",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_661 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-96]
!   Data Move: _temp_660 = *_temp_661  (sizeInBytes=4)
	load	[r14+-96],r1
	load	[r1],r1
	store	r1,[r14+-100]
!   if intIsZero (_temp_660) then goto _runtimeErrorNullPointer
	load	[r14+-100],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_662 = _temp_660 + 32
	load	[r14+-100],r1
	add	r1,32,r1
	store	r1,[r14+-92]
!   _temp_663 = _temp_662 + 4
	load	[r14+-92],r1
	add	r1,4,r1
	store	r1,[r14+-88]
!   Data Move: numPagesRequired = *_temp_663  (sizeInBytes=4)
	load	[r14+-88],r1
	load	[r1],r1
	store	r1,[r14+-236]
! SEND STATEMENT...
	mov	1999,r13		! source line 1999
	mov	"\0\0SE",r10
!   if intIsZero (childProcess) then goto _runtimeErrorNullPointer
	load	[r14+-212],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_665 = childProcess + 32
	load	[r14+-212],r1
	add	r1,32,r1
	store	r1,[r14+-80]
!   _temp_664 = _temp_665		(4 bytes)
	load	[r14+-80],r1
	store	r1,[r14+-84]
!   _temp_666 = &_P_Kernel_frameManager
	set	_P_Kernel_frameManager,r1
	store	r1,[r14+-76]
!   Prepare Argument: offset=12  value=_temp_664  sizeInBytes=4
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
	mov	2002,r13		! source line 2002
	mov	"\0\0AS",r10
!   i = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-228]
! WHILE STATEMENT...
	mov	2002,r13		! source line 2002
	mov	"\0\0WH",r10
_Label_667:
!   if i >= numPagesRequired then goto _Label_669		(int)
	load	[r14+-228],r1
	load	[r14+-236],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_669
!	jmp	_Label_668
_Label_668:
	mov	2002,r13		! source line 2002
	mov	"\0\0WB",r10
! ASSIGNMENT STATEMENT...
	mov	2003,r13		! source line 2003
	mov	"\0\0AS",r10
	mov	2003,r13		! source line 2003
	mov	"\0\0SE",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_671 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-68]
!   Data Move: _temp_670 = *_temp_671  (sizeInBytes=4)
	load	[r14+-68],r1
	load	[r1],r1
	store	r1,[r14+-72]
!   if intIsZero (_temp_670) then goto _runtimeErrorNullPointer
	load	[r14+-72],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_672 = _temp_670 + 32
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
	mov	2004,r13		! source line 2004
	mov	"\0\0AS",r10
	mov	2004,r13		! source line 2004
	mov	"\0\0SE",r10
!   if intIsZero (childProcess) then goto _runtimeErrorNullPointer
	load	[r14+-212],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_673 = childProcess + 32
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
	mov	2005,r13		! source line 2005
	mov	"\0\0CE",r10
	call	MemoryCopy
! IF STATEMENT...
	mov	2007,r13		! source line 2007
	mov	"\0\0IF",r10
	mov	2007,r13		! source line 2007
	mov	"\0\0SE",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_678 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-52]
!   Data Move: _temp_677 = *_temp_678  (sizeInBytes=4)
	load	[r14+-52],r1
	load	[r1],r1
	store	r1,[r14+-56]
!   if intIsZero (_temp_677) then goto _runtimeErrorNullPointer
	load	[r14+-56],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_679 = _temp_677 + 32
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
!   Retrieve Result: targetName=_temp_676  sizeInBytes=1
	loadb	[r15],r1
	storeb	r1,[r14+-12]
!   _temp_680 = _temp_676 XOR 1		(bool)
	loadb	[r14+-12],r1
	mov	1,r2
	xor	r1,r2,r1
	storeb	r1,[r14+-11]
!   if _temp_680 then goto _Label_675 else goto _Label_674
	loadb	[r14+-11],r1
	cmp	r1,0
	be	_Label_674
	jmp	_Label_675
_Label_674:
! THEN...
	mov	2008,r13		! source line 2008
	mov	"\0\0TN",r10
! SEND STATEMENT...
	mov	2008,r13		! source line 2008
	mov	"\0\0SE",r10
!   if intIsZero (childProcess) then goto _runtimeErrorNullPointer
	load	[r14+-212],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_681 = childProcess + 32
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
_Label_675:
! IF STATEMENT...
	mov	2011,r13		! source line 2011
	mov	"\0\0IF",r10
	mov	2011,r13		! source line 2011
	mov	"\0\0SE",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_686 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-36]
!   Data Move: _temp_685 = *_temp_686  (sizeInBytes=4)
	load	[r14+-36],r1
	load	[r1],r1
	store	r1,[r14+-40]
!   if intIsZero (_temp_685) then goto _runtimeErrorNullPointer
	load	[r14+-40],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_687 = _temp_685 + 32
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
!   Retrieve Result: targetName=_temp_684  sizeInBytes=1
	loadb	[r15],r1
	storeb	r1,[r14+-10]
!   _temp_688 = _temp_684 XOR 0		(bool)
	loadb	[r14+-10],r1
	mov	0,r2
	xor	r1,r2,r1
	storeb	r1,[r14+-9]
!   if _temp_688 then goto _Label_683 else goto _Label_682
	loadb	[r14+-9],r1
	cmp	r1,0
	be	_Label_682
	jmp	_Label_683
_Label_682:
! THEN...
	mov	2012,r13		! source line 2012
	mov	"\0\0TN",r10
! SEND STATEMENT...
	mov	2012,r13		! source line 2012
	mov	"\0\0SE",r10
!   if intIsZero (childProcess) then goto _runtimeErrorNullPointer
	load	[r14+-212],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_689 = childProcess + 32
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
_Label_683:
! ASSIGNMENT STATEMENT...
	mov	2002,r13		! source line 2002
	mov	"\0\0AS",r10
!   i = i + 1		(int)
	load	[r14+-228],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-228]
! END WHILE...
	jmp	_Label_667
_Label_669:
! ASSIGNMENT STATEMENT...
	mov	2017,r13		! source line 2017
	mov	"\0\0AS",r10
!   Call the function
	mov	2017,r13		! source line 2017
	mov	"\0\0CE",r10
	call	GetOldUserPCFromSystemStack
!   Retrieve Result: targetName=oldUserPC  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-240]
! SEND STATEMENT...
	mov	2020,r13		! source line 2020
	mov	"\0\0SE",r10
!   _temp_690 = _P_Kernel_ResumeChildAfterFork
	set	_P_Kernel_ResumeChildAfterFork,r1
	store	r1,[r14+-24]
!   if intIsZero (childThread) then goto _runtimeErrorNullPointer
	load	[r14+-216],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Prepare Argument: offset=12  value=_temp_690  sizeInBytes=4
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
	mov	2022,r13		! source line 2022
	mov	"\0\0RE",r10
!   if intIsZero (childProcess) then goto _runtimeErrorNullPointer
	load	[r14+-212],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_692 = childProcess + 12
	load	[r14+-212],r1
	add	r1,12,r1
	store	r1,[r14+-16]
!   Data Move: _temp_691 = *_temp_692  (sizeInBytes=4)
	load	[r14+-16],r1
	load	[r1],r1
	store	r1,[r14+-20]
!   ReturnResult: _temp_691  (sizeInBytes=4)
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
	.word	_Label_693
	.word	0		! total size of parameters
	.word	336		! frame size = 336
	.word	_Label_694
	.word	-16
	.word	4
	.word	_Label_695
	.word	-20
	.word	4
	.word	_Label_696
	.word	-24
	.word	4
	.word	_Label_697
	.word	-28
	.word	4
	.word	_Label_698
	.word	-9
	.word	1
	.word	_Label_699
	.word	-32
	.word	4
	.word	_Label_700
	.word	-36
	.word	4
	.word	_Label_701
	.word	-40
	.word	4
	.word	_Label_702
	.word	-10
	.word	1
	.word	_Label_703
	.word	-44
	.word	4
	.word	_Label_704
	.word	-11
	.word	1
	.word	_Label_705
	.word	-48
	.word	4
	.word	_Label_706
	.word	-52
	.word	4
	.word	_Label_707
	.word	-56
	.word	4
	.word	_Label_708
	.word	-12
	.word	1
	.word	_Label_709
	.word	-60
	.word	4
	.word	_Label_710
	.word	-64
	.word	4
	.word	_Label_711
	.word	-68
	.word	4
	.word	_Label_712
	.word	-72
	.word	4
	.word	_Label_713
	.word	-76
	.word	4
	.word	_Label_714
	.word	-80
	.word	4
	.word	_Label_715
	.word	-84
	.word	4
	.word	_Label_716
	.word	-88
	.word	4
	.word	_Label_717
	.word	-92
	.word	4
	.word	_Label_718
	.word	-96
	.word	4
	.word	_Label_719
	.word	-100
	.word	4
	.word	_Label_720
	.word	-104
	.word	4
	.word	_Label_721
	.word	-108
	.word	4
	.word	_Label_722
	.word	-112
	.word	4
	.word	_Label_723
	.word	-116
	.word	4
	.word	_Label_724
	.word	-120
	.word	4
	.word	_Label_725
	.word	-124
	.word	4
	.word	_Label_726
	.word	-128
	.word	4
	.word	_Label_727
	.word	-132
	.word	4
	.word	_Label_728
	.word	-136
	.word	4
	.word	_Label_729
	.word	-140
	.word	4
	.word	_Label_730
	.word	-144
	.word	4
	.word	_Label_731
	.word	-148
	.word	4
	.word	_Label_732
	.word	-152
	.word	4
	.word	_Label_733
	.word	-156
	.word	4
	.word	_Label_734
	.word	-160
	.word	4
	.word	_Label_735
	.word	-164
	.word	4
	.word	_Label_736
	.word	-168
	.word	4
	.word	_Label_737
	.word	-172
	.word	4
	.word	_Label_738
	.word	-176
	.word	4
	.word	_Label_739
	.word	-180
	.word	4
	.word	_Label_740
	.word	-184
	.word	4
	.word	_Label_741
	.word	-188
	.word	4
	.word	_Label_742
	.word	-192
	.word	4
	.word	_Label_743
	.word	-196
	.word	4
	.word	_Label_744
	.word	-200
	.word	4
	.word	_Label_745
	.word	-204
	.word	4
	.word	_Label_746
	.word	-208
	.word	4
	.word	_Label_747
	.word	-212
	.word	4
	.word	_Label_748
	.word	-216
	.word	4
	.word	_Label_749
	.word	-220
	.word	4
	.word	_Label_750
	.word	-224
	.word	4
	.word	_Label_751
	.word	-228
	.word	4
	.word	_Label_752
	.word	-232
	.word	4
	.word	_Label_753
	.word	-236
	.word	4
	.word	_Label_754
	.word	-240
	.word	4
	.word	_Label_755
	.word	-332
	.word	92
	.word	0
_Label_693:
	.ascii	"Handle_Sys_Fork\0"
	.align
_Label_694:
	.byte	'?'
	.ascii	"_temp_692\0"
	.align
_Label_695:
	.byte	'?'
	.ascii	"_temp_691\0"
	.align
_Label_696:
	.byte	'?'
	.ascii	"_temp_690\0"
	.align
_Label_697:
	.byte	'?'
	.ascii	"_temp_689\0"
	.align
_Label_698:
	.byte	'C'
	.ascii	"_temp_688\0"
	.align
_Label_699:
	.byte	'?'
	.ascii	"_temp_687\0"
	.align
_Label_700:
	.byte	'?'
	.ascii	"_temp_686\0"
	.align
_Label_701:
	.byte	'?'
	.ascii	"_temp_685\0"
	.align
_Label_702:
	.byte	'C'
	.ascii	"_temp_684\0"
	.align
_Label_703:
	.byte	'?'
	.ascii	"_temp_681\0"
	.align
_Label_704:
	.byte	'C'
	.ascii	"_temp_680\0"
	.align
_Label_705:
	.byte	'?'
	.ascii	"_temp_679\0"
	.align
_Label_706:
	.byte	'?'
	.ascii	"_temp_678\0"
	.align
_Label_707:
	.byte	'?'
	.ascii	"_temp_677\0"
	.align
_Label_708:
	.byte	'C'
	.ascii	"_temp_676\0"
	.align
_Label_709:
	.byte	'?'
	.ascii	"_temp_673\0"
	.align
_Label_710:
	.byte	'?'
	.ascii	"_temp_672\0"
	.align
_Label_711:
	.byte	'?'
	.ascii	"_temp_671\0"
	.align
_Label_712:
	.byte	'?'
	.ascii	"_temp_670\0"
	.align
_Label_713:
	.byte	'?'
	.ascii	"_temp_666\0"
	.align
_Label_714:
	.byte	'?'
	.ascii	"_temp_665\0"
	.align
_Label_715:
	.byte	'?'
	.ascii	"_temp_664\0"
	.align
_Label_716:
	.byte	'?'
	.ascii	"_temp_663\0"
	.align
_Label_717:
	.byte	'?'
	.ascii	"_temp_662\0"
	.align
_Label_718:
	.byte	'?'
	.ascii	"_temp_661\0"
	.align
_Label_719:
	.byte	'?'
	.ascii	"_temp_660\0"
	.align
_Label_720:
	.byte	'?'
	.ascii	"_temp_659\0"
	.align
_Label_721:
	.byte	'?'
	.ascii	"_temp_658\0"
	.align
_Label_722:
	.byte	'?'
	.ascii	"_temp_657\0"
	.align
_Label_723:
	.byte	'?'
	.ascii	"_temp_656\0"
	.align
_Label_724:
	.byte	'?'
	.ascii	"_temp_655\0"
	.align
_Label_725:
	.byte	'?'
	.ascii	"_temp_654\0"
	.align
_Label_726:
	.byte	'?'
	.ascii	"_temp_653\0"
	.align
_Label_727:
	.byte	'?'
	.ascii	"_temp_652\0"
	.align
_Label_728:
	.byte	'?'
	.ascii	"_temp_651\0"
	.align
_Label_729:
	.byte	'?'
	.ascii	"_temp_650\0"
	.align
_Label_730:
	.byte	'?'
	.ascii	"_temp_649\0"
	.align
_Label_731:
	.byte	'?'
	.ascii	"_temp_648\0"
	.align
_Label_732:
	.byte	'?'
	.ascii	"_temp_647\0"
	.align
_Label_733:
	.byte	'?'
	.ascii	"_temp_646\0"
	.align
_Label_734:
	.byte	'?'
	.ascii	"_temp_642\0"
	.align
_Label_735:
	.byte	'?'
	.ascii	"_temp_641\0"
	.align
_Label_736:
	.byte	'?'
	.ascii	"_temp_640\0"
	.align
_Label_737:
	.byte	'?'
	.ascii	"_temp_639\0"
	.align
_Label_738:
	.byte	'?'
	.ascii	"_temp_638\0"
	.align
_Label_739:
	.byte	'?'
	.ascii	"_temp_637\0"
	.align
_Label_740:
	.byte	'?'
	.ascii	"_temp_636\0"
	.align
_Label_741:
	.byte	'?'
	.ascii	"_temp_635\0"
	.align
_Label_742:
	.byte	'?'
	.ascii	"_temp_634\0"
	.align
_Label_743:
	.byte	'?'
	.ascii	"_temp_633\0"
	.align
_Label_744:
	.byte	'?'
	.ascii	"_temp_632\0"
	.align
_Label_745:
	.byte	'?'
	.ascii	"_temp_631\0"
	.align
_Label_746:
	.byte	'?'
	.ascii	"_temp_630\0"
	.align
_Label_747:
	.byte	'P'
	.ascii	"childProcess\0"
	.align
_Label_748:
	.byte	'P'
	.ascii	"childThread\0"
	.align
_Label_749:
	.byte	'I'
	.ascii	"childFrameAddress\0"
	.align
_Label_750:
	.byte	'I'
	.ascii	"parentFrameAddress\0"
	.align
_Label_751:
	.byte	'I'
	.ascii	"i\0"
	.align
_Label_752:
	.byte	'I'
	.ascii	"junk\0"
	.align
_Label_753:
	.byte	'I'
	.ascii	"numPagesRequired\0"
	.align
_Label_754:
	.byte	'I'
	.ascii	"oldUserPC\0"
	.align
_Label_755:
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
_Label_4096:
	push	r0
	sub	r1,1,r1
	bne	_Label_4096
	mov	2028,r13		! source line 2028
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	2034,r13		! source line 2034
	mov	"\0\0AS",r10
!   i = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-92]
! WHILE STATEMENT...
	mov	2034,r13		! source line 2034
	mov	"\0\0WH",r10
_Label_756:
!   if i >= 10 then goto _Label_758		(int)
	load	[r14+-92],r1
	mov	10,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_758
!	jmp	_Label_757
_Label_757:
	mov	2034,r13		! source line 2034
	mov	"\0\0WB",r10
! IF STATEMENT...
	mov	2036,r13		! source line 2036
	mov	"\0\0IF",r10
!   _temp_763 = &_P_Kernel_processManager
	set	_P_Kernel_processManager,r1
	store	r1,[r14+-84]
!   _temp_764 = _temp_763 + 8
	load	[r14+-84],r1
	add	r1,8,r1
	store	r1,[r14+-80]
!   Move address of _temp_764 [i ] into _temp_765
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
!   _temp_766 = _temp_765 + 12
	load	[r14+-76],r1
	add	r1,12,r1
	store	r1,[r14+-72]
!   Data Move: _temp_762 = *_temp_766  (sizeInBytes=4)
	load	[r14+-72],r1
	load	[r1],r1
	store	r1,[r14+-88]
!   if processID != _temp_762 then goto _Label_760		(int)
	load	[r14+8],r1
	load	[r14+-88],r2
	cmp	r1,r2
	bne	_Label_760
!	jmp	_Label_761
_Label_761:
!   if processID <= -1 then goto _Label_760		(int)
	load	[r14+8],r1
	mov	-1,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	ble	_Label_760
!	jmp	_Label_759
_Label_759:
! THEN...
	mov	2039,r13		! source line 2039
	mov	"\0\0TN",r10
! IF STATEMENT...
	mov	2039,r13		! source line 2039
	mov	"\0\0IF",r10
!   _temp_770 = &_P_Kernel_processManager
	set	_P_Kernel_processManager,r1
	store	r1,[r14+-64]
!   _temp_771 = _temp_770 + 8
	load	[r14+-64],r1
	add	r1,8,r1
	store	r1,[r14+-60]
!   Move address of _temp_771 [i ] into _temp_772
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
!   _temp_773 = _temp_772 + 16
	load	[r14+-56],r1
	add	r1,16,r1
	store	r1,[r14+-52]
!   Data Move: _temp_769 = *_temp_773  (sizeInBytes=4)
	load	[r14+-52],r1
	load	[r1],r1
	store	r1,[r14+-68]
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_776 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-40]
!   Data Move: _temp_775 = *_temp_776  (sizeInBytes=4)
	load	[r14+-40],r1
	load	[r1],r1
	store	r1,[r14+-44]
!   if intIsZero (_temp_775) then goto _runtimeErrorNullPointer
	load	[r14+-44],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_777 = _temp_775 + 12
	load	[r14+-44],r1
	add	r1,12,r1
	store	r1,[r14+-36]
!   Data Move: _temp_774 = *_temp_777  (sizeInBytes=4)
	load	[r14+-36],r1
	load	[r1],r1
	store	r1,[r14+-48]
!   if _temp_769 != _temp_774 then goto _Label_768		(int)
	load	[r14+-68],r1
	load	[r14+-48],r2
	cmp	r1,r2
	bne	_Label_768
!	jmp	_Label_767
_Label_767:
! THEN...
	mov	2041,r13		! source line 2041
	mov	"\0\0TN",r10
! RETURN STATEMENT...
	mov	2041,r13		! source line 2041
	mov	"\0\0RE",r10
	mov	2041,r13		! source line 2041
	mov	"\0\0SE",r10
!   _temp_780 = &_P_Kernel_processManager
	set	_P_Kernel_processManager,r1
	store	r1,[r14+-24]
!   _temp_781 = _temp_780 + 8
	load	[r14+-24],r1
	add	r1,8,r1
	store	r1,[r14+-20]
!   Move address of _temp_781 [i ] into _temp_782
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
!   _temp_779 = _temp_782		(4 bytes)
	load	[r14+-16],r1
	store	r1,[r14+-28]
!   _temp_783 = &_P_Kernel_processManager
	set	_P_Kernel_processManager,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=12  value=_temp_779  sizeInBytes=4
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
!   Retrieve Result: targetName=_temp_778  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-32]
!   ReturnResult: _temp_778  (sizeInBytes=4)
	load	[r14+-32],r1
	store	r1,[r14+8]
	add	r15,96,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_768:
! END IF...
_Label_760:
! ASSIGNMENT STATEMENT...
	mov	2034,r13		! source line 2034
	mov	"\0\0AS",r10
!   i = i + 1		(int)
	load	[r14+-92],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-92]
! END WHILE...
	jmp	_Label_756
_Label_758:
! RETURN STATEMENT...
	mov	2046,r13		! source line 2046
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
	.word	_Label_784
	.word	4		! total size of parameters
	.word	92		! frame size = 92
	.word	_Label_785
	.word	8
	.word	4
	.word	_Label_786
	.word	-12
	.word	4
	.word	_Label_787
	.word	-16
	.word	4
	.word	_Label_788
	.word	-20
	.word	4
	.word	_Label_789
	.word	-24
	.word	4
	.word	_Label_790
	.word	-28
	.word	4
	.word	_Label_791
	.word	-32
	.word	4
	.word	_Label_792
	.word	-36
	.word	4
	.word	_Label_793
	.word	-40
	.word	4
	.word	_Label_794
	.word	-44
	.word	4
	.word	_Label_795
	.word	-48
	.word	4
	.word	_Label_796
	.word	-52
	.word	4
	.word	_Label_797
	.word	-56
	.word	4
	.word	_Label_798
	.word	-60
	.word	4
	.word	_Label_799
	.word	-64
	.word	4
	.word	_Label_800
	.word	-68
	.word	4
	.word	_Label_801
	.word	-72
	.word	4
	.word	_Label_802
	.word	-76
	.word	4
	.word	_Label_803
	.word	-80
	.word	4
	.word	_Label_804
	.word	-84
	.word	4
	.word	_Label_805
	.word	-88
	.word	4
	.word	_Label_806
	.word	-92
	.word	4
	.word	0
_Label_784:
	.ascii	"Handle_Sys_Join\0"
	.align
_Label_785:
	.byte	'I'
	.ascii	"processID\0"
	.align
_Label_786:
	.byte	'?'
	.ascii	"_temp_783\0"
	.align
_Label_787:
	.byte	'?'
	.ascii	"_temp_782\0"
	.align
_Label_788:
	.byte	'?'
	.ascii	"_temp_781\0"
	.align
_Label_789:
	.byte	'?'
	.ascii	"_temp_780\0"
	.align
_Label_790:
	.byte	'?'
	.ascii	"_temp_779\0"
	.align
_Label_791:
	.byte	'?'
	.ascii	"_temp_778\0"
	.align
_Label_792:
	.byte	'?'
	.ascii	"_temp_777\0"
	.align
_Label_793:
	.byte	'?'
	.ascii	"_temp_776\0"
	.align
_Label_794:
	.byte	'?'
	.ascii	"_temp_775\0"
	.align
_Label_795:
	.byte	'?'
	.ascii	"_temp_774\0"
	.align
_Label_796:
	.byte	'?'
	.ascii	"_temp_773\0"
	.align
_Label_797:
	.byte	'?'
	.ascii	"_temp_772\0"
	.align
_Label_798:
	.byte	'?'
	.ascii	"_temp_771\0"
	.align
_Label_799:
	.byte	'?'
	.ascii	"_temp_770\0"
	.align
_Label_800:
	.byte	'?'
	.ascii	"_temp_769\0"
	.align
_Label_801:
	.byte	'?'
	.ascii	"_temp_766\0"
	.align
_Label_802:
	.byte	'?'
	.ascii	"_temp_765\0"
	.align
_Label_803:
	.byte	'?'
	.ascii	"_temp_764\0"
	.align
_Label_804:
	.byte	'?'
	.ascii	"_temp_763\0"
	.align
_Label_805:
	.byte	'?'
	.ascii	"_temp_762\0"
	.align
_Label_806:
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
_Label_4097:
	push	r0
	sub	r1,1,r1
	bne	_Label_4097
	mov	2051,r13		! source line 2051
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	2067,r13		! source line 2067
	mov	"\0\0AS",r10
!   _temp_807 = &container
	add	r14,-320,r1
	store	r1,[r14+-200]
!   NEW ARRAY Constructor...
!   _temp_809 = &_temp_808
	add	r14,-196,r1
	store	r1,[r14+-172]
!   _temp_809 = _temp_809 + 4
	load	[r14+-172],r1
	add	r1,4,r1
	store	r1,[r14+-172]
!   Next value...
	mov	20,r1
	store	r1,[r14+-168]
_Label_811:
!   Data Move: *_temp_809 = 97  (sizeInBytes=1)
	mov	97,r1
	load	[r14+-172],r2
	storeb	r1,[r2]
!   _temp_809 = _temp_809 + 1
	load	[r14+-172],r1
	add	r1,1,r1
	store	r1,[r14+-172]
!   _temp_810 = _temp_810 + -1
	load	[r14+-168],r1
	add	r1,-1,r1
	store	r1,[r14+-168]
!   if intNotZero (_temp_810) then goto _Label_811
	load	[r14+-168],r1
	cmp	r1,r0
	bne	_Label_811
!   Initialize the array size...
	mov	20,r1
	store	r1,[r14+-196]
!   _temp_812 = &_temp_808
	add	r14,-196,r1
	store	r1,[r14+-164]
!   make sure array has size 20
	load	[r14+-200],r1
	load	[r1],r1
	set	20, r2
	cmp	r1,0
	be	_Label_4098
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bne	_runtimeErrorWrongArraySize
_Label_4098:
!   make sure array has size 20
	load	[r14+-164],r1
	load	[r1],r1
	set	20, r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bne	_runtimeErrorWrongArraySize
!   Data Move: *_temp_807 = *_temp_812  (sizeInBytes=24)
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
	mov	2068,r13		! source line 2068
	mov	"\0\0AS",r10
!   filenamePointer = &container
	add	r14,-320,r1
	store	r1,[r14+-324]
! ASSIGNMENT STATEMENT...
	mov	2071,r13		! source line 2071
	mov	"\0\0AS",r10
	mov	2071,r13		! source line 2071
	mov	"\0\0SE",r10
!   _temp_813 = filename		(4 bytes)
	load	[r14+8],r1
	store	r1,[r14+-160]
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_815 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-152]
!   Data Move: _temp_814 = *_temp_815  (sizeInBytes=4)
	load	[r14+-152],r1
	load	[r1],r1
	store	r1,[r14+-156]
!   if intIsZero (_temp_814) then goto _runtimeErrorNullPointer
	load	[r14+-156],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_816 = _temp_814 + 32
	load	[r14+-156],r1
	add	r1,32,r1
	store	r1,[r14+-148]
!   Prepare Argument: offset=12  value=filenamePointer  sizeInBytes=4
	load	[r14+-324],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=_temp_813  sizeInBytes=4
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
	mov	2074,r13		! source line 2074
	mov	"\0\0AS",r10
!   NEW CLASS Constructor...
!   ZeroMemory: newAddrSpace = zeros  (sizeInBytes=92)
	add	r14,-292,r4
	mov	23,r3
_Label_4099:
	store	r0,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_4099
!   newAddrSpace = _P_Kernel_AddrSpace
	set	_P_Kernel_AddrSpace,r1
	store	r1,[r14+-292]
! SEND STATEMENT...
	mov	2075,r13		! source line 2075
	mov	"\0\0SE",r10
!   _temp_818 = &newAddrSpace
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
	mov	2078,r13		! source line 2078
	mov	"\0\0AS",r10
	mov	2078,r13		! source line 2078
	mov	"\0\0SE",r10
!   _temp_819 = &_P_Kernel_fileManager
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
	mov	2081,r13		! source line 2081
	mov	"\0\0IF",r10
!   if intIsZero (openFile) then goto _Label_820
	load	[r14+-296],r1
	cmp	r1,r0
	be	_Label_820
	jmp	_Label_821
_Label_820:
! THEN...
	mov	2082,r13		! source line 2082
	mov	"\0\0TN",r10
! RETURN STATEMENT...
	mov	2082,r13		! source line 2082
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,364,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_821:
! ASSIGNMENT STATEMENT...
	mov	2086,r13		! source line 2086
	mov	"\0\0AS",r10
	mov	2086,r13		! source line 2086
	mov	"\0\0SE",r10
!   _temp_822 = &newAddrSpace
	add	r14,-292,r1
	store	r1,[r14+-132]
!   if intIsZero (openFile) then goto _runtimeErrorNullPointer
	load	[r14+-296],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Prepare Argument: offset=12  value=_temp_822  sizeInBytes=4
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
	mov	2089,r13		! source line 2089
	mov	"\0\0IF",r10
!   if initUserPC != -1 then goto _Label_824		(int)
	load	[r14+-332],r1
	mov	-1,r2
	cmp	r1,r2
	bne	_Label_824
!	jmp	_Label_823
_Label_823:
! THEN...
	mov	2090,r13		! source line 2090
	mov	"\0\0TN",r10
! RETURN STATEMENT...
	mov	2090,r13		! source line 2090
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,364,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_824:
! ASSIGNMENT STATEMENT...
	mov	2094,r13		! source line 2094
	mov	"\0\0AS",r10
!   emptySlotFound = 0		(1 byte)
	mov	0,r1
	storeb	r1,[r14+-10]
! ASSIGNMENT STATEMENT...
	mov	2095,r13		! source line 2095
	mov	"\0\0AS",r10
!   i = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-348]
! WHILE STATEMENT...
	mov	2095,r13		! source line 2095
	mov	"\0\0WH",r10
_Label_825:
!   if i >= 10 then goto _Label_827		(int)
	load	[r14+-348],r1
	mov	10,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_827
!	jmp	_Label_826
_Label_826:
	mov	2095,r13		! source line 2095
	mov	"\0\0WB",r10
! IF STATEMENT...
	mov	2096,r13		! source line 2096
	mov	"\0\0IF",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_832 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-120]
!   Data Move: _temp_831 = *_temp_832  (sizeInBytes=4)
	load	[r14+-120],r1
	load	[r1],r1
	store	r1,[r14+-124]
!   if intIsZero (_temp_831) then goto _runtimeErrorNullPointer
	load	[r14+-124],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_833 = _temp_831 + 124
	load	[r14+-124],r1
	add	r1,124,r1
	store	r1,[r14+-116]
!   Move address of _temp_833 [i ] into _temp_834
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
!   Data Move: _temp_830 = *_temp_834  (sizeInBytes=4)
	load	[r14+-112],r1
	load	[r1],r1
	store	r1,[r14+-128]
!   if intIsZero (_temp_830) then goto _Label_828
	load	[r14+-128],r1
	cmp	r1,r0
	be	_Label_828
	jmp	_Label_829
_Label_828:
! THEN...
	mov	2097,r13		! source line 2097
	mov	"\0\0TN",r10
! ASSIGNMENT STATEMENT...
	mov	2097,r13		! source line 2097
	mov	"\0\0AS",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_836 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-104]
!   Data Move: _temp_835 = *_temp_836  (sizeInBytes=4)
	load	[r14+-104],r1
	load	[r1],r1
	store	r1,[r14+-108]
!   if intIsZero (_temp_835) then goto _runtimeErrorNullPointer
	load	[r14+-108],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_837 = _temp_835 + 124
	load	[r14+-108],r1
	add	r1,124,r1
	store	r1,[r14+-100]
!   Move address of _temp_837 [i ] into _temp_838
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
!   Data Move: *_temp_838 = openFilePtr  (sizeInBytes=4)
	load	[r14+-352],r1
	load	[r14+-96],r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	2098,r13		! source line 2098
	mov	"\0\0AS",r10
!   emptySlotFound = 1		(1 byte)
	mov	1,r1
	storeb	r1,[r14+-10]
! BREAK STATEMENT...
	mov	2099,r13		! source line 2099
	mov	"\0\0BR",r10
	jmp	_Label_827
! END IF...
_Label_829:
! ASSIGNMENT STATEMENT...
	mov	2095,r13		! source line 2095
	mov	"\0\0AS",r10
!   i = i + 1		(int)
	load	[r14+-348],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-348]
! END WHILE...
	jmp	_Label_825
_Label_827:
! IF STATEMENT...
	mov	2104,r13		! source line 2104
	mov	"\0\0IF",r10
!   _temp_841 = emptySlotFound XOR 0		(bool)
	loadb	[r14+-10],r1
	mov	0,r2
	xor	r1,r2,r1
	storeb	r1,[r14+-9]
!   if _temp_841 then goto _Label_840 else goto _Label_839
	loadb	[r14+-9],r1
	cmp	r1,0
	be	_Label_839
	jmp	_Label_840
_Label_839:
! THEN...
	mov	2105,r13		! source line 2105
	mov	"\0\0TN",r10
! RETURN STATEMENT...
	mov	2105,r13		! source line 2105
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,364,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_840:
! SEND STATEMENT...
	mov	2109,r13		! source line 2109
	mov	"\0\0SE",r10
!   _temp_842 = &_P_Kernel_fileManager
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
	mov	2112,r13		! source line 2112
	mov	"\0\0SE",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_845 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-80]
!   Data Move: _temp_844 = *_temp_845  (sizeInBytes=4)
	load	[r14+-80],r1
	load	[r1],r1
	store	r1,[r14+-84]
!   if intIsZero (_temp_844) then goto _runtimeErrorNullPointer
	load	[r14+-84],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_846 = _temp_844 + 32
	load	[r14+-84],r1
	add	r1,32,r1
	store	r1,[r14+-76]
!   _temp_843 = _temp_846		(4 bytes)
	load	[r14+-76],r1
	store	r1,[r14+-88]
!   _temp_847 = &_P_Kernel_frameManager
	set	_P_Kernel_frameManager,r1
	store	r1,[r14+-72]
!   Prepare Argument: offset=12  value=_temp_843  sizeInBytes=4
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
	mov	2115,r13		! source line 2115
	mov	"\0\0AS",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_849 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-64]
!   Data Move: _temp_848 = *_temp_849  (sizeInBytes=4)
	load	[r14+-64],r1
	load	[r1],r1
	store	r1,[r14+-68]
!   if intIsZero (_temp_848) then goto _runtimeErrorNullPointer
	load	[r14+-68],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_850 = _temp_848 + 32
	load	[r14+-68],r1
	add	r1,32,r1
	store	r1,[r14+-60]
!   Data Move: *_temp_850 = newAddrSpace  (sizeInBytes=92)
	add	r14,-292,r5
	load	[r14+-60],r4
	mov	23,r3
_Label_4100:
	load	[r5],r1
	add	r5,4,r5
	store	r1,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_4100
! ASSIGNMENT STATEMENT...
	mov	2118,r13		! source line 2118
	mov	"\0\0AS",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_853 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-48]
!   Data Move: _temp_852 = *_temp_853  (sizeInBytes=4)
	load	[r14+-48],r1
	load	[r1],r1
	store	r1,[r14+-52]
!   if intIsZero (_temp_852) then goto _runtimeErrorNullPointer
	load	[r14+-52],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_854 = _temp_852 + 32
	load	[r14+-52],r1
	add	r1,32,r1
	store	r1,[r14+-44]
!   _temp_855 = _temp_854 + 4
	load	[r14+-44],r1
	add	r1,4,r1
	store	r1,[r14+-40]
!   Data Move: _temp_851 = *_temp_855  (sizeInBytes=4)
	load	[r14+-40],r1
	load	[r1],r1
	store	r1,[r14+-56]
!   initUserStackTop = _temp_851 * 8192		(int)
	load	[r14+-56],r1
	mov	8192,r2
	mul	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-336]
! ASSIGNMENT STATEMENT...
	mov	2121,r13		! source line 2121
	mov	"\0\0AS",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_856 = _P_Kernel_currentThread + 88
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,88,r1
	store	r1,[r14+-36]
!   Move address of _temp_856 [999 ] into _temp_857
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
!   initSystemStackTop = _temp_857		(4 bytes)
	load	[r14+-32],r1
	store	r1,[r14+-340]
! ASSIGNMENT STATEMENT...
	mov	2124,r13		! source line 2124
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=2  sizeInBytes=4
	mov	2,r1
	store	r1,[r15+0]
!   Call the function
	mov	2124,r13		! source line 2124
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=junk  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-344]
! SEND STATEMENT...
	mov	2125,r13		! source line 2125
	mov	"\0\0SE",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_859 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-24]
!   Data Move: _temp_858 = *_temp_859  (sizeInBytes=4)
	load	[r14+-24],r1
	load	[r1],r1
	store	r1,[r14+-28]
!   if intIsZero (_temp_858) then goto _runtimeErrorNullPointer
	load	[r14+-28],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_860 = _temp_858 + 32
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
	mov	2126,r13		! source line 2126
	mov	"\0\0AS",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_861 = _P_Kernel_currentThread + 4092
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4092,r1
	store	r1,[r14+-16]
!   Data Move: *_temp_861 = 1  (sizeInBytes=1)
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
	mov	2128,r13		! source line 2128
	mov	"\0\0CE",r10
	call	BecomeUserThread
! RETURN STATEMENT...
	mov	2130,r13		! source line 2130
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
	.word	_Label_862
	.word	4		! total size of parameters
	.word	360		! frame size = 360
	.word	_Label_863
	.word	8
	.word	4
	.word	_Label_864
	.word	-16
	.word	4
	.word	_Label_865
	.word	-20
	.word	4
	.word	_Label_866
	.word	-24
	.word	4
	.word	_Label_867
	.word	-28
	.word	4
	.word	_Label_868
	.word	-32
	.word	4
	.word	_Label_869
	.word	-36
	.word	4
	.word	_Label_870
	.word	-40
	.word	4
	.word	_Label_871
	.word	-44
	.word	4
	.word	_Label_872
	.word	-48
	.word	4
	.word	_Label_873
	.word	-52
	.word	4
	.word	_Label_874
	.word	-56
	.word	4
	.word	_Label_875
	.word	-60
	.word	4
	.word	_Label_876
	.word	-64
	.word	4
	.word	_Label_877
	.word	-68
	.word	4
	.word	_Label_878
	.word	-72
	.word	4
	.word	_Label_879
	.word	-76
	.word	4
	.word	_Label_880
	.word	-80
	.word	4
	.word	_Label_881
	.word	-84
	.word	4
	.word	_Label_882
	.word	-88
	.word	4
	.word	_Label_883
	.word	-92
	.word	4
	.word	_Label_884
	.word	-9
	.word	1
	.word	_Label_885
	.word	-96
	.word	4
	.word	_Label_886
	.word	-100
	.word	4
	.word	_Label_887
	.word	-104
	.word	4
	.word	_Label_888
	.word	-108
	.word	4
	.word	_Label_889
	.word	-112
	.word	4
	.word	_Label_890
	.word	-116
	.word	4
	.word	_Label_891
	.word	-120
	.word	4
	.word	_Label_892
	.word	-124
	.word	4
	.word	_Label_893
	.word	-128
	.word	4
	.word	_Label_894
	.word	-132
	.word	4
	.word	_Label_895
	.word	-136
	.word	4
	.word	_Label_896
	.word	-140
	.word	4
	.word	_Label_897
	.word	-144
	.word	4
	.word	_Label_898
	.word	-148
	.word	4
	.word	_Label_899
	.word	-152
	.word	4
	.word	_Label_900
	.word	-156
	.word	4
	.word	_Label_901
	.word	-160
	.word	4
	.word	_Label_902
	.word	-164
	.word	4
	.word	_Label_903
	.word	-168
	.word	4
	.word	_Label_904
	.word	-172
	.word	4
	.word	_Label_905
	.word	-196
	.word	24
	.word	_Label_906
	.word	-200
	.word	4
	.word	_Label_907
	.word	-292
	.word	92
	.word	_Label_908
	.word	-296
	.word	4
	.word	_Label_909
	.word	-320
	.word	24
	.word	_Label_910
	.word	-324
	.word	4
	.word	_Label_911
	.word	-328
	.word	4
	.word	_Label_912
	.word	-332
	.word	4
	.word	_Label_913
	.word	-336
	.word	4
	.word	_Label_914
	.word	-340
	.word	4
	.word	_Label_915
	.word	-344
	.word	4
	.word	_Label_916
	.word	-10
	.word	1
	.word	_Label_917
	.word	-348
	.word	4
	.word	_Label_918
	.word	-352
	.word	4
	.word	0
_Label_862:
	.ascii	"Handle_Sys_Exec\0"
	.align
_Label_863:
	.byte	'P'
	.ascii	"filename\0"
	.align
_Label_864:
	.byte	'?'
	.ascii	"_temp_861\0"
	.align
_Label_865:
	.byte	'?'
	.ascii	"_temp_860\0"
	.align
_Label_866:
	.byte	'?'
	.ascii	"_temp_859\0"
	.align
_Label_867:
	.byte	'?'
	.ascii	"_temp_858\0"
	.align
_Label_868:
	.byte	'?'
	.ascii	"_temp_857\0"
	.align
_Label_869:
	.byte	'?'
	.ascii	"_temp_856\0"
	.align
_Label_870:
	.byte	'?'
	.ascii	"_temp_855\0"
	.align
_Label_871:
	.byte	'?'
	.ascii	"_temp_854\0"
	.align
_Label_872:
	.byte	'?'
	.ascii	"_temp_853\0"
	.align
_Label_873:
	.byte	'?'
	.ascii	"_temp_852\0"
	.align
_Label_874:
	.byte	'?'
	.ascii	"_temp_851\0"
	.align
_Label_875:
	.byte	'?'
	.ascii	"_temp_850\0"
	.align
_Label_876:
	.byte	'?'
	.ascii	"_temp_849\0"
	.align
_Label_877:
	.byte	'?'
	.ascii	"_temp_848\0"
	.align
_Label_878:
	.byte	'?'
	.ascii	"_temp_847\0"
	.align
_Label_879:
	.byte	'?'
	.ascii	"_temp_846\0"
	.align
_Label_880:
	.byte	'?'
	.ascii	"_temp_845\0"
	.align
_Label_881:
	.byte	'?'
	.ascii	"_temp_844\0"
	.align
_Label_882:
	.byte	'?'
	.ascii	"_temp_843\0"
	.align
_Label_883:
	.byte	'?'
	.ascii	"_temp_842\0"
	.align
_Label_884:
	.byte	'C'
	.ascii	"_temp_841\0"
	.align
_Label_885:
	.byte	'?'
	.ascii	"_temp_838\0"
	.align
_Label_886:
	.byte	'?'
	.ascii	"_temp_837\0"
	.align
_Label_887:
	.byte	'?'
	.ascii	"_temp_836\0"
	.align
_Label_888:
	.byte	'?'
	.ascii	"_temp_835\0"
	.align
_Label_889:
	.byte	'?'
	.ascii	"_temp_834\0"
	.align
_Label_890:
	.byte	'?'
	.ascii	"_temp_833\0"
	.align
_Label_891:
	.byte	'?'
	.ascii	"_temp_832\0"
	.align
_Label_892:
	.byte	'?'
	.ascii	"_temp_831\0"
	.align
_Label_893:
	.byte	'?'
	.ascii	"_temp_830\0"
	.align
_Label_894:
	.byte	'?'
	.ascii	"_temp_822\0"
	.align
_Label_895:
	.byte	'?'
	.ascii	"_temp_819\0"
	.align
_Label_896:
	.byte	'?'
	.ascii	"_temp_818\0"
	.align
_Label_897:
	.byte	'?'
	.ascii	"_temp_817\0"
	.align
_Label_898:
	.byte	'?'
	.ascii	"_temp_816\0"
	.align
_Label_899:
	.byte	'?'
	.ascii	"_temp_815\0"
	.align
_Label_900:
	.byte	'?'
	.ascii	"_temp_814\0"
	.align
_Label_901:
	.byte	'?'
	.ascii	"_temp_813\0"
	.align
_Label_902:
	.byte	'?'
	.ascii	"_temp_812\0"
	.align
_Label_903:
	.byte	'?'
	.ascii	"_temp_810\0"
	.align
_Label_904:
	.byte	'?'
	.ascii	"_temp_809\0"
	.align
_Label_905:
	.byte	'?'
	.ascii	"_temp_808\0"
	.align
_Label_906:
	.byte	'?'
	.ascii	"_temp_807\0"
	.align
_Label_907:
	.byte	'O'
	.ascii	"newAddrSpace\0"
	.align
_Label_908:
	.byte	'P'
	.ascii	"openFile\0"
	.align
_Label_909:
	.byte	'A'
	.ascii	"container\0"
	.align
_Label_910:
	.byte	'P'
	.ascii	"filenamePointer\0"
	.align
_Label_911:
	.byte	'I'
	.ascii	"numOfCharCopied\0"
	.align
_Label_912:
	.byte	'I'
	.ascii	"initUserPC\0"
	.align
_Label_913:
	.byte	'I'
	.ascii	"initUserStackTop\0"
	.align
_Label_914:
	.byte	'I'
	.ascii	"initSystemStackTop\0"
	.align
_Label_915:
	.byte	'I'
	.ascii	"junk\0"
	.align
_Label_916:
	.byte	'B'
	.ascii	"emptySlotFound\0"
	.align
_Label_917:
	.byte	'I'
	.ascii	"i\0"
	.align
_Label_918:
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
_Label_4101:
	push	r0
	sub	r1,1,r1
	bne	_Label_4101
	mov	2135,r13		! source line 2135
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	2140,r13		! source line 2140
	mov	"\0\0AS",r10
!   _temp_919 = &container
	add	r14,-104,r1
	store	r1,[r14+-76]
!   NEW ARRAY Constructor...
!   _temp_921 = &_temp_920
	add	r14,-72,r1
	store	r1,[r14+-48]
!   _temp_921 = _temp_921 + 4
	load	[r14+-48],r1
	add	r1,4,r1
	store	r1,[r14+-48]
!   Next value...
	mov	20,r1
	store	r1,[r14+-44]
_Label_923:
!   Data Move: *_temp_921 = 97  (sizeInBytes=1)
	mov	97,r1
	load	[r14+-48],r2
	storeb	r1,[r2]
!   _temp_921 = _temp_921 + 1
	load	[r14+-48],r1
	add	r1,1,r1
	store	r1,[r14+-48]
!   _temp_922 = _temp_922 + -1
	load	[r14+-44],r1
	add	r1,-1,r1
	store	r1,[r14+-44]
!   if intNotZero (_temp_922) then goto _Label_923
	load	[r14+-44],r1
	cmp	r1,r0
	bne	_Label_923
!   Initialize the array size...
	mov	20,r1
	store	r1,[r14+-72]
!   _temp_924 = &_temp_920
	add	r14,-72,r1
	store	r1,[r14+-40]
!   make sure array has size 20
	load	[r14+-76],r1
	load	[r1],r1
	set	20, r2
	cmp	r1,0
	be	_Label_4102
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bne	_runtimeErrorWrongArraySize
_Label_4102:
!   make sure array has size 20
	load	[r14+-40],r1
	load	[r1],r1
	set	20, r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bne	_runtimeErrorWrongArraySize
!   Data Move: *_temp_919 = *_temp_924  (sizeInBytes=24)
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
	mov	2141,r13		! source line 2141
	mov	"\0\0AS",r10
!   kernelAddr = &container
	add	r14,-104,r1
	store	r1,[r14+-108]
! ASSIGNMENT STATEMENT...
	mov	2142,r13		! source line 2142
	mov	"\0\0AS",r10
	mov	2142,r13		! source line 2142
	mov	"\0\0SE",r10
!   _temp_925 = filename		(4 bytes)
	load	[r14+8],r1
	store	r1,[r14+-36]
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_927 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-28]
!   Data Move: _temp_926 = *_temp_927  (sizeInBytes=4)
	load	[r14+-28],r1
	load	[r1],r1
	store	r1,[r14+-32]
!   if intIsZero (_temp_926) then goto _runtimeErrorNullPointer
	load	[r14+-32],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_928 = _temp_926 + 32
	load	[r14+-32],r1
	add	r1,32,r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=12  value=kernelAddr  sizeInBytes=4
	load	[r14+-108],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=_temp_925  sizeInBytes=4
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
!   _temp_929 = _StringConst_42
	set	_StringConst_42,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_929  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   Call the function
	mov	2143,r13		! source line 2143
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_930 = _StringConst_43
	set	_StringConst_43,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_930  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=filename  sizeInBytes=4
	load	[r14+8],r1
	store	r1,[r15+4]
!   Call the function
	mov	2144,r13		! source line 2144
	mov	"\0\0CA",r10
	call	_P_System_printPtr
! CALL STATEMENT...
!   _temp_931 = _StringConst_44
	set	_StringConst_44,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_931  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	2145,r13		! source line 2145
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=kernelAddr  sizeInBytes=4
	load	[r14+-108],r1
	store	r1,[r15+0]
!   Call the function
	mov	2146,r13		! source line 2146
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Call the function
	mov	2147,r13		! source line 2147
	mov	"\0\0CA",r10
	call	_P_System_nl
! RETURN STATEMENT...
	mov	2149,r13		! source line 2149
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
	.word	_Label_932
	.word	4		! total size of parameters
	.word	116		! frame size = 116
	.word	_Label_933
	.word	8
	.word	4
	.word	_Label_934
	.word	-12
	.word	4
	.word	_Label_935
	.word	-16
	.word	4
	.word	_Label_936
	.word	-20
	.word	4
	.word	_Label_937
	.word	-24
	.word	4
	.word	_Label_938
	.word	-28
	.word	4
	.word	_Label_939
	.word	-32
	.word	4
	.word	_Label_940
	.word	-36
	.word	4
	.word	_Label_941
	.word	-40
	.word	4
	.word	_Label_942
	.word	-44
	.word	4
	.word	_Label_943
	.word	-48
	.word	4
	.word	_Label_944
	.word	-72
	.word	24
	.word	_Label_945
	.word	-76
	.word	4
	.word	_Label_946
	.word	-80
	.word	4
	.word	_Label_947
	.word	-104
	.word	24
	.word	_Label_948
	.word	-108
	.word	4
	.word	0
_Label_932:
	.ascii	"Handle_Sys_Create\0"
	.align
_Label_933:
	.byte	'P'
	.ascii	"filename\0"
	.align
_Label_934:
	.byte	'?'
	.ascii	"_temp_931\0"
	.align
_Label_935:
	.byte	'?'
	.ascii	"_temp_930\0"
	.align
_Label_936:
	.byte	'?'
	.ascii	"_temp_929\0"
	.align
_Label_937:
	.byte	'?'
	.ascii	"_temp_928\0"
	.align
_Label_938:
	.byte	'?'
	.ascii	"_temp_927\0"
	.align
_Label_939:
	.byte	'?'
	.ascii	"_temp_926\0"
	.align
_Label_940:
	.byte	'?'
	.ascii	"_temp_925\0"
	.align
_Label_941:
	.byte	'?'
	.ascii	"_temp_924\0"
	.align
_Label_942:
	.byte	'?'
	.ascii	"_temp_922\0"
	.align
_Label_943:
	.byte	'?'
	.ascii	"_temp_921\0"
	.align
_Label_944:
	.byte	'?'
	.ascii	"_temp_920\0"
	.align
_Label_945:
	.byte	'?'
	.ascii	"_temp_919\0"
	.align
_Label_946:
	.byte	'I'
	.ascii	"numOfCharCopied\0"
	.align
_Label_947:
	.byte	'A'
	.ascii	"container\0"
	.align
_Label_948:
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
_Label_4103:
	push	r0
	sub	r1,1,r1
	bne	_Label_4103
	mov	2154,r13		! source line 2154
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	2166,r13		! source line 2166
	mov	"\0\0AS",r10
!   _temp_949 = &container
	add	r14,-164,r1
	store	r1,[r14+-136]
!   NEW ARRAY Constructor...
!   _temp_951 = &_temp_950
	add	r14,-132,r1
	store	r1,[r14+-108]
!   _temp_951 = _temp_951 + 4
	load	[r14+-108],r1
	add	r1,4,r1
	store	r1,[r14+-108]
!   Next value...
	mov	20,r1
	store	r1,[r14+-104]
_Label_953:
!   Data Move: *_temp_951 = 97  (sizeInBytes=1)
	mov	97,r1
	load	[r14+-108],r2
	storeb	r1,[r2]
!   _temp_951 = _temp_951 + 1
	load	[r14+-108],r1
	add	r1,1,r1
	store	r1,[r14+-108]
!   _temp_952 = _temp_952 + -1
	load	[r14+-104],r1
	add	r1,-1,r1
	store	r1,[r14+-104]
!   if intNotZero (_temp_952) then goto _Label_953
	load	[r14+-104],r1
	cmp	r1,r0
	bne	_Label_953
!   Initialize the array size...
	mov	20,r1
	store	r1,[r14+-132]
!   _temp_954 = &_temp_950
	add	r14,-132,r1
	store	r1,[r14+-100]
!   make sure array has size 20
	load	[r14+-136],r1
	load	[r1],r1
	set	20, r2
	cmp	r1,0
	be	_Label_4104
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bne	_runtimeErrorWrongArraySize
_Label_4104:
!   make sure array has size 20
	load	[r14+-100],r1
	load	[r1],r1
	set	20, r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bne	_runtimeErrorWrongArraySize
!   Data Move: *_temp_949 = *_temp_954  (sizeInBytes=24)
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
	mov	2167,r13		! source line 2167
	mov	"\0\0AS",r10
!   strKernelAddr = &container
	add	r14,-164,r1
	store	r1,[r14+-168]
! ASSIGNMENT STATEMENT...
	mov	2168,r13		! source line 2168
	mov	"\0\0AS",r10
	mov	2168,r13		! source line 2168
	mov	"\0\0SE",r10
!   _temp_955 = filename		(4 bytes)
	load	[r14+8],r1
	store	r1,[r14+-96]
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_957 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-88]
!   Data Move: _temp_956 = *_temp_957  (sizeInBytes=4)
	load	[r14+-88],r1
	load	[r1],r1
	store	r1,[r14+-92]
!   if intIsZero (_temp_956) then goto _runtimeErrorNullPointer
	load	[r14+-92],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_958 = _temp_956 + 32
	load	[r14+-92],r1
	add	r1,32,r1
	store	r1,[r14+-84]
!   Prepare Argument: offset=12  value=strKernelAddr  sizeInBytes=4
	load	[r14+-168],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=_temp_955  sizeInBytes=4
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
	mov	2171,r13		! source line 2171
	mov	"\0\0IF",r10
!   if numOfCharCopied <= 20 then goto _Label_960		(int)
	load	[r14+-140],r1
	mov	20,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	ble	_Label_960
!	jmp	_Label_959
_Label_959:
! THEN...
	mov	2172,r13		! source line 2172
	mov	"\0\0TN",r10
! RETURN STATEMENT...
	mov	2172,r13		! source line 2172
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,192,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_960:
! ASSIGNMENT STATEMENT...
	mov	2176,r13		! source line 2176
	mov	"\0\0AS",r10
!   emptySlotFound = 0		(1 byte)
	mov	0,r1
	storeb	r1,[r14+-10]
! ASSIGNMENT STATEMENT...
	mov	2177,r13		! source line 2177
	mov	"\0\0AS",r10
!   i = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-172]
! WHILE STATEMENT...
	mov	2177,r13		! source line 2177
	mov	"\0\0WH",r10
_Label_961:
!   if i >= 10 then goto _Label_963		(int)
	load	[r14+-172],r1
	mov	10,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_963
!	jmp	_Label_962
_Label_962:
	mov	2177,r13		! source line 2177
	mov	"\0\0WB",r10
! IF STATEMENT...
	mov	2178,r13		! source line 2178
	mov	"\0\0IF",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_968 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-72]
!   Data Move: _temp_967 = *_temp_968  (sizeInBytes=4)
	load	[r14+-72],r1
	load	[r1],r1
	store	r1,[r14+-76]
!   if intIsZero (_temp_967) then goto _runtimeErrorNullPointer
	load	[r14+-76],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_969 = _temp_967 + 124
	load	[r14+-76],r1
	add	r1,124,r1
	store	r1,[r14+-68]
!   Move address of _temp_969 [i ] into _temp_970
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
!   Data Move: _temp_966 = *_temp_970  (sizeInBytes=4)
	load	[r14+-64],r1
	load	[r1],r1
	store	r1,[r14+-80]
!   if intIsZero (_temp_966) then goto _Label_964
	load	[r14+-80],r1
	cmp	r1,r0
	be	_Label_964
	jmp	_Label_965
_Label_964:
! THEN...
	mov	2179,r13		! source line 2179
	mov	"\0\0TN",r10
! ASSIGNMENT STATEMENT...
	mov	2179,r13		! source line 2179
	mov	"\0\0AS",r10
!   emptySlotIndex = i		(4 bytes)
	load	[r14+-172],r1
	store	r1,[r14+-176]
! ASSIGNMENT STATEMENT...
	mov	2180,r13		! source line 2180
	mov	"\0\0AS",r10
!   emptySlotFound = 1		(1 byte)
	mov	1,r1
	storeb	r1,[r14+-10]
! BREAK STATEMENT...
	mov	2181,r13		! source line 2181
	mov	"\0\0BR",r10
	jmp	_Label_963
! END IF...
_Label_965:
! ASSIGNMENT STATEMENT...
	mov	2177,r13		! source line 2177
	mov	"\0\0AS",r10
!   i = i + 1		(int)
	load	[r14+-172],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-172]
! END WHILE...
	jmp	_Label_961
_Label_963:
! IF STATEMENT...
	mov	2186,r13		! source line 2186
	mov	"\0\0IF",r10
!   _temp_973 = emptySlotFound XOR 0		(bool)
	loadb	[r14+-10],r1
	mov	0,r2
	xor	r1,r2,r1
	storeb	r1,[r14+-9]
!   if _temp_973 then goto _Label_972 else goto _Label_971
	loadb	[r14+-9],r1
	cmp	r1,0
	be	_Label_971
	jmp	_Label_972
_Label_971:
! THEN...
	mov	2187,r13		! source line 2187
	mov	"\0\0TN",r10
! RETURN STATEMENT...
	mov	2187,r13		! source line 2187
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,192,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_972:
! IF STATEMENT...
	mov	2191,r13		! source line 2191
	mov	"\0\0IF",r10
!   _temp_976 = _StringConst_45
	set	_StringConst_45,r1
	store	r1,[r14+-60]
!   Prepare Argument: offset=8  value=strKernelAddr  sizeInBytes=4
	load	[r14+-168],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=_temp_976  sizeInBytes=4
	load	[r14+-60],r1
	store	r1,[r15+4]
!   Call the function
	mov	2191,r13		! source line 2191
	mov	"\0\0CA",r10
	call	_P_System_StrEqual
!   if result==true then goto _Label_974 else goto _Label_975
	loadb	[r15],r1
	cmp	r1,0
	be	_Label_975
	jmp	_Label_974
_Label_974:
! THEN...
	mov	2192,r13		! source line 2192
	mov	"\0\0TN",r10
! ASSIGNMENT STATEMENT...
	mov	2192,r13		! source line 2192
	mov	"\0\0AS",r10
!   _temp_977 = &_P_Kernel_fileManager
	set	_P_Kernel_fileManager,r1
	store	r1,[r14+-56]
!   _temp_978 = _temp_977 + 772
	load	[r14+-56],r1
	add	r1,772,r1
	store	r1,[r14+-52]
!   openFilePtr = _temp_978		(4 bytes)
	load	[r14+-52],r1
	store	r1,[r14+-180]
! ASSIGNMENT STATEMENT...
	mov	2193,r13		! source line 2193
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
	store	r1,[r14+-44]
!   Data Move: _temp_979 = *_temp_980  (sizeInBytes=4)
	load	[r14+-44],r1
	load	[r1],r1
	store	r1,[r14+-48]
!   if intIsZero (_temp_979) then goto _runtimeErrorNullPointer
	load	[r14+-48],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_981 = _temp_979 + 124
	load	[r14+-48],r1
	add	r1,124,r1
	store	r1,[r14+-40]
!   Move address of _temp_981 [emptySlotIndex ] into _temp_982
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
!   Data Move: *_temp_982 = openFilePtr  (sizeInBytes=4)
	load	[r14+-180],r1
	load	[r14+-36],r2
	store	r1,[r2]
! RETURN STATEMENT...
	mov	2194,r13		! source line 2194
	mov	"\0\0RE",r10
!   ReturnResult: emptySlotIndex  (sizeInBytes=4)
	load	[r14+-176],r1
	store	r1,[r14+8]
	add	r15,192,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_975:
! ASSIGNMENT STATEMENT...
	mov	2198,r13		! source line 2198
	mov	"\0\0AS",r10
	mov	2198,r13		! source line 2198
	mov	"\0\0SE",r10
!   _temp_983 = &_P_Kernel_fileManager
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
	mov	2201,r13		! source line 2201
	mov	"\0\0IF",r10
!   if intIsZero (openFilePtr) then goto _Label_984
	load	[r14+-180],r1
	cmp	r1,r0
	be	_Label_984
	jmp	_Label_985
_Label_984:
! THEN...
	mov	2202,r13		! source line 2202
	mov	"\0\0TN",r10
! RETURN STATEMENT...
	mov	2202,r13		! source line 2202
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,192,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_985:
! ASSIGNMENT STATEMENT...
	mov	2206,r13		! source line 2206
	mov	"\0\0AS",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_987 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-24]
!   Data Move: _temp_986 = *_temp_987  (sizeInBytes=4)
	load	[r14+-24],r1
	load	[r1],r1
	store	r1,[r14+-28]
!   if intIsZero (_temp_986) then goto _runtimeErrorNullPointer
	load	[r14+-28],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_988 = _temp_986 + 124
	load	[r14+-28],r1
	add	r1,124,r1
	store	r1,[r14+-20]
!   Move address of _temp_988 [emptySlotIndex ] into _temp_989
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
!   Data Move: *_temp_989 = openFilePtr  (sizeInBytes=4)
	load	[r14+-180],r1
	load	[r14+-16],r2
	store	r1,[r2]
! RETURN STATEMENT...
	mov	2208,r13		! source line 2208
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
	.word	_Label_990
	.word	4		! total size of parameters
	.word	188		! frame size = 188
	.word	_Label_991
	.word	8
	.word	4
	.word	_Label_992
	.word	-16
	.word	4
	.word	_Label_993
	.word	-20
	.word	4
	.word	_Label_994
	.word	-24
	.word	4
	.word	_Label_995
	.word	-28
	.word	4
	.word	_Label_996
	.word	-32
	.word	4
	.word	_Label_997
	.word	-36
	.word	4
	.word	_Label_998
	.word	-40
	.word	4
	.word	_Label_999
	.word	-44
	.word	4
	.word	_Label_1000
	.word	-48
	.word	4
	.word	_Label_1001
	.word	-52
	.word	4
	.word	_Label_1002
	.word	-56
	.word	4
	.word	_Label_1003
	.word	-60
	.word	4
	.word	_Label_1004
	.word	-9
	.word	1
	.word	_Label_1005
	.word	-64
	.word	4
	.word	_Label_1006
	.word	-68
	.word	4
	.word	_Label_1007
	.word	-72
	.word	4
	.word	_Label_1008
	.word	-76
	.word	4
	.word	_Label_1009
	.word	-80
	.word	4
	.word	_Label_1010
	.word	-84
	.word	4
	.word	_Label_1011
	.word	-88
	.word	4
	.word	_Label_1012
	.word	-92
	.word	4
	.word	_Label_1013
	.word	-96
	.word	4
	.word	_Label_1014
	.word	-100
	.word	4
	.word	_Label_1015
	.word	-104
	.word	4
	.word	_Label_1016
	.word	-108
	.word	4
	.word	_Label_1017
	.word	-132
	.word	24
	.word	_Label_1018
	.word	-136
	.word	4
	.word	_Label_1019
	.word	-140
	.word	4
	.word	_Label_1020
	.word	-164
	.word	24
	.word	_Label_1021
	.word	-168
	.word	4
	.word	_Label_1022
	.word	-172
	.word	4
	.word	_Label_1023
	.word	-176
	.word	4
	.word	_Label_1024
	.word	-10
	.word	1
	.word	_Label_1025
	.word	-180
	.word	4
	.word	0
_Label_990:
	.ascii	"Handle_Sys_Open\0"
	.align
_Label_991:
	.byte	'P'
	.ascii	"filename\0"
	.align
_Label_992:
	.byte	'?'
	.ascii	"_temp_989\0"
	.align
_Label_993:
	.byte	'?'
	.ascii	"_temp_988\0"
	.align
_Label_994:
	.byte	'?'
	.ascii	"_temp_987\0"
	.align
_Label_995:
	.byte	'?'
	.ascii	"_temp_986\0"
	.align
_Label_996:
	.byte	'?'
	.ascii	"_temp_983\0"
	.align
_Label_997:
	.byte	'?'
	.ascii	"_temp_982\0"
	.align
_Label_998:
	.byte	'?'
	.ascii	"_temp_981\0"
	.align
_Label_999:
	.byte	'?'
	.ascii	"_temp_980\0"
	.align
_Label_1000:
	.byte	'?'
	.ascii	"_temp_979\0"
	.align
_Label_1001:
	.byte	'?'
	.ascii	"_temp_978\0"
	.align
_Label_1002:
	.byte	'?'
	.ascii	"_temp_977\0"
	.align
_Label_1003:
	.byte	'?'
	.ascii	"_temp_976\0"
	.align
_Label_1004:
	.byte	'C'
	.ascii	"_temp_973\0"
	.align
_Label_1005:
	.byte	'?'
	.ascii	"_temp_970\0"
	.align
_Label_1006:
	.byte	'?'
	.ascii	"_temp_969\0"
	.align
_Label_1007:
	.byte	'?'
	.ascii	"_temp_968\0"
	.align
_Label_1008:
	.byte	'?'
	.ascii	"_temp_967\0"
	.align
_Label_1009:
	.byte	'?'
	.ascii	"_temp_966\0"
	.align
_Label_1010:
	.byte	'?'
	.ascii	"_temp_958\0"
	.align
_Label_1011:
	.byte	'?'
	.ascii	"_temp_957\0"
	.align
_Label_1012:
	.byte	'?'
	.ascii	"_temp_956\0"
	.align
_Label_1013:
	.byte	'?'
	.ascii	"_temp_955\0"
	.align
_Label_1014:
	.byte	'?'
	.ascii	"_temp_954\0"
	.align
_Label_1015:
	.byte	'?'
	.ascii	"_temp_952\0"
	.align
_Label_1016:
	.byte	'?'
	.ascii	"_temp_951\0"
	.align
_Label_1017:
	.byte	'?'
	.ascii	"_temp_950\0"
	.align
_Label_1018:
	.byte	'?'
	.ascii	"_temp_949\0"
	.align
_Label_1019:
	.byte	'I'
	.ascii	"numOfCharCopied\0"
	.align
_Label_1020:
	.byte	'A'
	.ascii	"container\0"
	.align
_Label_1021:
	.byte	'P'
	.ascii	"strKernelAddr\0"
	.align
_Label_1022:
	.byte	'I'
	.ascii	"i\0"
	.align
_Label_1023:
	.byte	'I'
	.ascii	"emptySlotIndex\0"
	.align
_Label_1024:
	.byte	'B'
	.ascii	"emptySlotFound\0"
	.align
_Label_1025:
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
	mov	112,r1
_Label_4105:
	push	r0
	sub	r1,1,r1
	bne	_Label_4105
	mov	2213,r13		! source line 2213
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! IF STATEMENT...
	mov	2232,r13		! source line 2232
	mov	"\0\0IF",r10
!   if fileDesc < 10 then goto _Label_1028		(int)
	load	[r14+8],r1
	mov	10,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bl	_Label_1028
	jmp	_Label_1026
_Label_1028:
!   if fileDesc >= 0 then goto _Label_1027		(int)
	load	[r14+8],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_1027
!	jmp	_Label_1026
_Label_1026:
! THEN...
	mov	2233,r13		! source line 2233
	mov	"\0\0TN",r10
! RETURN STATEMENT...
	mov	2233,r13		! source line 2233
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,452,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_1027:
! ASSIGNMENT STATEMENT...
	mov	2237,r13		! source line 2237
	mov	"\0\0AS",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1030 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-384]
!   Data Move: _temp_1029 = *_temp_1030  (sizeInBytes=4)
	load	[r14+-384],r1
	load	[r1],r1
	store	r1,[r14+-388]
!   if intIsZero (_temp_1029) then goto _runtimeErrorNullPointer
	load	[r14+-388],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1031 = _temp_1029 + 124
	load	[r14+-388],r1
	add	r1,124,r1
	store	r1,[r14+-380]
!   Move address of _temp_1031 [fileDesc ] into _temp_1032
!     make sure index expr is >= 0
	load	[r14+8],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-380],r1
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
	store	r2,[r14+-376]
!   Data Move: openFilePtr = *_temp_1032  (sizeInBytes=4)
	load	[r14+-376],r1
	load	[r1],r1
	store	r1,[r14+-392]
! IF STATEMENT...
	mov	2238,r13		! source line 2238
	mov	"\0\0IF",r10
!   if intIsZero (openFilePtr) then goto _Label_1033
	load	[r14+-392],r1
	cmp	r1,r0
	be	_Label_1033
	jmp	_Label_1034
_Label_1033:
! THEN...
	mov	2239,r13		! source line 2239
	mov	"\0\0TN",r10
! RETURN STATEMENT...
	mov	2239,r13		! source line 2239
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,452,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_1034:
! IF STATEMENT...
	mov	2243,r13		! source line 2243
	mov	"\0\0IF",r10
!   if sizeInBytes >= 0 then goto _Label_1036		(int)
	load	[r14+16],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_1036
!	jmp	_Label_1035
_Label_1035:
! THEN...
	mov	2244,r13		! source line 2244
	mov	"\0\0TN",r10
! RETURN STATEMENT...
	mov	2244,r13		! source line 2244
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,452,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_1036:
! IF STATEMENT...
	mov	2248,r13		! source line 2248
	mov	"\0\0IF",r10
!   _temp_1040 = &_P_Kernel_fileManager
	set	_P_Kernel_fileManager,r1
	store	r1,[r14+-368]
!   _temp_1041 = _temp_1040 + 772
	load	[r14+-368],r1
	add	r1,772,r1
	store	r1,[r14+-364]
!   _temp_1039 = _temp_1041		(4 bytes)
	load	[r14+-364],r1
	store	r1,[r14+-372]
!   if openFilePtr != _temp_1039 then goto _Label_1038		(int)
	load	[r14+-392],r1
	load	[r14+-372],r2
	cmp	r1,r2
	bne	_Label_1038
!	jmp	_Label_1037
_Label_1037:
! THEN...
	mov	2251,r13		! source line 2251
	mov	"\0\0TN",r10
! IF STATEMENT...
	mov	2251,r13		! source line 2251
	mov	"\0\0IF",r10
!   _temp_1045 = buffer		(4 bytes)
	load	[r14+12],r1
	store	r1,[r14+-360]
!   if _temp_1045 < 163840 then goto _Label_1044		(int)
	load	[r14+-360],r1
	set	163840,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bl	_Label_1044
	jmp	_Label_1042
_Label_1044:
!   _temp_1046 = buffer		(4 bytes)
	load	[r14+12],r1
	store	r1,[r14+-356]
!   if _temp_1046 >= 0 then goto _Label_1043		(int)
	load	[r14+-356],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_1043
!	jmp	_Label_1042
_Label_1042:
! THEN...
	mov	2252,r13		! source line 2252
	mov	"\0\0TN",r10
! RETURN STATEMENT...
	mov	2252,r13		! source line 2252
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,452,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_1043:
! ASSIGNMENT STATEMENT...
	mov	2256,r13		! source line 2256
	mov	"\0\0AS",r10
!   incomingChar = 62		(1 byte)
	mov	62,r1
	storeb	r1,[r14+-26]
! ASSIGNMENT STATEMENT...
	mov	2257,r13		! source line 2257
	mov	"\0\0AS",r10
!   copiedSoFar = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-428]
! ASSIGNMENT STATEMENT...
	mov	2258,r13		! source line 2258
	mov	"\0\0AS",r10
!   virtAddr = buffer		(4 bytes)
	load	[r14+12],r1
	store	r1,[r14+-396]
! ASSIGNMENT STATEMENT...
	mov	2259,r13		! source line 2259
	mov	"\0\0AS",r10
!   virtPage = virtAddr div 8192		(int)
	load	[r14+-396],r1
	mov	8192,r2
	cmp	r2,0
	be	_runtimeErrorZeroDivide
	div	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-400]
! ASSIGNMENT STATEMENT...
	mov	2260,r13		! source line 2260
	mov	"\0\0AS",r10
!   offset = virtAddr rem 8192		(int)
	load	[r14+-396],r1
	mov	8192,r2
	cmp	r2,0
	be	_runtimeErrorZeroDivide
	rem	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-404]
! IF STATEMENT...
	mov	2263,r13		! source line 2263
	mov	"\0\0IF",r10
!   if virtPage >= 0 then goto _Label_1050		(int)
	load	[r14+-400],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_1050
!	jmp	_Label_1051
_Label_1051:
!   if virtPage < 20 then goto _Label_1050		(int)
	load	[r14+-400],r1
	mov	20,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bl	_Label_1050
	jmp	_Label_1047
_Label_1050:
	mov	2263,r13		! source line 2263
	mov	"\0\0SE",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1054 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-348]
!   Data Move: _temp_1053 = *_temp_1054  (sizeInBytes=4)
	load	[r14+-348],r1
	load	[r1],r1
	store	r1,[r14+-352]
!   if intIsZero (_temp_1053) then goto _runtimeErrorNullPointer
	load	[r14+-352],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1055 = _temp_1053 + 32
	load	[r14+-352],r1
	add	r1,32,r1
	store	r1,[r14+-344]
!   Prepare Argument: offset=12  value=virtPage  sizeInBytes=4
	load	[r14+-400],r1
	store	r1,[r15+4]
!   Send message IsValid
	load	[r14+-344],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,36,r2
	call	r2
!   Retrieve Result: targetName=_temp_1052  sizeInBytes=1
	loadb	[r15],r1
	storeb	r1,[r14+-24]
!   _temp_1056 = _temp_1052 XOR 0		(bool)
	loadb	[r14+-24],r1
	mov	0,r2
	xor	r1,r2,r1
	storeb	r1,[r14+-23]
!   if _temp_1056 then goto _Label_1049 else goto _Label_1047
	loadb	[r14+-23],r1
	cmp	r1,0
	be	_Label_1047
	jmp	_Label_1049
_Label_1049:
	mov	2263,r13		! source line 2263
	mov	"\0\0SE",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1059 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-336]
!   Data Move: _temp_1058 = *_temp_1059  (sizeInBytes=4)
	load	[r14+-336],r1
	load	[r1],r1
	store	r1,[r14+-340]
!   if intIsZero (_temp_1058) then goto _runtimeErrorNullPointer
	load	[r14+-340],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1060 = _temp_1058 + 32
	load	[r14+-340],r1
	add	r1,32,r1
	store	r1,[r14+-332]
!   Prepare Argument: offset=12  value=virtPage  sizeInBytes=4
	load	[r14+-400],r1
	store	r1,[r15+4]
!   Send message IsWritable
	load	[r14+-332],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,32,r2
	call	r2
!   Retrieve Result: targetName=_temp_1057  sizeInBytes=1
	loadb	[r15],r1
	storeb	r1,[r14+-22]
!   _temp_1061 = _temp_1057 XOR 0		(bool)
	loadb	[r14+-22],r1
	mov	0,r2
	xor	r1,r2,r1
	storeb	r1,[r14+-21]
!   if _temp_1061 then goto _Label_1048 else goto _Label_1047
	loadb	[r14+-21],r1
	cmp	r1,0
	be	_Label_1047
	jmp	_Label_1048
_Label_1047:
! THEN...
	mov	2264,r13		! source line 2264
	mov	"\0\0TN",r10
! RETURN STATEMENT...
	mov	2264,r13		! source line 2264
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,452,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_1048:
! ASSIGNMENT STATEMENT...
	mov	2267,r13		! source line 2267
	mov	"\0\0AS",r10
	mov	2267,r13		! source line 2267
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
	store	r1,[r14+-320]
!   Data Move: _temp_1063 = *_temp_1064  (sizeInBytes=4)
	load	[r14+-320],r1
	load	[r1],r1
	store	r1,[r14+-324]
!   if intIsZero (_temp_1063) then goto _runtimeErrorNullPointer
	load	[r14+-324],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1065 = _temp_1063 + 32
	load	[r14+-324],r1
	add	r1,32,r1
	store	r1,[r14+-316]
!   Prepare Argument: offset=12  value=virtPage  sizeInBytes=4
	load	[r14+-400],r1
	store	r1,[r15+4]
!   Send message ExtractFrameAddr
	load	[r14+-316],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
!   Retrieve Result: targetName=_temp_1062  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-328]
!   destAddr = _temp_1062 + offset		(int)
	load	[r14+-328],r1
	load	[r14+-404],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-432]
! CALL STATEMENT...
!   _temp_1066 = _StringConst_46
	set	_StringConst_46,r1
	store	r1,[r14+-312]
!   Prepare Argument: offset=8  value=_temp_1066  sizeInBytes=4
	load	[r14+-312],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=incomingChar  sizeInBytes=1
	loadb	[r14+-26],r1
	storeb	r1,[r15+4]
!   Call the function
	mov	2268,r13		! source line 2268
	mov	"\0\0CA",r10
	call	_P_System_printCharVar
! WHILE STATEMENT...
	mov	2270,r13		! source line 2270
	mov	"\0\0WH",r10
_Label_1067:
!	jmp	_Label_1068
_Label_1068:
	mov	2270,r13		! source line 2270
	mov	"\0\0WB",r10
! IF STATEMENT...
	mov	2271,r13		! source line 2271
	mov	"\0\0IF",r10
!   _temp_1074 = incomingChar XOR 10		(bool)
	loadb	[r14+-26],r1
	mov	10,r2
	xor	r1,r2,r1
	storeb	r1,[r14+-20]
!   if _temp_1074 then goto _Label_1073 else goto _Label_1070
	loadb	[r14+-20],r1
	cmp	r1,0
	be	_Label_1070
	jmp	_Label_1073
_Label_1073:
!   _temp_1075 = incomingChar XOR 13		(bool)
	loadb	[r14+-26],r1
	mov	13,r2
	xor	r1,r2,r1
	storeb	r1,[r14+-19]
!   if _temp_1075 then goto _Label_1072 else goto _Label_1070
	loadb	[r14+-19],r1
	cmp	r1,0
	be	_Label_1070
	jmp	_Label_1072
_Label_1072:
!   if copiedSoFar != sizeInBytes then goto _Label_1071		(int)
	load	[r14+-428],r1
	load	[r14+16],r2
	cmp	r1,r2
	bne	_Label_1071
!	jmp	_Label_1070
_Label_1070:
! THEN...
	mov	2272,r13		! source line 2272
	mov	"\0\0TN",r10
! RETURN STATEMENT...
	mov	2272,r13		! source line 2272
	mov	"\0\0RE",r10
!   ReturnResult: copiedSoFar  (sizeInBytes=4)
	load	[r14+-428],r1
	store	r1,[r14+8]
	add	r15,452,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_1071:
! CALL STATEMENT...
!   _temp_1076 = _StringConst_47
	set	_StringConst_47,r1
	store	r1,[r14+-308]
!   Prepare Argument: offset=8  value=_temp_1076  sizeInBytes=4
	load	[r14+-308],r1
	store	r1,[r15+0]
!   Call the function
	mov	2276,r13		! source line 2276
	mov	"\0\0CE",r10
	call	print
! ASSIGNMENT STATEMENT...
	mov	2277,r13		! source line 2277
	mov	"\0\0AS",r10
!   i = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-436]
! WHILE STATEMENT...
	mov	2277,r13		! source line 2277
	mov	"\0\0WH",r10
_Label_1077:
!   if i >= 10 then goto _Label_1079		(int)
	load	[r14+-436],r1
	mov	10,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_1079
!	jmp	_Label_1078
_Label_1078:
	mov	2277,r13		! source line 2277
	mov	"\0\0WB",r10
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=i  sizeInBytes=4
	load	[r14+-436],r1
	store	r1,[r15+0]
!   Call the function
	mov	2278,r13		! source line 2278
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   _temp_1080 = _StringConst_48
	set	_StringConst_48,r1
	store	r1,[r14+-304]
!   Prepare Argument: offset=8  value=_temp_1080  sizeInBytes=4
	load	[r14+-304],r1
	store	r1,[r15+0]
!   Call the function
	mov	2279,r13		! source line 2279
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_1082 = &_P_Kernel_serialDriver
	set	_P_Kernel_serialDriver,r1
	store	r1,[r14+-300]
!   _temp_1083 = _temp_1082 + 32
	load	[r14+-300],r1
	add	r1,32,r1
	store	r1,[r14+-296]
!   Move address of _temp_1083 [i ] into _temp_1084
!     make sure index expr is >= 0
	load	[r14+-436],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-296],r1
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
	store	r2,[r14+-292]
!   Data Move: _temp_1081 = *_temp_1084  (sizeInBytes=1)
	load	[r14+-292],r1
	loadb	[r1],r1
	storeb	r1,[r14+-18]
!   Prepare Argument: offset=8  value=_temp_1081  sizeInBytes=1
	loadb	[r14+-18],r1
	storeb	r1,[r15+0]
!   Call the function
	mov	2280,r13		! source line 2280
	mov	"\0\0CE",r10
	call	printChar
! CALL STATEMENT...
!   Call the function
	mov	2281,r13		! source line 2281
	mov	"\0\0CA",r10
	call	_P_System_nl
! ASSIGNMENT STATEMENT...
	mov	2277,r13		! source line 2277
	mov	"\0\0AS",r10
!   i = i + 1		(int)
	load	[r14+-436],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-436]
! END WHILE...
	jmp	_Label_1077
_Label_1079:
! CALL STATEMENT...
!   _temp_1085 = _StringConst_49
	set	_StringConst_49,r1
	store	r1,[r14+-288]
!   _temp_1087 = &_P_Kernel_serialDriver
	set	_P_Kernel_serialDriver,r1
	store	r1,[r14+-280]
!   _temp_1088 = _temp_1087 + 56
	load	[r14+-280],r1
	add	r1,56,r1
	store	r1,[r14+-276]
!   Data Move: _temp_1086 = *_temp_1088  (sizeInBytes=4)
	load	[r14+-276],r1
	load	[r1],r1
	store	r1,[r14+-284]
!   Prepare Argument: offset=8  value=_temp_1085  sizeInBytes=4
	load	[r14+-288],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=_temp_1086  sizeInBytes=4
	load	[r14+-284],r1
	store	r1,[r15+4]
!   Call the function
	mov	2283,r13		! source line 2283
	mov	"\0\0CA",r10
	call	_P_System_printIntVar
! CALL STATEMENT...
!   _temp_1089 = _StringConst_50
	set	_StringConst_50,r1
	store	r1,[r14+-272]
!   _temp_1091 = &_P_Kernel_serialDriver
	set	_P_Kernel_serialDriver,r1
	store	r1,[r14+-264]
!   _temp_1092 = _temp_1091 + 52
	load	[r14+-264],r1
	add	r1,52,r1
	store	r1,[r14+-260]
!   Data Move: _temp_1090 = *_temp_1092  (sizeInBytes=4)
	load	[r14+-260],r1
	load	[r1],r1
	store	r1,[r14+-268]
!   Prepare Argument: offset=8  value=_temp_1089  sizeInBytes=4
	load	[r14+-272],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=_temp_1090  sizeInBytes=4
	load	[r14+-268],r1
	store	r1,[r15+4]
!   Call the function
	mov	2284,r13		! source line 2284
	mov	"\0\0CA",r10
	call	_P_System_printIntVar
! ASSIGNMENT STATEMENT...
	mov	2287,r13		! source line 2287
	mov	"\0\0AS",r10
	mov	2287,r13		! source line 2287
	mov	"\0\0SE",r10
!   _temp_1093 = &_P_Kernel_serialDriver
	set	_P_Kernel_serialDriver,r1
	store	r1,[r14+-256]
!   Send message GetChar
	load	[r14+-256],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
!   Retrieve Result: targetName=incomingChar  sizeInBytes=1
	loadb	[r15],r1
	storeb	r1,[r14+-26]
! CALL STATEMENT...
!   _temp_1094 = _StringConst_51
	set	_StringConst_51,r1
	store	r1,[r14+-252]
!   Prepare Argument: offset=8  value=_temp_1094  sizeInBytes=4
	load	[r14+-252],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=incomingChar  sizeInBytes=1
	loadb	[r14+-26],r1
	storeb	r1,[r15+4]
!   Call the function
	mov	2288,r13		! source line 2288
	mov	"\0\0CA",r10
	call	_P_System_printCharVar
! IF STATEMENT...
	mov	2289,r13		! source line 2289
	mov	"\0\0IF",r10
!   _temp_1097 = incomingChar XOR 4		(bool)
	loadb	[r14+-26],r1
	mov	4,r2
	xor	r1,r2,r1
	storeb	r1,[r14+-17]
!   if _temp_1097 then goto _Label_1096 else goto _Label_1095
	loadb	[r14+-17],r1
	cmp	r1,0
	be	_Label_1095
	jmp	_Label_1096
_Label_1095:
! THEN...
	mov	2290,r13		! source line 2290
	mov	"\0\0TN",r10
! RETURN STATEMENT...
	mov	2290,r13		! source line 2290
	mov	"\0\0RE",r10
!   ReturnResult: copiedSoFar  (sizeInBytes=4)
	load	[r14+-428],r1
	store	r1,[r14+8]
	add	r15,452,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_1096:
! ASSIGNMENT STATEMENT...
	mov	2293,r13		! source line 2293
	mov	"\0\0AS",r10
!   if intIsZero (destAddr) then goto _runtimeErrorNullPointer
	load	[r14+-432],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Data Move: *destAddr = incomingChar  (sizeInBytes=1)
	loadb	[r14+-26],r1
	load	[r14+-432],r2
	storeb	r1,[r2]
! SEND STATEMENT...
	mov	2294,r13		! source line 2294
	mov	"\0\0SE",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1099 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-244]
!   Data Move: _temp_1098 = *_temp_1099  (sizeInBytes=4)
	load	[r14+-244],r1
	load	[r1],r1
	store	r1,[r14+-248]
!   if intIsZero (_temp_1098) then goto _runtimeErrorNullPointer
	load	[r14+-248],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1100 = _temp_1098 + 32
	load	[r14+-248],r1
	add	r1,32,r1
	store	r1,[r14+-240]
!   Prepare Argument: offset=12  value=virtPage  sizeInBytes=4
	load	[r14+-400],r1
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
	mov	2295,r13		! source line 2295
	mov	"\0\0SE",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1102 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-232]
!   Data Move: _temp_1101 = *_temp_1102  (sizeInBytes=4)
	load	[r14+-232],r1
	load	[r1],r1
	store	r1,[r14+-236]
!   if intIsZero (_temp_1101) then goto _runtimeErrorNullPointer
	load	[r14+-236],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1103 = _temp_1101 + 32
	load	[r14+-236],r1
	add	r1,32,r1
	store	r1,[r14+-228]
!   Prepare Argument: offset=12  value=virtPage  sizeInBytes=4
	load	[r14+-400],r1
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
	mov	2296,r13		! source line 2296
	mov	"\0\0AS",r10
!   copiedSoFar = copiedSoFar + 1		(int)
	load	[r14+-428],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-428]
! IF STATEMENT...
	mov	2299,r13		! source line 2299
	mov	"\0\0IF",r10
!   if copiedSoFar != sizeInBytes then goto _Label_1105		(int)
	load	[r14+-428],r1
	load	[r14+16],r2
	cmp	r1,r2
	bne	_Label_1105
!	jmp	_Label_1104
_Label_1104:
! THEN...
	mov	2300,r13		! source line 2300
	mov	"\0\0TN",r10
! RETURN STATEMENT...
	mov	2300,r13		! source line 2300
	mov	"\0\0RE",r10
!   ReturnResult: copiedSoFar  (sizeInBytes=4)
	load	[r14+-428],r1
	store	r1,[r14+8]
	add	r15,452,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_1105:
! ASSIGNMENT STATEMENT...
	mov	2304,r13		! source line 2304
	mov	"\0\0AS",r10
!   virtAddr = virtAddr + 1		(int)
	load	[r14+-396],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-396]
! ASSIGNMENT STATEMENT...
	mov	2305,r13		! source line 2305
	mov	"\0\0AS",r10
!   virtPage = virtAddr div 8192		(int)
	load	[r14+-396],r1
	mov	8192,r2
	cmp	r2,0
	be	_runtimeErrorZeroDivide
	div	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-400]
! ASSIGNMENT STATEMENT...
	mov	2306,r13		! source line 2306
	mov	"\0\0AS",r10
!   offset = virtAddr rem 8192		(int)
	load	[r14+-396],r1
	mov	8192,r2
	cmp	r2,0
	be	_runtimeErrorZeroDivide
	rem	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-404]
! IF STATEMENT...
	mov	2309,r13		! source line 2309
	mov	"\0\0IF",r10
!   if virtPage >= 0 then goto _Label_1109		(int)
	load	[r14+-400],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_1109
!	jmp	_Label_1110
_Label_1110:
!   if virtPage < 20 then goto _Label_1109		(int)
	load	[r14+-400],r1
	mov	20,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bl	_Label_1109
	jmp	_Label_1106
_Label_1109:
	mov	2309,r13		! source line 2309
	mov	"\0\0SE",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1113 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-220]
!   Data Move: _temp_1112 = *_temp_1113  (sizeInBytes=4)
	load	[r14+-220],r1
	load	[r1],r1
	store	r1,[r14+-224]
!   if intIsZero (_temp_1112) then goto _runtimeErrorNullPointer
	load	[r14+-224],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1114 = _temp_1112 + 32
	load	[r14+-224],r1
	add	r1,32,r1
	store	r1,[r14+-216]
!   Prepare Argument: offset=12  value=virtPage  sizeInBytes=4
	load	[r14+-400],r1
	store	r1,[r15+4]
!   Send message IsValid
	load	[r14+-216],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,36,r2
	call	r2
!   Retrieve Result: targetName=_temp_1111  sizeInBytes=1
	loadb	[r15],r1
	storeb	r1,[r14+-16]
!   _temp_1115 = _temp_1111 XOR 0		(bool)
	loadb	[r14+-16],r1
	mov	0,r2
	xor	r1,r2,r1
	storeb	r1,[r14+-15]
!   if _temp_1115 then goto _Label_1108 else goto _Label_1106
	loadb	[r14+-15],r1
	cmp	r1,0
	be	_Label_1106
	jmp	_Label_1108
_Label_1108:
	mov	2309,r13		! source line 2309
	mov	"\0\0SE",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1118 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-208]
!   Data Move: _temp_1117 = *_temp_1118  (sizeInBytes=4)
	load	[r14+-208],r1
	load	[r1],r1
	store	r1,[r14+-212]
!   if intIsZero (_temp_1117) then goto _runtimeErrorNullPointer
	load	[r14+-212],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1119 = _temp_1117 + 32
	load	[r14+-212],r1
	add	r1,32,r1
	store	r1,[r14+-204]
!   Prepare Argument: offset=12  value=virtPage  sizeInBytes=4
	load	[r14+-400],r1
	store	r1,[r15+4]
!   Send message IsWritable
	load	[r14+-204],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,32,r2
	call	r2
!   Retrieve Result: targetName=_temp_1116  sizeInBytes=1
	loadb	[r15],r1
	storeb	r1,[r14+-14]
!   _temp_1120 = _temp_1116 XOR 0		(bool)
	loadb	[r14+-14],r1
	mov	0,r2
	xor	r1,r2,r1
	storeb	r1,[r14+-13]
!   if _temp_1120 then goto _Label_1107 else goto _Label_1106
	loadb	[r14+-13],r1
	cmp	r1,0
	be	_Label_1106
	jmp	_Label_1107
_Label_1106:
! THEN...
	mov	2310,r13		! source line 2310
	mov	"\0\0TN",r10
! RETURN STATEMENT...
	mov	2310,r13		! source line 2310
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,452,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_1107:
! ASSIGNMENT STATEMENT...
	mov	2313,r13		! source line 2313
	mov	"\0\0AS",r10
	mov	2313,r13		! source line 2313
	mov	"\0\0SE",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1123 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-192]
!   Data Move: _temp_1122 = *_temp_1123  (sizeInBytes=4)
	load	[r14+-192],r1
	load	[r1],r1
	store	r1,[r14+-196]
!   if intIsZero (_temp_1122) then goto _runtimeErrorNullPointer
	load	[r14+-196],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1124 = _temp_1122 + 32
	load	[r14+-196],r1
	add	r1,32,r1
	store	r1,[r14+-188]
!   Prepare Argument: offset=12  value=virtPage  sizeInBytes=4
	load	[r14+-400],r1
	store	r1,[r15+4]
!   Send message ExtractFrameAddr
	load	[r14+-188],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
!   Retrieve Result: targetName=_temp_1121  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-200]
!   destAddr = _temp_1121 + offset		(int)
	load	[r14+-200],r1
	load	[r14+-404],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-432]
! END WHILE...
	jmp	_Label_1067
_Label_1069:
! END IF...
_Label_1038:
! IF STATEMENT...
	mov	2321,r13		! source line 2321
	mov	"\0\0IF",r10
!   _temp_1128 = buffer		(4 bytes)
	load	[r14+12],r1
	store	r1,[r14+-184]
!   if _temp_1128 < 163840 then goto _Label_1127		(int)
	load	[r14+-184],r1
	set	163840,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bl	_Label_1127
	jmp	_Label_1125
_Label_1127:
!   _temp_1129 = buffer		(4 bytes)
	load	[r14+12],r1
	store	r1,[r14+-180]
!   if _temp_1129 >= 0 then goto _Label_1126		(int)
	load	[r14+-180],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_1126
!	jmp	_Label_1125
_Label_1125:
! THEN...
	mov	2322,r13		! source line 2322
	mov	"\0\0TN",r10
! RETURN STATEMENT...
	mov	2322,r13		! source line 2322
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,452,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_1126:
! ASSIGNMENT STATEMENT...
	mov	2327,r13		! source line 2327
	mov	"\0\0AS",r10
!   virtAddr = buffer		(4 bytes)
	load	[r14+12],r1
	store	r1,[r14+-396]
! ASSIGNMENT STATEMENT...
	mov	2328,r13		! source line 2328
	mov	"\0\0AS",r10
!   virtPage = virtAddr div 8192		(int)
	load	[r14+-396],r1
	mov	8192,r2
	cmp	r2,0
	be	_runtimeErrorZeroDivide
	div	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-400]
! ASSIGNMENT STATEMENT...
	mov	2329,r13		! source line 2329
	mov	"\0\0AS",r10
!   offset = virtAddr rem 8192		(int)
	load	[r14+-396],r1
	mov	8192,r2
	cmp	r2,0
	be	_runtimeErrorZeroDivide
	rem	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-404]
! ASSIGNMENT STATEMENT...
	mov	2330,r13		! source line 2330
	mov	"\0\0AS",r10
!   copiedSoFar = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-428]
! ASSIGNMENT STATEMENT...
	mov	2331,r13		! source line 2331
	mov	"\0\0AS",r10
!   chunkSize = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-408]
! ASSIGNMENT STATEMENT...
	mov	2334,r13		! source line 2334
	mov	"\0\0AS",r10
!   if intIsZero (openFilePtr) then goto _runtimeErrorNullPointer
	load	[r14+-392],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1130 = openFilePtr + 16
	load	[r14+-392],r1
	add	r1,16,r1
	store	r1,[r14+-176]
!   Data Move: currentPos = *_temp_1130  (sizeInBytes=4)
	load	[r14+-176],r1
	load	[r1],r1
	store	r1,[r14+-416]
! ASSIGNMENT STATEMENT...
	mov	2335,r13		! source line 2335
	mov	"\0\0AS",r10
!   nextPosInFile = currentPos		(4 bytes)
	load	[r14+-416],r1
	store	r1,[r14+-420]
! WHILE STATEMENT...
	mov	2340,r13		! source line 2340
	mov	"\0\0WH",r10
_Label_1131:
!	jmp	_Label_1132
_Label_1132:
	mov	2340,r13		! source line 2340
	mov	"\0\0WB",r10
! ASSIGNMENT STATEMENT...
	mov	2343,r13		! source line 2343
	mov	"\0\0AS",r10
!   thisChunkSize = 8192 - offset		(int)
	mov	8192,r1
	load	[r14+-404],r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-412]
! ASSIGNMENT STATEMENT...
	mov	2344,r13		! source line 2344
	mov	"\0\0AS",r10
!   if intIsZero (openFilePtr) then goto _runtimeErrorNullPointer
	load	[r14+-392],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1135 = openFilePtr + 20
	load	[r14+-392],r1
	add	r1,20,r1
	store	r1,[r14+-168]
!   Data Move: _temp_1134 = *_temp_1135  (sizeInBytes=4)
	load	[r14+-168],r1
	load	[r1],r1
	store	r1,[r14+-172]
!   if intIsZero (_temp_1134) then goto _runtimeErrorNullPointer
	load	[r14+-172],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1136 = _temp_1134 + 24
	load	[r14+-172],r1
	add	r1,24,r1
	store	r1,[r14+-164]
!   Data Move: sizeOfFileInBytes = *_temp_1136  (sizeInBytes=4)
	load	[r14+-164],r1
	load	[r1],r1
	store	r1,[r14+-424]
! IF STATEMENT...
	mov	2346,r13		! source line 2346
	mov	"\0\0IF",r10
!   _temp_1139 = nextPosInFile + thisChunkSize		(int)
	load	[r14+-420],r1
	load	[r14+-412],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-160]
!   if _temp_1139 <= sizeOfFileInBytes then goto _Label_1138		(int)
	load	[r14+-160],r1
	load	[r14+-424],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	ble	_Label_1138
!	jmp	_Label_1137
_Label_1137:
! THEN...
	mov	2347,r13		! source line 2347
	mov	"\0\0TN",r10
! ASSIGNMENT STATEMENT...
	mov	2347,r13		! source line 2347
	mov	"\0\0AS",r10
!   thisChunkSize = sizeOfFileInBytes - nextPosInFile		(int)
	load	[r14+-424],r1
	load	[r14+-420],r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-412]
! END IF...
_Label_1138:
! IF STATEMENT...
	mov	2350,r13		! source line 2350
	mov	"\0\0IF",r10
!   _temp_1142 = copiedSoFar + thisChunkSize		(int)
	load	[r14+-428],r1
	load	[r14+-412],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-156]
!   if _temp_1142 <= sizeInBytes then goto _Label_1141		(int)
	load	[r14+-156],r1
	load	[r14+16],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	ble	_Label_1141
!	jmp	_Label_1140
_Label_1140:
! THEN...
	mov	2351,r13		! source line 2351
	mov	"\0\0TN",r10
! ASSIGNMENT STATEMENT...
	mov	2351,r13		! source line 2351
	mov	"\0\0AS",r10
!   thisChunkSize = sizeInBytes - copiedSoFar		(int)
	load	[r14+16],r1
	load	[r14+-428],r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-412]
! END IF...
_Label_1141:
! IF STATEMENT...
	mov	2355,r13		! source line 2355
	mov	"\0\0IF",r10
!   if thisChunkSize > 0 then goto _Label_1144		(int)
	load	[r14+-412],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_1144
!	jmp	_Label_1143
_Label_1143:
! THEN...
	mov	2356,r13		! source line 2356
	mov	"\0\0TN",r10
! BREAK STATEMENT...
	mov	2356,r13		! source line 2356
	mov	"\0\0BR",r10
	jmp	_Label_1133
! END IF...
_Label_1144:
! IF STATEMENT...
	mov	2360,r13		! source line 2360
	mov	"\0\0IF",r10
!   if virtPage >= 0 then goto _Label_1148		(int)
	load	[r14+-400],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_1148
!	jmp	_Label_1149
_Label_1149:
!   if virtPage < 20 then goto _Label_1148		(int)
	load	[r14+-400],r1
	mov	20,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bl	_Label_1148
	jmp	_Label_1145
_Label_1148:
	mov	2360,r13		! source line 2360
	mov	"\0\0SE",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1152 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-148]
!   Data Move: _temp_1151 = *_temp_1152  (sizeInBytes=4)
	load	[r14+-148],r1
	load	[r1],r1
	store	r1,[r14+-152]
!   if intIsZero (_temp_1151) then goto _runtimeErrorNullPointer
	load	[r14+-152],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1153 = _temp_1151 + 32
	load	[r14+-152],r1
	add	r1,32,r1
	store	r1,[r14+-144]
!   Prepare Argument: offset=12  value=virtPage  sizeInBytes=4
	load	[r14+-400],r1
	store	r1,[r15+4]
!   Send message IsValid
	load	[r14+-144],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,36,r2
	call	r2
!   Retrieve Result: targetName=_temp_1150  sizeInBytes=1
	loadb	[r15],r1
	storeb	r1,[r14+-12]
!   _temp_1154 = _temp_1150 XOR 0		(bool)
	loadb	[r14+-12],r1
	mov	0,r2
	xor	r1,r2,r1
	storeb	r1,[r14+-11]
!   if _temp_1154 then goto _Label_1147 else goto _Label_1145
	loadb	[r14+-11],r1
	cmp	r1,0
	be	_Label_1145
	jmp	_Label_1147
_Label_1147:
	mov	2360,r13		! source line 2360
	mov	"\0\0SE",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1157 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-136]
!   Data Move: _temp_1156 = *_temp_1157  (sizeInBytes=4)
	load	[r14+-136],r1
	load	[r1],r1
	store	r1,[r14+-140]
!   if intIsZero (_temp_1156) then goto _runtimeErrorNullPointer
	load	[r14+-140],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1158 = _temp_1156 + 32
	load	[r14+-140],r1
	add	r1,32,r1
	store	r1,[r14+-132]
!   Prepare Argument: offset=12  value=virtPage  sizeInBytes=4
	load	[r14+-400],r1
	store	r1,[r15+4]
!   Send message IsWritable
	load	[r14+-132],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,32,r2
	call	r2
!   Retrieve Result: targetName=_temp_1155  sizeInBytes=1
	loadb	[r15],r1
	storeb	r1,[r14+-10]
!   _temp_1159 = _temp_1155 XOR 0		(bool)
	loadb	[r14+-10],r1
	mov	0,r2
	xor	r1,r2,r1
	storeb	r1,[r14+-9]
!   if _temp_1159 then goto _Label_1146 else goto _Label_1145
	loadb	[r14+-9],r1
	cmp	r1,0
	be	_Label_1145
	jmp	_Label_1146
_Label_1145:
! THEN...
	mov	2361,r13		! source line 2361
	mov	"\0\0TN",r10
! RETURN STATEMENT...
	mov	2361,r13		! source line 2361
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,452,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_1146:
! ASSIGNMENT STATEMENT...
	mov	2365,r13		! source line 2365
	mov	"\0\0AS",r10
!   nextPosInFile = nextPosInFile + thisChunkSize		(int)
	load	[r14+-420],r1
	load	[r14+-412],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-420]
! ASSIGNMENT STATEMENT...
	mov	2366,r13		! source line 2366
	mov	"\0\0AS",r10
!   copiedSoFar = copiedSoFar + thisChunkSize		(int)
	load	[r14+-428],r1
	load	[r14+-412],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-428]
! ASSIGNMENT STATEMENT...
	mov	2367,r13		! source line 2367
	mov	"\0\0AS",r10
!   virtPage = virtPage + 1		(int)
	load	[r14+-400],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-400]
! ASSIGNMENT STATEMENT...
	mov	2368,r13		! source line 2368
	mov	"\0\0AS",r10
!   offset = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-404]
! IF STATEMENT...
	mov	2371,r13		! source line 2371
	mov	"\0\0IF",r10
!   if copiedSoFar != sizeInBytes then goto _Label_1161		(int)
	load	[r14+-428],r1
	load	[r14+16],r2
	cmp	r1,r2
	bne	_Label_1161
!	jmp	_Label_1160
_Label_1160:
! THEN...
	mov	2372,r13		! source line 2372
	mov	"\0\0TN",r10
! BREAK STATEMENT...
	mov	2372,r13		! source line 2372
	mov	"\0\0BR",r10
	jmp	_Label_1133
! END IF...
_Label_1161:
! END WHILE...
	jmp	_Label_1131
_Label_1133:
! ASSIGNMENT STATEMENT...
	mov	2383,r13		! source line 2383
	mov	"\0\0AS",r10
!   virtAddr = buffer		(4 bytes)
	load	[r14+12],r1
	store	r1,[r14+-396]
! ASSIGNMENT STATEMENT...
	mov	2384,r13		! source line 2384
	mov	"\0\0AS",r10
!   virtPage = virtAddr div 8192		(int)
	load	[r14+-396],r1
	mov	8192,r2
	cmp	r2,0
	be	_runtimeErrorZeroDivide
	div	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-400]
! ASSIGNMENT STATEMENT...
	mov	2385,r13		! source line 2385
	mov	"\0\0AS",r10
!   offset = virtAddr rem 8192		(int)
	load	[r14+-396],r1
	mov	8192,r2
	cmp	r2,0
	be	_runtimeErrorZeroDivide
	rem	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-404]
! ASSIGNMENT STATEMENT...
	mov	2386,r13		! source line 2386
	mov	"\0\0AS",r10
!   copiedSoFar = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-428]
! ASSIGNMENT STATEMENT...
	mov	2387,r13		! source line 2387
	mov	"\0\0AS",r10
!   chunkSize = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-408]
! ASSIGNMENT STATEMENT...
	mov	2390,r13		! source line 2390
	mov	"\0\0AS",r10
!   if intIsZero (openFilePtr) then goto _runtimeErrorNullPointer
	load	[r14+-392],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1162 = openFilePtr + 16
	load	[r14+-392],r1
	add	r1,16,r1
	store	r1,[r14+-128]
!   Data Move: currentPos = *_temp_1162  (sizeInBytes=4)
	load	[r14+-128],r1
	load	[r1],r1
	store	r1,[r14+-416]
! ASSIGNMENT STATEMENT...
	mov	2391,r13		! source line 2391
	mov	"\0\0AS",r10
!   nextPosInFile = currentPos		(4 bytes)
	load	[r14+-416],r1
	store	r1,[r14+-420]
! WHILE STATEMENT...
	mov	2393,r13		! source line 2393
	mov	"\0\0WH",r10
_Label_1163:
!	jmp	_Label_1164
_Label_1164:
	mov	2393,r13		! source line 2393
	mov	"\0\0WB",r10
! ASSIGNMENT STATEMENT...
	mov	2396,r13		! source line 2396
	mov	"\0\0AS",r10
!   thisChunkSize = 8192 - offset		(int)
	mov	8192,r1
	load	[r14+-404],r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-412]
! ASSIGNMENT STATEMENT...
	mov	2397,r13		! source line 2397
	mov	"\0\0AS",r10
!   if intIsZero (openFilePtr) then goto _runtimeErrorNullPointer
	load	[r14+-392],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1167 = openFilePtr + 20
	load	[r14+-392],r1
	add	r1,20,r1
	store	r1,[r14+-120]
!   Data Move: _temp_1166 = *_temp_1167  (sizeInBytes=4)
	load	[r14+-120],r1
	load	[r1],r1
	store	r1,[r14+-124]
!   if intIsZero (_temp_1166) then goto _runtimeErrorNullPointer
	load	[r14+-124],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1168 = _temp_1166 + 24
	load	[r14+-124],r1
	add	r1,24,r1
	store	r1,[r14+-116]
!   Data Move: sizeOfFileInBytes = *_temp_1168  (sizeInBytes=4)
	load	[r14+-116],r1
	load	[r1],r1
	store	r1,[r14+-424]
! IF STATEMENT...
	mov	2399,r13		! source line 2399
	mov	"\0\0IF",r10
!   _temp_1171 = nextPosInFile + thisChunkSize		(int)
	load	[r14+-420],r1
	load	[r14+-412],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-112]
!   if _temp_1171 <= sizeOfFileInBytes then goto _Label_1170		(int)
	load	[r14+-112],r1
	load	[r14+-424],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	ble	_Label_1170
!	jmp	_Label_1169
_Label_1169:
! THEN...
	mov	2400,r13		! source line 2400
	mov	"\0\0TN",r10
! ASSIGNMENT STATEMENT...
	mov	2400,r13		! source line 2400
	mov	"\0\0AS",r10
!   thisChunkSize = sizeOfFileInBytes - nextPosInFile		(int)
	load	[r14+-424],r1
	load	[r14+-420],r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-412]
! END IF...
_Label_1170:
! IF STATEMENT...
	mov	2403,r13		! source line 2403
	mov	"\0\0IF",r10
!   _temp_1174 = copiedSoFar + thisChunkSize		(int)
	load	[r14+-428],r1
	load	[r14+-412],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-108]
!   if _temp_1174 <= sizeInBytes then goto _Label_1173		(int)
	load	[r14+-108],r1
	load	[r14+16],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	ble	_Label_1173
!	jmp	_Label_1172
_Label_1172:
! THEN...
	mov	2404,r13		! source line 2404
	mov	"\0\0TN",r10
! ASSIGNMENT STATEMENT...
	mov	2404,r13		! source line 2404
	mov	"\0\0AS",r10
!   thisChunkSize = sizeInBytes - copiedSoFar		(int)
	load	[r14+16],r1
	load	[r14+-428],r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-412]
! END IF...
_Label_1173:
! IF STATEMENT...
	mov	2408,r13		! source line 2408
	mov	"\0\0IF",r10
!   if thisChunkSize > 0 then goto _Label_1176		(int)
	load	[r14+-412],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_1176
!	jmp	_Label_1175
_Label_1175:
! THEN...
	mov	2409,r13		! source line 2409
	mov	"\0\0TN",r10
! BREAK STATEMENT...
	mov	2409,r13		! source line 2409
	mov	"\0\0BR",r10
	jmp	_Label_1165
! END IF...
_Label_1176:
! SEND STATEMENT...
	mov	2413,r13		! source line 2413
	mov	"\0\0SE",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1178 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-100]
!   Data Move: _temp_1177 = *_temp_1178  (sizeInBytes=4)
	load	[r14+-100],r1
	load	[r1],r1
	store	r1,[r14+-104]
!   if intIsZero (_temp_1177) then goto _runtimeErrorNullPointer
	load	[r14+-104],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1179 = _temp_1177 + 32
	load	[r14+-104],r1
	add	r1,32,r1
	store	r1,[r14+-96]
!   Prepare Argument: offset=12  value=virtPage  sizeInBytes=4
	load	[r14+-400],r1
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
	mov	2414,r13		! source line 2414
	mov	"\0\0SE",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1181 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-88]
!   Data Move: _temp_1180 = *_temp_1181  (sizeInBytes=4)
	load	[r14+-88],r1
	load	[r1],r1
	store	r1,[r14+-92]
!   if intIsZero (_temp_1180) then goto _runtimeErrorNullPointer
	load	[r14+-92],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1182 = _temp_1180 + 32
	load	[r14+-92],r1
	add	r1,32,r1
	store	r1,[r14+-84]
!   Prepare Argument: offset=12  value=virtPage  sizeInBytes=4
	load	[r14+-400],r1
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
	mov	2415,r13		! source line 2415
	mov	"\0\0AS",r10
	mov	2415,r13		! source line 2415
	mov	"\0\0SE",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1185 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-72]
!   Data Move: _temp_1184 = *_temp_1185  (sizeInBytes=4)
	load	[r14+-72],r1
	load	[r1],r1
	store	r1,[r14+-76]
!   if intIsZero (_temp_1184) then goto _runtimeErrorNullPointer
	load	[r14+-76],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1186 = _temp_1184 + 32
	load	[r14+-76],r1
	add	r1,32,r1
	store	r1,[r14+-68]
!   Prepare Argument: offset=12  value=virtPage  sizeInBytes=4
	load	[r14+-400],r1
	store	r1,[r15+4]
!   Send message ExtractFrameAddr
	load	[r14+-68],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
!   Retrieve Result: targetName=_temp_1183  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-80]
!   destAddr = _temp_1183 + offset		(int)
	load	[r14+-80],r1
	load	[r14+-404],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-432]
! ASSIGNMENT STATEMENT...
	mov	2416,r13		! source line 2416
	mov	"\0\0AS",r10
	mov	2416,r13		! source line 2416
	mov	"\0\0SE",r10
!   _temp_1187 = &_P_Kernel_fileManager
	set	_P_Kernel_fileManager,r1
	store	r1,[r14+-64]
!   Prepare Argument: offset=12  value=openFilePtr  sizeInBytes=4
	load	[r14+-392],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=destAddr  sizeInBytes=4
	load	[r14+-432],r1
	store	r1,[r15+8]
!   Prepare Argument: offset=20  value=nextPosInFile  sizeInBytes=4
	load	[r14+-420],r1
	store	r1,[r15+12]
!   Prepare Argument: offset=24  value=thisChunkSize  sizeInBytes=4
	load	[r14+-412],r1
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
	storeb	r1,[r14+-25]
! ASSIGNMENT STATEMENT...
	mov	2419,r13		! source line 2419
	mov	"\0\0AS",r10
!   nextPosInFile = nextPosInFile + thisChunkSize		(int)
	load	[r14+-420],r1
	load	[r14+-412],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-420]
! ASSIGNMENT STATEMENT...
	mov	2420,r13		! source line 2420
	mov	"\0\0AS",r10
!   copiedSoFar = copiedSoFar + thisChunkSize		(int)
	load	[r14+-428],r1
	load	[r14+-412],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-428]
! ASSIGNMENT STATEMENT...
	mov	2421,r13		! source line 2421
	mov	"\0\0AS",r10
!   virtPage = virtPage + 1		(int)
	load	[r14+-400],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-400]
! ASSIGNMENT STATEMENT...
	mov	2422,r13		! source line 2422
	mov	"\0\0AS",r10
!   offset = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-404]
! IF STATEMENT...
	mov	2425,r13		! source line 2425
	mov	"\0\0IF",r10
!   if copiedSoFar != sizeInBytes then goto _Label_1189		(int)
	load	[r14+-428],r1
	load	[r14+16],r2
	cmp	r1,r2
	bne	_Label_1189
!	jmp	_Label_1188
_Label_1188:
! THEN...
	mov	2426,r13		! source line 2426
	mov	"\0\0TN",r10
! ASSIGNMENT STATEMENT...
	mov	2426,r13		! source line 2426
	mov	"\0\0AS",r10
!   if intIsZero (openFilePtr) then goto _runtimeErrorNullPointer
	load	[r14+-392],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1190 = openFilePtr + 16
	load	[r14+-392],r1
	add	r1,16,r1
	store	r1,[r14+-60]
!   if intIsZero (openFilePtr) then goto _runtimeErrorNullPointer
	load	[r14+-392],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1193 = openFilePtr + 16
	load	[r14+-392],r1
	add	r1,16,r1
	store	r1,[r14+-48]
!   Data Move: _temp_1192 = *_temp_1193  (sizeInBytes=4)
	load	[r14+-48],r1
	load	[r1],r1
	store	r1,[r14+-52]
!   _temp_1191 = _temp_1192 + copiedSoFar		(int)
	load	[r14+-52],r1
	load	[r14+-428],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-56]
!   Data Move: *_temp_1190 = _temp_1191  (sizeInBytes=4)
	load	[r14+-56],r1
	load	[r14+-60],r2
	store	r1,[r2]
! RETURN STATEMENT...
	mov	2427,r13		! source line 2427
	mov	"\0\0RE",r10
!   ReturnResult: copiedSoFar  (sizeInBytes=4)
	load	[r14+-428],r1
	store	r1,[r14+8]
	add	r15,452,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_1189:
! END WHILE...
	jmp	_Label_1163
_Label_1165:
! ASSIGNMENT STATEMENT...
	mov	2432,r13		! source line 2432
	mov	"\0\0AS",r10
!   if intIsZero (openFilePtr) then goto _runtimeErrorNullPointer
	load	[r14+-392],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1194 = openFilePtr + 16
	load	[r14+-392],r1
	add	r1,16,r1
	store	r1,[r14+-44]
!   if intIsZero (openFilePtr) then goto _runtimeErrorNullPointer
	load	[r14+-392],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1197 = openFilePtr + 16
	load	[r14+-392],r1
	add	r1,16,r1
	store	r1,[r14+-32]
!   Data Move: _temp_1196 = *_temp_1197  (sizeInBytes=4)
	load	[r14+-32],r1
	load	[r1],r1
	store	r1,[r14+-36]
!   _temp_1195 = _temp_1196 + copiedSoFar		(int)
	load	[r14+-36],r1
	load	[r14+-428],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-40]
!   Data Move: *_temp_1194 = _temp_1195  (sizeInBytes=4)
	load	[r14+-40],r1
	load	[r14+-44],r2
	store	r1,[r2]
! RETURN STATEMENT...
	mov	2433,r13		! source line 2433
	mov	"\0\0RE",r10
!   ReturnResult: copiedSoFar  (sizeInBytes=4)
	load	[r14+-428],r1
	store	r1,[r14+8]
	add	r15,452,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__P_Kernel_Handle_Sys_Read:
	.word	_sourceFileName
	.word	_Label_1198
	.word	12		! total size of parameters
	.word	448		! frame size = 448
	.word	_Label_1199
	.word	8
	.word	4
	.word	_Label_1200
	.word	12
	.word	4
	.word	_Label_1201
	.word	16
	.word	4
	.word	_Label_1202
	.word	-32
	.word	4
	.word	_Label_1203
	.word	-36
	.word	4
	.word	_Label_1204
	.word	-40
	.word	4
	.word	_Label_1205
	.word	-44
	.word	4
	.word	_Label_1206
	.word	-48
	.word	4
	.word	_Label_1207
	.word	-52
	.word	4
	.word	_Label_1208
	.word	-56
	.word	4
	.word	_Label_1209
	.word	-60
	.word	4
	.word	_Label_1210
	.word	-64
	.word	4
	.word	_Label_1211
	.word	-68
	.word	4
	.word	_Label_1212
	.word	-72
	.word	4
	.word	_Label_1213
	.word	-76
	.word	4
	.word	_Label_1214
	.word	-80
	.word	4
	.word	_Label_1215
	.word	-84
	.word	4
	.word	_Label_1216
	.word	-88
	.word	4
	.word	_Label_1217
	.word	-92
	.word	4
	.word	_Label_1218
	.word	-96
	.word	4
	.word	_Label_1219
	.word	-100
	.word	4
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
	.word	-116
	.word	4
	.word	_Label_1224
	.word	-120
	.word	4
	.word	_Label_1225
	.word	-124
	.word	4
	.word	_Label_1226
	.word	-128
	.word	4
	.word	_Label_1227
	.word	-9
	.word	1
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
	.word	-10
	.word	1
	.word	_Label_1232
	.word	-11
	.word	1
	.word	_Label_1233
	.word	-144
	.word	4
	.word	_Label_1234
	.word	-148
	.word	4
	.word	_Label_1235
	.word	-152
	.word	4
	.word	_Label_1236
	.word	-12
	.word	1
	.word	_Label_1237
	.word	-156
	.word	4
	.word	_Label_1238
	.word	-160
	.word	4
	.word	_Label_1239
	.word	-164
	.word	4
	.word	_Label_1240
	.word	-168
	.word	4
	.word	_Label_1241
	.word	-172
	.word	4
	.word	_Label_1242
	.word	-176
	.word	4
	.word	_Label_1243
	.word	-180
	.word	4
	.word	_Label_1244
	.word	-184
	.word	4
	.word	_Label_1245
	.word	-188
	.word	4
	.word	_Label_1246
	.word	-192
	.word	4
	.word	_Label_1247
	.word	-196
	.word	4
	.word	_Label_1248
	.word	-200
	.word	4
	.word	_Label_1249
	.word	-13
	.word	1
	.word	_Label_1250
	.word	-204
	.word	4
	.word	_Label_1251
	.word	-208
	.word	4
	.word	_Label_1252
	.word	-212
	.word	4
	.word	_Label_1253
	.word	-14
	.word	1
	.word	_Label_1254
	.word	-15
	.word	1
	.word	_Label_1255
	.word	-216
	.word	4
	.word	_Label_1256
	.word	-220
	.word	4
	.word	_Label_1257
	.word	-224
	.word	4
	.word	_Label_1258
	.word	-16
	.word	1
	.word	_Label_1259
	.word	-228
	.word	4
	.word	_Label_1260
	.word	-232
	.word	4
	.word	_Label_1261
	.word	-236
	.word	4
	.word	_Label_1262
	.word	-240
	.word	4
	.word	_Label_1263
	.word	-244
	.word	4
	.word	_Label_1264
	.word	-248
	.word	4
	.word	_Label_1265
	.word	-17
	.word	1
	.word	_Label_1266
	.word	-252
	.word	4
	.word	_Label_1267
	.word	-256
	.word	4
	.word	_Label_1268
	.word	-260
	.word	4
	.word	_Label_1269
	.word	-264
	.word	4
	.word	_Label_1270
	.word	-268
	.word	4
	.word	_Label_1271
	.word	-272
	.word	4
	.word	_Label_1272
	.word	-276
	.word	4
	.word	_Label_1273
	.word	-280
	.word	4
	.word	_Label_1274
	.word	-284
	.word	4
	.word	_Label_1275
	.word	-288
	.word	4
	.word	_Label_1276
	.word	-292
	.word	4
	.word	_Label_1277
	.word	-296
	.word	4
	.word	_Label_1278
	.word	-300
	.word	4
	.word	_Label_1279
	.word	-18
	.word	1
	.word	_Label_1280
	.word	-304
	.word	4
	.word	_Label_1281
	.word	-308
	.word	4
	.word	_Label_1282
	.word	-19
	.word	1
	.word	_Label_1283
	.word	-20
	.word	1
	.word	_Label_1284
	.word	-312
	.word	4
	.word	_Label_1285
	.word	-316
	.word	4
	.word	_Label_1286
	.word	-320
	.word	4
	.word	_Label_1287
	.word	-324
	.word	4
	.word	_Label_1288
	.word	-328
	.word	4
	.word	_Label_1289
	.word	-21
	.word	1
	.word	_Label_1290
	.word	-332
	.word	4
	.word	_Label_1291
	.word	-336
	.word	4
	.word	_Label_1292
	.word	-340
	.word	4
	.word	_Label_1293
	.word	-22
	.word	1
	.word	_Label_1294
	.word	-23
	.word	1
	.word	_Label_1295
	.word	-344
	.word	4
	.word	_Label_1296
	.word	-348
	.word	4
	.word	_Label_1297
	.word	-352
	.word	4
	.word	_Label_1298
	.word	-24
	.word	1
	.word	_Label_1299
	.word	-356
	.word	4
	.word	_Label_1300
	.word	-360
	.word	4
	.word	_Label_1301
	.word	-364
	.word	4
	.word	_Label_1302
	.word	-368
	.word	4
	.word	_Label_1303
	.word	-372
	.word	4
	.word	_Label_1304
	.word	-376
	.word	4
	.word	_Label_1305
	.word	-380
	.word	4
	.word	_Label_1306
	.word	-384
	.word	4
	.word	_Label_1307
	.word	-388
	.word	4
	.word	_Label_1308
	.word	-392
	.word	4
	.word	_Label_1309
	.word	-396
	.word	4
	.word	_Label_1310
	.word	-400
	.word	4
	.word	_Label_1311
	.word	-404
	.word	4
	.word	_Label_1312
	.word	-408
	.word	4
	.word	_Label_1313
	.word	-412
	.word	4
	.word	_Label_1314
	.word	-416
	.word	4
	.word	_Label_1315
	.word	-420
	.word	4
	.word	_Label_1316
	.word	-424
	.word	4
	.word	_Label_1317
	.word	-428
	.word	4
	.word	_Label_1318
	.word	-432
	.word	4
	.word	_Label_1319
	.word	-25
	.word	1
	.word	_Label_1320
	.word	-26
	.word	1
	.word	_Label_1321
	.word	-436
	.word	4
	.word	0
_Label_1198:
	.ascii	"Handle_Sys_Read\0"
	.align
_Label_1199:
	.byte	'I'
	.ascii	"fileDesc\0"
	.align
_Label_1200:
	.byte	'P'
	.ascii	"buffer\0"
	.align
_Label_1201:
	.byte	'I'
	.ascii	"sizeInBytes\0"
	.align
_Label_1202:
	.byte	'?'
	.ascii	"_temp_1197\0"
	.align
_Label_1203:
	.byte	'?'
	.ascii	"_temp_1196\0"
	.align
_Label_1204:
	.byte	'?'
	.ascii	"_temp_1195\0"
	.align
_Label_1205:
	.byte	'?'
	.ascii	"_temp_1194\0"
	.align
_Label_1206:
	.byte	'?'
	.ascii	"_temp_1193\0"
	.align
_Label_1207:
	.byte	'?'
	.ascii	"_temp_1192\0"
	.align
_Label_1208:
	.byte	'?'
	.ascii	"_temp_1191\0"
	.align
_Label_1209:
	.byte	'?'
	.ascii	"_temp_1190\0"
	.align
_Label_1210:
	.byte	'?'
	.ascii	"_temp_1187\0"
	.align
_Label_1211:
	.byte	'?'
	.ascii	"_temp_1186\0"
	.align
_Label_1212:
	.byte	'?'
	.ascii	"_temp_1185\0"
	.align
_Label_1213:
	.byte	'?'
	.ascii	"_temp_1184\0"
	.align
_Label_1214:
	.byte	'?'
	.ascii	"_temp_1183\0"
	.align
_Label_1215:
	.byte	'?'
	.ascii	"_temp_1182\0"
	.align
_Label_1216:
	.byte	'?'
	.ascii	"_temp_1181\0"
	.align
_Label_1217:
	.byte	'?'
	.ascii	"_temp_1180\0"
	.align
_Label_1218:
	.byte	'?'
	.ascii	"_temp_1179\0"
	.align
_Label_1219:
	.byte	'?'
	.ascii	"_temp_1178\0"
	.align
_Label_1220:
	.byte	'?'
	.ascii	"_temp_1177\0"
	.align
_Label_1221:
	.byte	'?'
	.ascii	"_temp_1174\0"
	.align
_Label_1222:
	.byte	'?'
	.ascii	"_temp_1171\0"
	.align
_Label_1223:
	.byte	'?'
	.ascii	"_temp_1168\0"
	.align
_Label_1224:
	.byte	'?'
	.ascii	"_temp_1167\0"
	.align
_Label_1225:
	.byte	'?'
	.ascii	"_temp_1166\0"
	.align
_Label_1226:
	.byte	'?'
	.ascii	"_temp_1162\0"
	.align
_Label_1227:
	.byte	'C'
	.ascii	"_temp_1159\0"
	.align
_Label_1228:
	.byte	'?'
	.ascii	"_temp_1158\0"
	.align
_Label_1229:
	.byte	'?'
	.ascii	"_temp_1157\0"
	.align
_Label_1230:
	.byte	'?'
	.ascii	"_temp_1156\0"
	.align
_Label_1231:
	.byte	'C'
	.ascii	"_temp_1155\0"
	.align
_Label_1232:
	.byte	'C'
	.ascii	"_temp_1154\0"
	.align
_Label_1233:
	.byte	'?'
	.ascii	"_temp_1153\0"
	.align
_Label_1234:
	.byte	'?'
	.ascii	"_temp_1152\0"
	.align
_Label_1235:
	.byte	'?'
	.ascii	"_temp_1151\0"
	.align
_Label_1236:
	.byte	'C'
	.ascii	"_temp_1150\0"
	.align
_Label_1237:
	.byte	'?'
	.ascii	"_temp_1142\0"
	.align
_Label_1238:
	.byte	'?'
	.ascii	"_temp_1139\0"
	.align
_Label_1239:
	.byte	'?'
	.ascii	"_temp_1136\0"
	.align
_Label_1240:
	.byte	'?'
	.ascii	"_temp_1135\0"
	.align
_Label_1241:
	.byte	'?'
	.ascii	"_temp_1134\0"
	.align
_Label_1242:
	.byte	'?'
	.ascii	"_temp_1130\0"
	.align
_Label_1243:
	.byte	'?'
	.ascii	"_temp_1129\0"
	.align
_Label_1244:
	.byte	'?'
	.ascii	"_temp_1128\0"
	.align
_Label_1245:
	.byte	'?'
	.ascii	"_temp_1124\0"
	.align
_Label_1246:
	.byte	'?'
	.ascii	"_temp_1123\0"
	.align
_Label_1247:
	.byte	'?'
	.ascii	"_temp_1122\0"
	.align
_Label_1248:
	.byte	'?'
	.ascii	"_temp_1121\0"
	.align
_Label_1249:
	.byte	'C'
	.ascii	"_temp_1120\0"
	.align
_Label_1250:
	.byte	'?'
	.ascii	"_temp_1119\0"
	.align
_Label_1251:
	.byte	'?'
	.ascii	"_temp_1118\0"
	.align
_Label_1252:
	.byte	'?'
	.ascii	"_temp_1117\0"
	.align
_Label_1253:
	.byte	'C'
	.ascii	"_temp_1116\0"
	.align
_Label_1254:
	.byte	'C'
	.ascii	"_temp_1115\0"
	.align
_Label_1255:
	.byte	'?'
	.ascii	"_temp_1114\0"
	.align
_Label_1256:
	.byte	'?'
	.ascii	"_temp_1113\0"
	.align
_Label_1257:
	.byte	'?'
	.ascii	"_temp_1112\0"
	.align
_Label_1258:
	.byte	'C'
	.ascii	"_temp_1111\0"
	.align
_Label_1259:
	.byte	'?'
	.ascii	"_temp_1103\0"
	.align
_Label_1260:
	.byte	'?'
	.ascii	"_temp_1102\0"
	.align
_Label_1261:
	.byte	'?'
	.ascii	"_temp_1101\0"
	.align
_Label_1262:
	.byte	'?'
	.ascii	"_temp_1100\0"
	.align
_Label_1263:
	.byte	'?'
	.ascii	"_temp_1099\0"
	.align
_Label_1264:
	.byte	'?'
	.ascii	"_temp_1098\0"
	.align
_Label_1265:
	.byte	'C'
	.ascii	"_temp_1097\0"
	.align
_Label_1266:
	.byte	'?'
	.ascii	"_temp_1094\0"
	.align
_Label_1267:
	.byte	'?'
	.ascii	"_temp_1093\0"
	.align
_Label_1268:
	.byte	'?'
	.ascii	"_temp_1092\0"
	.align
_Label_1269:
	.byte	'?'
	.ascii	"_temp_1091\0"
	.align
_Label_1270:
	.byte	'?'
	.ascii	"_temp_1090\0"
	.align
_Label_1271:
	.byte	'?'
	.ascii	"_temp_1089\0"
	.align
_Label_1272:
	.byte	'?'
	.ascii	"_temp_1088\0"
	.align
_Label_1273:
	.byte	'?'
	.ascii	"_temp_1087\0"
	.align
_Label_1274:
	.byte	'?'
	.ascii	"_temp_1086\0"
	.align
_Label_1275:
	.byte	'?'
	.ascii	"_temp_1085\0"
	.align
_Label_1276:
	.byte	'?'
	.ascii	"_temp_1084\0"
	.align
_Label_1277:
	.byte	'?'
	.ascii	"_temp_1083\0"
	.align
_Label_1278:
	.byte	'?'
	.ascii	"_temp_1082\0"
	.align
_Label_1279:
	.byte	'C'
	.ascii	"_temp_1081\0"
	.align
_Label_1280:
	.byte	'?'
	.ascii	"_temp_1080\0"
	.align
_Label_1281:
	.byte	'?'
	.ascii	"_temp_1076\0"
	.align
_Label_1282:
	.byte	'C'
	.ascii	"_temp_1075\0"
	.align
_Label_1283:
	.byte	'C'
	.ascii	"_temp_1074\0"
	.align
_Label_1284:
	.byte	'?'
	.ascii	"_temp_1066\0"
	.align
_Label_1285:
	.byte	'?'
	.ascii	"_temp_1065\0"
	.align
_Label_1286:
	.byte	'?'
	.ascii	"_temp_1064\0"
	.align
_Label_1287:
	.byte	'?'
	.ascii	"_temp_1063\0"
	.align
_Label_1288:
	.byte	'?'
	.ascii	"_temp_1062\0"
	.align
_Label_1289:
	.byte	'C'
	.ascii	"_temp_1061\0"
	.align
_Label_1290:
	.byte	'?'
	.ascii	"_temp_1060\0"
	.align
_Label_1291:
	.byte	'?'
	.ascii	"_temp_1059\0"
	.align
_Label_1292:
	.byte	'?'
	.ascii	"_temp_1058\0"
	.align
_Label_1293:
	.byte	'C'
	.ascii	"_temp_1057\0"
	.align
_Label_1294:
	.byte	'C'
	.ascii	"_temp_1056\0"
	.align
_Label_1295:
	.byte	'?'
	.ascii	"_temp_1055\0"
	.align
_Label_1296:
	.byte	'?'
	.ascii	"_temp_1054\0"
	.align
_Label_1297:
	.byte	'?'
	.ascii	"_temp_1053\0"
	.align
_Label_1298:
	.byte	'C'
	.ascii	"_temp_1052\0"
	.align
_Label_1299:
	.byte	'?'
	.ascii	"_temp_1046\0"
	.align
_Label_1300:
	.byte	'?'
	.ascii	"_temp_1045\0"
	.align
_Label_1301:
	.byte	'?'
	.ascii	"_temp_1041\0"
	.align
_Label_1302:
	.byte	'?'
	.ascii	"_temp_1040\0"
	.align
_Label_1303:
	.byte	'?'
	.ascii	"_temp_1039\0"
	.align
_Label_1304:
	.byte	'?'
	.ascii	"_temp_1032\0"
	.align
_Label_1305:
	.byte	'?'
	.ascii	"_temp_1031\0"
	.align
_Label_1306:
	.byte	'?'
	.ascii	"_temp_1030\0"
	.align
_Label_1307:
	.byte	'?'
	.ascii	"_temp_1029\0"
	.align
_Label_1308:
	.byte	'P'
	.ascii	"openFilePtr\0"
	.align
_Label_1309:
	.byte	'I'
	.ascii	"virtAddr\0"
	.align
_Label_1310:
	.byte	'I'
	.ascii	"virtPage\0"
	.align
_Label_1311:
	.byte	'I'
	.ascii	"offset\0"
	.align
_Label_1312:
	.byte	'I'
	.ascii	"chunkSize\0"
	.align
_Label_1313:
	.byte	'I'
	.ascii	"thisChunkSize\0"
	.align
_Label_1314:
	.byte	'I'
	.ascii	"currentPos\0"
	.align
_Label_1315:
	.byte	'I'
	.ascii	"nextPosInFile\0"
	.align
_Label_1316:
	.byte	'I'
	.ascii	"sizeOfFileInBytes\0"
	.align
_Label_1317:
	.byte	'I'
	.ascii	"copiedSoFar\0"
	.align
_Label_1318:
	.byte	'I'
	.ascii	"destAddr\0"
	.align
_Label_1319:
	.byte	'B'
	.ascii	"synchReadStatus\0"
	.align
_Label_1320:
	.byte	'C'
	.ascii	"incomingChar\0"
	.align
_Label_1321:
	.byte	'I'
	.ascii	"i\0"
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
_Label_4106:
	push	r0
	sub	r1,1,r1
	bne	_Label_4106
	mov	2439,r13		! source line 2439
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! IF STATEMENT...
	mov	2457,r13		! source line 2457
	mov	"\0\0IF",r10
!   if fileDesc < 10 then goto _Label_1324		(int)
	load	[r14+8],r1
	mov	10,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bl	_Label_1324
	jmp	_Label_1322
_Label_1324:
!   if fileDesc >= 0 then goto _Label_1323		(int)
	load	[r14+8],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_1323
!	jmp	_Label_1322
_Label_1322:
! THEN...
	mov	2458,r13		! source line 2458
	mov	"\0\0TN",r10
! RETURN STATEMENT...
	mov	2458,r13		! source line 2458
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,212,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_1323:
! ASSIGNMENT STATEMENT...
	mov	2462,r13		! source line 2462
	mov	"\0\0AS",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1326 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-148]
!   Data Move: _temp_1325 = *_temp_1326  (sizeInBytes=4)
	load	[r14+-148],r1
	load	[r1],r1
	store	r1,[r14+-152]
!   if intIsZero (_temp_1325) then goto _runtimeErrorNullPointer
	load	[r14+-152],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1327 = _temp_1325 + 124
	load	[r14+-152],r1
	add	r1,124,r1
	store	r1,[r14+-144]
!   Move address of _temp_1327 [fileDesc ] into _temp_1328
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
!   Data Move: openFilePtr = *_temp_1328  (sizeInBytes=4)
	load	[r14+-140],r1
	load	[r1],r1
	store	r1,[r14+-156]
! IF STATEMENT...
	mov	2464,r13		! source line 2464
	mov	"\0\0IF",r10
!   if intIsZero (openFilePtr) then goto _Label_1329
	load	[r14+-156],r1
	cmp	r1,r0
	be	_Label_1329
	jmp	_Label_1330
_Label_1329:
! THEN...
	mov	2465,r13		! source line 2465
	mov	"\0\0TN",r10
! RETURN STATEMENT...
	mov	2465,r13		! source line 2465
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,212,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_1330:
! IF STATEMENT...
	mov	2469,r13		! source line 2469
	mov	"\0\0IF",r10
!   if sizeInBytes >= 0 then goto _Label_1332		(int)
	load	[r14+16],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_1332
!	jmp	_Label_1331
_Label_1331:
! THEN...
	mov	2470,r13		! source line 2470
	mov	"\0\0TN",r10
! RETURN STATEMENT...
	mov	2470,r13		! source line 2470
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,212,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_1332:
! ASSIGNMENT STATEMENT...
	mov	2536,r13		! source line 2536
	mov	"\0\0AS",r10
!   virtAddr = buffer		(4 bytes)
	load	[r14+12],r1
	store	r1,[r14+-160]
! ASSIGNMENT STATEMENT...
	mov	2537,r13		! source line 2537
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
	mov	2538,r13		! source line 2538
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
	mov	2539,r13		! source line 2539
	mov	"\0\0AS",r10
!   copiedSoFar = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-192]
! ASSIGNMENT STATEMENT...
	mov	2540,r13		! source line 2540
	mov	"\0\0AS",r10
!   chunkSize = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-172]
! ASSIGNMENT STATEMENT...
	mov	2543,r13		! source line 2543
	mov	"\0\0AS",r10
!   if intIsZero (openFilePtr) then goto _runtimeErrorNullPointer
	load	[r14+-156],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1333 = openFilePtr + 16
	load	[r14+-156],r1
	add	r1,16,r1
	store	r1,[r14+-136]
!   Data Move: currentPos = *_temp_1333  (sizeInBytes=4)
	load	[r14+-136],r1
	load	[r1],r1
	store	r1,[r14+-180]
! ASSIGNMENT STATEMENT...
	mov	2544,r13		! source line 2544
	mov	"\0\0AS",r10
!   nextPosInFile = currentPos		(4 bytes)
	load	[r14+-180],r1
	store	r1,[r14+-184]
! WHILE STATEMENT...
	mov	2549,r13		! source line 2549
	mov	"\0\0WH",r10
_Label_1334:
!	jmp	_Label_1335
_Label_1335:
	mov	2549,r13		! source line 2549
	mov	"\0\0WB",r10
! ASSIGNMENT STATEMENT...
	mov	2552,r13		! source line 2552
	mov	"\0\0AS",r10
!   thisChunkSize = 8192 - offset		(int)
	mov	8192,r1
	load	[r14+-168],r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-176]
! ASSIGNMENT STATEMENT...
	mov	2553,r13		! source line 2553
	mov	"\0\0AS",r10
!   if intIsZero (openFilePtr) then goto _runtimeErrorNullPointer
	load	[r14+-156],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1338 = openFilePtr + 20
	load	[r14+-156],r1
	add	r1,20,r1
	store	r1,[r14+-128]
!   Data Move: _temp_1337 = *_temp_1338  (sizeInBytes=4)
	load	[r14+-128],r1
	load	[r1],r1
	store	r1,[r14+-132]
!   if intIsZero (_temp_1337) then goto _runtimeErrorNullPointer
	load	[r14+-132],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1339 = _temp_1337 + 24
	load	[r14+-132],r1
	add	r1,24,r1
	store	r1,[r14+-124]
!   Data Move: sizeOfFileInBytes = *_temp_1339  (sizeInBytes=4)
	load	[r14+-124],r1
	load	[r1],r1
	store	r1,[r14+-188]
! IF STATEMENT...
	mov	2555,r13		! source line 2555
	mov	"\0\0IF",r10
!   _temp_1342 = nextPosInFile + thisChunkSize		(int)
	load	[r14+-184],r1
	load	[r14+-176],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-120]
!   if _temp_1342 <= sizeOfFileInBytes then goto _Label_1341		(int)
	load	[r14+-120],r1
	load	[r14+-188],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	ble	_Label_1341
!	jmp	_Label_1340
_Label_1340:
! THEN...
	mov	2556,r13		! source line 2556
	mov	"\0\0TN",r10
! ASSIGNMENT STATEMENT...
	mov	2556,r13		! source line 2556
	mov	"\0\0AS",r10
!   thisChunkSize = sizeOfFileInBytes - nextPosInFile		(int)
	load	[r14+-188],r1
	load	[r14+-184],r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-176]
! END IF...
_Label_1341:
! IF STATEMENT...
	mov	2559,r13		! source line 2559
	mov	"\0\0IF",r10
!   _temp_1345 = copiedSoFar + thisChunkSize		(int)
	load	[r14+-192],r1
	load	[r14+-176],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-116]
!   if _temp_1345 <= sizeInBytes then goto _Label_1344		(int)
	load	[r14+-116],r1
	load	[r14+16],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	ble	_Label_1344
!	jmp	_Label_1343
_Label_1343:
! THEN...
	mov	2560,r13		! source line 2560
	mov	"\0\0TN",r10
! ASSIGNMENT STATEMENT...
	mov	2560,r13		! source line 2560
	mov	"\0\0AS",r10
!   thisChunkSize = sizeInBytes - copiedSoFar		(int)
	load	[r14+16],r1
	load	[r14+-192],r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-176]
! END IF...
_Label_1344:
! IF STATEMENT...
	mov	2564,r13		! source line 2564
	mov	"\0\0IF",r10
!   if thisChunkSize > 0 then goto _Label_1347		(int)
	load	[r14+-176],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_1347
!	jmp	_Label_1346
_Label_1346:
! THEN...
	mov	2565,r13		! source line 2565
	mov	"\0\0TN",r10
! BREAK STATEMENT...
	mov	2565,r13		! source line 2565
	mov	"\0\0BR",r10
	jmp	_Label_1336
! END IF...
_Label_1347:
! IF STATEMENT...
	mov	2569,r13		! source line 2569
	mov	"\0\0IF",r10
!   if virtPage >= 0 then goto _Label_1350		(int)
	load	[r14+-164],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_1350
!	jmp	_Label_1351
_Label_1351:
!   if virtPage < 20 then goto _Label_1350		(int)
	load	[r14+-164],r1
	mov	20,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bl	_Label_1350
	jmp	_Label_1348
_Label_1350:
	mov	2569,r13		! source line 2569
	mov	"\0\0SE",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1354 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-108]
!   Data Move: _temp_1353 = *_temp_1354  (sizeInBytes=4)
	load	[r14+-108],r1
	load	[r1],r1
	store	r1,[r14+-112]
!   if intIsZero (_temp_1353) then goto _runtimeErrorNullPointer
	load	[r14+-112],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1355 = _temp_1353 + 32
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
!   Retrieve Result: targetName=_temp_1352  sizeInBytes=1
	loadb	[r15],r1
	storeb	r1,[r14+-10]
!   _temp_1356 = _temp_1352 XOR 0		(bool)
	loadb	[r14+-10],r1
	mov	0,r2
	xor	r1,r2,r1
	storeb	r1,[r14+-9]
!   if _temp_1356 then goto _Label_1349 else goto _Label_1348
	loadb	[r14+-9],r1
	cmp	r1,0
	be	_Label_1348
	jmp	_Label_1349
_Label_1348:
! THEN...
	mov	2570,r13		! source line 2570
	mov	"\0\0TN",r10
! RETURN STATEMENT...
	mov	2570,r13		! source line 2570
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,212,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_1349:
! ASSIGNMENT STATEMENT...
	mov	2574,r13		! source line 2574
	mov	"\0\0AS",r10
!   nextPosInFile = nextPosInFile + thisChunkSize		(int)
	load	[r14+-184],r1
	load	[r14+-176],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-184]
! ASSIGNMENT STATEMENT...
	mov	2575,r13		! source line 2575
	mov	"\0\0AS",r10
!   copiedSoFar = copiedSoFar + thisChunkSize		(int)
	load	[r14+-192],r1
	load	[r14+-176],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-192]
! ASSIGNMENT STATEMENT...
	mov	2576,r13		! source line 2576
	mov	"\0\0AS",r10
!   virtPage = virtPage + 1		(int)
	load	[r14+-164],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-164]
! ASSIGNMENT STATEMENT...
	mov	2577,r13		! source line 2577
	mov	"\0\0AS",r10
!   offset = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-168]
! IF STATEMENT...
	mov	2580,r13		! source line 2580
	mov	"\0\0IF",r10
!   if copiedSoFar != sizeInBytes then goto _Label_1358		(int)
	load	[r14+-192],r1
	load	[r14+16],r2
	cmp	r1,r2
	bne	_Label_1358
!	jmp	_Label_1357
_Label_1357:
! THEN...
	mov	2581,r13		! source line 2581
	mov	"\0\0TN",r10
! BREAK STATEMENT...
	mov	2581,r13		! source line 2581
	mov	"\0\0BR",r10
	jmp	_Label_1336
! END IF...
_Label_1358:
! END WHILE...
	jmp	_Label_1334
_Label_1336:
! ASSIGNMENT STATEMENT...
	mov	2592,r13		! source line 2592
	mov	"\0\0AS",r10
!   virtAddr = buffer		(4 bytes)
	load	[r14+12],r1
	store	r1,[r14+-160]
! ASSIGNMENT STATEMENT...
	mov	2593,r13		! source line 2593
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
	mov	2594,r13		! source line 2594
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
	mov	2595,r13		! source line 2595
	mov	"\0\0AS",r10
!   copiedSoFar = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-192]
! ASSIGNMENT STATEMENT...
	mov	2596,r13		! source line 2596
	mov	"\0\0AS",r10
!   chunkSize = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-172]
! ASSIGNMENT STATEMENT...
	mov	2599,r13		! source line 2599
	mov	"\0\0AS",r10
!   if intIsZero (openFilePtr) then goto _runtimeErrorNullPointer
	load	[r14+-156],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1359 = openFilePtr + 16
	load	[r14+-156],r1
	add	r1,16,r1
	store	r1,[r14+-100]
!   Data Move: currentPos = *_temp_1359  (sizeInBytes=4)
	load	[r14+-100],r1
	load	[r1],r1
	store	r1,[r14+-180]
! ASSIGNMENT STATEMENT...
	mov	2600,r13		! source line 2600
	mov	"\0\0AS",r10
!   nextPosInFile = currentPos		(4 bytes)
	load	[r14+-180],r1
	store	r1,[r14+-184]
! WHILE STATEMENT...
	mov	2602,r13		! source line 2602
	mov	"\0\0WH",r10
_Label_1360:
!	jmp	_Label_1361
_Label_1361:
	mov	2602,r13		! source line 2602
	mov	"\0\0WB",r10
! ASSIGNMENT STATEMENT...
	mov	2605,r13		! source line 2605
	mov	"\0\0AS",r10
!   thisChunkSize = 8192 - offset		(int)
	mov	8192,r1
	load	[r14+-168],r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-176]
! ASSIGNMENT STATEMENT...
	mov	2606,r13		! source line 2606
	mov	"\0\0AS",r10
!   if intIsZero (openFilePtr) then goto _runtimeErrorNullPointer
	load	[r14+-156],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1364 = openFilePtr + 20
	load	[r14+-156],r1
	add	r1,20,r1
	store	r1,[r14+-92]
!   Data Move: _temp_1363 = *_temp_1364  (sizeInBytes=4)
	load	[r14+-92],r1
	load	[r1],r1
	store	r1,[r14+-96]
!   if intIsZero (_temp_1363) then goto _runtimeErrorNullPointer
	load	[r14+-96],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1365 = _temp_1363 + 24
	load	[r14+-96],r1
	add	r1,24,r1
	store	r1,[r14+-88]
!   Data Move: sizeOfFileInBytes = *_temp_1365  (sizeInBytes=4)
	load	[r14+-88],r1
	load	[r1],r1
	store	r1,[r14+-188]
! IF STATEMENT...
	mov	2608,r13		! source line 2608
	mov	"\0\0IF",r10
!   _temp_1368 = nextPosInFile + thisChunkSize		(int)
	load	[r14+-184],r1
	load	[r14+-176],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-84]
!   if _temp_1368 <= sizeOfFileInBytes then goto _Label_1367		(int)
	load	[r14+-84],r1
	load	[r14+-188],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	ble	_Label_1367
!	jmp	_Label_1366
_Label_1366:
! THEN...
	mov	2609,r13		! source line 2609
	mov	"\0\0TN",r10
! ASSIGNMENT STATEMENT...
	mov	2609,r13		! source line 2609
	mov	"\0\0AS",r10
!   thisChunkSize = sizeOfFileInBytes - nextPosInFile		(int)
	load	[r14+-188],r1
	load	[r14+-184],r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-176]
! END IF...
_Label_1367:
! IF STATEMENT...
	mov	2612,r13		! source line 2612
	mov	"\0\0IF",r10
!   _temp_1371 = copiedSoFar + thisChunkSize		(int)
	load	[r14+-192],r1
	load	[r14+-176],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-80]
!   if _temp_1371 <= sizeInBytes then goto _Label_1370		(int)
	load	[r14+-80],r1
	load	[r14+16],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	ble	_Label_1370
!	jmp	_Label_1369
_Label_1369:
! THEN...
	mov	2613,r13		! source line 2613
	mov	"\0\0TN",r10
! ASSIGNMENT STATEMENT...
	mov	2613,r13		! source line 2613
	mov	"\0\0AS",r10
!   thisChunkSize = sizeInBytes - copiedSoFar		(int)
	load	[r14+16],r1
	load	[r14+-192],r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-176]
! END IF...
_Label_1370:
! IF STATEMENT...
	mov	2617,r13		! source line 2617
	mov	"\0\0IF",r10
!   if thisChunkSize > 0 then goto _Label_1373		(int)
	load	[r14+-176],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_1373
!	jmp	_Label_1372
_Label_1372:
! THEN...
	mov	2618,r13		! source line 2618
	mov	"\0\0TN",r10
! BREAK STATEMENT...
	mov	2618,r13		! source line 2618
	mov	"\0\0BR",r10
	jmp	_Label_1362
! END IF...
_Label_1373:
! SEND STATEMENT...
	mov	2622,r13		! source line 2622
	mov	"\0\0SE",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1375 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-72]
!   Data Move: _temp_1374 = *_temp_1375  (sizeInBytes=4)
	load	[r14+-72],r1
	load	[r1],r1
	store	r1,[r14+-76]
!   if intIsZero (_temp_1374) then goto _runtimeErrorNullPointer
	load	[r14+-76],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1376 = _temp_1374 + 32
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
	mov	2623,r13		! source line 2623
	mov	"\0\0AS",r10
	mov	2623,r13		! source line 2623
	mov	"\0\0SE",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1379 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-56]
!   Data Move: _temp_1378 = *_temp_1379  (sizeInBytes=4)
	load	[r14+-56],r1
	load	[r1],r1
	store	r1,[r14+-60]
!   if intIsZero (_temp_1378) then goto _runtimeErrorNullPointer
	load	[r14+-60],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1380 = _temp_1378 + 32
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
!   Retrieve Result: targetName=_temp_1377  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-64]
!   destAddr = _temp_1377 + offset		(int)
	load	[r14+-64],r1
	load	[r14+-168],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-196]
! ASSIGNMENT STATEMENT...
	mov	2624,r13		! source line 2624
	mov	"\0\0AS",r10
	mov	2624,r13		! source line 2624
	mov	"\0\0SE",r10
!   _temp_1381 = &_P_Kernel_fileManager
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
	mov	2627,r13		! source line 2627
	mov	"\0\0AS",r10
!   nextPosInFile = nextPosInFile + thisChunkSize		(int)
	load	[r14+-184],r1
	load	[r14+-176],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-184]
! ASSIGNMENT STATEMENT...
	mov	2628,r13		! source line 2628
	mov	"\0\0AS",r10
!   copiedSoFar = copiedSoFar + thisChunkSize		(int)
	load	[r14+-192],r1
	load	[r14+-176],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-192]
! ASSIGNMENT STATEMENT...
	mov	2629,r13		! source line 2629
	mov	"\0\0AS",r10
!   virtPage = virtPage + 1		(int)
	load	[r14+-164],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-164]
! ASSIGNMENT STATEMENT...
	mov	2630,r13		! source line 2630
	mov	"\0\0AS",r10
!   offset = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-168]
! IF STATEMENT...
	mov	2633,r13		! source line 2633
	mov	"\0\0IF",r10
!   if copiedSoFar != sizeInBytes then goto _Label_1383		(int)
	load	[r14+-192],r1
	load	[r14+16],r2
	cmp	r1,r2
	bne	_Label_1383
!	jmp	_Label_1382
_Label_1382:
! THEN...
	mov	2634,r13		! source line 2634
	mov	"\0\0TN",r10
! ASSIGNMENT STATEMENT...
	mov	2634,r13		! source line 2634
	mov	"\0\0AS",r10
!   if intIsZero (openFilePtr) then goto _runtimeErrorNullPointer
	load	[r14+-156],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1384 = openFilePtr + 16
	load	[r14+-156],r1
	add	r1,16,r1
	store	r1,[r14+-44]
!   if intIsZero (openFilePtr) then goto _runtimeErrorNullPointer
	load	[r14+-156],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1387 = openFilePtr + 16
	load	[r14+-156],r1
	add	r1,16,r1
	store	r1,[r14+-32]
!   Data Move: _temp_1386 = *_temp_1387  (sizeInBytes=4)
	load	[r14+-32],r1
	load	[r1],r1
	store	r1,[r14+-36]
!   _temp_1385 = _temp_1386 + copiedSoFar		(int)
	load	[r14+-36],r1
	load	[r14+-192],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-40]
!   Data Move: *_temp_1384 = _temp_1385  (sizeInBytes=4)
	load	[r14+-40],r1
	load	[r14+-44],r2
	store	r1,[r2]
! RETURN STATEMENT...
	mov	2635,r13		! source line 2635
	mov	"\0\0RE",r10
!   ReturnResult: copiedSoFar  (sizeInBytes=4)
	load	[r14+-192],r1
	store	r1,[r14+8]
	add	r15,212,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_1383:
! END WHILE...
	jmp	_Label_1360
_Label_1362:
! ASSIGNMENT STATEMENT...
	mov	2640,r13		! source line 2640
	mov	"\0\0AS",r10
!   if intIsZero (openFilePtr) then goto _runtimeErrorNullPointer
	load	[r14+-156],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1388 = openFilePtr + 16
	load	[r14+-156],r1
	add	r1,16,r1
	store	r1,[r14+-28]
!   if intIsZero (openFilePtr) then goto _runtimeErrorNullPointer
	load	[r14+-156],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1391 = openFilePtr + 16
	load	[r14+-156],r1
	add	r1,16,r1
	store	r1,[r14+-16]
!   Data Move: _temp_1390 = *_temp_1391  (sizeInBytes=4)
	load	[r14+-16],r1
	load	[r1],r1
	store	r1,[r14+-20]
!   _temp_1389 = _temp_1390 + copiedSoFar		(int)
	load	[r14+-20],r1
	load	[r14+-192],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-24]
!   Data Move: *_temp_1388 = _temp_1389  (sizeInBytes=4)
	load	[r14+-24],r1
	load	[r14+-28],r2
	store	r1,[r2]
! RETURN STATEMENT...
	mov	2641,r13		! source line 2641
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
	.word	_Label_1392
	.word	12		! total size of parameters
	.word	208		! frame size = 208
	.word	_Label_1393
	.word	8
	.word	4
	.word	_Label_1394
	.word	12
	.word	4
	.word	_Label_1395
	.word	16
	.word	4
	.word	_Label_1396
	.word	-16
	.word	4
	.word	_Label_1397
	.word	-20
	.word	4
	.word	_Label_1398
	.word	-24
	.word	4
	.word	_Label_1399
	.word	-28
	.word	4
	.word	_Label_1400
	.word	-32
	.word	4
	.word	_Label_1401
	.word	-36
	.word	4
	.word	_Label_1402
	.word	-40
	.word	4
	.word	_Label_1403
	.word	-44
	.word	4
	.word	_Label_1404
	.word	-48
	.word	4
	.word	_Label_1405
	.word	-52
	.word	4
	.word	_Label_1406
	.word	-56
	.word	4
	.word	_Label_1407
	.word	-60
	.word	4
	.word	_Label_1408
	.word	-64
	.word	4
	.word	_Label_1409
	.word	-68
	.word	4
	.word	_Label_1410
	.word	-72
	.word	4
	.word	_Label_1411
	.word	-76
	.word	4
	.word	_Label_1412
	.word	-80
	.word	4
	.word	_Label_1413
	.word	-84
	.word	4
	.word	_Label_1414
	.word	-88
	.word	4
	.word	_Label_1415
	.word	-92
	.word	4
	.word	_Label_1416
	.word	-96
	.word	4
	.word	_Label_1417
	.word	-100
	.word	4
	.word	_Label_1418
	.word	-9
	.word	1
	.word	_Label_1419
	.word	-104
	.word	4
	.word	_Label_1420
	.word	-108
	.word	4
	.word	_Label_1421
	.word	-112
	.word	4
	.word	_Label_1422
	.word	-10
	.word	1
	.word	_Label_1423
	.word	-116
	.word	4
	.word	_Label_1424
	.word	-120
	.word	4
	.word	_Label_1425
	.word	-124
	.word	4
	.word	_Label_1426
	.word	-128
	.word	4
	.word	_Label_1427
	.word	-132
	.word	4
	.word	_Label_1428
	.word	-136
	.word	4
	.word	_Label_1429
	.word	-140
	.word	4
	.word	_Label_1430
	.word	-144
	.word	4
	.word	_Label_1431
	.word	-148
	.word	4
	.word	_Label_1432
	.word	-152
	.word	4
	.word	_Label_1433
	.word	-156
	.word	4
	.word	_Label_1434
	.word	-160
	.word	4
	.word	_Label_1435
	.word	-164
	.word	4
	.word	_Label_1436
	.word	-168
	.word	4
	.word	_Label_1437
	.word	-172
	.word	4
	.word	_Label_1438
	.word	-176
	.word	4
	.word	_Label_1439
	.word	-180
	.word	4
	.word	_Label_1440
	.word	-184
	.word	4
	.word	_Label_1441
	.word	-188
	.word	4
	.word	_Label_1442
	.word	-192
	.word	4
	.word	_Label_1443
	.word	-196
	.word	4
	.word	_Label_1444
	.word	-11
	.word	1
	.word	0
_Label_1392:
	.ascii	"Handle_Sys_Write\0"
	.align
_Label_1393:
	.byte	'I'
	.ascii	"fileDesc\0"
	.align
_Label_1394:
	.byte	'P'
	.ascii	"buffer\0"
	.align
_Label_1395:
	.byte	'I'
	.ascii	"sizeInBytes\0"
	.align
_Label_1396:
	.byte	'?'
	.ascii	"_temp_1391\0"
	.align
_Label_1397:
	.byte	'?'
	.ascii	"_temp_1390\0"
	.align
_Label_1398:
	.byte	'?'
	.ascii	"_temp_1389\0"
	.align
_Label_1399:
	.byte	'?'
	.ascii	"_temp_1388\0"
	.align
_Label_1400:
	.byte	'?'
	.ascii	"_temp_1387\0"
	.align
_Label_1401:
	.byte	'?'
	.ascii	"_temp_1386\0"
	.align
_Label_1402:
	.byte	'?'
	.ascii	"_temp_1385\0"
	.align
_Label_1403:
	.byte	'?'
	.ascii	"_temp_1384\0"
	.align
_Label_1404:
	.byte	'?'
	.ascii	"_temp_1381\0"
	.align
_Label_1405:
	.byte	'?'
	.ascii	"_temp_1380\0"
	.align
_Label_1406:
	.byte	'?'
	.ascii	"_temp_1379\0"
	.align
_Label_1407:
	.byte	'?'
	.ascii	"_temp_1378\0"
	.align
_Label_1408:
	.byte	'?'
	.ascii	"_temp_1377\0"
	.align
_Label_1409:
	.byte	'?'
	.ascii	"_temp_1376\0"
	.align
_Label_1410:
	.byte	'?'
	.ascii	"_temp_1375\0"
	.align
_Label_1411:
	.byte	'?'
	.ascii	"_temp_1374\0"
	.align
_Label_1412:
	.byte	'?'
	.ascii	"_temp_1371\0"
	.align
_Label_1413:
	.byte	'?'
	.ascii	"_temp_1368\0"
	.align
_Label_1414:
	.byte	'?'
	.ascii	"_temp_1365\0"
	.align
_Label_1415:
	.byte	'?'
	.ascii	"_temp_1364\0"
	.align
_Label_1416:
	.byte	'?'
	.ascii	"_temp_1363\0"
	.align
_Label_1417:
	.byte	'?'
	.ascii	"_temp_1359\0"
	.align
_Label_1418:
	.byte	'C'
	.ascii	"_temp_1356\0"
	.align
_Label_1419:
	.byte	'?'
	.ascii	"_temp_1355\0"
	.align
_Label_1420:
	.byte	'?'
	.ascii	"_temp_1354\0"
	.align
_Label_1421:
	.byte	'?'
	.ascii	"_temp_1353\0"
	.align
_Label_1422:
	.byte	'C'
	.ascii	"_temp_1352\0"
	.align
_Label_1423:
	.byte	'?'
	.ascii	"_temp_1345\0"
	.align
_Label_1424:
	.byte	'?'
	.ascii	"_temp_1342\0"
	.align
_Label_1425:
	.byte	'?'
	.ascii	"_temp_1339\0"
	.align
_Label_1426:
	.byte	'?'
	.ascii	"_temp_1338\0"
	.align
_Label_1427:
	.byte	'?'
	.ascii	"_temp_1337\0"
	.align
_Label_1428:
	.byte	'?'
	.ascii	"_temp_1333\0"
	.align
_Label_1429:
	.byte	'?'
	.ascii	"_temp_1328\0"
	.align
_Label_1430:
	.byte	'?'
	.ascii	"_temp_1327\0"
	.align
_Label_1431:
	.byte	'?'
	.ascii	"_temp_1326\0"
	.align
_Label_1432:
	.byte	'?'
	.ascii	"_temp_1325\0"
	.align
_Label_1433:
	.byte	'P'
	.ascii	"openFilePtr\0"
	.align
_Label_1434:
	.byte	'I'
	.ascii	"virtAddr\0"
	.align
_Label_1435:
	.byte	'I'
	.ascii	"virtPage\0"
	.align
_Label_1436:
	.byte	'I'
	.ascii	"offset\0"
	.align
_Label_1437:
	.byte	'I'
	.ascii	"chunkSize\0"
	.align
_Label_1438:
	.byte	'I'
	.ascii	"thisChunkSize\0"
	.align
_Label_1439:
	.byte	'I'
	.ascii	"currentPos\0"
	.align
_Label_1440:
	.byte	'I'
	.ascii	"nextPosInFile\0"
	.align
_Label_1441:
	.byte	'I'
	.ascii	"sizeOfFileInBytes\0"
	.align
_Label_1442:
	.byte	'I'
	.ascii	"copiedSoFar\0"
	.align
_Label_1443:
	.byte	'I'
	.ascii	"destAddr\0"
	.align
_Label_1444:
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
_Label_4107:
	push	r0
	sub	r1,1,r1
	bne	_Label_4107
	mov	2647,r13		! source line 2647
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! SEND STATEMENT...
	mov	2654,r13		! source line 2654
	mov	"\0\0SE",r10
!   _temp_1445 = &_P_Kernel_fileManager
	set	_P_Kernel_fileManager,r1
	store	r1,[r14+-92]
!   _temp_1446 = _temp_1445 + 4
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
	mov	2657,r13		! source line 2657
	mov	"\0\0IF",r10
!   if fileDesc < 10 then goto _Label_1449		(int)
	load	[r14+8],r1
	mov	10,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bl	_Label_1449
	jmp	_Label_1447
_Label_1449:
!   if fileDesc >= 0 then goto _Label_1448		(int)
	load	[r14+8],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_1448
!	jmp	_Label_1447
_Label_1447:
! THEN...
	mov	2658,r13		! source line 2658
	mov	"\0\0TN",r10
! SEND STATEMENT...
	mov	2658,r13		! source line 2658
	mov	"\0\0SE",r10
!   _temp_1450 = &_P_Kernel_fileManager
	set	_P_Kernel_fileManager,r1
	store	r1,[r14+-84]
!   _temp_1451 = _temp_1450 + 4
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
	mov	2659,r13		! source line 2659
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,100,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_1448:
! ASSIGNMENT STATEMENT...
	mov	2663,r13		! source line 2663
	mov	"\0\0AS",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1453 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-72]
!   Data Move: _temp_1452 = *_temp_1453  (sizeInBytes=4)
	load	[r14+-72],r1
	load	[r1],r1
	store	r1,[r14+-76]
!   if intIsZero (_temp_1452) then goto _runtimeErrorNullPointer
	load	[r14+-76],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1454 = _temp_1452 + 124
	load	[r14+-76],r1
	add	r1,124,r1
	store	r1,[r14+-68]
!   Move address of _temp_1454 [fileDesc ] into _temp_1455
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
!   Data Move: openFilePtr = *_temp_1455  (sizeInBytes=4)
	load	[r14+-64],r1
	load	[r1],r1
	store	r1,[r14+-96]
! IF STATEMENT...
	mov	2666,r13		! source line 2666
	mov	"\0\0IF",r10
!   if intIsZero (openFilePtr) then goto _Label_1456
	load	[r14+-96],r1
	cmp	r1,r0
	be	_Label_1456
	jmp	_Label_1457
_Label_1456:
! THEN...
	mov	2667,r13		! source line 2667
	mov	"\0\0TN",r10
! SEND STATEMENT...
	mov	2667,r13		! source line 2667
	mov	"\0\0SE",r10
!   _temp_1458 = &_P_Kernel_fileManager
	set	_P_Kernel_fileManager,r1
	store	r1,[r14+-60]
!   _temp_1459 = _temp_1458 + 4
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
	mov	2668,r13		! source line 2668
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,100,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_1457:
! ASSIGNMENT STATEMENT...
	mov	2671,r13		! source line 2671
	mov	"\0\0AS",r10
!   if intIsZero (openFilePtr) then goto _runtimeErrorNullPointer
	load	[r14+-96],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1461 = openFilePtr + 20
	load	[r14+-96],r1
	add	r1,20,r1
	store	r1,[r14+-48]
!   Data Move: _temp_1460 = *_temp_1461  (sizeInBytes=4)
	load	[r14+-48],r1
	load	[r1],r1
	store	r1,[r14+-52]
!   if intIsZero (_temp_1460) then goto _runtimeErrorNullPointer
	load	[r14+-52],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1462 = _temp_1460 + 24
	load	[r14+-52],r1
	add	r1,24,r1
	store	r1,[r14+-44]
!   Data Move: sizeOfFileInBytes = *_temp_1462  (sizeInBytes=4)
	load	[r14+-44],r1
	load	[r1],r1
	store	r1,[r14+-100]
! IF STATEMENT...
	mov	2675,r13		! source line 2675
	mov	"\0\0IF",r10
!   if newCurrentPos != -1 then goto _Label_1464		(int)
	load	[r14+12],r1
	mov	-1,r2
	cmp	r1,r2
	bne	_Label_1464
!	jmp	_Label_1463
_Label_1463:
! THEN...
	mov	2676,r13		! source line 2676
	mov	"\0\0TN",r10
! ASSIGNMENT STATEMENT...
	mov	2676,r13		! source line 2676
	mov	"\0\0AS",r10
!   if intIsZero (openFilePtr) then goto _runtimeErrorNullPointer
	load	[r14+-96],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1465 = openFilePtr + 16
	load	[r14+-96],r1
	add	r1,16,r1
	store	r1,[r14+-40]
!   Data Move: *_temp_1465 = sizeOfFileInBytes  (sizeInBytes=4)
	load	[r14+-100],r1
	load	[r14+-40],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	2677,r13		! source line 2677
	mov	"\0\0SE",r10
!   _temp_1466 = &_P_Kernel_fileManager
	set	_P_Kernel_fileManager,r1
	store	r1,[r14+-36]
!   _temp_1467 = _temp_1466 + 4
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
	mov	2678,r13		! source line 2678
	mov	"\0\0RE",r10
!   ReturnResult: sizeOfFileInBytes  (sizeInBytes=4)
	load	[r14+-100],r1
	store	r1,[r14+8]
	add	r15,100,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_1464:
! IF STATEMENT...
	mov	2682,r13		! source line 2682
	mov	"\0\0IF",r10
!   if newCurrentPos <= sizeOfFileInBytes then goto _Label_1470		(int)
	load	[r14+12],r1
	load	[r14+-100],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	ble	_Label_1470
	jmp	_Label_1468
_Label_1470:
!   if newCurrentPos >= -1 then goto _Label_1469		(int)
	load	[r14+12],r1
	mov	-1,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_1469
!	jmp	_Label_1468
_Label_1468:
! THEN...
	mov	2683,r13		! source line 2683
	mov	"\0\0TN",r10
! SEND STATEMENT...
	mov	2683,r13		! source line 2683
	mov	"\0\0SE",r10
!   _temp_1471 = &_P_Kernel_fileManager
	set	_P_Kernel_fileManager,r1
	store	r1,[r14+-28]
!   _temp_1472 = _temp_1471 + 4
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
	mov	2684,r13		! source line 2684
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,100,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_1469:
! ASSIGNMENT STATEMENT...
	mov	2689,r13		! source line 2689
	mov	"\0\0AS",r10
!   if intIsZero (openFilePtr) then goto _runtimeErrorNullPointer
	load	[r14+-96],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1473 = openFilePtr + 16
	load	[r14+-96],r1
	add	r1,16,r1
	store	r1,[r14+-20]
!   Data Move: *_temp_1473 = newCurrentPos  (sizeInBytes=4)
	load	[r14+12],r1
	load	[r14+-20],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	2692,r13		! source line 2692
	mov	"\0\0SE",r10
!   _temp_1474 = &_P_Kernel_fileManager
	set	_P_Kernel_fileManager,r1
	store	r1,[r14+-16]
!   _temp_1475 = _temp_1474 + 4
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
	mov	2694,r13		! source line 2694
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
	.word	_Label_1476
	.word	8		! total size of parameters
	.word	96		! frame size = 96
	.word	_Label_1477
	.word	8
	.word	4
	.word	_Label_1478
	.word	12
	.word	4
	.word	_Label_1479
	.word	-12
	.word	4
	.word	_Label_1480
	.word	-16
	.word	4
	.word	_Label_1481
	.word	-20
	.word	4
	.word	_Label_1482
	.word	-24
	.word	4
	.word	_Label_1483
	.word	-28
	.word	4
	.word	_Label_1484
	.word	-32
	.word	4
	.word	_Label_1485
	.word	-36
	.word	4
	.word	_Label_1486
	.word	-40
	.word	4
	.word	_Label_1487
	.word	-44
	.word	4
	.word	_Label_1488
	.word	-48
	.word	4
	.word	_Label_1489
	.word	-52
	.word	4
	.word	_Label_1490
	.word	-56
	.word	4
	.word	_Label_1491
	.word	-60
	.word	4
	.word	_Label_1492
	.word	-64
	.word	4
	.word	_Label_1493
	.word	-68
	.word	4
	.word	_Label_1494
	.word	-72
	.word	4
	.word	_Label_1495
	.word	-76
	.word	4
	.word	_Label_1496
	.word	-80
	.word	4
	.word	_Label_1497
	.word	-84
	.word	4
	.word	_Label_1498
	.word	-88
	.word	4
	.word	_Label_1499
	.word	-92
	.word	4
	.word	_Label_1500
	.word	-96
	.word	4
	.word	_Label_1501
	.word	-100
	.word	4
	.word	0
_Label_1476:
	.ascii	"Handle_Sys_Seek\0"
	.align
_Label_1477:
	.byte	'I'
	.ascii	"fileDesc\0"
	.align
_Label_1478:
	.byte	'I'
	.ascii	"newCurrentPos\0"
	.align
_Label_1479:
	.byte	'?'
	.ascii	"_temp_1475\0"
	.align
_Label_1480:
	.byte	'?'
	.ascii	"_temp_1474\0"
	.align
_Label_1481:
	.byte	'?'
	.ascii	"_temp_1473\0"
	.align
_Label_1482:
	.byte	'?'
	.ascii	"_temp_1472\0"
	.align
_Label_1483:
	.byte	'?'
	.ascii	"_temp_1471\0"
	.align
_Label_1484:
	.byte	'?'
	.ascii	"_temp_1467\0"
	.align
_Label_1485:
	.byte	'?'
	.ascii	"_temp_1466\0"
	.align
_Label_1486:
	.byte	'?'
	.ascii	"_temp_1465\0"
	.align
_Label_1487:
	.byte	'?'
	.ascii	"_temp_1462\0"
	.align
_Label_1488:
	.byte	'?'
	.ascii	"_temp_1461\0"
	.align
_Label_1489:
	.byte	'?'
	.ascii	"_temp_1460\0"
	.align
_Label_1490:
	.byte	'?'
	.ascii	"_temp_1459\0"
	.align
_Label_1491:
	.byte	'?'
	.ascii	"_temp_1458\0"
	.align
_Label_1492:
	.byte	'?'
	.ascii	"_temp_1455\0"
	.align
_Label_1493:
	.byte	'?'
	.ascii	"_temp_1454\0"
	.align
_Label_1494:
	.byte	'?'
	.ascii	"_temp_1453\0"
	.align
_Label_1495:
	.byte	'?'
	.ascii	"_temp_1452\0"
	.align
_Label_1496:
	.byte	'?'
	.ascii	"_temp_1451\0"
	.align
_Label_1497:
	.byte	'?'
	.ascii	"_temp_1450\0"
	.align
_Label_1498:
	.byte	'?'
	.ascii	"_temp_1446\0"
	.align
_Label_1499:
	.byte	'?'
	.ascii	"_temp_1445\0"
	.align
_Label_1500:
	.byte	'P'
	.ascii	"openFilePtr\0"
	.align
_Label_1501:
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
_Label_4108:
	push	r0
	sub	r1,1,r1
	bne	_Label_4108
	mov	2700,r13		! source line 2700
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! IF STATEMENT...
	mov	2706,r13		! source line 2706
	mov	"\0\0IF",r10
!   if fileDesc < 10 then goto _Label_1504		(int)
	load	[r14+8],r1
	mov	10,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bl	_Label_1504
	jmp	_Label_1502
_Label_1504:
!   if fileDesc >= 0 then goto _Label_1503		(int)
	load	[r14+8],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_1503
!	jmp	_Label_1502
_Label_1502:
! THEN...
	mov	2707,r13		! source line 2707
	mov	"\0\0TN",r10
! RETURN STATEMENT...
	mov	2707,r13		! source line 2707
	mov	"\0\0RE",r10
	add	r15,64,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_1503:
! ASSIGNMENT STATEMENT...
	mov	2711,r13		! source line 2711
	mov	"\0\0AS",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1506 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-52]
!   Data Move: _temp_1505 = *_temp_1506  (sizeInBytes=4)
	load	[r14+-52],r1
	load	[r1],r1
	store	r1,[r14+-56]
!   if intIsZero (_temp_1505) then goto _runtimeErrorNullPointer
	load	[r14+-56],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1507 = _temp_1505 + 124
	load	[r14+-56],r1
	add	r1,124,r1
	store	r1,[r14+-48]
!   Move address of _temp_1507 [fileDesc ] into _temp_1508
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
!   Data Move: openFilePtr = *_temp_1508  (sizeInBytes=4)
	load	[r14+-44],r1
	load	[r1],r1
	store	r1,[r14+-60]
! ASSIGNMENT STATEMENT...
	mov	2714,r13		! source line 2714
	mov	"\0\0AS",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1510 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-36]
!   Data Move: _temp_1509 = *_temp_1510  (sizeInBytes=4)
	load	[r14+-36],r1
	load	[r1],r1
	store	r1,[r14+-40]
!   if intIsZero (_temp_1509) then goto _runtimeErrorNullPointer
	load	[r14+-40],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1511 = _temp_1509 + 124
	load	[r14+-40],r1
	add	r1,124,r1
	store	r1,[r14+-32]
!   Move address of _temp_1511 [fileDesc ] into _temp_1512
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
!   Data Move: *_temp_1512 = 0  (sizeInBytes=4)
	mov	0,r1
	load	[r14+-28],r2
	store	r1,[r2]
! IF STATEMENT...
	mov	2717,r13		! source line 2717
	mov	"\0\0IF",r10
!   if intIsZero (openFilePtr) then goto _Label_1514
	load	[r14+-60],r1
	cmp	r1,r0
	be	_Label_1514
!	jmp	_Label_1513
_Label_1513:
! THEN...
	mov	2719,r13		! source line 2719
	mov	"\0\0TN",r10
! IF STATEMENT...
	mov	2719,r13		! source line 2719
	mov	"\0\0IF",r10
!   _temp_1518 = &_P_Kernel_fileManager
	set	_P_Kernel_fileManager,r1
	store	r1,[r14+-20]
!   _temp_1519 = _temp_1518 + 772
	load	[r14+-20],r1
	add	r1,772,r1
	store	r1,[r14+-16]
!   _temp_1517 = _temp_1519		(4 bytes)
	load	[r14+-16],r1
	store	r1,[r14+-24]
!   if openFilePtr == _temp_1517 then goto _Label_1516		(int)
	load	[r14+-60],r1
	load	[r14+-24],r2
	cmp	r1,r2
	be	_Label_1516
!	jmp	_Label_1515
_Label_1515:
! THEN...
	mov	2720,r13		! source line 2720
	mov	"\0\0TN",r10
! SEND STATEMENT...
	mov	2720,r13		! source line 2720
	mov	"\0\0SE",r10
!   _temp_1520 = &_P_Kernel_fileManager
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
_Label_1516:
! END IF...
_Label_1514:
! RETURN STATEMENT...
	mov	2717,r13		! source line 2717
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
	.word	_Label_1521
	.word	4		! total size of parameters
	.word	60		! frame size = 60
	.word	_Label_1522
	.word	8
	.word	4
	.word	_Label_1523
	.word	-12
	.word	4
	.word	_Label_1524
	.word	-16
	.word	4
	.word	_Label_1525
	.word	-20
	.word	4
	.word	_Label_1526
	.word	-24
	.word	4
	.word	_Label_1527
	.word	-28
	.word	4
	.word	_Label_1528
	.word	-32
	.word	4
	.word	_Label_1529
	.word	-36
	.word	4
	.word	_Label_1530
	.word	-40
	.word	4
	.word	_Label_1531
	.word	-44
	.word	4
	.word	_Label_1532
	.word	-48
	.word	4
	.word	_Label_1533
	.word	-52
	.word	4
	.word	_Label_1534
	.word	-56
	.word	4
	.word	_Label_1535
	.word	-60
	.word	4
	.word	0
_Label_1521:
	.ascii	"Handle_Sys_Close\0"
	.align
_Label_1522:
	.byte	'I'
	.ascii	"fileDesc\0"
	.align
_Label_1523:
	.byte	'?'
	.ascii	"_temp_1520\0"
	.align
_Label_1524:
	.byte	'?'
	.ascii	"_temp_1519\0"
	.align
_Label_1525:
	.byte	'?'
	.ascii	"_temp_1518\0"
	.align
_Label_1526:
	.byte	'?'
	.ascii	"_temp_1517\0"
	.align
_Label_1527:
	.byte	'?'
	.ascii	"_temp_1512\0"
	.align
_Label_1528:
	.byte	'?'
	.ascii	"_temp_1511\0"
	.align
_Label_1529:
	.byte	'?'
	.ascii	"_temp_1510\0"
	.align
_Label_1530:
	.byte	'?'
	.ascii	"_temp_1509\0"
	.align
_Label_1531:
	.byte	'?'
	.ascii	"_temp_1508\0"
	.align
_Label_1532:
	.byte	'?'
	.ascii	"_temp_1507\0"
	.align
_Label_1533:
	.byte	'?'
	.ascii	"_temp_1506\0"
	.align
_Label_1534:
	.byte	'?'
	.ascii	"_temp_1505\0"
	.align
_Label_1535:
	.byte	'P'
	.ascii	"openFilePtr\0"
	.align
! 
! ===============  FUNCTION copyUnalignedWord  ===============
! 
_function_213_copyUnalignedWord:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__function_213_copyUnalignedWord,r1
	push	r1
	mov	9,r1
_Label_4109:
	push	r0
	sub	r1,1,r1
	bne	_Label_4109
	mov	3315,r13		! source line 3315
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	3317,r13		! source line 3317
	mov	"\0\0AS",r10
!   from = fromPtr		(4 bytes)
	load	[r14+12],r1
	store	r1,[r14+-40]
! ASSIGNMENT STATEMENT...
	mov	3318,r13		! source line 3318
	mov	"\0\0AS",r10
!   dest = destPtr		(4 bytes)
	load	[r14+8],r1
	store	r1,[r14+-44]
! ASSIGNMENT STATEMENT...
	mov	3319,r13		! source line 3319
	mov	"\0\0AS",r10
!   if intIsZero (dest) then goto _runtimeErrorNullPointer
	load	[r14+-44],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   if intIsZero (from) then goto _runtimeErrorNullPointer
	load	[r14+-40],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Data Move: _temp_1536 = *from  (sizeInBytes=1)
	load	[r14+-40],r1
	loadb	[r1],r1
	storeb	r1,[r14+-12]
!   Data Move: *dest = _temp_1536  (sizeInBytes=1)
	loadb	[r14+-12],r1
	load	[r14+-44],r2
	storeb	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	3320,r13		! source line 3320
	mov	"\0\0AS",r10
!   _temp_1537 = dest + 1		(int)
	load	[r14+-44],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-36]
!   if intIsZero (_temp_1537) then goto _runtimeErrorNullPointer
	load	[r14+-36],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1539 = from + 1		(int)
	load	[r14+-40],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-32]
!   if intIsZero (_temp_1539) then goto _runtimeErrorNullPointer
	load	[r14+-32],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Data Move: _temp_1538 = *_temp_1539  (sizeInBytes=1)
	load	[r14+-32],r1
	loadb	[r1],r1
	storeb	r1,[r14+-11]
!   Data Move: *_temp_1537 = _temp_1538  (sizeInBytes=1)
	loadb	[r14+-11],r1
	load	[r14+-36],r2
	storeb	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	3321,r13		! source line 3321
	mov	"\0\0AS",r10
!   _temp_1540 = dest + 2		(int)
	load	[r14+-44],r1
	mov	2,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-28]
!   if intIsZero (_temp_1540) then goto _runtimeErrorNullPointer
	load	[r14+-28],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1542 = from + 2		(int)
	load	[r14+-40],r1
	mov	2,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-24]
!   if intIsZero (_temp_1542) then goto _runtimeErrorNullPointer
	load	[r14+-24],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Data Move: _temp_1541 = *_temp_1542  (sizeInBytes=1)
	load	[r14+-24],r1
	loadb	[r1],r1
	storeb	r1,[r14+-10]
!   Data Move: *_temp_1540 = _temp_1541  (sizeInBytes=1)
	loadb	[r14+-10],r1
	load	[r14+-28],r2
	storeb	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	3322,r13		! source line 3322
	mov	"\0\0AS",r10
!   _temp_1543 = dest + 3		(int)
	load	[r14+-44],r1
	mov	3,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-20]
!   if intIsZero (_temp_1543) then goto _runtimeErrorNullPointer
	load	[r14+-20],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1545 = from + 3		(int)
	load	[r14+-40],r1
	mov	3,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-16]
!   if intIsZero (_temp_1545) then goto _runtimeErrorNullPointer
	load	[r14+-16],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Data Move: _temp_1544 = *_temp_1545  (sizeInBytes=1)
	load	[r14+-16],r1
	loadb	[r1],r1
	storeb	r1,[r14+-9]
!   Data Move: *_temp_1543 = _temp_1544  (sizeInBytes=1)
	loadb	[r14+-9],r1
	load	[r14+-20],r2
	storeb	r1,[r2]
! RETURN STATEMENT...
	mov	3322,r13		! source line 3322
	mov	"\0\0RE",r10
	add	r15,40,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__function_213_copyUnalignedWord:
	.word	_sourceFileName
	.word	_Label_1546
	.word	8		! total size of parameters
	.word	36		! frame size = 36
	.word	_Label_1547
	.word	8
	.word	4
	.word	_Label_1548
	.word	12
	.word	4
	.word	_Label_1549
	.word	-16
	.word	4
	.word	_Label_1550
	.word	-9
	.word	1
	.word	_Label_1551
	.word	-20
	.word	4
	.word	_Label_1552
	.word	-24
	.word	4
	.word	_Label_1553
	.word	-10
	.word	1
	.word	_Label_1554
	.word	-28
	.word	4
	.word	_Label_1555
	.word	-32
	.word	4
	.word	_Label_1556
	.word	-11
	.word	1
	.word	_Label_1557
	.word	-36
	.word	4
	.word	_Label_1558
	.word	-12
	.word	1
	.word	_Label_1559
	.word	-40
	.word	4
	.word	_Label_1560
	.word	-44
	.word	4
	.word	0
_Label_1546:
	.ascii	"copyUnalignedWord\0"
	.align
_Label_1547:
	.byte	'P'
	.ascii	"destPtr\0"
	.align
_Label_1548:
	.byte	'P'
	.ascii	"fromPtr\0"
	.align
_Label_1549:
	.byte	'?'
	.ascii	"_temp_1545\0"
	.align
_Label_1550:
	.byte	'C'
	.ascii	"_temp_1544\0"
	.align
_Label_1551:
	.byte	'?'
	.ascii	"_temp_1543\0"
	.align
_Label_1552:
	.byte	'?'
	.ascii	"_temp_1542\0"
	.align
_Label_1553:
	.byte	'C'
	.ascii	"_temp_1541\0"
	.align
_Label_1554:
	.byte	'?'
	.ascii	"_temp_1540\0"
	.align
_Label_1555:
	.byte	'?'
	.ascii	"_temp_1539\0"
	.align
_Label_1556:
	.byte	'C'
	.ascii	"_temp_1538\0"
	.align
_Label_1557:
	.byte	'?'
	.ascii	"_temp_1537\0"
	.align
_Label_1558:
	.byte	'C'
	.ascii	"_temp_1536\0"
	.align
_Label_1559:
	.byte	'P'
	.ascii	"from\0"
	.align
_Label_1560:
	.byte	'P'
	.ascii	"dest\0"
	.align
! 
! ===============  FUNCTION printFCB  ===============
! 
_function_212_printFCB:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__function_212_printFCB,r1
	push	r1
	mov	3,r1
_Label_4110:
	push	r0
	sub	r1,1,r1
	bne	_Label_4110
	mov	3325,r13		! source line 3325
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+8],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1562 = fcb + 12
	load	[r14+8],r1
	add	r1,12,r1
	store	r1,[r14+-12]
!   Data Move: _temp_1561 = *_temp_1562  (sizeInBytes=4)
	load	[r14+-12],r1
	load	[r1],r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_1561  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+0]
!   Call the function
	mov	3326,r13		! source line 3326
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=32  sizeInBytes=1
	mov	32,r1
	storeb	r1,[r15+0]
!   Call the function
	mov	3327,r13		! source line 3327
	mov	"\0\0CE",r10
	call	printChar
! RETURN STATEMENT...
	mov	3327,r13		! source line 3327
	mov	"\0\0RE",r10
	add	r15,16,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__function_212_printFCB:
	.word	_sourceFileName
	.word	_Label_1563
	.word	4		! total size of parameters
	.word	12		! frame size = 12
	.word	_Label_1564
	.word	8
	.word	4
	.word	_Label_1565
	.word	-12
	.word	4
	.word	_Label_1566
	.word	-16
	.word	4
	.word	0
_Label_1563:
	.ascii	"printFCB\0"
	.align
_Label_1564:
	.byte	'P'
	.ascii	"fcb\0"
	.align
_Label_1565:
	.byte	'?'
	.ascii	"_temp_1562\0"
	.align
_Label_1566:
	.byte	'?'
	.ascii	"_temp_1561\0"
	.align
! 
! ===============  FUNCTION printOpen  ===============
! 
_function_211_printOpen:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__function_211_printOpen,r1
	push	r1
	mov	4,r1
_Label_4111:
	push	r0
	sub	r1,1,r1
	bne	_Label_4111
	mov	3330,r13		! source line 3330
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   _temp_1567 = _StringConst_52
	set	_StringConst_52,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_1567  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   Call the function
	mov	3331,r13		! source line 3331
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_1568 = open		(4 bytes)
	load	[r14+8],r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_1568  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+0]
!   Call the function
	mov	3332,r13		! source line 3332
	mov	"\0\0CE",r10
	call	printHex
! CALL STATEMENT...
!   _temp_1569 = _StringConst_53
	set	_StringConst_53,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_1569  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	3333,r13		! source line 3333
	mov	"\0\0CE",r10
	call	print
! SEND STATEMENT...
	mov	3334,r13		! source line 3334
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
	mov	3334,r13		! source line 3334
	mov	"\0\0RE",r10
	add	r15,20,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__function_211_printOpen:
	.word	_sourceFileName
	.word	_Label_1570
	.word	4		! total size of parameters
	.word	16		! frame size = 16
	.word	_Label_1571
	.word	8
	.word	4
	.word	_Label_1572
	.word	-12
	.word	4
	.word	_Label_1573
	.word	-16
	.word	4
	.word	_Label_1574
	.word	-20
	.word	4
	.word	0
_Label_1570:
	.ascii	"printOpen\0"
	.align
_Label_1571:
	.byte	'P'
	.ascii	"open\0"
	.align
_Label_1572:
	.byte	'?'
	.ascii	"_temp_1569\0"
	.align
_Label_1573:
	.byte	'?'
	.ascii	"_temp_1568\0"
	.align
_Label_1574:
	.byte	'?'
	.ascii	"_temp_1567\0"
	.align
! 
! ===============  CLASS Semaphore  ===============
! 
! Dispatch Table:
! 
_P_Kernel_Semaphore:
	.word	_Label_1575
	jmp	_Method_P_Kernel_Semaphore_1	! 4:	Init
	jmp	_Method_P_Kernel_Semaphore_3	! 8:	Down
	jmp	_Method_P_Kernel_Semaphore_2	! 12:	Up
	.word	0
! 
! Class descriptor:
! 
_Label_1575:
	.word	1129070931		! Magic number 0x434c4153 == 'CLAS'
	.word	_Label_1576
	.word	_sourceFileName
	.word	129		! line number
	.word	20		! size of instances, in bytes
	.word	_P_Kernel_Semaphore
	.word	_P_System_Object
	.word	0
_Label_1576:
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
_Label_4112:
	push	r0
	sub	r1,1,r1
	bne	_Label_4112
	mov	230,r13		! source line 230
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! IF STATEMENT...
	mov	231,r13		! source line 231
	mov	"\0\0IF",r10
!   if initialCount >= 0 then goto _Label_1578		(int)
	load	[r14+12],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_1578
!	jmp	_Label_1577
_Label_1577:
! THEN...
	mov	232,r13		! source line 232
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_1579 = _StringConst_54
	set	_StringConst_54,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_1579  sizeInBytes=4
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
_Label_1578:
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
	.word	_Label_1581
	.word	8		! total size of parameters
	.word	12		! frame size = 12
	.word	_Label_1582
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1583
	.word	12
	.word	4
	.word	_Label_1584
	.word	-12
	.word	4
	.word	_Label_1585
	.word	-16
	.word	4
	.word	0
_Label_1581:
	.ascii	"Semaphore"
	.ascii	"::"
	.ascii	"Init\0"
	.align
_Label_1582:
	.ascii	"Pself\0"
	.align
_Label_1583:
	.byte	'I'
	.ascii	"initialCount\0"
	.align
_Label_1584:
	.byte	'?'
	.ascii	"_temp_1580\0"
	.align
_Label_1585:
	.byte	'?'
	.ascii	"_temp_1579\0"
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
_Label_4113:
	push	r0
	sub	r1,1,r1
	bne	_Label_4113
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
!   if count != 2147483647 then goto _Label_1587		(int)
	load	[r14+8],r1
	load	[r1+4],r1
	set	2147483647,r2
	cmp	r1,r2
	bne	_Label_1587
!	jmp	_Label_1586
_Label_1586:
! THEN...
	mov	246,r13		! source line 246
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_1588 = _StringConst_55
	set	_StringConst_55,r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=8  value=_temp_1588  sizeInBytes=4
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
_Label_1587:
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
!   if count > 0 then goto _Label_1590		(int)
	load	[r14+8],r1
	load	[r1+4],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_1590
!	jmp	_Label_1589
_Label_1589:
! THEN...
	mov	250,r13		! source line 250
	mov	"\0\0TN",r10
! ASSIGNMENT STATEMENT...
	mov	250,r13		! source line 250
	mov	"\0\0AS",r10
	mov	250,r13		! source line 250
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
! ASSIGNMENT STATEMENT...
	mov	251,r13		! source line 251
	mov	"\0\0AS",r10
!   if intIsZero (t) then goto _runtimeErrorNullPointer
	load	[r14+-32],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1592 = t + 76
	load	[r14+-32],r1
	add	r1,76,r1
	store	r1,[r14+-16]
!   Data Move: *_temp_1592 = 2  (sizeInBytes=4)
	mov	2,r1
	load	[r14+-16],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	252,r13		! source line 252
	mov	"\0\0SE",r10
!   _temp_1593 = &_P_Kernel_readyList
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
_Label_1590:
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
	.word	_Label_1594
	.word	4		! total size of parameters
	.word	32		! frame size = 32
	.word	_Label_1595
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1596
	.word	-12
	.word	4
	.word	_Label_1597
	.word	-16
	.word	4
	.word	_Label_1598
	.word	-20
	.word	4
	.word	_Label_1599
	.word	-24
	.word	4
	.word	_Label_1600
	.word	-28
	.word	4
	.word	_Label_1601
	.word	-32
	.word	4
	.word	0
_Label_1594:
	.ascii	"Semaphore"
	.ascii	"::"
	.ascii	"Up\0"
	.align
_Label_1595:
	.ascii	"Pself\0"
	.align
_Label_1596:
	.byte	'?'
	.ascii	"_temp_1593\0"
	.align
_Label_1597:
	.byte	'?'
	.ascii	"_temp_1592\0"
	.align
_Label_1598:
	.byte	'?'
	.ascii	"_temp_1591\0"
	.align
_Label_1599:
	.byte	'?'
	.ascii	"_temp_1588\0"
	.align
_Label_1600:
	.byte	'I'
	.ascii	"oldIntStat\0"
	.align
_Label_1601:
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
	mov	6,r1
_Label_4114:
	push	r0
	sub	r1,1,r1
	bne	_Label_4114
	mov	259,r13		! source line 259
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   _temp_1602 = _StringConst_56
	set	_StringConst_56,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_1602  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   Call the function
	mov	263,r13		! source line 263
	mov	"\0\0CE",r10
	call	print
! ASSIGNMENT STATEMENT...
	mov	264,r13		! source line 264
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=2  sizeInBytes=4
	mov	2,r1
	store	r1,[r15+0]
!   Call the function
	mov	264,r13		! source line 264
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=oldIntStat  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-24]
! IF STATEMENT...
	mov	265,r13		! source line 265
	mov	"\0\0IF",r10
!   if count != -2147483648 then goto _Label_1604		(int)
	load	[r14+8],r1
	load	[r1+4],r1
	set	0x80000000,r2
	cmp	r1,r2
	bne	_Label_1604
!	jmp	_Label_1603
_Label_1603:
! THEN...
	mov	266,r13		! source line 266
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_1605 = _StringConst_57
	set	_StringConst_57,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_1605  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	266,r13		! source line 266
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END IF...
_Label_1604:
! ASSIGNMENT STATEMENT...
	mov	268,r13		! source line 268
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
	mov	269,r13		! source line 269
	mov	"\0\0IF",r10
!   if count >= 0 then goto _Label_1607		(int)
	load	[r14+8],r1
	load	[r1+4],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_1607
!	jmp	_Label_1606
_Label_1606:
! THEN...
	mov	270,r13		! source line 270
	mov	"\0\0TN",r10
! SEND STATEMENT...
	mov	270,r13		! source line 270
	mov	"\0\0SE",r10
!   _temp_1608 = &waitingThreads
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
	mov	271,r13		! source line 271
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
_Label_1607:
! ASSIGNMENT STATEMENT...
	mov	273,r13		! source line 273
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=oldIntStat  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+0]
!   Call the function
	mov	273,r13		! source line 273
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=oldIntStat  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-24]
! RETURN STATEMENT...
	mov	273,r13		! source line 273
	mov	"\0\0RE",r10
	add	r15,28,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_Semaphore_3:
	.word	_sourceFileName
	.word	_Label_1609
	.word	4		! total size of parameters
	.word	24		! frame size = 24
	.word	_Label_1610
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1611
	.word	-12
	.word	4
	.word	_Label_1612
	.word	-16
	.word	4
	.word	_Label_1613
	.word	-20
	.word	4
	.word	_Label_1614
	.word	-24
	.word	4
	.word	0
_Label_1609:
	.ascii	"Semaphore"
	.ascii	"::"
	.ascii	"Down\0"
	.align
_Label_1610:
	.ascii	"Pself\0"
	.align
_Label_1611:
	.byte	'?'
	.ascii	"_temp_1608\0"
	.align
_Label_1612:
	.byte	'?'
	.ascii	"_temp_1605\0"
	.align
_Label_1613:
	.byte	'?'
	.ascii	"_temp_1602\0"
	.align
_Label_1614:
	.byte	'I'
	.ascii	"oldIntStat\0"
	.align
! 
! ===============  CLASS Mutex  ===============
! 
! Dispatch Table:
! 
_P_Kernel_Mutex:
	.word	_Label_1615
	jmp	_Method_P_Kernel_Mutex_1	! 4:	Init
	jmp	_Method_P_Kernel_Mutex_2	! 8:	Lock
	jmp	_Method_P_Kernel_Mutex_3	! 12:	Unlock
	jmp	_Method_P_Kernel_Mutex_4	! 16:	IsHeldByCurrentThread
	.word	0
! 
! Class descriptor:
! 
_Label_1615:
	.word	1129070931		! Magic number 0x434c4153 == 'CLAS'
	.word	_Label_1616
	.word	_sourceFileName
	.word	142		! line number
	.word	20		! size of instances, in bytes
	.word	_P_Kernel_Mutex
	.word	_P_System_Object
	.word	0
_Label_1616:
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
_Label_4115:
	push	r0
	sub	r1,1,r1
	bne	_Label_4115
	mov	296,r13		! source line 296
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	297,r13		! source line 297
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
	mov	297,r13		! source line 297
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
	.word	_Label_1618
	.word	4		! total size of parameters
	.word	4		! frame size = 4
	.word	_Label_1619
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1620
	.word	-12
	.word	4
	.word	0
_Label_1618:
	.ascii	"Mutex"
	.ascii	"::"
	.ascii	"Init\0"
	.align
_Label_1619:
	.ascii	"Pself\0"
	.align
_Label_1620:
	.byte	'?'
	.ascii	"_temp_1617\0"
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
_Label_4116:
	push	r0
	sub	r1,1,r1
	bne	_Label_4116
	mov	302,r13		! source line 302
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! IF STATEMENT...
	mov	305,r13		! source line 305
	mov	"\0\0IF",r10
!   if heldBy != _P_Kernel_currentThread then goto _Label_1622		(int)
	load	[r14+8],r1
	load	[r1+4],r1
	set	_P_Kernel_currentThread,r2
	load	[r2],r2
	cmp	r1,r2
	bne	_Label_1622
!	jmp	_Label_1621
_Label_1621:
! THEN...
	mov	306,r13		! source line 306
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_1623 = _StringConst_58
	set	_StringConst_58,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_1623  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	306,r13		! source line 306
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END IF...
_Label_1622:
! ASSIGNMENT STATEMENT...
	mov	308,r13		! source line 308
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=2  sizeInBytes=4
	mov	2,r1
	store	r1,[r15+0]
!   Call the function
	mov	308,r13		! source line 308
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=oldIntStat  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-24]
! IF STATEMENT...
	mov	309,r13		! source line 309
	mov	"\0\0IF",r10
!   if heldBy == 0 then goto _Label_1627		(int)
	load	[r14+8],r1
	load	[r1+4],r1
	mov	0,r2
	cmp	r1,r2
	be	_Label_1627
!   _temp_1626 = 1		(1 byte)
	mov	1,r1
	storeb	r1,[r14+-9]
	jmp	_Label_1628
_Label_1627:
!   _temp_1626 = 0		(1 byte)
	mov	0,r1
	storeb	r1,[r14+-9]
_Label_1628:
!   if _temp_1626 then goto _Label_1625 else goto _Label_1624
	loadb	[r14+-9],r1
	cmp	r1,0
	be	_Label_1624
	jmp	_Label_1625
_Label_1624:
! THEN...
	mov	310,r13		! source line 310
	mov	"\0\0TN",r10
! ASSIGNMENT STATEMENT...
	mov	310,r13		! source line 310
	mov	"\0\0AS",r10
!   heldBy = _P_Kernel_currentThread		(4 bytes)
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	load	[r14+8],r2
	store	r1,[r2+4]
	jmp	_Label_1629
_Label_1625:
! ELSE...
	mov	312,r13		! source line 312
	mov	"\0\0EL",r10
! SEND STATEMENT...
	mov	312,r13		! source line 312
	mov	"\0\0SE",r10
!   _temp_1630 = &waitingThreads
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
	mov	313,r13		! source line 313
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
_Label_1629:
! ASSIGNMENT STATEMENT...
	mov	315,r13		! source line 315
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=oldIntStat  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+0]
!   Call the function
	mov	315,r13		! source line 315
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=oldIntStat  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-24]
! RETURN STATEMENT...
	mov	315,r13		! source line 315
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
	.word	_Label_1631
	.word	4		! total size of parameters
	.word	24		! frame size = 24
	.word	_Label_1632
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1633
	.word	-16
	.word	4
	.word	_Label_1634
	.word	-9
	.word	1
	.word	_Label_1635
	.word	-20
	.word	4
	.word	_Label_1636
	.word	-24
	.word	4
	.word	0
_Label_1631:
	.ascii	"Mutex"
	.ascii	"::"
	.ascii	"Lock\0"
	.align
_Label_1632:
	.ascii	"Pself\0"
	.align
_Label_1633:
	.byte	'?'
	.ascii	"_temp_1630\0"
	.align
_Label_1634:
	.byte	'C'
	.ascii	"_temp_1626\0"
	.align
_Label_1635:
	.byte	'?'
	.ascii	"_temp_1623\0"
	.align
_Label_1636:
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
_Label_4117:
	push	r0
	sub	r1,1,r1
	bne	_Label_4117
	mov	320,r13		! source line 320
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! IF STATEMENT...
	mov	324,r13		! source line 324
	mov	"\0\0IF",r10
!   if heldBy == _P_Kernel_currentThread then goto _Label_1638		(int)
	load	[r14+8],r1
	load	[r1+4],r1
	set	_P_Kernel_currentThread,r2
	load	[r2],r2
	cmp	r1,r2
	be	_Label_1638
!	jmp	_Label_1637
_Label_1637:
! THEN...
	mov	325,r13		! source line 325
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_1639 = _StringConst_59
	set	_StringConst_59,r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=8  value=_temp_1639  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	325,r13		! source line 325
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END IF...
_Label_1638:
! ASSIGNMENT STATEMENT...
	mov	327,r13		! source line 327
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=2  sizeInBytes=4
	mov	2,r1
	store	r1,[r15+0]
!   Call the function
	mov	327,r13		! source line 327
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=oldIntStat  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-28]
! ASSIGNMENT STATEMENT...
	mov	328,r13		! source line 328
	mov	"\0\0AS",r10
	mov	328,r13		! source line 328
	mov	"\0\0SE",r10
!   _temp_1640 = &waitingThreads
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
	mov	329,r13		! source line 329
	mov	"\0\0IF",r10
!   if t == 0 then goto _Label_1642		(int)
	load	[r14+-32],r1
	mov	0,r2
	cmp	r1,r2
	be	_Label_1642
!	jmp	_Label_1641
_Label_1641:
! THEN...
	mov	330,r13		! source line 330
	mov	"\0\0TN",r10
! ASSIGNMENT STATEMENT...
	mov	330,r13		! source line 330
	mov	"\0\0AS",r10
!   if intIsZero (t) then goto _runtimeErrorNullPointer
	load	[r14+-32],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1643 = t + 76
	load	[r14+-32],r1
	add	r1,76,r1
	store	r1,[r14+-16]
!   Data Move: *_temp_1643 = 2  (sizeInBytes=4)
	mov	2,r1
	load	[r14+-16],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	331,r13		! source line 331
	mov	"\0\0SE",r10
!   _temp_1644 = &_P_Kernel_readyList
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
	mov	332,r13		! source line 332
	mov	"\0\0AS",r10
!   heldBy = t		(4 bytes)
	load	[r14+-32],r1
	load	[r14+8],r2
	store	r1,[r2+4]
	jmp	_Label_1645
_Label_1642:
! ELSE...
	mov	334,r13		! source line 334
	mov	"\0\0EL",r10
! ASSIGNMENT STATEMENT...
	mov	334,r13		! source line 334
	mov	"\0\0AS",r10
!   heldBy = 0		(4 bytes)
	mov	0,r1
	load	[r14+8],r2
	store	r1,[r2+4]
! END IF...
_Label_1645:
! ASSIGNMENT STATEMENT...
	mov	336,r13		! source line 336
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=oldIntStat  sizeInBytes=4
	load	[r14+-28],r1
	store	r1,[r15+0]
!   Call the function
	mov	336,r13		! source line 336
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=oldIntStat  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-28]
! RETURN STATEMENT...
	mov	336,r13		! source line 336
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
	.word	_Label_1646
	.word	4		! total size of parameters
	.word	32		! frame size = 32
	.word	_Label_1647
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1648
	.word	-12
	.word	4
	.word	_Label_1649
	.word	-16
	.word	4
	.word	_Label_1650
	.word	-20
	.word	4
	.word	_Label_1651
	.word	-24
	.word	4
	.word	_Label_1652
	.word	-28
	.word	4
	.word	_Label_1653
	.word	-32
	.word	4
	.word	0
_Label_1646:
	.ascii	"Mutex"
	.ascii	"::"
	.ascii	"Unlock\0"
	.align
_Label_1647:
	.ascii	"Pself\0"
	.align
_Label_1648:
	.byte	'?'
	.ascii	"_temp_1644\0"
	.align
_Label_1649:
	.byte	'?'
	.ascii	"_temp_1643\0"
	.align
_Label_1650:
	.byte	'?'
	.ascii	"_temp_1640\0"
	.align
_Label_1651:
	.byte	'?'
	.ascii	"_temp_1639\0"
	.align
_Label_1652:
	.byte	'I'
	.ascii	"oldIntStat\0"
	.align
_Label_1653:
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
_Label_4118:
	push	r0
	sub	r1,1,r1
	bne	_Label_4118
	mov	341,r13		! source line 341
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! RETURN STATEMENT...
	mov	342,r13		! source line 342
	mov	"\0\0RE",r10
!   if heldBy != _P_Kernel_currentThread then goto _Label_1656		(int)
	load	[r14+8],r1
	load	[r1+4],r1
	set	_P_Kernel_currentThread,r2
	load	[r2],r2
	cmp	r1,r2
	bne	_Label_1656
!	jmp	_Label_1655
_Label_1655:
!   _temp_1654 = 1		(1 byte)
	mov	1,r1
	storeb	r1,[r14+-9]
	jmp	_Label_1657
_Label_1656:
!   _temp_1654 = 0		(1 byte)
	mov	0,r1
	storeb	r1,[r14+-9]
_Label_1657:
!   ReturnResult: _temp_1654  (sizeInBytes=1)
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
	.word	_Label_1658
	.word	4		! total size of parameters
	.word	4		! frame size = 4
	.word	_Label_1659
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1660
	.word	-9
	.word	1
	.word	0
_Label_1658:
	.ascii	"Mutex"
	.ascii	"::"
	.ascii	"IsHeldByCurrentThread\0"
	.align
_Label_1659:
	.ascii	"Pself\0"
	.align
_Label_1660:
	.byte	'C'
	.ascii	"_temp_1654\0"
	.align
! 
! ===============  CLASS Condition  ===============
! 
! Dispatch Table:
! 
_P_Kernel_Condition:
	.word	_Label_1661
	jmp	_Method_P_Kernel_Condition_1	! 4:	Init
	jmp	_Method_P_Kernel_Condition_2	! 8:	Wait
	jmp	_Method_P_Kernel_Condition_3	! 12:	Signal
	jmp	_Method_P_Kernel_Condition_4	! 16:	Broadcast
	.word	0
! 
! Class descriptor:
! 
_Label_1661:
	.word	1129070931		! Magic number 0x434c4153 == 'CLAS'
	.word	_Label_1662
	.word	_sourceFileName
	.word	156		! line number
	.word	16		! size of instances, in bytes
	.word	_P_Kernel_Condition
	.word	_P_System_Object
	.word	0
_Label_1662:
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
_Label_4119:
	push	r0
	sub	r1,1,r1
	bne	_Label_4119
	mov	382,r13		! source line 382
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	383,r13		! source line 383
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
	mov	383,r13		! source line 383
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
	.word	_Label_1664
	.word	4		! total size of parameters
	.word	4		! frame size = 4
	.word	_Label_1665
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1666
	.word	-12
	.word	4
	.word	0
_Label_1664:
	.ascii	"Condition"
	.ascii	"::"
	.ascii	"Init\0"
	.align
_Label_1665:
	.ascii	"Pself\0"
	.align
_Label_1666:
	.byte	'?'
	.ascii	"_temp_1663\0"
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
	mov	7,r1
_Label_4120:
	push	r0
	sub	r1,1,r1
	bne	_Label_4120
	mov	388,r13		! source line 388
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   _temp_1667 = _StringConst_60
	set	_StringConst_60,r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=8  value=_temp_1667  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+0]
!   Call the function
	mov	392,r13		! source line 392
	mov	"\0\0CE",r10
	call	print
! IF STATEMENT...
	mov	393,r13		! source line 393
	mov	"\0\0IF",r10
	mov	393,r13		! source line 393
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
!   Retrieve Result: targetName=_temp_1670  sizeInBytes=1
	loadb	[r15],r1
	storeb	r1,[r14+-9]
!   if _temp_1670 then goto _Label_1669 else goto _Label_1668
	loadb	[r14+-9],r1
	cmp	r1,0
	be	_Label_1668
	jmp	_Label_1669
_Label_1668:
! THEN...
	mov	394,r13		! source line 394
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_1671 = _StringConst_61
	set	_StringConst_61,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_1671  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	394,r13		! source line 394
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END IF...
_Label_1669:
! ASSIGNMENT STATEMENT...
	mov	396,r13		! source line 396
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=2  sizeInBytes=4
	mov	2,r1
	store	r1,[r15+0]
!   Call the function
	mov	396,r13		! source line 396
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=oldIntStat  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-28]
! SEND STATEMENT...
	mov	397,r13		! source line 397
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
	mov	398,r13		! source line 398
	mov	"\0\0SE",r10
!   _temp_1672 = &waitingThreads
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
	mov	399,r13		! source line 399
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
	mov	400,r13		! source line 400
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
	mov	401,r13		! source line 401
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=oldIntStat  sizeInBytes=4
	load	[r14+-28],r1
	store	r1,[r15+0]
!   Call the function
	mov	401,r13		! source line 401
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=oldIntStat  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-28]
! RETURN STATEMENT...
	mov	401,r13		! source line 401
	mov	"\0\0RE",r10
	add	r15,32,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_Condition_2:
	.word	_sourceFileName
	.word	_Label_1673
	.word	8		! total size of parameters
	.word	28		! frame size = 28
	.word	_Label_1674
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1675
	.word	12
	.word	4
	.word	_Label_1676
	.word	-16
	.word	4
	.word	_Label_1677
	.word	-20
	.word	4
	.word	_Label_1678
	.word	-9
	.word	1
	.word	_Label_1679
	.word	-24
	.word	4
	.word	_Label_1680
	.word	-28
	.word	4
	.word	0
_Label_1673:
	.ascii	"Condition"
	.ascii	"::"
	.ascii	"Wait\0"
	.align
_Label_1674:
	.ascii	"Pself\0"
	.align
_Label_1675:
	.byte	'P'
	.ascii	"mutex\0"
	.align
_Label_1676:
	.byte	'?'
	.ascii	"_temp_1672\0"
	.align
_Label_1677:
	.byte	'?'
	.ascii	"_temp_1671\0"
	.align
_Label_1678:
	.byte	'C'
	.ascii	"_temp_1670\0"
	.align
_Label_1679:
	.byte	'?'
	.ascii	"_temp_1667\0"
	.align
_Label_1680:
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
_Label_4121:
	push	r0
	sub	r1,1,r1
	bne	_Label_4121
	mov	406,r13		! source line 406
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! IF STATEMENT...
	mov	410,r13		! source line 410
	mov	"\0\0IF",r10
	mov	410,r13		! source line 410
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
!   Retrieve Result: targetName=_temp_1683  sizeInBytes=1
	loadb	[r15],r1
	storeb	r1,[r14+-9]
!   if _temp_1683 then goto _Label_1682 else goto _Label_1681
	loadb	[r14+-9],r1
	cmp	r1,0
	be	_Label_1681
	jmp	_Label_1682
_Label_1681:
! THEN...
	mov	411,r13		! source line 411
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_1684 = _StringConst_62
	set	_StringConst_62,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=8  value=_temp_1684  sizeInBytes=4
	load	[r14+-28],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	411,r13		! source line 411
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END IF...
_Label_1682:
! ASSIGNMENT STATEMENT...
	mov	413,r13		! source line 413
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=2  sizeInBytes=4
	mov	2,r1
	store	r1,[r15+0]
!   Call the function
	mov	413,r13		! source line 413
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=oldIntStat  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-32]
! ASSIGNMENT STATEMENT...
	mov	414,r13		! source line 414
	mov	"\0\0AS",r10
	mov	414,r13		! source line 414
	mov	"\0\0SE",r10
!   _temp_1685 = &waitingThreads
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
	mov	415,r13		! source line 415
	mov	"\0\0IF",r10
!   if t == 0 then goto _Label_1687		(int)
	load	[r14+-36],r1
	mov	0,r2
	cmp	r1,r2
	be	_Label_1687
!	jmp	_Label_1686
_Label_1686:
! THEN...
	mov	416,r13		! source line 416
	mov	"\0\0TN",r10
! ASSIGNMENT STATEMENT...
	mov	416,r13		! source line 416
	mov	"\0\0AS",r10
!   if intIsZero (t) then goto _runtimeErrorNullPointer
	load	[r14+-36],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1688 = t + 76
	load	[r14+-36],r1
	add	r1,76,r1
	store	r1,[r14+-20]
!   Data Move: *_temp_1688 = 2  (sizeInBytes=4)
	mov	2,r1
	load	[r14+-20],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	417,r13		! source line 417
	mov	"\0\0SE",r10
!   _temp_1689 = &_P_Kernel_readyList
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
_Label_1687:
! ASSIGNMENT STATEMENT...
	mov	419,r13		! source line 419
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=oldIntStat  sizeInBytes=4
	load	[r14+-32],r1
	store	r1,[r15+0]
!   Call the function
	mov	419,r13		! source line 419
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=oldIntStat  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-32]
! RETURN STATEMENT...
	mov	419,r13		! source line 419
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
	.word	_Label_1690
	.word	8		! total size of parameters
	.word	36		! frame size = 36
	.word	_Label_1691
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1692
	.word	12
	.word	4
	.word	_Label_1693
	.word	-16
	.word	4
	.word	_Label_1694
	.word	-20
	.word	4
	.word	_Label_1695
	.word	-24
	.word	4
	.word	_Label_1696
	.word	-28
	.word	4
	.word	_Label_1697
	.word	-9
	.word	1
	.word	_Label_1698
	.word	-32
	.word	4
	.word	_Label_1699
	.word	-36
	.word	4
	.word	0
_Label_1690:
	.ascii	"Condition"
	.ascii	"::"
	.ascii	"Signal\0"
	.align
_Label_1691:
	.ascii	"Pself\0"
	.align
_Label_1692:
	.byte	'P'
	.ascii	"mutex\0"
	.align
_Label_1693:
	.byte	'?'
	.ascii	"_temp_1689\0"
	.align
_Label_1694:
	.byte	'?'
	.ascii	"_temp_1688\0"
	.align
_Label_1695:
	.byte	'?'
	.ascii	"_temp_1685\0"
	.align
_Label_1696:
	.byte	'?'
	.ascii	"_temp_1684\0"
	.align
_Label_1697:
	.byte	'C'
	.ascii	"_temp_1683\0"
	.align
_Label_1698:
	.byte	'I'
	.ascii	"oldIntStat\0"
	.align
_Label_1699:
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
_Label_4122:
	push	r0
	sub	r1,1,r1
	bne	_Label_4122
	mov	424,r13		! source line 424
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! IF STATEMENT...
	mov	428,r13		! source line 428
	mov	"\0\0IF",r10
	mov	428,r13		! source line 428
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
!   Retrieve Result: targetName=_temp_1702  sizeInBytes=1
	loadb	[r15],r1
	storeb	r1,[r14+-9]
!   if _temp_1702 then goto _Label_1701 else goto _Label_1700
	loadb	[r14+-9],r1
	cmp	r1,0
	be	_Label_1700
	jmp	_Label_1701
_Label_1700:
! THEN...
	mov	429,r13		! source line 429
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_1703 = _StringConst_63
	set	_StringConst_63,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=8  value=_temp_1703  sizeInBytes=4
	load	[r14+-28],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	429,r13		! source line 429
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END IF...
_Label_1701:
! ASSIGNMENT STATEMENT...
	mov	431,r13		! source line 431
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=2  sizeInBytes=4
	mov	2,r1
	store	r1,[r15+0]
!   Call the function
	mov	431,r13		! source line 431
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=oldIntStat  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-32]
! WHILE STATEMENT...
	mov	432,r13		! source line 432
	mov	"\0\0WH",r10
_Label_1704:
!	jmp	_Label_1705
_Label_1705:
	mov	432,r13		! source line 432
	mov	"\0\0WB",r10
! ASSIGNMENT STATEMENT...
	mov	433,r13		! source line 433
	mov	"\0\0AS",r10
	mov	433,r13		! source line 433
	mov	"\0\0SE",r10
!   _temp_1707 = &waitingThreads
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
	mov	435,r13		! source line 435
	mov	"\0\0IF",r10
!   if intIsZero (t) then goto _Label_1708
	load	[r14+-36],r1
	cmp	r1,r0
	be	_Label_1708
	jmp	_Label_1709
_Label_1708:
! THEN...
	mov	436,r13		! source line 436
	mov	"\0\0TN",r10
! BREAK STATEMENT...
	mov	436,r13		! source line 436
	mov	"\0\0BR",r10
	jmp	_Label_1706
! END IF...
_Label_1709:
! ASSIGNMENT STATEMENT...
	mov	438,r13		! source line 438
	mov	"\0\0AS",r10
!   if intIsZero (t) then goto _runtimeErrorNullPointer
	load	[r14+-36],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1710 = t + 76
	load	[r14+-36],r1
	add	r1,76,r1
	store	r1,[r14+-20]
!   Data Move: *_temp_1710 = 2  (sizeInBytes=4)
	mov	2,r1
	load	[r14+-20],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	439,r13		! source line 439
	mov	"\0\0SE",r10
!   _temp_1711 = &_P_Kernel_readyList
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
	jmp	_Label_1704
_Label_1706:
! ASSIGNMENT STATEMENT...
	mov	441,r13		! source line 441
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=oldIntStat  sizeInBytes=4
	load	[r14+-32],r1
	store	r1,[r15+0]
!   Call the function
	mov	441,r13		! source line 441
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=oldIntStat  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-32]
! RETURN STATEMENT...
	mov	441,r13		! source line 441
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
	.word	_Label_1712
	.word	8		! total size of parameters
	.word	36		! frame size = 36
	.word	_Label_1713
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1714
	.word	12
	.word	4
	.word	_Label_1715
	.word	-16
	.word	4
	.word	_Label_1716
	.word	-20
	.word	4
	.word	_Label_1717
	.word	-24
	.word	4
	.word	_Label_1718
	.word	-28
	.word	4
	.word	_Label_1719
	.word	-9
	.word	1
	.word	_Label_1720
	.word	-32
	.word	4
	.word	_Label_1721
	.word	-36
	.word	4
	.word	0
_Label_1712:
	.ascii	"Condition"
	.ascii	"::"
	.ascii	"Broadcast\0"
	.align
_Label_1713:
	.ascii	"Pself\0"
	.align
_Label_1714:
	.byte	'P'
	.ascii	"mutex\0"
	.align
_Label_1715:
	.byte	'?'
	.ascii	"_temp_1711\0"
	.align
_Label_1716:
	.byte	'?'
	.ascii	"_temp_1710\0"
	.align
_Label_1717:
	.byte	'?'
	.ascii	"_temp_1707\0"
	.align
_Label_1718:
	.byte	'?'
	.ascii	"_temp_1703\0"
	.align
_Label_1719:
	.byte	'C'
	.ascii	"_temp_1702\0"
	.align
_Label_1720:
	.byte	'I'
	.ascii	"oldIntStat\0"
	.align
_Label_1721:
	.byte	'P'
	.ascii	"t\0"
	.align
! 
! ===============  CLASS Thread  ===============
! 
! Dispatch Table:
! 
_P_Kernel_Thread:
	.word	_Label_1722
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
_Label_1722:
	.word	1129070931		! Magic number 0x434c4153 == 'CLAS'
	.word	_Label_1723
	.word	_sourceFileName
	.word	169		! line number
	.word	4164		! size of instances, in bytes
	.word	_P_Kernel_Thread
	.word	_P_List_Listable
	.word	_P_System_Object
	.word	0
_Label_1723:
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
_Label_4123:
	push	r0
	sub	r1,1,r1
	bne	_Label_4123
	mov	452,r13		! source line 452
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	457,r13		! source line 457
	mov	"\0\0AS",r10
!   name = n		(4 bytes)
	load	[r14+12],r1
	load	[r14+8],r2
	store	r1,[r2+72]
! ASSIGNMENT STATEMENT...
	mov	458,r13		! source line 458
	mov	"\0\0AS",r10
!   status = 1		(4 bytes)
	mov	1,r1
	load	[r14+8],r2
	store	r1,[r2+76]
! ASSIGNMENT STATEMENT...
	mov	460,r13		! source line 460
	mov	"\0\0AS",r10
!   _temp_1724 = &systemStack
	load	[r14+8],r1
	add	r1,88,r1
	store	r1,[r14+-188]
!   if intIsZero (_temp_1724) then goto _runtimeErrorNullPointer
	load	[r14+-188],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Data Move: *_temp_1724 = 1000  (sizeInBytes=4)
	mov	1000,r1
	load	[r14+-188],r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	461,r13		! source line 461
	mov	"\0\0AS",r10
!   _temp_1725 = &systemStack
	load	[r14+8],r1
	add	r1,88,r1
	store	r1,[r14+-184]
!   Move address of _temp_1725 [0 ] into _temp_1726
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
!   Data Move: *_temp_1726 = 606348324  (sizeInBytes=4)
	set	606348324,r1
	load	[r14+-180],r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	462,r13		! source line 462
	mov	"\0\0AS",r10
!   _temp_1727 = &systemStack
	load	[r14+8],r1
	add	r1,88,r1
	store	r1,[r14+-176]
!   Move address of _temp_1727 [999 ] into _temp_1728
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
!   Data Move: *_temp_1728 = 606348324  (sizeInBytes=4)
	set	606348324,r1
	load	[r14+-172],r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	463,r13		! source line 463
	mov	"\0\0AS",r10
!   _temp_1729 = &systemStack
	load	[r14+8],r1
	add	r1,88,r1
	store	r1,[r14+-168]
!   Move address of _temp_1729 [999 ] into _temp_1730
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
!   stackTop = _temp_1730		(4 bytes)
	load	[r14+-164],r1
	load	[r14+8],r2
	store	r1,[r2+68]
! ASSIGNMENT STATEMENT...
	mov	464,r13		! source line 464
	mov	"\0\0AS",r10
!   _temp_1731 = &regs
	load	[r14+8],r1
	add	r1,12,r1
	store	r1,[r14+-160]
!   NEW ARRAY Constructor...
!   _temp_1733 = &_temp_1732
	add	r14,-156,r1
	store	r1,[r14+-100]
!   _temp_1733 = _temp_1733 + 4
	load	[r14+-100],r1
	add	r1,4,r1
	store	r1,[r14+-100]
!   Next value...
	mov	13,r1
	store	r1,[r14+-96]
_Label_1735:
!   Data Move: *_temp_1733 = 0  (sizeInBytes=4)
	mov	0,r1
	load	[r14+-100],r2
	store	r1,[r2]
!   _temp_1733 = _temp_1733 + 4
	load	[r14+-100],r1
	add	r1,4,r1
	store	r1,[r14+-100]
!   _temp_1734 = _temp_1734 + -1
	load	[r14+-96],r1
	add	r1,-1,r1
	store	r1,[r14+-96]
!   if intNotZero (_temp_1734) then goto _Label_1735
	load	[r14+-96],r1
	cmp	r1,r0
	bne	_Label_1735
!   Initialize the array size...
	mov	13,r1
	store	r1,[r14+-156]
!   _temp_1736 = &_temp_1732
	add	r14,-156,r1
	store	r1,[r14+-92]
!   make sure array has size 13
	load	[r14+-160],r1
	load	[r1],r1
	set	13, r2
	cmp	r1,0
	be	_Label_4124
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bne	_runtimeErrorWrongArraySize
_Label_4124:
!   make sure array has size 13
	load	[r14+-92],r1
	load	[r1],r1
	set	13, r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bne	_runtimeErrorWrongArraySize
!   Data Move: *_temp_1731 = *_temp_1736  (sizeInBytes=56)
	load	[r14+-92],r5
	load	[r14+-160],r4
	mov	14,r3
_Label_4125:
	load	[r5],r1
	add	r5,4,r5
	store	r1,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_4125
! ASSIGNMENT STATEMENT...
	mov	465,r13		! source line 465
	mov	"\0\0AS",r10
!   isUserThread = 0		(1 byte)
	mov	0,r1
	load	[r14+8],r2
	storeb	r1,[r2+4092]
! ASSIGNMENT STATEMENT...
	mov	466,r13		! source line 466
	mov	"\0\0AS",r10
!   _temp_1737 = &userRegs
	load	[r14+8],r1
	add	r1,4096,r1
	store	r1,[r14+-88]
!   NEW ARRAY Constructor...
!   _temp_1739 = &_temp_1738
	add	r14,-84,r1
	store	r1,[r14+-20]
!   _temp_1739 = _temp_1739 + 4
	load	[r14+-20],r1
	add	r1,4,r1
	store	r1,[r14+-20]
!   Next value...
	mov	15,r1
	store	r1,[r14+-16]
_Label_1741:
!   Data Move: *_temp_1739 = 0  (sizeInBytes=4)
	mov	0,r1
	load	[r14+-20],r2
	store	r1,[r2]
!   _temp_1739 = _temp_1739 + 4
	load	[r14+-20],r1
	add	r1,4,r1
	store	r1,[r14+-20]
!   _temp_1740 = _temp_1740 + -1
	load	[r14+-16],r1
	add	r1,-1,r1
	store	r1,[r14+-16]
!   if intNotZero (_temp_1740) then goto _Label_1741
	load	[r14+-16],r1
	cmp	r1,r0
	bne	_Label_1741
!   Initialize the array size...
	mov	15,r1
	store	r1,[r14+-84]
!   _temp_1742 = &_temp_1738
	add	r14,-84,r1
	store	r1,[r14+-12]
!   make sure array has size 15
	load	[r14+-88],r1
	load	[r1],r1
	set	15, r2
	cmp	r1,0
	be	_Label_4126
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bne	_runtimeErrorWrongArraySize
_Label_4126:
!   make sure array has size 15
	load	[r14+-12],r1
	load	[r1],r1
	set	15, r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bne	_runtimeErrorWrongArraySize
!   Data Move: *_temp_1737 = *_temp_1742  (sizeInBytes=64)
	load	[r14+-12],r5
	load	[r14+-88],r4
	mov	16,r3
_Label_4127:
	load	[r5],r1
	add	r5,4,r5
	store	r1,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_4127
! RETURN STATEMENT...
	mov	466,r13		! source line 466
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
	.word	_Label_1743
	.word	8		! total size of parameters
	.word	180		! frame size = 180
	.word	_Label_1744
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1745
	.word	12
	.word	4
	.word	_Label_1746
	.word	-12
	.word	4
	.word	_Label_1747
	.word	-16
	.word	4
	.word	_Label_1748
	.word	-20
	.word	4
	.word	_Label_1749
	.word	-84
	.word	64
	.word	_Label_1750
	.word	-88
	.word	4
	.word	_Label_1751
	.word	-92
	.word	4
	.word	_Label_1752
	.word	-96
	.word	4
	.word	_Label_1753
	.word	-100
	.word	4
	.word	_Label_1754
	.word	-156
	.word	56
	.word	_Label_1755
	.word	-160
	.word	4
	.word	_Label_1756
	.word	-164
	.word	4
	.word	_Label_1757
	.word	-168
	.word	4
	.word	_Label_1758
	.word	-172
	.word	4
	.word	_Label_1759
	.word	-176
	.word	4
	.word	_Label_1760
	.word	-180
	.word	4
	.word	_Label_1761
	.word	-184
	.word	4
	.word	_Label_1762
	.word	-188
	.word	4
	.word	0
_Label_1743:
	.ascii	"Thread"
	.ascii	"::"
	.ascii	"Init\0"
	.align
_Label_1744:
	.ascii	"Pself\0"
	.align
_Label_1745:
	.byte	'P'
	.ascii	"n\0"
	.align
_Label_1746:
	.byte	'?'
	.ascii	"_temp_1742\0"
	.align
_Label_1747:
	.byte	'?'
	.ascii	"_temp_1740\0"
	.align
_Label_1748:
	.byte	'?'
	.ascii	"_temp_1739\0"
	.align
_Label_1749:
	.byte	'?'
	.ascii	"_temp_1738\0"
	.align
_Label_1750:
	.byte	'?'
	.ascii	"_temp_1737\0"
	.align
_Label_1751:
	.byte	'?'
	.ascii	"_temp_1736\0"
	.align
_Label_1752:
	.byte	'?'
	.ascii	"_temp_1734\0"
	.align
_Label_1753:
	.byte	'?'
	.ascii	"_temp_1733\0"
	.align
_Label_1754:
	.byte	'?'
	.ascii	"_temp_1732\0"
	.align
_Label_1755:
	.byte	'?'
	.ascii	"_temp_1731\0"
	.align
_Label_1756:
	.byte	'?'
	.ascii	"_temp_1730\0"
	.align
_Label_1757:
	.byte	'?'
	.ascii	"_temp_1729\0"
	.align
_Label_1758:
	.byte	'?'
	.ascii	"_temp_1728\0"
	.align
_Label_1759:
	.byte	'?'
	.ascii	"_temp_1727\0"
	.align
_Label_1760:
	.byte	'?'
	.ascii	"_temp_1726\0"
	.align
_Label_1761:
	.byte	'?'
	.ascii	"_temp_1725\0"
	.align
_Label_1762:
	.byte	'?'
	.ascii	"_temp_1724\0"
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
	mov	8,r1
_Label_4128:
	push	r0
	sub	r1,1,r1
	bne	_Label_4128
	mov	471,r13		! source line 471
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	482,r13		! source line 482
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=2  sizeInBytes=4
	mov	2,r1
	store	r1,[r15+0]
!   Call the function
	mov	482,r13		! source line 482
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=oldIntStat  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-28]
! CALL STATEMENT...
!   _temp_1763 = _StringConst_64
	set	_StringConst_64,r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=8  value=_temp_1763  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+0]
!   Call the function
	mov	483,r13		! source line 483
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=name  sizeInBytes=4
	load	[r14+8],r1
	load	[r1+72],r1
	store	r1,[r15+0]
!   Call the function
	mov	484,r13		! source line 484
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Call the function
	mov	485,r13		! source line 485
	mov	"\0\0CA",r10
	call	_P_System_nl
! ASSIGNMENT STATEMENT...
	mov	486,r13		! source line 486
	mov	"\0\0AS",r10
!   initialFunction = fun		(4 bytes)
	load	[r14+12],r1
	load	[r14+8],r2
	store	r1,[r2+80]
! ASSIGNMENT STATEMENT...
	mov	487,r13		! source line 487
	mov	"\0\0AS",r10
!   initialArgument = arg		(4 bytes)
	load	[r14+16],r1
	load	[r14+8],r2
	store	r1,[r2+84]
! ASSIGNMENT STATEMENT...
	mov	488,r13		! source line 488
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
	mov	489,r13		! source line 489
	mov	"\0\0AS",r10
!   if intIsZero (stackTop) then goto _runtimeErrorNullPointer
	load	[r14+8],r1
	load	[r1+68],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1764 = ThreadStartUp
	set	ThreadStartUp,r1
	store	r1,[r14+-20]
!   Data Move: *stackTop = _temp_1764  (sizeInBytes=4)
	load	[r14+-20],r1
	load	[r14+8],r2
	load	[r2+68],r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	490,r13		! source line 490
	mov	"\0\0AS",r10
!   status = 2		(4 bytes)
	mov	2,r1
	load	[r14+8],r2
	store	r1,[r2+76]
! SEND STATEMENT...
	mov	491,r13		! source line 491
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-16]
!   _temp_1766 = &_P_Kernel_readyList
	set	_P_Kernel_readyList,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=12  value=_temp_1765  sizeInBytes=4
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
!   Call the function
	mov	492,r13		! source line 492
	mov	"\0\0CA",r10
	call	_P_Kernel_PrintReadyList
! ASSIGNMENT STATEMENT...
	mov	493,r13		! source line 493
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=oldIntStat  sizeInBytes=4
	load	[r14+-28],r1
	store	r1,[r15+0]
!   Call the function
	mov	493,r13		! source line 493
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=junk  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-32]
! RETURN STATEMENT...
	mov	493,r13		! source line 493
	mov	"\0\0RE",r10
	add	r15,36,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_Thread_2:
	.word	_sourceFileName
	.word	_Label_1767
	.word	12		! total size of parameters
	.word	32		! frame size = 32
	.word	_Label_1768
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1769
	.word	12
	.word	4
	.word	_Label_1770
	.word	16
	.word	4
	.word	_Label_1771
	.word	-12
	.word	4
	.word	_Label_1772
	.word	-16
	.word	4
	.word	_Label_1773
	.word	-20
	.word	4
	.word	_Label_1774
	.word	-24
	.word	4
	.word	_Label_1775
	.word	-28
	.word	4
	.word	_Label_1776
	.word	-32
	.word	4
	.word	0
_Label_1767:
	.ascii	"Thread"
	.ascii	"::"
	.ascii	"Fork\0"
	.align
_Label_1768:
	.ascii	"Pself\0"
	.align
_Label_1769:
	.byte	'P'
	.ascii	"fun\0"
	.align
_Label_1770:
	.byte	'I'
	.ascii	"arg\0"
	.align
_Label_1771:
	.byte	'?'
	.ascii	"_temp_1766\0"
	.align
_Label_1772:
	.byte	'?'
	.ascii	"_temp_1765\0"
	.align
_Label_1773:
	.byte	'?'
	.ascii	"_temp_1764\0"
	.align
_Label_1774:
	.byte	'?'
	.ascii	"_temp_1763\0"
	.align
_Label_1775:
	.byte	'I'
	.ascii	"oldIntStat\0"
	.align
_Label_1776:
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
_Label_4129:
	push	r0
	sub	r1,1,r1
	bne	_Label_4129
	mov	498,r13		! source line 498
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! IF STATEMENT...
	mov	514,r13		! source line 514
	mov	"\0\0IF",r10
	load	[r14+8],r1
	store	r1,[r14+-32]
!   if _temp_1779 == _P_Kernel_currentThread then goto _Label_1778		(int)
	load	[r14+-32],r1
	set	_P_Kernel_currentThread,r2
	load	[r2],r2
	cmp	r1,r2
	be	_Label_1778
!	jmp	_Label_1777
_Label_1777:
! THEN...
	mov	515,r13		! source line 515
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_1780 = _StringConst_65
	set	_StringConst_65,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=8  value=_temp_1780  sizeInBytes=4
	load	[r14+-28],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	515,r13		! source line 515
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END IF...
_Label_1778:
! ASSIGNMENT STATEMENT...
	mov	517,r13		! source line 517
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=2  sizeInBytes=4
	mov	2,r1
	store	r1,[r15+0]
!   Call the function
	mov	517,r13		! source line 517
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=oldIntStat  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-40]
! ASSIGNMENT STATEMENT...
	mov	522,r13		! source line 522
	mov	"\0\0AS",r10
	mov	522,r13		! source line 522
	mov	"\0\0SE",r10
!   _temp_1781 = &_P_Kernel_readyList
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
	mov	523,r13		! source line 523
	mov	"\0\0IF",r10
!   if nextTh == 0 then goto _Label_1783		(int)
	load	[r14+-36],r1
	mov	0,r2
	cmp	r1,r2
	be	_Label_1783
!	jmp	_Label_1782
_Label_1782:
! THEN...
	mov	527,r13		! source line 527
	mov	"\0\0TN",r10
! IF STATEMENT...
	mov	527,r13		! source line 527
	mov	"\0\0IF",r10
!   if status != 4 then goto _Label_1785		(int)
	load	[r14+8],r1
	load	[r1+76],r1
	mov	4,r2
	cmp	r1,r2
	bne	_Label_1785
!	jmp	_Label_1784
_Label_1784:
! THEN...
	mov	528,r13		! source line 528
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_1786 = _StringConst_66
	set	_StringConst_66,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_1786  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	528,r13		! source line 528
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END IF...
_Label_1785:
! ASSIGNMENT STATEMENT...
	mov	530,r13		! source line 530
	mov	"\0\0AS",r10
!   status = 2		(4 bytes)
	mov	2,r1
	load	[r14+8],r2
	store	r1,[r2+76]
! SEND STATEMENT...
	mov	531,r13		! source line 531
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-16]
!   _temp_1788 = &_P_Kernel_readyList
	set	_P_Kernel_readyList,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=12  value=_temp_1787  sizeInBytes=4
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
	mov	532,r13		! source line 532
	mov	"\0\0CA",r10
	call	_P_Kernel_Run
! END IF...
_Label_1783:
! ASSIGNMENT STATEMENT...
	mov	534,r13		! source line 534
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=oldIntStat  sizeInBytes=4
	load	[r14+-40],r1
	store	r1,[r15+0]
!   Call the function
	mov	534,r13		! source line 534
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=junk  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-44]
! RETURN STATEMENT...
	mov	534,r13		! source line 534
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
	.word	_Label_1789
	.word	4		! total size of parameters
	.word	44		! frame size = 44
	.word	_Label_1790
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1791
	.word	-12
	.word	4
	.word	_Label_1792
	.word	-16
	.word	4
	.word	_Label_1793
	.word	-20
	.word	4
	.word	_Label_1794
	.word	-24
	.word	4
	.word	_Label_1795
	.word	-28
	.word	4
	.word	_Label_1796
	.word	-32
	.word	4
	.word	_Label_1797
	.word	-36
	.word	4
	.word	_Label_1798
	.word	-40
	.word	4
	.word	_Label_1799
	.word	-44
	.word	4
	.word	0
_Label_1789:
	.ascii	"Thread"
	.ascii	"::"
	.ascii	"Yield\0"
	.align
_Label_1790:
	.ascii	"Pself\0"
	.align
_Label_1791:
	.byte	'?'
	.ascii	"_temp_1788\0"
	.align
_Label_1792:
	.byte	'?'
	.ascii	"_temp_1787\0"
	.align
_Label_1793:
	.byte	'?'
	.ascii	"_temp_1786\0"
	.align
_Label_1794:
	.byte	'?'
	.ascii	"_temp_1781\0"
	.align
_Label_1795:
	.byte	'?'
	.ascii	"_temp_1780\0"
	.align
_Label_1796:
	.byte	'?'
	.ascii	"_temp_1779\0"
	.align
_Label_1797:
	.byte	'P'
	.ascii	"nextTh\0"
	.align
_Label_1798:
	.byte	'I'
	.ascii	"oldIntStat\0"
	.align
_Label_1799:
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
_Label_4130:
	push	r0
	sub	r1,1,r1
	bne	_Label_4130
	mov	539,r13		! source line 539
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! IF STATEMENT...
	mov	551,r13		! source line 551
	mov	"\0\0IF",r10
!   if _P_Kernel_currentInterruptStatus == 2 then goto _Label_1801		(int)
	set	_P_Kernel_currentInterruptStatus,r1
	load	[r1],r1
	mov	2,r2
	cmp	r1,r2
	be	_Label_1801
!	jmp	_Label_1800
_Label_1800:
! THEN...
	mov	552,r13		! source line 552
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_1802 = _StringConst_67
	set	_StringConst_67,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=8  value=_temp_1802  sizeInBytes=4
	load	[r14+-28],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	552,r13		! source line 552
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END IF...
_Label_1801:
! IF STATEMENT...
	mov	555,r13		! source line 555
	mov	"\0\0IF",r10
	load	[r14+8],r1
	store	r1,[r14+-24]
!   if _temp_1805 == _P_Kernel_currentThread then goto _Label_1804		(int)
	load	[r14+-24],r1
	set	_P_Kernel_currentThread,r2
	load	[r2],r2
	cmp	r1,r2
	be	_Label_1804
!	jmp	_Label_1803
_Label_1803:
! THEN...
	mov	556,r13		! source line 556
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_1806 = _StringConst_68
	set	_StringConst_68,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_1806  sizeInBytes=4
	load	[r14+-20],r1
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
_Label_1804:
! ASSIGNMENT STATEMENT...
	mov	561,r13		! source line 561
	mov	"\0\0AS",r10
!   status = 4		(4 bytes)
	mov	4,r1
	load	[r14+8],r2
	store	r1,[r2+76]
! ASSIGNMENT STATEMENT...
	mov	562,r13		! source line 562
	mov	"\0\0AS",r10
	mov	562,r13		! source line 562
	mov	"\0\0SE",r10
!   _temp_1807 = &_P_Kernel_readyList
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
	mov	563,r13		! source line 563
	mov	"\0\0IF",r10
!   if intIsZero (nextTh) then goto _Label_1808
	load	[r14+-32],r1
	cmp	r1,r0
	be	_Label_1808
	jmp	_Label_1809
_Label_1808:
! THEN...
	mov	564,r13		! source line 564
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_1810 = _StringConst_69
	set	_StringConst_69,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_1810  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	564,r13		! source line 564
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END IF...
_Label_1809:
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=nextTh  sizeInBytes=4
	load	[r14+-32],r1
	store	r1,[r15+0]
!   Call the function
	mov	566,r13		! source line 566
	mov	"\0\0CA",r10
	call	_P_Kernel_Run
! RETURN STATEMENT...
	mov	566,r13		! source line 566
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
	.word	_Label_1811
	.word	4		! total size of parameters
	.word	28		! frame size = 28
	.word	_Label_1812
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1813
	.word	-12
	.word	4
	.word	_Label_1814
	.word	-16
	.word	4
	.word	_Label_1815
	.word	-20
	.word	4
	.word	_Label_1816
	.word	-24
	.word	4
	.word	_Label_1817
	.word	-28
	.word	4
	.word	_Label_1818
	.word	-32
	.word	4
	.word	0
_Label_1811:
	.ascii	"Thread"
	.ascii	"::"
	.ascii	"Sleep\0"
	.align
_Label_1812:
	.ascii	"Pself\0"
	.align
_Label_1813:
	.byte	'?'
	.ascii	"_temp_1810\0"
	.align
_Label_1814:
	.byte	'?'
	.ascii	"_temp_1807\0"
	.align
_Label_1815:
	.byte	'?'
	.ascii	"_temp_1806\0"
	.align
_Label_1816:
	.byte	'?'
	.ascii	"_temp_1805\0"
	.align
_Label_1817:
	.byte	'?'
	.ascii	"_temp_1802\0"
	.align
_Label_1818:
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
_Label_4131:
	push	r0
	sub	r1,1,r1
	bne	_Label_4131
	mov	571,r13		! source line 571
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! IF STATEMENT...
	mov	577,r13		! source line 577
	mov	"\0\0IF",r10
!   _temp_1822 = &systemStack
	load	[r14+8],r1
	add	r1,88,r1
	store	r1,[r14+-36]
!   Move address of _temp_1822 [0 ] into _temp_1823
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
!   Data Move: _temp_1821 = *_temp_1823  (sizeInBytes=4)
	load	[r14+-32],r1
	load	[r1],r1
	store	r1,[r14+-40]
!   if _temp_1821 == 606348324 then goto _Label_1820		(int)
	load	[r14+-40],r1
	set	606348324,r2
	cmp	r1,r2
	be	_Label_1820
!	jmp	_Label_1819
_Label_1819:
! THEN...
	mov	578,r13		! source line 578
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_1824 = _StringConst_70
	set	_StringConst_70,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=8  value=_temp_1824  sizeInBytes=4
	load	[r14+-28],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	578,r13		! source line 578
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
	jmp	_Label_1825
_Label_1820:
! ELSE...
	mov	579,r13		! source line 579
	mov	"\0\0EL",r10
! IF STATEMENT...
	mov	579,r13		! source line 579
	mov	"\0\0IF",r10
!   _temp_1829 = &systemStack
	load	[r14+8],r1
	add	r1,88,r1
	store	r1,[r14+-20]
!   Move address of _temp_1829 [999 ] into _temp_1830
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
!   Data Move: _temp_1828 = *_temp_1830  (sizeInBytes=4)
	load	[r14+-16],r1
	load	[r1],r1
	store	r1,[r14+-24]
!   if _temp_1828 == 606348324 then goto _Label_1827		(int)
	load	[r14+-24],r1
	set	606348324,r2
	cmp	r1,r2
	be	_Label_1827
!	jmp	_Label_1826
_Label_1826:
! THEN...
	mov	580,r13		! source line 580
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_1831 = _StringConst_71
	set	_StringConst_71,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_1831  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	580,r13		! source line 580
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END IF...
_Label_1827:
! END IF...
_Label_1825:
! RETURN STATEMENT...
	mov	577,r13		! source line 577
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
	.word	_Label_1832
	.word	4		! total size of parameters
	.word	36		! frame size = 36
	.word	_Label_1833
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1834
	.word	-12
	.word	4
	.word	_Label_1835
	.word	-16
	.word	4
	.word	_Label_1836
	.word	-20
	.word	4
	.word	_Label_1837
	.word	-24
	.word	4
	.word	_Label_1838
	.word	-28
	.word	4
	.word	_Label_1839
	.word	-32
	.word	4
	.word	_Label_1840
	.word	-36
	.word	4
	.word	_Label_1841
	.word	-40
	.word	4
	.word	0
_Label_1832:
	.ascii	"Thread"
	.ascii	"::"
	.ascii	"CheckOverflow\0"
	.align
_Label_1833:
	.ascii	"Pself\0"
	.align
_Label_1834:
	.byte	'?'
	.ascii	"_temp_1831\0"
	.align
_Label_1835:
	.byte	'?'
	.ascii	"_temp_1830\0"
	.align
_Label_1836:
	.byte	'?'
	.ascii	"_temp_1829\0"
	.align
_Label_1837:
	.byte	'?'
	.ascii	"_temp_1828\0"
	.align
_Label_1838:
	.byte	'?'
	.ascii	"_temp_1824\0"
	.align
_Label_1839:
	.byte	'?'
	.ascii	"_temp_1823\0"
	.align
_Label_1840:
	.byte	'?'
	.ascii	"_temp_1822\0"
	.align
_Label_1841:
	.byte	'?'
	.ascii	"_temp_1821\0"
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
_Label_4132:
	push	r0
	sub	r1,1,r1
	bne	_Label_4132
	mov	586,r13		! source line 586
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	592,r13		! source line 592
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=2  sizeInBytes=4
	mov	2,r1
	store	r1,[r15+0]
!   Call the function
	mov	592,r13		! source line 592
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=oldStatus  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-196]
! CALL STATEMENT...
!   _temp_1842 = _StringConst_72
	set	_StringConst_72,r1
	store	r1,[r14+-188]
!   Prepare Argument: offset=8  value=_temp_1842  sizeInBytes=4
	load	[r14+-188],r1
	store	r1,[r15+0]
!   Call the function
	mov	593,r13		! source line 593
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=name  sizeInBytes=4
	load	[r14+8],r1
	load	[r1+72],r1
	store	r1,[r15+0]
!   Call the function
	mov	594,r13		! source line 594
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_1843 = _StringConst_73
	set	_StringConst_73,r1
	store	r1,[r14+-184]
!   Prepare Argument: offset=8  value=_temp_1843  sizeInBytes=4
	load	[r14+-184],r1
	store	r1,[r15+0]
!   Call the function
	mov	595,r13		! source line 595
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
	load	[r14+8],r1
	store	r1,[r14+-180]
!   Prepare Argument: offset=8  value=_temp_1844  sizeInBytes=4
	load	[r14+-180],r1
	store	r1,[r15+0]
!   Call the function
	mov	596,r13		! source line 596
	mov	"\0\0CE",r10
	call	printHex
! CALL STATEMENT...
!   _temp_1845 = _StringConst_74
	set	_StringConst_74,r1
	store	r1,[r14+-176]
!   Prepare Argument: offset=8  value=_temp_1845  sizeInBytes=4
	load	[r14+-176],r1
	store	r1,[r15+0]
!   Call the function
	mov	597,r13		! source line 597
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_1846 = _StringConst_75
	set	_StringConst_75,r1
	store	r1,[r14+-172]
!   Prepare Argument: offset=8  value=_temp_1846  sizeInBytes=4
	load	[r14+-172],r1
	store	r1,[r15+0]
!   Call the function
	mov	598,r13		! source line 598
	mov	"\0\0CE",r10
	call	print
! FOR STATEMENT...
	mov	599,r13		! source line 599
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_1851 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-168]
!   Calculate and save the FOR-LOOP ending value
!   _temp_1852 = 12		(4 bytes)
	mov	12,r1
	store	r1,[r14+-164]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_1851  (sizeInBytes=4)
	load	[r14+-168],r1
	store	r1,[r14+-192]
_Label_1847:
!   Perform the FOR-LOOP termination test
!   if i > _temp_1852 then goto _Label_1850		
	load	[r14+-192],r1
	load	[r14+-164],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_1850
_Label_1848:
	mov	599,r13		! source line 599
	mov	"\0\0FB",r10
! CALL STATEMENT...
!   _temp_1853 = _StringConst_76
	set	_StringConst_76,r1
	store	r1,[r14+-160]
!   Prepare Argument: offset=8  value=_temp_1853  sizeInBytes=4
	load	[r14+-160],r1
	store	r1,[r15+0]
!   Call the function
	mov	600,r13		! source line 600
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_1854 = i + 2		(int)
	load	[r14+-192],r1
	mov	2,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-156]
!   Prepare Argument: offset=8  value=_temp_1854  sizeInBytes=4
	load	[r14+-156],r1
	store	r1,[r15+0]
!   Call the function
	mov	601,r13		! source line 601
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   _temp_1855 = _StringConst_77
	set	_StringConst_77,r1
	store	r1,[r14+-152]
!   Prepare Argument: offset=8  value=_temp_1855  sizeInBytes=4
	load	[r14+-152],r1
	store	r1,[r15+0]
!   Call the function
	mov	602,r13		! source line 602
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_1857 = &regs
	load	[r14+8],r1
	add	r1,12,r1
	store	r1,[r14+-144]
!   Move address of _temp_1857 [i ] into _temp_1858
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
!   Data Move: _temp_1856 = *_temp_1858  (sizeInBytes=4)
	load	[r14+-140],r1
	load	[r1],r1
	store	r1,[r14+-148]
!   Prepare Argument: offset=8  value=_temp_1856  sizeInBytes=4
	load	[r14+-148],r1
	store	r1,[r15+0]
!   Call the function
	mov	603,r13		! source line 603
	mov	"\0\0CE",r10
	call	printHex
! CALL STATEMENT...
!   _temp_1859 = _StringConst_78
	set	_StringConst_78,r1
	store	r1,[r14+-136]
!   Prepare Argument: offset=8  value=_temp_1859  sizeInBytes=4
	load	[r14+-136],r1
	store	r1,[r15+0]
!   Call the function
	mov	604,r13		! source line 604
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_1861 = &regs
	load	[r14+8],r1
	add	r1,12,r1
	store	r1,[r14+-128]
!   Move address of _temp_1861 [i ] into _temp_1862
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
!   Data Move: _temp_1860 = *_temp_1862  (sizeInBytes=4)
	load	[r14+-124],r1
	load	[r1],r1
	store	r1,[r14+-132]
!   Prepare Argument: offset=8  value=_temp_1860  sizeInBytes=4
	load	[r14+-132],r1
	store	r1,[r15+0]
!   Call the function
	mov	605,r13		! source line 605
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   _temp_1863 = _StringConst_79
	set	_StringConst_79,r1
	store	r1,[r14+-120]
!   Prepare Argument: offset=8  value=_temp_1863  sizeInBytes=4
	load	[r14+-120],r1
	store	r1,[r15+0]
!   Call the function
	mov	606,r13		! source line 606
	mov	"\0\0CE",r10
	call	print
!   Increment the FOR-LOOP index variable and jump back
_Label_1849:
!   i = i + 1
	load	[r14+-192],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-192]
	jmp	_Label_1847
! END FOR
_Label_1850:
! CALL STATEMENT...
!   _temp_1864 = _StringConst_80
	set	_StringConst_80,r1
	store	r1,[r14+-116]
!   _temp_1865 = stackTop		(4 bytes)
	load	[r14+8],r1
	load	[r1+68],r1
	store	r1,[r14+-112]
!   Prepare Argument: offset=8  value=_temp_1864  sizeInBytes=4
	load	[r14+-116],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=_temp_1865  sizeInBytes=4
	load	[r14+-112],r1
	store	r1,[r15+4]
!   Call the function
	mov	608,r13		! source line 608
	mov	"\0\0CA",r10
	call	_P_System_printHexVar
! CALL STATEMENT...
!   _temp_1866 = _StringConst_81
	set	_StringConst_81,r1
	store	r1,[r14+-108]
!   _temp_1868 = &systemStack
	load	[r14+8],r1
	add	r1,88,r1
	store	r1,[r14+-100]
!   Move address of _temp_1868 [0 ] into _temp_1869
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
!   _temp_1867 = _temp_1869		(4 bytes)
	load	[r14+-96],r1
	store	r1,[r14+-104]
!   Prepare Argument: offset=8  value=_temp_1866  sizeInBytes=4
	load	[r14+-108],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=_temp_1867  sizeInBytes=4
	load	[r14+-104],r1
	store	r1,[r15+4]
!   Call the function
	mov	609,r13		! source line 609
	mov	"\0\0CA",r10
	call	_P_System_printHexVar
! SWITCH STATEMENT (using series of tests)...
	mov	610,r13		! source line 610
	mov	"\0\0SW",r10
!   Evaluate the switch expression...
!   Branch to the right case label
	load	[r14+8],r1
	load	[r1+76],r1
	cmp	r1,1
	be	_Label_1872
	cmp	r1,2
	be	_Label_1873
	cmp	r1,3
	be	_Label_1874
	cmp	r1,4
	be	_Label_1875
	cmp	r1,5
	be	_Label_1876
	jmp	_Label_1870
! CASE 1...
_Label_1872:
! CALL STATEMENT...
!   _temp_1877 = _StringConst_82
	set	_StringConst_82,r1
	store	r1,[r14+-92]
!   Prepare Argument: offset=8  value=_temp_1877  sizeInBytes=4
	load	[r14+-92],r1
	store	r1,[r15+0]
!   Call the function
	mov	612,r13		! source line 612
	mov	"\0\0CE",r10
	call	print
! BREAK STATEMENT...
	mov	613,r13		! source line 613
	mov	"\0\0BR",r10
	jmp	_Label_1871
! CASE 2...
_Label_1873:
! CALL STATEMENT...
!   _temp_1878 = _StringConst_83
	set	_StringConst_83,r1
	store	r1,[r14+-88]
!   Prepare Argument: offset=8  value=_temp_1878  sizeInBytes=4
	load	[r14+-88],r1
	store	r1,[r15+0]
!   Call the function
	mov	615,r13		! source line 615
	mov	"\0\0CE",r10
	call	print
! BREAK STATEMENT...
	mov	616,r13		! source line 616
	mov	"\0\0BR",r10
	jmp	_Label_1871
! CASE 3...
_Label_1874:
! CALL STATEMENT...
!   _temp_1879 = _StringConst_84
	set	_StringConst_84,r1
	store	r1,[r14+-84]
!   Prepare Argument: offset=8  value=_temp_1879  sizeInBytes=4
	load	[r14+-84],r1
	store	r1,[r15+0]
!   Call the function
	mov	618,r13		! source line 618
	mov	"\0\0CE",r10
	call	print
! BREAK STATEMENT...
	mov	619,r13		! source line 619
	mov	"\0\0BR",r10
	jmp	_Label_1871
! CASE 4...
_Label_1875:
! CALL STATEMENT...
!   _temp_1880 = _StringConst_85
	set	_StringConst_85,r1
	store	r1,[r14+-80]
!   Prepare Argument: offset=8  value=_temp_1880  sizeInBytes=4
	load	[r14+-80],r1
	store	r1,[r15+0]
!   Call the function
	mov	621,r13		! source line 621
	mov	"\0\0CE",r10
	call	print
! BREAK STATEMENT...
	mov	622,r13		! source line 622
	mov	"\0\0BR",r10
	jmp	_Label_1871
! CASE 5...
_Label_1876:
! CALL STATEMENT...
!   _temp_1881 = _StringConst_86
	set	_StringConst_86,r1
	store	r1,[r14+-76]
!   Prepare Argument: offset=8  value=_temp_1881  sizeInBytes=4
	load	[r14+-76],r1
	store	r1,[r15+0]
!   Call the function
	mov	624,r13		! source line 624
	mov	"\0\0CE",r10
	call	print
! BREAK STATEMENT...
	mov	625,r13		! source line 625
	mov	"\0\0BR",r10
	jmp	_Label_1871
! DEFAULT CASE...
_Label_1870:
! CALL STATEMENT...
!   _temp_1882 = _StringConst_87
	set	_StringConst_87,r1
	store	r1,[r14+-72]
!   Prepare Argument: offset=8  value=_temp_1882  sizeInBytes=4
	load	[r14+-72],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	627,r13		! source line 627
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END SWITCH...
_Label_1871:
! CALL STATEMENT...
!   _temp_1883 = _StringConst_88
	set	_StringConst_88,r1
	store	r1,[r14+-68]
!   Prepare Argument: offset=8  value=_temp_1883  sizeInBytes=4
	load	[r14+-68],r1
	store	r1,[r15+0]
!   Call the function
	mov	629,r13		! source line 629
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=isUserThread  sizeInBytes=1
	load	[r14+8],r1
	loadb	[r1+4092],r1
	storeb	r1,[r15+0]
!   Call the function
	mov	630,r13		! source line 630
	mov	"\0\0CE",r10
	call	printBool
! CALL STATEMENT...
!   Call the function
	mov	631,r13		! source line 631
	mov	"\0\0CA",r10
	call	_P_System_nl
! CALL STATEMENT...
!   _temp_1884 = _StringConst_89
	set	_StringConst_89,r1
	store	r1,[r14+-64]
!   Prepare Argument: offset=8  value=_temp_1884  sizeInBytes=4
	load	[r14+-64],r1
	store	r1,[r15+0]
!   Call the function
	mov	632,r13		! source line 632
	mov	"\0\0CE",r10
	call	print
! FOR STATEMENT...
	mov	633,r13		! source line 633
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_1889 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-60]
!   Calculate and save the FOR-LOOP ending value
!   _temp_1890 = 14		(4 bytes)
	mov	14,r1
	store	r1,[r14+-56]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_1889  (sizeInBytes=4)
	load	[r14+-60],r1
	store	r1,[r14+-192]
_Label_1885:
!   Perform the FOR-LOOP termination test
!   if i > _temp_1890 then goto _Label_1888		
	load	[r14+-192],r1
	load	[r14+-56],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_1888
_Label_1886:
	mov	633,r13		! source line 633
	mov	"\0\0FB",r10
! CALL STATEMENT...
!   _temp_1891 = _StringConst_90
	set	_StringConst_90,r1
	store	r1,[r14+-52]
!   Prepare Argument: offset=8  value=_temp_1891  sizeInBytes=4
	load	[r14+-52],r1
	store	r1,[r15+0]
!   Call the function
	mov	634,r13		! source line 634
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_1892 = i + 1		(int)
	load	[r14+-192],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-48]
!   Prepare Argument: offset=8  value=_temp_1892  sizeInBytes=4
	load	[r14+-48],r1
	store	r1,[r15+0]
!   Call the function
	mov	635,r13		! source line 635
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   _temp_1893 = _StringConst_91
	set	_StringConst_91,r1
	store	r1,[r14+-44]
!   Prepare Argument: offset=8  value=_temp_1893  sizeInBytes=4
	load	[r14+-44],r1
	store	r1,[r15+0]
!   Call the function
	mov	636,r13		! source line 636
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_1895 = &userRegs
	load	[r14+8],r1
	add	r1,4096,r1
	store	r1,[r14+-36]
!   Move address of _temp_1895 [i ] into _temp_1896
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
!   Data Move: _temp_1894 = *_temp_1896  (sizeInBytes=4)
	load	[r14+-32],r1
	load	[r1],r1
	store	r1,[r14+-40]
!   Prepare Argument: offset=8  value=_temp_1894  sizeInBytes=4
	load	[r14+-40],r1
	store	r1,[r15+0]
!   Call the function
	mov	637,r13		! source line 637
	mov	"\0\0CE",r10
	call	printHex
! CALL STATEMENT...
!   _temp_1897 = _StringConst_92
	set	_StringConst_92,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=8  value=_temp_1897  sizeInBytes=4
	load	[r14+-28],r1
	store	r1,[r15+0]
!   Call the function
	mov	638,r13		! source line 638
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_1899 = &userRegs
	load	[r14+8],r1
	add	r1,4096,r1
	store	r1,[r14+-20]
!   Move address of _temp_1899 [i ] into _temp_1900
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
!   Data Move: _temp_1898 = *_temp_1900  (sizeInBytes=4)
	load	[r14+-16],r1
	load	[r1],r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=8  value=_temp_1898  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+0]
!   Call the function
	mov	639,r13		! source line 639
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   _temp_1901 = _StringConst_93
	set	_StringConst_93,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_1901  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	640,r13		! source line 640
	mov	"\0\0CE",r10
	call	print
!   Increment the FOR-LOOP index variable and jump back
_Label_1887:
!   i = i + 1
	load	[r14+-192],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-192]
	jmp	_Label_1885
! END FOR
_Label_1888:
! ASSIGNMENT STATEMENT...
	mov	642,r13		! source line 642
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=oldStatus  sizeInBytes=4
	load	[r14+-196],r1
	store	r1,[r15+0]
!   Call the function
	mov	642,r13		! source line 642
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=oldStatus  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-196]
! RETURN STATEMENT...
	mov	642,r13		! source line 642
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
	.word	_Label_1902
	.word	4		! total size of parameters
	.word	196		! frame size = 196
	.word	_Label_1903
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1904
	.word	-12
	.word	4
	.word	_Label_1905
	.word	-16
	.word	4
	.word	_Label_1906
	.word	-20
	.word	4
	.word	_Label_1907
	.word	-24
	.word	4
	.word	_Label_1908
	.word	-28
	.word	4
	.word	_Label_1909
	.word	-32
	.word	4
	.word	_Label_1910
	.word	-36
	.word	4
	.word	_Label_1911
	.word	-40
	.word	4
	.word	_Label_1912
	.word	-44
	.word	4
	.word	_Label_1913
	.word	-48
	.word	4
	.word	_Label_1914
	.word	-52
	.word	4
	.word	_Label_1915
	.word	-56
	.word	4
	.word	_Label_1916
	.word	-60
	.word	4
	.word	_Label_1917
	.word	-64
	.word	4
	.word	_Label_1918
	.word	-68
	.word	4
	.word	_Label_1919
	.word	-72
	.word	4
	.word	_Label_1920
	.word	-76
	.word	4
	.word	_Label_1921
	.word	-80
	.word	4
	.word	_Label_1922
	.word	-84
	.word	4
	.word	_Label_1923
	.word	-88
	.word	4
	.word	_Label_1924
	.word	-92
	.word	4
	.word	_Label_1925
	.word	-96
	.word	4
	.word	_Label_1926
	.word	-100
	.word	4
	.word	_Label_1927
	.word	-104
	.word	4
	.word	_Label_1928
	.word	-108
	.word	4
	.word	_Label_1929
	.word	-112
	.word	4
	.word	_Label_1930
	.word	-116
	.word	4
	.word	_Label_1931
	.word	-120
	.word	4
	.word	_Label_1932
	.word	-124
	.word	4
	.word	_Label_1933
	.word	-128
	.word	4
	.word	_Label_1934
	.word	-132
	.word	4
	.word	_Label_1935
	.word	-136
	.word	4
	.word	_Label_1936
	.word	-140
	.word	4
	.word	_Label_1937
	.word	-144
	.word	4
	.word	_Label_1938
	.word	-148
	.word	4
	.word	_Label_1939
	.word	-152
	.word	4
	.word	_Label_1940
	.word	-156
	.word	4
	.word	_Label_1941
	.word	-160
	.word	4
	.word	_Label_1942
	.word	-164
	.word	4
	.word	_Label_1943
	.word	-168
	.word	4
	.word	_Label_1944
	.word	-172
	.word	4
	.word	_Label_1945
	.word	-176
	.word	4
	.word	_Label_1946
	.word	-180
	.word	4
	.word	_Label_1947
	.word	-184
	.word	4
	.word	_Label_1948
	.word	-188
	.word	4
	.word	_Label_1949
	.word	-192
	.word	4
	.word	_Label_1950
	.word	-196
	.word	4
	.word	0
_Label_1902:
	.ascii	"Thread"
	.ascii	"::"
	.ascii	"Print\0"
	.align
_Label_1903:
	.ascii	"Pself\0"
	.align
_Label_1904:
	.byte	'?'
	.ascii	"_temp_1901\0"
	.align
_Label_1905:
	.byte	'?'
	.ascii	"_temp_1900\0"
	.align
_Label_1906:
	.byte	'?'
	.ascii	"_temp_1899\0"
	.align
_Label_1907:
	.byte	'?'
	.ascii	"_temp_1898\0"
	.align
_Label_1908:
	.byte	'?'
	.ascii	"_temp_1897\0"
	.align
_Label_1909:
	.byte	'?'
	.ascii	"_temp_1896\0"
	.align
_Label_1910:
	.byte	'?'
	.ascii	"_temp_1895\0"
	.align
_Label_1911:
	.byte	'?'
	.ascii	"_temp_1894\0"
	.align
_Label_1912:
	.byte	'?'
	.ascii	"_temp_1893\0"
	.align
_Label_1913:
	.byte	'?'
	.ascii	"_temp_1892\0"
	.align
_Label_1914:
	.byte	'?'
	.ascii	"_temp_1891\0"
	.align
_Label_1915:
	.byte	'?'
	.ascii	"_temp_1890\0"
	.align
_Label_1916:
	.byte	'?'
	.ascii	"_temp_1889\0"
	.align
_Label_1917:
	.byte	'?'
	.ascii	"_temp_1884\0"
	.align
_Label_1918:
	.byte	'?'
	.ascii	"_temp_1883\0"
	.align
_Label_1919:
	.byte	'?'
	.ascii	"_temp_1882\0"
	.align
_Label_1920:
	.byte	'?'
	.ascii	"_temp_1881\0"
	.align
_Label_1921:
	.byte	'?'
	.ascii	"_temp_1880\0"
	.align
_Label_1922:
	.byte	'?'
	.ascii	"_temp_1879\0"
	.align
_Label_1923:
	.byte	'?'
	.ascii	"_temp_1878\0"
	.align
_Label_1924:
	.byte	'?'
	.ascii	"_temp_1877\0"
	.align
_Label_1925:
	.byte	'?'
	.ascii	"_temp_1869\0"
	.align
_Label_1926:
	.byte	'?'
	.ascii	"_temp_1868\0"
	.align
_Label_1927:
	.byte	'?'
	.ascii	"_temp_1867\0"
	.align
_Label_1928:
	.byte	'?'
	.ascii	"_temp_1866\0"
	.align
_Label_1929:
	.byte	'?'
	.ascii	"_temp_1865\0"
	.align
_Label_1930:
	.byte	'?'
	.ascii	"_temp_1864\0"
	.align
_Label_1931:
	.byte	'?'
	.ascii	"_temp_1863\0"
	.align
_Label_1932:
	.byte	'?'
	.ascii	"_temp_1862\0"
	.align
_Label_1933:
	.byte	'?'
	.ascii	"_temp_1861\0"
	.align
_Label_1934:
	.byte	'?'
	.ascii	"_temp_1860\0"
	.align
_Label_1935:
	.byte	'?'
	.ascii	"_temp_1859\0"
	.align
_Label_1936:
	.byte	'?'
	.ascii	"_temp_1858\0"
	.align
_Label_1937:
	.byte	'?'
	.ascii	"_temp_1857\0"
	.align
_Label_1938:
	.byte	'?'
	.ascii	"_temp_1856\0"
	.align
_Label_1939:
	.byte	'?'
	.ascii	"_temp_1855\0"
	.align
_Label_1940:
	.byte	'?'
	.ascii	"_temp_1854\0"
	.align
_Label_1941:
	.byte	'?'
	.ascii	"_temp_1853\0"
	.align
_Label_1942:
	.byte	'?'
	.ascii	"_temp_1852\0"
	.align
_Label_1943:
	.byte	'?'
	.ascii	"_temp_1851\0"
	.align
_Label_1944:
	.byte	'?'
	.ascii	"_temp_1846\0"
	.align
_Label_1945:
	.byte	'?'
	.ascii	"_temp_1845\0"
	.align
_Label_1946:
	.byte	'?'
	.ascii	"_temp_1844\0"
	.align
_Label_1947:
	.byte	'?'
	.ascii	"_temp_1843\0"
	.align
_Label_1948:
	.byte	'?'
	.ascii	"_temp_1842\0"
	.align
_Label_1949:
	.byte	'I'
	.ascii	"i\0"
	.align
_Label_1950:
	.byte	'I'
	.ascii	"oldStatus\0"
	.align
! 
! ===============  CLASS ThreadManager  ===============
! 
! Dispatch Table:
! 
_P_Kernel_ThreadManager:
	.word	_Label_1951
	jmp	_Method_P_Kernel_ThreadManager_1	! 4:	Init
	jmp	_Method_P_Kernel_ThreadManager_2	! 8:	Print
	jmp	_Method_P_Kernel_ThreadManager_3	! 12:	GetANewThread
	jmp	_Method_P_Kernel_ThreadManager_4	! 16:	FreeThread
	.word	0
! 
! Class descriptor:
! 
_Label_1951:
	.word	1129070931		! Magic number 0x434c4153 == 'CLAS'
	.word	_Label_1952
	.word	_sourceFileName
	.word	196		! line number
	.word	41696		! size of instances, in bytes
	.word	_P_Kernel_ThreadManager
	.word	_P_System_Object
	.word	0
_Label_1952:
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
_Label_4133:
	push	r0
	sub	r1,1,r1
	bne	_Label_4133
	mov	697,r13		! source line 697
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   _temp_1953 = _StringConst_94
	set	_StringConst_94,r1
	set	-45880,r2
	store	r1,[r14+r2]
!   Prepare Argument: offset=8  value=_temp_1953  sizeInBytes=4
	set	-45880,r1
	load	[r14+r1],r1
	store	r1,[r15+0]
!   Call the function
	mov	705,r13		! source line 705
	mov	"\0\0CE",r10
	call	print
! ASSIGNMENT STATEMENT...
	mov	706,r13		! source line 706
	mov	"\0\0AS",r10
!   _temp_1954 = &threadTable
	load	[r14+8],r1
	add	r1,4,r1
	set	-45876,r2
	store	r1,[r14+r2]
!   NEW ARRAY Constructor...
!   _temp_1956 = &_temp_1955
	set	-45872,r1
	add	r14,r1,r1
	store	r1,[r14+-4228]
!   _temp_1956 = _temp_1956 + 4
	load	[r14+-4228],r1
	add	r1,4,r1
	store	r1,[r14+-4228]
!   Next value...
!   NEW CLASS Constructor...
!   ZeroMemory: _temp_1958 = zeros  (sizeInBytes=4164)
	add	r14,-4220,r4
	mov	1041,r3
_Label_4134:
	store	r0,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_4134
!   _temp_1958 = _P_Kernel_Thread
	set	_P_Kernel_Thread,r1
	store	r1,[r14+-4220]
	mov	10,r1
	store	r1,[r14+-4224]
_Label_1960:
!   Data Move: *_temp_1956 = _temp_1958  (sizeInBytes=4164)
	add	r14,-4220,r5
	load	[r14+-4228],r4
	mov	1041,r3
_Label_4135:
	load	[r5],r1
	add	r5,4,r5
	store	r1,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_4135
!   _temp_1956 = _temp_1956 + 4164
	load	[r14+-4228],r1
	add	r1,4164,r1
	store	r1,[r14+-4228]
!   _temp_1957 = _temp_1957 + -1
	load	[r14+-4224],r1
	add	r1,-1,r1
	store	r1,[r14+-4224]
!   if intNotZero (_temp_1957) then goto _Label_1960
	load	[r14+-4224],r1
	cmp	r1,r0
	bne	_Label_1960
!   Initialize the array size...
	mov	10,r1
	set	-45872,r2
	store	r1,[r14+r2]
!   _temp_1961 = &_temp_1955
	set	-45872,r1
	add	r14,r1,r1
	store	r1,[r14+-52]
!   make sure array has size 10
	set	-45876,r1
	load	[r14+r1],r1
	load	[r1],r1
	set	10, r2
	cmp	r1,0
	be	_Label_4136
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bne	_runtimeErrorWrongArraySize
_Label_4136:
!   make sure array has size 10
	load	[r14+-52],r1
	load	[r1],r1
	set	10, r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bne	_runtimeErrorWrongArraySize
!   Data Move: *_temp_1954 = *_temp_1961  (sizeInBytes=41644)
	load	[r14+-52],r5
	set	-45876,r4
	load	[r14+r4],r4
	mov	10411,r3
_Label_4137:
	load	[r5],r1
	add	r5,4,r5
	store	r1,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_4137
! ASSIGNMENT STATEMENT...
	mov	707,r13		! source line 707
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
	mov	708,r13		! source line 708
	mov	"\0\0AS",r10
!   i = 0		(4 bytes)
	mov	0,r1
	set	-45884,r2
	store	r1,[r14+r2]
! WHILE STATEMENT...
	mov	708,r13		! source line 708
	mov	"\0\0WH",r10
_Label_1963:
!   if i >= 10 then goto _Label_1965		(int)
	set	-45884,r1
	load	[r14+r1],r1
	mov	10,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_1965
!	jmp	_Label_1964
_Label_1964:
	mov	708,r13		! source line 708
	mov	"\0\0WB",r10
! ASSIGNMENT STATEMENT...
	mov	709,r13		! source line 709
	mov	"\0\0AS",r10
!   _temp_1966 = &threadTable
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-44]
!   Move address of _temp_1966 [i ] into _temp_1967
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
!   thread = _temp_1967		(4 bytes)
	load	[r14+-40],r1
	set	-45888,r2
	store	r1,[r14+r2]
! SEND STATEMENT...
	mov	710,r13		! source line 710
	mov	"\0\0SE",r10
!   _temp_1968 = _StringConst_95
	set	_StringConst_95,r1
	store	r1,[r14+-36]
!   if intIsZero (thread) then goto _runtimeErrorNullPointer
	set	-45888,r1
	load	[r14+r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Prepare Argument: offset=12  value=_temp_1968  sizeInBytes=4
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
	mov	711,r13		! source line 711
	mov	"\0\0AS",r10
!   if intIsZero (thread) then goto _runtimeErrorNullPointer
	set	-45888,r1
	load	[r14+r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1969 = thread + 76
	set	-45888,r1
	load	[r14+r1],r1
	add	r1,76,r1
	store	r1,[r14+-32]
!   Data Move: *_temp_1969 = 5  (sizeInBytes=4)
	mov	5,r1
	load	[r14+-32],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	712,r13		! source line 712
	mov	"\0\0SE",r10
!   _temp_1970 = &freeList
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
	mov	708,r13		! source line 708
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
	jmp	_Label_1963
_Label_1965:
! ASSIGNMENT STATEMENT...
	mov	714,r13		! source line 714
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
	mov	715,r13		! source line 715
	mov	"\0\0SE",r10
!   _temp_1972 = &threadManagerLock
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
	mov	716,r13		! source line 716
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
	mov	717,r13		! source line 717
	mov	"\0\0SE",r10
!   _temp_1974 = &aThreadBecameFree
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
	mov	717,r13		! source line 717
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
	.word	_Label_1975
	.word	4		! total size of parameters
	.word	45888		! frame size = 45888
	.word	_Label_1976
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1977
	.word	-12
	.word	4
	.word	_Label_1978
	.word	-16
	.word	4
	.word	_Label_1979
	.word	-20
	.word	4
	.word	_Label_1980
	.word	-24
	.word	4
	.word	_Label_1981
	.word	-28
	.word	4
	.word	_Label_1982
	.word	-32
	.word	4
	.word	_Label_1983
	.word	-36
	.word	4
	.word	_Label_1984
	.word	-40
	.word	4
	.word	_Label_1985
	.word	-44
	.word	4
	.word	_Label_1986
	.word	-48
	.word	4
	.word	_Label_1987
	.word	-52
	.word	4
	.word	_Label_1988
	.word	-56
	.word	4
	.word	_Label_1989
	.word	-4220
	.word	4164
	.word	_Label_1990
	.word	-4224
	.word	4
	.word	_Label_1991
	.word	-4228
	.word	4
	.word	_Label_1992
	.word	-45872
	.word	41644
	.word	_Label_1993
	.word	-45876
	.word	4
	.word	_Label_1994
	.word	-45880
	.word	4
	.word	_Label_1995
	.word	-45884
	.word	4
	.word	_Label_1996
	.word	-45888
	.word	4
	.word	0
_Label_1975:
	.ascii	"ThreadManager"
	.ascii	"::"
	.ascii	"Init\0"
	.align
_Label_1976:
	.ascii	"Pself\0"
	.align
_Label_1977:
	.byte	'?'
	.ascii	"_temp_1974\0"
	.align
_Label_1978:
	.byte	'?'
	.ascii	"_temp_1973\0"
	.align
_Label_1979:
	.byte	'?'
	.ascii	"_temp_1972\0"
	.align
_Label_1980:
	.byte	'?'
	.ascii	"_temp_1971\0"
	.align
_Label_1981:
	.byte	'?'
	.ascii	"_temp_1970\0"
	.align
_Label_1982:
	.byte	'?'
	.ascii	"_temp_1969\0"
	.align
_Label_1983:
	.byte	'?'
	.ascii	"_temp_1968\0"
	.align
_Label_1984:
	.byte	'?'
	.ascii	"_temp_1967\0"
	.align
_Label_1985:
	.byte	'?'
	.ascii	"_temp_1966\0"
	.align
_Label_1986:
	.byte	'?'
	.ascii	"_temp_1962\0"
	.align
_Label_1987:
	.byte	'?'
	.ascii	"_temp_1961\0"
	.align
_Label_1988:
	.byte	'?'
	.ascii	"_temp_1959\0"
	.align
_Label_1989:
	.byte	'?'
	.ascii	"_temp_1958\0"
	.align
_Label_1990:
	.byte	'?'
	.ascii	"_temp_1957\0"
	.align
_Label_1991:
	.byte	'?'
	.ascii	"_temp_1956\0"
	.align
_Label_1992:
	.byte	'?'
	.ascii	"_temp_1955\0"
	.align
_Label_1993:
	.byte	'?'
	.ascii	"_temp_1954\0"
	.align
_Label_1994:
	.byte	'?'
	.ascii	"_temp_1953\0"
	.align
_Label_1995:
	.byte	'I'
	.ascii	"i\0"
	.align
_Label_1996:
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
_Label_4138:
	push	r0
	sub	r1,1,r1
	bne	_Label_4138
	mov	722,r13		! source line 722
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	729,r13		! source line 729
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=2  sizeInBytes=4
	mov	2,r1
	store	r1,[r15+0]
!   Call the function
	mov	729,r13		! source line 729
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=oldStatus  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-60]
! CALL STATEMENT...
!   _temp_1997 = _StringConst_96
	set	_StringConst_96,r1
	store	r1,[r14+-52]
!   Prepare Argument: offset=8  value=_temp_1997  sizeInBytes=4
	load	[r14+-52],r1
	store	r1,[r15+0]
!   Call the function
	mov	730,r13		! source line 730
	mov	"\0\0CE",r10
	call	print
! FOR STATEMENT...
	mov	731,r13		! source line 731
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_2002 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-48]
!   Calculate and save the FOR-LOOP ending value
!   _temp_2003 = 9		(4 bytes)
	mov	9,r1
	store	r1,[r14+-44]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_2002  (sizeInBytes=4)
	load	[r14+-48],r1
	store	r1,[r14+-56]
_Label_1998:
!   Perform the FOR-LOOP termination test
!   if i > _temp_2003 then goto _Label_2001		
	load	[r14+-56],r1
	load	[r14+-44],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_2001
_Label_1999:
	mov	731,r13		! source line 731
	mov	"\0\0FB",r10
! CALL STATEMENT...
!   _temp_2004 = _StringConst_97
	set	_StringConst_97,r1
	store	r1,[r14+-40]
!   Prepare Argument: offset=8  value=_temp_2004  sizeInBytes=4
	load	[r14+-40],r1
	store	r1,[r15+0]
!   Call the function
	mov	732,r13		! source line 732
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=i  sizeInBytes=4
	load	[r14+-56],r1
	store	r1,[r15+0]
!   Call the function
	mov	733,r13		! source line 733
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   _temp_2005 = _StringConst_98
	set	_StringConst_98,r1
	store	r1,[r14+-36]
!   Prepare Argument: offset=8  value=_temp_2005  sizeInBytes=4
	load	[r14+-36],r1
	store	r1,[r15+0]
!   Call the function
	mov	734,r13		! source line 734
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_2007 = &threadTable
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-28]
!   Move address of _temp_2007 [i ] into _temp_2008
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
!   _temp_2006 = _temp_2008		(4 bytes)
	load	[r14+-24],r1
	store	r1,[r14+-32]
!   Prepare Argument: offset=8  value=_temp_2006  sizeInBytes=4
	load	[r14+-32],r1
	store	r1,[r15+0]
!   Call the function
	mov	735,r13		! source line 735
	mov	"\0\0CA",r10
	call	_function_217_ThreadPrintShort
!   Increment the FOR-LOOP index variable and jump back
_Label_2000:
!   i = i + 1
	load	[r14+-56],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-56]
	jmp	_Label_1998
! END FOR
_Label_2001:
! CALL STATEMENT...
!   _temp_2009 = _StringConst_99
	set	_StringConst_99,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_2009  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   Call the function
	mov	737,r13		! source line 737
	mov	"\0\0CE",r10
	call	print
! SEND STATEMENT...
	mov	738,r13		! source line 738
	mov	"\0\0SE",r10
!   _temp_2010 = _function_216_PrintObjectAddr
	set	_function_216_PrintObjectAddr,r1
	store	r1,[r14+-16]
!   _temp_2011 = &freeList
	set	41648,r11
	load	[r14+8],r1
	add	r1,r11,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=12  value=_temp_2010  sizeInBytes=4
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
	mov	739,r13		! source line 739
	mov	"\0\0CA",r10
	call	_P_System_nl
! ASSIGNMENT STATEMENT...
	mov	740,r13		! source line 740
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=oldStatus  sizeInBytes=4
	load	[r14+-60],r1
	store	r1,[r15+0]
!   Call the function
	mov	740,r13		! source line 740
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=oldStatus  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-60]
! RETURN STATEMENT...
	mov	740,r13		! source line 740
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
	.word	_Label_2012
	.word	4		! total size of parameters
	.word	60		! frame size = 60
	.word	_Label_2013
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2014
	.word	-12
	.word	4
	.word	_Label_2015
	.word	-16
	.word	4
	.word	_Label_2016
	.word	-20
	.word	4
	.word	_Label_2017
	.word	-24
	.word	4
	.word	_Label_2018
	.word	-28
	.word	4
	.word	_Label_2019
	.word	-32
	.word	4
	.word	_Label_2020
	.word	-36
	.word	4
	.word	_Label_2021
	.word	-40
	.word	4
	.word	_Label_2022
	.word	-44
	.word	4
	.word	_Label_2023
	.word	-48
	.word	4
	.word	_Label_2024
	.word	-52
	.word	4
	.word	_Label_2025
	.word	-56
	.word	4
	.word	_Label_2026
	.word	-60
	.word	4
	.word	0
_Label_2012:
	.ascii	"ThreadManager"
	.ascii	"::"
	.ascii	"Print\0"
	.align
_Label_2013:
	.ascii	"Pself\0"
	.align
_Label_2014:
	.byte	'?'
	.ascii	"_temp_2011\0"
	.align
_Label_2015:
	.byte	'?'
	.ascii	"_temp_2010\0"
	.align
_Label_2016:
	.byte	'?'
	.ascii	"_temp_2009\0"
	.align
_Label_2017:
	.byte	'?'
	.ascii	"_temp_2008\0"
	.align
_Label_2018:
	.byte	'?'
	.ascii	"_temp_2007\0"
	.align
_Label_2019:
	.byte	'?'
	.ascii	"_temp_2006\0"
	.align
_Label_2020:
	.byte	'?'
	.ascii	"_temp_2005\0"
	.align
_Label_2021:
	.byte	'?'
	.ascii	"_temp_2004\0"
	.align
_Label_2022:
	.byte	'?'
	.ascii	"_temp_2003\0"
	.align
_Label_2023:
	.byte	'?'
	.ascii	"_temp_2002\0"
	.align
_Label_2024:
	.byte	'?'
	.ascii	"_temp_1997\0"
	.align
_Label_2025:
	.byte	'I'
	.ascii	"i\0"
	.align
_Label_2026:
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
_Label_4139:
	push	r0
	sub	r1,1,r1
	bne	_Label_4139
	mov	745,r13		! source line 745
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! SEND STATEMENT...
	mov	753,r13		! source line 753
	mov	"\0\0SE",r10
!   _temp_2027 = &threadManagerLock
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
	mov	754,r13		! source line 754
	mov	"\0\0AS",r10
	mov	754,r13		! source line 754
	mov	"\0\0SE",r10
!   _temp_2028 = &freeList
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
	mov	755,r13		! source line 755
	mov	"\0\0WH",r10
_Label_2029:
!   if intIsZero (thread) then goto _Label_2030
	load	[r14+-36],r1
	cmp	r1,r0
	be	_Label_2030
	jmp	_Label_2031
_Label_2030:
	mov	755,r13		! source line 755
	mov	"\0\0WB",r10
! SEND STATEMENT...
	mov	756,r13		! source line 756
	mov	"\0\0SE",r10
!   _temp_2032 = &threadManagerLock
	set	41660,r11
	load	[r14+8],r1
	add	r1,r11,r1
	store	r1,[r14+-24]
!   _temp_2033 = &aThreadBecameFree
	set	41680,r11
	load	[r14+8],r1
	add	r1,r11,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=12  value=_temp_2032  sizeInBytes=4
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
	mov	757,r13		! source line 757
	mov	"\0\0AS",r10
	mov	757,r13		! source line 757
	mov	"\0\0SE",r10
!   _temp_2034 = &freeList
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
	jmp	_Label_2029
_Label_2031:
! SEND STATEMENT...
	mov	759,r13		! source line 759
	mov	"\0\0SE",r10
!   _temp_2035 = &threadManagerLock
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
	mov	760,r13		! source line 760
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
	.word	_Label_2036
	.word	4		! total size of parameters
	.word	36		! frame size = 36
	.word	_Label_2037
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2038
	.word	-12
	.word	4
	.word	_Label_2039
	.word	-16
	.word	4
	.word	_Label_2040
	.word	-20
	.word	4
	.word	_Label_2041
	.word	-24
	.word	4
	.word	_Label_2042
	.word	-28
	.word	4
	.word	_Label_2043
	.word	-32
	.word	4
	.word	_Label_2044
	.word	-36
	.word	4
	.word	0
_Label_2036:
	.ascii	"ThreadManager"
	.ascii	"::"
	.ascii	"GetANewThread\0"
	.align
_Label_2037:
	.ascii	"Pself\0"
	.align
_Label_2038:
	.byte	'?'
	.ascii	"_temp_2035\0"
	.align
_Label_2039:
	.byte	'?'
	.ascii	"_temp_2034\0"
	.align
_Label_2040:
	.byte	'?'
	.ascii	"_temp_2033\0"
	.align
_Label_2041:
	.byte	'?'
	.ascii	"_temp_2032\0"
	.align
_Label_2042:
	.byte	'?'
	.ascii	"_temp_2028\0"
	.align
_Label_2043:
	.byte	'?'
	.ascii	"_temp_2027\0"
	.align
_Label_2044:
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
_Label_4140:
	push	r0
	sub	r1,1,r1
	bne	_Label_4140
	mov	765,r13		! source line 765
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! SEND STATEMENT...
	mov	770,r13		! source line 770
	mov	"\0\0SE",r10
!   _temp_2045 = &threadManagerLock
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
	mov	771,r13		! source line 771
	mov	"\0\0SE",r10
!   _temp_2046 = &freeList
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
	mov	772,r13		! source line 772
	mov	"\0\0SE",r10
!   _temp_2047 = &threadManagerLock
	set	41660,r11
	load	[r14+8],r1
	add	r1,r11,r1
	store	r1,[r14+-20]
!   _temp_2048 = &aThreadBecameFree
	set	41680,r11
	load	[r14+8],r1
	add	r1,r11,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=12  value=_temp_2047  sizeInBytes=4
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
	mov	773,r13		! source line 773
	mov	"\0\0SE",r10
!   _temp_2049 = &threadManagerLock
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
	mov	773,r13		! source line 773
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
	.word	_Label_2050
	.word	8		! total size of parameters
	.word	28		! frame size = 28
	.word	_Label_2051
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2052
	.word	12
	.word	4
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
	.word	0
_Label_2050:
	.ascii	"ThreadManager"
	.ascii	"::"
	.ascii	"FreeThread\0"
	.align
_Label_2051:
	.ascii	"Pself\0"
	.align
_Label_2052:
	.byte	'P'
	.ascii	"th\0"
	.align
_Label_2053:
	.byte	'?'
	.ascii	"_temp_2049\0"
	.align
_Label_2054:
	.byte	'?'
	.ascii	"_temp_2048\0"
	.align
_Label_2055:
	.byte	'?'
	.ascii	"_temp_2047\0"
	.align
_Label_2056:
	.byte	'?'
	.ascii	"_temp_2046\0"
	.align
_Label_2057:
	.byte	'?'
	.ascii	"_temp_2045\0"
	.align
! 
! ===============  CLASS ProcessControlBlock  ===============
! 
! Dispatch Table:
! 
_P_Kernel_ProcessControlBlock:
	.word	_Label_2058
	jmp	_Method_P_Kernel_ProcessControlBlock_1	! 4:	Init
	jmp	_Method_P_Kernel_ProcessControlBlock_2	! 8:	Print
	jmp	_Method_P_Kernel_ProcessControlBlock_3	! 12:	PrintShort
	.word	0
! 
! Class descriptor:
! 
_Label_2058:
	.word	1129070931		! Magic number 0x434c4153 == 'CLAS'
	.word	_Label_2059
	.word	_sourceFileName
	.word	217		! line number
	.word	168		! size of instances, in bytes
	.word	_P_Kernel_ProcessControlBlock
	.word	_P_List_Listable
	.word	_P_System_Object
	.word	0
_Label_2059:
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
_Label_4141:
	push	r0
	sub	r1,1,r1
	bne	_Label_4141
	mov	786,r13		! source line 786
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	787,r13		! source line 787
	mov	"\0\0AS",r10
!   pid = -1		(4 bytes)
	mov	-1,r1
	load	[r14+8],r2
	store	r1,[r2+12]
! ASSIGNMENT STATEMENT...
	mov	788,r13		! source line 788
	mov	"\0\0AS",r10
!   status = 3		(4 bytes)
	mov	3,r1
	load	[r14+8],r2
	store	r1,[r2+20]
! ASSIGNMENT STATEMENT...
	mov	789,r13		! source line 789
	mov	"\0\0AS",r10
!   NEW CLASS Constructor...
!   ZeroMemory: addrSpace = zeros  (sizeInBytes=92)
	load	[r14+8],r4
	add	r4,32,r4
	mov	23,r3
_Label_4142:
	store	r0,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_4142
!   addrSpace = _P_Kernel_AddrSpace
	set	_P_Kernel_AddrSpace,r1
	load	[r14+8],r2
	store	r1,[r2+32]
! SEND STATEMENT...
	mov	790,r13		! source line 790
	mov	"\0\0SE",r10
!   _temp_2061 = &addrSpace
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
	mov	793,r13		! source line 793
	mov	"\0\0AS",r10
!   _temp_2062 = &fileDescriptor
	load	[r14+8],r1
	add	r1,124,r1
	store	r1,[r14+-68]
!   NEW ARRAY Constructor...
!   _temp_2064 = &_temp_2063
	add	r14,-64,r1
	store	r1,[r14+-20]
!   _temp_2064 = _temp_2064 + 4
	load	[r14+-20],r1
	add	r1,4,r1
	store	r1,[r14+-20]
!   Next value...
	mov	10,r1
	store	r1,[r14+-16]
_Label_2066:
!   Data Move: *_temp_2064 = 0  (sizeInBytes=4)
	mov	0,r1
	load	[r14+-20],r2
	store	r1,[r2]
!   _temp_2064 = _temp_2064 + 4
	load	[r14+-20],r1
	add	r1,4,r1
	store	r1,[r14+-20]
!   _temp_2065 = _temp_2065 + -1
	load	[r14+-16],r1
	add	r1,-1,r1
	store	r1,[r14+-16]
!   if intNotZero (_temp_2065) then goto _Label_2066
	load	[r14+-16],r1
	cmp	r1,r0
	bne	_Label_2066
!   Initialize the array size...
	mov	10,r1
	store	r1,[r14+-64]
!   _temp_2067 = &_temp_2063
	add	r14,-64,r1
	store	r1,[r14+-12]
!   make sure array has size 10
	load	[r14+-68],r1
	load	[r1],r1
	set	10, r2
	cmp	r1,0
	be	_Label_4143
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bne	_runtimeErrorWrongArraySize
_Label_4143:
!   make sure array has size 10
	load	[r14+-12],r1
	load	[r1],r1
	set	10, r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bne	_runtimeErrorWrongArraySize
!   Data Move: *_temp_2062 = *_temp_2067  (sizeInBytes=44)
	load	[r14+-12],r5
	load	[r14+-68],r4
	mov	11,r3
_Label_4144:
	load	[r5],r1
	add	r5,4,r5
	store	r1,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_4144
! RETURN STATEMENT...
	mov	793,r13		! source line 793
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
	.word	_Label_2068
	.word	4		! total size of parameters
	.word	72		! frame size = 72
	.word	_Label_2069
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2070
	.word	-12
	.word	4
	.word	_Label_2071
	.word	-16
	.word	4
	.word	_Label_2072
	.word	-20
	.word	4
	.word	_Label_2073
	.word	-64
	.word	44
	.word	_Label_2074
	.word	-68
	.word	4
	.word	_Label_2075
	.word	-72
	.word	4
	.word	_Label_2076
	.word	-76
	.word	4
	.word	0
_Label_2068:
	.ascii	"ProcessControlBlock"
	.ascii	"::"
	.ascii	"Init\0"
	.align
_Label_2069:
	.ascii	"Pself\0"
	.align
_Label_2070:
	.byte	'?'
	.ascii	"_temp_2067\0"
	.align
_Label_2071:
	.byte	'?'
	.ascii	"_temp_2065\0"
	.align
_Label_2072:
	.byte	'?'
	.ascii	"_temp_2064\0"
	.align
_Label_2073:
	.byte	'?'
	.ascii	"_temp_2063\0"
	.align
_Label_2074:
	.byte	'?'
	.ascii	"_temp_2062\0"
	.align
_Label_2075:
	.byte	'?'
	.ascii	"_temp_2061\0"
	.align
_Label_2076:
	.byte	'?'
	.ascii	"_temp_2060\0"
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
_Label_4145:
	push	r0
	sub	r1,1,r1
	bne	_Label_4145
	mov	800,r13		! source line 800
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! SEND STATEMENT...
	mov	805,r13		! source line 805
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-20]
!   if intIsZero (_temp_2077) then goto _runtimeErrorNullPointer
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
	mov	806,r13		! source line 806
	mov	"\0\0SE",r10
!   _temp_2078 = &addrSpace
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
!   _temp_2079 = _StringConst_100
	set	_StringConst_100,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_2079  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	807,r13		! source line 807
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=myThread  sizeInBytes=4
	load	[r14+8],r1
	load	[r1+24],r1
	store	r1,[r15+0]
!   Call the function
	mov	808,r13		! source line 808
	mov	"\0\0CA",r10
	call	_function_217_ThreadPrintShort
! CALL STATEMENT...
!   Call the function
	mov	818,r13		! source line 818
	mov	"\0\0CA",r10
	call	_P_System_nl
! RETURN STATEMENT...
	mov	818,r13		! source line 818
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
	.word	_Label_2080
	.word	4		! total size of parameters
	.word	16		! frame size = 16
	.word	_Label_2081
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2082
	.word	-12
	.word	4
	.word	_Label_2083
	.word	-16
	.word	4
	.word	_Label_2084
	.word	-20
	.word	4
	.word	0
_Label_2080:
	.ascii	"ProcessControlBlock"
	.ascii	"::"
	.ascii	"Print\0"
	.align
_Label_2081:
	.ascii	"Pself\0"
	.align
_Label_2082:
	.byte	'?'
	.ascii	"_temp_2079\0"
	.align
_Label_2083:
	.byte	'?'
	.ascii	"_temp_2078\0"
	.align
_Label_2084:
	.byte	'?'
	.ascii	"_temp_2077\0"
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
_Label_4146:
	push	r0
	sub	r1,1,r1
	bne	_Label_4146
	mov	823,r13		! source line 823
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   _temp_2085 = _StringConst_101
	set	_StringConst_101,r1
	store	r1,[r14+-48]
!   Prepare Argument: offset=8  value=_temp_2085  sizeInBytes=4
	load	[r14+-48],r1
	store	r1,[r15+0]
!   Call the function
	mov	827,r13		! source line 827
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
	load	[r14+8],r1
	store	r1,[r14+-44]
!   Prepare Argument: offset=8  value=_temp_2086  sizeInBytes=4
	load	[r14+-44],r1
	store	r1,[r15+0]
!   Call the function
	mov	828,r13		! source line 828
	mov	"\0\0CE",r10
	call	printHex
! CALL STATEMENT...
!   _temp_2087 = _StringConst_102
	set	_StringConst_102,r1
	store	r1,[r14+-40]
!   Prepare Argument: offset=8  value=_temp_2087  sizeInBytes=4
	load	[r14+-40],r1
	store	r1,[r15+0]
!   Call the function
	mov	829,r13		! source line 829
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=pid  sizeInBytes=4
	load	[r14+8],r1
	load	[r1+12],r1
	store	r1,[r15+0]
!   Call the function
	mov	830,r13		! source line 830
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   _temp_2088 = _StringConst_103
	set	_StringConst_103,r1
	store	r1,[r14+-36]
!   Prepare Argument: offset=8  value=_temp_2088  sizeInBytes=4
	load	[r14+-36],r1
	store	r1,[r15+0]
!   Call the function
	mov	831,r13		! source line 831
	mov	"\0\0CE",r10
	call	print
! IF STATEMENT...
	mov	832,r13		! source line 832
	mov	"\0\0IF",r10
!   if status != 1 then goto _Label_2090		(int)
	load	[r14+8],r1
	load	[r1+20],r1
	mov	1,r2
	cmp	r1,r2
	bne	_Label_2090
!	jmp	_Label_2089
_Label_2089:
! THEN...
	mov	833,r13		! source line 833
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_2091 = _StringConst_104
	set	_StringConst_104,r1
	store	r1,[r14+-32]
!   Prepare Argument: offset=8  value=_temp_2091  sizeInBytes=4
	load	[r14+-32],r1
	store	r1,[r15+0]
!   Call the function
	mov	833,r13		! source line 833
	mov	"\0\0CE",r10
	call	print
	jmp	_Label_2092
_Label_2090:
! ELSE...
	mov	834,r13		! source line 834
	mov	"\0\0EL",r10
! IF STATEMENT...
	mov	834,r13		! source line 834
	mov	"\0\0IF",r10
!   if status != 2 then goto _Label_2094		(int)
	load	[r14+8],r1
	load	[r1+20],r1
	mov	2,r2
	cmp	r1,r2
	bne	_Label_2094
!	jmp	_Label_2093
_Label_2093:
! THEN...
	mov	835,r13		! source line 835
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_2095 = _StringConst_105
	set	_StringConst_105,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=8  value=_temp_2095  sizeInBytes=4
	load	[r14+-28],r1
	store	r1,[r15+0]
!   Call the function
	mov	835,r13		! source line 835
	mov	"\0\0CE",r10
	call	print
	jmp	_Label_2096
_Label_2094:
! ELSE...
	mov	836,r13		! source line 836
	mov	"\0\0EL",r10
! IF STATEMENT...
	mov	836,r13		! source line 836
	mov	"\0\0IF",r10
!   if status != 3 then goto _Label_2098		(int)
	load	[r14+8],r1
	load	[r1+20],r1
	mov	3,r2
	cmp	r1,r2
	bne	_Label_2098
!	jmp	_Label_2097
_Label_2097:
! THEN...
	mov	837,r13		! source line 837
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_2099 = _StringConst_106
	set	_StringConst_106,r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=8  value=_temp_2099  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+0]
!   Call the function
	mov	837,r13		! source line 837
	mov	"\0\0CE",r10
	call	print
	jmp	_Label_2100
_Label_2098:
! ELSE...
	mov	839,r13		! source line 839
	mov	"\0\0EL",r10
! CALL STATEMENT...
!   _temp_2101 = _StringConst_107
	set	_StringConst_107,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_2101  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	839,r13		! source line 839
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END IF...
_Label_2100:
! END IF...
_Label_2096:
! END IF...
_Label_2092:
! CALL STATEMENT...
!   _temp_2102 = _StringConst_108
	set	_StringConst_108,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_2102  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+0]
!   Call the function
	mov	841,r13		! source line 841
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=parentsPid  sizeInBytes=4
	load	[r14+8],r1
	load	[r1+16],r1
	store	r1,[r15+0]
!   Call the function
	mov	842,r13		! source line 842
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   _temp_2103 = _StringConst_109
	set	_StringConst_109,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_2103  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	843,r13		! source line 843
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=exitStatus  sizeInBytes=4
	load	[r14+8],r1
	load	[r1+28],r1
	store	r1,[r15+0]
!   Call the function
	mov	844,r13		! source line 844
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   Call the function
	mov	845,r13		! source line 845
	mov	"\0\0CA",r10
	call	_P_System_nl
! RETURN STATEMENT...
	mov	845,r13		! source line 845
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
	.word	_Label_2104
	.word	4		! total size of parameters
	.word	44		! frame size = 44
	.word	_Label_2105
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2106
	.word	-12
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
	.word	-40
	.word	4
	.word	_Label_2114
	.word	-44
	.word	4
	.word	_Label_2115
	.word	-48
	.word	4
	.word	0
_Label_2104:
	.ascii	"ProcessControlBlock"
	.ascii	"::"
	.ascii	"PrintShort\0"
	.align
_Label_2105:
	.ascii	"Pself\0"
	.align
_Label_2106:
	.byte	'?'
	.ascii	"_temp_2103\0"
	.align
_Label_2107:
	.byte	'?'
	.ascii	"_temp_2102\0"
	.align
_Label_2108:
	.byte	'?'
	.ascii	"_temp_2101\0"
	.align
_Label_2109:
	.byte	'?'
	.ascii	"_temp_2099\0"
	.align
_Label_2110:
	.byte	'?'
	.ascii	"_temp_2095\0"
	.align
_Label_2111:
	.byte	'?'
	.ascii	"_temp_2091\0"
	.align
_Label_2112:
	.byte	'?'
	.ascii	"_temp_2088\0"
	.align
_Label_2113:
	.byte	'?'
	.ascii	"_temp_2087\0"
	.align
_Label_2114:
	.byte	'?'
	.ascii	"_temp_2086\0"
	.align
_Label_2115:
	.byte	'?'
	.ascii	"_temp_2085\0"
	.align
! 
! ===============  CLASS ProcessManager  ===============
! 
! Dispatch Table:
! 
_P_Kernel_ProcessManager:
	.word	_Label_2116
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
_Label_2116:
	.word	1129070931		! Magic number 0x434c4153 == 'CLAS'
	.word	_Label_2117
	.word	_sourceFileName
	.word	237		! line number
	.word	1760		! size of instances, in bytes
	.word	_P_Kernel_ProcessManager
	.word	_P_System_Object
	.word	0
_Label_2117:
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
_Label_4147:
	push	r0
	sub	r1,1,r1
	bne	_Label_4147
	mov	856,r13		! source line 856
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   _temp_2118 = _StringConst_110
	set	_StringConst_110,r1
	store	r1,[r14+-1924]
!   Prepare Argument: offset=8  value=_temp_2118  sizeInBytes=4
	load	[r14+-1924],r1
	store	r1,[r15+0]
!   Call the function
	mov	864,r13		! source line 864
	mov	"\0\0CE",r10
	call	print
! ASSIGNMENT STATEMENT...
	mov	865,r13		! source line 865
	mov	"\0\0AS",r10
!   _temp_2119 = &processTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-1920]
!   NEW ARRAY Constructor...
!   _temp_2121 = &_temp_2120
	add	r14,-1916,r1
	store	r1,[r14+-232]
!   _temp_2121 = _temp_2121 + 4
	load	[r14+-232],r1
	add	r1,4,r1
	store	r1,[r14+-232]
!   Next value...
!   NEW CLASS Constructor...
!   ZeroMemory: _temp_2123 = zeros  (sizeInBytes=168)
	add	r14,-224,r4
	mov	42,r3
_Label_4148:
	store	r0,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_4148
!   _temp_2123 = _P_Kernel_ProcessControlBlock
	set	_P_Kernel_ProcessControlBlock,r1
	store	r1,[r14+-224]
	mov	10,r1
	store	r1,[r14+-228]
_Label_2125:
!   Data Move: *_temp_2121 = _temp_2123  (sizeInBytes=168)
	add	r14,-224,r5
	load	[r14+-232],r4
	mov	42,r3
_Label_4149:
	load	[r5],r1
	add	r5,4,r5
	store	r1,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_4149
!   _temp_2121 = _temp_2121 + 168
	load	[r14+-232],r1
	add	r1,168,r1
	store	r1,[r14+-232]
!   _temp_2122 = _temp_2122 + -1
	load	[r14+-228],r1
	add	r1,-1,r1
	store	r1,[r14+-228]
!   if intNotZero (_temp_2122) then goto _Label_2125
	load	[r14+-228],r1
	cmp	r1,r0
	bne	_Label_2125
!   Initialize the array size...
	mov	10,r1
	store	r1,[r14+-1916]
!   _temp_2126 = &_temp_2120
	add	r14,-1916,r1
	store	r1,[r14+-52]
!   make sure array has size 10
	load	[r14+-1920],r1
	load	[r1],r1
	set	10, r2
	cmp	r1,0
	be	_Label_4150
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bne	_runtimeErrorWrongArraySize
_Label_4150:
!   make sure array has size 10
	load	[r14+-52],r1
	load	[r1],r1
	set	10, r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bne	_runtimeErrorWrongArraySize
!   Data Move: *_temp_2119 = *_temp_2126  (sizeInBytes=1684)
	load	[r14+-52],r5
	load	[r14+-1920],r4
	mov	421,r3
_Label_4151:
	load	[r5],r1
	add	r5,4,r5
	store	r1,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_4151
! ASSIGNMENT STATEMENT...
	mov	866,r13		! source line 866
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
	mov	867,r13		! source line 867
	mov	"\0\0AS",r10
!   pidCount = 0		(4 bytes)
	mov	0,r1
	load	[r14+8],r2
	store	r1,[r2+4]
! ASSIGNMENT STATEMENT...
	mov	868,r13		! source line 868
	mov	"\0\0AS",r10
!   i = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-1928]
! WHILE STATEMENT...
	mov	868,r13		! source line 868
	mov	"\0\0WH",r10
_Label_2128:
!   if i >= 10 then goto _Label_2130		(int)
	load	[r14+-1928],r1
	mov	10,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_2130
!	jmp	_Label_2129
_Label_2129:
	mov	868,r13		! source line 868
	mov	"\0\0WB",r10
! ASSIGNMENT STATEMENT...
	mov	869,r13		! source line 869
	mov	"\0\0AS",r10
!   _temp_2131 = &processTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-44]
!   Move address of _temp_2131 [i ] into _temp_2132
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
!   process = _temp_2132		(4 bytes)
	load	[r14+-40],r1
	store	r1,[r14+-1932]
! SEND STATEMENT...
	mov	870,r13		! source line 870
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
	mov	871,r13		! source line 871
	mov	"\0\0SE",r10
!   _temp_2133 = &freeList
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
	mov	868,r13		! source line 868
	mov	"\0\0AS",r10
!   i = i + 1		(int)
	load	[r14+-1928],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-1928]
! END WHILE...
	jmp	_Label_2128
_Label_2130:
! ASSIGNMENT STATEMENT...
	mov	873,r13		! source line 873
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
	mov	874,r13		! source line 874
	mov	"\0\0SE",r10
!   _temp_2135 = &processManagerLock
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
	mov	875,r13		! source line 875
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
	mov	876,r13		! source line 876
	mov	"\0\0SE",r10
!   _temp_2137 = &aProcessBecameFree
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
	mov	877,r13		! source line 877
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
	mov	878,r13		! source line 878
	mov	"\0\0SE",r10
!   _temp_2139 = &aProcessDied
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
	mov	878,r13		! source line 878
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
	.word	_Label_2140
	.word	4		! total size of parameters
	.word	1932		! frame size = 1932
	.word	_Label_2141
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2142
	.word	-12
	.word	4
	.word	_Label_2143
	.word	-16
	.word	4
	.word	_Label_2144
	.word	-20
	.word	4
	.word	_Label_2145
	.word	-24
	.word	4
	.word	_Label_2146
	.word	-28
	.word	4
	.word	_Label_2147
	.word	-32
	.word	4
	.word	_Label_2148
	.word	-36
	.word	4
	.word	_Label_2149
	.word	-40
	.word	4
	.word	_Label_2150
	.word	-44
	.word	4
	.word	_Label_2151
	.word	-48
	.word	4
	.word	_Label_2152
	.word	-52
	.word	4
	.word	_Label_2153
	.word	-56
	.word	4
	.word	_Label_2154
	.word	-224
	.word	168
	.word	_Label_2155
	.word	-228
	.word	4
	.word	_Label_2156
	.word	-232
	.word	4
	.word	_Label_2157
	.word	-1916
	.word	1684
	.word	_Label_2158
	.word	-1920
	.word	4
	.word	_Label_2159
	.word	-1924
	.word	4
	.word	_Label_2160
	.word	-1928
	.word	4
	.word	_Label_2161
	.word	-1932
	.word	4
	.word	0
_Label_2140:
	.ascii	"ProcessManager"
	.ascii	"::"
	.ascii	"Init\0"
	.align
_Label_2141:
	.ascii	"Pself\0"
	.align
_Label_2142:
	.byte	'?'
	.ascii	"_temp_2139\0"
	.align
_Label_2143:
	.byte	'?'
	.ascii	"_temp_2138\0"
	.align
_Label_2144:
	.byte	'?'
	.ascii	"_temp_2137\0"
	.align
_Label_2145:
	.byte	'?'
	.ascii	"_temp_2136\0"
	.align
_Label_2146:
	.byte	'?'
	.ascii	"_temp_2135\0"
	.align
_Label_2147:
	.byte	'?'
	.ascii	"_temp_2134\0"
	.align
_Label_2148:
	.byte	'?'
	.ascii	"_temp_2133\0"
	.align
_Label_2149:
	.byte	'?'
	.ascii	"_temp_2132\0"
	.align
_Label_2150:
	.byte	'?'
	.ascii	"_temp_2131\0"
	.align
_Label_2151:
	.byte	'?'
	.ascii	"_temp_2127\0"
	.align
_Label_2152:
	.byte	'?'
	.ascii	"_temp_2126\0"
	.align
_Label_2153:
	.byte	'?'
	.ascii	"_temp_2124\0"
	.align
_Label_2154:
	.byte	'?'
	.ascii	"_temp_2123\0"
	.align
_Label_2155:
	.byte	'?'
	.ascii	"_temp_2122\0"
	.align
_Label_2156:
	.byte	'?'
	.ascii	"_temp_2121\0"
	.align
_Label_2157:
	.byte	'?'
	.ascii	"_temp_2120\0"
	.align
_Label_2158:
	.byte	'?'
	.ascii	"_temp_2119\0"
	.align
_Label_2159:
	.byte	'?'
	.ascii	"_temp_2118\0"
	.align
_Label_2160:
	.byte	'I'
	.ascii	"i\0"
	.align
_Label_2161:
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
_Label_4152:
	push	r0
	sub	r1,1,r1
	bne	_Label_4152
	mov	883,r13		! source line 883
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	890,r13		! source line 890
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=2  sizeInBytes=4
	mov	2,r1
	store	r1,[r15+0]
!   Call the function
	mov	890,r13		! source line 890
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=oldStatus  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-56]
! CALL STATEMENT...
!   _temp_2162 = _StringConst_111
	set	_StringConst_111,r1
	store	r1,[r14+-48]
!   Prepare Argument: offset=8  value=_temp_2162  sizeInBytes=4
	load	[r14+-48],r1
	store	r1,[r15+0]
!   Call the function
	mov	891,r13		! source line 891
	mov	"\0\0CE",r10
	call	print
! FOR STATEMENT...
	mov	892,r13		! source line 892
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_2167 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-44]
!   Calculate and save the FOR-LOOP ending value
!   _temp_2168 = 9		(4 bytes)
	mov	9,r1
	store	r1,[r14+-40]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_2167  (sizeInBytes=4)
	load	[r14+-44],r1
	store	r1,[r14+-52]
_Label_2163:
!   Perform the FOR-LOOP termination test
!   if i > _temp_2168 then goto _Label_2166		
	load	[r14+-52],r1
	load	[r14+-40],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_2166
_Label_2164:
	mov	892,r13		! source line 892
	mov	"\0\0FB",r10
! CALL STATEMENT...
!   _temp_2169 = _StringConst_112
	set	_StringConst_112,r1
	store	r1,[r14+-36]
!   Prepare Argument: offset=8  value=_temp_2169  sizeInBytes=4
	load	[r14+-36],r1
	store	r1,[r15+0]
!   Call the function
	mov	893,r13		! source line 893
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=i  sizeInBytes=4
	load	[r14+-52],r1
	store	r1,[r15+0]
!   Call the function
	mov	894,r13		! source line 894
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   _temp_2170 = _StringConst_113
	set	_StringConst_113,r1
	store	r1,[r14+-32]
!   Prepare Argument: offset=8  value=_temp_2170  sizeInBytes=4
	load	[r14+-32],r1
	store	r1,[r15+0]
!   Call the function
	mov	895,r13		! source line 895
	mov	"\0\0CE",r10
	call	print
! SEND STATEMENT...
	mov	896,r13		! source line 896
	mov	"\0\0SE",r10
!   _temp_2171 = &processTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-28]
!   Move address of _temp_2171 [i ] into _temp_2172
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
_Label_2165:
!   i = i + 1
	load	[r14+-52],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-52]
	jmp	_Label_2163
! END FOR
_Label_2166:
! CALL STATEMENT...
!   _temp_2173 = _StringConst_114
	set	_StringConst_114,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_2173  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   Call the function
	mov	898,r13		! source line 898
	mov	"\0\0CE",r10
	call	print
! SEND STATEMENT...
	mov	899,r13		! source line 899
	mov	"\0\0SE",r10
!   _temp_2174 = _function_216_PrintObjectAddr
	set	_function_216_PrintObjectAddr,r1
	store	r1,[r14+-16]
!   _temp_2175 = &freeList
	load	[r14+8],r1
	add	r1,1728,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=12  value=_temp_2174  sizeInBytes=4
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
	mov	900,r13		! source line 900
	mov	"\0\0CA",r10
	call	_P_System_nl
! ASSIGNMENT STATEMENT...
	mov	901,r13		! source line 901
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=oldStatus  sizeInBytes=4
	load	[r14+-56],r1
	store	r1,[r15+0]
!   Call the function
	mov	901,r13		! source line 901
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=oldStatus  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-56]
! RETURN STATEMENT...
	mov	901,r13		! source line 901
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
	.word	_Label_2176
	.word	4		! total size of parameters
	.word	56		! frame size = 56
	.word	_Label_2177
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2178
	.word	-12
	.word	4
	.word	_Label_2179
	.word	-16
	.word	4
	.word	_Label_2180
	.word	-20
	.word	4
	.word	_Label_2181
	.word	-24
	.word	4
	.word	_Label_2182
	.word	-28
	.word	4
	.word	_Label_2183
	.word	-32
	.word	4
	.word	_Label_2184
	.word	-36
	.word	4
	.word	_Label_2185
	.word	-40
	.word	4
	.word	_Label_2186
	.word	-44
	.word	4
	.word	_Label_2187
	.word	-48
	.word	4
	.word	_Label_2188
	.word	-52
	.word	4
	.word	_Label_2189
	.word	-56
	.word	4
	.word	0
_Label_2176:
	.ascii	"ProcessManager"
	.ascii	"::"
	.ascii	"Print\0"
	.align
_Label_2177:
	.ascii	"Pself\0"
	.align
_Label_2178:
	.byte	'?'
	.ascii	"_temp_2175\0"
	.align
_Label_2179:
	.byte	'?'
	.ascii	"_temp_2174\0"
	.align
_Label_2180:
	.byte	'?'
	.ascii	"_temp_2173\0"
	.align
_Label_2181:
	.byte	'?'
	.ascii	"_temp_2172\0"
	.align
_Label_2182:
	.byte	'?'
	.ascii	"_temp_2171\0"
	.align
_Label_2183:
	.byte	'?'
	.ascii	"_temp_2170\0"
	.align
_Label_2184:
	.byte	'?'
	.ascii	"_temp_2169\0"
	.align
_Label_2185:
	.byte	'?'
	.ascii	"_temp_2168\0"
	.align
_Label_2186:
	.byte	'?'
	.ascii	"_temp_2167\0"
	.align
_Label_2187:
	.byte	'?'
	.ascii	"_temp_2162\0"
	.align
_Label_2188:
	.byte	'I'
	.ascii	"i\0"
	.align
_Label_2189:
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
_Label_4153:
	push	r0
	sub	r1,1,r1
	bne	_Label_4153
	mov	906,r13		! source line 906
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	913,r13		! source line 913
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=2  sizeInBytes=4
	mov	2,r1
	store	r1,[r15+0]
!   Call the function
	mov	913,r13		! source line 913
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=oldStatus  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-52]
! CALL STATEMENT...
!   _temp_2190 = _StringConst_115
	set	_StringConst_115,r1
	store	r1,[r14+-44]
!   Prepare Argument: offset=8  value=_temp_2190  sizeInBytes=4
	load	[r14+-44],r1
	store	r1,[r15+0]
!   Call the function
	mov	914,r13		! source line 914
	mov	"\0\0CE",r10
	call	print
! FOR STATEMENT...
	mov	915,r13		! source line 915
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_2195 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-40]
!   Calculate and save the FOR-LOOP ending value
!   _temp_2196 = 9		(4 bytes)
	mov	9,r1
	store	r1,[r14+-36]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_2195  (sizeInBytes=4)
	load	[r14+-40],r1
	store	r1,[r14+-48]
_Label_2191:
!   Perform the FOR-LOOP termination test
!   if i > _temp_2196 then goto _Label_2194		
	load	[r14+-48],r1
	load	[r14+-36],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_2194
_Label_2192:
	mov	915,r13		! source line 915
	mov	"\0\0FB",r10
! CALL STATEMENT...
!   _temp_2197 = _StringConst_116
	set	_StringConst_116,r1
	store	r1,[r14+-32]
!   Prepare Argument: offset=8  value=_temp_2197  sizeInBytes=4
	load	[r14+-32],r1
	store	r1,[r15+0]
!   Call the function
	mov	916,r13		! source line 916
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=i  sizeInBytes=4
	load	[r14+-48],r1
	store	r1,[r15+0]
!   Call the function
	mov	917,r13		! source line 917
	mov	"\0\0CE",r10
	call	printInt
! SEND STATEMENT...
	mov	918,r13		! source line 918
	mov	"\0\0SE",r10
!   _temp_2198 = &processTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-28]
!   Move address of _temp_2198 [i ] into _temp_2199
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
_Label_2193:
!   i = i + 1
	load	[r14+-48],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-48]
	jmp	_Label_2191
! END FOR
_Label_2194:
! CALL STATEMENT...
!   _temp_2200 = _StringConst_117
	set	_StringConst_117,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_2200  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   Call the function
	mov	920,r13		! source line 920
	mov	"\0\0CE",r10
	call	print
! SEND STATEMENT...
	mov	921,r13		! source line 921
	mov	"\0\0SE",r10
!   _temp_2201 = _function_216_PrintObjectAddr
	set	_function_216_PrintObjectAddr,r1
	store	r1,[r14+-16]
!   _temp_2202 = &freeList
	load	[r14+8],r1
	add	r1,1728,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=12  value=_temp_2201  sizeInBytes=4
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
	mov	922,r13		! source line 922
	mov	"\0\0CA",r10
	call	_P_System_nl
! ASSIGNMENT STATEMENT...
	mov	923,r13		! source line 923
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=oldStatus  sizeInBytes=4
	load	[r14+-52],r1
	store	r1,[r15+0]
!   Call the function
	mov	923,r13		! source line 923
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=oldStatus  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-52]
! RETURN STATEMENT...
	mov	923,r13		! source line 923
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
	.word	_Label_2203
	.word	4		! total size of parameters
	.word	52		! frame size = 52
	.word	_Label_2204
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2205
	.word	-12
	.word	4
	.word	_Label_2206
	.word	-16
	.word	4
	.word	_Label_2207
	.word	-20
	.word	4
	.word	_Label_2208
	.word	-24
	.word	4
	.word	_Label_2209
	.word	-28
	.word	4
	.word	_Label_2210
	.word	-32
	.word	4
	.word	_Label_2211
	.word	-36
	.word	4
	.word	_Label_2212
	.word	-40
	.word	4
	.word	_Label_2213
	.word	-44
	.word	4
	.word	_Label_2214
	.word	-48
	.word	4
	.word	_Label_2215
	.word	-52
	.word	4
	.word	0
_Label_2203:
	.ascii	"ProcessManager"
	.ascii	"::"
	.ascii	"PrintShort\0"
	.align
_Label_2204:
	.ascii	"Pself\0"
	.align
_Label_2205:
	.byte	'?'
	.ascii	"_temp_2202\0"
	.align
_Label_2206:
	.byte	'?'
	.ascii	"_temp_2201\0"
	.align
_Label_2207:
	.byte	'?'
	.ascii	"_temp_2200\0"
	.align
_Label_2208:
	.byte	'?'
	.ascii	"_temp_2199\0"
	.align
_Label_2209:
	.byte	'?'
	.ascii	"_temp_2198\0"
	.align
_Label_2210:
	.byte	'?'
	.ascii	"_temp_2197\0"
	.align
_Label_2211:
	.byte	'?'
	.ascii	"_temp_2196\0"
	.align
_Label_2212:
	.byte	'?'
	.ascii	"_temp_2195\0"
	.align
_Label_2213:
	.byte	'?'
	.ascii	"_temp_2190\0"
	.align
_Label_2214:
	.byte	'I'
	.ascii	"i\0"
	.align
_Label_2215:
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
_Label_4154:
	push	r0
	sub	r1,1,r1
	bne	_Label_4154
	mov	928,r13		! source line 928
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! SEND STATEMENT...
	mov	936,r13		! source line 936
	mov	"\0\0SE",r10
!   _temp_2216 = &processManagerLock
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
	mov	937,r13		! source line 937
	mov	"\0\0AS",r10
	mov	937,r13		! source line 937
	mov	"\0\0SE",r10
!   _temp_2217 = &freeList
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
	mov	938,r13		! source line 938
	mov	"\0\0WH",r10
_Label_2218:
!   if intIsZero (process) then goto _Label_2219
	load	[r14+-44],r1
	cmp	r1,r0
	be	_Label_2219
	jmp	_Label_2220
_Label_2219:
	mov	938,r13		! source line 938
	mov	"\0\0WB",r10
! SEND STATEMENT...
	mov	939,r13		! source line 939
	mov	"\0\0SE",r10
!   _temp_2221 = &processManagerLock
	load	[r14+8],r1
	add	r1,1692,r1
	store	r1,[r14+-32]
!   _temp_2222 = &aProcessBecameFree
	load	[r14+8],r1
	add	r1,1712,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=12  value=_temp_2221  sizeInBytes=4
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
	mov	940,r13		! source line 940
	mov	"\0\0AS",r10
	mov	940,r13		! source line 940
	mov	"\0\0SE",r10
!   _temp_2223 = &freeList
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
	jmp	_Label_2218
_Label_2220:
! ASSIGNMENT STATEMENT...
	mov	942,r13		! source line 942
	mov	"\0\0AS",r10
!   if intIsZero (process) then goto _runtimeErrorNullPointer
	load	[r14+-44],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2224 = process + 20
	load	[r14+-44],r1
	add	r1,20,r1
	store	r1,[r14+-20]
!   Data Move: *_temp_2224 = 1  (sizeInBytes=4)
	mov	1,r1
	load	[r14+-20],r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	943,r13		! source line 943
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
	mov	944,r13		! source line 944
	mov	"\0\0AS",r10
!   if intIsZero (process) then goto _runtimeErrorNullPointer
	load	[r14+-44],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2225 = process + 12
	load	[r14+-44],r1
	add	r1,12,r1
	store	r1,[r14+-16]
!   Data Move: *_temp_2225 = pidCount  (sizeInBytes=4)
	load	[r14+8],r1
	load	[r1+4],r1
	load	[r14+-16],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	945,r13		! source line 945
	mov	"\0\0SE",r10
!   _temp_2226 = &processManagerLock
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
	mov	946,r13		! source line 946
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
	.word	_Label_2227
	.word	4		! total size of parameters
	.word	44		! frame size = 44
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
	.word	_Label_2235
	.word	-36
	.word	4
	.word	_Label_2236
	.word	-40
	.word	4
	.word	_Label_2237
	.word	-44
	.word	4
	.word	0
_Label_2227:
	.ascii	"ProcessManager"
	.ascii	"::"
	.ascii	"GetANewProcess\0"
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
_Label_2235:
	.byte	'?'
	.ascii	"_temp_2217\0"
	.align
_Label_2236:
	.byte	'?'
	.ascii	"_temp_2216\0"
	.align
_Label_2237:
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
_Label_4155:
	push	r0
	sub	r1,1,r1
	bne	_Label_4155
	mov	951,r13		! source line 951
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   _temp_2238 = _StringConst_118
	set	_StringConst_118,r1
	store	r1,[r14+-36]
!   Prepare Argument: offset=8  value=_temp_2238  sizeInBytes=4
	load	[r14+-36],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	956,r13		! source line 956
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! SEND STATEMENT...
	mov	957,r13		! source line 957
	mov	"\0\0SE",r10
!   _temp_2239 = &processManagerLock
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
	mov	958,r13		! source line 958
	mov	"\0\0SE",r10
!   _temp_2240 = &freeList
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
	mov	959,r13		! source line 959
	mov	"\0\0AS",r10
!   if intIsZero (p) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2241 = p + 20
	load	[r14+12],r1
	add	r1,20,r1
	store	r1,[r14+-24]
!   Data Move: *_temp_2241 = 3  (sizeInBytes=4)
	mov	3,r1
	load	[r14+-24],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	961,r13		! source line 961
	mov	"\0\0SE",r10
!   _temp_2242 = &processManagerLock
	load	[r14+8],r1
	add	r1,1692,r1
	store	r1,[r14+-20]
!   _temp_2243 = &aProcessBecameFree
	load	[r14+8],r1
	add	r1,1712,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=12  value=_temp_2242  sizeInBytes=4
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
	mov	962,r13		! source line 962
	mov	"\0\0SE",r10
!   _temp_2244 = &processManagerLock
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
	mov	962,r13		! source line 962
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
	.word	_Label_2245
	.word	8		! total size of parameters
	.word	36		! frame size = 36
	.word	_Label_2246
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2247
	.word	12
	.word	4
	.word	_Label_2248
	.word	-12
	.word	4
	.word	_Label_2249
	.word	-16
	.word	4
	.word	_Label_2250
	.word	-20
	.word	4
	.word	_Label_2251
	.word	-24
	.word	4
	.word	_Label_2252
	.word	-28
	.word	4
	.word	_Label_2253
	.word	-32
	.word	4
	.word	_Label_2254
	.word	-36
	.word	4
	.word	0
_Label_2245:
	.ascii	"ProcessManager"
	.ascii	"::"
	.ascii	"FreeProcess\0"
	.align
_Label_2246:
	.ascii	"Pself\0"
	.align
_Label_2247:
	.byte	'P'
	.ascii	"p\0"
	.align
_Label_2248:
	.byte	'?'
	.ascii	"_temp_2244\0"
	.align
_Label_2249:
	.byte	'?'
	.ascii	"_temp_2243\0"
	.align
_Label_2250:
	.byte	'?'
	.ascii	"_temp_2242\0"
	.align
_Label_2251:
	.byte	'?'
	.ascii	"_temp_2241\0"
	.align
_Label_2252:
	.byte	'?'
	.ascii	"_temp_2240\0"
	.align
_Label_2253:
	.byte	'?'
	.ascii	"_temp_2239\0"
	.align
_Label_2254:
	.byte	'?'
	.ascii	"_temp_2238\0"
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
_Label_4156:
	push	r0
	sub	r1,1,r1
	bne	_Label_4156
	mov	968,r13		! source line 968
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! SEND STATEMENT...
	mov	976,r13		! source line 976
	mov	"\0\0SE",r10
!   _temp_2255 = &processManagerLock
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
	mov	979,r13		! source line 979
	mov	"\0\0AS",r10
!   if intIsZero (p) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2256 = p + 12
	load	[r14+12],r1
	add	r1,12,r1
	store	r1,[r14+-188]
!   Data Move: myPid = *_temp_2256  (sizeInBytes=4)
	load	[r14+-188],r1
	load	[r1],r1
	store	r1,[r14+-200]
! ASSIGNMENT STATEMENT...
	mov	981,r13		! source line 981
	mov	"\0\0AS",r10
!   i = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-196]
! WHILE STATEMENT...
	mov	981,r13		! source line 981
	mov	"\0\0WH",r10
_Label_2257:
!   if i >= 10 then goto _Label_2259		(int)
	load	[r14+-196],r1
	mov	10,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_2259
!	jmp	_Label_2258
_Label_2258:
	mov	981,r13		! source line 981
	mov	"\0\0WB",r10
! IF STATEMENT...
	mov	982,r13		! source line 982
	mov	"\0\0IF",r10
!   _temp_2264 = &processTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-180]
!   Move address of _temp_2264 [i ] into _temp_2265
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
!   _temp_2266 = _temp_2265 + 16
	load	[r14+-176],r1
	add	r1,16,r1
	store	r1,[r14+-172]
!   Data Move: _temp_2263 = *_temp_2266  (sizeInBytes=4)
	load	[r14+-172],r1
	load	[r1],r1
	store	r1,[r14+-184]
!   if _temp_2263 != myPid then goto _Label_2261		(int)
	load	[r14+-184],r1
	load	[r14+-200],r2
	cmp	r1,r2
	bne	_Label_2261
!	jmp	_Label_2262
_Label_2262:
!   _temp_2268 = &processTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-164]
!   Move address of _temp_2268 [i ] into _temp_2269
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
!   _temp_2270 = _temp_2269 + 20
	load	[r14+-160],r1
	add	r1,20,r1
	store	r1,[r14+-156]
!   Data Move: _temp_2267 = *_temp_2270  (sizeInBytes=4)
	load	[r14+-156],r1
	load	[r1],r1
	store	r1,[r14+-168]
!   if _temp_2267 != 2 then goto _Label_2261		(int)
	load	[r14+-168],r1
	mov	2,r2
	cmp	r1,r2
	bne	_Label_2261
!	jmp	_Label_2260
_Label_2260:
! THEN...
	mov	983,r13		! source line 983
	mov	"\0\0TN",r10
! ASSIGNMENT STATEMENT...
	mov	983,r13		! source line 983
	mov	"\0\0AS",r10
!   _temp_2271 = &processTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-152]
!   Move address of _temp_2271 [i ] into _temp_2272
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
!   _temp_2273 = _temp_2272 + 20
	load	[r14+-148],r1
	add	r1,20,r1
	store	r1,[r14+-144]
!   Data Move: *_temp_2273 = 3  (sizeInBytes=4)
	mov	3,r1
	load	[r14+-144],r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	984,r13		! source line 984
	mov	"\0\0AS",r10
!   _temp_2274 = &processTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-140]
!   Move address of _temp_2274 [i ] into _temp_2275
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
!   _temp_2276 = _temp_2275 + 12
	load	[r14+-136],r1
	add	r1,12,r1
	store	r1,[r14+-132]
!   Data Move: *_temp_2276 = -1  (sizeInBytes=4)
	mov	-1,r1
	load	[r14+-132],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	985,r13		! source line 985
	mov	"\0\0SE",r10
!   _temp_2278 = &processTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-124]
!   Move address of _temp_2278 [i ] into _temp_2279
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
!   _temp_2277 = _temp_2279		(4 bytes)
	load	[r14+-120],r1
	store	r1,[r14+-128]
!   _temp_2280 = &freeList
	load	[r14+8],r1
	add	r1,1728,r1
	store	r1,[r14+-116]
!   Prepare Argument: offset=12  value=_temp_2277  sizeInBytes=4
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
	mov	986,r13		! source line 986
	mov	"\0\0SE",r10
!   _temp_2281 = &processManagerLock
	load	[r14+8],r1
	add	r1,1692,r1
	store	r1,[r14+-112]
!   _temp_2282 = &aProcessBecameFree
	load	[r14+8],r1
	add	r1,1712,r1
	store	r1,[r14+-108]
!   Prepare Argument: offset=12  value=_temp_2281  sizeInBytes=4
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
_Label_2261:
! ASSIGNMENT STATEMENT...
	mov	981,r13		! source line 981
	mov	"\0\0AS",r10
!   i = i + 1		(int)
	load	[r14+-196],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-196]
! END WHILE...
	jmp	_Label_2257
_Label_2259:
! ASSIGNMENT STATEMENT...
	mov	991,r13		! source line 991
	mov	"\0\0AS",r10
!   if intIsZero (p) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2283 = p + 16
	load	[r14+12],r1
	add	r1,16,r1
	store	r1,[r14+-104]
!   Data Move: parentPid = *_temp_2283  (sizeInBytes=4)
	load	[r14+-104],r1
	load	[r1],r1
	store	r1,[r14+-204]
! ASSIGNMENT STATEMENT...
	mov	993,r13		! source line 993
	mov	"\0\0AS",r10
!   i = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-196]
! WHILE STATEMENT...
	mov	993,r13		! source line 993
	mov	"\0\0WH",r10
_Label_2284:
!   if i >= 10 then goto _Label_2286		(int)
	load	[r14+-196],r1
	mov	10,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_2286
!	jmp	_Label_2285
_Label_2285:
	mov	993,r13		! source line 993
	mov	"\0\0WB",r10
! IF STATEMENT...
	mov	994,r13		! source line 994
	mov	"\0\0IF",r10
!   _temp_2290 = &processTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-96]
!   Move address of _temp_2290 [i ] into _temp_2291
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
!   _temp_2292 = _temp_2291 + 12
	load	[r14+-92],r1
	add	r1,12,r1
	store	r1,[r14+-88]
!   Data Move: _temp_2289 = *_temp_2292  (sizeInBytes=4)
	load	[r14+-88],r1
	load	[r1],r1
	store	r1,[r14+-100]
!   if _temp_2289 != parentPid then goto _Label_2288		(int)
	load	[r14+-100],r1
	load	[r14+-204],r2
	cmp	r1,r2
	bne	_Label_2288
!	jmp	_Label_2287
_Label_2287:
! THEN...
	mov	996,r13		! source line 996
	mov	"\0\0TN",r10
! ASSIGNMENT STATEMENT...
	mov	996,r13		! source line 996
	mov	"\0\0AS",r10
!   parentFound = 1		(1 byte)
	mov	1,r1
	storeb	r1,[r14+-10]
! IF STATEMENT...
	mov	998,r13		! source line 998
	mov	"\0\0IF",r10
!   _temp_2296 = &processTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-80]
!   Move address of _temp_2296 [i ] into _temp_2297
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
!   _temp_2298 = _temp_2297 + 20
	load	[r14+-76],r1
	add	r1,20,r1
	store	r1,[r14+-72]
!   Data Move: _temp_2295 = *_temp_2298  (sizeInBytes=4)
	load	[r14+-72],r1
	load	[r1],r1
	store	r1,[r14+-84]
!   if _temp_2295 != 1 then goto _Label_2294		(int)
	load	[r14+-84],r1
	mov	1,r2
	cmp	r1,r2
	bne	_Label_2294
!	jmp	_Label_2293
_Label_2293:
! THEN...
	mov	999,r13		! source line 999
	mov	"\0\0TN",r10
! ASSIGNMENT STATEMENT...
	mov	999,r13		! source line 999
	mov	"\0\0AS",r10
!   if intIsZero (p) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2299 = p + 20
	load	[r14+12],r1
	add	r1,20,r1
	store	r1,[r14+-68]
!   Data Move: *_temp_2299 = 2  (sizeInBytes=4)
	mov	2,r1
	load	[r14+-68],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	1000,r13		! source line 1000
	mov	"\0\0SE",r10
!   _temp_2300 = &processManagerLock
	load	[r14+8],r1
	add	r1,1692,r1
	store	r1,[r14+-64]
!   _temp_2301 = &aProcessDied
	load	[r14+8],r1
	add	r1,1740,r1
	store	r1,[r14+-60]
!   Prepare Argument: offset=12  value=_temp_2300  sizeInBytes=4
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
	jmp	_Label_2302
_Label_2294:
! ELSE...
	mov	1004,r13		! source line 1004
	mov	"\0\0EL",r10
! ASSIGNMENT STATEMENT...
	mov	1004,r13		! source line 1004
	mov	"\0\0AS",r10
!   if intIsZero (p) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2303 = p + 20
	load	[r14+12],r1
	add	r1,20,r1
	store	r1,[r14+-56]
!   Data Move: *_temp_2303 = 3  (sizeInBytes=4)
	mov	3,r1
	load	[r14+-56],r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	1005,r13		! source line 1005
	mov	"\0\0AS",r10
!   if intIsZero (p) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2304 = p + 12
	load	[r14+12],r1
	add	r1,12,r1
	store	r1,[r14+-52]
!   Data Move: *_temp_2304 = -1  (sizeInBytes=4)
	mov	-1,r1
	load	[r14+-52],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	1006,r13		! source line 1006
	mov	"\0\0SE",r10
!   _temp_2305 = &freeList
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
	mov	1007,r13		! source line 1007
	mov	"\0\0SE",r10
!   _temp_2306 = &processManagerLock
	load	[r14+8],r1
	add	r1,1692,r1
	store	r1,[r14+-44]
!   _temp_2307 = &aProcessBecameFree
	load	[r14+8],r1
	add	r1,1712,r1
	store	r1,[r14+-40]
!   Prepare Argument: offset=12  value=_temp_2306  sizeInBytes=4
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
_Label_2302:
! END IF...
_Label_2288:
! ASSIGNMENT STATEMENT...
	mov	993,r13		! source line 993
	mov	"\0\0AS",r10
!   i = i + 1		(int)
	load	[r14+-196],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-196]
! END WHILE...
	jmp	_Label_2284
_Label_2286:
! IF STATEMENT...
	mov	1012,r13		! source line 1012
	mov	"\0\0IF",r10
!   _temp_2310 = parentFound XOR 0		(bool)
	loadb	[r14+-10],r1
	mov	0,r2
	xor	r1,r2,r1
	storeb	r1,[r14+-9]
!   if _temp_2310 then goto _Label_2309 else goto _Label_2308
	loadb	[r14+-9],r1
	cmp	r1,0
	be	_Label_2308
	jmp	_Label_2309
_Label_2308:
! THEN...
	mov	1013,r13		! source line 1013
	mov	"\0\0TN",r10
! ASSIGNMENT STATEMENT...
	mov	1013,r13		! source line 1013
	mov	"\0\0AS",r10
!   if intIsZero (p) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2311 = p + 20
	load	[r14+12],r1
	add	r1,20,r1
	store	r1,[r14+-36]
!   Data Move: *_temp_2311 = 3  (sizeInBytes=4)
	mov	3,r1
	load	[r14+-36],r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	1014,r13		! source line 1014
	mov	"\0\0AS",r10
!   if intIsZero (p) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2312 = p + 12
	load	[r14+12],r1
	add	r1,12,r1
	store	r1,[r14+-32]
!   Data Move: *_temp_2312 = -1  (sizeInBytes=4)
	mov	-1,r1
	load	[r14+-32],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	1015,r13		! source line 1015
	mov	"\0\0SE",r10
!   _temp_2313 = &freeList
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
	mov	1016,r13		! source line 1016
	mov	"\0\0SE",r10
!   _temp_2314 = &processManagerLock
	load	[r14+8],r1
	add	r1,1692,r1
	store	r1,[r14+-24]
!   _temp_2315 = &aProcessBecameFree
	load	[r14+8],r1
	add	r1,1712,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=12  value=_temp_2314  sizeInBytes=4
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
_Label_2309:
! SEND STATEMENT...
	mov	1019,r13		! source line 1019
	mov	"\0\0SE",r10
!   _temp_2316 = &processManagerLock
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
	mov	1019,r13		! source line 1019
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
	.word	_Label_2317
	.word	8		! total size of parameters
	.word	204		! frame size = 204
	.word	_Label_2318
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2319
	.word	12
	.word	4
	.word	_Label_2320
	.word	-16
	.word	4
	.word	_Label_2321
	.word	-20
	.word	4
	.word	_Label_2322
	.word	-24
	.word	4
	.word	_Label_2323
	.word	-28
	.word	4
	.word	_Label_2324
	.word	-32
	.word	4
	.word	_Label_2325
	.word	-36
	.word	4
	.word	_Label_2326
	.word	-9
	.word	1
	.word	_Label_2327
	.word	-40
	.word	4
	.word	_Label_2328
	.word	-44
	.word	4
	.word	_Label_2329
	.word	-48
	.word	4
	.word	_Label_2330
	.word	-52
	.word	4
	.word	_Label_2331
	.word	-56
	.word	4
	.word	_Label_2332
	.word	-60
	.word	4
	.word	_Label_2333
	.word	-64
	.word	4
	.word	_Label_2334
	.word	-68
	.word	4
	.word	_Label_2335
	.word	-72
	.word	4
	.word	_Label_2336
	.word	-76
	.word	4
	.word	_Label_2337
	.word	-80
	.word	4
	.word	_Label_2338
	.word	-84
	.word	4
	.word	_Label_2339
	.word	-88
	.word	4
	.word	_Label_2340
	.word	-92
	.word	4
	.word	_Label_2341
	.word	-96
	.word	4
	.word	_Label_2342
	.word	-100
	.word	4
	.word	_Label_2343
	.word	-104
	.word	4
	.word	_Label_2344
	.word	-108
	.word	4
	.word	_Label_2345
	.word	-112
	.word	4
	.word	_Label_2346
	.word	-116
	.word	4
	.word	_Label_2347
	.word	-120
	.word	4
	.word	_Label_2348
	.word	-124
	.word	4
	.word	_Label_2349
	.word	-128
	.word	4
	.word	_Label_2350
	.word	-132
	.word	4
	.word	_Label_2351
	.word	-136
	.word	4
	.word	_Label_2352
	.word	-140
	.word	4
	.word	_Label_2353
	.word	-144
	.word	4
	.word	_Label_2354
	.word	-148
	.word	4
	.word	_Label_2355
	.word	-152
	.word	4
	.word	_Label_2356
	.word	-156
	.word	4
	.word	_Label_2357
	.word	-160
	.word	4
	.word	_Label_2358
	.word	-164
	.word	4
	.word	_Label_2359
	.word	-168
	.word	4
	.word	_Label_2360
	.word	-172
	.word	4
	.word	_Label_2361
	.word	-176
	.word	4
	.word	_Label_2362
	.word	-180
	.word	4
	.word	_Label_2363
	.word	-184
	.word	4
	.word	_Label_2364
	.word	-188
	.word	4
	.word	_Label_2365
	.word	-192
	.word	4
	.word	_Label_2366
	.word	-196
	.word	4
	.word	_Label_2367
	.word	-200
	.word	4
	.word	_Label_2368
	.word	-204
	.word	4
	.word	_Label_2369
	.word	-10
	.word	1
	.word	0
_Label_2317:
	.ascii	"ProcessManager"
	.ascii	"::"
	.ascii	"TurnIntoZombie\0"
	.align
_Label_2318:
	.ascii	"Pself\0"
	.align
_Label_2319:
	.byte	'P'
	.ascii	"p\0"
	.align
_Label_2320:
	.byte	'?'
	.ascii	"_temp_2316\0"
	.align
_Label_2321:
	.byte	'?'
	.ascii	"_temp_2315\0"
	.align
_Label_2322:
	.byte	'?'
	.ascii	"_temp_2314\0"
	.align
_Label_2323:
	.byte	'?'
	.ascii	"_temp_2313\0"
	.align
_Label_2324:
	.byte	'?'
	.ascii	"_temp_2312\0"
	.align
_Label_2325:
	.byte	'?'
	.ascii	"_temp_2311\0"
	.align
_Label_2326:
	.byte	'C'
	.ascii	"_temp_2310\0"
	.align
_Label_2327:
	.byte	'?'
	.ascii	"_temp_2307\0"
	.align
_Label_2328:
	.byte	'?'
	.ascii	"_temp_2306\0"
	.align
_Label_2329:
	.byte	'?'
	.ascii	"_temp_2305\0"
	.align
_Label_2330:
	.byte	'?'
	.ascii	"_temp_2304\0"
	.align
_Label_2331:
	.byte	'?'
	.ascii	"_temp_2303\0"
	.align
_Label_2332:
	.byte	'?'
	.ascii	"_temp_2301\0"
	.align
_Label_2333:
	.byte	'?'
	.ascii	"_temp_2300\0"
	.align
_Label_2334:
	.byte	'?'
	.ascii	"_temp_2299\0"
	.align
_Label_2335:
	.byte	'?'
	.ascii	"_temp_2298\0"
	.align
_Label_2336:
	.byte	'?'
	.ascii	"_temp_2297\0"
	.align
_Label_2337:
	.byte	'?'
	.ascii	"_temp_2296\0"
	.align
_Label_2338:
	.byte	'?'
	.ascii	"_temp_2295\0"
	.align
_Label_2339:
	.byte	'?'
	.ascii	"_temp_2292\0"
	.align
_Label_2340:
	.byte	'?'
	.ascii	"_temp_2291\0"
	.align
_Label_2341:
	.byte	'?'
	.ascii	"_temp_2290\0"
	.align
_Label_2342:
	.byte	'?'
	.ascii	"_temp_2289\0"
	.align
_Label_2343:
	.byte	'?'
	.ascii	"_temp_2283\0"
	.align
_Label_2344:
	.byte	'?'
	.ascii	"_temp_2282\0"
	.align
_Label_2345:
	.byte	'?'
	.ascii	"_temp_2281\0"
	.align
_Label_2346:
	.byte	'?'
	.ascii	"_temp_2280\0"
	.align
_Label_2347:
	.byte	'?'
	.ascii	"_temp_2279\0"
	.align
_Label_2348:
	.byte	'?'
	.ascii	"_temp_2278\0"
	.align
_Label_2349:
	.byte	'?'
	.ascii	"_temp_2277\0"
	.align
_Label_2350:
	.byte	'?'
	.ascii	"_temp_2276\0"
	.align
_Label_2351:
	.byte	'?'
	.ascii	"_temp_2275\0"
	.align
_Label_2352:
	.byte	'?'
	.ascii	"_temp_2274\0"
	.align
_Label_2353:
	.byte	'?'
	.ascii	"_temp_2273\0"
	.align
_Label_2354:
	.byte	'?'
	.ascii	"_temp_2272\0"
	.align
_Label_2355:
	.byte	'?'
	.ascii	"_temp_2271\0"
	.align
_Label_2356:
	.byte	'?'
	.ascii	"_temp_2270\0"
	.align
_Label_2357:
	.byte	'?'
	.ascii	"_temp_2269\0"
	.align
_Label_2358:
	.byte	'?'
	.ascii	"_temp_2268\0"
	.align
_Label_2359:
	.byte	'?'
	.ascii	"_temp_2267\0"
	.align
_Label_2360:
	.byte	'?'
	.ascii	"_temp_2266\0"
	.align
_Label_2361:
	.byte	'?'
	.ascii	"_temp_2265\0"
	.align
_Label_2362:
	.byte	'?'
	.ascii	"_temp_2264\0"
	.align
_Label_2363:
	.byte	'?'
	.ascii	"_temp_2263\0"
	.align
_Label_2364:
	.byte	'?'
	.ascii	"_temp_2256\0"
	.align
_Label_2365:
	.byte	'?'
	.ascii	"_temp_2255\0"
	.align
_Label_2366:
	.byte	'I'
	.ascii	"i\0"
	.align
_Label_2367:
	.byte	'I'
	.ascii	"myPid\0"
	.align
_Label_2368:
	.byte	'I'
	.ascii	"parentPid\0"
	.align
_Label_2369:
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
_Label_4157:
	push	r0
	sub	r1,1,r1
	bne	_Label_4157
	mov	1026,r13		! source line 1026
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! SEND STATEMENT...
	mov	1031,r13		! source line 1031
	mov	"\0\0SE",r10
!   _temp_2370 = &processManagerLock
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
	mov	1033,r13		! source line 1033
	mov	"\0\0AS",r10
!   exitStatus = -1		(4 bytes)
	mov	-1,r1
	store	r1,[r14+-60]
! WHILE STATEMENT...
	mov	1037,r13		! source line 1037
	mov	"\0\0WH",r10
_Label_2371:
!   if intIsZero (proc) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2375 = proc + 20
	load	[r14+12],r1
	add	r1,20,r1
	store	r1,[r14+-48]
!   Data Move: _temp_2374 = *_temp_2375  (sizeInBytes=4)
	load	[r14+-48],r1
	load	[r1],r1
	store	r1,[r14+-52]
!   if _temp_2374 == 2 then goto _Label_2373		(int)
	load	[r14+-52],r1
	mov	2,r2
	cmp	r1,r2
	be	_Label_2373
!	jmp	_Label_2372
_Label_2372:
	mov	1037,r13		! source line 1037
	mov	"\0\0WB",r10
! SEND STATEMENT...
	mov	1039,r13		! source line 1039
	mov	"\0\0SE",r10
!   _temp_2376 = &processManagerLock
	load	[r14+8],r1
	add	r1,1692,r1
	store	r1,[r14+-44]
!   _temp_2377 = &aProcessDied
	load	[r14+8],r1
	add	r1,1740,r1
	store	r1,[r14+-40]
!   Prepare Argument: offset=12  value=_temp_2376  sizeInBytes=4
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
	jmp	_Label_2371
_Label_2373:
! ASSIGNMENT STATEMENT...
	mov	1045,r13		! source line 1045
	mov	"\0\0AS",r10
!   if intIsZero (proc) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2378 = proc + 28
	load	[r14+12],r1
	add	r1,28,r1
	store	r1,[r14+-36]
!   Data Move: exitStatus = *_temp_2378  (sizeInBytes=4)
	load	[r14+-36],r1
	load	[r1],r1
	store	r1,[r14+-60]
! ASSIGNMENT STATEMENT...
	mov	1048,r13		! source line 1048
	mov	"\0\0AS",r10
!   if intIsZero (proc) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2379 = proc + 20
	load	[r14+12],r1
	add	r1,20,r1
	store	r1,[r14+-32]
!   Data Move: *_temp_2379 = 3  (sizeInBytes=4)
	mov	3,r1
	load	[r14+-32],r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	1049,r13		! source line 1049
	mov	"\0\0AS",r10
!   if intIsZero (proc) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2380 = proc + 12
	load	[r14+12],r1
	add	r1,12,r1
	store	r1,[r14+-28]
!   Data Move: *_temp_2380 = -1  (sizeInBytes=4)
	mov	-1,r1
	load	[r14+-28],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	1050,r13		! source line 1050
	mov	"\0\0SE",r10
!   _temp_2381 = &freeList
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
	mov	1051,r13		! source line 1051
	mov	"\0\0SE",r10
!   _temp_2382 = &processManagerLock
	load	[r14+8],r1
	add	r1,1692,r1
	store	r1,[r14+-20]
!   _temp_2383 = &aProcessBecameFree
	load	[r14+8],r1
	add	r1,1712,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=12  value=_temp_2382  sizeInBytes=4
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
	mov	1053,r13		! source line 1053
	mov	"\0\0SE",r10
!   _temp_2384 = &processManagerLock
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
	mov	1055,r13		! source line 1055
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
	.word	_Label_2385
	.word	8		! total size of parameters
	.word	60		! frame size = 60
	.word	_Label_2386
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2387
	.word	12
	.word	4
	.word	_Label_2388
	.word	-12
	.word	4
	.word	_Label_2389
	.word	-16
	.word	4
	.word	_Label_2390
	.word	-20
	.word	4
	.word	_Label_2391
	.word	-24
	.word	4
	.word	_Label_2392
	.word	-28
	.word	4
	.word	_Label_2393
	.word	-32
	.word	4
	.word	_Label_2394
	.word	-36
	.word	4
	.word	_Label_2395
	.word	-40
	.word	4
	.word	_Label_2396
	.word	-44
	.word	4
	.word	_Label_2397
	.word	-48
	.word	4
	.word	_Label_2398
	.word	-52
	.word	4
	.word	_Label_2399
	.word	-56
	.word	4
	.word	_Label_2400
	.word	-60
	.word	4
	.word	0
_Label_2385:
	.ascii	"ProcessManager"
	.ascii	"::"
	.ascii	"WaitForZombie\0"
	.align
_Label_2386:
	.ascii	"Pself\0"
	.align
_Label_2387:
	.byte	'P'
	.ascii	"proc\0"
	.align
_Label_2388:
	.byte	'?'
	.ascii	"_temp_2384\0"
	.align
_Label_2389:
	.byte	'?'
	.ascii	"_temp_2383\0"
	.align
_Label_2390:
	.byte	'?'
	.ascii	"_temp_2382\0"
	.align
_Label_2391:
	.byte	'?'
	.ascii	"_temp_2381\0"
	.align
_Label_2392:
	.byte	'?'
	.ascii	"_temp_2380\0"
	.align
_Label_2393:
	.byte	'?'
	.ascii	"_temp_2379\0"
	.align
_Label_2394:
	.byte	'?'
	.ascii	"_temp_2378\0"
	.align
_Label_2395:
	.byte	'?'
	.ascii	"_temp_2377\0"
	.align
_Label_2396:
	.byte	'?'
	.ascii	"_temp_2376\0"
	.align
_Label_2397:
	.byte	'?'
	.ascii	"_temp_2375\0"
	.align
_Label_2398:
	.byte	'?'
	.ascii	"_temp_2374\0"
	.align
_Label_2399:
	.byte	'?'
	.ascii	"_temp_2370\0"
	.align
_Label_2400:
	.byte	'I'
	.ascii	"exitStatus\0"
	.align
! 
! ===============  CLASS FrameManager  ===============
! 
! Dispatch Table:
! 
_P_Kernel_FrameManager:
	.word	_Label_2401
	jmp	_Method_P_Kernel_FrameManager_1	! 4:	Init
	jmp	_Method_P_Kernel_FrameManager_2	! 8:	Print
	jmp	_Method_P_Kernel_FrameManager_3	! 12:	GetAFrame
	jmp	_Method_P_Kernel_FrameManager_4	! 16:	GetNewFrames
	jmp	_Method_P_Kernel_FrameManager_5	! 20:	ReturnAllFrames
	.word	0
! 
! Class descriptor:
! 
_Label_2401:
	.word	1129070931		! Magic number 0x434c4153 == 'CLAS'
	.word	_Label_2402
	.word	_sourceFileName
	.word	261		! line number
	.word	56		! size of instances, in bytes
	.word	_P_Kernel_FrameManager
	.word	_P_System_Object
	.word	0
_Label_2402:
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
_Label_4158:
	push	r0
	sub	r1,1,r1
	bne	_Label_4158
	mov	1219,r13		! source line 1219
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   _temp_2403 = _StringConst_119
	set	_StringConst_119,r1
	store	r1,[r14+-52]
!   Prepare Argument: offset=8  value=_temp_2403  sizeInBytes=4
	load	[r14+-52],r1
	store	r1,[r15+0]
!   Call the function
	mov	1225,r13		! source line 1225
	mov	"\0\0CE",r10
	call	print
! ASSIGNMENT STATEMENT...
	mov	1226,r13		! source line 1226
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
	mov	1227,r13		! source line 1227
	mov	"\0\0SE",r10
!   _temp_2405 = &framesInUse
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
	mov	1228,r13		! source line 1228
	mov	"\0\0AS",r10
!   numberFreeFrames = 512		(4 bytes)
	mov	512,r1
	load	[r14+8],r2
	store	r1,[r2+16]
! ASSIGNMENT STATEMENT...
	mov	1229,r13		! source line 1229
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
	mov	1230,r13		! source line 1230
	mov	"\0\0SE",r10
!   _temp_2407 = &frameManagerLock
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
	mov	1231,r13		! source line 1231
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
	mov	1232,r13		! source line 1232
	mov	"\0\0SE",r10
!   _temp_2409 = &newFramesAvailable
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
	mov	1238,r13		! source line 1238
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_2414 = 1048576		(4 bytes)
	set	1048576,r1
	store	r1,[r14+-24]
!   Calculate and save the FOR-LOOP ending value
!   _temp_2415 = 1048876		(4 bytes)
	set	1048876,r1
	store	r1,[r14+-20]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_2414  (sizeInBytes=4)
	load	[r14+-24],r1
	store	r1,[r14+-56]
_Label_2410:
!   Perform the FOR-LOOP termination test
!   if i > _temp_2415 then goto _Label_2413		
	load	[r14+-56],r1
	load	[r14+-20],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_2413
_Label_2411:
	mov	1238,r13		! source line 1238
	mov	"\0\0FB",r10
! IF STATEMENT...
	mov	1241,r13		! source line 1241
	mov	"\0\0IF",r10
!   if intIsZero (i) then goto _runtimeErrorNullPointer
	load	[r14+-56],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Data Move: _temp_2418 = *i  (sizeInBytes=4)
	load	[r14+-56],r1
	load	[r1],r1
	store	r1,[r14+-16]
!   if intIsZero (_temp_2418) then goto _Label_2417
	load	[r14+-16],r1
	cmp	r1,r0
	be	_Label_2417
!	jmp	_Label_2416
_Label_2416:
! THEN...
	mov	1242,r13		! source line 1242
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_2419 = _StringConst_120
	set	_StringConst_120,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_2419  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	1242,r13		! source line 1242
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END IF...
_Label_2417:
!   Increment the FOR-LOOP index variable and jump back
_Label_2412:
!   i = i + 4
	load	[r14+-56],r1
	add	r1,4,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-56]
	jmp	_Label_2410
! END FOR
_Label_2413:
! RETURN STATEMENT...
	mov	1238,r13		! source line 1238
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
	.word	_Label_2420
	.word	4		! total size of parameters
	.word	56		! frame size = 56
	.word	_Label_2421
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2422
	.word	-12
	.word	4
	.word	_Label_2423
	.word	-16
	.word	4
	.word	_Label_2424
	.word	-20
	.word	4
	.word	_Label_2425
	.word	-24
	.word	4
	.word	_Label_2426
	.word	-28
	.word	4
	.word	_Label_2427
	.word	-32
	.word	4
	.word	_Label_2428
	.word	-36
	.word	4
	.word	_Label_2429
	.word	-40
	.word	4
	.word	_Label_2430
	.word	-44
	.word	4
	.word	_Label_2431
	.word	-48
	.word	4
	.word	_Label_2432
	.word	-52
	.word	4
	.word	_Label_2433
	.word	-56
	.word	4
	.word	0
_Label_2420:
	.ascii	"FrameManager"
	.ascii	"::"
	.ascii	"Init\0"
	.align
_Label_2421:
	.ascii	"Pself\0"
	.align
_Label_2422:
	.byte	'?'
	.ascii	"_temp_2419\0"
	.align
_Label_2423:
	.byte	'?'
	.ascii	"_temp_2418\0"
	.align
_Label_2424:
	.byte	'?'
	.ascii	"_temp_2415\0"
	.align
_Label_2425:
	.byte	'?'
	.ascii	"_temp_2414\0"
	.align
_Label_2426:
	.byte	'?'
	.ascii	"_temp_2409\0"
	.align
_Label_2427:
	.byte	'?'
	.ascii	"_temp_2408\0"
	.align
_Label_2428:
	.byte	'?'
	.ascii	"_temp_2407\0"
	.align
_Label_2429:
	.byte	'?'
	.ascii	"_temp_2406\0"
	.align
_Label_2430:
	.byte	'?'
	.ascii	"_temp_2405\0"
	.align
_Label_2431:
	.byte	'?'
	.ascii	"_temp_2404\0"
	.align
_Label_2432:
	.byte	'?'
	.ascii	"_temp_2403\0"
	.align
_Label_2433:
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
_Label_4159:
	push	r0
	sub	r1,1,r1
	bne	_Label_4159
	mov	1249,r13		! source line 1249
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! SEND STATEMENT...
	mov	1253,r13		! source line 1253
	mov	"\0\0SE",r10
!   _temp_2434 = &frameManagerLock
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
!   _temp_2435 = _StringConst_121
	set	_StringConst_121,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=8  value=_temp_2435  sizeInBytes=4
	load	[r14+-28],r1
	store	r1,[r15+0]
!   Call the function
	mov	1254,r13		! source line 1254
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_2436 = _StringConst_122
	set	_StringConst_122,r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=8  value=_temp_2436  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=numberFreeFrames  sizeInBytes=4
	load	[r14+8],r1
	load	[r1+16],r1
	store	r1,[r15+4]
!   Call the function
	mov	1255,r13		! source line 1255
	mov	"\0\0CA",r10
	call	_P_System_printIntVar
! CALL STATEMENT...
!   _temp_2437 = _StringConst_123
	set	_StringConst_123,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_2437  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   Call the function
	mov	1256,r13		! source line 1256
	mov	"\0\0CE",r10
	call	print
! SEND STATEMENT...
	mov	1257,r13		! source line 1257
	mov	"\0\0SE",r10
!   _temp_2438 = &framesInUse
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
	mov	1258,r13		! source line 1258
	mov	"\0\0SE",r10
!   _temp_2439 = &frameManagerLock
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
	mov	1258,r13		! source line 1258
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
	.word	_Label_2440
	.word	4		! total size of parameters
	.word	32		! frame size = 32
	.word	_Label_2441
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2442
	.word	-12
	.word	4
	.word	_Label_2443
	.word	-16
	.word	4
	.word	_Label_2444
	.word	-20
	.word	4
	.word	_Label_2445
	.word	-24
	.word	4
	.word	_Label_2446
	.word	-28
	.word	4
	.word	_Label_2447
	.word	-32
	.word	4
	.word	0
_Label_2440:
	.ascii	"FrameManager"
	.ascii	"::"
	.ascii	"Print\0"
	.align
_Label_2441:
	.ascii	"Pself\0"
	.align
_Label_2442:
	.byte	'?'
	.ascii	"_temp_2439\0"
	.align
_Label_2443:
	.byte	'?'
	.ascii	"_temp_2438\0"
	.align
_Label_2444:
	.byte	'?'
	.ascii	"_temp_2437\0"
	.align
_Label_2445:
	.byte	'?'
	.ascii	"_temp_2436\0"
	.align
_Label_2446:
	.byte	'?'
	.ascii	"_temp_2435\0"
	.align
_Label_2447:
	.byte	'?'
	.ascii	"_temp_2434\0"
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
_Label_4160:
	push	r0
	sub	r1,1,r1
	bne	_Label_4160
	mov	1263,r13		! source line 1263
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! SEND STATEMENT...
	mov	1271,r13		! source line 1271
	mov	"\0\0SE",r10
!   _temp_2448 = &frameManagerLock
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
	mov	1274,r13		! source line 1274
	mov	"\0\0WH",r10
_Label_2449:
!   if numberFreeFrames >= 1 then goto _Label_2451		(int)
	load	[r14+8],r1
	load	[r1+16],r1
	mov	1,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_2451
!	jmp	_Label_2450
_Label_2450:
	mov	1274,r13		! source line 1274
	mov	"\0\0WB",r10
! SEND STATEMENT...
	mov	1275,r13		! source line 1275
	mov	"\0\0SE",r10
!   _temp_2452 = &frameManagerLock
	load	[r14+8],r1
	add	r1,20,r1
	store	r1,[r14+-28]
!   _temp_2453 = &newFramesAvailable
	load	[r14+8],r1
	add	r1,40,r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=12  value=_temp_2452  sizeInBytes=4
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
	jmp	_Label_2449
_Label_2451:
! ASSIGNMENT STATEMENT...
	mov	1279,r13		! source line 1279
	mov	"\0\0AS",r10
	mov	1279,r13		! source line 1279
	mov	"\0\0SE",r10
!   _temp_2454 = &framesInUse
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
	mov	1280,r13		! source line 1280
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
	mov	1283,r13		! source line 1283
	mov	"\0\0SE",r10
!   _temp_2455 = &frameManagerLock
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
	mov	1286,r13		! source line 1286
	mov	"\0\0AS",r10
!   _temp_2456 = f * 8192		(int)
	load	[r14+-36],r1
	mov	8192,r2
	mul	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-12]
!   frameAddr = 1048576 + _temp_2456		(int)
	set	1048576,r1
	load	[r14+-12],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-40]
! RETURN STATEMENT...
	mov	1288,r13		! source line 1288
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
	.word	_Label_2457
	.word	4		! total size of parameters
	.word	40		! frame size = 40
	.word	_Label_2458
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2459
	.word	-12
	.word	4
	.word	_Label_2460
	.word	-16
	.word	4
	.word	_Label_2461
	.word	-20
	.word	4
	.word	_Label_2462
	.word	-24
	.word	4
	.word	_Label_2463
	.word	-28
	.word	4
	.word	_Label_2464
	.word	-32
	.word	4
	.word	_Label_2465
	.word	-36
	.word	4
	.word	_Label_2466
	.word	-40
	.word	4
	.word	0
_Label_2457:
	.ascii	"FrameManager"
	.ascii	"::"
	.ascii	"GetAFrame\0"
	.align
_Label_2458:
	.ascii	"Pself\0"
	.align
_Label_2459:
	.byte	'?'
	.ascii	"_temp_2456\0"
	.align
_Label_2460:
	.byte	'?'
	.ascii	"_temp_2455\0"
	.align
_Label_2461:
	.byte	'?'
	.ascii	"_temp_2454\0"
	.align
_Label_2462:
	.byte	'?'
	.ascii	"_temp_2453\0"
	.align
_Label_2463:
	.byte	'?'
	.ascii	"_temp_2452\0"
	.align
_Label_2464:
	.byte	'?'
	.ascii	"_temp_2448\0"
	.align
_Label_2465:
	.byte	'I'
	.ascii	"f\0"
	.align
_Label_2466:
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
_Label_4161:
	push	r0
	sub	r1,1,r1
	bne	_Label_4161
	mov	1293,r13		! source line 1293
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! SEND STATEMENT...
	mov	1298,r13		! source line 1298
	mov	"\0\0SE",r10
!   _temp_2467 = &frameManagerLock
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
	mov	1300,r13		! source line 1300
	mov	"\0\0WH",r10
_Label_2468:
!   if numberFreeFrames >= numFramesNeeded then goto _Label_2470		(int)
	load	[r14+8],r1
	load	[r1+16],r1
	load	[r14+16],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_2470
!	jmp	_Label_2469
_Label_2469:
	mov	1300,r13		! source line 1300
	mov	"\0\0WB",r10
! SEND STATEMENT...
	mov	1301,r13		! source line 1301
	mov	"\0\0SE",r10
!   _temp_2471 = &frameManagerLock
	load	[r14+8],r1
	add	r1,20,r1
	store	r1,[r14+-32]
!   _temp_2472 = &newFramesAvailable
	load	[r14+8],r1
	add	r1,40,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=12  value=_temp_2471  sizeInBytes=4
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
	jmp	_Label_2468
_Label_2470:
! ASSIGNMENT STATEMENT...
	mov	1304,r13		! source line 1304
	mov	"\0\0AS",r10
!   i = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-40]
! WHILE STATEMENT...
	mov	1304,r13		! source line 1304
	mov	"\0\0WH",r10
_Label_2473:
!   if i >= numFramesNeeded then goto _Label_2475		(int)
	load	[r14+-40],r1
	load	[r14+16],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_2475
!	jmp	_Label_2474
_Label_2474:
	mov	1304,r13		! source line 1304
	mov	"\0\0WB",r10
! ASSIGNMENT STATEMENT...
	mov	1305,r13		! source line 1305
	mov	"\0\0AS",r10
	mov	1305,r13		! source line 1305
	mov	"\0\0SE",r10
!   _temp_2476 = &framesInUse
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
	mov	1306,r13		! source line 1306
	mov	"\0\0AS",r10
!   _temp_2477 = f * 8192		(int)
	load	[r14+-44],r1
	mov	8192,r2
	mul	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-20]
!   frameAddr = 1048576 + _temp_2477		(int)
	set	1048576,r1
	load	[r14+-20],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-48]
! SEND STATEMENT...
	mov	1307,r13		! source line 1307
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
	mov	1308,r13		! source line 1308
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
	mov	1304,r13		! source line 1304
	mov	"\0\0AS",r10
!   i = i + 1		(int)
	load	[r14+-40],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-40]
! END WHILE...
	jmp	_Label_2473
_Label_2475:
! ASSIGNMENT STATEMENT...
	mov	1310,r13		! source line 1310
	mov	"\0\0AS",r10
!   if intIsZero (aPageTable) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2478 = aPageTable + 4
	load	[r14+12],r1
	add	r1,4,r1
	store	r1,[r14+-16]
!   Data Move: *_temp_2478 = numFramesNeeded  (sizeInBytes=4)
	load	[r14+16],r1
	load	[r14+-16],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	1311,r13		! source line 1311
	mov	"\0\0SE",r10
!   _temp_2479 = &frameManagerLock
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
	mov	1311,r13		! source line 1311
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
	.word	_Label_2480
	.word	12		! total size of parameters
	.word	52		! frame size = 52
	.word	_Label_2481
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2482
	.word	12
	.word	4
	.word	_Label_2483
	.word	16
	.word	4
	.word	_Label_2484
	.word	-12
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
	.word	-32
	.word	4
	.word	_Label_2490
	.word	-36
	.word	4
	.word	_Label_2491
	.word	-40
	.word	4
	.word	_Label_2492
	.word	-44
	.word	4
	.word	_Label_2493
	.word	-48
	.word	4
	.word	0
_Label_2480:
	.ascii	"FrameManager"
	.ascii	"::"
	.ascii	"GetNewFrames\0"
	.align
_Label_2481:
	.ascii	"Pself\0"
	.align
_Label_2482:
	.byte	'P'
	.ascii	"aPageTable\0"
	.align
_Label_2483:
	.byte	'I'
	.ascii	"numFramesNeeded\0"
	.align
_Label_2484:
	.byte	'?'
	.ascii	"_temp_2479\0"
	.align
_Label_2485:
	.byte	'?'
	.ascii	"_temp_2478\0"
	.align
_Label_2486:
	.byte	'?'
	.ascii	"_temp_2477\0"
	.align
_Label_2487:
	.byte	'?'
	.ascii	"_temp_2476\0"
	.align
_Label_2488:
	.byte	'?'
	.ascii	"_temp_2472\0"
	.align
_Label_2489:
	.byte	'?'
	.ascii	"_temp_2471\0"
	.align
_Label_2490:
	.byte	'?'
	.ascii	"_temp_2467\0"
	.align
_Label_2491:
	.byte	'I'
	.ascii	"i\0"
	.align
_Label_2492:
	.byte	'I'
	.ascii	"f\0"
	.align
_Label_2493:
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
_Label_4162:
	push	r0
	sub	r1,1,r1
	bne	_Label_4162
	mov	1316,r13		! source line 1316
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! SEND STATEMENT...
	mov	1322,r13		! source line 1322
	mov	"\0\0SE",r10
!   _temp_2494 = &frameManagerLock
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
	mov	1323,r13		! source line 1323
	mov	"\0\0AS",r10
!   if intIsZero (aPageTable) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2495 = aPageTable + 4
	load	[r14+12],r1
	add	r1,4,r1
	store	r1,[r14+-32]
!   Data Move: pageToBeReturned = *_temp_2495  (sizeInBytes=4)
	load	[r14+-32],r1
	load	[r1],r1
	store	r1,[r14+-40]
! ASSIGNMENT STATEMENT...
	mov	1324,r13		! source line 1324
	mov	"\0\0AS",r10
!   i = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-44]
! WHILE STATEMENT...
	mov	1324,r13		! source line 1324
	mov	"\0\0WH",r10
_Label_2496:
!   if i >= pageToBeReturned then goto _Label_2498		(int)
	load	[r14+-44],r1
	load	[r14+-40],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_2498
!	jmp	_Label_2497
_Label_2497:
	mov	1324,r13		! source line 1324
	mov	"\0\0WB",r10
! ASSIGNMENT STATEMENT...
	mov	1325,r13		! source line 1325
	mov	"\0\0AS",r10
	mov	1325,r13		! source line 1325
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
	mov	1326,r13		! source line 1326
	mov	"\0\0AS",r10
!   _temp_2499 = frameAddr - 1048576		(int)
	load	[r14+-48],r1
	set	1048576,r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-28]
!   bitNumber = _temp_2499 div 8192		(int)
	load	[r14+-28],r1
	mov	8192,r2
	cmp	r2,0
	be	_runtimeErrorZeroDivide
	div	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-52]
! SEND STATEMENT...
	mov	1327,r13		! source line 1327
	mov	"\0\0SE",r10
!   _temp_2500 = &framesInUse
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
	mov	1328,r13		! source line 1328
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
	mov	1329,r13		! source line 1329
	mov	"\0\0SE",r10
!   _temp_2501 = &frameManagerLock
	load	[r14+8],r1
	add	r1,20,r1
	store	r1,[r14+-20]
!   _temp_2502 = &newFramesAvailable
	load	[r14+8],r1
	add	r1,40,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=12  value=_temp_2501  sizeInBytes=4
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
	mov	1324,r13		! source line 1324
	mov	"\0\0AS",r10
!   i = i + 1		(int)
	load	[r14+-44],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-44]
! END WHILE...
	jmp	_Label_2496
_Label_2498:
! SEND STATEMENT...
	mov	1331,r13		! source line 1331
	mov	"\0\0SE",r10
!   _temp_2503 = &frameManagerLock
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
	mov	1331,r13		! source line 1331
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
	.word	_Label_2504
	.word	8		! total size of parameters
	.word	52		! frame size = 52
	.word	_Label_2505
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2506
	.word	12
	.word	4
	.word	_Label_2507
	.word	-12
	.word	4
	.word	_Label_2508
	.word	-16
	.word	4
	.word	_Label_2509
	.word	-20
	.word	4
	.word	_Label_2510
	.word	-24
	.word	4
	.word	_Label_2511
	.word	-28
	.word	4
	.word	_Label_2512
	.word	-32
	.word	4
	.word	_Label_2513
	.word	-36
	.word	4
	.word	_Label_2514
	.word	-40
	.word	4
	.word	_Label_2515
	.word	-44
	.word	4
	.word	_Label_2516
	.word	-48
	.word	4
	.word	_Label_2517
	.word	-52
	.word	4
	.word	0
_Label_2504:
	.ascii	"FrameManager"
	.ascii	"::"
	.ascii	"ReturnAllFrames\0"
	.align
_Label_2505:
	.ascii	"Pself\0"
	.align
_Label_2506:
	.byte	'P'
	.ascii	"aPageTable\0"
	.align
_Label_2507:
	.byte	'?'
	.ascii	"_temp_2503\0"
	.align
_Label_2508:
	.byte	'?'
	.ascii	"_temp_2502\0"
	.align
_Label_2509:
	.byte	'?'
	.ascii	"_temp_2501\0"
	.align
_Label_2510:
	.byte	'?'
	.ascii	"_temp_2500\0"
	.align
_Label_2511:
	.byte	'?'
	.ascii	"_temp_2499\0"
	.align
_Label_2512:
	.byte	'?'
	.ascii	"_temp_2495\0"
	.align
_Label_2513:
	.byte	'?'
	.ascii	"_temp_2494\0"
	.align
_Label_2514:
	.byte	'I'
	.ascii	"pageToBeReturned\0"
	.align
_Label_2515:
	.byte	'I'
	.ascii	"i\0"
	.align
_Label_2516:
	.byte	'I'
	.ascii	"frameAddr\0"
	.align
_Label_2517:
	.byte	'I'
	.ascii	"bitNumber\0"
	.align
! 
! ===============  CLASS AddrSpace  ===============
! 
! Dispatch Table:
! 
_P_Kernel_AddrSpace:
	.word	_Label_2518
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
_Label_2518:
	.word	1129070931		! Magic number 0x434c4153 == 'CLAS'
	.word	_Label_2519
	.word	_sourceFileName
	.word	280		! line number
	.word	92		! size of instances, in bytes
	.word	_P_Kernel_AddrSpace
	.word	_P_System_Object
	.word	0
_Label_2519:
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
_Label_4163:
	push	r0
	sub	r1,1,r1
	bne	_Label_4163
	mov	1342,r13		! source line 1342
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1346,r13		! source line 1346
	mov	"\0\0AS",r10
!   numberOfPages = 0		(4 bytes)
	mov	0,r1
	load	[r14+8],r2
	store	r1,[r2+4]
! ASSIGNMENT STATEMENT...
	mov	1347,r13		! source line 1347
	mov	"\0\0AS",r10
!   _temp_2520 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-108]
!   NEW ARRAY Constructor...
!   _temp_2522 = &_temp_2521
	add	r14,-104,r1
	store	r1,[r14+-20]
!   _temp_2522 = _temp_2522 + 4
	load	[r14+-20],r1
	add	r1,4,r1
	store	r1,[r14+-20]
!   Next value...
	mov	20,r1
	store	r1,[r14+-16]
_Label_2524:
!   Data Move: *_temp_2522 = 3  (sizeInBytes=4)
	mov	3,r1
	load	[r14+-20],r2
	store	r1,[r2]
!   _temp_2522 = _temp_2522 + 4
	load	[r14+-20],r1
	add	r1,4,r1
	store	r1,[r14+-20]
!   _temp_2523 = _temp_2523 + -1
	load	[r14+-16],r1
	add	r1,-1,r1
	store	r1,[r14+-16]
!   if intNotZero (_temp_2523) then goto _Label_2524
	load	[r14+-16],r1
	cmp	r1,r0
	bne	_Label_2524
!   Initialize the array size...
	mov	20,r1
	store	r1,[r14+-104]
!   _temp_2525 = &_temp_2521
	add	r14,-104,r1
	store	r1,[r14+-12]
!   make sure array has size 20
	load	[r14+-108],r1
	load	[r1],r1
	set	20, r2
	cmp	r1,0
	be	_Label_4164
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bne	_runtimeErrorWrongArraySize
_Label_4164:
!   make sure array has size 20
	load	[r14+-12],r1
	load	[r1],r1
	set	20, r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bne	_runtimeErrorWrongArraySize
!   Data Move: *_temp_2520 = *_temp_2525  (sizeInBytes=84)
	load	[r14+-12],r5
	load	[r14+-108],r4
	mov	21,r3
_Label_4165:
	load	[r5],r1
	add	r5,4,r5
	store	r1,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_4165
! RETURN STATEMENT...
	mov	1347,r13		! source line 1347
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
	.word	_Label_2526
	.word	4		! total size of parameters
	.word	100		! frame size = 100
	.word	_Label_2527
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2528
	.word	-12
	.word	4
	.word	_Label_2529
	.word	-16
	.word	4
	.word	_Label_2530
	.word	-20
	.word	4
	.word	_Label_2531
	.word	-104
	.word	84
	.word	_Label_2532
	.word	-108
	.word	4
	.word	0
_Label_2526:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"Init\0"
	.align
_Label_2527:
	.ascii	"Pself\0"
	.align
_Label_2528:
	.byte	'?'
	.ascii	"_temp_2525\0"
	.align
_Label_2529:
	.byte	'?'
	.ascii	"_temp_2523\0"
	.align
_Label_2530:
	.byte	'?'
	.ascii	"_temp_2522\0"
	.align
_Label_2531:
	.byte	'?'
	.ascii	"_temp_2521\0"
	.align
_Label_2532:
	.byte	'?'
	.ascii	"_temp_2520\0"
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
_Label_4166:
	push	r0
	sub	r1,1,r1
	bne	_Label_4166
	mov	1352,r13		! source line 1352
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   _temp_2533 = _StringConst_124
	set	_StringConst_124,r1
	store	r1,[r14+-164]
!   Prepare Argument: offset=8  value=_temp_2533  sizeInBytes=4
	load	[r14+-164],r1
	store	r1,[r15+0]
!   Call the function
	mov	1357,r13		! source line 1357
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_2534 = _StringConst_125
	set	_StringConst_125,r1
	store	r1,[r14+-160]
!   Prepare Argument: offset=8  value=_temp_2534  sizeInBytes=4
	load	[r14+-160],r1
	store	r1,[r15+0]
!   Call the function
	mov	1358,r13		! source line 1358
	mov	"\0\0CE",r10
	call	print
! FOR STATEMENT...
	mov	1359,r13		! source line 1359
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_2539 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-156]
!   Calculate and save the FOR-LOOP ending value
!   _temp_2540 = numberOfPages - 1		(int)
	load	[r14+8],r1
	load	[r1+4],r1
	mov	1,r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-152]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_2539  (sizeInBytes=4)
	load	[r14+-156],r1
	store	r1,[r14+-168]
_Label_2535:
!   Perform the FOR-LOOP termination test
!   if i > _temp_2540 then goto _Label_2538		
	load	[r14+-168],r1
	load	[r14+-152],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_2538
_Label_2536:
	mov	1359,r13		! source line 1359
	mov	"\0\0FB",r10
! CALL STATEMENT...
!   _temp_2541 = _StringConst_126
	set	_StringConst_126,r1
	store	r1,[r14+-148]
!   Prepare Argument: offset=8  value=_temp_2541  sizeInBytes=4
	load	[r14+-148],r1
	store	r1,[r15+0]
!   Call the function
	mov	1360,r13		! source line 1360
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_2543 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-140]
!   Move address of _temp_2543 [i ] into _temp_2544
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
!   _temp_2542 = _temp_2544		(4 bytes)
	load	[r14+-136],r1
	store	r1,[r14+-144]
!   Prepare Argument: offset=8  value=_temp_2542  sizeInBytes=4
	load	[r14+-144],r1
	store	r1,[r15+0]
!   Call the function
	mov	1361,r13		! source line 1361
	mov	"\0\0CE",r10
	call	printHex
! CALL STATEMENT...
!   _temp_2545 = _StringConst_127
	set	_StringConst_127,r1
	store	r1,[r14+-132]
!   Prepare Argument: offset=8  value=_temp_2545  sizeInBytes=4
	load	[r14+-132],r1
	store	r1,[r15+0]
!   Call the function
	mov	1362,r13		! source line 1362
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_2547 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-124]
!   Move address of _temp_2547 [i ] into _temp_2548
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
!   Data Move: _temp_2546 = *_temp_2548  (sizeInBytes=4)
	load	[r14+-120],r1
	load	[r1],r1
	store	r1,[r14+-128]
!   Prepare Argument: offset=8  value=_temp_2546  sizeInBytes=4
	load	[r14+-128],r1
	store	r1,[r15+0]
!   Call the function
	mov	1363,r13		! source line 1363
	mov	"\0\0CE",r10
	call	printHex
! CALL STATEMENT...
!   _temp_2549 = _StringConst_128
	set	_StringConst_128,r1
	store	r1,[r14+-116]
!   Prepare Argument: offset=8  value=_temp_2549  sizeInBytes=4
	load	[r14+-116],r1
	store	r1,[r15+0]
!   Call the function
	mov	1364,r13		! source line 1364
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_2550 = i * 8192		(int)
	load	[r14+-168],r1
	mov	8192,r2
	mul	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-112]
!   Prepare Argument: offset=8  value=_temp_2550  sizeInBytes=4
	load	[r14+-112],r1
	store	r1,[r15+0]
!   Call the function
	mov	1365,r13		! source line 1365
	mov	"\0\0CE",r10
	call	printHex
! CALL STATEMENT...
!   _temp_2551 = _StringConst_129
	set	_StringConst_129,r1
	store	r1,[r14+-108]
!   Prepare Argument: offset=8  value=_temp_2551  sizeInBytes=4
	load	[r14+-108],r1
	store	r1,[r15+0]
!   Call the function
	mov	1366,r13		! source line 1366
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
	mov	1367,r13		! source line 1367
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-100]
!   if intIsZero (_temp_2553) then goto _runtimeErrorNullPointer
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
!   Retrieve Result: targetName=_temp_2552  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-104]
!   Prepare Argument: offset=8  value=_temp_2552  sizeInBytes=4
	load	[r14+-104],r1
	store	r1,[r15+0]
!   Call the function
	mov	1367,r13		! source line 1367
	mov	"\0\0CE",r10
	call	printHex
! CALL STATEMENT...
!   _temp_2554 = _StringConst_130
	set	_StringConst_130,r1
	store	r1,[r14+-96]
!   Prepare Argument: offset=8  value=_temp_2554  sizeInBytes=4
	load	[r14+-96],r1
	store	r1,[r15+0]
!   Call the function
	mov	1368,r13		! source line 1368
	mov	"\0\0CE",r10
	call	print
! IF STATEMENT...
	mov	1369,r13		! source line 1369
	mov	"\0\0IF",r10
	mov	1369,r13		! source line 1369
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-88]
!   if intIsZero (_temp_2558) then goto _runtimeErrorNullPointer
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
!   Retrieve Result: targetName=_temp_2557  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-92]
!   if intIsZero (_temp_2557) then goto _Label_2556
	load	[r14+-92],r1
	cmp	r1,r0
	be	_Label_2556
!	jmp	_Label_2555
_Label_2555:
! THEN...
	mov	1370,r13		! source line 1370
	mov	"\0\0TN",r10
! CALL STATEMENT...
	mov	1370,r13		! source line 1370
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-80]
!   if intIsZero (_temp_2560) then goto _runtimeErrorNullPointer
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
!   Retrieve Result: targetName=_temp_2559  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-84]
!   Prepare Argument: offset=8  value=_temp_2559  sizeInBytes=4
	load	[r14+-84],r1
	store	r1,[r15+0]
!   Call the function
	mov	1370,r13		! source line 1370
	mov	"\0\0CE",r10
	call	printHex
	jmp	_Label_2561
_Label_2556:
! ELSE...
	mov	1372,r13		! source line 1372
	mov	"\0\0EL",r10
! CALL STATEMENT...
!   _temp_2562 = _StringConst_131
	set	_StringConst_131,r1
	store	r1,[r14+-76]
!   Prepare Argument: offset=8  value=_temp_2562  sizeInBytes=4
	load	[r14+-76],r1
	store	r1,[r15+0]
!   Call the function
	mov	1372,r13		! source line 1372
	mov	"\0\0CE",r10
	call	print
! END IF...
_Label_2561:
! CALL STATEMENT...
!   _temp_2563 = _StringConst_132
	set	_StringConst_132,r1
	store	r1,[r14+-72]
!   Prepare Argument: offset=8  value=_temp_2563  sizeInBytes=4
	load	[r14+-72],r1
	store	r1,[r15+0]
!   Call the function
	mov	1374,r13		! source line 1374
	mov	"\0\0CE",r10
	call	print
! IF STATEMENT...
	mov	1375,r13		! source line 1375
	mov	"\0\0IF",r10
	mov	1375,r13		! source line 1375
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-68]
!   if intIsZero (_temp_2566) then goto _runtimeErrorNullPointer
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
!   if result==true then goto _Label_2564 else goto _Label_2565
	loadb	[r15],r1
	cmp	r1,0
	be	_Label_2565
	jmp	_Label_2564
_Label_2564:
! THEN...
	mov	1376,r13		! source line 1376
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_2567 = _StringConst_133
	set	_StringConst_133,r1
	store	r1,[r14+-64]
!   Prepare Argument: offset=8  value=_temp_2567  sizeInBytes=4
	load	[r14+-64],r1
	store	r1,[r15+0]
!   Call the function
	mov	1376,r13		! source line 1376
	mov	"\0\0CE",r10
	call	print
	jmp	_Label_2568
_Label_2565:
! ELSE...
	mov	1378,r13		! source line 1378
	mov	"\0\0EL",r10
! CALL STATEMENT...
!   _temp_2569 = _StringConst_134
	set	_StringConst_134,r1
	store	r1,[r14+-60]
!   Prepare Argument: offset=8  value=_temp_2569  sizeInBytes=4
	load	[r14+-60],r1
	store	r1,[r15+0]
!   Call the function
	mov	1378,r13		! source line 1378
	mov	"\0\0CE",r10
	call	print
! END IF...
_Label_2568:
! CALL STATEMENT...
!   _temp_2570 = _StringConst_135
	set	_StringConst_135,r1
	store	r1,[r14+-56]
!   Prepare Argument: offset=8  value=_temp_2570  sizeInBytes=4
	load	[r14+-56],r1
	store	r1,[r15+0]
!   Call the function
	mov	1380,r13		! source line 1380
	mov	"\0\0CE",r10
	call	print
! IF STATEMENT...
	mov	1381,r13		! source line 1381
	mov	"\0\0IF",r10
	mov	1381,r13		! source line 1381
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-52]
!   if intIsZero (_temp_2573) then goto _runtimeErrorNullPointer
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
!   if result==true then goto _Label_2571 else goto _Label_2572
	loadb	[r15],r1
	cmp	r1,0
	be	_Label_2572
	jmp	_Label_2571
_Label_2571:
! THEN...
	mov	1382,r13		! source line 1382
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_2574 = _StringConst_136
	set	_StringConst_136,r1
	store	r1,[r14+-48]
!   Prepare Argument: offset=8  value=_temp_2574  sizeInBytes=4
	load	[r14+-48],r1
	store	r1,[r15+0]
!   Call the function
	mov	1382,r13		! source line 1382
	mov	"\0\0CE",r10
	call	print
	jmp	_Label_2575
_Label_2572:
! ELSE...
	mov	1384,r13		! source line 1384
	mov	"\0\0EL",r10
! CALL STATEMENT...
!   _temp_2576 = _StringConst_137
	set	_StringConst_137,r1
	store	r1,[r14+-44]
!   Prepare Argument: offset=8  value=_temp_2576  sizeInBytes=4
	load	[r14+-44],r1
	store	r1,[r15+0]
!   Call the function
	mov	1384,r13		! source line 1384
	mov	"\0\0CE",r10
	call	print
! END IF...
_Label_2575:
! CALL STATEMENT...
!   _temp_2577 = _StringConst_138
	set	_StringConst_138,r1
	store	r1,[r14+-40]
!   Prepare Argument: offset=8  value=_temp_2577  sizeInBytes=4
	load	[r14+-40],r1
	store	r1,[r15+0]
!   Call the function
	mov	1386,r13		! source line 1386
	mov	"\0\0CE",r10
	call	print
! IF STATEMENT...
	mov	1387,r13		! source line 1387
	mov	"\0\0IF",r10
	mov	1387,r13		! source line 1387
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-36]
!   if intIsZero (_temp_2580) then goto _runtimeErrorNullPointer
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
!   if result==true then goto _Label_2578 else goto _Label_2579
	loadb	[r15],r1
	cmp	r1,0
	be	_Label_2579
	jmp	_Label_2578
_Label_2578:
! THEN...
	mov	1388,r13		! source line 1388
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_2581 = _StringConst_139
	set	_StringConst_139,r1
	store	r1,[r14+-32]
!   Prepare Argument: offset=8  value=_temp_2581  sizeInBytes=4
	load	[r14+-32],r1
	store	r1,[r15+0]
!   Call the function
	mov	1388,r13		! source line 1388
	mov	"\0\0CE",r10
	call	print
	jmp	_Label_2582
_Label_2579:
! ELSE...
	mov	1390,r13		! source line 1390
	mov	"\0\0EL",r10
! CALL STATEMENT...
!   _temp_2583 = _StringConst_140
	set	_StringConst_140,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=8  value=_temp_2583  sizeInBytes=4
	load	[r14+-28],r1
	store	r1,[r15+0]
!   Call the function
	mov	1390,r13		! source line 1390
	mov	"\0\0CE",r10
	call	print
! END IF...
_Label_2582:
! CALL STATEMENT...
!   _temp_2584 = _StringConst_141
	set	_StringConst_141,r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=8  value=_temp_2584  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+0]
!   Call the function
	mov	1392,r13		! source line 1392
	mov	"\0\0CE",r10
	call	print
! IF STATEMENT...
	mov	1393,r13		! source line 1393
	mov	"\0\0IF",r10
	mov	1393,r13		! source line 1393
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-20]
!   if intIsZero (_temp_2587) then goto _runtimeErrorNullPointer
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
!   if result==true then goto _Label_2585 else goto _Label_2586
	loadb	[r15],r1
	cmp	r1,0
	be	_Label_2586
	jmp	_Label_2585
_Label_2585:
! THEN...
	mov	1394,r13		! source line 1394
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_2588 = _StringConst_142
	set	_StringConst_142,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_2588  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+0]
!   Call the function
	mov	1394,r13		! source line 1394
	mov	"\0\0CE",r10
	call	print
	jmp	_Label_2589
_Label_2586:
! ELSE...
	mov	1396,r13		! source line 1396
	mov	"\0\0EL",r10
! CALL STATEMENT...
!   _temp_2590 = _StringConst_143
	set	_StringConst_143,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_2590  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	1396,r13		! source line 1396
	mov	"\0\0CE",r10
	call	print
! END IF...
_Label_2589:
! CALL STATEMENT...
!   Call the function
	mov	1398,r13		! source line 1398
	mov	"\0\0CA",r10
	call	_P_System_nl
!   Increment the FOR-LOOP index variable and jump back
_Label_2537:
!   i = i + 1
	load	[r14+-168],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-168]
	jmp	_Label_2535
! END FOR
_Label_2538:
! RETURN STATEMENT...
	mov	1359,r13		! source line 1359
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
	.word	_Label_2591
	.word	4		! total size of parameters
	.word	168		! frame size = 168
	.word	_Label_2592
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2593
	.word	-12
	.word	4
	.word	_Label_2594
	.word	-16
	.word	4
	.word	_Label_2595
	.word	-20
	.word	4
	.word	_Label_2596
	.word	-24
	.word	4
	.word	_Label_2597
	.word	-28
	.word	4
	.word	_Label_2598
	.word	-32
	.word	4
	.word	_Label_2599
	.word	-36
	.word	4
	.word	_Label_2600
	.word	-40
	.word	4
	.word	_Label_2601
	.word	-44
	.word	4
	.word	_Label_2602
	.word	-48
	.word	4
	.word	_Label_2603
	.word	-52
	.word	4
	.word	_Label_2604
	.word	-56
	.word	4
	.word	_Label_2605
	.word	-60
	.word	4
	.word	_Label_2606
	.word	-64
	.word	4
	.word	_Label_2607
	.word	-68
	.word	4
	.word	_Label_2608
	.word	-72
	.word	4
	.word	_Label_2609
	.word	-76
	.word	4
	.word	_Label_2610
	.word	-80
	.word	4
	.word	_Label_2611
	.word	-84
	.word	4
	.word	_Label_2612
	.word	-88
	.word	4
	.word	_Label_2613
	.word	-92
	.word	4
	.word	_Label_2614
	.word	-96
	.word	4
	.word	_Label_2615
	.word	-100
	.word	4
	.word	_Label_2616
	.word	-104
	.word	4
	.word	_Label_2617
	.word	-108
	.word	4
	.word	_Label_2618
	.word	-112
	.word	4
	.word	_Label_2619
	.word	-116
	.word	4
	.word	_Label_2620
	.word	-120
	.word	4
	.word	_Label_2621
	.word	-124
	.word	4
	.word	_Label_2622
	.word	-128
	.word	4
	.word	_Label_2623
	.word	-132
	.word	4
	.word	_Label_2624
	.word	-136
	.word	4
	.word	_Label_2625
	.word	-140
	.word	4
	.word	_Label_2626
	.word	-144
	.word	4
	.word	_Label_2627
	.word	-148
	.word	4
	.word	_Label_2628
	.word	-152
	.word	4
	.word	_Label_2629
	.word	-156
	.word	4
	.word	_Label_2630
	.word	-160
	.word	4
	.word	_Label_2631
	.word	-164
	.word	4
	.word	_Label_2632
	.word	-168
	.word	4
	.word	0
_Label_2591:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"Print\0"
	.align
_Label_2592:
	.ascii	"Pself\0"
	.align
_Label_2593:
	.byte	'?'
	.ascii	"_temp_2590\0"
	.align
_Label_2594:
	.byte	'?'
	.ascii	"_temp_2588\0"
	.align
_Label_2595:
	.byte	'?'
	.ascii	"_temp_2587\0"
	.align
_Label_2596:
	.byte	'?'
	.ascii	"_temp_2584\0"
	.align
_Label_2597:
	.byte	'?'
	.ascii	"_temp_2583\0"
	.align
_Label_2598:
	.byte	'?'
	.ascii	"_temp_2581\0"
	.align
_Label_2599:
	.byte	'?'
	.ascii	"_temp_2580\0"
	.align
_Label_2600:
	.byte	'?'
	.ascii	"_temp_2577\0"
	.align
_Label_2601:
	.byte	'?'
	.ascii	"_temp_2576\0"
	.align
_Label_2602:
	.byte	'?'
	.ascii	"_temp_2574\0"
	.align
_Label_2603:
	.byte	'?'
	.ascii	"_temp_2573\0"
	.align
_Label_2604:
	.byte	'?'
	.ascii	"_temp_2570\0"
	.align
_Label_2605:
	.byte	'?'
	.ascii	"_temp_2569\0"
	.align
_Label_2606:
	.byte	'?'
	.ascii	"_temp_2567\0"
	.align
_Label_2607:
	.byte	'?'
	.ascii	"_temp_2566\0"
	.align
_Label_2608:
	.byte	'?'
	.ascii	"_temp_2563\0"
	.align
_Label_2609:
	.byte	'?'
	.ascii	"_temp_2562\0"
	.align
_Label_2610:
	.byte	'?'
	.ascii	"_temp_2560\0"
	.align
_Label_2611:
	.byte	'?'
	.ascii	"_temp_2559\0"
	.align
_Label_2612:
	.byte	'?'
	.ascii	"_temp_2558\0"
	.align
_Label_2613:
	.byte	'?'
	.ascii	"_temp_2557\0"
	.align
_Label_2614:
	.byte	'?'
	.ascii	"_temp_2554\0"
	.align
_Label_2615:
	.byte	'?'
	.ascii	"_temp_2553\0"
	.align
_Label_2616:
	.byte	'?'
	.ascii	"_temp_2552\0"
	.align
_Label_2617:
	.byte	'?'
	.ascii	"_temp_2551\0"
	.align
_Label_2618:
	.byte	'?'
	.ascii	"_temp_2550\0"
	.align
_Label_2619:
	.byte	'?'
	.ascii	"_temp_2549\0"
	.align
_Label_2620:
	.byte	'?'
	.ascii	"_temp_2548\0"
	.align
_Label_2621:
	.byte	'?'
	.ascii	"_temp_2547\0"
	.align
_Label_2622:
	.byte	'?'
	.ascii	"_temp_2546\0"
	.align
_Label_2623:
	.byte	'?'
	.ascii	"_temp_2545\0"
	.align
_Label_2624:
	.byte	'?'
	.ascii	"_temp_2544\0"
	.align
_Label_2625:
	.byte	'?'
	.ascii	"_temp_2543\0"
	.align
_Label_2626:
	.byte	'?'
	.ascii	"_temp_2542\0"
	.align
_Label_2627:
	.byte	'?'
	.ascii	"_temp_2541\0"
	.align
_Label_2628:
	.byte	'?'
	.ascii	"_temp_2540\0"
	.align
_Label_2629:
	.byte	'?'
	.ascii	"_temp_2539\0"
	.align
_Label_2630:
	.byte	'?'
	.ascii	"_temp_2534\0"
	.align
_Label_2631:
	.byte	'?'
	.ascii	"_temp_2533\0"
	.align
_Label_2632:
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
_Label_4167:
	push	r0
	sub	r1,1,r1
	bne	_Label_4167
	mov	1404,r13		! source line 1404
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! RETURN STATEMENT...
	mov	1409,r13		! source line 1409
	mov	"\0\0RE",r10
!   _temp_2635 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-16]
!   Move address of _temp_2635 [entry ] into _temp_2636
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
!   Data Move: _temp_2634 = *_temp_2636  (sizeInBytes=4)
	load	[r14+-12],r1
	load	[r1],r1
	store	r1,[r14+-20]
!   _temp_2633 = _temp_2634 AND -8192		(int)
	load	[r14+-20],r1
	mov	-8192,r2
	and	r1,r2,r1
	store	r1,[r14+-24]
!   ReturnResult: _temp_2633  (sizeInBytes=4)
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
	.word	_Label_2637
	.word	8		! total size of parameters
	.word	16		! frame size = 16
	.word	_Label_2638
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2639
	.word	12
	.word	4
	.word	_Label_2640
	.word	-12
	.word	4
	.word	_Label_2641
	.word	-16
	.word	4
	.word	_Label_2642
	.word	-20
	.word	4
	.word	_Label_2643
	.word	-24
	.word	4
	.word	0
_Label_2637:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"ExtractFrameAddr\0"
	.align
_Label_2638:
	.ascii	"Pself\0"
	.align
_Label_2639:
	.byte	'I'
	.ascii	"entry\0"
	.align
_Label_2640:
	.byte	'?'
	.ascii	"_temp_2636\0"
	.align
_Label_2641:
	.byte	'?'
	.ascii	"_temp_2635\0"
	.align
_Label_2642:
	.byte	'?'
	.ascii	"_temp_2634\0"
	.align
_Label_2643:
	.byte	'?'
	.ascii	"_temp_2633\0"
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
_Label_4168:
	push	r0
	sub	r1,1,r1
	bne	_Label_4168
	mov	1414,r13		! source line 1414
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! RETURN STATEMENT...
	mov	1418,r13		! source line 1418
	mov	"\0\0RE",r10
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
!   _temp_2644 = _temp_2645 AND 8176		(int)
	load	[r14+-20],r1
	mov	8176,r2
	and	r1,r2,r1
	store	r1,[r14+-24]
!   ReturnResult: _temp_2644  (sizeInBytes=4)
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
	.word	_Label_2648
	.word	8		! total size of parameters
	.word	16		! frame size = 16
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
	.word	0
_Label_2648:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"ExtractUndefinedBits\0"
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
_Label_4169:
	push	r0
	sub	r1,1,r1
	bne	_Label_4169
	mov	1423,r13		! source line 1423
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1428,r13		! source line 1428
	mov	"\0\0AS",r10
!   _temp_2655 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-36]
!   Move address of _temp_2655 [entry ] into _temp_2656
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
!   _temp_2660 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-16]
!   Move address of _temp_2660 [entry ] into _temp_2661
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
!   Data Move: _temp_2659 = *_temp_2661  (sizeInBytes=4)
	load	[r14+-12],r1
	load	[r1],r1
	store	r1,[r14+-20]
!   _temp_2658 = _temp_2659 AND 8191		(int)
	load	[r14+-20],r1
	mov	8191,r2
	and	r1,r2,r1
	store	r1,[r14+-24]
!   _temp_2657 = _temp_2658 OR frameAddr		(int)
	load	[r14+-24],r1
	load	[r14+16],r2
	or	r1,r2,r1
	store	r1,[r14+-28]
!   Data Move: *_temp_2656 = _temp_2657  (sizeInBytes=4)
	load	[r14+-28],r1
	load	[r14+-32],r2
	store	r1,[r2]
! RETURN STATEMENT...
	mov	1428,r13		! source line 1428
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
	.word	_Label_2662
	.word	12		! total size of parameters
	.word	28		! frame size = 28
	.word	_Label_2663
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2664
	.word	12
	.word	4
	.word	_Label_2665
	.word	16
	.word	4
	.word	_Label_2666
	.word	-12
	.word	4
	.word	_Label_2667
	.word	-16
	.word	4
	.word	_Label_2668
	.word	-20
	.word	4
	.word	_Label_2669
	.word	-24
	.word	4
	.word	_Label_2670
	.word	-28
	.word	4
	.word	_Label_2671
	.word	-32
	.word	4
	.word	_Label_2672
	.word	-36
	.word	4
	.word	0
_Label_2662:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"SetFrameAddr\0"
	.align
_Label_2663:
	.ascii	"Pself\0"
	.align
_Label_2664:
	.byte	'I'
	.ascii	"entry\0"
	.align
_Label_2665:
	.byte	'I'
	.ascii	"frameAddr\0"
	.align
_Label_2666:
	.byte	'?'
	.ascii	"_temp_2661\0"
	.align
_Label_2667:
	.byte	'?'
	.ascii	"_temp_2660\0"
	.align
_Label_2668:
	.byte	'?'
	.ascii	"_temp_2659\0"
	.align
_Label_2669:
	.byte	'?'
	.ascii	"_temp_2658\0"
	.align
_Label_2670:
	.byte	'?'
	.ascii	"_temp_2657\0"
	.align
_Label_2671:
	.byte	'?'
	.ascii	"_temp_2656\0"
	.align
_Label_2672:
	.byte	'?'
	.ascii	"_temp_2655\0"
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
_Label_4170:
	push	r0
	sub	r1,1,r1
	bne	_Label_4170
	mov	1433,r13		! source line 1433
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! RETURN STATEMENT...
	mov	1437,r13		! source line 1437
	mov	"\0\0RE",r10
!   _temp_2676 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-20]
!   Move address of _temp_2676 [entry ] into _temp_2677
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
!   Data Move: _temp_2675 = *_temp_2677  (sizeInBytes=4)
	load	[r14+-16],r1
	load	[r1],r1
	store	r1,[r14+-24]
!   _temp_2674 = _temp_2675 AND 8		(int)
	load	[r14+-24],r1
	mov	8,r2
	and	r1,r2,r1
	store	r1,[r14+-28]
!   if intIsZero (_temp_2674) then goto _Label_2678
	load	[r14+-28],r1
	cmp	r1,r0
	be	_Label_2678
!   _temp_2673 = 1		(1 byte)
	mov	1,r1
	storeb	r1,[r14+-9]
	jmp	_Label_2679
_Label_2678:
!   _temp_2673 = 0		(1 byte)
	mov	0,r1
	storeb	r1,[r14+-9]
_Label_2679:
!   ReturnResult: _temp_2673  (sizeInBytes=1)
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
	.word	_Label_2680
	.word	8		! total size of parameters
	.word	20		! frame size = 20
	.word	_Label_2681
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2682
	.word	12
	.word	4
	.word	_Label_2683
	.word	-16
	.word	4
	.word	_Label_2684
	.word	-20
	.word	4
	.word	_Label_2685
	.word	-24
	.word	4
	.word	_Label_2686
	.word	-28
	.word	4
	.word	_Label_2687
	.word	-9
	.word	1
	.word	0
_Label_2680:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"IsDirty\0"
	.align
_Label_2681:
	.ascii	"Pself\0"
	.align
_Label_2682:
	.byte	'I'
	.ascii	"entry\0"
	.align
_Label_2683:
	.byte	'?'
	.ascii	"_temp_2677\0"
	.align
_Label_2684:
	.byte	'?'
	.ascii	"_temp_2676\0"
	.align
_Label_2685:
	.byte	'?'
	.ascii	"_temp_2675\0"
	.align
_Label_2686:
	.byte	'?'
	.ascii	"_temp_2674\0"
	.align
_Label_2687:
	.byte	'C'
	.ascii	"_temp_2673\0"
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
_Label_4171:
	push	r0
	sub	r1,1,r1
	bne	_Label_4171
	mov	1442,r13		! source line 1442
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! RETURN STATEMENT...
	mov	1446,r13		! source line 1446
	mov	"\0\0RE",r10
!   _temp_2691 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-20]
!   Move address of _temp_2691 [entry ] into _temp_2692
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
!   Data Move: _temp_2690 = *_temp_2692  (sizeInBytes=4)
	load	[r14+-16],r1
	load	[r1],r1
	store	r1,[r14+-24]
!   _temp_2689 = _temp_2690 AND 4		(int)
	load	[r14+-24],r1
	mov	4,r2
	and	r1,r2,r1
	store	r1,[r14+-28]
!   if intIsZero (_temp_2689) then goto _Label_2693
	load	[r14+-28],r1
	cmp	r1,r0
	be	_Label_2693
!   _temp_2688 = 1		(1 byte)
	mov	1,r1
	storeb	r1,[r14+-9]
	jmp	_Label_2694
_Label_2693:
!   _temp_2688 = 0		(1 byte)
	mov	0,r1
	storeb	r1,[r14+-9]
_Label_2694:
!   ReturnResult: _temp_2688  (sizeInBytes=1)
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
	.word	_Label_2695
	.word	8		! total size of parameters
	.word	20		! frame size = 20
	.word	_Label_2696
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2697
	.word	12
	.word	4
	.word	_Label_2698
	.word	-16
	.word	4
	.word	_Label_2699
	.word	-20
	.word	4
	.word	_Label_2700
	.word	-24
	.word	4
	.word	_Label_2701
	.word	-28
	.word	4
	.word	_Label_2702
	.word	-9
	.word	1
	.word	0
_Label_2695:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"IsReferenced\0"
	.align
_Label_2696:
	.ascii	"Pself\0"
	.align
_Label_2697:
	.byte	'I'
	.ascii	"entry\0"
	.align
_Label_2698:
	.byte	'?'
	.ascii	"_temp_2692\0"
	.align
_Label_2699:
	.byte	'?'
	.ascii	"_temp_2691\0"
	.align
_Label_2700:
	.byte	'?'
	.ascii	"_temp_2690\0"
	.align
_Label_2701:
	.byte	'?'
	.ascii	"_temp_2689\0"
	.align
_Label_2702:
	.byte	'C'
	.ascii	"_temp_2688\0"
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
_Label_4172:
	push	r0
	sub	r1,1,r1
	bne	_Label_4172
	mov	1451,r13		! source line 1451
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! RETURN STATEMENT...
	mov	1455,r13		! source line 1455
	mov	"\0\0RE",r10
!   _temp_2706 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-20]
!   Move address of _temp_2706 [entry ] into _temp_2707
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
!   Data Move: _temp_2705 = *_temp_2707  (sizeInBytes=4)
	load	[r14+-16],r1
	load	[r1],r1
	store	r1,[r14+-24]
!   _temp_2704 = _temp_2705 AND 2		(int)
	load	[r14+-24],r1
	mov	2,r2
	and	r1,r2,r1
	store	r1,[r14+-28]
!   if intIsZero (_temp_2704) then goto _Label_2708
	load	[r14+-28],r1
	cmp	r1,r0
	be	_Label_2708
!   _temp_2703 = 1		(1 byte)
	mov	1,r1
	storeb	r1,[r14+-9]
	jmp	_Label_2709
_Label_2708:
!   _temp_2703 = 0		(1 byte)
	mov	0,r1
	storeb	r1,[r14+-9]
_Label_2709:
!   ReturnResult: _temp_2703  (sizeInBytes=1)
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
	.word	_Label_2710
	.word	8		! total size of parameters
	.word	20		! frame size = 20
	.word	_Label_2711
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2712
	.word	12
	.word	4
	.word	_Label_2713
	.word	-16
	.word	4
	.word	_Label_2714
	.word	-20
	.word	4
	.word	_Label_2715
	.word	-24
	.word	4
	.word	_Label_2716
	.word	-28
	.word	4
	.word	_Label_2717
	.word	-9
	.word	1
	.word	0
_Label_2710:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"IsWritable\0"
	.align
_Label_2711:
	.ascii	"Pself\0"
	.align
_Label_2712:
	.byte	'I'
	.ascii	"entry\0"
	.align
_Label_2713:
	.byte	'?'
	.ascii	"_temp_2707\0"
	.align
_Label_2714:
	.byte	'?'
	.ascii	"_temp_2706\0"
	.align
_Label_2715:
	.byte	'?'
	.ascii	"_temp_2705\0"
	.align
_Label_2716:
	.byte	'?'
	.ascii	"_temp_2704\0"
	.align
_Label_2717:
	.byte	'C'
	.ascii	"_temp_2703\0"
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
_Label_4173:
	push	r0
	sub	r1,1,r1
	bne	_Label_4173
	mov	1460,r13		! source line 1460
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! RETURN STATEMENT...
	mov	1464,r13		! source line 1464
	mov	"\0\0RE",r10
!   _temp_2721 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-20]
!   Move address of _temp_2721 [entry ] into _temp_2722
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
!   Data Move: _temp_2720 = *_temp_2722  (sizeInBytes=4)
	load	[r14+-16],r1
	load	[r1],r1
	store	r1,[r14+-24]
!   _temp_2719 = _temp_2720 AND 1		(int)
	load	[r14+-24],r1
	mov	1,r2
	and	r1,r2,r1
	store	r1,[r14+-28]
!   if intIsZero (_temp_2719) then goto _Label_2723
	load	[r14+-28],r1
	cmp	r1,r0
	be	_Label_2723
!   _temp_2718 = 1		(1 byte)
	mov	1,r1
	storeb	r1,[r14+-9]
	jmp	_Label_2724
_Label_2723:
!   _temp_2718 = 0		(1 byte)
	mov	0,r1
	storeb	r1,[r14+-9]
_Label_2724:
!   ReturnResult: _temp_2718  (sizeInBytes=1)
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
	.word	_Label_2725
	.word	8		! total size of parameters
	.word	20		! frame size = 20
	.word	_Label_2726
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2727
	.word	12
	.word	4
	.word	_Label_2728
	.word	-16
	.word	4
	.word	_Label_2729
	.word	-20
	.word	4
	.word	_Label_2730
	.word	-24
	.word	4
	.word	_Label_2731
	.word	-28
	.word	4
	.word	_Label_2732
	.word	-9
	.word	1
	.word	0
_Label_2725:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"IsValid\0"
	.align
_Label_2726:
	.ascii	"Pself\0"
	.align
_Label_2727:
	.byte	'I'
	.ascii	"entry\0"
	.align
_Label_2728:
	.byte	'?'
	.ascii	"_temp_2722\0"
	.align
_Label_2729:
	.byte	'?'
	.ascii	"_temp_2721\0"
	.align
_Label_2730:
	.byte	'?'
	.ascii	"_temp_2720\0"
	.align
_Label_2731:
	.byte	'?'
	.ascii	"_temp_2719\0"
	.align
_Label_2732:
	.byte	'C'
	.ascii	"_temp_2718\0"
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
_Label_4174:
	push	r0
	sub	r1,1,r1
	bne	_Label_4174
	mov	1469,r13		! source line 1469
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1473,r13		! source line 1473
	mov	"\0\0AS",r10
!   _temp_2733 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-32]
!   Move address of _temp_2733 [entry ] into _temp_2734
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
!   _temp_2737 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-16]
!   Move address of _temp_2737 [entry ] into _temp_2738
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
!   Data Move: _temp_2736 = *_temp_2738  (sizeInBytes=4)
	load	[r14+-12],r1
	load	[r1],r1
	store	r1,[r14+-20]
!   _temp_2735 = _temp_2736 OR 8		(int)
	load	[r14+-20],r1
	mov	8,r2
	or	r1,r2,r1
	store	r1,[r14+-24]
!   Data Move: *_temp_2734 = _temp_2735  (sizeInBytes=4)
	load	[r14+-24],r1
	load	[r14+-28],r2
	store	r1,[r2]
! RETURN STATEMENT...
	mov	1473,r13		! source line 1473
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
	.word	_Label_2739
	.word	8		! total size of parameters
	.word	24		! frame size = 24
	.word	_Label_2740
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2741
	.word	12
	.word	4
	.word	_Label_2742
	.word	-12
	.word	4
	.word	_Label_2743
	.word	-16
	.word	4
	.word	_Label_2744
	.word	-20
	.word	4
	.word	_Label_2745
	.word	-24
	.word	4
	.word	_Label_2746
	.word	-28
	.word	4
	.word	_Label_2747
	.word	-32
	.word	4
	.word	0
_Label_2739:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"SetDirty\0"
	.align
_Label_2740:
	.ascii	"Pself\0"
	.align
_Label_2741:
	.byte	'I'
	.ascii	"entry\0"
	.align
_Label_2742:
	.byte	'?'
	.ascii	"_temp_2738\0"
	.align
_Label_2743:
	.byte	'?'
	.ascii	"_temp_2737\0"
	.align
_Label_2744:
	.byte	'?'
	.ascii	"_temp_2736\0"
	.align
_Label_2745:
	.byte	'?'
	.ascii	"_temp_2735\0"
	.align
_Label_2746:
	.byte	'?'
	.ascii	"_temp_2734\0"
	.align
_Label_2747:
	.byte	'?'
	.ascii	"_temp_2733\0"
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
_Label_4175:
	push	r0
	sub	r1,1,r1
	bne	_Label_4175
	mov	1478,r13		! source line 1478
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1482,r13		! source line 1482
	mov	"\0\0AS",r10
!   _temp_2748 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-32]
!   Move address of _temp_2748 [entry ] into _temp_2749
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
!   _temp_2752 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-16]
!   Move address of _temp_2752 [entry ] into _temp_2753
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
!   Data Move: _temp_2751 = *_temp_2753  (sizeInBytes=4)
	load	[r14+-12],r1
	load	[r1],r1
	store	r1,[r14+-20]
!   _temp_2750 = _temp_2751 OR 4		(int)
	load	[r14+-20],r1
	mov	4,r2
	or	r1,r2,r1
	store	r1,[r14+-24]
!   Data Move: *_temp_2749 = _temp_2750  (sizeInBytes=4)
	load	[r14+-24],r1
	load	[r14+-28],r2
	store	r1,[r2]
! RETURN STATEMENT...
	mov	1482,r13		! source line 1482
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
	.word	_Label_2754
	.word	8		! total size of parameters
	.word	24		! frame size = 24
	.word	_Label_2755
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2756
	.word	12
	.word	4
	.word	_Label_2757
	.word	-12
	.word	4
	.word	_Label_2758
	.word	-16
	.word	4
	.word	_Label_2759
	.word	-20
	.word	4
	.word	_Label_2760
	.word	-24
	.word	4
	.word	_Label_2761
	.word	-28
	.word	4
	.word	_Label_2762
	.word	-32
	.word	4
	.word	0
_Label_2754:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"SetReferenced\0"
	.align
_Label_2755:
	.ascii	"Pself\0"
	.align
_Label_2756:
	.byte	'I'
	.ascii	"entry\0"
	.align
_Label_2757:
	.byte	'?'
	.ascii	"_temp_2753\0"
	.align
_Label_2758:
	.byte	'?'
	.ascii	"_temp_2752\0"
	.align
_Label_2759:
	.byte	'?'
	.ascii	"_temp_2751\0"
	.align
_Label_2760:
	.byte	'?'
	.ascii	"_temp_2750\0"
	.align
_Label_2761:
	.byte	'?'
	.ascii	"_temp_2749\0"
	.align
_Label_2762:
	.byte	'?'
	.ascii	"_temp_2748\0"
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
_Label_4176:
	push	r0
	sub	r1,1,r1
	bne	_Label_4176
	mov	1487,r13		! source line 1487
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1491,r13		! source line 1491
	mov	"\0\0AS",r10
!   _temp_2763 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-32]
!   Move address of _temp_2763 [entry ] into _temp_2764
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
!   _temp_2767 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-16]
!   Move address of _temp_2767 [entry ] into _temp_2768
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
!   Data Move: _temp_2766 = *_temp_2768  (sizeInBytes=4)
	load	[r14+-12],r1
	load	[r1],r1
	store	r1,[r14+-20]
!   _temp_2765 = _temp_2766 OR 2		(int)
	load	[r14+-20],r1
	mov	2,r2
	or	r1,r2,r1
	store	r1,[r14+-24]
!   Data Move: *_temp_2764 = _temp_2765  (sizeInBytes=4)
	load	[r14+-24],r1
	load	[r14+-28],r2
	store	r1,[r2]
! RETURN STATEMENT...
	mov	1491,r13		! source line 1491
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
	.word	_Label_2769
	.word	8		! total size of parameters
	.word	24		! frame size = 24
	.word	_Label_2770
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2771
	.word	12
	.word	4
	.word	_Label_2772
	.word	-12
	.word	4
	.word	_Label_2773
	.word	-16
	.word	4
	.word	_Label_2774
	.word	-20
	.word	4
	.word	_Label_2775
	.word	-24
	.word	4
	.word	_Label_2776
	.word	-28
	.word	4
	.word	_Label_2777
	.word	-32
	.word	4
	.word	0
_Label_2769:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"SetWritable\0"
	.align
_Label_2770:
	.ascii	"Pself\0"
	.align
_Label_2771:
	.byte	'I'
	.ascii	"entry\0"
	.align
_Label_2772:
	.byte	'?'
	.ascii	"_temp_2768\0"
	.align
_Label_2773:
	.byte	'?'
	.ascii	"_temp_2767\0"
	.align
_Label_2774:
	.byte	'?'
	.ascii	"_temp_2766\0"
	.align
_Label_2775:
	.byte	'?'
	.ascii	"_temp_2765\0"
	.align
_Label_2776:
	.byte	'?'
	.ascii	"_temp_2764\0"
	.align
_Label_2777:
	.byte	'?'
	.ascii	"_temp_2763\0"
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
_Label_4177:
	push	r0
	sub	r1,1,r1
	bne	_Label_4177
	mov	1496,r13		! source line 1496
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1500,r13		! source line 1500
	mov	"\0\0AS",r10
!   _temp_2778 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-32]
!   Move address of _temp_2778 [entry ] into _temp_2779
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
!   _temp_2782 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-16]
!   Move address of _temp_2782 [entry ] into _temp_2783
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
!   Data Move: _temp_2781 = *_temp_2783  (sizeInBytes=4)
	load	[r14+-12],r1
	load	[r1],r1
	store	r1,[r14+-20]
!   _temp_2780 = _temp_2781 OR 1		(int)
	load	[r14+-20],r1
	mov	1,r2
	or	r1,r2,r1
	store	r1,[r14+-24]
!   Data Move: *_temp_2779 = _temp_2780  (sizeInBytes=4)
	load	[r14+-24],r1
	load	[r14+-28],r2
	store	r1,[r2]
! RETURN STATEMENT...
	mov	1500,r13		! source line 1500
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
	.word	_Label_2784
	.word	8		! total size of parameters
	.word	24		! frame size = 24
	.word	_Label_2785
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2786
	.word	12
	.word	4
	.word	_Label_2787
	.word	-12
	.word	4
	.word	_Label_2788
	.word	-16
	.word	4
	.word	_Label_2789
	.word	-20
	.word	4
	.word	_Label_2790
	.word	-24
	.word	4
	.word	_Label_2791
	.word	-28
	.word	4
	.word	_Label_2792
	.word	-32
	.word	4
	.word	0
_Label_2784:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"SetValid\0"
	.align
_Label_2785:
	.ascii	"Pself\0"
	.align
_Label_2786:
	.byte	'I'
	.ascii	"entry\0"
	.align
_Label_2787:
	.byte	'?'
	.ascii	"_temp_2783\0"
	.align
_Label_2788:
	.byte	'?'
	.ascii	"_temp_2782\0"
	.align
_Label_2789:
	.byte	'?'
	.ascii	"_temp_2781\0"
	.align
_Label_2790:
	.byte	'?'
	.ascii	"_temp_2780\0"
	.align
_Label_2791:
	.byte	'?'
	.ascii	"_temp_2779\0"
	.align
_Label_2792:
	.byte	'?'
	.ascii	"_temp_2778\0"
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
_Label_4178:
	push	r0
	sub	r1,1,r1
	bne	_Label_4178
	mov	1505,r13		! source line 1505
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1509,r13		! source line 1509
	mov	"\0\0AS",r10
!   _temp_2793 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-32]
!   Move address of _temp_2793 [entry ] into _temp_2794
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
!   _temp_2797 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-16]
!   Move address of _temp_2797 [entry ] into _temp_2798
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
!   Data Move: _temp_2796 = *_temp_2798  (sizeInBytes=4)
	load	[r14+-12],r1
	load	[r1],r1
	store	r1,[r14+-20]
!   _temp_2795 = _temp_2796 AND -9		(int)
	load	[r14+-20],r1
	mov	-9,r2
	and	r1,r2,r1
	store	r1,[r14+-24]
!   Data Move: *_temp_2794 = _temp_2795  (sizeInBytes=4)
	load	[r14+-24],r1
	load	[r14+-28],r2
	store	r1,[r2]
! RETURN STATEMENT...
	mov	1509,r13		! source line 1509
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
	.word	_Label_2799
	.word	8		! total size of parameters
	.word	24		! frame size = 24
	.word	_Label_2800
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2801
	.word	12
	.word	4
	.word	_Label_2802
	.word	-12
	.word	4
	.word	_Label_2803
	.word	-16
	.word	4
	.word	_Label_2804
	.word	-20
	.word	4
	.word	_Label_2805
	.word	-24
	.word	4
	.word	_Label_2806
	.word	-28
	.word	4
	.word	_Label_2807
	.word	-32
	.word	4
	.word	0
_Label_2799:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"ClearDirty\0"
	.align
_Label_2800:
	.ascii	"Pself\0"
	.align
_Label_2801:
	.byte	'I'
	.ascii	"entry\0"
	.align
_Label_2802:
	.byte	'?'
	.ascii	"_temp_2798\0"
	.align
_Label_2803:
	.byte	'?'
	.ascii	"_temp_2797\0"
	.align
_Label_2804:
	.byte	'?'
	.ascii	"_temp_2796\0"
	.align
_Label_2805:
	.byte	'?'
	.ascii	"_temp_2795\0"
	.align
_Label_2806:
	.byte	'?'
	.ascii	"_temp_2794\0"
	.align
_Label_2807:
	.byte	'?'
	.ascii	"_temp_2793\0"
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
_Label_4179:
	push	r0
	sub	r1,1,r1
	bne	_Label_4179
	mov	1514,r13		! source line 1514
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1518,r13		! source line 1518
	mov	"\0\0AS",r10
!   _temp_2808 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-32]
!   Move address of _temp_2808 [entry ] into _temp_2809
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
!   _temp_2812 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-16]
!   Move address of _temp_2812 [entry ] into _temp_2813
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
!   Data Move: _temp_2811 = *_temp_2813  (sizeInBytes=4)
	load	[r14+-12],r1
	load	[r1],r1
	store	r1,[r14+-20]
!   _temp_2810 = _temp_2811 AND -5		(int)
	load	[r14+-20],r1
	mov	-5,r2
	and	r1,r2,r1
	store	r1,[r14+-24]
!   Data Move: *_temp_2809 = _temp_2810  (sizeInBytes=4)
	load	[r14+-24],r1
	load	[r14+-28],r2
	store	r1,[r2]
! RETURN STATEMENT...
	mov	1518,r13		! source line 1518
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
	.word	_Label_2814
	.word	8		! total size of parameters
	.word	24		! frame size = 24
	.word	_Label_2815
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2816
	.word	12
	.word	4
	.word	_Label_2817
	.word	-12
	.word	4
	.word	_Label_2818
	.word	-16
	.word	4
	.word	_Label_2819
	.word	-20
	.word	4
	.word	_Label_2820
	.word	-24
	.word	4
	.word	_Label_2821
	.word	-28
	.word	4
	.word	_Label_2822
	.word	-32
	.word	4
	.word	0
_Label_2814:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"ClearReferenced\0"
	.align
_Label_2815:
	.ascii	"Pself\0"
	.align
_Label_2816:
	.byte	'I'
	.ascii	"entry\0"
	.align
_Label_2817:
	.byte	'?'
	.ascii	"_temp_2813\0"
	.align
_Label_2818:
	.byte	'?'
	.ascii	"_temp_2812\0"
	.align
_Label_2819:
	.byte	'?'
	.ascii	"_temp_2811\0"
	.align
_Label_2820:
	.byte	'?'
	.ascii	"_temp_2810\0"
	.align
_Label_2821:
	.byte	'?'
	.ascii	"_temp_2809\0"
	.align
_Label_2822:
	.byte	'?'
	.ascii	"_temp_2808\0"
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
_Label_4180:
	push	r0
	sub	r1,1,r1
	bne	_Label_4180
	mov	1523,r13		! source line 1523
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1527,r13		! source line 1527
	mov	"\0\0AS",r10
!   _temp_2823 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-32]
!   Move address of _temp_2823 [entry ] into _temp_2824
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
!   _temp_2827 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-16]
!   Move address of _temp_2827 [entry ] into _temp_2828
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
!   Data Move: _temp_2826 = *_temp_2828  (sizeInBytes=4)
	load	[r14+-12],r1
	load	[r1],r1
	store	r1,[r14+-20]
!   _temp_2825 = _temp_2826 AND -3		(int)
	load	[r14+-20],r1
	mov	-3,r2
	and	r1,r2,r1
	store	r1,[r14+-24]
!   Data Move: *_temp_2824 = _temp_2825  (sizeInBytes=4)
	load	[r14+-24],r1
	load	[r14+-28],r2
	store	r1,[r2]
! RETURN STATEMENT...
	mov	1527,r13		! source line 1527
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
	.word	_Label_2829
	.word	8		! total size of parameters
	.word	24		! frame size = 24
	.word	_Label_2830
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2831
	.word	12
	.word	4
	.word	_Label_2832
	.word	-12
	.word	4
	.word	_Label_2833
	.word	-16
	.word	4
	.word	_Label_2834
	.word	-20
	.word	4
	.word	_Label_2835
	.word	-24
	.word	4
	.word	_Label_2836
	.word	-28
	.word	4
	.word	_Label_2837
	.word	-32
	.word	4
	.word	0
_Label_2829:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"ClearWritable\0"
	.align
_Label_2830:
	.ascii	"Pself\0"
	.align
_Label_2831:
	.byte	'I'
	.ascii	"entry\0"
	.align
_Label_2832:
	.byte	'?'
	.ascii	"_temp_2828\0"
	.align
_Label_2833:
	.byte	'?'
	.ascii	"_temp_2827\0"
	.align
_Label_2834:
	.byte	'?'
	.ascii	"_temp_2826\0"
	.align
_Label_2835:
	.byte	'?'
	.ascii	"_temp_2825\0"
	.align
_Label_2836:
	.byte	'?'
	.ascii	"_temp_2824\0"
	.align
_Label_2837:
	.byte	'?'
	.ascii	"_temp_2823\0"
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
_Label_4181:
	push	r0
	sub	r1,1,r1
	bne	_Label_4181
	mov	1532,r13		! source line 1532
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1536,r13		! source line 1536
	mov	"\0\0AS",r10
!   _temp_2838 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-32]
!   Move address of _temp_2838 [entry ] into _temp_2839
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
!   _temp_2842 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-16]
!   Move address of _temp_2842 [entry ] into _temp_2843
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
!   Data Move: _temp_2841 = *_temp_2843  (sizeInBytes=4)
	load	[r14+-12],r1
	load	[r1],r1
	store	r1,[r14+-20]
!   _temp_2840 = _temp_2841 AND -2		(int)
	load	[r14+-20],r1
	mov	-2,r2
	and	r1,r2,r1
	store	r1,[r14+-24]
!   Data Move: *_temp_2839 = _temp_2840  (sizeInBytes=4)
	load	[r14+-24],r1
	load	[r14+-28],r2
	store	r1,[r2]
! RETURN STATEMENT...
	mov	1536,r13		! source line 1536
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
	.word	_Label_2844
	.word	8		! total size of parameters
	.word	24		! frame size = 24
	.word	_Label_2845
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2846
	.word	12
	.word	4
	.word	_Label_2847
	.word	-12
	.word	4
	.word	_Label_2848
	.word	-16
	.word	4
	.word	_Label_2849
	.word	-20
	.word	4
	.word	_Label_2850
	.word	-24
	.word	4
	.word	_Label_2851
	.word	-28
	.word	4
	.word	_Label_2852
	.word	-32
	.word	4
	.word	0
_Label_2844:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"ClearValid\0"
	.align
_Label_2845:
	.ascii	"Pself\0"
	.align
_Label_2846:
	.byte	'I'
	.ascii	"entry\0"
	.align
_Label_2847:
	.byte	'?'
	.ascii	"_temp_2843\0"
	.align
_Label_2848:
	.byte	'?'
	.ascii	"_temp_2842\0"
	.align
_Label_2849:
	.byte	'?'
	.ascii	"_temp_2841\0"
	.align
_Label_2850:
	.byte	'?'
	.ascii	"_temp_2840\0"
	.align
_Label_2851:
	.byte	'?'
	.ascii	"_temp_2839\0"
	.align
_Label_2852:
	.byte	'?'
	.ascii	"_temp_2838\0"
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
_Label_4182:
	push	r0
	sub	r1,1,r1
	bne	_Label_4182
	mov	1541,r13		! source line 1541
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   _temp_2854 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-20]
!   Move address of _temp_2854 [0 ] into _temp_2855
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
!   _temp_2853 = _temp_2855		(4 bytes)
	load	[r14+-16],r1
	store	r1,[r14+-24]
!   _temp_2856 = numberOfPages * 4		(int)
	load	[r14+8],r1
	load	[r1+4],r1
	mov	4,r2
	mul	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_2853  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=_temp_2856  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+4]
!   Call the function
	mov	1547,r13		! source line 1547
	mov	"\0\0CE",r10
	call	LoadPageTableRegs
! RETURN STATEMENT...
	mov	1547,r13		! source line 1547
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
	.word	_Label_2857
	.word	4		! total size of parameters
	.word	24		! frame size = 24
	.word	_Label_2858
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2859
	.word	-12
	.word	4
	.word	_Label_2860
	.word	-16
	.word	4
	.word	_Label_2861
	.word	-20
	.word	4
	.word	_Label_2862
	.word	-24
	.word	4
	.word	0
_Label_2857:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"SetToThisPageTable\0"
	.align
_Label_2858:
	.ascii	"Pself\0"
	.align
_Label_2859:
	.byte	'?'
	.ascii	"_temp_2856\0"
	.align
_Label_2860:
	.byte	'?'
	.ascii	"_temp_2855\0"
	.align
_Label_2861:
	.byte	'?'
	.ascii	"_temp_2854\0"
	.align
_Label_2862:
	.byte	'?'
	.ascii	"_temp_2853\0"
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
_Label_4183:
	push	r0
	sub	r1,1,r1
	bne	_Label_4183
	mov	1552,r13		! source line 1552
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! IF STATEMENT...
	mov	1567,r13		! source line 1567
	mov	"\0\0IF",r10
!   if intIsZero (numBytes) then goto _Label_2863
	load	[r14+20],r1
	cmp	r1,r0
	be	_Label_2863
	jmp	_Label_2864
_Label_2863:
! THEN...
	mov	1568,r13		! source line 1568
	mov	"\0\0TN",r10
! RETURN STATEMENT...
	mov	1568,r13		! source line 1568
	mov	"\0\0RE",r10
!   ReturnResult: 0  (sizeInBytes=4)
	mov	0,r1
	store	r1,[r14+8]
	add	r15,52,r15
	pop	r13
	pop	r14
	ret
	jmp	_Label_2865
_Label_2864:
! ELSE...
	mov	1569,r13		! source line 1569
	mov	"\0\0EL",r10
! IF STATEMENT...
	mov	1569,r13		! source line 1569
	mov	"\0\0IF",r10
!   if numBytes >= 0 then goto _Label_2867		(int)
	load	[r14+20],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_2867
!	jmp	_Label_2866
_Label_2866:
! THEN...
	mov	1570,r13		! source line 1570
	mov	"\0\0TN",r10
! RETURN STATEMENT...
	mov	1570,r13		! source line 1570
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,52,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_2867:
! END IF...
_Label_2865:
! ASSIGNMENT STATEMENT...
	mov	1572,r13		! source line 1572
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
	mov	1573,r13		! source line 1573
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
	mov	1576,r13		! source line 1576
	mov	"\0\0WH",r10
_Label_2868:
!	jmp	_Label_2869
_Label_2869:
	mov	1576,r13		! source line 1576
	mov	"\0\0WB",r10
! IF STATEMENT...
	mov	1577,r13		! source line 1577
	mov	"\0\0IF",r10
!   if virtPage < numberOfPages then goto _Label_2872		(int)
	load	[r14+-40],r1
	load	[r14+8],r2
	load	[r2+4],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bl	_Label_2872
!	jmp	_Label_2871
_Label_2871:
! THEN...
	mov	1578,r13		! source line 1578
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_2873 = _StringConst_144
	set	_StringConst_144,r1
	store	r1,[r14+-32]
!   Prepare Argument: offset=8  value=_temp_2873  sizeInBytes=4
	load	[r14+-32],r1
	store	r1,[r15+0]
!   Call the function
	mov	1578,r13		! source line 1578
	mov	"\0\0CE",r10
	call	print
! RETURN STATEMENT...
	mov	1579,r13		! source line 1579
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,52,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_2872:
! IF STATEMENT...
	mov	1581,r13		! source line 1581
	mov	"\0\0IF",r10
	mov	1581,r13		! source line 1581
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-28]
!   if intIsZero (_temp_2877) then goto _runtimeErrorNullPointer
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
!   Retrieve Result: targetName=_temp_2876  sizeInBytes=1
	loadb	[r15],r1
	storeb	r1,[r14+-10]
!   if _temp_2876 then goto _Label_2875 else goto _Label_2874
	loadb	[r14+-10],r1
	cmp	r1,0
	be	_Label_2874
	jmp	_Label_2875
_Label_2874:
! THEN...
	mov	1582,r13		! source line 1582
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_2878 = _StringConst_145
	set	_StringConst_145,r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=8  value=_temp_2878  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+0]
!   Call the function
	mov	1582,r13		! source line 1582
	mov	"\0\0CE",r10
	call	print
! RETURN STATEMENT...
	mov	1583,r13		! source line 1583
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,52,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_2875:
! ASSIGNMENT STATEMENT...
	mov	1585,r13		! source line 1585
	mov	"\0\0AS",r10
	mov	1585,r13		! source line 1585
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-16]
!   if intIsZero (_temp_2880) then goto _runtimeErrorNullPointer
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
!   Retrieve Result: targetName=_temp_2879  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-20]
!   fromAddr = _temp_2879 + offset		(int)
	load	[r14+-20],r1
	load	[r14+-44],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-48]
! WHILE STATEMENT...
	mov	1587,r13		! source line 1587
	mov	"\0\0WH",r10
_Label_2881:
!   if offset >= 8192 then goto _Label_2883		(int)
	load	[r14+-44],r1
	mov	8192,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_2883
!	jmp	_Label_2882
_Label_2882:
	mov	1587,r13		! source line 1587
	mov	"\0\0WB",r10
! ASSIGNMENT STATEMENT...
	mov	1590,r13		! source line 1590
	mov	"\0\0AS",r10
!   if intIsZero (kernelAddr) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   if intIsZero (fromAddr) then goto _runtimeErrorNullPointer
	load	[r14+-48],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Data Move: _temp_2884 = *fromAddr  (sizeInBytes=1)
	load	[r14+-48],r1
	loadb	[r1],r1
	storeb	r1,[r14+-9]
!   Data Move: *kernelAddr = _temp_2884  (sizeInBytes=1)
	loadb	[r14+-9],r1
	load	[r14+12],r2
	storeb	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	1591,r13		! source line 1591
	mov	"\0\0AS",r10
!   offset = offset + 1		(int)
	load	[r14+-44],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-44]
! ASSIGNMENT STATEMENT...
	mov	1592,r13		! source line 1592
	mov	"\0\0AS",r10
!   kernelAddr = kernelAddr + 1		(int)
	load	[r14+12],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+12]
! ASSIGNMENT STATEMENT...
	mov	1593,r13		! source line 1593
	mov	"\0\0AS",r10
!   fromAddr = fromAddr + 1		(int)
	load	[r14+-48],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-48]
! ASSIGNMENT STATEMENT...
	mov	1594,r13		! source line 1594
	mov	"\0\0AS",r10
!   copiedSoFar = copiedSoFar + 1		(int)
	load	[r14+-36],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-36]
! IF STATEMENT...
	mov	1595,r13		! source line 1595
	mov	"\0\0IF",r10
!   if copiedSoFar != numBytes then goto _Label_2886		(int)
	load	[r14+-36],r1
	load	[r14+20],r2
	cmp	r1,r2
	bne	_Label_2886
!	jmp	_Label_2885
_Label_2885:
! THEN...
	mov	1596,r13		! source line 1596
	mov	"\0\0TN",r10
! RETURN STATEMENT...
	mov	1596,r13		! source line 1596
	mov	"\0\0RE",r10
!   ReturnResult: copiedSoFar  (sizeInBytes=4)
	load	[r14+-36],r1
	store	r1,[r14+8]
	add	r15,52,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_2886:
! END WHILE...
	jmp	_Label_2881
_Label_2883:
! ASSIGNMENT STATEMENT...
	mov	1599,r13		! source line 1599
	mov	"\0\0AS",r10
!   virtPage = virtPage + 1		(int)
	load	[r14+-40],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-40]
! ASSIGNMENT STATEMENT...
	mov	1600,r13		! source line 1600
	mov	"\0\0AS",r10
!   offset = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-44]
! END WHILE...
	jmp	_Label_2868
_Label_2870:
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_AddrSpace_19:
	.word	_sourceFileName
	.word	_Label_2887
	.word	16		! total size of parameters
	.word	48		! frame size = 48
	.word	_Label_2888
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2889
	.word	12
	.word	4
	.word	_Label_2890
	.word	16
	.word	4
	.word	_Label_2891
	.word	20
	.word	4
	.word	_Label_2892
	.word	-9
	.word	1
	.word	_Label_2893
	.word	-16
	.word	4
	.word	_Label_2894
	.word	-20
	.word	4
	.word	_Label_2895
	.word	-24
	.word	4
	.word	_Label_2896
	.word	-28
	.word	4
	.word	_Label_2897
	.word	-10
	.word	1
	.word	_Label_2898
	.word	-32
	.word	4
	.word	_Label_2899
	.word	-36
	.word	4
	.word	_Label_2900
	.word	-40
	.word	4
	.word	_Label_2901
	.word	-44
	.word	4
	.word	_Label_2902
	.word	-48
	.word	4
	.word	0
_Label_2887:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"CopyBytesFromVirtual\0"
	.align
_Label_2888:
	.ascii	"Pself\0"
	.align
_Label_2889:
	.byte	'I'
	.ascii	"kernelAddr\0"
	.align
_Label_2890:
	.byte	'I'
	.ascii	"virtAddr\0"
	.align
_Label_2891:
	.byte	'I'
	.ascii	"numBytes\0"
	.align
_Label_2892:
	.byte	'C'
	.ascii	"_temp_2884\0"
	.align
_Label_2893:
	.byte	'?'
	.ascii	"_temp_2880\0"
	.align
_Label_2894:
	.byte	'?'
	.ascii	"_temp_2879\0"
	.align
_Label_2895:
	.byte	'?'
	.ascii	"_temp_2878\0"
	.align
_Label_2896:
	.byte	'?'
	.ascii	"_temp_2877\0"
	.align
_Label_2897:
	.byte	'C'
	.ascii	"_temp_2876\0"
	.align
_Label_2898:
	.byte	'?'
	.ascii	"_temp_2873\0"
	.align
_Label_2899:
	.byte	'I'
	.ascii	"copiedSoFar\0"
	.align
_Label_2900:
	.byte	'I'
	.ascii	"virtPage\0"
	.align
_Label_2901:
	.byte	'I'
	.ascii	"offset\0"
	.align
_Label_2902:
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
_Label_4184:
	push	r0
	sub	r1,1,r1
	bne	_Label_4184
	mov	1606,r13		! source line 1606
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! IF STATEMENT...
	mov	1617,r13		! source line 1617
	mov	"\0\0IF",r10
!   if intIsZero (numBytes) then goto _Label_2903
	load	[r14+20],r1
	cmp	r1,r0
	be	_Label_2903
	jmp	_Label_2904
_Label_2903:
! THEN...
	mov	1618,r13		! source line 1618
	mov	"\0\0TN",r10
! RETURN STATEMENT...
	mov	1618,r13		! source line 1618
	mov	"\0\0RE",r10
!   ReturnResult: 0  (sizeInBytes=4)
	mov	0,r1
	store	r1,[r14+8]
	add	r15,48,r15
	pop	r13
	pop	r14
	ret
	jmp	_Label_2905
_Label_2904:
! ELSE...
	mov	1619,r13		! source line 1619
	mov	"\0\0EL",r10
! IF STATEMENT...
	mov	1619,r13		! source line 1619
	mov	"\0\0IF",r10
!   if numBytes >= 0 then goto _Label_2907		(int)
	load	[r14+20],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_2907
!	jmp	_Label_2906
_Label_2906:
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
_Label_2907:
! END IF...
_Label_2905:
! ASSIGNMENT STATEMENT...
	mov	1622,r13		! source line 1622
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
	mov	1623,r13		! source line 1623
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
	mov	1624,r13		! source line 1624
	mov	"\0\0WH",r10
_Label_2908:
!	jmp	_Label_2909
_Label_2909:
	mov	1624,r13		! source line 1624
	mov	"\0\0WB",r10
! IF STATEMENT...
	mov	1625,r13		! source line 1625
	mov	"\0\0IF",r10
!   if virtPage < numberOfPages then goto _Label_2914		(int)
	load	[r14+-36],r1
	load	[r14+8],r2
	load	[r2+4],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bl	_Label_2914
	jmp	_Label_2911
_Label_2914:
	mov	1626,r13		! source line 1626
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-28]
!   if intIsZero (_temp_2916) then goto _runtimeErrorNullPointer
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
!   Retrieve Result: targetName=_temp_2915  sizeInBytes=1
	loadb	[r15],r1
	storeb	r1,[r14+-11]
!   if _temp_2915 then goto _Label_2913 else goto _Label_2911
	loadb	[r14+-11],r1
	cmp	r1,0
	be	_Label_2911
	jmp	_Label_2913
_Label_2913:
	mov	1627,r13		! source line 1627
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-24]
!   if intIsZero (_temp_2918) then goto _runtimeErrorNullPointer
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
!   Retrieve Result: targetName=_temp_2917  sizeInBytes=1
	loadb	[r15],r1
	storeb	r1,[r14+-10]
!   if _temp_2917 then goto _Label_2912 else goto _Label_2911
	loadb	[r14+-10],r1
	cmp	r1,0
	be	_Label_2911
	jmp	_Label_2912
_Label_2911:
! THEN...
	mov	1628,r13		! source line 1628
	mov	"\0\0TN",r10
! RETURN STATEMENT...
	mov	1628,r13		! source line 1628
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,48,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_2912:
! ASSIGNMENT STATEMENT...
	mov	1630,r13		! source line 1630
	mov	"\0\0AS",r10
	mov	1630,r13		! source line 1630
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-16]
!   if intIsZero (_temp_2920) then goto _runtimeErrorNullPointer
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
!   Retrieve Result: targetName=_temp_2919  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-20]
!   destAddr = _temp_2919 + offset		(int)
	load	[r14+-20],r1
	load	[r14+-40],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-44]
! WHILE STATEMENT...
	mov	1631,r13		! source line 1631
	mov	"\0\0WH",r10
_Label_2921:
!   if offset >= 8192 then goto _Label_2923		(int)
	load	[r14+-40],r1
	mov	8192,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_2923
!	jmp	_Label_2922
_Label_2922:
	mov	1631,r13		! source line 1631
	mov	"\0\0WB",r10
! ASSIGNMENT STATEMENT...
	mov	1632,r13		! source line 1632
	mov	"\0\0AS",r10
!   if intIsZero (destAddr) then goto _runtimeErrorNullPointer
	load	[r14+-44],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   if intIsZero (kernelAddr) then goto _runtimeErrorNullPointer
	load	[r14+16],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Data Move: _temp_2924 = *kernelAddr  (sizeInBytes=1)
	load	[r14+16],r1
	loadb	[r1],r1
	storeb	r1,[r14+-9]
!   Data Move: *destAddr = _temp_2924  (sizeInBytes=1)
	loadb	[r14+-9],r1
	load	[r14+-44],r2
	storeb	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	1633,r13		! source line 1633
	mov	"\0\0AS",r10
!   offset = offset + 1		(int)
	load	[r14+-40],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-40]
! ASSIGNMENT STATEMENT...
	mov	1634,r13		! source line 1634
	mov	"\0\0AS",r10
!   kernelAddr = kernelAddr + 1		(int)
	load	[r14+16],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+16]
! ASSIGNMENT STATEMENT...
	mov	1635,r13		! source line 1635
	mov	"\0\0AS",r10
!   destAddr = destAddr + 1		(int)
	load	[r14+-44],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-44]
! ASSIGNMENT STATEMENT...
	mov	1636,r13		! source line 1636
	mov	"\0\0AS",r10
!   copiedSoFar = copiedSoFar + 1		(int)
	load	[r14+-32],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-32]
! IF STATEMENT...
	mov	1637,r13		! source line 1637
	mov	"\0\0IF",r10
!   if copiedSoFar != numBytes then goto _Label_2926		(int)
	load	[r14+-32],r1
	load	[r14+20],r2
	cmp	r1,r2
	bne	_Label_2926
!	jmp	_Label_2925
_Label_2925:
! THEN...
	mov	1638,r13		! source line 1638
	mov	"\0\0TN",r10
! RETURN STATEMENT...
	mov	1638,r13		! source line 1638
	mov	"\0\0RE",r10
!   ReturnResult: copiedSoFar  (sizeInBytes=4)
	load	[r14+-32],r1
	store	r1,[r14+8]
	add	r15,48,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_2926:
! END WHILE...
	jmp	_Label_2921
_Label_2923:
! ASSIGNMENT STATEMENT...
	mov	1641,r13		! source line 1641
	mov	"\0\0AS",r10
!   virtPage = virtPage + 1		(int)
	load	[r14+-36],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-36]
! ASSIGNMENT STATEMENT...
	mov	1642,r13		! source line 1642
	mov	"\0\0AS",r10
!   offset = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-40]
! END WHILE...
	jmp	_Label_2908
_Label_2910:
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_AddrSpace_20:
	.word	_sourceFileName
	.word	_Label_2927
	.word	16		! total size of parameters
	.word	44		! frame size = 44
	.word	_Label_2928
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2929
	.word	12
	.word	4
	.word	_Label_2930
	.word	16
	.word	4
	.word	_Label_2931
	.word	20
	.word	4
	.word	_Label_2932
	.word	-9
	.word	1
	.word	_Label_2933
	.word	-16
	.word	4
	.word	_Label_2934
	.word	-20
	.word	4
	.word	_Label_2935
	.word	-24
	.word	4
	.word	_Label_2936
	.word	-10
	.word	1
	.word	_Label_2937
	.word	-28
	.word	4
	.word	_Label_2938
	.word	-11
	.word	1
	.word	_Label_2939
	.word	-32
	.word	4
	.word	_Label_2940
	.word	-36
	.word	4
	.word	_Label_2941
	.word	-40
	.word	4
	.word	_Label_2942
	.word	-44
	.word	4
	.word	0
_Label_2927:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"CopyBytesToVirtual\0"
	.align
_Label_2928:
	.ascii	"Pself\0"
	.align
_Label_2929:
	.byte	'I'
	.ascii	"virtAddr\0"
	.align
_Label_2930:
	.byte	'I'
	.ascii	"kernelAddr\0"
	.align
_Label_2931:
	.byte	'I'
	.ascii	"numBytes\0"
	.align
_Label_2932:
	.byte	'C'
	.ascii	"_temp_2924\0"
	.align
_Label_2933:
	.byte	'?'
	.ascii	"_temp_2920\0"
	.align
_Label_2934:
	.byte	'?'
	.ascii	"_temp_2919\0"
	.align
_Label_2935:
	.byte	'?'
	.ascii	"_temp_2918\0"
	.align
_Label_2936:
	.byte	'C'
	.ascii	"_temp_2917\0"
	.align
_Label_2937:
	.byte	'?'
	.ascii	"_temp_2916\0"
	.align
_Label_2938:
	.byte	'C'
	.ascii	"_temp_2915\0"
	.align
_Label_2939:
	.byte	'I'
	.ascii	"copiedSoFar\0"
	.align
_Label_2940:
	.byte	'I'
	.ascii	"virtPage\0"
	.align
_Label_2941:
	.byte	'I'
	.ascii	"offset\0"
	.align
_Label_2942:
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
_Label_4185:
	push	r0
	sub	r1,1,r1
	bne	_Label_4185
	mov	1648,r13		! source line 1648
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! IF STATEMENT...
	mov	1672,r13		! source line 1672
	mov	"\0\0IF",r10
	mov	1672,r13		! source line 1672
	mov	"\0\0SE",r10
!   _temp_2946 = &sourceSize
	add	r14,-44,r1
	store	r1,[r14+-36]
	load	[r14+8],r1
	store	r1,[r14+-32]
!   if intIsZero (_temp_2947) then goto _runtimeErrorNullPointer
	load	[r14+-32],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Prepare Argument: offset=12  value=_temp_2946  sizeInBytes=4
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
!   Retrieve Result: targetName=_temp_2945  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-40]
!   if _temp_2945 >= 4 then goto _Label_2944		(int)
	load	[r14+-40],r1
	mov	4,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_2944
!	jmp	_Label_2943
_Label_2943:
! THEN...
	mov	1675,r13		! source line 1675
	mov	"\0\0TN",r10
! RETURN STATEMENT...
	mov	1675,r13		! source line 1675
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,56,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_2944:
! IF STATEMENT...
	mov	1679,r13		! source line 1679
	mov	"\0\0IF",r10
!   if sourceSize <= maxSize then goto _Label_2949		(int)
	load	[r14+-44],r1
	load	[r14+20],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	ble	_Label_2949
!	jmp	_Label_2948
_Label_2948:
! THEN...
	mov	1680,r13		! source line 1680
	mov	"\0\0TN",r10
! RETURN STATEMENT...
	mov	1680,r13		! source line 1680
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,56,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_2949:
! ASSIGNMENT STATEMENT...
	mov	1683,r13		! source line 1683
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
	mov	1685,r13		! source line 1685
	mov	"\0\0RE",r10
	mov	1685,r13		! source line 1685
	mov	"\0\0SE",r10
!   _temp_2952 = kernelAddr		(4 bytes)
	load	[r14+12],r1
	store	r1,[r14+-20]
!   _temp_2951 = _temp_2952 + 4		(int)
	load	[r14+-20],r1
	mov	4,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-24]
!   _temp_2953 = virtAddr + 4		(int)
	load	[r14+16],r1
	mov	4,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-16]
	load	[r14+8],r1
	store	r1,[r14+-12]
!   if intIsZero (_temp_2954) then goto _runtimeErrorNullPointer
	load	[r14+-12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Prepare Argument: offset=12  value=_temp_2951  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=_temp_2953  sizeInBytes=4
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
!   Retrieve Result: targetName=_temp_2950  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-28]
!   ReturnResult: _temp_2950  (sizeInBytes=4)
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
	.word	_Label_2955
	.word	16		! total size of parameters
	.word	52		! frame size = 52
	.word	_Label_2956
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2957
	.word	12
	.word	4
	.word	_Label_2958
	.word	16
	.word	4
	.word	_Label_2959
	.word	20
	.word	4
	.word	_Label_2960
	.word	-12
	.word	4
	.word	_Label_2961
	.word	-16
	.word	4
	.word	_Label_2962
	.word	-20
	.word	4
	.word	_Label_2963
	.word	-24
	.word	4
	.word	_Label_2964
	.word	-28
	.word	4
	.word	_Label_2965
	.word	-32
	.word	4
	.word	_Label_2966
	.word	-36
	.word	4
	.word	_Label_2967
	.word	-40
	.word	4
	.word	_Label_2968
	.word	-44
	.word	4
	.word	0
_Label_2955:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"GetStringFromVirtual\0"
	.align
_Label_2956:
	.ascii	"Pself\0"
	.align
_Label_2957:
	.byte	'P'
	.ascii	"kernelAddr\0"
	.align
_Label_2958:
	.byte	'I'
	.ascii	"virtAddr\0"
	.align
_Label_2959:
	.byte	'I'
	.ascii	"maxSize\0"
	.align
_Label_2960:
	.byte	'?'
	.ascii	"_temp_2954\0"
	.align
_Label_2961:
	.byte	'?'
	.ascii	"_temp_2953\0"
	.align
_Label_2962:
	.byte	'?'
	.ascii	"_temp_2952\0"
	.align
_Label_2963:
	.byte	'?'
	.ascii	"_temp_2951\0"
	.align
_Label_2964:
	.byte	'?'
	.ascii	"_temp_2950\0"
	.align
_Label_2965:
	.byte	'?'
	.ascii	"_temp_2947\0"
	.align
_Label_2966:
	.byte	'?'
	.ascii	"_temp_2946\0"
	.align
_Label_2967:
	.byte	'?'
	.ascii	"_temp_2945\0"
	.align
_Label_2968:
	.byte	'I'
	.ascii	"sourceSize\0"
	.align
! 
! ===============  CLASS DiskDriver  ===============
! 
! Dispatch Table:
! 
_P_Kernel_DiskDriver:
	.word	_Label_2969
	jmp	_Method_P_Kernel_DiskDriver_1	! 4:	Init
	jmp	_Method_P_Kernel_DiskDriver_2	! 8:	SynchReadSector
	jmp	_Method_P_Kernel_DiskDriver_3	! 12:	StartReadSector
	jmp	_Method_P_Kernel_DiskDriver_4	! 16:	SynchWriteSector
	jmp	_Method_P_Kernel_DiskDriver_5	! 20:	StartWriteSector
	.word	0
! 
! Class descriptor:
! 
_Label_2969:
	.word	1129070931		! Magic number 0x434c4153 == 'CLAS'
	.word	_Label_2970
	.word	_sourceFileName
	.word	313		! line number
	.word	68		! size of instances, in bytes
	.word	_P_Kernel_DiskDriver
	.word	_P_System_Object
	.word	0
_Label_2970:
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
_Label_4186:
	push	r0
	sub	r1,1,r1
	bne	_Label_4186
	mov	2750,r13		! source line 2750
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   _temp_2971 = _StringConst_146
	set	_StringConst_146,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=8  value=_temp_2971  sizeInBytes=4
	load	[r14+-28],r1
	store	r1,[r15+0]
!   Call the function
	mov	2751,r13		! source line 2751
	mov	"\0\0CE",r10
	call	print
! ASSIGNMENT STATEMENT...
	mov	2752,r13		! source line 2752
	mov	"\0\0AS",r10
!   DISK_STATUS_WORD_ADDRESS = 16776968		(4 bytes)
	set	16776968,r1
	load	[r14+8],r2
	store	r1,[r2+4]
! ASSIGNMENT STATEMENT...
	mov	2753,r13		! source line 2753
	mov	"\0\0AS",r10
!   DISK_COMMAND_WORD_ADDRESS = 16776968		(4 bytes)
	set	16776968,r1
	load	[r14+8],r2
	store	r1,[r2+8]
! ASSIGNMENT STATEMENT...
	mov	2754,r13		! source line 2754
	mov	"\0\0AS",r10
!   DISK_MEMORY_ADDRESS_REGISTER = 16776972		(4 bytes)
	set	16776972,r1
	load	[r14+8],r2
	store	r1,[r2+12]
! ASSIGNMENT STATEMENT...
	mov	2755,r13		! source line 2755
	mov	"\0\0AS",r10
!   DISK_SECTOR_NUMBER_REGISTER = 16776976		(4 bytes)
	set	16776976,r1
	load	[r14+8],r2
	store	r1,[r2+16]
! ASSIGNMENT STATEMENT...
	mov	2756,r13		! source line 2756
	mov	"\0\0AS",r10
!   DISK_SECTOR_COUNT_REGISTER = 16776980		(4 bytes)
	set	16776980,r1
	load	[r14+8],r2
	store	r1,[r2+20]
! ASSIGNMENT STATEMENT...
	mov	2757,r13		! source line 2757
	mov	"\0\0AS",r10
!   semToSignalOnCompletion = 0		(4 bytes)
	mov	0,r1
	load	[r14+8],r2
	store	r1,[r2+24]
! ASSIGNMENT STATEMENT...
	mov	2758,r13		! source line 2758
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
	mov	2759,r13		! source line 2759
	mov	"\0\0SE",r10
!   _temp_2973 = &semUsedInSynchMethods
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
	mov	2760,r13		! source line 2760
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
	mov	2761,r13		! source line 2761
	mov	"\0\0SE",r10
!   _temp_2975 = &diskBusy
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
	mov	2761,r13		! source line 2761
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
	.word	_Label_2976
	.word	4		! total size of parameters
	.word	28		! frame size = 28
	.word	_Label_2977
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2978
	.word	-12
	.word	4
	.word	_Label_2979
	.word	-16
	.word	4
	.word	_Label_2980
	.word	-20
	.word	4
	.word	_Label_2981
	.word	-24
	.word	4
	.word	_Label_2982
	.word	-28
	.word	4
	.word	0
_Label_2976:
	.ascii	"DiskDriver"
	.ascii	"::"
	.ascii	"Init\0"
	.align
_Label_2977:
	.ascii	"Pself\0"
	.align
_Label_2978:
	.byte	'?'
	.ascii	"_temp_2975\0"
	.align
_Label_2979:
	.byte	'?'
	.ascii	"_temp_2974\0"
	.align
_Label_2980:
	.byte	'?'
	.ascii	"_temp_2973\0"
	.align
_Label_2981:
	.byte	'?'
	.ascii	"_temp_2972\0"
	.align
_Label_2982:
	.byte	'?'
	.ascii	"_temp_2971\0"
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
_Label_4187:
	push	r0
	sub	r1,1,r1
	bne	_Label_4187
	mov	2766,r13		! source line 2766
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! SEND STATEMENT...
	mov	2779,r13		! source line 2779
	mov	"\0\0SE",r10
!   _temp_2983 = &diskBusy
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
	mov	2780,r13		! source line 2780
	mov	"\0\0WH",r10
_Label_2984:
!	jmp	_Label_2985
_Label_2985:
	mov	2780,r13		! source line 2780
	mov	"\0\0WB",r10
! SEND STATEMENT...
	mov	2782,r13		! source line 2782
	mov	"\0\0SE",r10
!   _temp_2987 = &semUsedInSynchMethods
	load	[r14+8],r1
	add	r1,28,r1
	store	r1,[r14+-48]
	load	[r14+8],r1
	store	r1,[r14+-44]
!   if intIsZero (_temp_2988) then goto _runtimeErrorNullPointer
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
!   Prepare Argument: offset=24  value=_temp_2987  sizeInBytes=4
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
	mov	2784,r13		! source line 2784
	mov	"\0\0SE",r10
!   _temp_2989 = &semUsedInSynchMethods
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
	mov	2787,r13		! source line 2787
	mov	"\0\0SW",r10
!   Evaluate the switch expression...
!   if intIsZero (DISK_STATUS_WORD_ADDRESS) then goto _runtimeErrorNullPointer
	load	[r14+8],r1
	load	[r1+4],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Data Move: _temp_2998 = *DISK_STATUS_WORD_ADDRESS  (sizeInBytes=4)
	load	[r14+8],r1
	load	[r1+4],r1
	load	[r1],r1
	store	r1,[r14+-36]
!   Branch to the right case label
	load	[r14+-36],r1
	cmp	r1,1
	be	_Label_2992
	cmp	r1,2
	be	_Label_2993
	cmp	r1,3
	be	_Label_2994
	cmp	r1,4
	be	_Label_2995
	cmp	r1,5
	be	_Label_2996
	cmp	r1,6
	be	_Label_2997
	jmp	_Label_2990
! CASE 1...
_Label_2992:
! SEND STATEMENT...
	mov	2789,r13		! source line 2789
	mov	"\0\0SE",r10
!   _temp_2999 = &diskBusy
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
	mov	2790,r13		! source line 2790
	mov	"\0\0RE",r10
	add	r15,68,r15
	pop	r13
	pop	r14
	ret
! CASE 2...
_Label_2993:
! CALL STATEMENT...
!   _temp_3000 = _StringConst_147
	set	_StringConst_147,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=8  value=_temp_3000  sizeInBytes=4
	load	[r14+-28],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	2792,r13		! source line 2792
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! CASE 3...
_Label_2994:
! CALL STATEMENT...
!   _temp_3001 = _StringConst_148
	set	_StringConst_148,r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=8  value=_temp_3001  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	2794,r13		! source line 2794
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! CASE 4...
_Label_2995:
! CALL STATEMENT...
!   _temp_3002 = _StringConst_149
	set	_StringConst_149,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_3002  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	2796,r13		! source line 2796
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! CASE 5...
_Label_2996:
! BREAK STATEMENT...
	mov	2800,r13		! source line 2800
	mov	"\0\0BR",r10
	jmp	_Label_2991
! CASE 6...
_Label_2997:
! CALL STATEMENT...
!   _temp_3003 = _StringConst_150
	set	_StringConst_150,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_3003  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	2802,r13		! source line 2802
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! DEFAULT CASE...
_Label_2990:
! CALL STATEMENT...
!   _temp_3004 = _StringConst_151
	set	_StringConst_151,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_3004  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	2804,r13		! source line 2804
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END SWITCH...
_Label_2991:
! END WHILE...
	jmp	_Label_2984
_Label_2986:
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_DiskDriver_2:
	.word	_sourceFileName
	.word	_Label_3005
	.word	16		! total size of parameters
	.word	64		! frame size = 64
	.word	_Label_3006
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_3007
	.word	12
	.word	4
	.word	_Label_3008
	.word	16
	.word	4
	.word	_Label_3009
	.word	20
	.word	4
	.word	_Label_3010
	.word	-12
	.word	4
	.word	_Label_3011
	.word	-16
	.word	4
	.word	_Label_3012
	.word	-20
	.word	4
	.word	_Label_3013
	.word	-24
	.word	4
	.word	_Label_3014
	.word	-28
	.word	4
	.word	_Label_3015
	.word	-32
	.word	4
	.word	_Label_3016
	.word	-36
	.word	4
	.word	_Label_3017
	.word	-40
	.word	4
	.word	_Label_3018
	.word	-44
	.word	4
	.word	_Label_3019
	.word	-48
	.word	4
	.word	_Label_3020
	.word	-52
	.word	4
	.word	0
_Label_3005:
	.ascii	"DiskDriver"
	.ascii	"::"
	.ascii	"SynchReadSector\0"
	.align
_Label_3006:
	.ascii	"Pself\0"
	.align
_Label_3007:
	.byte	'I'
	.ascii	"sectorAddr\0"
	.align
_Label_3008:
	.byte	'I'
	.ascii	"numberOfSectors\0"
	.align
_Label_3009:
	.byte	'I'
	.ascii	"memoryAddr\0"
	.align
_Label_3010:
	.byte	'?'
	.ascii	"_temp_3004\0"
	.align
_Label_3011:
	.byte	'?'
	.ascii	"_temp_3003\0"
	.align
_Label_3012:
	.byte	'?'
	.ascii	"_temp_3002\0"
	.align
_Label_3013:
	.byte	'?'
	.ascii	"_temp_3001\0"
	.align
_Label_3014:
	.byte	'?'
	.ascii	"_temp_3000\0"
	.align
_Label_3015:
	.byte	'?'
	.ascii	"_temp_2999\0"
	.align
_Label_3016:
	.byte	'?'
	.ascii	"_temp_2998\0"
	.align
_Label_3017:
	.byte	'?'
	.ascii	"_temp_2989\0"
	.align
_Label_3018:
	.byte	'?'
	.ascii	"_temp_2988\0"
	.align
_Label_3019:
	.byte	'?'
	.ascii	"_temp_2987\0"
	.align
_Label_3020:
	.byte	'?'
	.ascii	"_temp_2983\0"
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
	mov	2813,r13		! source line 2813
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	2828,r13		! source line 2828
	mov	"\0\0AS",r10
!   semToSignalOnCompletion = whoCares		(4 bytes)
	load	[r14+24],r1
	load	[r14+8],r2
	store	r1,[r2+24]
! ASSIGNMENT STATEMENT...
	mov	2831,r13		! source line 2831
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
	mov	2832,r13		! source line 2832
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
	mov	2833,r13		! source line 2833
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
	mov	2834,r13		! source line 2834
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
	mov	2834,r13		! source line 2834
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
	.word	_Label_3021
	.word	20		! total size of parameters
	.word	0		! frame size = 0
	.word	_Label_3022
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_3023
	.word	12
	.word	4
	.word	_Label_3024
	.word	16
	.word	4
	.word	_Label_3025
	.word	20
	.word	4
	.word	_Label_3026
	.word	24
	.word	4
	.word	0
_Label_3021:
	.ascii	"DiskDriver"
	.ascii	"::"
	.ascii	"StartReadSector\0"
	.align
_Label_3022:
	.ascii	"Pself\0"
	.align
_Label_3023:
	.byte	'I'
	.ascii	"sectorAddr\0"
	.align
_Label_3024:
	.byte	'I'
	.ascii	"numberOfSectors\0"
	.align
_Label_3025:
	.byte	'I'
	.ascii	"memoryAddr\0"
	.align
_Label_3026:
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
_Label_4188:
	push	r0
	sub	r1,1,r1
	bne	_Label_4188
	mov	2839,r13		! source line 2839
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! SEND STATEMENT...
	mov	2851,r13		! source line 2851
	mov	"\0\0SE",r10
!   _temp_3027 = &diskBusy
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
	mov	2852,r13		! source line 2852
	mov	"\0\0WH",r10
_Label_3028:
!	jmp	_Label_3029
_Label_3029:
	mov	2852,r13		! source line 2852
	mov	"\0\0WB",r10
! SEND STATEMENT...
	mov	2853,r13		! source line 2853
	mov	"\0\0SE",r10
!   _temp_3031 = &semUsedInSynchMethods
	load	[r14+8],r1
	add	r1,28,r1
	store	r1,[r14+-48]
	load	[r14+8],r1
	store	r1,[r14+-44]
!   if intIsZero (_temp_3032) then goto _runtimeErrorNullPointer
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
!   Prepare Argument: offset=24  value=_temp_3031  sizeInBytes=4
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
	mov	2855,r13		! source line 2855
	mov	"\0\0SE",r10
!   _temp_3033 = &semUsedInSynchMethods
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
	mov	2858,r13		! source line 2858
	mov	"\0\0SW",r10
!   Evaluate the switch expression...
!   if intIsZero (DISK_STATUS_WORD_ADDRESS) then goto _runtimeErrorNullPointer
	load	[r14+8],r1
	load	[r1+4],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Data Move: _temp_3042 = *DISK_STATUS_WORD_ADDRESS  (sizeInBytes=4)
	load	[r14+8],r1
	load	[r1+4],r1
	load	[r1],r1
	store	r1,[r14+-36]
!   Branch to the right case label
	load	[r14+-36],r1
	cmp	r1,1
	be	_Label_3036
	cmp	r1,2
	be	_Label_3037
	cmp	r1,3
	be	_Label_3038
	cmp	r1,4
	be	_Label_3039
	cmp	r1,5
	be	_Label_3040
	cmp	r1,6
	be	_Label_3041
	jmp	_Label_3034
! CASE 1...
_Label_3036:
! SEND STATEMENT...
	mov	2860,r13		! source line 2860
	mov	"\0\0SE",r10
!   _temp_3043 = &diskBusy
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
	mov	2861,r13		! source line 2861
	mov	"\0\0RE",r10
	add	r15,68,r15
	pop	r13
	pop	r14
	ret
! CASE 2...
_Label_3037:
! CALL STATEMENT...
!   _temp_3044 = _StringConst_152
	set	_StringConst_152,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=8  value=_temp_3044  sizeInBytes=4
	load	[r14+-28],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	2863,r13		! source line 2863
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! CASE 3...
_Label_3038:
! CALL STATEMENT...
!   _temp_3045 = _StringConst_153
	set	_StringConst_153,r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=8  value=_temp_3045  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	2865,r13		! source line 2865
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! CASE 4...
_Label_3039:
! CALL STATEMENT...
!   _temp_3046 = _StringConst_154
	set	_StringConst_154,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_3046  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	2867,r13		! source line 2867
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! CASE 5...
_Label_3040:
! BREAK STATEMENT...
	mov	2871,r13		! source line 2871
	mov	"\0\0BR",r10
	jmp	_Label_3035
! CASE 6...
_Label_3041:
! CALL STATEMENT...
!   _temp_3047 = _StringConst_155
	set	_StringConst_155,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_3047  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	2873,r13		! source line 2873
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! DEFAULT CASE...
_Label_3034:
! CALL STATEMENT...
!   _temp_3048 = _StringConst_156
	set	_StringConst_156,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_3048  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	2875,r13		! source line 2875
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END SWITCH...
_Label_3035:
! END WHILE...
	jmp	_Label_3028
_Label_3030:
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_DiskDriver_4:
	.word	_sourceFileName
	.word	_Label_3049
	.word	16		! total size of parameters
	.word	64		! frame size = 64
	.word	_Label_3050
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_3051
	.word	12
	.word	4
	.word	_Label_3052
	.word	16
	.word	4
	.word	_Label_3053
	.word	20
	.word	4
	.word	_Label_3054
	.word	-12
	.word	4
	.word	_Label_3055
	.word	-16
	.word	4
	.word	_Label_3056
	.word	-20
	.word	4
	.word	_Label_3057
	.word	-24
	.word	4
	.word	_Label_3058
	.word	-28
	.word	4
	.word	_Label_3059
	.word	-32
	.word	4
	.word	_Label_3060
	.word	-36
	.word	4
	.word	_Label_3061
	.word	-40
	.word	4
	.word	_Label_3062
	.word	-44
	.word	4
	.word	_Label_3063
	.word	-48
	.word	4
	.word	_Label_3064
	.word	-52
	.word	4
	.word	0
_Label_3049:
	.ascii	"DiskDriver"
	.ascii	"::"
	.ascii	"SynchWriteSector\0"
	.align
_Label_3050:
	.ascii	"Pself\0"
	.align
_Label_3051:
	.byte	'I'
	.ascii	"sectorAddr\0"
	.align
_Label_3052:
	.byte	'I'
	.ascii	"numberOfSectors\0"
	.align
_Label_3053:
	.byte	'I'
	.ascii	"memoryAddr\0"
	.align
_Label_3054:
	.byte	'?'
	.ascii	"_temp_3048\0"
	.align
_Label_3055:
	.byte	'?'
	.ascii	"_temp_3047\0"
	.align
_Label_3056:
	.byte	'?'
	.ascii	"_temp_3046\0"
	.align
_Label_3057:
	.byte	'?'
	.ascii	"_temp_3045\0"
	.align
_Label_3058:
	.byte	'?'
	.ascii	"_temp_3044\0"
	.align
_Label_3059:
	.byte	'?'
	.ascii	"_temp_3043\0"
	.align
_Label_3060:
	.byte	'?'
	.ascii	"_temp_3042\0"
	.align
_Label_3061:
	.byte	'?'
	.ascii	"_temp_3033\0"
	.align
_Label_3062:
	.byte	'?'
	.ascii	"_temp_3032\0"
	.align
_Label_3063:
	.byte	'?'
	.ascii	"_temp_3031\0"
	.align
_Label_3064:
	.byte	'?'
	.ascii	"_temp_3027\0"
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
	mov	2884,r13		! source line 2884
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	2899,r13		! source line 2899
	mov	"\0\0AS",r10
!   semToSignalOnCompletion = whoCares		(4 bytes)
	load	[r14+24],r1
	load	[r14+8],r2
	store	r1,[r2+24]
! ASSIGNMENT STATEMENT...
	mov	2901,r13		! source line 2901
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
	mov	2902,r13		! source line 2902
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
	mov	2903,r13		! source line 2903
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
	mov	2904,r13		! source line 2904
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
	mov	2904,r13		! source line 2904
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
	.word	_Label_3065
	.word	20		! total size of parameters
	.word	0		! frame size = 0
	.word	_Label_3066
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_3067
	.word	12
	.word	4
	.word	_Label_3068
	.word	16
	.word	4
	.word	_Label_3069
	.word	20
	.word	4
	.word	_Label_3070
	.word	24
	.word	4
	.word	0
_Label_3065:
	.ascii	"DiskDriver"
	.ascii	"::"
	.ascii	"StartWriteSector\0"
	.align
_Label_3066:
	.ascii	"Pself\0"
	.align
_Label_3067:
	.byte	'I'
	.ascii	"sectorAddr\0"
	.align
_Label_3068:
	.byte	'I'
	.ascii	"numberOfSectors\0"
	.align
_Label_3069:
	.byte	'I'
	.ascii	"memoryAddr\0"
	.align
_Label_3070:
	.byte	'P'
	.ascii	"whoCares\0"
	.align
! 
! ===============  CLASS FileManager  ===============
! 
! Dispatch Table:
! 
_P_Kernel_FileManager:
	.word	_Label_3071
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
_Label_3071:
	.word	1129070931		! Magic number 0x434c4153 == 'CLAS'
	.word	_Label_3072
	.word	_sourceFileName
	.word	336		! line number
	.word	800		! size of instances, in bytes
	.word	_P_Kernel_FileManager
	.word	_P_System_Object
	.word	0
_Label_3072:
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
_Label_4189:
	push	r0
	sub	r1,1,r1
	bne	_Label_4189
	mov	2915,r13		! source line 2915
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   _temp_3073 = _StringConst_157
	set	_StringConst_157,r1
	store	r1,[r14+-940]
!   Prepare Argument: offset=8  value=_temp_3073  sizeInBytes=4
	load	[r14+-940],r1
	store	r1,[r15+0]
!   Call the function
	mov	2922,r13		! source line 2922
	mov	"\0\0CE",r10
	call	print
! ASSIGNMENT STATEMENT...
	mov	2923,r13		! source line 2923
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
	mov	2924,r13		! source line 2924
	mov	"\0\0SE",r10
!   _temp_3075 = &fileManagerLock
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
	mov	2927,r13		! source line 2927
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
	mov	2928,r13		! source line 2928
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
	mov	2929,r13		! source line 2929
	mov	"\0\0SE",r10
!   _temp_3078 = &anFCBBecameFree
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
	mov	2930,r13		! source line 2930
	mov	"\0\0AS",r10
!   _temp_3079 = &fcbTable
	load	[r14+8],r1
	add	r1,24,r1
	store	r1,[r14+-916]
!   NEW ARRAY Constructor...
!   _temp_3081 = &_temp_3080
	add	r14,-912,r1
	store	r1,[r14+-508]
!   _temp_3081 = _temp_3081 + 4
	load	[r14+-508],r1
	add	r1,4,r1
	store	r1,[r14+-508]
!   Next value...
!   NEW CLASS Constructor...
!   ZeroMemory: _temp_3083 = zeros  (sizeInBytes=40)
	add	r14,-500,r4
	mov	10,r3
_Label_4190:
	store	r0,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_4190
!   _temp_3083 = _P_Kernel_FileControlBlock
	set	_P_Kernel_FileControlBlock,r1
	store	r1,[r14+-500]
	mov	10,r1
	store	r1,[r14+-504]
_Label_3085:
!   Data Move: *_temp_3081 = _temp_3083  (sizeInBytes=40)
	add	r14,-500,r5
	load	[r14+-508],r4
	mov	10,r3
_Label_4191:
	load	[r5],r1
	add	r5,4,r5
	store	r1,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_4191
!   _temp_3081 = _temp_3081 + 40
	load	[r14+-508],r1
	add	r1,40,r1
	store	r1,[r14+-508]
!   _temp_3082 = _temp_3082 + -1
	load	[r14+-504],r1
	add	r1,-1,r1
	store	r1,[r14+-504]
!   if intNotZero (_temp_3082) then goto _Label_3085
	load	[r14+-504],r1
	cmp	r1,r0
	bne	_Label_3085
!   Initialize the array size...
	mov	10,r1
	store	r1,[r14+-912]
!   _temp_3086 = &_temp_3080
	add	r14,-912,r1
	store	r1,[r14+-456]
!   make sure array has size 10
	load	[r14+-916],r1
	load	[r1],r1
	set	10, r2
	cmp	r1,0
	be	_Label_4192
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bne	_runtimeErrorWrongArraySize
_Label_4192:
!   make sure array has size 10
	load	[r14+-456],r1
	load	[r1],r1
	set	10, r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bne	_runtimeErrorWrongArraySize
!   Data Move: *_temp_3079 = *_temp_3086  (sizeInBytes=404)
	load	[r14+-456],r5
	load	[r14+-916],r4
	mov	101,r3
_Label_4193:
	load	[r5],r1
	add	r5,4,r5
	store	r1,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_4193
! FOR STATEMENT...
	mov	2932,r13		! source line 2932
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_3091 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-452]
!   Calculate and save the FOR-LOOP ending value
!   _temp_3092 = 9		(4 bytes)
	mov	9,r1
	store	r1,[r14+-448]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_3091  (sizeInBytes=4)
	load	[r14+-452],r1
	store	r1,[r14+-944]
_Label_3087:
!   Perform the FOR-LOOP termination test
!   if i > _temp_3092 then goto _Label_3090		
	load	[r14+-944],r1
	load	[r14+-448],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_3090
_Label_3088:
	mov	2932,r13		! source line 2932
	mov	"\0\0FB",r10
! ASSIGNMENT STATEMENT...
	mov	2933,r13		! source line 2933
	mov	"\0\0AS",r10
!   _temp_3093 = &fcbTable
	load	[r14+8],r1
	add	r1,24,r1
	store	r1,[r14+-444]
!   Move address of _temp_3093 [i ] into _temp_3094
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
!   _temp_3095 = _temp_3094 + 12
	load	[r14+-440],r1
	add	r1,12,r1
	store	r1,[r14+-436]
!   Data Move: *_temp_3095 = i  (sizeInBytes=4)
	load	[r14+-944],r1
	load	[r14+-436],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	2934,r13		! source line 2934
	mov	"\0\0SE",r10
!   _temp_3096 = &fcbTable
	load	[r14+8],r1
	add	r1,24,r1
	store	r1,[r14+-432]
!   Move address of _temp_3096 [i ] into _temp_3097
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
	mov	2935,r13		! source line 2935
	mov	"\0\0SE",r10
!   _temp_3099 = &fcbTable
	load	[r14+8],r1
	add	r1,24,r1
	store	r1,[r14+-420]
!   Move address of _temp_3099 [i ] into _temp_3100
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
!   _temp_3098 = _temp_3100		(4 bytes)
	load	[r14+-416],r1
	store	r1,[r14+-424]
!   _temp_3101 = &fcbFreeList
	load	[r14+8],r1
	add	r1,444,r1
	store	r1,[r14+-412]
!   Prepare Argument: offset=12  value=_temp_3098  sizeInBytes=4
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
_Label_3089:
!   i = i + 1
	load	[r14+-944],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-944]
	jmp	_Label_3087
! END FOR
_Label_3090:
! ASSIGNMENT STATEMENT...
	mov	2939,r13		! source line 2939
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
	mov	2940,r13		! source line 2940
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
	mov	2941,r13		! source line 2941
	mov	"\0\0SE",r10
!   _temp_3104 = &anOpenFileBecameFree
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
	mov	2942,r13		! source line 2942
	mov	"\0\0AS",r10
!   _temp_3105 = &openFileTable
	load	[r14+8],r1
	add	r1,456,r1
	store	r1,[r14+-396]
!   NEW ARRAY Constructor...
!   _temp_3107 = &_temp_3106
	add	r14,-392,r1
	store	r1,[r14+-108]
!   _temp_3107 = _temp_3107 + 4
	load	[r14+-108],r1
	add	r1,4,r1
	store	r1,[r14+-108]
!   Next value...
!   NEW CLASS Constructor...
!   ZeroMemory: _temp_3109 = zeros  (sizeInBytes=28)
	add	r14,-100,r4
	mov	7,r3
_Label_4194:
	store	r0,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_4194
!   _temp_3109 = _P_Kernel_OpenFile
	set	_P_Kernel_OpenFile,r1
	store	r1,[r14+-100]
	mov	10,r1
	store	r1,[r14+-104]
_Label_3111:
!   Data Move: *_temp_3107 = _temp_3109  (sizeInBytes=28)
	add	r14,-100,r5
	load	[r14+-108],r4
	mov	7,r3
_Label_4195:
	load	[r5],r1
	add	r5,4,r5
	store	r1,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_4195
!   _temp_3107 = _temp_3107 + 28
	load	[r14+-108],r1
	add	r1,28,r1
	store	r1,[r14+-108]
!   _temp_3108 = _temp_3108 + -1
	load	[r14+-104],r1
	add	r1,-1,r1
	store	r1,[r14+-104]
!   if intNotZero (_temp_3108) then goto _Label_3111
	load	[r14+-104],r1
	cmp	r1,r0
	bne	_Label_3111
!   Initialize the array size...
	mov	10,r1
	store	r1,[r14+-392]
!   _temp_3112 = &_temp_3106
	add	r14,-392,r1
	store	r1,[r14+-68]
!   make sure array has size 10
	load	[r14+-396],r1
	load	[r1],r1
	set	10, r2
	cmp	r1,0
	be	_Label_4196
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bne	_runtimeErrorWrongArraySize
_Label_4196:
!   make sure array has size 10
	load	[r14+-68],r1
	load	[r1],r1
	set	10, r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bne	_runtimeErrorWrongArraySize
!   Data Move: *_temp_3105 = *_temp_3112  (sizeInBytes=284)
	load	[r14+-68],r5
	load	[r14+-396],r4
	mov	71,r3
_Label_4197:
	load	[r5],r1
	add	r5,4,r5
	store	r1,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_4197
! FOR STATEMENT...
	mov	2944,r13		! source line 2944
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_3117 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-64]
!   Calculate and save the FOR-LOOP ending value
!   _temp_3118 = 9		(4 bytes)
	mov	9,r1
	store	r1,[r14+-60]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_3117  (sizeInBytes=4)
	load	[r14+-64],r1
	store	r1,[r14+-944]
_Label_3113:
!   Perform the FOR-LOOP termination test
!   if i > _temp_3118 then goto _Label_3116		
	load	[r14+-944],r1
	load	[r14+-60],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_3116
_Label_3114:
	mov	2944,r13		! source line 2944
	mov	"\0\0FB",r10
! ASSIGNMENT STATEMENT...
	mov	2945,r13		! source line 2945
	mov	"\0\0AS",r10
!   _temp_3119 = &openFileTable
	load	[r14+8],r1
	add	r1,456,r1
	store	r1,[r14+-56]
!   Move address of _temp_3119 [i ] into _temp_3120
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
!   _temp_3121 = _temp_3120 + 12
	load	[r14+-52],r1
	add	r1,12,r1
	store	r1,[r14+-48]
!   Data Move: *_temp_3121 = 1  (sizeInBytes=4)
	mov	1,r1
	load	[r14+-48],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	2946,r13		! source line 2946
	mov	"\0\0SE",r10
!   _temp_3123 = &openFileTable
	load	[r14+8],r1
	add	r1,456,r1
	store	r1,[r14+-40]
!   Move address of _temp_3123 [i ] into _temp_3124
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
!   _temp_3122 = _temp_3124		(4 bytes)
	load	[r14+-36],r1
	store	r1,[r14+-44]
!   _temp_3125 = &openFileFreeList
	load	[r14+8],r1
	add	r1,756,r1
	store	r1,[r14+-32]
!   Prepare Argument: offset=12  value=_temp_3122  sizeInBytes=4
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
_Label_3115:
!   i = i + 1
	load	[r14+-944],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-944]
	jmp	_Label_3113
! END FOR
_Label_3116:
! ASSIGNMENT STATEMENT...
	mov	2950,r13		! source line 2950
	mov	"\0\0AS",r10
!   NEW CLASS Constructor...
!   ZeroMemory: serialTerminalFile = zeros  (sizeInBytes=28)
	load	[r14+8],r4
	add	r4,772,r4
	mov	7,r3
_Label_4198:
	store	r0,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_4198
!   serialTerminalFile = _P_Kernel_OpenFile
	set	_P_Kernel_OpenFile,r1
	load	[r14+8],r2
	store	r1,[r2+772]
! ASSIGNMENT STATEMENT...
	mov	2951,r13		! source line 2951
	mov	"\0\0AS",r10
!   _temp_3127 = &serialTerminalFile
	load	[r14+8],r1
	add	r1,772,r1
	store	r1,[r14+-24]
!   _temp_3128 = _temp_3127 + 12
	load	[r14+-24],r1
	add	r1,12,r1
	store	r1,[r14+-20]
!   Data Move: *_temp_3128 = 2  (sizeInBytes=4)
	mov	2,r1
	load	[r14+-20],r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	2956,r13		! source line 2956
	mov	"\0\0AS",r10
	mov	2956,r13		! source line 2956
	mov	"\0\0SE",r10
!   _temp_3129 = &_P_Kernel_frameManager
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
	mov	2957,r13		! source line 2957
	mov	"\0\0SE",r10
!   _temp_3130 = &_P_Kernel_diskDriver
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
	mov	2957,r13		! source line 2957
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
	.word	_Label_3131
	.word	4		! total size of parameters
	.word	952		! frame size = 952
	.word	_Label_3132
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_3133
	.word	-12
	.word	4
	.word	_Label_3134
	.word	-16
	.word	4
	.word	_Label_3135
	.word	-20
	.word	4
	.word	_Label_3136
	.word	-24
	.word	4
	.word	_Label_3137
	.word	-28
	.word	4
	.word	_Label_3138
	.word	-32
	.word	4
	.word	_Label_3139
	.word	-36
	.word	4
	.word	_Label_3140
	.word	-40
	.word	4
	.word	_Label_3141
	.word	-44
	.word	4
	.word	_Label_3142
	.word	-48
	.word	4
	.word	_Label_3143
	.word	-52
	.word	4
	.word	_Label_3144
	.word	-56
	.word	4
	.word	_Label_3145
	.word	-60
	.word	4
	.word	_Label_3146
	.word	-64
	.word	4
	.word	_Label_3147
	.word	-68
	.word	4
	.word	_Label_3148
	.word	-72
	.word	4
	.word	_Label_3149
	.word	-100
	.word	28
	.word	_Label_3150
	.word	-104
	.word	4
	.word	_Label_3151
	.word	-108
	.word	4
	.word	_Label_3152
	.word	-392
	.word	284
	.word	_Label_3153
	.word	-396
	.word	4
	.word	_Label_3154
	.word	-400
	.word	4
	.word	_Label_3155
	.word	-404
	.word	4
	.word	_Label_3156
	.word	-408
	.word	4
	.word	_Label_3157
	.word	-412
	.word	4
	.word	_Label_3158
	.word	-416
	.word	4
	.word	_Label_3159
	.word	-420
	.word	4
	.word	_Label_3160
	.word	-424
	.word	4
	.word	_Label_3161
	.word	-428
	.word	4
	.word	_Label_3162
	.word	-432
	.word	4
	.word	_Label_3163
	.word	-436
	.word	4
	.word	_Label_3164
	.word	-440
	.word	4
	.word	_Label_3165
	.word	-444
	.word	4
	.word	_Label_3166
	.word	-448
	.word	4
	.word	_Label_3167
	.word	-452
	.word	4
	.word	_Label_3168
	.word	-456
	.word	4
	.word	_Label_3169
	.word	-460
	.word	4
	.word	_Label_3170
	.word	-500
	.word	40
	.word	_Label_3171
	.word	-504
	.word	4
	.word	_Label_3172
	.word	-508
	.word	4
	.word	_Label_3173
	.word	-912
	.word	404
	.word	_Label_3174
	.word	-916
	.word	4
	.word	_Label_3175
	.word	-920
	.word	4
	.word	_Label_3176
	.word	-924
	.word	4
	.word	_Label_3177
	.word	-928
	.word	4
	.word	_Label_3178
	.word	-932
	.word	4
	.word	_Label_3179
	.word	-936
	.word	4
	.word	_Label_3180
	.word	-940
	.word	4
	.word	_Label_3181
	.word	-944
	.word	4
	.word	0
_Label_3131:
	.ascii	"FileManager"
	.ascii	"::"
	.ascii	"Init\0"
	.align
_Label_3132:
	.ascii	"Pself\0"
	.align
_Label_3133:
	.byte	'?'
	.ascii	"_temp_3130\0"
	.align
_Label_3134:
	.byte	'?'
	.ascii	"_temp_3129\0"
	.align
_Label_3135:
	.byte	'?'
	.ascii	"_temp_3128\0"
	.align
_Label_3136:
	.byte	'?'
	.ascii	"_temp_3127\0"
	.align
_Label_3137:
	.byte	'?'
	.ascii	"_temp_3126\0"
	.align
_Label_3138:
	.byte	'?'
	.ascii	"_temp_3125\0"
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
	.ascii	"_temp_3112\0"
	.align
_Label_3148:
	.byte	'?'
	.ascii	"_temp_3110\0"
	.align
_Label_3149:
	.byte	'?'
	.ascii	"_temp_3109\0"
	.align
_Label_3150:
	.byte	'?'
	.ascii	"_temp_3108\0"
	.align
_Label_3151:
	.byte	'?'
	.ascii	"_temp_3107\0"
	.align
_Label_3152:
	.byte	'?'
	.ascii	"_temp_3106\0"
	.align
_Label_3153:
	.byte	'?'
	.ascii	"_temp_3105\0"
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
	.ascii	"_temp_3100\0"
	.align
_Label_3159:
	.byte	'?'
	.ascii	"_temp_3099\0"
	.align
_Label_3160:
	.byte	'?'
	.ascii	"_temp_3098\0"
	.align
_Label_3161:
	.byte	'?'
	.ascii	"_temp_3097\0"
	.align
_Label_3162:
	.byte	'?'
	.ascii	"_temp_3096\0"
	.align
_Label_3163:
	.byte	'?'
	.ascii	"_temp_3095\0"
	.align
_Label_3164:
	.byte	'?'
	.ascii	"_temp_3094\0"
	.align
_Label_3165:
	.byte	'?'
	.ascii	"_temp_3093\0"
	.align
_Label_3166:
	.byte	'?'
	.ascii	"_temp_3092\0"
	.align
_Label_3167:
	.byte	'?'
	.ascii	"_temp_3091\0"
	.align
_Label_3168:
	.byte	'?'
	.ascii	"_temp_3086\0"
	.align
_Label_3169:
	.byte	'?'
	.ascii	"_temp_3084\0"
	.align
_Label_3170:
	.byte	'?'
	.ascii	"_temp_3083\0"
	.align
_Label_3171:
	.byte	'?'
	.ascii	"_temp_3082\0"
	.align
_Label_3172:
	.byte	'?'
	.ascii	"_temp_3081\0"
	.align
_Label_3173:
	.byte	'?'
	.ascii	"_temp_3080\0"
	.align
_Label_3174:
	.byte	'?'
	.ascii	"_temp_3079\0"
	.align
_Label_3175:
	.byte	'?'
	.ascii	"_temp_3078\0"
	.align
_Label_3176:
	.byte	'?'
	.ascii	"_temp_3077\0"
	.align
_Label_3177:
	.byte	'?'
	.ascii	"_temp_3076\0"
	.align
_Label_3178:
	.byte	'?'
	.ascii	"_temp_3075\0"
	.align
_Label_3179:
	.byte	'?'
	.ascii	"_temp_3074\0"
	.align
_Label_3180:
	.byte	'?'
	.ascii	"_temp_3073\0"
	.align
_Label_3181:
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
_Label_4199:
	push	r0
	sub	r1,1,r1
	bne	_Label_4199
	mov	2964,r13		! source line 2964
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! SEND STATEMENT...
	mov	2966,r13		! source line 2966
	mov	"\0\0SE",r10
!   _temp_3182 = &fileManagerLock
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
!   _temp_3183 = _StringConst_158
	set	_StringConst_158,r1
	store	r1,[r14+-108]
!   Prepare Argument: offset=8  value=_temp_3183  sizeInBytes=4
	load	[r14+-108],r1
	store	r1,[r15+0]
!   Call the function
	mov	2967,r13		! source line 2967
	mov	"\0\0CE",r10
	call	print
! FOR STATEMENT...
	mov	2968,r13		! source line 2968
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_3188 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-104]
!   Calculate and save the FOR-LOOP ending value
!   _temp_3189 = 9		(4 bytes)
	mov	9,r1
	store	r1,[r14+-100]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_3188  (sizeInBytes=4)
	load	[r14+-104],r1
	store	r1,[r14+-116]
_Label_3184:
!   Perform the FOR-LOOP termination test
!   if i > _temp_3189 then goto _Label_3187		
	load	[r14+-116],r1
	load	[r14+-100],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_3187
_Label_3185:
	mov	2968,r13		! source line 2968
	mov	"\0\0FB",r10
! CALL STATEMENT...
!   _temp_3190 = _StringConst_159
	set	_StringConst_159,r1
	store	r1,[r14+-96]
!   Prepare Argument: offset=8  value=_temp_3190  sizeInBytes=4
	load	[r14+-96],r1
	store	r1,[r15+0]
!   Call the function
	mov	2969,r13		! source line 2969
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=i  sizeInBytes=4
	load	[r14+-116],r1
	store	r1,[r15+0]
!   Call the function
	mov	2970,r13		! source line 2970
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   _temp_3191 = _StringConst_160
	set	_StringConst_160,r1
	store	r1,[r14+-92]
!   Prepare Argument: offset=8  value=_temp_3191  sizeInBytes=4
	load	[r14+-92],r1
	store	r1,[r15+0]
!   Call the function
	mov	2971,r13		! source line 2971
	mov	"\0\0CE",r10
	call	print
! SEND STATEMENT...
	mov	2972,r13		! source line 2972
	mov	"\0\0SE",r10
!   _temp_3192 = &fcbTable
	load	[r14+8],r1
	add	r1,24,r1
	store	r1,[r14+-88]
!   Move address of _temp_3192 [i ] into _temp_3193
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
_Label_3186:
!   i = i + 1
	load	[r14+-116],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-116]
	jmp	_Label_3184
! END FOR
_Label_3187:
! CALL STATEMENT...
!   _temp_3194 = _StringConst_161
	set	_StringConst_161,r1
	store	r1,[r14+-80]
!   Prepare Argument: offset=8  value=_temp_3194  sizeInBytes=4
	load	[r14+-80],r1
	store	r1,[r15+0]
!   Call the function
	mov	2974,r13		! source line 2974
	mov	"\0\0CE",r10
	call	print
! SEND STATEMENT...
	mov	2975,r13		! source line 2975
	mov	"\0\0SE",r10
!   _temp_3195 = _function_212_printFCB
	set	_function_212_printFCB,r1
	store	r1,[r14+-76]
!   _temp_3196 = &fcbFreeList
	load	[r14+8],r1
	add	r1,444,r1
	store	r1,[r14+-72]
!   Prepare Argument: offset=12  value=_temp_3195  sizeInBytes=4
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
	mov	2976,r13		! source line 2976
	mov	"\0\0CA",r10
	call	_P_System_nl
! CALL STATEMENT...
!   _temp_3197 = _StringConst_162
	set	_StringConst_162,r1
	store	r1,[r14+-68]
!   Prepare Argument: offset=8  value=_temp_3197  sizeInBytes=4
	load	[r14+-68],r1
	store	r1,[r15+0]
!   Call the function
	mov	2977,r13		! source line 2977
	mov	"\0\0CE",r10
	call	print
! FOR STATEMENT...
	mov	2978,r13		! source line 2978
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_3202 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-64]
!   Calculate and save the FOR-LOOP ending value
!   _temp_3203 = 9		(4 bytes)
	mov	9,r1
	store	r1,[r14+-60]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_3202  (sizeInBytes=4)
	load	[r14+-64],r1
	store	r1,[r14+-116]
_Label_3198:
!   Perform the FOR-LOOP termination test
!   if i > _temp_3203 then goto _Label_3201		
	load	[r14+-116],r1
	load	[r14+-60],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_3201
_Label_3199:
	mov	2978,r13		! source line 2978
	mov	"\0\0FB",r10
! CALL STATEMENT...
!   _temp_3204 = _StringConst_163
	set	_StringConst_163,r1
	store	r1,[r14+-56]
!   Prepare Argument: offset=8  value=_temp_3204  sizeInBytes=4
	load	[r14+-56],r1
	store	r1,[r15+0]
!   Call the function
	mov	2979,r13		! source line 2979
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=i  sizeInBytes=4
	load	[r14+-116],r1
	store	r1,[r15+0]
!   Call the function
	mov	2980,r13		! source line 2980
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   _temp_3205 = _StringConst_164
	set	_StringConst_164,r1
	store	r1,[r14+-52]
!   Prepare Argument: offset=8  value=_temp_3205  sizeInBytes=4
	load	[r14+-52],r1
	store	r1,[r15+0]
!   Call the function
	mov	2981,r13		! source line 2981
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_3207 = &openFileTable
	load	[r14+8],r1
	add	r1,456,r1
	store	r1,[r14+-44]
!   Move address of _temp_3207 [i ] into _temp_3208
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
!   _temp_3206 = _temp_3208		(4 bytes)
	load	[r14+-40],r1
	store	r1,[r14+-48]
!   Prepare Argument: offset=8  value=_temp_3206  sizeInBytes=4
	load	[r14+-48],r1
	store	r1,[r15+0]
!   Call the function
	mov	2982,r13		! source line 2982
	mov	"\0\0CE",r10
	call	printHex
! CALL STATEMENT...
!   _temp_3209 = _StringConst_165
	set	_StringConst_165,r1
	store	r1,[r14+-36]
!   Prepare Argument: offset=8  value=_temp_3209  sizeInBytes=4
	load	[r14+-36],r1
	store	r1,[r15+0]
!   Call the function
	mov	2983,r13		! source line 2983
	mov	"\0\0CE",r10
	call	print
! SEND STATEMENT...
	mov	2984,r13		! source line 2984
	mov	"\0\0SE",r10
!   _temp_3210 = &openFileTable
	load	[r14+8],r1
	add	r1,456,r1
	store	r1,[r14+-32]
!   Move address of _temp_3210 [i ] into _temp_3211
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
_Label_3200:
!   i = i + 1
	load	[r14+-116],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-116]
	jmp	_Label_3198
! END FOR
_Label_3201:
! CALL STATEMENT...
!   _temp_3212 = _StringConst_166
	set	_StringConst_166,r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=8  value=_temp_3212  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+0]
!   Call the function
	mov	2986,r13		! source line 2986
	mov	"\0\0CE",r10
	call	print
! SEND STATEMENT...
	mov	2987,r13		! source line 2987
	mov	"\0\0SE",r10
!   _temp_3213 = _function_211_printOpen
	set	_function_211_printOpen,r1
	store	r1,[r14+-20]
!   _temp_3214 = &openFileFreeList
	load	[r14+8],r1
	add	r1,756,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=12  value=_temp_3213  sizeInBytes=4
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
	mov	2988,r13		! source line 2988
	mov	"\0\0SE",r10
!   _temp_3215 = &fileManagerLock
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
	mov	2988,r13		! source line 2988
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
	.word	_Label_3216
	.word	4		! total size of parameters
	.word	116		! frame size = 116
	.word	_Label_3217
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_3218
	.word	-12
	.word	4
	.word	_Label_3219
	.word	-16
	.word	4
	.word	_Label_3220
	.word	-20
	.word	4
	.word	_Label_3221
	.word	-24
	.word	4
	.word	_Label_3222
	.word	-28
	.word	4
	.word	_Label_3223
	.word	-32
	.word	4
	.word	_Label_3224
	.word	-36
	.word	4
	.word	_Label_3225
	.word	-40
	.word	4
	.word	_Label_3226
	.word	-44
	.word	4
	.word	_Label_3227
	.word	-48
	.word	4
	.word	_Label_3228
	.word	-52
	.word	4
	.word	_Label_3229
	.word	-56
	.word	4
	.word	_Label_3230
	.word	-60
	.word	4
	.word	_Label_3231
	.word	-64
	.word	4
	.word	_Label_3232
	.word	-68
	.word	4
	.word	_Label_3233
	.word	-72
	.word	4
	.word	_Label_3234
	.word	-76
	.word	4
	.word	_Label_3235
	.word	-80
	.word	4
	.word	_Label_3236
	.word	-84
	.word	4
	.word	_Label_3237
	.word	-88
	.word	4
	.word	_Label_3238
	.word	-92
	.word	4
	.word	_Label_3239
	.word	-96
	.word	4
	.word	_Label_3240
	.word	-100
	.word	4
	.word	_Label_3241
	.word	-104
	.word	4
	.word	_Label_3242
	.word	-108
	.word	4
	.word	_Label_3243
	.word	-112
	.word	4
	.word	_Label_3244
	.word	-116
	.word	4
	.word	0
_Label_3216:
	.ascii	"FileManager"
	.ascii	"::"
	.ascii	"Print\0"
	.align
_Label_3217:
	.ascii	"Pself\0"
	.align
_Label_3218:
	.byte	'?'
	.ascii	"_temp_3215\0"
	.align
_Label_3219:
	.byte	'?'
	.ascii	"_temp_3214\0"
	.align
_Label_3220:
	.byte	'?'
	.ascii	"_temp_3213\0"
	.align
_Label_3221:
	.byte	'?'
	.ascii	"_temp_3212\0"
	.align
_Label_3222:
	.byte	'?'
	.ascii	"_temp_3211\0"
	.align
_Label_3223:
	.byte	'?'
	.ascii	"_temp_3210\0"
	.align
_Label_3224:
	.byte	'?'
	.ascii	"_temp_3209\0"
	.align
_Label_3225:
	.byte	'?'
	.ascii	"_temp_3208\0"
	.align
_Label_3226:
	.byte	'?'
	.ascii	"_temp_3207\0"
	.align
_Label_3227:
	.byte	'?'
	.ascii	"_temp_3206\0"
	.align
_Label_3228:
	.byte	'?'
	.ascii	"_temp_3205\0"
	.align
_Label_3229:
	.byte	'?'
	.ascii	"_temp_3204\0"
	.align
_Label_3230:
	.byte	'?'
	.ascii	"_temp_3203\0"
	.align
_Label_3231:
	.byte	'?'
	.ascii	"_temp_3202\0"
	.align
_Label_3232:
	.byte	'?'
	.ascii	"_temp_3197\0"
	.align
_Label_3233:
	.byte	'?'
	.ascii	"_temp_3196\0"
	.align
_Label_3234:
	.byte	'?'
	.ascii	"_temp_3195\0"
	.align
_Label_3235:
	.byte	'?'
	.ascii	"_temp_3194\0"
	.align
_Label_3236:
	.byte	'?'
	.ascii	"_temp_3193\0"
	.align
_Label_3237:
	.byte	'?'
	.ascii	"_temp_3192\0"
	.align
_Label_3238:
	.byte	'?'
	.ascii	"_temp_3191\0"
	.align
_Label_3239:
	.byte	'?'
	.ascii	"_temp_3190\0"
	.align
_Label_3240:
	.byte	'?'
	.ascii	"_temp_3189\0"
	.align
_Label_3241:
	.byte	'?'
	.ascii	"_temp_3188\0"
	.align
_Label_3242:
	.byte	'?'
	.ascii	"_temp_3183\0"
	.align
_Label_3243:
	.byte	'?'
	.ascii	"_temp_3182\0"
	.align
_Label_3244:
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
_Label_4200:
	push	r0
	sub	r1,1,r1
	bne	_Label_4200
	mov	2993,r13		! source line 2993
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	3010,r13		! source line 3010
	mov	"\0\0AS",r10
	mov	3010,r13		! source line 3010
	mov	"\0\0SE",r10
!   _temp_3245 = &_P_Kernel_fileManager
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
	mov	3011,r13		! source line 3011
	mov	"\0\0IF",r10
!   if intIsZero (fcb) then goto _Label_3246
	load	[r14+-56],r1
	cmp	r1,r0
	be	_Label_3246
	jmp	_Label_3247
_Label_3246:
! THEN...
	mov	3012,r13		! source line 3012
	mov	"\0\0TN",r10
! RETURN STATEMENT...
	mov	3012,r13		! source line 3012
	mov	"\0\0RE",r10
!   ReturnResult: 0  (sizeInBytes=4)
	mov	0,r1
	store	r1,[r14+8]
	add	r15,60,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_3247:
! SEND STATEMENT...
	mov	3016,r13		! source line 3016
	mov	"\0\0SE",r10
!   _temp_3248 = &fileManagerLock
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
	mov	3017,r13		! source line 3017
	mov	"\0\0WH",r10
_Label_3249:
	mov	3017,r13		! source line 3017
	mov	"\0\0SE",r10
!   _temp_3252 = &openFileFreeList
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
!   if result==true then goto _Label_3250 else goto _Label_3251
	loadb	[r15],r1
	cmp	r1,0
	be	_Label_3251
	jmp	_Label_3250
_Label_3250:
	mov	3017,r13		! source line 3017
	mov	"\0\0WB",r10
! SEND STATEMENT...
	mov	3018,r13		! source line 3018
	mov	"\0\0SE",r10
!   _temp_3253 = &fileManagerLock
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-36]
!   _temp_3254 = &anOpenFileBecameFree
	load	[r14+8],r1
	add	r1,740,r1
	store	r1,[r14+-32]
!   Prepare Argument: offset=12  value=_temp_3253  sizeInBytes=4
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
	jmp	_Label_3249
_Label_3251:
! ASSIGNMENT STATEMENT...
	mov	3020,r13		! source line 3020
	mov	"\0\0AS",r10
	mov	3020,r13		! source line 3020
	mov	"\0\0SE",r10
!   _temp_3255 = &openFileFreeList
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
	mov	3023,r13		! source line 3023
	mov	"\0\0AS",r10
!   if intIsZero (open) then goto _runtimeErrorNullPointer
	load	[r14+-52],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3256 = open + 20
	load	[r14+-52],r1
	add	r1,20,r1
	store	r1,[r14+-24]
!   Data Move: *_temp_3256 = fcb  (sizeInBytes=4)
	load	[r14+-56],r1
	load	[r14+-24],r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	3024,r13		! source line 3024
	mov	"\0\0AS",r10
!   if intIsZero (open) then goto _runtimeErrorNullPointer
	load	[r14+-52],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3257 = open + 24
	load	[r14+-52],r1
	add	r1,24,r1
	store	r1,[r14+-20]
!   Data Move: *_temp_3257 = 1  (sizeInBytes=4)
	mov	1,r1
	load	[r14+-20],r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	3027,r13		! source line 3027
	mov	"\0\0AS",r10
!   if intIsZero (open) then goto _runtimeErrorNullPointer
	load	[r14+-52],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3258 = open + 16
	load	[r14+-52],r1
	add	r1,16,r1
	store	r1,[r14+-16]
!   Data Move: *_temp_3258 = 0  (sizeInBytes=4)
	mov	0,r1
	load	[r14+-16],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	3029,r13		! source line 3029
	mov	"\0\0SE",r10
!   _temp_3259 = &fileManagerLock
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
	mov	3030,r13		! source line 3030
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
	.word	_Label_3260
	.word	8		! total size of parameters
	.word	56		! frame size = 56
	.word	_Label_3261
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_3262
	.word	12
	.word	4
	.word	_Label_3263
	.word	-12
	.word	4
	.word	_Label_3264
	.word	-16
	.word	4
	.word	_Label_3265
	.word	-20
	.word	4
	.word	_Label_3266
	.word	-24
	.word	4
	.word	_Label_3267
	.word	-28
	.word	4
	.word	_Label_3268
	.word	-32
	.word	4
	.word	_Label_3269
	.word	-36
	.word	4
	.word	_Label_3270
	.word	-40
	.word	4
	.word	_Label_3271
	.word	-44
	.word	4
	.word	_Label_3272
	.word	-48
	.word	4
	.word	_Label_3273
	.word	-52
	.word	4
	.word	_Label_3274
	.word	-56
	.word	4
	.word	0
_Label_3260:
	.ascii	"FileManager"
	.ascii	"::"
	.ascii	"Open\0"
	.align
_Label_3261:
	.ascii	"Pself\0"
	.align
_Label_3262:
	.byte	'P'
	.ascii	"filename\0"
	.align
_Label_3263:
	.byte	'?'
	.ascii	"_temp_3259\0"
	.align
_Label_3264:
	.byte	'?'
	.ascii	"_temp_3258\0"
	.align
_Label_3265:
	.byte	'?'
	.ascii	"_temp_3257\0"
	.align
_Label_3266:
	.byte	'?'
	.ascii	"_temp_3256\0"
	.align
_Label_3267:
	.byte	'?'
	.ascii	"_temp_3255\0"
	.align
_Label_3268:
	.byte	'?'
	.ascii	"_temp_3254\0"
	.align
_Label_3269:
	.byte	'?'
	.ascii	"_temp_3253\0"
	.align
_Label_3270:
	.byte	'?'
	.ascii	"_temp_3252\0"
	.align
_Label_3271:
	.byte	'?'
	.ascii	"_temp_3248\0"
	.align
_Label_3272:
	.byte	'?'
	.ascii	"_temp_3245\0"
	.align
_Label_3273:
	.byte	'P'
	.ascii	"open\0"
	.align
_Label_3274:
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
_Label_4201:
	push	r0
	sub	r1,1,r1
	bne	_Label_4201
	mov	3035,r13		! source line 3035
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	3060,r13		! source line 3060
	mov	"\0\0AS",r10
!   p = directoryFrame		(4 bytes)
	load	[r14+8],r1
	load	[r1+768],r1
	store	r1,[r14+-160]
! ASSIGNMENT STATEMENT...
	mov	3063,r13		! source line 3063
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
	mov	3064,r13		! source line 3064
	mov	"\0\0AS",r10
!   p = p + 4		(int)
	load	[r14+-160],r1
	mov	4,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-160]
! IF STATEMENT...
	mov	3065,r13		! source line 3065
	mov	"\0\0IF",r10
!   if i == 1937012066 then goto _Label_3276		(int)
	load	[r14+-136],r1
	set	1937012066,r2
	cmp	r1,r2
	be	_Label_3276
!	jmp	_Label_3275
_Label_3275:
! THEN...
	mov	3066,r13		! source line 3066
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_3277 = _StringConst_167
	set	_StringConst_167,r1
	store	r1,[r14+-132]
!   Prepare Argument: offset=8  value=_temp_3277  sizeInBytes=4
	load	[r14+-132],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	3066,r13		! source line 3066
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END IF...
_Label_3276:
! ASSIGNMENT STATEMENT...
	mov	3070,r13		! source line 3070
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
	mov	3071,r13		! source line 3071
	mov	"\0\0AS",r10
!   p = p + 4		(int)
	load	[r14+-160],r1
	mov	4,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-160]
! ASSIGNMENT STATEMENT...
	mov	3072,r13		! source line 3072
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
	mov	3073,r13		! source line 3073
	mov	"\0\0AS",r10
!   p = p + 4		(int)
	load	[r14+-160],r1
	mov	4,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-160]
! WHILE STATEMENT...
	mov	3076,r13		! source line 3076
	mov	"\0\0WH",r10
_Label_3278:
!   if numFiles <= 0 then goto _Label_3280		(int)
	load	[r14+-144],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	ble	_Label_3280
!	jmp	_Label_3279
_Label_3279:
	mov	3076,r13		! source line 3076
	mov	"\0\0WB",r10
! CALL STATEMENT...
!   _temp_3281 = &start
	add	r14,-140,r1
	store	r1,[r14+-128]
!   Prepare Argument: offset=8  value=_temp_3281  sizeInBytes=4
	load	[r14+-128],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=p  sizeInBytes=4
	load	[r14+-160],r1
	store	r1,[r15+4]
!   Call the function
	mov	3077,r13		! source line 3077
	mov	"\0\0CA",r10
	call	_function_213_copyUnalignedWord
! ASSIGNMENT STATEMENT...
	mov	3078,r13		! source line 3078
	mov	"\0\0AS",r10
!   p = p + 4		(int)
	load	[r14+-160],r1
	mov	4,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-160]
! CALL STATEMENT...
!   _temp_3282 = &fileLen
	add	r14,-148,r1
	store	r1,[r14+-124]
!   Prepare Argument: offset=8  value=_temp_3282  sizeInBytes=4
	load	[r14+-124],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=p  sizeInBytes=4
	load	[r14+-160],r1
	store	r1,[r15+4]
!   Call the function
	mov	3079,r13		! source line 3079
	mov	"\0\0CA",r10
	call	_function_213_copyUnalignedWord
! ASSIGNMENT STATEMENT...
	mov	3080,r13		! source line 3080
	mov	"\0\0AS",r10
!   p = p + 4		(int)
	load	[r14+-160],r1
	mov	4,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-160]
! CALL STATEMENT...
!   _temp_3283 = &fileNameLen
	add	r14,-152,r1
	store	r1,[r14+-120]
!   Prepare Argument: offset=8  value=_temp_3283  sizeInBytes=4
	load	[r14+-120],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=p  sizeInBytes=4
	load	[r14+-160],r1
	store	r1,[r15+4]
!   Call the function
	mov	3081,r13		! source line 3081
	mov	"\0\0CA",r10
	call	_function_213_copyUnalignedWord
! ASSIGNMENT STATEMENT...
	mov	3082,r13		! source line 3082
	mov	"\0\0AS",r10
!   p = p + 4		(int)
	load	[r14+-160],r1
	mov	4,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-160]
! IF STATEMENT...
	mov	3083,r13		! source line 3083
	mov	"\0\0IF",r10
!   if intIsZero (filename) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Data Move: _temp_3287 = *filename  (sizeInBytes=4)
	load	[r14+12],r1
	load	[r1],r1
	store	r1,[r14+-116]
!   if fileNameLen != _temp_3287 then goto _Label_3285		(int)
	load	[r14+-152],r1
	load	[r14+-116],r2
	cmp	r1,r2
	bne	_Label_3285
!	jmp	_Label_3286
_Label_3286:
!   if intIsZero (filename) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Move address of filename [0 ] into _temp_3289
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
!   _temp_3288 = _temp_3289		(4 bytes)
	load	[r14+-108],r1
	store	r1,[r14+-112]
!   Prepare Argument: offset=8  value=p  sizeInBytes=4
	load	[r14+-160],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=_temp_3288  sizeInBytes=4
	load	[r14+-112],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=fileNameLen  sizeInBytes=4
	load	[r14+-152],r1
	store	r1,[r15+8]
!   Call the function
	mov	3084,r13		! source line 3084
	mov	"\0\0CA",r10
	call	_P_System_MemoryEqual
!   if result==true then goto _Label_3284 else goto _Label_3285
	loadb	[r15],r1
	cmp	r1,0
	be	_Label_3285
	jmp	_Label_3284
_Label_3284:
! THEN...
	mov	3085,r13		! source line 3085
	mov	"\0\0TN",r10
! BREAK STATEMENT...
	mov	3085,r13		! source line 3085
	mov	"\0\0BR",r10
	jmp	_Label_3280
! END IF...
_Label_3285:
! ASSIGNMENT STATEMENT...
	mov	3087,r13		! source line 3087
	mov	"\0\0AS",r10
!   p = p + fileNameLen		(int)
	load	[r14+-160],r1
	load	[r14+-152],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-160]
! ASSIGNMENT STATEMENT...
	mov	3088,r13		! source line 3088
	mov	"\0\0AS",r10
!   numFiles = numFiles - 1		(int)
	load	[r14+-144],r1
	mov	1,r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-144]
! END WHILE...
	jmp	_Label_3278
_Label_3280:
! IF STATEMENT...
	mov	3092,r13		! source line 3092
	mov	"\0\0IF",r10
!   if numFiles > 0 then goto _Label_3291		(int)
	load	[r14+-144],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_3291
!	jmp	_Label_3290
_Label_3290:
! THEN...
	mov	3093,r13		! source line 3093
	mov	"\0\0TN",r10
! RETURN STATEMENT...
	mov	3093,r13		! source line 3093
	mov	"\0\0RE",r10
!   ReturnResult: 0  (sizeInBytes=4)
	mov	0,r1
	store	r1,[r14+8]
	add	r15,168,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_3291:
! SEND STATEMENT...
	mov	3096,r13		! source line 3096
	mov	"\0\0SE",r10
!   _temp_3292 = &fileManagerLock
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
	mov	3098,r13		! source line 3098
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_3297 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-100]
!   Calculate and save the FOR-LOOP ending value
!   _temp_3298 = 9		(4 bytes)
	mov	9,r1
	store	r1,[r14+-96]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_3297  (sizeInBytes=4)
	load	[r14+-100],r1
	store	r1,[r14+-136]
_Label_3293:
!   Perform the FOR-LOOP termination test
!   if i > _temp_3298 then goto _Label_3296		
	load	[r14+-136],r1
	load	[r14+-96],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_3296
_Label_3294:
	mov	3098,r13		! source line 3098
	mov	"\0\0FB",r10
! ASSIGNMENT STATEMENT...
	mov	3099,r13		! source line 3099
	mov	"\0\0AS",r10
!   _temp_3299 = &fcbTable
	load	[r14+8],r1
	add	r1,24,r1
	store	r1,[r14+-92]
!   Move address of _temp_3299 [i ] into _temp_3300
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
!   fcb = _temp_3300		(4 bytes)
	load	[r14+-88],r1
	store	r1,[r14+-156]
! IF STATEMENT...
	mov	3100,r13		! source line 3100
	mov	"\0\0IF",r10
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-156],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3304 = fcb + 20
	load	[r14+-156],r1
	add	r1,20,r1
	store	r1,[r14+-80]
!   Data Move: _temp_3303 = *_temp_3304  (sizeInBytes=4)
	load	[r14+-80],r1
	load	[r1],r1
	store	r1,[r14+-84]
!   if _temp_3303 != start then goto _Label_3302		(int)
	load	[r14+-84],r1
	load	[r14+-140],r2
	cmp	r1,r2
	bne	_Label_3302
!	jmp	_Label_3301
_Label_3301:
! THEN...
	mov	3101,r13		! source line 3101
	mov	"\0\0TN",r10
! ASSIGNMENT STATEMENT...
	mov	3101,r13		! source line 3101
	mov	"\0\0AS",r10
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-156],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3305 = fcb + 16
	load	[r14+-156],r1
	add	r1,16,r1
	store	r1,[r14+-76]
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-156],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3308 = fcb + 16
	load	[r14+-156],r1
	add	r1,16,r1
	store	r1,[r14+-64]
!   Data Move: _temp_3307 = *_temp_3308  (sizeInBytes=4)
	load	[r14+-64],r1
	load	[r1],r1
	store	r1,[r14+-68]
!   _temp_3306 = _temp_3307 + 1		(int)
	load	[r14+-68],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-72]
!   Data Move: *_temp_3305 = _temp_3306  (sizeInBytes=4)
	load	[r14+-72],r1
	load	[r14+-76],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	3102,r13		! source line 3102
	mov	"\0\0SE",r10
!   _temp_3309 = &fileManagerLock
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
	mov	3103,r13		! source line 3103
	mov	"\0\0RE",r10
!   ReturnResult: fcb  (sizeInBytes=4)
	load	[r14+-156],r1
	store	r1,[r14+8]
	add	r15,168,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_3302:
!   Increment the FOR-LOOP index variable and jump back
_Label_3295:
!   i = i + 1
	load	[r14+-136],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-136]
	jmp	_Label_3293
! END FOR
_Label_3296:
! WHILE STATEMENT...
	mov	3108,r13		! source line 3108
	mov	"\0\0WH",r10
_Label_3310:
	mov	3108,r13		! source line 3108
	mov	"\0\0SE",r10
!   _temp_3313 = &fcbFreeList
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
!   if result==true then goto _Label_3311 else goto _Label_3312
	loadb	[r15],r1
	cmp	r1,0
	be	_Label_3312
	jmp	_Label_3311
_Label_3311:
	mov	3108,r13		! source line 3108
	mov	"\0\0WB",r10
! SEND STATEMENT...
	mov	3109,r13		! source line 3109
	mov	"\0\0SE",r10
!   _temp_3314 = &fileManagerLock
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-52]
!   _temp_3315 = &anFCBBecameFree
	load	[r14+8],r1
	add	r1,428,r1
	store	r1,[r14+-48]
!   Prepare Argument: offset=12  value=_temp_3314  sizeInBytes=4
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
	jmp	_Label_3310
_Label_3312:
! ASSIGNMENT STATEMENT...
	mov	3111,r13		! source line 3111
	mov	"\0\0AS",r10
	mov	3111,r13		! source line 3111
	mov	"\0\0SE",r10
!   _temp_3316 = &fcbFreeList
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
	mov	3114,r13		! source line 3114
	mov	"\0\0SE",r10
!   _temp_3317 = &fileManagerLock
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
	mov	3117,r13		! source line 3117
	mov	"\0\0AS",r10
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-156],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3318 = fcb + 20
	load	[r14+-156],r1
	add	r1,20,r1
	store	r1,[r14+-36]
!   Data Move: *_temp_3318 = start  (sizeInBytes=4)
	load	[r14+-140],r1
	load	[r14+-36],r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	3118,r13		! source line 3118
	mov	"\0\0AS",r10
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-156],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3319 = fcb + 24
	load	[r14+-156],r1
	add	r1,24,r1
	store	r1,[r14+-32]
!   Data Move: *_temp_3319 = fileLen  (sizeInBytes=4)
	load	[r14+-148],r1
	load	[r14+-32],r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	3119,r13		! source line 3119
	mov	"\0\0AS",r10
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-156],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3320 = fcb + 16
	load	[r14+-156],r1
	add	r1,16,r1
	store	r1,[r14+-28]
!   Data Move: *_temp_3320 = 1  (sizeInBytes=4)
	mov	1,r1
	load	[r14+-28],r2
	store	r1,[r2]
! IF STATEMENT...
	mov	3120,r13		! source line 3120
	mov	"\0\0IF",r10
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-156],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3325 = fcb + 32
	load	[r14+-156],r1
	add	r1,32,r1
	store	r1,[r14+-20]
!   Data Move: _temp_3324 = *_temp_3325  (sizeInBytes=4)
	load	[r14+-20],r1
	load	[r1],r1
	store	r1,[r14+-24]
!   if _temp_3324 < 0 then goto _Label_3323		(int)
	load	[r14+-24],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bl	_Label_3323
	jmp	_Label_3321
_Label_3323:
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-156],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3326 = fcb + 36
	load	[r14+-156],r1
	add	r1,36,r1
	store	r1,[r14+-16]
!   if boolIsZero (_temp_3326 ) then goto _Label_3322		(int)
	load	[r14+-16],r1
	loadb	[r1],r1
	cmp	r1,r0
	be	_Label_3322
!	jmp	_Label_3321
_Label_3321:
! THEN...
	mov	3121,r13		! source line 3121
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_3327 = _StringConst_168
	set	_StringConst_168,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_3327  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	3121,r13		! source line 3121
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END IF...
_Label_3322:
! RETURN STATEMENT...
	mov	3123,r13		! source line 3123
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
	.word	_Label_3328
	.word	8		! total size of parameters
	.word	164		! frame size = 164
	.word	_Label_3329
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_3330
	.word	12
	.word	4
	.word	_Label_3331
	.word	-12
	.word	4
	.word	_Label_3332
	.word	-16
	.word	4
	.word	_Label_3333
	.word	-20
	.word	4
	.word	_Label_3334
	.word	-24
	.word	4
	.word	_Label_3335
	.word	-28
	.word	4
	.word	_Label_3336
	.word	-32
	.word	4
	.word	_Label_3337
	.word	-36
	.word	4
	.word	_Label_3338
	.word	-40
	.word	4
	.word	_Label_3339
	.word	-44
	.word	4
	.word	_Label_3340
	.word	-48
	.word	4
	.word	_Label_3341
	.word	-52
	.word	4
	.word	_Label_3342
	.word	-56
	.word	4
	.word	_Label_3343
	.word	-60
	.word	4
	.word	_Label_3344
	.word	-64
	.word	4
	.word	_Label_3345
	.word	-68
	.word	4
	.word	_Label_3346
	.word	-72
	.word	4
	.word	_Label_3347
	.word	-76
	.word	4
	.word	_Label_3348
	.word	-80
	.word	4
	.word	_Label_3349
	.word	-84
	.word	4
	.word	_Label_3350
	.word	-88
	.word	4
	.word	_Label_3351
	.word	-92
	.word	4
	.word	_Label_3352
	.word	-96
	.word	4
	.word	_Label_3353
	.word	-100
	.word	4
	.word	_Label_3354
	.word	-104
	.word	4
	.word	_Label_3355
	.word	-108
	.word	4
	.word	_Label_3356
	.word	-112
	.word	4
	.word	_Label_3357
	.word	-116
	.word	4
	.word	_Label_3358
	.word	-120
	.word	4
	.word	_Label_3359
	.word	-124
	.word	4
	.word	_Label_3360
	.word	-128
	.word	4
	.word	_Label_3361
	.word	-132
	.word	4
	.word	_Label_3362
	.word	-136
	.word	4
	.word	_Label_3363
	.word	-140
	.word	4
	.word	_Label_3364
	.word	-144
	.word	4
	.word	_Label_3365
	.word	-148
	.word	4
	.word	_Label_3366
	.word	-152
	.word	4
	.word	_Label_3367
	.word	-156
	.word	4
	.word	_Label_3368
	.word	-160
	.word	4
	.word	0
_Label_3328:
	.ascii	"FileManager"
	.ascii	"::"
	.ascii	"FindFCB\0"
	.align
_Label_3329:
	.ascii	"Pself\0"
	.align
_Label_3330:
	.byte	'P'
	.ascii	"filename\0"
	.align
_Label_3331:
	.byte	'?'
	.ascii	"_temp_3327\0"
	.align
_Label_3332:
	.byte	'?'
	.ascii	"_temp_3326\0"
	.align
_Label_3333:
	.byte	'?'
	.ascii	"_temp_3325\0"
	.align
_Label_3334:
	.byte	'?'
	.ascii	"_temp_3324\0"
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
	.ascii	"_temp_3309\0"
	.align
_Label_3344:
	.byte	'?'
	.ascii	"_temp_3308\0"
	.align
_Label_3345:
	.byte	'?'
	.ascii	"_temp_3307\0"
	.align
_Label_3346:
	.byte	'?'
	.ascii	"_temp_3306\0"
	.align
_Label_3347:
	.byte	'?'
	.ascii	"_temp_3305\0"
	.align
_Label_3348:
	.byte	'?'
	.ascii	"_temp_3304\0"
	.align
_Label_3349:
	.byte	'?'
	.ascii	"_temp_3303\0"
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
	.ascii	"_temp_3298\0"
	.align
_Label_3353:
	.byte	'?'
	.ascii	"_temp_3297\0"
	.align
_Label_3354:
	.byte	'?'
	.ascii	"_temp_3292\0"
	.align
_Label_3355:
	.byte	'?'
	.ascii	"_temp_3289\0"
	.align
_Label_3356:
	.byte	'?'
	.ascii	"_temp_3288\0"
	.align
_Label_3357:
	.byte	'?'
	.ascii	"_temp_3287\0"
	.align
_Label_3358:
	.byte	'?'
	.ascii	"_temp_3283\0"
	.align
_Label_3359:
	.byte	'?'
	.ascii	"_temp_3282\0"
	.align
_Label_3360:
	.byte	'?'
	.ascii	"_temp_3281\0"
	.align
_Label_3361:
	.byte	'?'
	.ascii	"_temp_3277\0"
	.align
_Label_3362:
	.byte	'I'
	.ascii	"i\0"
	.align
_Label_3363:
	.byte	'I'
	.ascii	"start\0"
	.align
_Label_3364:
	.byte	'I'
	.ascii	"numFiles\0"
	.align
_Label_3365:
	.byte	'I'
	.ascii	"fileLen\0"
	.align
_Label_3366:
	.byte	'I'
	.ascii	"fileNameLen\0"
	.align
_Label_3367:
	.byte	'P'
	.ascii	"fcb\0"
	.align
_Label_3368:
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
_Label_4202:
	push	r0
	sub	r1,1,r1
	bne	_Label_4202
	mov	3136,r13		! source line 3136
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! IF STATEMENT...
	mov	3138,r13		! source line 3138
	mov	"\0\0IF",r10
!   _temp_3371 = &serialTerminalFile
	load	[r14+8],r1
	add	r1,772,r1
	store	r1,[r14+-100]
!   if open != _temp_3371 then goto _Label_3370		(int)
	load	[r14+12],r1
	load	[r14+-100],r2
	cmp	r1,r2
	bne	_Label_3370
!	jmp	_Label_3369
_Label_3369:
! THEN...
	mov	3139,r13		! source line 3139
	mov	"\0\0TN",r10
! RETURN STATEMENT...
	mov	3139,r13		! source line 3139
	mov	"\0\0RE",r10
	add	r15,108,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_3370:
! SEND STATEMENT...
	mov	3141,r13		! source line 3141
	mov	"\0\0SE",r10
!   _temp_3372 = &fileManagerLock
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
	mov	3142,r13		! source line 3142
	mov	"\0\0SE",r10
!   _temp_3373 = &_P_Kernel_fileManager
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
	mov	3143,r13		! source line 3143
	mov	"\0\0AS",r10
!   if intIsZero (open) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3374 = open + 20
	load	[r14+12],r1
	add	r1,20,r1
	store	r1,[r14+-88]
!   Data Move: fcb = *_temp_3374  (sizeInBytes=4)
	load	[r14+-88],r1
	load	[r1],r1
	store	r1,[r14+-104]
! ASSIGNMENT STATEMENT...
	mov	3144,r13		! source line 3144
	mov	"\0\0AS",r10
!   if intIsZero (open) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3375 = open + 24
	load	[r14+12],r1
	add	r1,24,r1
	store	r1,[r14+-84]
!   if intIsZero (open) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3378 = open + 24
	load	[r14+12],r1
	add	r1,24,r1
	store	r1,[r14+-72]
!   Data Move: _temp_3377 = *_temp_3378  (sizeInBytes=4)
	load	[r14+-72],r1
	load	[r1],r1
	store	r1,[r14+-76]
!   _temp_3376 = _temp_3377 - 1		(int)
	load	[r14+-76],r1
	mov	1,r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-80]
!   Data Move: *_temp_3375 = _temp_3376  (sizeInBytes=4)
	load	[r14+-80],r1
	load	[r14+-84],r2
	store	r1,[r2]
! IF STATEMENT...
	mov	3145,r13		! source line 3145
	mov	"\0\0IF",r10
!   if intIsZero (open) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3382 = open + 24
	load	[r14+12],r1
	add	r1,24,r1
	store	r1,[r14+-64]
!   Data Move: _temp_3381 = *_temp_3382  (sizeInBytes=4)
	load	[r14+-64],r1
	load	[r1],r1
	store	r1,[r14+-68]
!   if _temp_3381 > 0 then goto _Label_3380		(int)
	load	[r14+-68],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_3380
!	jmp	_Label_3379
_Label_3379:
! THEN...
	mov	3146,r13		! source line 3146
	mov	"\0\0TN",r10
! SEND STATEMENT...
	mov	3146,r13		! source line 3146
	mov	"\0\0SE",r10
!   _temp_3383 = &openFileFreeList
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
	mov	3147,r13		! source line 3147
	mov	"\0\0SE",r10
!   _temp_3384 = &fileManagerLock
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-56]
!   _temp_3385 = &anOpenFileBecameFree
	load	[r14+8],r1
	add	r1,740,r1
	store	r1,[r14+-52]
!   Prepare Argument: offset=12  value=_temp_3384  sizeInBytes=4
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
	mov	3148,r13		! source line 3148
	mov	"\0\0AS",r10
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-104],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3386 = fcb + 16
	load	[r14+-104],r1
	add	r1,16,r1
	store	r1,[r14+-48]
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-104],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3389 = fcb + 16
	load	[r14+-104],r1
	add	r1,16,r1
	store	r1,[r14+-36]
!   Data Move: _temp_3388 = *_temp_3389  (sizeInBytes=4)
	load	[r14+-36],r1
	load	[r1],r1
	store	r1,[r14+-40]
!   _temp_3387 = _temp_3388 - 1		(int)
	load	[r14+-40],r1
	mov	1,r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-44]
!   Data Move: *_temp_3386 = _temp_3387  (sizeInBytes=4)
	load	[r14+-44],r1
	load	[r14+-48],r2
	store	r1,[r2]
! IF STATEMENT...
	mov	3149,r13		! source line 3149
	mov	"\0\0IF",r10
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-104],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3393 = fcb + 16
	load	[r14+-104],r1
	add	r1,16,r1
	store	r1,[r14+-28]
!   Data Move: _temp_3392 = *_temp_3393  (sizeInBytes=4)
	load	[r14+-28],r1
	load	[r1],r1
	store	r1,[r14+-32]
!   if _temp_3392 > 0 then goto _Label_3391		(int)
	load	[r14+-32],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_3391
!	jmp	_Label_3390
_Label_3390:
! THEN...
	mov	3150,r13		! source line 3150
	mov	"\0\0TN",r10
! SEND STATEMENT...
	mov	3150,r13		! source line 3150
	mov	"\0\0SE",r10
!   _temp_3394 = &fcbFreeList
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
	mov	3151,r13		! source line 3151
	mov	"\0\0SE",r10
!   _temp_3395 = &fileManagerLock
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-20]
!   _temp_3396 = &anFCBBecameFree
	load	[r14+8],r1
	add	r1,428,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=12  value=_temp_3395  sizeInBytes=4
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
_Label_3391:
! END IF...
_Label_3380:
! SEND STATEMENT...
	mov	3154,r13		! source line 3154
	mov	"\0\0SE",r10
!   _temp_3397 = &fileManagerLock
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
	mov	3154,r13		! source line 3154
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
	.word	_Label_3398
	.word	8		! total size of parameters
	.word	104		! frame size = 104
	.word	_Label_3399
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_3400
	.word	12
	.word	4
	.word	_Label_3401
	.word	-12
	.word	4
	.word	_Label_3402
	.word	-16
	.word	4
	.word	_Label_3403
	.word	-20
	.word	4
	.word	_Label_3404
	.word	-24
	.word	4
	.word	_Label_3405
	.word	-28
	.word	4
	.word	_Label_3406
	.word	-32
	.word	4
	.word	_Label_3407
	.word	-36
	.word	4
	.word	_Label_3408
	.word	-40
	.word	4
	.word	_Label_3409
	.word	-44
	.word	4
	.word	_Label_3410
	.word	-48
	.word	4
	.word	_Label_3411
	.word	-52
	.word	4
	.word	_Label_3412
	.word	-56
	.word	4
	.word	_Label_3413
	.word	-60
	.word	4
	.word	_Label_3414
	.word	-64
	.word	4
	.word	_Label_3415
	.word	-68
	.word	4
	.word	_Label_3416
	.word	-72
	.word	4
	.word	_Label_3417
	.word	-76
	.word	4
	.word	_Label_3418
	.word	-80
	.word	4
	.word	_Label_3419
	.word	-84
	.word	4
	.word	_Label_3420
	.word	-88
	.word	4
	.word	_Label_3421
	.word	-92
	.word	4
	.word	_Label_3422
	.word	-96
	.word	4
	.word	_Label_3423
	.word	-100
	.word	4
	.word	_Label_3424
	.word	-104
	.word	4
	.word	0
_Label_3398:
	.ascii	"FileManager"
	.ascii	"::"
	.ascii	"Close\0"
	.align
_Label_3399:
	.ascii	"Pself\0"
	.align
_Label_3400:
	.byte	'P'
	.ascii	"open\0"
	.align
_Label_3401:
	.byte	'?'
	.ascii	"_temp_3397\0"
	.align
_Label_3402:
	.byte	'?'
	.ascii	"_temp_3396\0"
	.align
_Label_3403:
	.byte	'?'
	.ascii	"_temp_3395\0"
	.align
_Label_3404:
	.byte	'?'
	.ascii	"_temp_3394\0"
	.align
_Label_3405:
	.byte	'?'
	.ascii	"_temp_3393\0"
	.align
_Label_3406:
	.byte	'?'
	.ascii	"_temp_3392\0"
	.align
_Label_3407:
	.byte	'?'
	.ascii	"_temp_3389\0"
	.align
_Label_3408:
	.byte	'?'
	.ascii	"_temp_3388\0"
	.align
_Label_3409:
	.byte	'?'
	.ascii	"_temp_3387\0"
	.align
_Label_3410:
	.byte	'?'
	.ascii	"_temp_3386\0"
	.align
_Label_3411:
	.byte	'?'
	.ascii	"_temp_3385\0"
	.align
_Label_3412:
	.byte	'?'
	.ascii	"_temp_3384\0"
	.align
_Label_3413:
	.byte	'?'
	.ascii	"_temp_3383\0"
	.align
_Label_3414:
	.byte	'?'
	.ascii	"_temp_3382\0"
	.align
_Label_3415:
	.byte	'?'
	.ascii	"_temp_3381\0"
	.align
_Label_3416:
	.byte	'?'
	.ascii	"_temp_3378\0"
	.align
_Label_3417:
	.byte	'?'
	.ascii	"_temp_3377\0"
	.align
_Label_3418:
	.byte	'?'
	.ascii	"_temp_3376\0"
	.align
_Label_3419:
	.byte	'?'
	.ascii	"_temp_3375\0"
	.align
_Label_3420:
	.byte	'?'
	.ascii	"_temp_3374\0"
	.align
_Label_3421:
	.byte	'?'
	.ascii	"_temp_3373\0"
	.align
_Label_3422:
	.byte	'?'
	.ascii	"_temp_3372\0"
	.align
_Label_3423:
	.byte	'?'
	.ascii	"_temp_3371\0"
	.align
_Label_3424:
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
_Label_4203:
	push	r0
	sub	r1,1,r1
	bne	_Label_4203
	mov	3159,r13		! source line 3159
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! IF STATEMENT...
	mov	3164,r13		! source line 3164
	mov	"\0\0IF",r10
!   if intIsZero (open) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3428 = open + 20
	load	[r14+12],r1
	add	r1,20,r1
	store	r1,[r14+-104]
!   Data Move: _temp_3427 = *_temp_3428  (sizeInBytes=4)
	load	[r14+-104],r1
	load	[r1],r1
	store	r1,[r14+-108]
!   if intIsZero (_temp_3427) then goto _runtimeErrorNullPointer
	load	[r14+-108],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3429 = _temp_3427 + 36
	load	[r14+-108],r1
	add	r1,36,r1
	store	r1,[r14+-100]
!   if boolIsZero (_temp_3429 ) then goto _Label_3426		(int)
	load	[r14+-100],r1
	loadb	[r1],r1
	cmp	r1,r0
	be	_Label_3426
!	jmp	_Label_3425
_Label_3425:
! THEN...
	mov	3165,r13		! source line 3165
	mov	"\0\0TN",r10
! IF STATEMENT...
	mov	3165,r13		! source line 3165
	mov	"\0\0IF",r10
!   if intIsZero (open) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3434 = open + 20
	load	[r14+12],r1
	add	r1,20,r1
	store	r1,[r14+-88]
!   Data Move: _temp_3433 = *_temp_3434  (sizeInBytes=4)
	load	[r14+-88],r1
	load	[r1],r1
	store	r1,[r14+-92]
!   if intIsZero (_temp_3433) then goto _runtimeErrorNullPointer
	load	[r14+-92],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3435 = _temp_3433 + 32
	load	[r14+-92],r1
	add	r1,32,r1
	store	r1,[r14+-84]
!   Data Move: _temp_3432 = *_temp_3435  (sizeInBytes=4)
	load	[r14+-84],r1
	load	[r1],r1
	store	r1,[r14+-96]
!   if _temp_3432 >= 0 then goto _Label_3431		(int)
	load	[r14+-96],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_3431
!	jmp	_Label_3430
_Label_3430:
! THEN...
	mov	3166,r13		! source line 3166
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_3436 = _StringConst_169
	set	_StringConst_169,r1
	store	r1,[r14+-80]
!   Prepare Argument: offset=8  value=_temp_3436  sizeInBytes=4
	load	[r14+-80],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	3166,r13		! source line 3166
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END IF...
_Label_3431:
! ASSIGNMENT STATEMENT...
	mov	3168,r13		! source line 3168
	mov	"\0\0AS",r10
!   if intIsZero (open) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3438 = open + 20
	load	[r14+12],r1
	add	r1,20,r1
	store	r1,[r14+-72]
!   Data Move: _temp_3437 = *_temp_3438  (sizeInBytes=4)
	load	[r14+-72],r1
	load	[r1],r1
	store	r1,[r14+-76]
!   if intIsZero (_temp_3437) then goto _runtimeErrorNullPointer
	load	[r14+-76],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3439 = _temp_3437 + 36
	load	[r14+-76],r1
	add	r1,36,r1
	store	r1,[r14+-68]
!   Data Move: *_temp_3439 = 0  (sizeInBytes=1)
	mov	0,r1
	load	[r14+-68],r2
	storeb	r1,[r2]
! SEND STATEMENT...
	mov	3169,r13		! source line 3169
	mov	"\0\0SE",r10
!   if intIsZero (open) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3443 = open + 20
	load	[r14+12],r1
	add	r1,20,r1
	store	r1,[r14+-52]
!   Data Move: _temp_3442 = *_temp_3443  (sizeInBytes=4)
	load	[r14+-52],r1
	load	[r1],r1
	store	r1,[r14+-56]
!   if intIsZero (_temp_3442) then goto _runtimeErrorNullPointer
	load	[r14+-56],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3444 = _temp_3442 + 32
	load	[r14+-56],r1
	add	r1,32,r1
	store	r1,[r14+-48]
!   Data Move: _temp_3441 = *_temp_3444  (sizeInBytes=4)
	load	[r14+-48],r1
	load	[r1],r1
	store	r1,[r14+-60]
!   if intIsZero (open) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3447 = open + 20
	load	[r14+12],r1
	add	r1,20,r1
	store	r1,[r14+-36]
!   Data Move: _temp_3446 = *_temp_3447  (sizeInBytes=4)
	load	[r14+-36],r1
	load	[r1],r1
	store	r1,[r14+-40]
!   if intIsZero (_temp_3446) then goto _runtimeErrorNullPointer
	load	[r14+-40],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3448 = _temp_3446 + 20
	load	[r14+-40],r1
	add	r1,20,r1
	store	r1,[r14+-32]
!   Data Move: _temp_3445 = *_temp_3448  (sizeInBytes=4)
	load	[r14+-32],r1
	load	[r1],r1
	store	r1,[r14+-44]
!   _temp_3440 = _temp_3441 + _temp_3445		(int)
	load	[r14+-60],r1
	load	[r14+-44],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-64]
!   if intIsZero (open) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3451 = open + 20
	load	[r14+12],r1
	add	r1,20,r1
	store	r1,[r14+-20]
!   Data Move: _temp_3450 = *_temp_3451  (sizeInBytes=4)
	load	[r14+-20],r1
	load	[r1],r1
	store	r1,[r14+-24]
!   if intIsZero (_temp_3450) then goto _runtimeErrorNullPointer
	load	[r14+-24],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3452 = _temp_3450 + 28
	load	[r14+-24],r1
	add	r1,28,r1
	store	r1,[r14+-16]
!   Data Move: _temp_3449 = *_temp_3452  (sizeInBytes=4)
	load	[r14+-16],r1
	load	[r1],r1
	store	r1,[r14+-28]
!   _temp_3453 = &_P_Kernel_diskDriver
	set	_P_Kernel_diskDriver,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=12  value=_temp_3440  sizeInBytes=4
	load	[r14+-64],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=1  sizeInBytes=4
	mov	1,r1
	store	r1,[r15+8]
!   Prepare Argument: offset=20  value=_temp_3449  sizeInBytes=4
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
_Label_3426:
! RETURN STATEMENT...
	mov	3164,r13		! source line 3164
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
	.word	_Label_3454
	.word	8		! total size of parameters
	.word	116		! frame size = 116
	.word	_Label_3455
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_3456
	.word	12
	.word	4
	.word	_Label_3457
	.word	-12
	.word	4
	.word	_Label_3458
	.word	-16
	.word	4
	.word	_Label_3459
	.word	-20
	.word	4
	.word	_Label_3460
	.word	-24
	.word	4
	.word	_Label_3461
	.word	-28
	.word	4
	.word	_Label_3462
	.word	-32
	.word	4
	.word	_Label_3463
	.word	-36
	.word	4
	.word	_Label_3464
	.word	-40
	.word	4
	.word	_Label_3465
	.word	-44
	.word	4
	.word	_Label_3466
	.word	-48
	.word	4
	.word	_Label_3467
	.word	-52
	.word	4
	.word	_Label_3468
	.word	-56
	.word	4
	.word	_Label_3469
	.word	-60
	.word	4
	.word	_Label_3470
	.word	-64
	.word	4
	.word	_Label_3471
	.word	-68
	.word	4
	.word	_Label_3472
	.word	-72
	.word	4
	.word	_Label_3473
	.word	-76
	.word	4
	.word	_Label_3474
	.word	-80
	.word	4
	.word	_Label_3475
	.word	-84
	.word	4
	.word	_Label_3476
	.word	-88
	.word	4
	.word	_Label_3477
	.word	-92
	.word	4
	.word	_Label_3478
	.word	-96
	.word	4
	.word	_Label_3479
	.word	-100
	.word	4
	.word	_Label_3480
	.word	-104
	.word	4
	.word	_Label_3481
	.word	-108
	.word	4
	.word	0
_Label_3454:
	.ascii	"FileManager"
	.ascii	"::"
	.ascii	"Flush\0"
	.align
_Label_3455:
	.ascii	"Pself\0"
	.align
_Label_3456:
	.byte	'P'
	.ascii	"open\0"
	.align
_Label_3457:
	.byte	'?'
	.ascii	"_temp_3453\0"
	.align
_Label_3458:
	.byte	'?'
	.ascii	"_temp_3452\0"
	.align
_Label_3459:
	.byte	'?'
	.ascii	"_temp_3451\0"
	.align
_Label_3460:
	.byte	'?'
	.ascii	"_temp_3450\0"
	.align
_Label_3461:
	.byte	'?'
	.ascii	"_temp_3449\0"
	.align
_Label_3462:
	.byte	'?'
	.ascii	"_temp_3448\0"
	.align
_Label_3463:
	.byte	'?'
	.ascii	"_temp_3447\0"
	.align
_Label_3464:
	.byte	'?'
	.ascii	"_temp_3446\0"
	.align
_Label_3465:
	.byte	'?'
	.ascii	"_temp_3445\0"
	.align
_Label_3466:
	.byte	'?'
	.ascii	"_temp_3444\0"
	.align
_Label_3467:
	.byte	'?'
	.ascii	"_temp_3443\0"
	.align
_Label_3468:
	.byte	'?'
	.ascii	"_temp_3442\0"
	.align
_Label_3469:
	.byte	'?'
	.ascii	"_temp_3441\0"
	.align
_Label_3470:
	.byte	'?'
	.ascii	"_temp_3440\0"
	.align
_Label_3471:
	.byte	'?'
	.ascii	"_temp_3439\0"
	.align
_Label_3472:
	.byte	'?'
	.ascii	"_temp_3438\0"
	.align
_Label_3473:
	.byte	'?'
	.ascii	"_temp_3437\0"
	.align
_Label_3474:
	.byte	'?'
	.ascii	"_temp_3436\0"
	.align
_Label_3475:
	.byte	'?'
	.ascii	"_temp_3435\0"
	.align
_Label_3476:
	.byte	'?'
	.ascii	"_temp_3434\0"
	.align
_Label_3477:
	.byte	'?'
	.ascii	"_temp_3433\0"
	.align
_Label_3478:
	.byte	'?'
	.ascii	"_temp_3432\0"
	.align
_Label_3479:
	.byte	'?'
	.ascii	"_temp_3429\0"
	.align
_Label_3480:
	.byte	'?'
	.ascii	"_temp_3428\0"
	.align
_Label_3481:
	.byte	'?'
	.ascii	"_temp_3427\0"
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
_Label_4204:
	push	r0
	sub	r1,1,r1
	bne	_Label_4204
	mov	3178,r13		! source line 3178
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! SEND STATEMENT...
	mov	3193,r13		! source line 3193
	mov	"\0\0SE",r10
!   _temp_3482 = &fileManagerLock
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
	mov	3194,r13		! source line 3194
	mov	"\0\0IF",r10
!   if open == 0 then goto _Label_3488		(int)
	load	[r14+12],r1
	mov	0,r2
	cmp	r1,r2
	be	_Label_3488
!   _temp_3487 = 1		(1 byte)
	mov	1,r1
	storeb	r1,[r14+-10]
	jmp	_Label_3489
_Label_3488:
!   _temp_3487 = 0		(1 byte)
	mov	0,r1
	storeb	r1,[r14+-10]
_Label_3489:
!   if _temp_3487 then goto _Label_3486 else goto _Label_3483
	loadb	[r14+-10],r1
	cmp	r1,0
	be	_Label_3483
	jmp	_Label_3486
_Label_3486:
!   if intIsZero (open) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3492 = open + 20
	load	[r14+12],r1
	add	r1,20,r1
	store	r1,[r14+-100]
!   Data Move: _temp_3491 = *_temp_3492  (sizeInBytes=4)
	load	[r14+-100],r1
	load	[r1],r1
	store	r1,[r14+-104]
!   if _temp_3491 == 0 then goto _Label_3493		(int)
	load	[r14+-104],r1
	mov	0,r2
	cmp	r1,r2
	be	_Label_3493
!   _temp_3490 = 1		(1 byte)
	mov	1,r1
	storeb	r1,[r14+-9]
	jmp	_Label_3494
_Label_3493:
!   _temp_3490 = 0		(1 byte)
	mov	0,r1
	storeb	r1,[r14+-9]
_Label_3494:
!   if _temp_3490 then goto _Label_3485 else goto _Label_3483
	loadb	[r14+-9],r1
	cmp	r1,0
	be	_Label_3483
	jmp	_Label_3485
_Label_3485:
!   if intIsZero (open) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3497 = open + 20
	load	[r14+12],r1
	add	r1,20,r1
	store	r1,[r14+-88]
!   Data Move: _temp_3496 = *_temp_3497  (sizeInBytes=4)
	load	[r14+-88],r1
	load	[r1],r1
	store	r1,[r14+-92]
!   if intIsZero (_temp_3496) then goto _runtimeErrorNullPointer
	load	[r14+-92],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3498 = _temp_3496 + 20
	load	[r14+-92],r1
	add	r1,20,r1
	store	r1,[r14+-84]
!   Data Move: _temp_3495 = *_temp_3498  (sizeInBytes=4)
	load	[r14+-84],r1
	load	[r1],r1
	store	r1,[r14+-96]
!   if _temp_3495 >= 0 then goto _Label_3484		(int)
	load	[r14+-96],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_3484
!	jmp	_Label_3483
_Label_3483:
! THEN...
	mov	3195,r13		! source line 3195
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_3499 = _StringConst_170
	set	_StringConst_170,r1
	store	r1,[r14+-80]
!   Prepare Argument: offset=8  value=_temp_3499  sizeInBytes=4
	load	[r14+-80],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	3195,r13		! source line 3195
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END IF...
_Label_3484:
! ASSIGNMENT STATEMENT...
	mov	3197,r13		! source line 3197
	mov	"\0\0AS",r10
!   if intIsZero (open) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3500 = open + 20
	load	[r14+12],r1
	add	r1,20,r1
	store	r1,[r14+-76]
!   Data Move: fcb = *_temp_3500  (sizeInBytes=4)
	load	[r14+-76],r1
	load	[r1],r1
	store	r1,[r14+-128]
! WHILE STATEMENT...
	mov	3198,r13		! source line 3198
	mov	"\0\0WH",r10
_Label_3501:
!   if numBytes <= 0 then goto _Label_3503		(int)
	load	[r14+24],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	ble	_Label_3503
!	jmp	_Label_3502
_Label_3502:
	mov	3198,r13		! source line 3198
	mov	"\0\0WB",r10
! ASSIGNMENT STATEMENT...
	mov	3207,r13		! source line 3207
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
	mov	3208,r13		! source line 3208
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
	mov	3212,r13		! source line 3212
	mov	"\0\0IF",r10
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-128],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3507 = fcb + 32
	load	[r14+-128],r1
	add	r1,32,r1
	store	r1,[r14+-68]
!   Data Move: _temp_3506 = *_temp_3507  (sizeInBytes=4)
	load	[r14+-68],r1
	load	[r1],r1
	store	r1,[r14+-72]
!   if _temp_3506 == sector then goto _Label_3505		(int)
	load	[r14+-72],r1
	load	[r14+-112],r2
	cmp	r1,r2
	be	_Label_3505
!	jmp	_Label_3504
_Label_3504:
! THEN...
	mov	3213,r13		! source line 3213
	mov	"\0\0TN",r10
! SEND STATEMENT...
	mov	3213,r13		! source line 3213
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-64]
!   if intIsZero (_temp_3508) then goto _runtimeErrorNullPointer
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
	mov	3215,r13		! source line 3215
	mov	"\0\0SE",r10
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-128],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3511 = fcb + 20
	load	[r14+-128],r1
	add	r1,20,r1
	store	r1,[r14+-52]
!   Data Move: _temp_3510 = *_temp_3511  (sizeInBytes=4)
	load	[r14+-52],r1
	load	[r1],r1
	store	r1,[r14+-56]
!   _temp_3509 = sector + _temp_3510		(int)
	load	[r14+-112],r1
	load	[r14+-56],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-60]
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-128],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3513 = fcb + 28
	load	[r14+-128],r1
	add	r1,28,r1
	store	r1,[r14+-44]
!   Data Move: _temp_3512 = *_temp_3513  (sizeInBytes=4)
	load	[r14+-44],r1
	load	[r1],r1
	store	r1,[r14+-48]
!   _temp_3514 = &_P_Kernel_diskDriver
	set	_P_Kernel_diskDriver,r1
	store	r1,[r14+-40]
!   Prepare Argument: offset=12  value=_temp_3509  sizeInBytes=4
	load	[r14+-60],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=1  sizeInBytes=4
	mov	1,r1
	store	r1,[r15+8]
!   Prepare Argument: offset=20  value=_temp_3512  sizeInBytes=4
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
	mov	3218,r13		! source line 3218
	mov	"\0\0AS",r10
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-128],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3515 = fcb + 32
	load	[r14+-128],r1
	add	r1,32,r1
	store	r1,[r14+-36]
!   Data Move: *_temp_3515 = sector  (sizeInBytes=4)
	load	[r14+-112],r1
	load	[r14+-36],r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	3219,r13		! source line 3219
	mov	"\0\0AS",r10
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-128],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3516 = fcb + 36
	load	[r14+-128],r1
	add	r1,36,r1
	store	r1,[r14+-32]
!   Data Move: *_temp_3516 = 0  (sizeInBytes=1)
	mov	0,r1
	load	[r14+-32],r2
	storeb	r1,[r2]
! END IF...
_Label_3505:
! ASSIGNMENT STATEMENT...
	mov	3221,r13		! source line 3221
	mov	"\0\0AS",r10
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-128],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3518 = fcb + 28
	load	[r14+-128],r1
	add	r1,28,r1
	store	r1,[r14+-24]
!   Data Move: _temp_3517 = *_temp_3518  (sizeInBytes=4)
	load	[r14+-24],r1
	load	[r1],r1
	store	r1,[r14+-28]
!   posInBuffer = _temp_3517 + offset		(int)
	load	[r14+-28],r1
	load	[r14+-116],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-120]
! ASSIGNMENT STATEMENT...
	mov	3222,r13		! source line 3222
	mov	"\0\0AS",r10
!   _temp_3519 = 8192 - offset		(int)
	mov	8192,r1
	load	[r14+-116],r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=numBytes  sizeInBytes=4
	load	[r14+24],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=_temp_3519  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+4]
!   Call the function
	mov	3222,r13		! source line 3222
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
	mov	3226,r13		! source line 3226
	mov	"\0\0CE",r10
	call	MemoryCopy
! ASSIGNMENT STATEMENT...
	mov	3227,r13		! source line 3227
	mov	"\0\0AS",r10
!   targetAddr = targetAddr + bytesToMove		(int)
	load	[r14+16],r1
	load	[r14+-124],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+16]
! ASSIGNMENT STATEMENT...
	mov	3228,r13		! source line 3228
	mov	"\0\0AS",r10
!   bytePos = bytePos + bytesToMove		(int)
	load	[r14+20],r1
	load	[r14+-124],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+20]
! ASSIGNMENT STATEMENT...
	mov	3229,r13		! source line 3229
	mov	"\0\0AS",r10
!   numBytes = numBytes - bytesToMove		(int)
	load	[r14+24],r1
	load	[r14+-124],r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+24]
! END WHILE...
	jmp	_Label_3501
_Label_3503:
! SEND STATEMENT...
	mov	3236,r13		! source line 3236
	mov	"\0\0SE",r10
!   _temp_3520 = &fileManagerLock
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
	mov	3237,r13		! source line 3237
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
	.word	_Label_3521
	.word	20		! total size of parameters
	.word	136		! frame size = 136
	.word	_Label_3522
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_3523
	.word	12
	.word	4
	.word	_Label_3524
	.word	16
	.word	4
	.word	_Label_3525
	.word	20
	.word	4
	.word	_Label_3526
	.word	24
	.word	4
	.word	_Label_3527
	.word	-16
	.word	4
	.word	_Label_3528
	.word	-20
	.word	4
	.word	_Label_3529
	.word	-24
	.word	4
	.word	_Label_3530
	.word	-28
	.word	4
	.word	_Label_3531
	.word	-32
	.word	4
	.word	_Label_3532
	.word	-36
	.word	4
	.word	_Label_3533
	.word	-40
	.word	4
	.word	_Label_3534
	.word	-44
	.word	4
	.word	_Label_3535
	.word	-48
	.word	4
	.word	_Label_3536
	.word	-52
	.word	4
	.word	_Label_3537
	.word	-56
	.word	4
	.word	_Label_3538
	.word	-60
	.word	4
	.word	_Label_3539
	.word	-64
	.word	4
	.word	_Label_3540
	.word	-68
	.word	4
	.word	_Label_3541
	.word	-72
	.word	4
	.word	_Label_3542
	.word	-76
	.word	4
	.word	_Label_3543
	.word	-80
	.word	4
	.word	_Label_3544
	.word	-84
	.word	4
	.word	_Label_3545
	.word	-88
	.word	4
	.word	_Label_3546
	.word	-92
	.word	4
	.word	_Label_3547
	.word	-96
	.word	4
	.word	_Label_3548
	.word	-100
	.word	4
	.word	_Label_3549
	.word	-104
	.word	4
	.word	_Label_3550
	.word	-9
	.word	1
	.word	_Label_3551
	.word	-10
	.word	1
	.word	_Label_3552
	.word	-108
	.word	4
	.word	_Label_3553
	.word	-112
	.word	4
	.word	_Label_3554
	.word	-116
	.word	4
	.word	_Label_3555
	.word	-120
	.word	4
	.word	_Label_3556
	.word	-124
	.word	4
	.word	_Label_3557
	.word	-128
	.word	4
	.word	0
_Label_3521:
	.ascii	"FileManager"
	.ascii	"::"
	.ascii	"SynchRead\0"
	.align
_Label_3522:
	.ascii	"Pself\0"
	.align
_Label_3523:
	.byte	'P'
	.ascii	"open\0"
	.align
_Label_3524:
	.byte	'I'
	.ascii	"targetAddr\0"
	.align
_Label_3525:
	.byte	'I'
	.ascii	"bytePos\0"
	.align
_Label_3526:
	.byte	'I'
	.ascii	"numBytes\0"
	.align
_Label_3527:
	.byte	'?'
	.ascii	"_temp_3520\0"
	.align
_Label_3528:
	.byte	'?'
	.ascii	"_temp_3519\0"
	.align
_Label_3529:
	.byte	'?'
	.ascii	"_temp_3518\0"
	.align
_Label_3530:
	.byte	'?'
	.ascii	"_temp_3517\0"
	.align
_Label_3531:
	.byte	'?'
	.ascii	"_temp_3516\0"
	.align
_Label_3532:
	.byte	'?'
	.ascii	"_temp_3515\0"
	.align
_Label_3533:
	.byte	'?'
	.ascii	"_temp_3514\0"
	.align
_Label_3534:
	.byte	'?'
	.ascii	"_temp_3513\0"
	.align
_Label_3535:
	.byte	'?'
	.ascii	"_temp_3512\0"
	.align
_Label_3536:
	.byte	'?'
	.ascii	"_temp_3511\0"
	.align
_Label_3537:
	.byte	'?'
	.ascii	"_temp_3510\0"
	.align
_Label_3538:
	.byte	'?'
	.ascii	"_temp_3509\0"
	.align
_Label_3539:
	.byte	'?'
	.ascii	"_temp_3508\0"
	.align
_Label_3540:
	.byte	'?'
	.ascii	"_temp_3507\0"
	.align
_Label_3541:
	.byte	'?'
	.ascii	"_temp_3506\0"
	.align
_Label_3542:
	.byte	'?'
	.ascii	"_temp_3500\0"
	.align
_Label_3543:
	.byte	'?'
	.ascii	"_temp_3499\0"
	.align
_Label_3544:
	.byte	'?'
	.ascii	"_temp_3498\0"
	.align
_Label_3545:
	.byte	'?'
	.ascii	"_temp_3497\0"
	.align
_Label_3546:
	.byte	'?'
	.ascii	"_temp_3496\0"
	.align
_Label_3547:
	.byte	'?'
	.ascii	"_temp_3495\0"
	.align
_Label_3548:
	.byte	'?'
	.ascii	"_temp_3492\0"
	.align
_Label_3549:
	.byte	'?'
	.ascii	"_temp_3491\0"
	.align
_Label_3550:
	.byte	'C'
	.ascii	"_temp_3490\0"
	.align
_Label_3551:
	.byte	'C'
	.ascii	"_temp_3487\0"
	.align
_Label_3552:
	.byte	'?'
	.ascii	"_temp_3482\0"
	.align
_Label_3553:
	.byte	'I'
	.ascii	"sector\0"
	.align
_Label_3554:
	.byte	'I'
	.ascii	"offset\0"
	.align
_Label_3555:
	.byte	'I'
	.ascii	"posInBuffer\0"
	.align
_Label_3556:
	.byte	'I'
	.ascii	"bytesToMove\0"
	.align
_Label_3557:
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
_Label_4205:
	push	r0
	sub	r1,1,r1
	bne	_Label_4205
	mov	3242,r13		! source line 3242
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! SEND STATEMENT...
	mov	3258,r13		! source line 3258
	mov	"\0\0SE",r10
!   _temp_3558 = &fileManagerLock
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
	mov	3259,r13		! source line 3259
	mov	"\0\0IF",r10
!   if open == 0 then goto _Label_3564		(int)
	load	[r14+12],r1
	mov	0,r2
	cmp	r1,r2
	be	_Label_3564
!   _temp_3563 = 1		(1 byte)
	mov	1,r1
	storeb	r1,[r14+-10]
	jmp	_Label_3565
_Label_3564:
!   _temp_3563 = 0		(1 byte)
	mov	0,r1
	storeb	r1,[r14+-10]
_Label_3565:
!   if _temp_3563 then goto _Label_3562 else goto _Label_3559
	loadb	[r14+-10],r1
	cmp	r1,0
	be	_Label_3559
	jmp	_Label_3562
_Label_3562:
!   if intIsZero (open) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3568 = open + 20
	load	[r14+12],r1
	add	r1,20,r1
	store	r1,[r14+-108]
!   Data Move: _temp_3567 = *_temp_3568  (sizeInBytes=4)
	load	[r14+-108],r1
	load	[r1],r1
	store	r1,[r14+-112]
!   if _temp_3567 == 0 then goto _Label_3569		(int)
	load	[r14+-112],r1
	mov	0,r2
	cmp	r1,r2
	be	_Label_3569
!   _temp_3566 = 1		(1 byte)
	mov	1,r1
	storeb	r1,[r14+-9]
	jmp	_Label_3570
_Label_3569:
!   _temp_3566 = 0		(1 byte)
	mov	0,r1
	storeb	r1,[r14+-9]
_Label_3570:
!   if _temp_3566 then goto _Label_3561 else goto _Label_3559
	loadb	[r14+-9],r1
	cmp	r1,0
	be	_Label_3559
	jmp	_Label_3561
_Label_3561:
!   if intIsZero (open) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3573 = open + 20
	load	[r14+12],r1
	add	r1,20,r1
	store	r1,[r14+-96]
!   Data Move: _temp_3572 = *_temp_3573  (sizeInBytes=4)
	load	[r14+-96],r1
	load	[r1],r1
	store	r1,[r14+-100]
!   if intIsZero (_temp_3572) then goto _runtimeErrorNullPointer
	load	[r14+-100],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3574 = _temp_3572 + 20
	load	[r14+-100],r1
	add	r1,20,r1
	store	r1,[r14+-92]
!   Data Move: _temp_3571 = *_temp_3574  (sizeInBytes=4)
	load	[r14+-92],r1
	load	[r1],r1
	store	r1,[r14+-104]
!   if _temp_3571 >= 0 then goto _Label_3560		(int)
	load	[r14+-104],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_3560
!	jmp	_Label_3559
_Label_3559:
! THEN...
	mov	3260,r13		! source line 3260
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_3575 = _StringConst_171
	set	_StringConst_171,r1
	store	r1,[r14+-88]
!   Prepare Argument: offset=8  value=_temp_3575  sizeInBytes=4
	load	[r14+-88],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	3260,r13		! source line 3260
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END IF...
_Label_3560:
! ASSIGNMENT STATEMENT...
	mov	3262,r13		! source line 3262
	mov	"\0\0AS",r10
!   if intIsZero (open) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3576 = open + 20
	load	[r14+12],r1
	add	r1,20,r1
	store	r1,[r14+-84]
!   Data Move: fcb = *_temp_3576  (sizeInBytes=4)
	load	[r14+-84],r1
	load	[r1],r1
	store	r1,[r14+-136]
! WHILE STATEMENT...
	mov	3263,r13		! source line 3263
	mov	"\0\0WH",r10
_Label_3577:
!   if numBytes <= 0 then goto _Label_3579		(int)
	load	[r14+24],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	ble	_Label_3579
!	jmp	_Label_3578
_Label_3578:
	mov	3263,r13		! source line 3263
	mov	"\0\0WB",r10
! ASSIGNMENT STATEMENT...
	mov	3272,r13		! source line 3272
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
	mov	3273,r13		! source line 3273
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
	mov	3277,r13		! source line 3277
	mov	"\0\0IF",r10
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-136],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3583 = fcb + 32
	load	[r14+-136],r1
	add	r1,32,r1
	store	r1,[r14+-76]
!   Data Move: _temp_3582 = *_temp_3583  (sizeInBytes=4)
	load	[r14+-76],r1
	load	[r1],r1
	store	r1,[r14+-80]
!   if _temp_3582 == sector then goto _Label_3581		(int)
	load	[r14+-80],r1
	load	[r14+-120],r2
	cmp	r1,r2
	be	_Label_3581
!	jmp	_Label_3580
_Label_3580:
! THEN...
	mov	3279,r13		! source line 3279
	mov	"\0\0TN",r10
! SEND STATEMENT...
	mov	3279,r13		! source line 3279
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-72]
!   if intIsZero (_temp_3584) then goto _runtimeErrorNullPointer
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
_Label_3581:
! ASSIGNMENT STATEMENT...
	mov	3281,r13		! source line 3281
	mov	"\0\0AS",r10
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-136],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3586 = fcb + 28
	load	[r14+-136],r1
	add	r1,28,r1
	store	r1,[r14+-64]
!   Data Move: _temp_3585 = *_temp_3586  (sizeInBytes=4)
	load	[r14+-64],r1
	load	[r1],r1
	store	r1,[r14+-68]
!   posInBuffer = _temp_3585 + offset		(int)
	load	[r14+-68],r1
	load	[r14+-124],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-128]
! ASSIGNMENT STATEMENT...
	mov	3282,r13		! source line 3282
	mov	"\0\0AS",r10
!   _temp_3587 = 8192 - offset		(int)
	mov	8192,r1
	load	[r14+-124],r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-60]
!   Prepare Argument: offset=8  value=numBytes  sizeInBytes=4
	load	[r14+24],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=_temp_3587  sizeInBytes=4
	load	[r14+-60],r1
	store	r1,[r15+4]
!   Call the function
	mov	3282,r13		! source line 3282
	mov	"\0\0CA",r10
	call	_P_System_Min
!   Retrieve Result: targetName=bytesToMove  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-132]
! IF STATEMENT...
	mov	3283,r13		! source line 3283
	mov	"\0\0IF",r10
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-136],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3591 = fcb + 32
	load	[r14+-136],r1
	add	r1,32,r1
	store	r1,[r14+-52]
!   Data Move: _temp_3590 = *_temp_3591  (sizeInBytes=4)
	load	[r14+-52],r1
	load	[r1],r1
	store	r1,[r14+-56]
!   if _temp_3590 != sector then goto _Label_3589		(int)
	load	[r14+-56],r1
	load	[r14+-120],r2
	cmp	r1,r2
	bne	_Label_3589
!	jmp	_Label_3588
_Label_3588:
	jmp	_Label_3592
_Label_3589:
! ELSE...
	mov	3285,r13		! source line 3285
	mov	"\0\0EL",r10
! IF STATEMENT...
	mov	3285,r13		! source line 3285
	mov	"\0\0IF",r10
!   if intIsZero (offset) then goto _Label_3595
	load	[r14+-124],r1
	cmp	r1,r0
	be	_Label_3595
	jmp	_Label_3594
_Label_3595:
!   if bytesToMove != 8192 then goto _Label_3594		(int)
	load	[r14+-132],r1
	mov	8192,r2
	cmp	r1,r2
	bne	_Label_3594
!	jmp	_Label_3593
_Label_3593:
	jmp	_Label_3596
_Label_3594:
! ELSE...
	mov	3289,r13		! source line 3289
	mov	"\0\0EL",r10
! SEND STATEMENT...
	mov	3289,r13		! source line 3289
	mov	"\0\0SE",r10
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-136],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3599 = fcb + 20
	load	[r14+-136],r1
	add	r1,20,r1
	store	r1,[r14+-40]
!   Data Move: _temp_3598 = *_temp_3599  (sizeInBytes=4)
	load	[r14+-40],r1
	load	[r1],r1
	store	r1,[r14+-44]
!   _temp_3597 = sector + _temp_3598		(int)
	load	[r14+-120],r1
	load	[r14+-44],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-48]
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-136],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3601 = fcb + 28
	load	[r14+-136],r1
	add	r1,28,r1
	store	r1,[r14+-32]
!   Data Move: _temp_3600 = *_temp_3601  (sizeInBytes=4)
	load	[r14+-32],r1
	load	[r1],r1
	store	r1,[r14+-36]
!   _temp_3602 = &_P_Kernel_diskDriver
	set	_P_Kernel_diskDriver,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=12  value=_temp_3597  sizeInBytes=4
	load	[r14+-48],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=1  sizeInBytes=4
	mov	1,r1
	store	r1,[r15+8]
!   Prepare Argument: offset=20  value=_temp_3600  sizeInBytes=4
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
_Label_3596:
! END IF...
_Label_3592:
! ASSIGNMENT STATEMENT...
	mov	3293,r13		! source line 3293
	mov	"\0\0AS",r10
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-136],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3603 = fcb + 32
	load	[r14+-136],r1
	add	r1,32,r1
	store	r1,[r14+-24]
!   Data Move: *_temp_3603 = sector  (sizeInBytes=4)
	load	[r14+-120],r1
	load	[r14+-24],r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	3294,r13		! source line 3294
	mov	"\0\0AS",r10
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-136],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3604 = fcb + 36
	load	[r14+-136],r1
	add	r1,36,r1
	store	r1,[r14+-20]
!   Data Move: *_temp_3604 = 1  (sizeInBytes=1)
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
	mov	3298,r13		! source line 3298
	mov	"\0\0CE",r10
	call	MemoryCopy
! ASSIGNMENT STATEMENT...
	mov	3299,r13		! source line 3299
	mov	"\0\0AS",r10
!   sourceAddr = sourceAddr + bytesToMove		(int)
	load	[r14+16],r1
	load	[r14+-132],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+16]
! ASSIGNMENT STATEMENT...
	mov	3300,r13		! source line 3300
	mov	"\0\0AS",r10
!   bytePos = bytePos + bytesToMove		(int)
	load	[r14+20],r1
	load	[r14+-132],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+20]
! ASSIGNMENT STATEMENT...
	mov	3301,r13		! source line 3301
	mov	"\0\0AS",r10
!   numBytes = numBytes - bytesToMove		(int)
	load	[r14+24],r1
	load	[r14+-132],r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+24]
! END WHILE...
	jmp	_Label_3577
_Label_3579:
! SEND STATEMENT...
	mov	3308,r13		! source line 3308
	mov	"\0\0SE",r10
!   _temp_3605 = &fileManagerLock
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
	mov	3310,r13		! source line 3310
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
	.word	_Label_3606
	.word	20		! total size of parameters
	.word	144		! frame size = 144
	.word	_Label_3607
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_3608
	.word	12
	.word	4
	.word	_Label_3609
	.word	16
	.word	4
	.word	_Label_3610
	.word	20
	.word	4
	.word	_Label_3611
	.word	24
	.word	4
	.word	_Label_3612
	.word	-16
	.word	4
	.word	_Label_3613
	.word	-20
	.word	4
	.word	_Label_3614
	.word	-24
	.word	4
	.word	_Label_3615
	.word	-28
	.word	4
	.word	_Label_3616
	.word	-32
	.word	4
	.word	_Label_3617
	.word	-36
	.word	4
	.word	_Label_3618
	.word	-40
	.word	4
	.word	_Label_3619
	.word	-44
	.word	4
	.word	_Label_3620
	.word	-48
	.word	4
	.word	_Label_3621
	.word	-52
	.word	4
	.word	_Label_3622
	.word	-56
	.word	4
	.word	_Label_3623
	.word	-60
	.word	4
	.word	_Label_3624
	.word	-64
	.word	4
	.word	_Label_3625
	.word	-68
	.word	4
	.word	_Label_3626
	.word	-72
	.word	4
	.word	_Label_3627
	.word	-76
	.word	4
	.word	_Label_3628
	.word	-80
	.word	4
	.word	_Label_3629
	.word	-84
	.word	4
	.word	_Label_3630
	.word	-88
	.word	4
	.word	_Label_3631
	.word	-92
	.word	4
	.word	_Label_3632
	.word	-96
	.word	4
	.word	_Label_3633
	.word	-100
	.word	4
	.word	_Label_3634
	.word	-104
	.word	4
	.word	_Label_3635
	.word	-108
	.word	4
	.word	_Label_3636
	.word	-112
	.word	4
	.word	_Label_3637
	.word	-9
	.word	1
	.word	_Label_3638
	.word	-10
	.word	1
	.word	_Label_3639
	.word	-116
	.word	4
	.word	_Label_3640
	.word	-120
	.word	4
	.word	_Label_3641
	.word	-124
	.word	4
	.word	_Label_3642
	.word	-128
	.word	4
	.word	_Label_3643
	.word	-132
	.word	4
	.word	_Label_3644
	.word	-136
	.word	4
	.word	0
_Label_3606:
	.ascii	"FileManager"
	.ascii	"::"
	.ascii	"SynchWrite\0"
	.align
_Label_3607:
	.ascii	"Pself\0"
	.align
_Label_3608:
	.byte	'P'
	.ascii	"open\0"
	.align
_Label_3609:
	.byte	'I'
	.ascii	"sourceAddr\0"
	.align
_Label_3610:
	.byte	'I'
	.ascii	"bytePos\0"
	.align
_Label_3611:
	.byte	'I'
	.ascii	"numBytes\0"
	.align
_Label_3612:
	.byte	'?'
	.ascii	"_temp_3605\0"
	.align
_Label_3613:
	.byte	'?'
	.ascii	"_temp_3604\0"
	.align
_Label_3614:
	.byte	'?'
	.ascii	"_temp_3603\0"
	.align
_Label_3615:
	.byte	'?'
	.ascii	"_temp_3602\0"
	.align
_Label_3616:
	.byte	'?'
	.ascii	"_temp_3601\0"
	.align
_Label_3617:
	.byte	'?'
	.ascii	"_temp_3600\0"
	.align
_Label_3618:
	.byte	'?'
	.ascii	"_temp_3599\0"
	.align
_Label_3619:
	.byte	'?'
	.ascii	"_temp_3598\0"
	.align
_Label_3620:
	.byte	'?'
	.ascii	"_temp_3597\0"
	.align
_Label_3621:
	.byte	'?'
	.ascii	"_temp_3591\0"
	.align
_Label_3622:
	.byte	'?'
	.ascii	"_temp_3590\0"
	.align
_Label_3623:
	.byte	'?'
	.ascii	"_temp_3587\0"
	.align
_Label_3624:
	.byte	'?'
	.ascii	"_temp_3586\0"
	.align
_Label_3625:
	.byte	'?'
	.ascii	"_temp_3585\0"
	.align
_Label_3626:
	.byte	'?'
	.ascii	"_temp_3584\0"
	.align
_Label_3627:
	.byte	'?'
	.ascii	"_temp_3583\0"
	.align
_Label_3628:
	.byte	'?'
	.ascii	"_temp_3582\0"
	.align
_Label_3629:
	.byte	'?'
	.ascii	"_temp_3576\0"
	.align
_Label_3630:
	.byte	'?'
	.ascii	"_temp_3575\0"
	.align
_Label_3631:
	.byte	'?'
	.ascii	"_temp_3574\0"
	.align
_Label_3632:
	.byte	'?'
	.ascii	"_temp_3573\0"
	.align
_Label_3633:
	.byte	'?'
	.ascii	"_temp_3572\0"
	.align
_Label_3634:
	.byte	'?'
	.ascii	"_temp_3571\0"
	.align
_Label_3635:
	.byte	'?'
	.ascii	"_temp_3568\0"
	.align
_Label_3636:
	.byte	'?'
	.ascii	"_temp_3567\0"
	.align
_Label_3637:
	.byte	'C'
	.ascii	"_temp_3566\0"
	.align
_Label_3638:
	.byte	'C'
	.ascii	"_temp_3563\0"
	.align
_Label_3639:
	.byte	'?'
	.ascii	"_temp_3558\0"
	.align
_Label_3640:
	.byte	'I'
	.ascii	"sector\0"
	.align
_Label_3641:
	.byte	'I'
	.ascii	"offset\0"
	.align
_Label_3642:
	.byte	'I'
	.ascii	"posInBuffer\0"
	.align
_Label_3643:
	.byte	'I'
	.ascii	"bytesToMove\0"
	.align
_Label_3644:
	.byte	'P'
	.ascii	"fcb\0"
	.align
! 
! ===============  CLASS FileControlBlock  ===============
! 
! Dispatch Table:
! 
_P_Kernel_FileControlBlock:
	.word	_Label_3645
	jmp	_Method_P_Kernel_FileControlBlock_1	! 4:	Init
	jmp	_Method_P_Kernel_FileControlBlock_2	! 8:	Print
	.word	0
! 
! Class descriptor:
! 
_Label_3645:
	.word	1129070931		! Magic number 0x434c4153 == 'CLAS'
	.word	_Label_3646
	.word	_sourceFileName
	.word	361		! line number
	.word	40		! size of instances, in bytes
	.word	_P_Kernel_FileControlBlock
	.word	_P_List_Listable
	.word	_P_System_Object
	.word	0
_Label_3646:
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
_Label_4206:
	push	r0
	sub	r1,1,r1
	bne	_Label_4206
	mov	3346,r13		! source line 3346
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	3347,r13		! source line 3347
	mov	"\0\0AS",r10
!   numberOfUsers = 0		(4 bytes)
	mov	0,r1
	load	[r14+8],r2
	store	r1,[r2+16]
! ASSIGNMENT STATEMENT...
	mov	3348,r13		! source line 3348
	mov	"\0\0AS",r10
	mov	3348,r13		! source line 3348
	mov	"\0\0SE",r10
!   _temp_3647 = &_P_Kernel_frameManager
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
	mov	3349,r13		! source line 3349
	mov	"\0\0AS",r10
!   relativeSectorInBuffer = -1		(4 bytes)
	mov	-1,r1
	load	[r14+8],r2
	store	r1,[r2+32]
! ASSIGNMENT STATEMENT...
	mov	3350,r13		! source line 3350
	mov	"\0\0AS",r10
!   bufferIsDirty = 0		(1 byte)
	mov	0,r1
	load	[r14+8],r2
	storeb	r1,[r2+36]
! ASSIGNMENT STATEMENT...
	mov	3351,r13		! source line 3351
	mov	"\0\0AS",r10
!   startingSectorOfFile = -1		(4 bytes)
	mov	-1,r1
	load	[r14+8],r2
	store	r1,[r2+20]
! RETURN STATEMENT...
	mov	3351,r13		! source line 3351
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
	.word	_Label_3648
	.word	4		! total size of parameters
	.word	8		! frame size = 8
	.word	_Label_3649
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_3650
	.word	-12
	.word	4
	.word	0
_Label_3648:
	.ascii	"FileControlBlock"
	.ascii	"::"
	.ascii	"Init\0"
	.align
_Label_3649:
	.ascii	"Pself\0"
	.align
_Label_3650:
	.byte	'?'
	.ascii	"_temp_3647\0"
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
_Label_4207:
	push	r0
	sub	r1,1,r1
	bne	_Label_4207
	mov	3356,r13		! source line 3356
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   _temp_3651 = _StringConst_172
	set	_StringConst_172,r1
	store	r1,[r14+-32]
!   Prepare Argument: offset=8  value=_temp_3651  sizeInBytes=4
	load	[r14+-32],r1
	store	r1,[r15+0]
!   Call the function
	mov	3357,r13		! source line 3357
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=fcbID  sizeInBytes=4
	load	[r14+8],r1
	load	[r1+12],r1
	store	r1,[r15+0]
!   Call the function
	mov	3358,r13		! source line 3358
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   _temp_3652 = _StringConst_173
	set	_StringConst_173,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=8  value=_temp_3652  sizeInBytes=4
	load	[r14+-28],r1
	store	r1,[r15+0]
!   Call the function
	mov	3359,r13		! source line 3359
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=numberOfUsers  sizeInBytes=4
	load	[r14+8],r1
	load	[r1+16],r1
	store	r1,[r15+0]
!   Call the function
	mov	3360,r13		! source line 3360
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   _temp_3653 = _StringConst_174
	set	_StringConst_174,r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=8  value=_temp_3653  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+0]
!   Call the function
	mov	3361,r13		! source line 3361
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=startingSectorOfFile  sizeInBytes=4
	load	[r14+8],r1
	load	[r1+20],r1
	store	r1,[r15+0]
!   Call the function
	mov	3362,r13		! source line 3362
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   _temp_3654 = _StringConst_175
	set	_StringConst_175,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_3654  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   Call the function
	mov	3363,r13		! source line 3363
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=sizeOfFileInBytes  sizeInBytes=4
	load	[r14+8],r1
	load	[r1+24],r1
	store	r1,[r15+0]
!   Call the function
	mov	3364,r13		! source line 3364
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   _temp_3655 = _StringConst_176
	set	_StringConst_176,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_3655  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+0]
!   Call the function
	mov	3365,r13		! source line 3365
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=bufferPtr  sizeInBytes=4
	load	[r14+8],r1
	load	[r1+28],r1
	store	r1,[r15+0]
!   Call the function
	mov	3366,r13		! source line 3366
	mov	"\0\0CE",r10
	call	printHex
! CALL STATEMENT...
!   _temp_3656 = _StringConst_177
	set	_StringConst_177,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_3656  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	3367,r13		! source line 3367
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=relativeSectorInBuffer  sizeInBytes=4
	load	[r14+8],r1
	load	[r1+32],r1
	store	r1,[r15+0]
!   Call the function
	mov	3368,r13		! source line 3368
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   Call the function
	mov	3369,r13		! source line 3369
	mov	"\0\0CA",r10
	call	_P_System_nl
! RETURN STATEMENT...
	mov	3369,r13		! source line 3369
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
	.word	_Label_3657
	.word	4		! total size of parameters
	.word	28		! frame size = 28
	.word	_Label_3658
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_3659
	.word	-12
	.word	4
	.word	_Label_3660
	.word	-16
	.word	4
	.word	_Label_3661
	.word	-20
	.word	4
	.word	_Label_3662
	.word	-24
	.word	4
	.word	_Label_3663
	.word	-28
	.word	4
	.word	_Label_3664
	.word	-32
	.word	4
	.word	0
_Label_3657:
	.ascii	"FileControlBlock"
	.ascii	"::"
	.ascii	"Print\0"
	.align
_Label_3658:
	.ascii	"Pself\0"
	.align
_Label_3659:
	.byte	'?'
	.ascii	"_temp_3656\0"
	.align
_Label_3660:
	.byte	'?'
	.ascii	"_temp_3655\0"
	.align
_Label_3661:
	.byte	'?'
	.ascii	"_temp_3654\0"
	.align
_Label_3662:
	.byte	'?'
	.ascii	"_temp_3653\0"
	.align
_Label_3663:
	.byte	'?'
	.ascii	"_temp_3652\0"
	.align
_Label_3664:
	.byte	'?'
	.ascii	"_temp_3651\0"
	.align
! 
! ===============  CLASS OpenFile  ===============
! 
! Dispatch Table:
! 
_P_Kernel_OpenFile:
	.word	_Label_3665
	jmp	_Method_P_Kernel_OpenFile_1	! 4:	Print
	jmp	_Method_P_Kernel_OpenFile_2	! 8:	ReadBytes
	jmp	_Method_P_Kernel_OpenFile_3	! 12:	ReadInt
	jmp	_Method_P_Kernel_OpenFile_4	! 16:	LoadExecutable
	.word	0
! 
! Class descriptor:
! 
_Label_3665:
	.word	1129070931		! Magic number 0x434c4153 == 'CLAS'
	.word	_Label_3666
	.word	_sourceFileName
	.word	378		! line number
	.word	28		! size of instances, in bytes
	.word	_P_Kernel_OpenFile
	.word	_P_List_Listable
	.word	_P_System_Object
	.word	0
_Label_3666:
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
_Label_4208:
	push	r0
	sub	r1,1,r1
	bne	_Label_4208
	mov	3380,r13		! source line 3380
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   _temp_3667 = _StringConst_178
	set	_StringConst_178,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_3667  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   Call the function
	mov	3381,r13		! source line 3381
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=currentPos  sizeInBytes=4
	load	[r14+8],r1
	load	[r1+16],r1
	store	r1,[r15+0]
!   Call the function
	mov	3382,r13		! source line 3382
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   _temp_3668 = _StringConst_179
	set	_StringConst_179,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_3668  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+0]
!   Call the function
	mov	3383,r13		! source line 3383
	mov	"\0\0CE",r10
	call	print
! IF STATEMENT...
	mov	3384,r13		! source line 3384
	mov	"\0\0IF",r10
!   if fcb == 0 then goto _Label_3670		(int)
	load	[r14+8],r1
	load	[r1+20],r1
	mov	0,r2
	cmp	r1,r2
	be	_Label_3670
!	jmp	_Label_3669
_Label_3669:
! THEN...
	mov	3385,r13		! source line 3385
	mov	"\0\0TN",r10
! SEND STATEMENT...
	mov	3385,r13		! source line 3385
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
	jmp	_Label_3671
_Label_3670:
! ELSE...
	mov	3387,r13		! source line 3387
	mov	"\0\0EL",r10
! CALL STATEMENT...
!   _temp_3672 = _StringConst_180
	set	_StringConst_180,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_3672  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	3387,r13		! source line 3387
	mov	"\0\0CE",r10
	call	print
! END IF...
_Label_3671:
! RETURN STATEMENT...
	mov	3384,r13		! source line 3384
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
	.word	_Label_3673
	.word	4		! total size of parameters
	.word	16		! frame size = 16
	.word	_Label_3674
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_3675
	.word	-12
	.word	4
	.word	_Label_3676
	.word	-16
	.word	4
	.word	_Label_3677
	.word	-20
	.word	4
	.word	0
_Label_3673:
	.ascii	"OpenFile"
	.ascii	"::"
	.ascii	"Print\0"
	.align
_Label_3674:
	.ascii	"Pself\0"
	.align
_Label_3675:
	.byte	'?'
	.ascii	"_temp_3672\0"
	.align
_Label_3676:
	.byte	'?'
	.ascii	"_temp_3668\0"
	.align
_Label_3677:
	.byte	'?'
	.ascii	"_temp_3667\0"
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
_Label_4209:
	push	r0
	sub	r1,1,r1
	bne	_Label_4209
	mov	3393,r13		! source line 3393
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! SEND STATEMENT...
	mov	3403,r13		! source line 3403
	mov	"\0\0SE",r10
!   _temp_3678 = &_P_Kernel_fileManager
	set	_P_Kernel_fileManager,r1
	store	r1,[r14+-36]
!   _temp_3679 = _temp_3678 + 4
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
	mov	3404,r13		! source line 3404
	mov	"\0\0AS",r10
!   pos = currentPos		(4 bytes)
	load	[r14+8],r1
	load	[r1+16],r1
	store	r1,[r14+-40]
! ASSIGNMENT STATEMENT...
	mov	3405,r13		! source line 3405
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
	mov	3406,r13		! source line 3406
	mov	"\0\0SE",r10
!   _temp_3680 = &_P_Kernel_fileManager
	set	_P_Kernel_fileManager,r1
	store	r1,[r14+-28]
!   _temp_3681 = _temp_3680 + 4
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
	mov	3407,r13		! source line 3407
	mov	"\0\0RE",r10
	mov	3407,r13		! source line 3407
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-20]
!   _temp_3684 = &_P_Kernel_fileManager
	set	_P_Kernel_fileManager,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=12  value=_temp_3683  sizeInBytes=4
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
!   Retrieve Result: targetName=_temp_3682  sizeInBytes=1
	loadb	[r15],r1
	storeb	r1,[r14+-9]
!   ReturnResult: _temp_3682  (sizeInBytes=1)
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
	.word	_Label_3685
	.word	12		! total size of parameters
	.word	52		! frame size = 52
	.word	_Label_3686
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_3687
	.word	12
	.word	4
	.word	_Label_3688
	.word	16
	.word	4
	.word	_Label_3689
	.word	-16
	.word	4
	.word	_Label_3690
	.word	-20
	.word	4
	.word	_Label_3691
	.word	-9
	.word	1
	.word	_Label_3692
	.word	-24
	.word	4
	.word	_Label_3693
	.word	-28
	.word	4
	.word	_Label_3694
	.word	-32
	.word	4
	.word	_Label_3695
	.word	-36
	.word	4
	.word	_Label_3696
	.word	-40
	.word	4
	.word	0
_Label_3685:
	.ascii	"OpenFile"
	.ascii	"::"
	.ascii	"ReadBytes\0"
	.align
_Label_3686:
	.ascii	"Pself\0"
	.align
_Label_3687:
	.byte	'I'
	.ascii	"targetAddr\0"
	.align
_Label_3688:
	.byte	'I'
	.ascii	"numBytes\0"
	.align
_Label_3689:
	.byte	'?'
	.ascii	"_temp_3684\0"
	.align
_Label_3690:
	.byte	'?'
	.ascii	"_temp_3683\0"
	.align
_Label_3691:
	.byte	'C'
	.ascii	"_temp_3682\0"
	.align
_Label_3692:
	.byte	'?'
	.ascii	"_temp_3681\0"
	.align
_Label_3693:
	.byte	'?'
	.ascii	"_temp_3680\0"
	.align
_Label_3694:
	.byte	'?'
	.ascii	"_temp_3679\0"
	.align
_Label_3695:
	.byte	'?'
	.ascii	"_temp_3678\0"
	.align
_Label_3696:
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
_Label_4210:
	push	r0
	sub	r1,1,r1
	bne	_Label_4210
	mov	3412,r13		! source line 3412
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! IF STATEMENT...
	mov	3417,r13		! source line 3417
	mov	"\0\0IF",r10
	mov	3417,r13		! source line 3417
	mov	"\0\0SE",r10
!   _temp_3700 = &i
	add	r14,-28,r1
	store	r1,[r14+-24]
	load	[r14+8],r1
	store	r1,[r14+-20]
!   if intIsZero (_temp_3701) then goto _runtimeErrorNullPointer
	load	[r14+-20],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Prepare Argument: offset=12  value=_temp_3700  sizeInBytes=4
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
!   Retrieve Result: targetName=_temp_3699  sizeInBytes=1
	loadb	[r15],r1
	storeb	r1,[r14+-9]
!   if _temp_3699 then goto _Label_3698 else goto _Label_3697
	loadb	[r14+-9],r1
	cmp	r1,0
	be	_Label_3697
	jmp	_Label_3698
_Label_3697:
! THEN...
	mov	3418,r13		! source line 3418
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_3702 = _StringConst_181
	set	_StringConst_181,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_3702  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	3418,r13		! source line 3418
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END IF...
_Label_3698:
! RETURN STATEMENT...
	mov	3420,r13		! source line 3420
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
	.word	_Label_3703
	.word	4		! total size of parameters
	.word	32		! frame size = 32
	.word	_Label_3704
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_3705
	.word	-16
	.word	4
	.word	_Label_3706
	.word	-20
	.word	4
	.word	_Label_3707
	.word	-24
	.word	4
	.word	_Label_3708
	.word	-9
	.word	1
	.word	_Label_3709
	.word	-28
	.word	4
	.word	0
_Label_3703:
	.ascii	"OpenFile"
	.ascii	"::"
	.ascii	"ReadInt\0"
	.align
_Label_3704:
	.ascii	"Pself\0"
	.align
_Label_3705:
	.byte	'?'
	.ascii	"_temp_3702\0"
	.align
_Label_3706:
	.byte	'?'
	.ascii	"_temp_3701\0"
	.align
_Label_3707:
	.byte	'?'
	.ascii	"_temp_3700\0"
	.align
_Label_3708:
	.byte	'C'
	.ascii	"_temp_3699\0"
	.align
_Label_3709:
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
_Label_4211:
	push	r0
	sub	r1,1,r1
	bne	_Label_4211
	mov	3425,r13		! source line 3425
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! IF STATEMENT...
	mov	3451,r13		! source line 3451
	mov	"\0\0IF",r10
!   if intIsZero (addrSpace) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3713 = addrSpace + 4
	load	[r14+12],r1
	add	r1,4,r1
	store	r1,[r14+-216]
!   Data Move: _temp_3712 = *_temp_3713  (sizeInBytes=4)
	load	[r14+-216],r1
	load	[r1],r1
	store	r1,[r14+-220]
!   if intIsZero (_temp_3712) then goto _Label_3711
	load	[r14+-220],r1
	cmp	r1,r0
	be	_Label_3711
!	jmp	_Label_3710
_Label_3710:
! THEN...
	mov	3452,r13		! source line 3452
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_3714 = _StringConst_182
	set	_StringConst_182,r1
	store	r1,[r14+-212]
!   Prepare Argument: offset=8  value=_temp_3714  sizeInBytes=4
	load	[r14+-212],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	3452,r13		! source line 3452
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END IF...
_Label_3711:
! IF STATEMENT...
	mov	3456,r13		! source line 3456
	mov	"\0\0IF",r10
	mov	3456,r13		! source line 3456
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-204]
!   if intIsZero (_temp_3718) then goto _runtimeErrorNullPointer
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
!   Retrieve Result: targetName=_temp_3717  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-208]
!   if _temp_3717 == 1112300152 then goto _Label_3716		(int)
	load	[r14+-208],r1
	set	1112300152,r2
	cmp	r1,r2
	be	_Label_3716
!	jmp	_Label_3715
_Label_3715:
! THEN...
	mov	3457,r13		! source line 3457
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_3719 = _StringConst_183
	set	_StringConst_183,r1
	store	r1,[r14+-200]
!   Prepare Argument: offset=8  value=_temp_3719  sizeInBytes=4
	load	[r14+-200],r1
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
_Label_3716:
! ASSIGNMENT STATEMENT...
	mov	3462,r13		! source line 3462
	mov	"\0\0AS",r10
	mov	3462,r13		! source line 3462
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-196]
!   if intIsZero (_temp_3720) then goto _runtimeErrorNullPointer
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
	mov	3463,r13		! source line 3463
	mov	"\0\0AS",r10
	mov	3463,r13		! source line 3463
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-192]
!   if intIsZero (_temp_3721) then goto _runtimeErrorNullPointer
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
	mov	3464,r13		! source line 3464
	mov	"\0\0AS",r10
	mov	3464,r13		! source line 3464
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-188]
!   if intIsZero (_temp_3722) then goto _runtimeErrorNullPointer
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
	mov	3465,r13		! source line 3465
	mov	"\0\0AS",r10
	mov	3465,r13		! source line 3465
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-184]
!   if intIsZero (_temp_3723) then goto _runtimeErrorNullPointer
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
	mov	3466,r13		! source line 3466
	mov	"\0\0AS",r10
	mov	3466,r13		! source line 3466
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-180]
!   if intIsZero (_temp_3724) then goto _runtimeErrorNullPointer
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
	mov	3467,r13		! source line 3467
	mov	"\0\0AS",r10
	mov	3467,r13		! source line 3467
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-176]
!   if intIsZero (_temp_3725) then goto _runtimeErrorNullPointer
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
	mov	3470,r13		! source line 3470
	mov	"\0\0IF",r10
!   _temp_3728 = textSize rem 8192		(int)
	load	[r14+-232],r1
	mov	8192,r2
	cmp	r2,0
	be	_runtimeErrorZeroDivide
	rem	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-172]
!   if intIsZero (_temp_3728) then goto _Label_3727
	load	[r14+-172],r1
	cmp	r1,r0
	be	_Label_3727
!	jmp	_Label_3726
_Label_3726:
! THEN...
	mov	3471,r13		! source line 3471
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_3729 = _StringConst_184
	set	_StringConst_184,r1
	store	r1,[r14+-168]
!   Prepare Argument: offset=8  value=_temp_3729  sizeInBytes=4
	load	[r14+-168],r1
	store	r1,[r15+0]
!   Call the function
	mov	3471,r13		! source line 3471
	mov	"\0\0CE",r10
	call	print
! RETURN STATEMENT...
	mov	3472,r13		! source line 3472
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,276,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_3727:
! ASSIGNMENT STATEMENT...
	mov	3474,r13		! source line 3474
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
	mov	3478,r13		! source line 3478
	mov	"\0\0IF",r10
!   if intIsZero (textStart) then goto _Label_3731
	load	[r14+-244],r1
	cmp	r1,r0
	be	_Label_3731
!	jmp	_Label_3730
_Label_3730:
! THEN...
	mov	3479,r13		! source line 3479
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_3732 = _StringConst_185
	set	_StringConst_185,r1
	store	r1,[r14+-164]
!   Prepare Argument: offset=8  value=_temp_3732  sizeInBytes=4
	load	[r14+-164],r1
	store	r1,[r15+0]
!   Call the function
	mov	3479,r13		! source line 3479
	mov	"\0\0CE",r10
	call	print
! RETURN STATEMENT...
	mov	3480,r13		! source line 3480
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,276,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_3731:
! IF STATEMENT...
	mov	3484,r13		! source line 3484
	mov	"\0\0IF",r10
!   _temp_3735 = dataSize rem 8192		(int)
	load	[r14+-236],r1
	mov	8192,r2
	cmp	r2,0
	be	_runtimeErrorZeroDivide
	rem	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-160]
!   if intIsZero (_temp_3735) then goto _Label_3734
	load	[r14+-160],r1
	cmp	r1,r0
	be	_Label_3734
!	jmp	_Label_3733
_Label_3733:
! THEN...
	mov	3485,r13		! source line 3485
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_3736 = _StringConst_186
	set	_StringConst_186,r1
	store	r1,[r14+-156]
!   Prepare Argument: offset=8  value=_temp_3736  sizeInBytes=4
	load	[r14+-156],r1
	store	r1,[r15+0]
!   Call the function
	mov	3485,r13		! source line 3485
	mov	"\0\0CE",r10
	call	print
! RETURN STATEMENT...
	mov	3486,r13		! source line 3486
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,276,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_3734:
! IF STATEMENT...
	mov	3488,r13		! source line 3488
	mov	"\0\0IF",r10
!   _temp_3739 = textStart + textSize		(int)
	load	[r14+-244],r1
	load	[r14+-232],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-152]
!   if dataStart == _temp_3739 then goto _Label_3738		(int)
	load	[r14+-248],r1
	load	[r14+-152],r2
	cmp	r1,r2
	be	_Label_3738
!	jmp	_Label_3737
_Label_3737:
! THEN...
	mov	3489,r13		! source line 3489
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_3740 = _StringConst_187
	set	_StringConst_187,r1
	store	r1,[r14+-148]
!   Prepare Argument: offset=8  value=_temp_3740  sizeInBytes=4
	load	[r14+-148],r1
	store	r1,[r15+0]
!   Call the function
	mov	3489,r13		! source line 3489
	mov	"\0\0CE",r10
	call	print
! RETURN STATEMENT...
	mov	3490,r13		! source line 3490
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,276,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_3738:
! ASSIGNMENT STATEMENT...
	mov	3492,r13		! source line 3492
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
	mov	3495,r13		! source line 3495
	mov	"\0\0IF",r10
!   _temp_3743 = bssSize rem 8192		(int)
	load	[r14+-240],r1
	mov	8192,r2
	cmp	r2,0
	be	_runtimeErrorZeroDivide
	rem	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-144]
!   if intIsZero (_temp_3743) then goto _Label_3742
	load	[r14+-144],r1
	cmp	r1,r0
	be	_Label_3742
!	jmp	_Label_3741
_Label_3741:
! THEN...
	mov	3496,r13		! source line 3496
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_3744 = _StringConst_188
	set	_StringConst_188,r1
	store	r1,[r14+-140]
!   Prepare Argument: offset=8  value=_temp_3744  sizeInBytes=4
	load	[r14+-140],r1
	store	r1,[r15+0]
!   Call the function
	mov	3496,r13		! source line 3496
	mov	"\0\0CE",r10
	call	print
! RETURN STATEMENT...
	mov	3497,r13		! source line 3497
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
! IF STATEMENT...
	mov	3499,r13		! source line 3499
	mov	"\0\0IF",r10
!   _temp_3747 = dataStart + dataSize		(int)
	load	[r14+-248],r1
	load	[r14+-236],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-136]
!   if bssStart == _temp_3747 then goto _Label_3746		(int)
	load	[r14+-252],r1
	load	[r14+-136],r2
	cmp	r1,r2
	be	_Label_3746
!	jmp	_Label_3745
_Label_3745:
! THEN...
	mov	3500,r13		! source line 3500
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_3748 = _StringConst_189
	set	_StringConst_189,r1
	store	r1,[r14+-132]
!   Prepare Argument: offset=8  value=_temp_3748  sizeInBytes=4
	load	[r14+-132],r1
	store	r1,[r15+0]
!   Call the function
	mov	3500,r13		! source line 3500
	mov	"\0\0CE",r10
	call	print
! RETURN STATEMENT...
	mov	3501,r13		! source line 3501
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,276,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_3746:
! ASSIGNMENT STATEMENT...
	mov	3503,r13		! source line 3503
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
	mov	3506,r13		! source line 3506
	mov	"\0\0AS",r10
!   _temp_3751 = textSizeInPages + dataSizeInPages		(int)
	load	[r14+-260],r1
	load	[r14+-264],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-120]
!   _temp_3750 = _temp_3751 + bssSizeInPages		(int)
	load	[r14+-120],r1
	load	[r14+-268],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-124]
!   _temp_3749 = _temp_3750 + 1		(int)
	load	[r14+-124],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-128]
!   i = _temp_3749 + 0		(int)
	load	[r14+-128],r1
	mov	0,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-256]
! IF STATEMENT...
	mov	3521,r13		! source line 3521
	mov	"\0\0IF",r10
!   if i <= 20 then goto _Label_3753		(int)
	load	[r14+-256],r1
	mov	20,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	ble	_Label_3753
!	jmp	_Label_3752
_Label_3752:
! THEN...
	mov	3522,r13		! source line 3522
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_3754 = _StringConst_190
	set	_StringConst_190,r1
	store	r1,[r14+-116]
!   Prepare Argument: offset=8  value=_temp_3754  sizeInBytes=4
	load	[r14+-116],r1
	store	r1,[r15+0]
!   Call the function
	mov	3522,r13		! source line 3522
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_3755 = _StringConst_191
	set	_StringConst_191,r1
	store	r1,[r14+-112]
!   Prepare Argument: offset=8  value=_temp_3755  sizeInBytes=4
	load	[r14+-112],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=i  sizeInBytes=4
	load	[r14+-256],r1
	store	r1,[r15+4]
!   Call the function
	mov	3523,r13		! source line 3523
	mov	"\0\0CA",r10
	call	_P_System_printIntVar
! CALL STATEMENT...
!   _temp_3756 = _StringConst_192
	set	_StringConst_192,r1
	store	r1,[r14+-108]
!   Prepare Argument: offset=8  value=_temp_3756  sizeInBytes=4
	load	[r14+-108],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=20  sizeInBytes=4
	mov	20,r1
	store	r1,[r15+4]
!   Call the function
	mov	3524,r13		! source line 3524
	mov	"\0\0CA",r10
	call	_P_System_printIntVar
! RETURN STATEMENT...
	mov	3525,r13		! source line 3525
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,276,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_3753:
! SEND STATEMENT...
	mov	3528,r13		! source line 3528
	mov	"\0\0SE",r10
!   _temp_3757 = &_P_Kernel_frameManager
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
	mov	3534,r13		! source line 3534
	mov	"\0\0IF",r10
	mov	3534,r13		! source line 3534
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-96]
!   if intIsZero (_temp_3761) then goto _runtimeErrorNullPointer
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
!   Retrieve Result: targetName=_temp_3760  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-100]
!   if _temp_3760 == 707406378 then goto _Label_3759		(int)
	load	[r14+-100],r1
	set	707406378,r2
	cmp	r1,r2
	be	_Label_3759
!	jmp	_Label_3758
_Label_3758:
! THEN...
	mov	3535,r13		! source line 3535
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_3762 = _StringConst_193
	set	_StringConst_193,r1
	store	r1,[r14+-92]
!   Prepare Argument: offset=8  value=_temp_3762  sizeInBytes=4
	load	[r14+-92],r1
	store	r1,[r15+0]
!   Call the function
	mov	3535,r13		! source line 3535
	mov	"\0\0CE",r10
	call	print
! SEND STATEMENT...
	mov	3536,r13		! source line 3536
	mov	"\0\0SE",r10
!   _temp_3763 = &_P_Kernel_frameManager
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
_Label_3759:
! ASSIGNMENT STATEMENT...
	mov	3541,r13		! source line 3541
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
	mov	3542,r13		! source line 3542
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_3768 = 1		(4 bytes)
	mov	1,r1
	store	r1,[r14+-84]
!   Calculate and save the FOR-LOOP ending value
!   _temp_3769 = textSizeInPages		(4 bytes)
	load	[r14+-260],r1
	store	r1,[r14+-80]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_3768  (sizeInBytes=4)
	load	[r14+-84],r1
	store	r1,[r14+-256]
_Label_3764:
!   Perform the FOR-LOOP termination test
!   if i > _temp_3769 then goto _Label_3767		
	load	[r14+-256],r1
	load	[r14+-80],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_3767
_Label_3765:
	mov	3542,r13		! source line 3542
	mov	"\0\0FB",r10
! ASSIGNMENT STATEMENT...
	mov	3543,r13		! source line 3543
	mov	"\0\0AS",r10
	mov	3543,r13		! source line 3543
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
	mov	3546,r13		! source line 3546
	mov	"\0\0IF",r10
	mov	3546,r13		! source line 3546
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-76]
!   if intIsZero (_temp_3773) then goto _runtimeErrorNullPointer
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
!   Retrieve Result: targetName=_temp_3772  sizeInBytes=1
	loadb	[r15],r1
	storeb	r1,[r14+-10]
!   if _temp_3772 then goto _Label_3771 else goto _Label_3770
	loadb	[r14+-10],r1
	cmp	r1,0
	be	_Label_3770
	jmp	_Label_3771
_Label_3770:
! THEN...
	mov	3547,r13		! source line 3547
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_3774 = _StringConst_194
	set	_StringConst_194,r1
	store	r1,[r14+-72]
!   Prepare Argument: offset=8  value=_temp_3774  sizeInBytes=4
	load	[r14+-72],r1
	store	r1,[r15+0]
!   Call the function
	mov	3547,r13		! source line 3547
	mov	"\0\0CE",r10
	call	print
! SEND STATEMENT...
	mov	3548,r13		! source line 3548
	mov	"\0\0SE",r10
!   _temp_3775 = &_P_Kernel_frameManager
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
	mov	3549,r13		! source line 3549
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,276,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_3771:
! SEND STATEMENT...
	mov	3551,r13		! source line 3551
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
	mov	3552,r13		! source line 3552
	mov	"\0\0AS",r10
!   nextVirtPage = nextVirtPage + 1		(int)
	load	[r14+-224],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-224]
!   Increment the FOR-LOOP index variable and jump back
_Label_3766:
!   i = i + 1
	load	[r14+-256],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-256]
	jmp	_Label_3764
! END FOR
_Label_3767:
! IF STATEMENT...
	mov	3556,r13		! source line 3556
	mov	"\0\0IF",r10
	mov	3556,r13		! source line 3556
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-60]
!   if intIsZero (_temp_3779) then goto _runtimeErrorNullPointer
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
!   Retrieve Result: targetName=_temp_3778  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-64]
!   if _temp_3778 == 707406378 then goto _Label_3777		(int)
	load	[r14+-64],r1
	set	707406378,r2
	cmp	r1,r2
	be	_Label_3777
!	jmp	_Label_3776
_Label_3776:
! THEN...
	mov	3557,r13		! source line 3557
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_3780 = _StringConst_195
	set	_StringConst_195,r1
	store	r1,[r14+-56]
!   Prepare Argument: offset=8  value=_temp_3780  sizeInBytes=4
	load	[r14+-56],r1
	store	r1,[r15+0]
!   Call the function
	mov	3557,r13		! source line 3557
	mov	"\0\0CE",r10
	call	print
! SEND STATEMENT...
	mov	3558,r13		! source line 3558
	mov	"\0\0SE",r10
!   _temp_3781 = &_P_Kernel_frameManager
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
	mov	3559,r13		! source line 3559
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,276,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_3777:
! FOR STATEMENT...
	mov	3563,r13		! source line 3563
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_3786 = 1		(4 bytes)
	mov	1,r1
	store	r1,[r14+-48]
!   Calculate and save the FOR-LOOP ending value
!   _temp_3787 = dataSizeInPages		(4 bytes)
	load	[r14+-264],r1
	store	r1,[r14+-44]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_3786  (sizeInBytes=4)
	load	[r14+-48],r1
	store	r1,[r14+-256]
_Label_3782:
!   Perform the FOR-LOOP termination test
!   if i > _temp_3787 then goto _Label_3785		
	load	[r14+-256],r1
	load	[r14+-44],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_3785
_Label_3783:
	mov	3563,r13		! source line 3563
	mov	"\0\0FB",r10
! ASSIGNMENT STATEMENT...
	mov	3564,r13		! source line 3564
	mov	"\0\0AS",r10
	mov	3564,r13		! source line 3564
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
	mov	3567,r13		! source line 3567
	mov	"\0\0IF",r10
	mov	3567,r13		! source line 3567
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-40]
!   if intIsZero (_temp_3791) then goto _runtimeErrorNullPointer
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
!   Retrieve Result: targetName=_temp_3790  sizeInBytes=1
	loadb	[r15],r1
	storeb	r1,[r14+-9]
!   if _temp_3790 then goto _Label_3789 else goto _Label_3788
	loadb	[r14+-9],r1
	cmp	r1,0
	be	_Label_3788
	jmp	_Label_3789
_Label_3788:
! THEN...
	mov	3568,r13		! source line 3568
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_3792 = _StringConst_196
	set	_StringConst_196,r1
	store	r1,[r14+-36]
!   Prepare Argument: offset=8  value=_temp_3792  sizeInBytes=4
	load	[r14+-36],r1
	store	r1,[r15+0]
!   Call the function
	mov	3568,r13		! source line 3568
	mov	"\0\0CE",r10
	call	print
! SEND STATEMENT...
	mov	3569,r13		! source line 3569
	mov	"\0\0SE",r10
!   _temp_3793 = &_P_Kernel_frameManager
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
	mov	3570,r13		! source line 3570
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,276,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_3789:
! ASSIGNMENT STATEMENT...
	mov	3572,r13		! source line 3572
	mov	"\0\0AS",r10
!   nextVirtPage = nextVirtPage + 1		(int)
	load	[r14+-224],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-224]
!   Increment the FOR-LOOP index variable and jump back
_Label_3784:
!   i = i + 1
	load	[r14+-256],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-256]
	jmp	_Label_3782
! END FOR
_Label_3785:
! IF STATEMENT...
	mov	3576,r13		! source line 3576
	mov	"\0\0IF",r10
	mov	3576,r13		! source line 3576
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-24]
!   if intIsZero (_temp_3797) then goto _runtimeErrorNullPointer
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
!   Retrieve Result: targetName=_temp_3796  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-28]
!   if _temp_3796 == 707406378 then goto _Label_3795		(int)
	load	[r14+-28],r1
	set	707406378,r2
	cmp	r1,r2
	be	_Label_3795
!	jmp	_Label_3794
_Label_3794:
! THEN...
	mov	3577,r13		! source line 3577
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_3798 = _StringConst_197
	set	_StringConst_197,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_3798  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   Call the function
	mov	3577,r13		! source line 3577
	mov	"\0\0CE",r10
	call	print
! SEND STATEMENT...
	mov	3578,r13		! source line 3578
	mov	"\0\0SE",r10
!   _temp_3799 = &_P_Kernel_frameManager
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
	mov	3579,r13		! source line 3579
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,276,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_3795:
! ASSIGNMENT STATEMENT...
	mov	3583,r13		! source line 3583
	mov	"\0\0AS",r10
	mov	3583,r13		! source line 3583
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
	mov	3587,r13		! source line 3587
	mov	"\0\0CE",r10
	call	MemoryZero
! RETURN STATEMENT...
	mov	3590,r13		! source line 3590
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
	.word	_Label_3800
	.word	8		! total size of parameters
	.word	272		! frame size = 272
	.word	_Label_3801
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_3802
	.word	12
	.word	4
	.word	_Label_3803
	.word	-16
	.word	4
	.word	_Label_3804
	.word	-20
	.word	4
	.word	_Label_3805
	.word	-24
	.word	4
	.word	_Label_3806
	.word	-28
	.word	4
	.word	_Label_3807
	.word	-32
	.word	4
	.word	_Label_3808
	.word	-36
	.word	4
	.word	_Label_3809
	.word	-40
	.word	4
	.word	_Label_3810
	.word	-9
	.word	1
	.word	_Label_3811
	.word	-44
	.word	4
	.word	_Label_3812
	.word	-48
	.word	4
	.word	_Label_3813
	.word	-52
	.word	4
	.word	_Label_3814
	.word	-56
	.word	4
	.word	_Label_3815
	.word	-60
	.word	4
	.word	_Label_3816
	.word	-64
	.word	4
	.word	_Label_3817
	.word	-68
	.word	4
	.word	_Label_3818
	.word	-72
	.word	4
	.word	_Label_3819
	.word	-76
	.word	4
	.word	_Label_3820
	.word	-10
	.word	1
	.word	_Label_3821
	.word	-80
	.word	4
	.word	_Label_3822
	.word	-84
	.word	4
	.word	_Label_3823
	.word	-88
	.word	4
	.word	_Label_3824
	.word	-92
	.word	4
	.word	_Label_3825
	.word	-96
	.word	4
	.word	_Label_3826
	.word	-100
	.word	4
	.word	_Label_3827
	.word	-104
	.word	4
	.word	_Label_3828
	.word	-108
	.word	4
	.word	_Label_3829
	.word	-112
	.word	4
	.word	_Label_3830
	.word	-116
	.word	4
	.word	_Label_3831
	.word	-120
	.word	4
	.word	_Label_3832
	.word	-124
	.word	4
	.word	_Label_3833
	.word	-128
	.word	4
	.word	_Label_3834
	.word	-132
	.word	4
	.word	_Label_3835
	.word	-136
	.word	4
	.word	_Label_3836
	.word	-140
	.word	4
	.word	_Label_3837
	.word	-144
	.word	4
	.word	_Label_3838
	.word	-148
	.word	4
	.word	_Label_3839
	.word	-152
	.word	4
	.word	_Label_3840
	.word	-156
	.word	4
	.word	_Label_3841
	.word	-160
	.word	4
	.word	_Label_3842
	.word	-164
	.word	4
	.word	_Label_3843
	.word	-168
	.word	4
	.word	_Label_3844
	.word	-172
	.word	4
	.word	_Label_3845
	.word	-176
	.word	4
	.word	_Label_3846
	.word	-180
	.word	4
	.word	_Label_3847
	.word	-184
	.word	4
	.word	_Label_3848
	.word	-188
	.word	4
	.word	_Label_3849
	.word	-192
	.word	4
	.word	_Label_3850
	.word	-196
	.word	4
	.word	_Label_3851
	.word	-200
	.word	4
	.word	_Label_3852
	.word	-204
	.word	4
	.word	_Label_3853
	.word	-208
	.word	4
	.word	_Label_3854
	.word	-212
	.word	4
	.word	_Label_3855
	.word	-216
	.word	4
	.word	_Label_3856
	.word	-220
	.word	4
	.word	_Label_3857
	.word	-224
	.word	4
	.word	_Label_3858
	.word	-228
	.word	4
	.word	_Label_3859
	.word	-232
	.word	4
	.word	_Label_3860
	.word	-236
	.word	4
	.word	_Label_3861
	.word	-240
	.word	4
	.word	_Label_3862
	.word	-244
	.word	4
	.word	_Label_3863
	.word	-248
	.word	4
	.word	_Label_3864
	.word	-252
	.word	4
	.word	_Label_3865
	.word	-256
	.word	4
	.word	_Label_3866
	.word	-260
	.word	4
	.word	_Label_3867
	.word	-264
	.word	4
	.word	_Label_3868
	.word	-268
	.word	4
	.word	0
_Label_3800:
	.ascii	"OpenFile"
	.ascii	"::"
	.ascii	"LoadExecutable\0"
	.align
_Label_3801:
	.ascii	"Pself\0"
	.align
_Label_3802:
	.byte	'P'
	.ascii	"addrSpace\0"
	.align
_Label_3803:
	.byte	'?'
	.ascii	"_temp_3799\0"
	.align
_Label_3804:
	.byte	'?'
	.ascii	"_temp_3798\0"
	.align
_Label_3805:
	.byte	'?'
	.ascii	"_temp_3797\0"
	.align
_Label_3806:
	.byte	'?'
	.ascii	"_temp_3796\0"
	.align
_Label_3807:
	.byte	'?'
	.ascii	"_temp_3793\0"
	.align
_Label_3808:
	.byte	'?'
	.ascii	"_temp_3792\0"
	.align
_Label_3809:
	.byte	'?'
	.ascii	"_temp_3791\0"
	.align
_Label_3810:
	.byte	'C'
	.ascii	"_temp_3790\0"
	.align
_Label_3811:
	.byte	'?'
	.ascii	"_temp_3787\0"
	.align
_Label_3812:
	.byte	'?'
	.ascii	"_temp_3786\0"
	.align
_Label_3813:
	.byte	'?'
	.ascii	"_temp_3781\0"
	.align
_Label_3814:
	.byte	'?'
	.ascii	"_temp_3780\0"
	.align
_Label_3815:
	.byte	'?'
	.ascii	"_temp_3779\0"
	.align
_Label_3816:
	.byte	'?'
	.ascii	"_temp_3778\0"
	.align
_Label_3817:
	.byte	'?'
	.ascii	"_temp_3775\0"
	.align
_Label_3818:
	.byte	'?'
	.ascii	"_temp_3774\0"
	.align
_Label_3819:
	.byte	'?'
	.ascii	"_temp_3773\0"
	.align
_Label_3820:
	.byte	'C'
	.ascii	"_temp_3772\0"
	.align
_Label_3821:
	.byte	'?'
	.ascii	"_temp_3769\0"
	.align
_Label_3822:
	.byte	'?'
	.ascii	"_temp_3768\0"
	.align
_Label_3823:
	.byte	'?'
	.ascii	"_temp_3763\0"
	.align
_Label_3824:
	.byte	'?'
	.ascii	"_temp_3762\0"
	.align
_Label_3825:
	.byte	'?'
	.ascii	"_temp_3761\0"
	.align
_Label_3826:
	.byte	'?'
	.ascii	"_temp_3760\0"
	.align
_Label_3827:
	.byte	'?'
	.ascii	"_temp_3757\0"
	.align
_Label_3828:
	.byte	'?'
	.ascii	"_temp_3756\0"
	.align
_Label_3829:
	.byte	'?'
	.ascii	"_temp_3755\0"
	.align
_Label_3830:
	.byte	'?'
	.ascii	"_temp_3754\0"
	.align
_Label_3831:
	.byte	'?'
	.ascii	"_temp_3751\0"
	.align
_Label_3832:
	.byte	'?'
	.ascii	"_temp_3750\0"
	.align
_Label_3833:
	.byte	'?'
	.ascii	"_temp_3749\0"
	.align
_Label_3834:
	.byte	'?'
	.ascii	"_temp_3748\0"
	.align
_Label_3835:
	.byte	'?'
	.ascii	"_temp_3747\0"
	.align
_Label_3836:
	.byte	'?'
	.ascii	"_temp_3744\0"
	.align
_Label_3837:
	.byte	'?'
	.ascii	"_temp_3743\0"
	.align
_Label_3838:
	.byte	'?'
	.ascii	"_temp_3740\0"
	.align
_Label_3839:
	.byte	'?'
	.ascii	"_temp_3739\0"
	.align
_Label_3840:
	.byte	'?'
	.ascii	"_temp_3736\0"
	.align
_Label_3841:
	.byte	'?'
	.ascii	"_temp_3735\0"
	.align
_Label_3842:
	.byte	'?'
	.ascii	"_temp_3732\0"
	.align
_Label_3843:
	.byte	'?'
	.ascii	"_temp_3729\0"
	.align
_Label_3844:
	.byte	'?'
	.ascii	"_temp_3728\0"
	.align
_Label_3845:
	.byte	'?'
	.ascii	"_temp_3725\0"
	.align
_Label_3846:
	.byte	'?'
	.ascii	"_temp_3724\0"
	.align
_Label_3847:
	.byte	'?'
	.ascii	"_temp_3723\0"
	.align
_Label_3848:
	.byte	'?'
	.ascii	"_temp_3722\0"
	.align
_Label_3849:
	.byte	'?'
	.ascii	"_temp_3721\0"
	.align
_Label_3850:
	.byte	'?'
	.ascii	"_temp_3720\0"
	.align
_Label_3851:
	.byte	'?'
	.ascii	"_temp_3719\0"
	.align
_Label_3852:
	.byte	'?'
	.ascii	"_temp_3718\0"
	.align
_Label_3853:
	.byte	'?'
	.ascii	"_temp_3717\0"
	.align
_Label_3854:
	.byte	'?'
	.ascii	"_temp_3714\0"
	.align
_Label_3855:
	.byte	'?'
	.ascii	"_temp_3713\0"
	.align
_Label_3856:
	.byte	'?'
	.ascii	"_temp_3712\0"
	.align
_Label_3857:
	.byte	'I'
	.ascii	"nextVirtPage\0"
	.align
_Label_3858:
	.byte	'I'
	.ascii	"addr\0"
	.align
_Label_3859:
	.byte	'I'
	.ascii	"textSize\0"
	.align
_Label_3860:
	.byte	'I'
	.ascii	"dataSize\0"
	.align
_Label_3861:
	.byte	'I'
	.ascii	"bssSize\0"
	.align
_Label_3862:
	.byte	'I'
	.ascii	"textStart\0"
	.align
_Label_3863:
	.byte	'I'
	.ascii	"dataStart\0"
	.align
_Label_3864:
	.byte	'I'
	.ascii	"bssStart\0"
	.align
_Label_3865:
	.byte	'I'
	.ascii	"i\0"
	.align
_Label_3866:
	.byte	'I'
	.ascii	"textSizeInPages\0"
	.align
_Label_3867:
	.byte	'I'
	.ascii	"dataSizeInPages\0"
	.align
_Label_3868:
	.byte	'I'
	.ascii	"bssSizeInPages\0"
	.align
! 
! ===============  CLASS SerialDriver  ===============
! 
! Dispatch Table:
! 
_P_Kernel_SerialDriver:
	.word	_Label_3869
	jmp	_Method_P_Kernel_SerialDriver_1	! 4:	Init
	jmp	_Method_P_Kernel_SerialDriver_3	! 8:	PutChar
	jmp	_Method_P_Kernel_SerialDriver_2	! 12:	GetChar
	jmp	_Method_P_Kernel_SerialDriver_4	! 16:	SerialHandler
	.word	0
! 
! Class descriptor:
! 
_Label_3869:
	.word	1129070931		! Magic number 0x434c4153 == 'CLAS'
	.word	_Label_3870
	.word	_sourceFileName
	.word	402		! line number
	.word	4308		! size of instances, in bytes
	.word	_P_Kernel_SerialDriver
	.word	_P_System_Object
	.word	0
_Label_3870:
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
	mov	1083,r1
_Label_4212:
	push	r0
	sub	r1,1,r1
	bne	_Label_4212
	mov	3602,r13		! source line 3602
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   _temp_3871 = _StringConst_198
	set	_StringConst_198,r1
	store	r1,[r14+-4324]
!   Prepare Argument: offset=8  value=_temp_3871  sizeInBytes=4
	load	[r14+-4324],r1
	store	r1,[r15+0]
!   Call the function
	mov	3606,r13		! source line 3606
	mov	"\0\0CE",r10
	call	print
! ASSIGNMENT STATEMENT...
	mov	3609,r13		! source line 3609
	mov	"\0\0AS",r10
!   serial_status_word_address = 16776964		(4 bytes)
	set	16776964,r1
	load	[r14+8],r2
	store	r1,[r2+4]
! ASSIGNMENT STATEMENT...
	mov	3610,r13		! source line 3610
	mov	"\0\0AS",r10
!   serial_data_word_address = 16776964		(4 bytes)
	set	16776964,r1
	load	[r14+8],r2
	store	r1,[r2+8]
! ASSIGNMENT STATEMENT...
	mov	3613,r13		! source line 3613
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
	mov	3614,r13		! source line 3614
	mov	"\0\0SE",r10
!   _temp_3873 = &serialLock
	load	[r14+8],r1
	add	r1,12,r1
	store	r1,[r14+-4316]
!   Send message Init
	load	[r14+-4316],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,4,r2
	call	r2
! ASSIGNMENT STATEMENT...
	mov	3616,r13		! source line 3616
	mov	"\0\0AS",r10
!   _temp_3874 = &getBuffer
	load	[r14+8],r1
	add	r1,32,r1
	store	r1,[r14+-4312]
!   NEW ARRAY Constructor...
!   _temp_3876 = &_temp_3875
	add	r14,-4308,r1
	store	r1,[r14+-4292]
!   _temp_3876 = _temp_3876 + 4
	load	[r14+-4292],r1
	add	r1,4,r1
	store	r1,[r14+-4292]
!   Next value...
	mov	10,r1
	store	r1,[r14+-4288]
_Label_3878:
!   Data Move: *_temp_3876 = 97  (sizeInBytes=1)
	mov	97,r1
	load	[r14+-4292],r2
	storeb	r1,[r2]
!   _temp_3876 = _temp_3876 + 1
	load	[r14+-4292],r1
	add	r1,1,r1
	store	r1,[r14+-4292]
!   _temp_3877 = _temp_3877 + -1
	load	[r14+-4288],r1
	add	r1,-1,r1
	store	r1,[r14+-4288]
!   if intNotZero (_temp_3877) then goto _Label_3878
	load	[r14+-4288],r1
	cmp	r1,r0
	bne	_Label_3878
!   Initialize the array size...
	mov	10,r1
	store	r1,[r14+-4308]
!   _temp_3879 = &_temp_3875
	add	r14,-4308,r1
	store	r1,[r14+-4284]
!   make sure array has size 10
	load	[r14+-4312],r1
	load	[r1],r1
	set	10, r2
	cmp	r1,0
	be	_Label_4213
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bne	_runtimeErrorWrongArraySize
_Label_4213:
!   make sure array has size 10
	load	[r14+-4284],r1
	load	[r1],r1
	set	10, r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bne	_runtimeErrorWrongArraySize
!   Data Move: *_temp_3874 = *_temp_3879  (sizeInBytes=16)
	load	[r14+-4284],r5
	load	[r14+-4312],r4
	load	[r5],r1
	store	r1,[r4]
	load	[r5+4],r1
	store	r1,[r4+4]
	load	[r5+8],r1
	store	r1,[r4+8]
	load	[r5+12],r1
	store	r1,[r4+12]
! ASSIGNMENT STATEMENT...
	mov	3617,r13		! source line 3617
	mov	"\0\0AS",r10
!   getBufferSize = 0		(4 bytes)
	mov	0,r1
	load	[r14+8],r2
	store	r1,[r2+48]
! ASSIGNMENT STATEMENT...
	mov	3618,r13		! source line 3618
	mov	"\0\0AS",r10
!   getBufferNextIn = 0		(4 bytes)
	mov	0,r1
	load	[r14+8],r2
	store	r1,[r2+52]
! ASSIGNMENT STATEMENT...
	mov	3619,r13		! source line 3619
	mov	"\0\0AS",r10
!   getBufferNextOut = 0		(4 bytes)
	mov	0,r1
	load	[r14+8],r2
	store	r1,[r2+56]
! ASSIGNMENT STATEMENT...
	mov	3620,r13		! source line 3620
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
	mov	3621,r13		! source line 3621
	mov	"\0\0SE",r10
!   _temp_3881 = &getCharacterAvail
	load	[r14+8],r1
	add	r1,60,r1
	store	r1,[r14+-4276]
!   Send message Init
	load	[r14+-4276],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,4,r2
	call	r2
! ASSIGNMENT STATEMENT...
	mov	3623,r13		! source line 3623
	mov	"\0\0AS",r10
!   _temp_3882 = &putBuffer
	load	[r14+8],r1
	add	r1,76,r1
	store	r1,[r14+-4272]
!   NEW ARRAY Constructor...
!   _temp_3884 = &_temp_3883
	add	r14,-4268,r1
	store	r1,[r14+-4252]
!   _temp_3884 = _temp_3884 + 4
	load	[r14+-4252],r1
	add	r1,4,r1
	store	r1,[r14+-4252]
!   Next value...
	mov	10,r1
	store	r1,[r14+-4248]
_Label_3886:
!   Data Move: *_temp_3884 = 97  (sizeInBytes=1)
	mov	97,r1
	load	[r14+-4252],r2
	storeb	r1,[r2]
!   _temp_3884 = _temp_3884 + 1
	load	[r14+-4252],r1
	add	r1,1,r1
	store	r1,[r14+-4252]
!   _temp_3885 = _temp_3885 + -1
	load	[r14+-4248],r1
	add	r1,-1,r1
	store	r1,[r14+-4248]
!   if intNotZero (_temp_3885) then goto _Label_3886
	load	[r14+-4248],r1
	cmp	r1,r0
	bne	_Label_3886
!   Initialize the array size...
	mov	10,r1
	store	r1,[r14+-4268]
!   _temp_3887 = &_temp_3883
	add	r14,-4268,r1
	store	r1,[r14+-4244]
!   make sure array has size 10
	load	[r14+-4272],r1
	load	[r1],r1
	set	10, r2
	cmp	r1,0
	be	_Label_4214
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bne	_runtimeErrorWrongArraySize
_Label_4214:
!   make sure array has size 10
	load	[r14+-4244],r1
	load	[r1],r1
	set	10, r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bne	_runtimeErrorWrongArraySize
!   Data Move: *_temp_3882 = *_temp_3887  (sizeInBytes=16)
	load	[r14+-4244],r5
	load	[r14+-4272],r4
	load	[r5],r1
	store	r1,[r4]
	load	[r5+4],r1
	store	r1,[r4+4]
	load	[r5+8],r1
	store	r1,[r4+8]
	load	[r5+12],r1
	store	r1,[r4+12]
! ASSIGNMENT STATEMENT...
	mov	3624,r13		! source line 3624
	mov	"\0\0AS",r10
!   putBufferSize = 0		(4 bytes)
	mov	0,r1
	load	[r14+8],r2
	store	r1,[r2+92]
! ASSIGNMENT STATEMENT...
	mov	3625,r13		! source line 3625
	mov	"\0\0AS",r10
!   putBufferNextIn = 0		(4 bytes)
	mov	0,r1
	load	[r14+8],r2
	store	r1,[r2+96]
! ASSIGNMENT STATEMENT...
	mov	3626,r13		! source line 3626
	mov	"\0\0AS",r10
!   putBufferNextOut = 0		(4 bytes)
	mov	0,r1
	load	[r14+8],r2
	store	r1,[r2+100]
! ASSIGNMENT STATEMENT...
	mov	3627,r13		! source line 3627
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
	mov	3628,r13		! source line 3628
	mov	"\0\0SE",r10
!   _temp_3889 = &putBufferSem
	load	[r14+8],r1
	add	r1,104,r1
	store	r1,[r14+-4236]
!   Prepare Argument: offset=12  value=10  sizeInBytes=4
	mov	10,r1
	store	r1,[r15+4]
!   Send message Init
	load	[r14+-4236],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,4,r2
	call	r2
! ASSIGNMENT STATEMENT...
	mov	3630,r13		! source line 3630
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
	mov	3631,r13		! source line 3631
	mov	"\0\0SE",r10
!   _temp_3891 = &serialNeedsAttention
	load	[r14+8],r1
	add	r1,124,r1
	store	r1,[r14+-4228]
!   Prepare Argument: offset=12  value=1  sizeInBytes=4
	mov	1,r1
	store	r1,[r15+4]
!   Send message Init
	load	[r14+-4228],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,4,r2
	call	r2
! ASSIGNMENT STATEMENT...
	mov	3633,r13		! source line 3633
	mov	"\0\0AS",r10
	load	[r14+8],r1
	store	r1,[r14+-4224]
!   if intIsZero (_temp_3892) then goto _runtimeErrorNullPointer
	load	[r14+-4224],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3893 = _temp_3892 + 144
	load	[r14+-4224],r1
	add	r1,144,r1
	store	r1,[r14+-4220]
!   NEW CLASS Constructor...
!   ZeroMemory: _temp_3894 = zeros  (sizeInBytes=4164)
	add	r14,-4216,r4
	mov	1041,r3
_Label_4215:
	store	r0,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_4215
!   _temp_3894 = _P_Kernel_Thread
	set	_P_Kernel_Thread,r1
	store	r1,[r14+-4216]
!   Data Move: *_temp_3893 = _temp_3894  (sizeInBytes=4164)
	add	r14,-4216,r5
	load	[r14+-4220],r4
	mov	1041,r3
_Label_4216:
	load	[r5],r1
	add	r5,4,r5
	store	r1,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_4216
! SEND STATEMENT...
	mov	3634,r13		! source line 3634
	mov	"\0\0SE",r10
!   _temp_3896 = _StringConst_199
	set	_StringConst_199,r1
	store	r1,[r14+-48]
	load	[r14+8],r1
	store	r1,[r14+-44]
!   if intIsZero (_temp_3897) then goto _runtimeErrorNullPointer
	load	[r14+-44],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3898 = _temp_3897 + 144
	load	[r14+-44],r1
	add	r1,144,r1
	store	r1,[r14+-40]
!   Prepare Argument: offset=12  value=_temp_3896  sizeInBytes=4
	load	[r14+-48],r1
	store	r1,[r15+4]
!   Send message Init
	load	[r14+-40],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,4,r2
	call	r2
! SEND STATEMENT...
	mov	3635,r13		! source line 3635
	mov	"\0\0SE",r10
!   _temp_3899 = _function_215_SerialHandlerFunction
	set	_function_215_SerialHandlerFunction,r1
	store	r1,[r14+-36]
	load	[r14+8],r1
	store	r1,[r14+-32]
!   if intIsZero (_temp_3900) then goto _runtimeErrorNullPointer
	load	[r14+-32],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3901 = _temp_3900 + 144
	load	[r14+-32],r1
	add	r1,144,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=12  value=_temp_3899  sizeInBytes=4
	load	[r14+-36],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=0  sizeInBytes=4
	mov	0,r1
	store	r1,[r15+8]
!   Send message Fork
	load	[r14+-28],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! ASSIGNMENT STATEMENT...
	mov	3637,r13		! source line 3637
	mov	"\0\0AS",r10
!   _P_Kernel_serialHasBeenInitialized = 1		(1 byte)
	mov	1,r1
	set	_P_Kernel_serialHasBeenInitialized,r2
	storeb	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	3639,r13		! source line 3639
	mov	"\0\0AS",r10
!   i = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-4328]
! WHILE STATEMENT...
	mov	3639,r13		! source line 3639
	mov	"\0\0WH",r10
_Label_3902:
!   if i >= 10 then goto _Label_3904		(int)
	load	[r14+-4328],r1
	mov	10,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_3904
!	jmp	_Label_3903
_Label_3903:
	mov	3639,r13		! source line 3639
	mov	"\0\0WB",r10
! ASSIGNMENT STATEMENT...
	mov	3640,r13		! source line 3640
	mov	"\0\0AS",r10
!   _temp_3905 = &getBuffer
	load	[r14+8],r1
	add	r1,32,r1
	store	r1,[r14+-24]
!   Move address of _temp_3905 [i ] into _temp_3906
!     make sure index expr is >= 0
	load	[r14+-4328],r2
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
	set	1,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-20]
!   Data Move: *_temp_3906 = 45  (sizeInBytes=1)
	mov	45,r1
	load	[r14+-20],r2
	storeb	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	3639,r13		! source line 3639
	mov	"\0\0AS",r10
!   i = i + 1		(int)
	load	[r14+-4328],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-4328]
! END WHILE...
	jmp	_Label_3902
_Label_3904:
! ASSIGNMENT STATEMENT...
	mov	3643,r13		! source line 3643
	mov	"\0\0AS",r10
!   i = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-4328]
! WHILE STATEMENT...
	mov	3643,r13		! source line 3643
	mov	"\0\0WH",r10
_Label_3907:
!   if i >= 10 then goto _Label_3909		(int)
	load	[r14+-4328],r1
	mov	10,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_3909
!	jmp	_Label_3908
_Label_3908:
	mov	3643,r13		! source line 3643
	mov	"\0\0WB",r10
! ASSIGNMENT STATEMENT...
	mov	3644,r13		! source line 3644
	mov	"\0\0AS",r10
!   _temp_3910 = &putBuffer
	load	[r14+8],r1
	add	r1,76,r1
	store	r1,[r14+-16]
!   Move address of _temp_3910 [i ] into _temp_3911
!     make sure index expr is >= 0
	load	[r14+-4328],r2
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
	set	1,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-12]
!   Data Move: *_temp_3911 = 45  (sizeInBytes=1)
	mov	45,r1
	load	[r14+-12],r2
	storeb	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	3643,r13		! source line 3643
	mov	"\0\0AS",r10
!   i = i + 1		(int)
	load	[r14+-4328],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-4328]
! END WHILE...
	jmp	_Label_3907
_Label_3909:
! RETURN STATEMENT...
	mov	3647,r13		! source line 3647
	mov	"\0\0RE",r10
	add	r15,4336,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_SerialDriver_1:
	.word	_sourceFileName
	.word	_Label_3912
	.word	4		! total size of parameters
	.word	4332		! frame size = 4332
	.word	_Label_3913
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_3914
	.word	-12
	.word	4
	.word	_Label_3915
	.word	-16
	.word	4
	.word	_Label_3916
	.word	-20
	.word	4
	.word	_Label_3917
	.word	-24
	.word	4
	.word	_Label_3918
	.word	-28
	.word	4
	.word	_Label_3919
	.word	-32
	.word	4
	.word	_Label_3920
	.word	-36
	.word	4
	.word	_Label_3921
	.word	-40
	.word	4
	.word	_Label_3922
	.word	-44
	.word	4
	.word	_Label_3923
	.word	-48
	.word	4
	.word	_Label_3924
	.word	-52
	.word	4
	.word	_Label_3925
	.word	-4216
	.word	4164
	.word	_Label_3926
	.word	-4220
	.word	4
	.word	_Label_3927
	.word	-4224
	.word	4
	.word	_Label_3928
	.word	-4228
	.word	4
	.word	_Label_3929
	.word	-4232
	.word	4
	.word	_Label_3930
	.word	-4236
	.word	4
	.word	_Label_3931
	.word	-4240
	.word	4
	.word	_Label_3932
	.word	-4244
	.word	4
	.word	_Label_3933
	.word	-4248
	.word	4
	.word	_Label_3934
	.word	-4252
	.word	4
	.word	_Label_3935
	.word	-4268
	.word	16
	.word	_Label_3936
	.word	-4272
	.word	4
	.word	_Label_3937
	.word	-4276
	.word	4
	.word	_Label_3938
	.word	-4280
	.word	4
	.word	_Label_3939
	.word	-4284
	.word	4
	.word	_Label_3940
	.word	-4288
	.word	4
	.word	_Label_3941
	.word	-4292
	.word	4
	.word	_Label_3942
	.word	-4308
	.word	16
	.word	_Label_3943
	.word	-4312
	.word	4
	.word	_Label_3944
	.word	-4316
	.word	4
	.word	_Label_3945
	.word	-4320
	.word	4
	.word	_Label_3946
	.word	-4324
	.word	4
	.word	_Label_3947
	.word	-4328
	.word	4
	.word	0
_Label_3912:
	.ascii	"SerialDriver"
	.ascii	"::"
	.ascii	"Init\0"
	.align
_Label_3913:
	.ascii	"Pself\0"
	.align
_Label_3914:
	.byte	'?'
	.ascii	"_temp_3911\0"
	.align
_Label_3915:
	.byte	'?'
	.ascii	"_temp_3910\0"
	.align
_Label_3916:
	.byte	'?'
	.ascii	"_temp_3906\0"
	.align
_Label_3917:
	.byte	'?'
	.ascii	"_temp_3905\0"
	.align
_Label_3918:
	.byte	'?'
	.ascii	"_temp_3901\0"
	.align
_Label_3919:
	.byte	'?'
	.ascii	"_temp_3900\0"
	.align
_Label_3920:
	.byte	'?'
	.ascii	"_temp_3899\0"
	.align
_Label_3921:
	.byte	'?'
	.ascii	"_temp_3898\0"
	.align
_Label_3922:
	.byte	'?'
	.ascii	"_temp_3897\0"
	.align
_Label_3923:
	.byte	'?'
	.ascii	"_temp_3896\0"
	.align
_Label_3924:
	.byte	'?'
	.ascii	"_temp_3895\0"
	.align
_Label_3925:
	.byte	'?'
	.ascii	"_temp_3894\0"
	.align
_Label_3926:
	.byte	'?'
	.ascii	"_temp_3893\0"
	.align
_Label_3927:
	.byte	'?'
	.ascii	"_temp_3892\0"
	.align
_Label_3928:
	.byte	'?'
	.ascii	"_temp_3891\0"
	.align
_Label_3929:
	.byte	'?'
	.ascii	"_temp_3890\0"
	.align
_Label_3930:
	.byte	'?'
	.ascii	"_temp_3889\0"
	.align
_Label_3931:
	.byte	'?'
	.ascii	"_temp_3888\0"
	.align
_Label_3932:
	.byte	'?'
	.ascii	"_temp_3887\0"
	.align
_Label_3933:
	.byte	'?'
	.ascii	"_temp_3885\0"
	.align
_Label_3934:
	.byte	'?'
	.ascii	"_temp_3884\0"
	.align
_Label_3935:
	.byte	'?'
	.ascii	"_temp_3883\0"
	.align
_Label_3936:
	.byte	'?'
	.ascii	"_temp_3882\0"
	.align
_Label_3937:
	.byte	'?'
	.ascii	"_temp_3881\0"
	.align
_Label_3938:
	.byte	'?'
	.ascii	"_temp_3880\0"
	.align
_Label_3939:
	.byte	'?'
	.ascii	"_temp_3879\0"
	.align
_Label_3940:
	.byte	'?'
	.ascii	"_temp_3877\0"
	.align
_Label_3941:
	.byte	'?'
	.ascii	"_temp_3876\0"
	.align
_Label_3942:
	.byte	'?'
	.ascii	"_temp_3875\0"
	.align
_Label_3943:
	.byte	'?'
	.ascii	"_temp_3874\0"
	.align
_Label_3944:
	.byte	'?'
	.ascii	"_temp_3873\0"
	.align
_Label_3945:
	.byte	'?'
	.ascii	"_temp_3872\0"
	.align
_Label_3946:
	.byte	'?'
	.ascii	"_temp_3871\0"
	.align
_Label_3947:
	.byte	'I'
	.ascii	"i\0"
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
	mov	15,r1
_Label_4217:
	push	r0
	sub	r1,1,r1
	bne	_Label_4217
	mov	3653,r13		! source line 3653
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! SEND STATEMENT...
	mov	3657,r13		! source line 3657
	mov	"\0\0SE",r10
!   _temp_3948 = &serialLock
	load	[r14+8],r1
	add	r1,12,r1
	store	r1,[r14+-60]
!   Send message Lock
	load	[r14+-60],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! CALL STATEMENT...
!   _temp_3949 = _StringConst_200
	set	_StringConst_200,r1
	store	r1,[r14+-56]
!   Prepare Argument: offset=8  value=_temp_3949  sizeInBytes=4
	load	[r14+-56],r1
	store	r1,[r15+0]
!   Call the function
	mov	3658,r13		! source line 3658
	mov	"\0\0CE",r10
	call	print
! IF STATEMENT...
	mov	3660,r13		! source line 3660
	mov	"\0\0IF",r10
!   if intIsZero (getBufferSize) then goto _Label_3950
	load	[r14+8],r1
	load	[r1+48],r1
	cmp	r1,r0
	be	_Label_3950
	jmp	_Label_3951
_Label_3950:
! THEN...
	mov	3661,r13		! source line 3661
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_3952 = _StringConst_201
	set	_StringConst_201,r1
	store	r1,[r14+-52]
!   Prepare Argument: offset=8  value=_temp_3952  sizeInBytes=4
	load	[r14+-52],r1
	store	r1,[r15+0]
!   Call the function
	mov	3661,r13		! source line 3661
	mov	"\0\0CE",r10
	call	print
! SEND STATEMENT...
	mov	3662,r13		! source line 3662
	mov	"\0\0SE",r10
!   _temp_3953 = &serialLock
	load	[r14+8],r1
	add	r1,12,r1
	store	r1,[r14+-48]
!   _temp_3954 = &getCharacterAvail
	load	[r14+8],r1
	add	r1,60,r1
	store	r1,[r14+-44]
!   Prepare Argument: offset=12  value=_temp_3953  sizeInBytes=4
	load	[r14+-48],r1
	store	r1,[r15+4]
!   Send message Wait
	load	[r14+-44],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! CALL STATEMENT...
!   _temp_3955 = _StringConst_202
	set	_StringConst_202,r1
	store	r1,[r14+-40]
!   Prepare Argument: offset=8  value=_temp_3955  sizeInBytes=4
	load	[r14+-40],r1
	store	r1,[r15+0]
!   Call the function
	mov	3663,r13		! source line 3663
	mov	"\0\0CE",r10
	call	print
! END IF...
_Label_3951:
! ASSIGNMENT STATEMENT...
	mov	3666,r13		! source line 3666
	mov	"\0\0AS",r10
!   _temp_3956 = &getBuffer
	load	[r14+8],r1
	add	r1,32,r1
	store	r1,[r14+-36]
!   Move address of _temp_3956 [getBufferNextOut ] into _temp_3957
!     make sure index expr is >= 0
	load	[r14+8],r2
	load	[r2+56],r2
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
!   Data Move: charFetched = *_temp_3957  (sizeInBytes=1)
	load	[r14+-32],r1
	loadb	[r1],r1
	storeb	r1,[r14+-9]
! ASSIGNMENT STATEMENT...
	mov	3667,r13		! source line 3667
	mov	"\0\0AS",r10
!   _temp_3958 = getBufferNextOut + 1		(int)
	load	[r14+8],r1
	load	[r1+56],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-28]
!   getBufferNextOut = _temp_3958 rem 10		(int)
	load	[r14+-28],r1
	mov	10,r2
	cmp	r2,0
	be	_runtimeErrorZeroDivide
	rem	r1,r2,r1
	bvs	_runtimeErrorOverflow
	load	[r14+8],r2
	store	r1,[r2+56]
! ASSIGNMENT STATEMENT...
	mov	3668,r13		! source line 3668
	mov	"\0\0AS",r10
!   _temp_3959 = getBufferNextIn - getBufferNextOut		(int)
	load	[r14+8],r1
	load	[r1+52],r1
	load	[r14+8],r2
	load	[r2+56],r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-24]
!   getBufferSize = _temp_3959 rem 10		(int)
	load	[r14+-24],r1
	mov	10,r2
	cmp	r2,0
	be	_runtimeErrorZeroDivide
	rem	r1,r2,r1
	bvs	_runtimeErrorOverflow
	load	[r14+8],r2
	store	r1,[r2+48]
! SEND STATEMENT...
	mov	3670,r13		! source line 3670
	mov	"\0\0SE",r10
!   _temp_3960 = &serialLock
	load	[r14+8],r1
	add	r1,12,r1
	store	r1,[r14+-20]
!   Send message Unlock
	load	[r14+-20],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
! CALL STATEMENT...
!   _temp_3961 = _StringConst_203
	set	_StringConst_203,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_3961  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=charFetched  sizeInBytes=1
	loadb	[r14+-9],r1
	storeb	r1,[r15+4]
!   Call the function
	mov	3671,r13		! source line 3671
	mov	"\0\0CA",r10
	call	_P_System_printCharVar
! RETURN STATEMENT...
	mov	3672,r13		! source line 3672
	mov	"\0\0RE",r10
!   ReturnResult: charFetched  (sizeInBytes=1)
	loadb	[r14+-9],r1
	storeb	r1,[r14+8]
	add	r15,64,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_SerialDriver_2:
	.word	_sourceFileName
	.word	_Label_3962
	.word	4		! total size of parameters
	.word	60		! frame size = 60
	.word	_Label_3963
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_3964
	.word	-16
	.word	4
	.word	_Label_3965
	.word	-20
	.word	4
	.word	_Label_3966
	.word	-24
	.word	4
	.word	_Label_3967
	.word	-28
	.word	4
	.word	_Label_3968
	.word	-32
	.word	4
	.word	_Label_3969
	.word	-36
	.word	4
	.word	_Label_3970
	.word	-40
	.word	4
	.word	_Label_3971
	.word	-44
	.word	4
	.word	_Label_3972
	.word	-48
	.word	4
	.word	_Label_3973
	.word	-52
	.word	4
	.word	_Label_3974
	.word	-56
	.word	4
	.word	_Label_3975
	.word	-60
	.word	4
	.word	_Label_3976
	.word	-9
	.word	1
	.word	0
_Label_3962:
	.ascii	"SerialDriver"
	.ascii	"::"
	.ascii	"GetChar\0"
	.align
_Label_3963:
	.ascii	"Pself\0"
	.align
_Label_3964:
	.byte	'?'
	.ascii	"_temp_3961\0"
	.align
_Label_3965:
	.byte	'?'
	.ascii	"_temp_3960\0"
	.align
_Label_3966:
	.byte	'?'
	.ascii	"_temp_3959\0"
	.align
_Label_3967:
	.byte	'?'
	.ascii	"_temp_3958\0"
	.align
_Label_3968:
	.byte	'?'
	.ascii	"_temp_3957\0"
	.align
_Label_3969:
	.byte	'?'
	.ascii	"_temp_3956\0"
	.align
_Label_3970:
	.byte	'?'
	.ascii	"_temp_3955\0"
	.align
_Label_3971:
	.byte	'?'
	.ascii	"_temp_3954\0"
	.align
_Label_3972:
	.byte	'?'
	.ascii	"_temp_3953\0"
	.align
_Label_3973:
	.byte	'?'
	.ascii	"_temp_3952\0"
	.align
_Label_3974:
	.byte	'?'
	.ascii	"_temp_3949\0"
	.align
_Label_3975:
	.byte	'?'
	.ascii	"_temp_3948\0"
	.align
_Label_3976:
	.byte	'C'
	.ascii	"charFetched\0"
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
	mov	9,r1
_Label_4218:
	push	r0
	sub	r1,1,r1
	bne	_Label_4218
	mov	3678,r13		! source line 3678
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! IF STATEMENT...
	mov	3681,r13		! source line 3681
	mov	"\0\0IF",r10
!   if putBufferSize != 10 then goto _Label_3978		(int)
	load	[r14+8],r1
	load	[r1+92],r1
	mov	10,r2
	cmp	r1,r2
	bne	_Label_3978
!	jmp	_Label_3977
_Label_3977:
! THEN...
	mov	3682,r13		! source line 3682
	mov	"\0\0TN",r10
! SEND STATEMENT...
	mov	3682,r13		! source line 3682
	mov	"\0\0SE",r10
!   _temp_3979 = &putBufferSem
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
_Label_3978:
! SEND STATEMENT...
	mov	3685,r13		! source line 3685
	mov	"\0\0SE",r10
!   _temp_3980 = &serialLock
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
	mov	3687,r13		! source line 3687
	mov	"\0\0AS",r10
!   _temp_3981 = &putBuffer
	load	[r14+8],r1
	add	r1,76,r1
	store	r1,[r14+-32]
!   Move address of _temp_3981 [putBufferNextIn ] into _temp_3982
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
!   Data Move: *_temp_3982 = value  (sizeInBytes=1)
	loadb	[r14+12],r1
	load	[r14+-28],r2
	storeb	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	3688,r13		! source line 3688
	mov	"\0\0AS",r10
!   _temp_3983 = putBufferNextIn + 1		(int)
	load	[r14+8],r1
	load	[r1+96],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-24]
!   putBufferNextIn = _temp_3983 rem 10		(int)
	load	[r14+-24],r1
	mov	10,r2
	cmp	r2,0
	be	_runtimeErrorZeroDivide
	rem	r1,r2,r1
	bvs	_runtimeErrorOverflow
	load	[r14+8],r2
	store	r1,[r2+96]
! ASSIGNMENT STATEMENT...
	mov	3689,r13		! source line 3689
	mov	"\0\0AS",r10
!   _temp_3984 = putBufferNextIn - putBufferNextOut		(int)
	load	[r14+8],r1
	load	[r1+96],r1
	load	[r14+8],r2
	load	[r2+100],r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-20]
!   putBufferSize = _temp_3984 rem 10		(int)
	load	[r14+-20],r1
	mov	10,r2
	cmp	r2,0
	be	_runtimeErrorZeroDivide
	rem	r1,r2,r1
	bvs	_runtimeErrorOverflow
	load	[r14+8],r2
	store	r1,[r2+92]
! SEND STATEMENT...
	mov	3691,r13		! source line 3691
	mov	"\0\0SE",r10
!   _temp_3985 = &serialLock
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
	mov	3693,r13		! source line 3693
	mov	"\0\0SE",r10
!   _temp_3986 = &serialNeedsAttention
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
	mov	3695,r13		! source line 3695
	mov	"\0\0RE",r10
	add	r15,40,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_SerialDriver_3:
	.word	_sourceFileName
	.word	_Label_3987
	.word	8		! total size of parameters
	.word	36		! frame size = 36
	.word	_Label_3988
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_3989
	.word	12
	.word	1
	.word	_Label_3990
	.word	-12
	.word	4
	.word	_Label_3991
	.word	-16
	.word	4
	.word	_Label_3992
	.word	-20
	.word	4
	.word	_Label_3993
	.word	-24
	.word	4
	.word	_Label_3994
	.word	-28
	.word	4
	.word	_Label_3995
	.word	-32
	.word	4
	.word	_Label_3996
	.word	-36
	.word	4
	.word	_Label_3997
	.word	-40
	.word	4
	.word	0
_Label_3987:
	.ascii	"SerialDriver"
	.ascii	"::"
	.ascii	"PutChar\0"
	.align
_Label_3988:
	.ascii	"Pself\0"
	.align
_Label_3989:
	.byte	'C'
	.ascii	"value\0"
	.align
_Label_3990:
	.byte	'?'
	.ascii	"_temp_3986\0"
	.align
_Label_3991:
	.byte	'?'
	.ascii	"_temp_3985\0"
	.align
_Label_3992:
	.byte	'?'
	.ascii	"_temp_3984\0"
	.align
_Label_3993:
	.byte	'?'
	.ascii	"_temp_3983\0"
	.align
_Label_3994:
	.byte	'?'
	.ascii	"_temp_3982\0"
	.align
_Label_3995:
	.byte	'?'
	.ascii	"_temp_3981\0"
	.align
_Label_3996:
	.byte	'?'
	.ascii	"_temp_3980\0"
	.align
_Label_3997:
	.byte	'?'
	.ascii	"_temp_3979\0"
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
	mov	29,r1
_Label_4219:
	push	r0
	sub	r1,1,r1
	bne	_Label_4219
	mov	3701,r13		! source line 3701
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   _temp_3998 = _StringConst_204
	set	_StringConst_204,r1
	store	r1,[r14+-104]
!   Prepare Argument: offset=8  value=_temp_3998  sizeInBytes=4
	load	[r14+-104],r1
	store	r1,[r15+0]
!   Call the function
	mov	3709,r13		! source line 3709
	mov	"\0\0CE",r10
	call	print
! SEND STATEMENT...
	mov	3711,r13		! source line 3711
	mov	"\0\0SE",r10
!   _temp_3999 = &serialNeedsAttention
	load	[r14+8],r1
	add	r1,124,r1
	store	r1,[r14+-100]
!   Send message Down
	load	[r14+-100],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! ASSIGNMENT STATEMENT...
	mov	3713,r13		! source line 3713
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
	store	r1,[r14+-108]
! ASSIGNMENT STATEMENT...
	mov	3716,r13		! source line 3716
	mov	"\0\0AS",r10
!   character_available_bit = serial_status_word AND 1		(int)
	load	[r14+-108],r1
	mov	1,r2
	and	r1,r2,r1
	store	r1,[r14+-112]
! IF STATEMENT...
	mov	3719,r13		! source line 3719
	mov	"\0\0IF",r10
!   if character_available_bit != 1 then goto _Label_4001		(int)
	load	[r14+-112],r1
	mov	1,r2
	cmp	r1,r2
	bne	_Label_4001
!	jmp	_Label_4000
_Label_4000:
! THEN...
	mov	3720,r13		! source line 3720
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_4002 = _StringConst_205
	set	_StringConst_205,r1
	store	r1,[r14+-96]
!   Prepare Argument: offset=8  value=_temp_4002  sizeInBytes=4
	load	[r14+-96],r1
	store	r1,[r15+0]
!   Call the function
	mov	3720,r13		! source line 3720
	mov	"\0\0CE",r10
	call	print
! SEND STATEMENT...
	mov	3722,r13		! source line 3722
	mov	"\0\0SE",r10
!   _temp_4003 = &serialLock
	load	[r14+8],r1
	add	r1,12,r1
	store	r1,[r14+-92]
!   Send message Lock
	load	[r14+-92],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! ASSIGNMENT STATEMENT...
	mov	3725,r13		! source line 3725
	mov	"\0\0AS",r10
!   if intIsZero (serial_data_word_address) then goto _runtimeErrorNullPointer
	load	[r14+8],r1
	load	[r1+8],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Data Move: _temp_4004 = *serial_data_word_address  (sizeInBytes=4)
	load	[r14+8],r1
	load	[r1+8],r1
	load	[r1],r1
	store	r1,[r14+-88]
!   inChar = intToChar (_temp_4004)
	load	[r14+-88],r1
	storeb	r1,[r14+-9]
! CALL STATEMENT...
!   _temp_4005 = _StringConst_206
	set	_StringConst_206,r1
	store	r1,[r14+-84]
!   Prepare Argument: offset=8  value=_temp_4005  sizeInBytes=4
	load	[r14+-84],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=inChar  sizeInBytes=1
	loadb	[r14+-9],r1
	storeb	r1,[r15+4]
!   Call the function
	mov	3727,r13		! source line 3727
	mov	"\0\0CA",r10
	call	_P_System_printCharVar
! IF STATEMENT...
	mov	3728,r13		! source line 3728
	mov	"\0\0IF",r10
!   if getBufferSize != 10 then goto _Label_4007		(int)
	load	[r14+8],r1
	load	[r1+48],r1
	mov	10,r2
	cmp	r1,r2
	bne	_Label_4007
!	jmp	_Label_4006
_Label_4006:
! THEN...
	mov	3729,r13		! source line 3729
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_4008 = _StringConst_207
	set	_StringConst_207,r1
	store	r1,[r14+-80]
!   Prepare Argument: offset=8  value=_temp_4008  sizeInBytes=4
	load	[r14+-80],r1
	store	r1,[r15+0]
!   Call the function
	mov	3729,r13		! source line 3729
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=inChar  sizeInBytes=1
	loadb	[r14+-9],r1
	storeb	r1,[r15+0]
!   Call the function
	mov	3730,r13		! source line 3730
	mov	"\0\0CE",r10
	call	printChar
! CALL STATEMENT...
!   _temp_4009 = _StringConst_208
	set	_StringConst_208,r1
	store	r1,[r14+-76]
!   Prepare Argument: offset=8  value=_temp_4009  sizeInBytes=4
	load	[r14+-76],r1
	store	r1,[r15+0]
!   Call the function
	mov	3731,r13		! source line 3731
	mov	"\0\0CE",r10
	call	print
	jmp	_Label_4010
_Label_4007:
! ELSE...
	mov	3735,r13		! source line 3735
	mov	"\0\0EL",r10
! CALL STATEMENT...
!   _temp_4011 = _StringConst_209
	set	_StringConst_209,r1
	store	r1,[r14+-72]
!   Prepare Argument: offset=8  value=_temp_4011  sizeInBytes=4
	load	[r14+-72],r1
	store	r1,[r15+0]
!   Call the function
	mov	3735,r13		! source line 3735
	mov	"\0\0CE",r10
	call	print
! ASSIGNMENT STATEMENT...
	mov	3736,r13		! source line 3736
	mov	"\0\0AS",r10
!   _temp_4012 = &getBuffer
	load	[r14+8],r1
	add	r1,32,r1
	store	r1,[r14+-68]
!   Move address of _temp_4012 [getBufferNextIn ] into _temp_4013
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
!   Data Move: *_temp_4013 = inChar  (sizeInBytes=1)
	loadb	[r14+-9],r1
	load	[r14+-64],r2
	storeb	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	3737,r13		! source line 3737
	mov	"\0\0AS",r10
!   _temp_4014 = getBufferNextIn + 1		(int)
	load	[r14+8],r1
	load	[r1+52],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-60]
!   getBufferNextIn = _temp_4014 rem 10		(int)
	load	[r14+-60],r1
	mov	10,r2
	cmp	r2,0
	be	_runtimeErrorZeroDivide
	rem	r1,r2,r1
	bvs	_runtimeErrorOverflow
	load	[r14+8],r2
	store	r1,[r2+52]
! SEND STATEMENT...
	mov	3738,r13		! source line 3738
	mov	"\0\0SE",r10
!   _temp_4015 = &serialLock
	load	[r14+8],r1
	add	r1,12,r1
	store	r1,[r14+-56]
!   _temp_4016 = &getCharacterAvail
	load	[r14+8],r1
	add	r1,60,r1
	store	r1,[r14+-52]
!   Prepare Argument: offset=12  value=_temp_4015  sizeInBytes=4
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
_Label_4010:
! SEND STATEMENT...
	mov	3741,r13		! source line 3741
	mov	"\0\0SE",r10
!   _temp_4017 = &serialLock
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
_Label_4001:
! ASSIGNMENT STATEMENT...
	mov	3746,r13		! source line 3746
	mov	"\0\0AS",r10
!   output_ready_bit = serial_status_word AND 2		(int)
	load	[r14+-108],r1
	mov	2,r2
	and	r1,r2,r1
	store	r1,[r14+-116]
! IF STATEMENT...
	mov	3748,r13		! source line 3748
	mov	"\0\0IF",r10
!   if output_ready_bit != 1 then goto _Label_4019		(int)
	load	[r14+-116],r1
	mov	1,r2
	cmp	r1,r2
	bne	_Label_4019
!	jmp	_Label_4018
_Label_4018:
! THEN...
	mov	3750,r13		! source line 3750
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_4020 = _StringConst_210
	set	_StringConst_210,r1
	store	r1,[r14+-44]
!   Prepare Argument: offset=8  value=_temp_4020  sizeInBytes=4
	load	[r14+-44],r1
	store	r1,[r15+0]
!   Call the function
	mov	3750,r13		! source line 3750
	mov	"\0\0CE",r10
	call	print
! SEND STATEMENT...
	mov	3752,r13		! source line 3752
	mov	"\0\0SE",r10
!   _temp_4021 = &serialLock
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
	mov	3755,r13		! source line 3755
	mov	"\0\0IF",r10
!   if intIsZero (putBufferSize) then goto _Label_4023
	load	[r14+8],r1
	load	[r1+92],r1
	cmp	r1,r0
	be	_Label_4023
!	jmp	_Label_4022
_Label_4022:
! THEN...
	mov	3756,r13		! source line 3756
	mov	"\0\0TN",r10
! ASSIGNMENT STATEMENT...
	mov	3756,r13		! source line 3756
	mov	"\0\0AS",r10
!   _temp_4024 = &putBuffer
	load	[r14+8],r1
	add	r1,76,r1
	store	r1,[r14+-36]
!   Move address of _temp_4024 [putBufferNextOut ] into _temp_4025
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
!   Data Move: outChar = *_temp_4025  (sizeInBytes=1)
	load	[r14+-32],r1
	loadb	[r1],r1
	storeb	r1,[r14+-10]
! ASSIGNMENT STATEMENT...
	mov	3757,r13		! source line 3757
	mov	"\0\0AS",r10
!   if intIsZero (serial_data_word_address) then goto _runtimeErrorNullPointer
	load	[r14+8],r1
	load	[r1+8],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_4026 = charToInt (outChar)
	loadb	[r14+-10],r1
	sll	r1,24,r1
	sra	r1,24,r1
	store	r1,[r14+-28]
!   Data Move: *serial_data_word_address = _temp_4026  (sizeInBytes=4)
	load	[r14+-28],r1
	load	[r14+8],r2
	load	[r2+8],r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	3758,r13		! source line 3758
	mov	"\0\0AS",r10
!   _temp_4027 = putBufferNextOut + 1		(int)
	load	[r14+8],r1
	load	[r1+100],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-24]
!   putBufferNextOut = _temp_4027 rem 10		(int)
	load	[r14+-24],r1
	mov	10,r2
	cmp	r2,0
	be	_runtimeErrorZeroDivide
	rem	r1,r2,r1
	bvs	_runtimeErrorOverflow
	load	[r14+8],r2
	store	r1,[r2+100]
! ASSIGNMENT STATEMENT...
	mov	3759,r13		! source line 3759
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
_Label_4023:
! SEND STATEMENT...
	mov	3762,r13		! source line 3762
	mov	"\0\0SE",r10
!   _temp_4028 = &putBufferSem
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
	mov	3764,r13		! source line 3764
	mov	"\0\0SE",r10
!   _temp_4029 = &serialLock
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
_Label_4019:
! RETURN STATEMENT...
	mov	3748,r13		! source line 3748
	mov	"\0\0RE",r10
	add	r15,120,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_SerialDriver_4:
	.word	_sourceFileName
	.word	_Label_4030
	.word	4		! total size of parameters
	.word	116		! frame size = 116
	.word	_Label_4031
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_4032
	.word	-16
	.word	4
	.word	_Label_4033
	.word	-20
	.word	4
	.word	_Label_4034
	.word	-24
	.word	4
	.word	_Label_4035
	.word	-28
	.word	4
	.word	_Label_4036
	.word	-32
	.word	4
	.word	_Label_4037
	.word	-36
	.word	4
	.word	_Label_4038
	.word	-40
	.word	4
	.word	_Label_4039
	.word	-44
	.word	4
	.word	_Label_4040
	.word	-48
	.word	4
	.word	_Label_4041
	.word	-52
	.word	4
	.word	_Label_4042
	.word	-56
	.word	4
	.word	_Label_4043
	.word	-60
	.word	4
	.word	_Label_4044
	.word	-64
	.word	4
	.word	_Label_4045
	.word	-68
	.word	4
	.word	_Label_4046
	.word	-72
	.word	4
	.word	_Label_4047
	.word	-76
	.word	4
	.word	_Label_4048
	.word	-80
	.word	4
	.word	_Label_4049
	.word	-84
	.word	4
	.word	_Label_4050
	.word	-88
	.word	4
	.word	_Label_4051
	.word	-92
	.word	4
	.word	_Label_4052
	.word	-96
	.word	4
	.word	_Label_4053
	.word	-100
	.word	4
	.word	_Label_4054
	.word	-104
	.word	4
	.word	_Label_4055
	.word	-108
	.word	4
	.word	_Label_4056
	.word	-112
	.word	4
	.word	_Label_4057
	.word	-116
	.word	4
	.word	_Label_4058
	.word	-9
	.word	1
	.word	_Label_4059
	.word	-10
	.word	1
	.word	0
_Label_4030:
	.ascii	"SerialDriver"
	.ascii	"::"
	.ascii	"SerialHandler\0"
	.align
_Label_4031:
	.ascii	"Pself\0"
	.align
_Label_4032:
	.byte	'?'
	.ascii	"_temp_4029\0"
	.align
_Label_4033:
	.byte	'?'
	.ascii	"_temp_4028\0"
	.align
_Label_4034:
	.byte	'?'
	.ascii	"_temp_4027\0"
	.align
_Label_4035:
	.byte	'?'
	.ascii	"_temp_4026\0"
	.align
_Label_4036:
	.byte	'?'
	.ascii	"_temp_4025\0"
	.align
_Label_4037:
	.byte	'?'
	.ascii	"_temp_4024\0"
	.align
_Label_4038:
	.byte	'?'
	.ascii	"_temp_4021\0"
	.align
_Label_4039:
	.byte	'?'
	.ascii	"_temp_4020\0"
	.align
_Label_4040:
	.byte	'?'
	.ascii	"_temp_4017\0"
	.align
_Label_4041:
	.byte	'?'
	.ascii	"_temp_4016\0"
	.align
_Label_4042:
	.byte	'?'
	.ascii	"_temp_4015\0"
	.align
_Label_4043:
	.byte	'?'
	.ascii	"_temp_4014\0"
	.align
_Label_4044:
	.byte	'?'
	.ascii	"_temp_4013\0"
	.align
_Label_4045:
	.byte	'?'
	.ascii	"_temp_4012\0"
	.align
_Label_4046:
	.byte	'?'
	.ascii	"_temp_4011\0"
	.align
_Label_4047:
	.byte	'?'
	.ascii	"_temp_4009\0"
	.align
_Label_4048:
	.byte	'?'
	.ascii	"_temp_4008\0"
	.align
_Label_4049:
	.byte	'?'
	.ascii	"_temp_4005\0"
	.align
_Label_4050:
	.byte	'?'
	.ascii	"_temp_4004\0"
	.align
_Label_4051:
	.byte	'?'
	.ascii	"_temp_4003\0"
	.align
_Label_4052:
	.byte	'?'
	.ascii	"_temp_4002\0"
	.align
_Label_4053:
	.byte	'?'
	.ascii	"_temp_3999\0"
	.align
_Label_4054:
	.byte	'?'
	.ascii	"_temp_3998\0"
	.align
_Label_4055:
	.byte	'I'
	.ascii	"serial_status_word\0"
	.align
_Label_4056:
	.byte	'I'
	.ascii	"character_available_bit\0"
	.align
_Label_4057:
	.byte	'I'
	.ascii	"output_ready_bit\0"
	.align
_Label_4058:
	.byte	'C'
	.ascii	"inChar\0"
	.align
_Label_4059:
	.byte	'C'
	.ascii	"outChar\0"
	.align
