! Name of package being compiled: TestProgram5
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
	.import	_Error_P_UserSystem_UncaughtThrowError
	.align
! Functions imported from other packages
	.import	_P_UserSystem_Sys_Exit
	.import	_P_UserSystem_Sys_Shutdown
	.import	_P_UserSystem_Sys_Yield
	.import	_P_UserSystem_Sys_Fork
	.import	_P_UserSystem_Sys_Join
	.import	_P_UserSystem_Sys_Exec
	.import	_P_UserSystem_Sys_Create
	.import	_P_UserSystem_Sys_Open
	.import	_P_UserSystem_Sys_Read
	.import	_P_UserSystem_Sys_Write
	.import	_P_UserSystem_Sys_Seek
	.import	_P_UserSystem_Sys_Close
	.import	DoSyscall
	.import	TerminateWithError
	.import	print
	.import	printInt
	.import	printHex
	.import	printChar
	.import	printBool
	.import	printDouble
	.import	_P_UserSystem_StrEqual
	.import	_P_UserSystem_StrCopy
	.import	_P_UserSystem_StrCmp
	.import	_P_UserSystem_Min
	.import	_P_UserSystem_Max
	.import	_P_UserSystem_printIntVar
	.import	_P_UserSystem_printHexVar
	.import	_P_UserSystem_printBoolVar
	.import	_P_UserSystem_printCharVar
	.import	_P_UserSystem_printPtr
	.import	_P_UserSystem_nl
	.import	_P_UserSystem_MemoryEqual
	.import	getCatchStack
	.import	MemoryZero
	.import	MemoryCopy
	.import	_P_UserSystem_KPLSystemInitialize
	.import	_P_UserSystem_KPLMemoryAlloc
	.import	_P_UserSystem_KPLMemoryFree
	.import	_P_UserSystem_KPLUncaughtThrow
	.import	_P_UserSystem_KPLIsKindOf
	.import	_P_UserSystem_KPLSystemError
! Externally visible functions in this package
	.export	_mainEntry
	.export	main
! The following class and its methods are from other packages
	.import	_P_UserSystem_Object
! The following interfaces are from other packages
! The following interfaces are from this package
! Globals imported from other packages
! Global variables in this package
	.data
_Global_bigBuffer:
! Static array
	.word	9000		! number of elements
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.align
	.align
! String constants
_StringConst_240:
	.word	37			! length
	.ascii	"Invalid entry; enter a single digit.\n"
	.align
_StringConst_239:
	.word	24			! length
	.ascii	"Unable to execute shell\n"
	.align
_StringConst_238:
	.word	2			! length
	.ascii	"sh"
	.align
_StringConst_237:
	.word	8			! length
	.ascii	"terminal"
	.align
_StringConst_236:
	.word	8			! length
	.ascii	"terminal"
	.align
_StringConst_235:
	.word	25			! length
	.ascii	"Please select by number: "
	.align
_StringConst_234:
	.word	13			! length
	.ascii	"  9  -  Quit\n"
	.align
_StringConst_233:
	.word	14			! length
	.ascii	"  8  -  Shell\n"
	.align
_StringConst_232:
	.word	26			! length
	.ascii	"  7  -  TerminalErrorTest\n"
	.align
_StringConst_231:
	.word	30			! length
	.ascii	"  6  -  OpenCloseTerminalTest\n"
	.align
_StringConst_230:
	.word	16			! length
	.ascii	"  5  -  EOFTest\n"
	.align
_StringConst_229:
	.word	21			! length
	.ascii	"  4  -  LineEchoTest\n"
	.align
_StringConst_228:
	.word	17			! length
	.ascii	"  3  -  EchoTest\n"
	.align
_StringConst_227:
	.word	16			! length
	.ascii	"  2  -  KeyTest\n"
	.align
_StringConst_226:
	.word	24			! length
	.ascii	"  1  -  BasicSerialTest\n"
	.align
_StringConst_225:
	.word	49			! length
	.ascii	"====================  MENU  ====================\n"
	.align
_StringConst_224:
	.word	35			! length
	.ascii	"This menu works best in raw mode.\n\n"
	.align
_StringConst_223:
	.word	8			! length
	.ascii	"terminal"
	.align
_StringConst_222:
	.word	8			! length
	.ascii	"terminal"
	.align
_StringConst_221:
	.word	32			! length
	.ascii	"Opening \'stdin\' and \'stdout\'...\n"
	.align
_StringConst_220:
	.word	38			! length
	.ascii	"\' instead  **************************\n"
	.align
_StringConst_219:
	.word	11			! length
	.ascii	"\' but was \'"
	.align
_StringConst_218:
	.word	79			! length
	.ascii	"**************************  ERROR: The next input character is expected to be \'"
	.align
_StringConst_217:
	.word	6			! length
	.ascii	"Okay.\n"
	.align
_StringConst_216:
	.word	43			! length
	.ascii	") is incorrect  **************************\n"
	.align
_StringConst_215:
	.word	59			! length
	.ascii	"**************************  ERROR: Return value from Read ("
	.align
_StringConst_214:
	.word	43			! length
	.ascii	") is incorrect  **************************\n"
	.align
_StringConst_213:
	.word	62			! length
	.ascii	"**************************  ERROR: Return value from syscall ("
	.align
_StringConst_212:
	.word	6			! length
	.ascii	"Okay.\n"
	.align
_StringConst_211:
	.word	40			! length
	.ascii	"\n==========  Test Complete  ==========\n\n"
	.align
_StringConst_210:
	.word	6			! length
	.ascii	"Okay.\n"
	.align
_StringConst_209:
	.word	59			! length
	.ascii	"instead of 0 or -1 as expected  **************************\n"
	.align
_StringConst_208:
	.word	50			! length
	.ascii	"**************************  ERROR: Write returned "
	.align
_StringConst_207:
	.word	86			! length
	.ascii	"\nWriting with a pointer which isn\'t in our address space, which should be an error...\n"
	.align
_StringConst_206:
	.word	54			! length
	.ascii	"instead of 11 as expected  **************************\n"
	.align
_StringConst_205:
	.word	50			! length
	.ascii	"**************************  ERROR: Write returned "
	.align
_StringConst_204:
	.word	11			! length
	.ascii	"KERNEL CODE"
	.align
_StringConst_203:
	.word	24			! length
	.ascii	"                        "
	.align
_StringConst_202:
	.word	49			! length
	.ascii	"\n\n==== This should print \"KERNEL CODE\" next ====\n"
	.align
_StringConst_201:
	.word	77			! length
	.ascii	"Writing with a pointer to a page which is read-only, which should be okay...\n"
	.align
_StringConst_200:
	.word	9			! length
	.ascii	"GREETINGS"
	.align
_StringConst_199:
	.word	24			! length
	.ascii	"                        "
	.align
_StringConst_198:
	.word	47			! length
	.ascii	"\n\n==== This should print \"GREETINGS\" next ====\n"
	.align
_StringConst_197:
	.word	55			! length
	.ascii	"Writing with a pointer that crosses a page boundary...\n"
	.align
_StringConst_196:
	.word	37			! length
	.ascii	"Writing with negative sizeInBytes...\n"
	.align
_StringConst_195:
	.word	37			! length
	.ascii	"Writing with negative sizeInBytes...\n"
	.align
_StringConst_194:
	.word	114			! length
	.ascii	"**************************  ERROR: The characters were not stored in memory correctly  **************************\n"
	.align
_StringConst_193:
	.word	13			! length
	.ascii	"QWEabcdef\nRTY"
	.align
_StringConst_192:
	.word	13			! length
	.ascii	"QWEabcdef\nRTY"
	.align
_StringConst_191:
	.word	29			! length
	.ascii	"Please type \"abcdef\\n\" next.\n"
	.align
_StringConst_190:
	.word	55			! length
	.ascii	"Reading with a pointer that crosses a page boundary...\n"
	.align
_StringConst_189:
	.word	120			! length
	.ascii	"**************************  ERROR: Return code is -1 but the last 4 bytes have been altered  **************************\n"
	.align
_StringConst_188:
	.word	124			! length
	.ascii	"**************************  ERROR: Return code is 4, but did not set the last 4 bytes correctly  **************************\n"
	.align
_StringConst_187:
	.word	29			! length
	.ascii	"Please type \"123456\\n\" next.\n"
	.align
_StringConst_186:
	.word	69			! length
	.ascii	"Reading with a pointer which is near the end of our address space...\n"
	.align
_StringConst_185:
	.word	59			! length
	.ascii	"instead of 0 or -1 as expected  **************************\n"
	.align
_StringConst_184:
	.word	49			! length
	.ascii	"**************************  ERROR: Read returned "
	.align
_StringConst_183:
	.word	26			! length
	.ascii	"Please type \"xyz\\n\" next.\n"
	.align
_StringConst_182:
	.word	85			! length
	.ascii	"Reading with a pointer which isn\'t in our address space, which should be an error...\n"
	.align
_StringConst_181:
	.word	59			! length
	.ascii	"instead of 0 or -1 as expected  **************************\n"
	.align
_StringConst_180:
	.word	49			! length
	.ascii	"**************************  ERROR: Read returned "
	.align
_StringConst_179:
	.word	26			! length
	.ascii	"Please type \"abc\\n\" next.\n"
	.align
_StringConst_178:
	.word	81			! length
	.ascii	"Reading with a pointer to a page which is read-only, which should be an error...\n"
	.align
_StringConst_177:
	.word	37			! length
	.ascii	"Reading with negative sizeInBytes...\n"
	.align
_StringConst_176:
	.word	37			! length
	.ascii	"Reading with negative sizeInBytes...\n"
	.align
_StringConst_175:
	.word	80			! length
	.ascii	"**************************  ERROR: Opening terminal  **************************\n"
	.align
_StringConst_174:
	.word	8			! length
	.ascii	"terminal"
	.align
_StringConst_173:
	.word	27			! length
	.ascii	"Opening \'terminal\' file...\n"
	.align
_StringConst_172:
	.word	42			! length
	.ascii	"(This test should be run in cooked mode.)\n"
	.align
_StringConst_171:
	.word	44			! length
	.ascii	"\n==========  TerminalErrorTest  ==========\n\n"
	.align
_StringConst_170:
	.word	40			! length
	.ascii	"\n==========  Test Complete  ==========\n\n"
	.align
_StringConst_169:
	.word	34			! length
	.ascii	"Closing all 10 fileDescriptors...\n"
	.align
_StringConst_168:
	.word	54			! length
	.ascii	"instead of -1 as expected  **************************\n"
	.align
_StringConst_167:
	.word	49			! length
	.ascii	"**************************  ERROR: Open returned "
	.align
_StringConst_166:
	.word	34			! length
	.ascii	"The syscall correctly returns -1.\n"
	.align
_StringConst_165:
	.word	8			! length
	.ascii	"terminal"
	.align
_StringConst_164:
	.word	64			! length
	.ascii	"Attempting to open \'terminal\' one more time, which should fail.\n"
	.align
_StringConst_163:
	.word	30			! length
	.ascii	")  **************************\n"
	.align
_StringConst_162:
	.word	73			! length
	.ascii	"**************************  ERROR: The syscall returns an unexpected fd ("
	.align
_StringConst_161:
	.word	57			! length
	.ascii	") indicating the open failed  **************************\n"
	.align
_StringConst_160:
	.word	68			! length
	.ascii	"**************************  ERROR: Open returned a negative number ("
	.align
_StringConst_159:
	.word	8			! length
	.ascii	"terminal"
	.align
_StringConst_158:
	.word	31			! length
	.ascii	"Opening \'terminal\' 10 times...\n"
	.align
_StringConst_157:
	.word	34			! length
	.ascii	"Closing all 10 fileDescriptors...\n"
	.align
_StringConst_156:
	.word	30			! length
	.ascii	")  **************************\n"
	.align
_StringConst_155:
	.word	73			! length
	.ascii	"**************************  ERROR: The syscall returns an unexpected fd ("
	.align
_StringConst_154:
	.word	57			! length
	.ascii	") indicating the open failed  **************************\n"
	.align
_StringConst_153:
	.word	68			! length
	.ascii	"**************************  ERROR: Open returned a negative number ("
	.align
_StringConst_152:
	.word	8			! length
	.ascii	"terminal"
	.align
_StringConst_151:
	.word	31			! length
	.ascii	"Opening \'terminal\' 10 times...\n"
	.align
_StringConst_150:
	.word	48			! length
	.ascii	"\n==========  OpenCloseTerminalTest  ==========\n\n"
	.align
_StringConst_149:
	.word	40			! length
	.ascii	"\n==========  Test Complete  ==========\n\n"
	.align
_StringConst_148:
	.word	83			! length
	.ascii	"**************************  ERROR: buffer is incorrect  **************************\n"
	.align
_StringConst_147:
	.word	6			! length
	.ascii	"abc456"
	.align
_StringConst_146:
	.word	83			! length
	.ascii	"Please type \"abc\" followed by control-D.  The ENTER key should not be necessary...\n"
	.align
_StringConst_145:
	.word	83			! length
	.ascii	"**************************  ERROR: buffer was modified  **************************\n"
	.align
_StringConst_144:
	.word	6			! length
	.ascii	"123456"
	.align
_StringConst_143:
	.word	69			! length
	.ascii	"Please hit control-D next.  The ENTER key should not be necessary...\n"
	.align
_StringConst_142:
	.word	58			! length
	.ascii	"\n**************************  ERROR: Problems with open, fd"
	.align
_StringConst_141:
	.word	8			! length
	.ascii	"terminal"
	.align
_StringConst_140:
	.word	48			! length
	.ascii	"many programs will interpret as \'end-of-file\'.\n\n"
	.align
_StringConst_139:
	.word	67			! length
	.ascii	"typed first, then the count returned from Read will be zero, which\n"
	.align
_StringConst_138:
	.word	64			! length
	.ascii	"return from the Read syscall.  If no other characters have been\n"
	.align
_StringConst_137:
	.word	65			! length
	.ascii	"enf-of-file character.  When typed, it should cause an immediate\n"
	.align
_StringConst_136:
	.word	65			! length
	.ascii	"This function tests the handling of control-D.  Control-D is the\n"
	.align
_StringConst_135:
	.word	40			! length
	.ascii	"This test should be run in \'raw\' mode.\n\n"
	.align
_StringConst_134:
	.word	34			! length
	.ascii	"\n==========  EOFTest  ==========\n\n"
	.align
_StringConst_133:
	.word	40			! length
	.ascii	"\n==========  Test Complete  ==========\n\n"
	.align
_StringConst_132:
	.word	74			! length
	.ascii	"\n**************************  ERROR: returned value from Write incorrect, j"
	.align
_StringConst_131:
	.word	29			! length
	.ascii	"\nNumber of characters entered"
	.align
_StringConst_130:
	.word	57			! length
	.ascii	"**************************  ERROR: Problems with open, fd"
	.align
_StringConst_129:
	.word	8			! length
	.ascii	"terminal"
	.align
_StringConst_128:
	.word	91			! length
	.ascii	"To change to raw mode, type control-C, ENTER, ENTER, \"raw\", and \"g\" to resume execution.)\n\n"
	.align
_StringConst_127:
	.word	82			! length
	.ascii	"(To change to cooked mode, type control-C, \"cooked\", and \"g\" to resume execution.\n"
	.align
_StringConst_126:
	.word	67			! length
	.ascii	"This test will terminate when the first character entered is \'q\'.\n\n"
	.align
_StringConst_125:
	.word	89			! length
	.ascii	"  6. In cooked mode, see how the host (Unix) processes editing keys, such as backspace.\n\n"
	.align
_StringConst_124:
	.word	63			! length
	.ascii	"  5. See what happens when the size of the buffer is exceeded.\n"
	.align
_StringConst_123:
	.word	49			! length
	.ascii	"  4. See what happens when you hit cntl-D (EOF).\n"
	.align
_StringConst_122:
	.word	99			! length
	.ascii	"  3. See what happens when you hit keys labelled SPACE, ENTER/RETURN, TAB, DEL/BACKSPACE, and ESC.\n"
	.align
_StringConst_121:
	.word	92			! length
	.ascii	"  2. See what happens with characters like cntl-H (Backspace), cntl-J (NL) and cntl-M (CR).\n"
	.align
_StringConst_120:
	.word	29			! length
	.ascii	"  1. Start by typing \"abc\\n\"\n"
	.align
_StringConst_119:
	.word	58			! length
	.ascii	"line is complete, this program will (re) print the line.\n\n"
	.align
_StringConst_118:
	.word	80			! length
	.ascii	"mode.  In cooked mode, the host (Unix) will echo characters and then, after the\n"
	.align
_StringConst_117:
	.word	79			! length
	.ascii	"the entire line is completed by typing ENTER, when running the emulator in raw\n"
	.align
_StringConst_116:
	.word	79			! length
	.ascii	"does not echo characters as typed, you will not see the characters until after\n"
	.align
_StringConst_115:
	.word	75			! length
	.ascii	"After this program gets the entire line, it prints it.  Since this program\n"
	.align
_StringConst_114:
	.word	28			! length
	.ascii	" characters) into a buffer.\n"
	.align
_StringConst_113:
	.word	50			! length
	.ascii	"This program reads an entire line of input (up to "
	.align
_StringConst_112:
	.word	39			! length
	.ascii	"\n==========  LineEchoTest  ==========\n\n"
	.align
_StringConst_111:
	.word	40			! length
	.ascii	"\n==========  Test Complete  ==========\n\n"
	.align
_StringConst_110:
	.word	74			! length
	.ascii	"\n**************************  ERROR: returned value from Write incorrect, i"
	.align
_StringConst_109:
	.word	76			! length
	.ascii	"\n**************************  ERROR: Returned value from Read is incorrect, i"
	.align
_StringConst_108:
	.word	98			! length
	.ascii	"\n*****  WARNING: Returned value from Read is zero; This should only occur when control-D is typed\n"
	.align
_StringConst_107:
	.word	58			! length
	.ascii	"\n**************************  ERROR: Problems with open, fd"
	.align
_StringConst_106:
	.word	8			! length
	.ascii	"terminal"
	.align
_StringConst_105:
	.word	91			! length
	.ascii	"To change to raw mode, type control-C, ENTER, ENTER, \"raw\", and \"g\" to resume execution.)\n\n"
	.align
_StringConst_104:
	.word	82			! length
	.ascii	"(To change to cooked mode, type control-C, \"cooked\", and \"g\" to resume execution.\n"
	.align
_StringConst_103:
	.word	45			! length
	.ascii	"This test will terminate when \'q\' is typed.\n\n"
	.align
_StringConst_102:
	.word	19			! length
	.ascii	"         up-arrow\n\n"
	.align
_StringConst_101:
	.word	19			! length
	.ascii	"         control-g\n"
	.align
_StringConst_100:
	.word	22			! length
	.ascii	"         ESC  [  5  A\n"
	.align
_StringConst_99:
	.word	22			! length
	.ascii	"         ESC  [  7  m\n"
	.align
_StringConst_98:
	.word	46			! length
	.ascii	"     For example, try typing these sequences:\n"
	.align
_StringConst_97:
	.word	87			! length
	.ascii	"  6. While in raw mode, see what happens with sequences from page 342 in the textbook.\n"
	.align
_StringConst_96:
	.word	51			! length
	.ascii	"  5. Try this test in cooked mode and in raw mode.\n"
	.align
_StringConst_95:
	.word	49			! length
	.ascii	"  4. See what happens when you hit cntl-D (EOF).\n"
	.align
_StringConst_94:
	.word	99			! length
	.ascii	"  3. See what happens when you hit keys labelled SPACE, ENTER/RETURN, TAB, DEL/BACKSPACE, and ESC.\n"
	.align
_StringConst_93:
	.word	92			! length
	.ascii	"  2. See what happens with characters like cntl-H (Backspace), cntl-J (NL) and cntl-M (CR).\n"
	.align
_StringConst_92:
	.word	29			! length
	.ascii	"  1. Start by typing \"abc\\n\"\n"
	.align
_StringConst_91:
	.word	93			! length
	.ascii	"This test reads characters from the terminal.  It echoes each character, as it is received.\n\n"
	.align
_StringConst_90:
	.word	35			! length
	.ascii	"\n==========  EchoTest  ==========\n\n"
	.align
_StringConst_89:
	.word	40			! length
	.ascii	"\n==========  Test Complete  ==========\n\n"
	.align
_StringConst_88:
	.word	2			! length
	.ascii	")\n"
	.align
_StringConst_87:
	.word	10			! length
	.ascii	" (decimal "
	.align
_StringConst_86:
	.word	5			! length
	.ascii	"ch = "
	.align
_StringConst_85:
	.word	89			! length
	.ascii	"\n**************************  ERROR: Returned value from Read is incorrect; returned value"
	.align
_StringConst_84:
	.word	98			! length
	.ascii	"\n*****  WARNING: Returned value from Read is zero; This should only occur when control-D is typed\n"
	.align
_StringConst_83:
	.word	58			! length
	.ascii	"\n**************************  ERROR: Problems with open, fd"
	.align
_StringConst_82:
	.word	8			! length
	.ascii	"terminal"
	.align
_StringConst_81:
	.word	91			! length
	.ascii	"To change to raw mode, type control-C, ENTER, ENTER, \"raw\", and \"g\" to resume execution.)\n\n"
	.align
_StringConst_80:
	.word	82			! length
	.ascii	"(To change to cooked mode, type control-C, \"cooked\", and \"g\" to resume execution.\n"
	.align
_StringConst_79:
	.word	45			! length
	.ascii	"This test will terminate when \'q\' is typed.\n\n"
	.align
_StringConst_78:
	.word	52			! length
	.ascii	"  5. Try this test in cooked mode and in raw mode.\n\n"
	.align
_StringConst_77:
	.word	49			! length
	.ascii	"  4. See what happens when you hit cntl-D (EOF).\n"
	.align
_StringConst_76:
	.word	110			! length
	.ascii	"  3. See what happens when you hit keys labelled SPACE, ENTER/RETURN, TAB, DEL/BACKSPACE, ARROW KEYS and ESC.\n"
	.align
_StringConst_75:
	.word	92			! length
	.ascii	"  2. See what happens with characters like cntl-H (Backspace), cntl-J (NL) and cntl-M (CR).\n"
	.align
_StringConst_74:
	.word	33			! length
	.ascii	"  1. Start by typing \"abcABC123\"\n"
	.align
_StringConst_73:
	.word	85			! length
	.ascii	"This test waits for a single character and then prints the value of that character.\n\n"
	.align
_StringConst_72:
	.word	34			! length
	.ascii	"\n==========  KeyTest  ==========\n\n"
	.align
_StringConst_71:
	.word	40			! length
	.ascii	"\n==========  Test Complete  ==========\n\n"
	.align
_StringConst_70:
	.word	2			! length
	.ascii	"\"\n"
	.align
_StringConst_69:
	.word	29			! length
	.ascii	"              The buffer is \""
	.align
_StringConst_68:
	.word	99			! length
	.ascii	"\n**************************  ERROR: The user-level buffer was modified  **************************\n"
	.align
_StringConst_67:
	.word	42			! length
	.ascii	"The buffer was not modified, as expected.\n"
	.align
_StringConst_66:
	.word	10			! length
	.ascii	"0123456789"
	.align
_StringConst_65:
	.word	86			! length
	.ascii	"\n**************************  ERROR: Returned value from Read was not 0; returned value"
	.align
_StringConst_64:
	.word	27			! length
	.ascii	"Returned value is correct.\n"
	.align
_StringConst_63:
	.word	10			! length
	.ascii	"0123456789"
	.align
_StringConst_62:
	.word	55			! length
	.ascii	"\nPlease type control-D.  Do not hit ENTER or RETURN...\n"
	.align
_StringConst_61:
	.word	2			! length
	.ascii	"\"\n"
	.align
_StringConst_60:
	.word	29			! length
	.ascii	"              The buffer is \""
	.align
_StringConst_59:
	.word	101			! length
	.ascii	"\n**************************  ERROR: The user-level buffer is not correct  **************************\n"
	.align
_StringConst_58:
	.word	34			! length
	.ascii	"The buffer was updated correctly.\n"
	.align
_StringConst_57:
	.word	10			! length
	.ascii	"01\b3456789"
	.align
_StringConst_56:
	.word	86			! length
	.ascii	"\n**************************  ERROR: Returned value from Read was not 1; returned value"
	.align
_StringConst_55:
	.word	27			! length
	.ascii	"Returned value is correct.\n"
	.align
_StringConst_54:
	.word	10			! length
	.ascii	"0123456789"
	.align
_StringConst_53:
	.word	55			! length
	.ascii	"\nPlease type control-H.  Do not hit ENTER or RETURN...\n"
	.align
_StringConst_52:
	.word	2			! length
	.ascii	"\"\n"
	.align
_StringConst_51:
	.word	29			! length
	.ascii	"              The buffer is \""
	.align
_StringConst_50:
	.word	101			! length
	.ascii	"\n**************************  ERROR: The user-level buffer is not correct  **************************\n"
	.align
_StringConst_49:
	.word	84			! length
	.ascii	"The buffer was updated correctly; The kernel failed to translate CR into a NEWLINE.\n"
	.align
_StringConst_48:
	.word	10			! length
	.ascii	"01\r3456789"
	.align
_StringConst_47:
	.word	34			! length
	.ascii	"The buffer was updated correctly.\n"
	.align
_StringConst_46:
	.word	10			! length
	.ascii	"01\n3456789"
	.align
_StringConst_45:
	.word	86			! length
	.ascii	"\n**************************  ERROR: Returned value from Read was not 1; returned value"
	.align
_StringConst_44:
	.word	27			! length
	.ascii	"Returned value is correct.\n"
	.align
_StringConst_43:
	.word	10			! length
	.ascii	"0123456789"
	.align
_StringConst_42:
	.word	55			! length
	.ascii	"\nPlease type control-M.  Do not hit ENTER or RETURN...\n"
	.align
_StringConst_41:
	.word	2			! length
	.ascii	"\"\n"
	.align
_StringConst_40:
	.word	29			! length
	.ascii	"              The buffer is \""
	.align
_StringConst_39:
	.word	101			! length
	.ascii	"\n**************************  ERROR: The user-level buffer is not correct  **************************\n"
	.align
_StringConst_38:
	.word	34			! length
	.ascii	"The buffer was updated correctly.\n"
	.align
_StringConst_37:
	.word	10			! length
	.ascii	"01\n3456789"
	.align
_StringConst_36:
	.word	86			! length
	.ascii	"\n**************************  ERROR: Returned value from Read was not 1; returned value"
	.align
_StringConst_35:
	.word	27			! length
	.ascii	"Returned value is correct.\n"
	.align
_StringConst_34:
	.word	10			! length
	.ascii	"0123456789"
	.align
_StringConst_33:
	.word	55			! length
	.ascii	"\nPlease type control-J.  Do not hit ENTER or RETURN...\n"
	.align
_StringConst_32:
	.word	2			! length
	.ascii	"\"\n"
	.align
_StringConst_31:
	.word	29			! length
	.ascii	"              The buffer is \""
	.align
_StringConst_30:
	.word	101			! length
	.ascii	"\n**************************  ERROR: The user-level buffer is not correct  **************************\n"
	.align
_StringConst_29:
	.word	34			! length
	.ascii	"The buffer was updated correctly.\n"
	.align
_StringConst_28:
	.word	10			! length
	.ascii	"01hel56lo9"
	.align
_StringConst_27:
	.word	86			! length
	.ascii	"\n**************************  ERROR: Returned value from Read was not 2; returned value"
	.align
_StringConst_26:
	.word	27			! length
	.ascii	"Returned value is correct.\n"
	.align
_StringConst_25:
	.word	86			! length
	.ascii	"\n**************************  ERROR: Returned value from Read was not 3; returned value"
	.align
_StringConst_24:
	.word	27			! length
	.ascii	"Returned value is correct.\n"
	.align
_StringConst_23:
	.word	10			! length
	.ascii	"0123456789"
	.align
_StringConst_22:
	.word	53			! length
	.ascii	"\nPlease type \"hello\".  Do not hit ENTER or RETURN...\n"
	.align
_StringConst_21:
	.word	2			! length
	.ascii	"\"\n"
	.align
_StringConst_20:
	.word	29			! length
	.ascii	"              The buffer is \""
	.align
_StringConst_19:
	.word	101			! length
	.ascii	"\n**************************  ERROR: The user-level buffer is not correct  **************************\n"
	.align
_StringConst_18:
	.word	34			! length
	.ascii	"The buffer was updated correctly.\n"
	.align
_StringConst_17:
	.word	10			! length
	.ascii	"01abc56789"
	.align
_StringConst_16:
	.word	86			! length
	.ascii	"\n**************************  ERROR: Returned value from Read was not 3; returned value"
	.align
_StringConst_15:
	.word	27			! length
	.ascii	"Returned value is correct.\n"
	.align
_StringConst_14:
	.word	8			! length
	.ascii	"here :)\n"
	.align
_StringConst_13:
	.word	16			! length
	.ascii	"before sys_read\n"
	.align
_StringConst_12:
	.word	10			! length
	.ascii	"0123456789"
	.align
_StringConst_11:
	.word	51			! length
	.ascii	"\nPlease type \"abc\".  Do not hit ENTER or RETURN...\n"
	.align
_StringConst_10:
	.word	93			! length
	.ascii	"\n**************************  ERROR: Something strange was stored in the user-level buffer, ch"
	.align
_StringConst_9:
	.word	102			! length
	.ascii	"\n**************************  ERROR: The user-level buffer was not changed  **************************\n"
	.align
_StringConst_8:
	.word	34			! length
	.ascii	"The buffer was updated correctly.\n"
	.align
_StringConst_7:
	.word	86			! length
	.ascii	"\n**************************  ERROR: Returned value from Read was not 1; returned value"
	.align
_StringConst_6:
	.word	27			! length
	.ascii	"Returned value is correct.\n"
	.align
_StringConst_5:
	.word	48			! length
	.ascii	"Hit the \"a\" key.  Do not hit ENTER or RETURN...\n"
	.align
_StringConst_4:
	.word	58			! length
	.ascii	"\n**************************  ERROR: Problems with open, fd"
	.align
_StringConst_3:
	.word	8			! length
	.ascii	"terminal"
	.align
_StringConst_2:
	.word	38			! length
	.ascii	"This test should be run in raw mode.\n\n"
	.align
_StringConst_1:
	.word	42			! length
	.ascii	"\n==========  BasicSerialTest  ==========\n\n"
	.align
	.text
! 
! =====  MAIN ENTRY POINT  =====
! 
_mainEntry:
	set	_packageName,r2		! Get CheckVersion started
	set	0xf1e9d27c,r3		! .  hashVal = -236334468
	call	_CheckVersion_P_TestProgram5_	! .
	cmp	r1,0			! .
	be	_Label_254		! .
	ret				! .
_Label_254:				! .
	call	_heapInitialize
	jmp	main
! 
! Source Filename and Package Name
! 
_sourceFileName:
	.ascii	"TestProgram5.c\0"
_packageName:
	.ascii	"TestProgram5\0"
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
_CheckVersion_P_TestProgram5_:
	.export	_CheckVersion_P_TestProgram5_
	set	0xf1e9d27c,r4		! myHashVal = -236334468
	cmp	r3,r4
	be	_Label_255
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
_Label_255:
	mov	0,r1
! Make sure _P_UserSystem_ has hash value 0xd3ed0851 (decimal -739440559)
	set	_packageName,r2
	set	0xd3ed0851,r3
	call	_CheckVersion_P_UserSystem_
	.import	_CheckVersion_P_UserSystem_
	cmp	r1,0
	bne	_Label_256
_Label_256:
	ret
_CVMess1:	.ascii	"\nVERSION CONSISTENCY ERROR: Package '\0"
_CVMess2:	.ascii	"' uses package '\0"
_CVMess3:	.ascii	"'.  Whenever a header file is modified, all packages that use that package (directly or indirectly) must be recompiled.  The header file for '\0"
_CVMess4:	.ascii	"' has been changed since '\0"
_CVMess5:	.ascii	"' was compiled last.  Please recompile all packages that depend on '\0"
_CVMess6:	.ascii	"'.\n\n\0"
	.align
! 
! ===============  FUNCTION main  ===============
! 
main:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor_main,r1
	push	r1
	mov	15,r13		! source line 15
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   Call the function
	mov	21,r13		! source line 21
	mov	"\0\0CA",r10
	call	_function_253_BasicSerialTest
! CALL STATEMENT...
!   Call the function
	mov	31,r13		! source line 31
	mov	"\0\0CA",r10
	call	_P_UserSystem_Sys_Shutdown
! RETURN STATEMENT...
	mov	31,r13		! source line 31
	mov	"\0\0RE",r10
	add	r15,4,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor_main:
	.word	_sourceFileName
	.word	_Label_257
	.word	0		! total size of parameters
	.word	0		! frame size = 0
	.word	0
_Label_257:
	.ascii	"main\0"
	.align
! 
! ===============  FUNCTION BasicSerialTest  ===============
! 
_function_253_BasicSerialTest:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__function_253_BasicSerialTest,r1
	push	r1
	mov	136,r1
_Label_1279:
	push	r0
	sub	r1,1,r1
	bne	_Label_1279
	mov	36,r13		! source line 36
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! UserBuffer
!   NEW ARRAY Constructor...
!   _temp_259 = &_temp_258
	add	r14,-516,r1
	store	r1,[r14+-500]
!   _temp_259 = _temp_259 + 4
	load	[r14+-500],r1
	add	r1,4,r1
	store	r1,[r14+-500]
!   Next value...
	mov	10,r1
	store	r1,[r14+-496]
_Label_261:
!   Data Move: *_temp_259 = 63  (sizeInBytes=1)
	mov	63,r1
	load	[r14+-500],r2
	storeb	r1,[r2]
!   _temp_259 = _temp_259 + 1
	load	[r14+-500],r1
	add	r1,1,r1
	store	r1,[r14+-500]
!   _temp_260 = _temp_260 + -1
	load	[r14+-496],r1
	add	r1,-1,r1
	store	r1,[r14+-496]
!   if intNotZero (_temp_260) then goto _Label_261
	load	[r14+-496],r1
	cmp	r1,r0
	bne	_Label_261
!   Initialize the array size...
	mov	10,r1
	store	r1,[r14+-516]
!   _temp_262 = &_temp_258
	add	r14,-516,r1
	store	r1,[r14+-492]
!   make sure array has size 10
	load	[r14+-492],r1
	load	[r1],r1
	set	10, r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bne	_runtimeErrorWrongArraySize
!   Data Move: UserBuffer = *_temp_262  (sizeInBytes=16)
	load	[r14+-492],r5
	add	r14,-540,r4
	load	[r5],r1
	store	r1,[r4]
	load	[r5+4],r1
	store	r1,[r4+4]
	load	[r5+8],r1
	store	r1,[r4+8]
	load	[r5+12],r1
	store	r1,[r4+12]
! CALL STATEMENT...
!   _temp_263 = _StringConst_1
	set	_StringConst_1,r1
	store	r1,[r14+-488]
!   Prepare Argument: offset=8  value=_temp_263  sizeInBytes=4
	load	[r14+-488],r1
	store	r1,[r15+0]
!   Call the function
	mov	46,r13		! source line 46
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_264 = _StringConst_2
	set	_StringConst_2,r1
	store	r1,[r14+-484]
!   Prepare Argument: offset=8  value=_temp_264  sizeInBytes=4
	load	[r14+-484],r1
	store	r1,[r15+0]
!   Call the function
	mov	47,r13		! source line 47
	mov	"\0\0CE",r10
	call	print
! ASSIGNMENT STATEMENT...
	mov	49,r13		! source line 49
	mov	"\0\0AS",r10
!   _temp_265 = _StringConst_3
	set	_StringConst_3,r1
	store	r1,[r14+-480]
!   Prepare Argument: offset=8  value=_temp_265  sizeInBytes=4
	load	[r14+-480],r1
	store	r1,[r15+0]
!   Call the function
	mov	49,r13		! source line 49
	mov	"\0\0CA",r10
	call	_P_UserSystem_Sys_Open
!   Retrieve Result: targetName=fd  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-520]
! IF STATEMENT...
	mov	50,r13		! source line 50
	mov	"\0\0IF",r10
!   if fd >= 0 then goto _Label_267		(int)
	load	[r14+-520],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_267
!	jmp	_Label_266
_Label_266:
! THEN...
	mov	51,r13		! source line 51
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_268 = _StringConst_4
	set	_StringConst_4,r1
	store	r1,[r14+-476]
!   Prepare Argument: offset=8  value=_temp_268  sizeInBytes=4
	load	[r14+-476],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=fd  sizeInBytes=4
	load	[r14+-520],r1
	store	r1,[r15+4]
!   Call the function
	mov	51,r13		! source line 51
	mov	"\0\0CA",r10
	call	_P_UserSystem_printIntVar
! END IF...
_Label_267:
! CALL STATEMENT...
!   _temp_269 = _StringConst_5
	set	_StringConst_5,r1
	store	r1,[r14+-472]
!   Prepare Argument: offset=8  value=_temp_269  sizeInBytes=4
	load	[r14+-472],r1
	store	r1,[r15+0]
!   Call the function
	mov	55,r13		! source line 55
	mov	"\0\0CE",r10
	call	print
! ASSIGNMENT STATEMENT...
	mov	56,r13		! source line 56
	mov	"\0\0AS",r10
!   ch = 120		(1 byte)
	mov	120,r1
	storeb	r1,[r14+-11]
! ASSIGNMENT STATEMENT...
	mov	57,r13		! source line 57
	mov	"\0\0AS",r10
!   _temp_270 = &ch
	add	r14,-11,r1
	store	r1,[r14+-468]
!   Prepare Argument: offset=8  value=fd  sizeInBytes=4
	load	[r14+-520],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=_temp_270  sizeInBytes=4
	load	[r14+-468],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=1  sizeInBytes=4
	mov	1,r1
	store	r1,[r15+8]
!   Call the function
	mov	57,r13		! source line 57
	mov	"\0\0CA",r10
	call	_P_UserSystem_Sys_Read
!   Retrieve Result: targetName=i  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-524]
! IF STATEMENT...
	mov	59,r13		! source line 59
	mov	"\0\0IF",r10
!   if i != 1 then goto _Label_272		(int)
	load	[r14+-524],r1
	mov	1,r2
	cmp	r1,r2
	bne	_Label_272
!	jmp	_Label_271
_Label_271:
! THEN...
	mov	60,r13		! source line 60
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_273 = _StringConst_6
	set	_StringConst_6,r1
	store	r1,[r14+-464]
!   Prepare Argument: offset=8  value=_temp_273  sizeInBytes=4
	load	[r14+-464],r1
	store	r1,[r15+0]
!   Call the function
	mov	60,r13		! source line 60
	mov	"\0\0CE",r10
	call	print
	jmp	_Label_274
_Label_272:
! ELSE...
	mov	62,r13		! source line 62
	mov	"\0\0EL",r10
! CALL STATEMENT...
!   _temp_275 = _StringConst_7
	set	_StringConst_7,r1
	store	r1,[r14+-460]
!   Prepare Argument: offset=8  value=_temp_275  sizeInBytes=4
	load	[r14+-460],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=i  sizeInBytes=4
	load	[r14+-524],r1
	store	r1,[r15+4]
!   Call the function
	mov	62,r13		! source line 62
	mov	"\0\0CA",r10
	call	_P_UserSystem_printIntVar
! END IF...
_Label_274:
! IF STATEMENT...
	mov	65,r13		! source line 65
	mov	"\0\0IF",r10
!   _temp_278 = ch XOR 97		(bool)
	loadb	[r14+-11],r1
	mov	97,r2
	xor	r1,r2,r1
	storeb	r1,[r14+-10]
!   if _temp_278 then goto _Label_277 else goto _Label_276
	loadb	[r14+-10],r1
	cmp	r1,0
	be	_Label_276
	jmp	_Label_277
_Label_276:
! THEN...
	mov	66,r13		! source line 66
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_279 = _StringConst_8
	set	_StringConst_8,r1
	store	r1,[r14+-456]
!   Prepare Argument: offset=8  value=_temp_279  sizeInBytes=4
	load	[r14+-456],r1
	store	r1,[r15+0]
!   Call the function
	mov	66,r13		! source line 66
	mov	"\0\0CE",r10
	call	print
	jmp	_Label_280
_Label_277:
! ELSE...
	mov	67,r13		! source line 67
	mov	"\0\0EL",r10
! IF STATEMENT...
	mov	67,r13		! source line 67
	mov	"\0\0IF",r10
!   _temp_283 = ch XOR 120		(bool)
	loadb	[r14+-11],r1
	mov	120,r2
	xor	r1,r2,r1
	storeb	r1,[r14+-9]
!   if _temp_283 then goto _Label_282 else goto _Label_281
	loadb	[r14+-9],r1
	cmp	r1,0
	be	_Label_281
	jmp	_Label_282
_Label_281:
! THEN...
	mov	68,r13		! source line 68
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_284 = _StringConst_9
	set	_StringConst_9,r1
	store	r1,[r14+-452]
!   Prepare Argument: offset=8  value=_temp_284  sizeInBytes=4
	load	[r14+-452],r1
	store	r1,[r15+0]
!   Call the function
	mov	68,r13		! source line 68
	mov	"\0\0CE",r10
	call	print
	jmp	_Label_285
_Label_282:
! ELSE...
	mov	70,r13		! source line 70
	mov	"\0\0EL",r10
! CALL STATEMENT...
!   _temp_286 = _StringConst_10
	set	_StringConst_10,r1
	store	r1,[r14+-448]
!   Prepare Argument: offset=8  value=_temp_286  sizeInBytes=4
	load	[r14+-448],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=ch  sizeInBytes=1
	loadb	[r14+-11],r1
	storeb	r1,[r15+4]
!   Call the function
	mov	70,r13		! source line 70
	mov	"\0\0CA",r10
	call	_P_UserSystem_printCharVar
! END IF...
_Label_285:
! END IF...
_Label_280:
! CALL STATEMENT...
!   _temp_287 = _StringConst_11
	set	_StringConst_11,r1
	store	r1,[r14+-444]
!   Prepare Argument: offset=8  value=_temp_287  sizeInBytes=4
	load	[r14+-444],r1
	store	r1,[r15+0]
!   Call the function
	mov	74,r13		! source line 74
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_288 = &UserBuffer
	add	r14,-540,r1
	store	r1,[r14+-440]
!   _temp_289 = _StringConst_12
	set	_StringConst_12,r1
	store	r1,[r14+-436]
!   Prepare Argument: offset=8  value=_temp_288  sizeInBytes=4
	load	[r14+-440],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=_temp_289  sizeInBytes=4
	load	[r14+-436],r1
	store	r1,[r15+4]
!   Call the function
	mov	75,r13		! source line 75
	mov	"\0\0CA",r10
	call	_P_UserSystem_StrCopy
! CALL STATEMENT...
!   _temp_290 = _StringConst_13
	set	_StringConst_13,r1
	store	r1,[r14+-432]
!   Prepare Argument: offset=8  value=_temp_290  sizeInBytes=4
	load	[r14+-432],r1
	store	r1,[r15+0]
!   Call the function
	mov	76,r13		! source line 76
	mov	"\0\0CE",r10
	call	print
! ASSIGNMENT STATEMENT...
	mov	77,r13		! source line 77
	mov	"\0\0AS",r10
!   _temp_292 = &UserBuffer
	add	r14,-540,r1
	store	r1,[r14+-424]
!   Move address of _temp_292 [2 ] into _temp_293
!     make sure index expr is >= 0
	mov	2,r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-424],r1
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
	store	r2,[r14+-420]
!   _temp_291 = _temp_293		(4 bytes)
	load	[r14+-420],r1
	store	r1,[r14+-428]
!   Prepare Argument: offset=8  value=fd  sizeInBytes=4
	load	[r14+-520],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=_temp_291  sizeInBytes=4
	load	[r14+-428],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=3  sizeInBytes=4
	mov	3,r1
	store	r1,[r15+8]
!   Call the function
	mov	77,r13		! source line 77
	mov	"\0\0CA",r10
	call	_P_UserSystem_Sys_Read
!   Retrieve Result: targetName=i  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-524]
! CALL STATEMENT...
!   _temp_294 = _StringConst_14
	set	_StringConst_14,r1
	store	r1,[r14+-416]
!   Prepare Argument: offset=8  value=_temp_294  sizeInBytes=4
	load	[r14+-416],r1
	store	r1,[r15+0]
!   Call the function
	mov	78,r13		! source line 78
	mov	"\0\0CE",r10
	call	print
! IF STATEMENT...
	mov	80,r13		! source line 80
	mov	"\0\0IF",r10
!   if i != 3 then goto _Label_296		(int)
	load	[r14+-524],r1
	mov	3,r2
	cmp	r1,r2
	bne	_Label_296
!	jmp	_Label_295
_Label_295:
! THEN...
	mov	81,r13		! source line 81
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_297 = _StringConst_15
	set	_StringConst_15,r1
	store	r1,[r14+-412]
!   Prepare Argument: offset=8  value=_temp_297  sizeInBytes=4
	load	[r14+-412],r1
	store	r1,[r15+0]
!   Call the function
	mov	81,r13		! source line 81
	mov	"\0\0CE",r10
	call	print
	jmp	_Label_298
_Label_296:
! ELSE...
	mov	83,r13		! source line 83
	mov	"\0\0EL",r10
! CALL STATEMENT...
!   _temp_299 = _StringConst_16
	set	_StringConst_16,r1
	store	r1,[r14+-408]
!   Prepare Argument: offset=8  value=_temp_299  sizeInBytes=4
	load	[r14+-408],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=i  sizeInBytes=4
	load	[r14+-524],r1
	store	r1,[r15+4]
!   Call the function
	mov	83,r13		! source line 83
	mov	"\0\0CA",r10
	call	_P_UserSystem_printIntVar
! END IF...
_Label_298:
! IF STATEMENT...
	mov	86,r13		! source line 86
	mov	"\0\0IF",r10
!   _temp_303 = &UserBuffer
	add	r14,-540,r1
	store	r1,[r14+-400]
!   _temp_304 = _StringConst_17
	set	_StringConst_17,r1
	store	r1,[r14+-396]
!   Prepare Argument: offset=8  value=_temp_303  sizeInBytes=4
	load	[r14+-400],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=_temp_304  sizeInBytes=4
	load	[r14+-396],r1
	store	r1,[r15+4]
!   Call the function
	mov	86,r13		! source line 86
	mov	"\0\0CA",r10
	call	_P_UserSystem_StrCmp
!   Retrieve Result: targetName=_temp_302  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-404]
!   if intIsZero (_temp_302) then goto _Label_300
	load	[r14+-404],r1
	cmp	r1,r0
	be	_Label_300
	jmp	_Label_301
_Label_300:
! THEN...
	mov	87,r13		! source line 87
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_305 = _StringConst_18
	set	_StringConst_18,r1
	store	r1,[r14+-392]
!   Prepare Argument: offset=8  value=_temp_305  sizeInBytes=4
	load	[r14+-392],r1
	store	r1,[r15+0]
!   Call the function
	mov	87,r13		! source line 87
	mov	"\0\0CE",r10
	call	print
	jmp	_Label_306
_Label_301:
! ELSE...
	mov	89,r13		! source line 89
	mov	"\0\0EL",r10
! CALL STATEMENT...
!   _temp_307 = _StringConst_19
	set	_StringConst_19,r1
	store	r1,[r14+-388]
!   Prepare Argument: offset=8  value=_temp_307  sizeInBytes=4
	load	[r14+-388],r1
	store	r1,[r15+0]
!   Call the function
	mov	89,r13		! source line 89
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_308 = _StringConst_20
	set	_StringConst_20,r1
	store	r1,[r14+-384]
!   Prepare Argument: offset=8  value=_temp_308  sizeInBytes=4
	load	[r14+-384],r1
	store	r1,[r15+0]
!   Call the function
	mov	90,r13		! source line 90
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_309 = &UserBuffer
	add	r14,-540,r1
	store	r1,[r14+-380]
!   Prepare Argument: offset=8  value=_temp_309  sizeInBytes=4
	load	[r14+-380],r1
	store	r1,[r15+0]
!   Call the function
	mov	91,r13		! source line 91
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_310 = _StringConst_21
	set	_StringConst_21,r1
	store	r1,[r14+-376]
!   Prepare Argument: offset=8  value=_temp_310  sizeInBytes=4
	load	[r14+-376],r1
	store	r1,[r15+0]
!   Call the function
	mov	92,r13		! source line 92
	mov	"\0\0CE",r10
	call	print
! END IF...
_Label_306:
! CALL STATEMENT...
!   _temp_311 = _StringConst_22
	set	_StringConst_22,r1
	store	r1,[r14+-372]
!   Prepare Argument: offset=8  value=_temp_311  sizeInBytes=4
	load	[r14+-372],r1
	store	r1,[r15+0]
!   Call the function
	mov	96,r13		! source line 96
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_312 = &UserBuffer
	add	r14,-540,r1
	store	r1,[r14+-368]
!   _temp_313 = _StringConst_23
	set	_StringConst_23,r1
	store	r1,[r14+-364]
!   Prepare Argument: offset=8  value=_temp_312  sizeInBytes=4
	load	[r14+-368],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=_temp_313  sizeInBytes=4
	load	[r14+-364],r1
	store	r1,[r15+4]
!   Call the function
	mov	97,r13		! source line 97
	mov	"\0\0CA",r10
	call	_P_UserSystem_StrCopy
! ASSIGNMENT STATEMENT...
	mov	98,r13		! source line 98
	mov	"\0\0AS",r10
!   _temp_315 = &UserBuffer
	add	r14,-540,r1
	store	r1,[r14+-356]
!   Move address of _temp_315 [2 ] into _temp_316
!     make sure index expr is >= 0
	mov	2,r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-356],r1
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
	store	r2,[r14+-352]
!   _temp_314 = _temp_316		(4 bytes)
	load	[r14+-352],r1
	store	r1,[r14+-360]
!   Prepare Argument: offset=8  value=fd  sizeInBytes=4
	load	[r14+-520],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=_temp_314  sizeInBytes=4
	load	[r14+-360],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=3  sizeInBytes=4
	mov	3,r1
	store	r1,[r15+8]
!   Call the function
	mov	98,r13		! source line 98
	mov	"\0\0CA",r10
	call	_P_UserSystem_Sys_Read
!   Retrieve Result: targetName=i  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-524]
! IF STATEMENT...
	mov	100,r13		! source line 100
	mov	"\0\0IF",r10
!   if i != 3 then goto _Label_318		(int)
	load	[r14+-524],r1
	mov	3,r2
	cmp	r1,r2
	bne	_Label_318
!	jmp	_Label_317
_Label_317:
! THEN...
	mov	101,r13		! source line 101
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_319 = _StringConst_24
	set	_StringConst_24,r1
	store	r1,[r14+-348]
!   Prepare Argument: offset=8  value=_temp_319  sizeInBytes=4
	load	[r14+-348],r1
	store	r1,[r15+0]
!   Call the function
	mov	101,r13		! source line 101
	mov	"\0\0CE",r10
	call	print
	jmp	_Label_320
_Label_318:
! ELSE...
	mov	103,r13		! source line 103
	mov	"\0\0EL",r10
! CALL STATEMENT...
!   _temp_321 = _StringConst_25
	set	_StringConst_25,r1
	store	r1,[r14+-344]
!   Prepare Argument: offset=8  value=_temp_321  sizeInBytes=4
	load	[r14+-344],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=i  sizeInBytes=4
	load	[r14+-524],r1
	store	r1,[r15+4]
!   Call the function
	mov	103,r13		! source line 103
	mov	"\0\0CA",r10
	call	_P_UserSystem_printIntVar
! END IF...
_Label_320:
! ASSIGNMENT STATEMENT...
	mov	105,r13		! source line 105
	mov	"\0\0AS",r10
!   _temp_323 = &UserBuffer
	add	r14,-540,r1
	store	r1,[r14+-336]
!   Move address of _temp_323 [7 ] into _temp_324
!     make sure index expr is >= 0
	mov	7,r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-336],r1
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
	store	r2,[r14+-332]
!   _temp_322 = _temp_324		(4 bytes)
	load	[r14+-332],r1
	store	r1,[r14+-340]
!   Prepare Argument: offset=8  value=fd  sizeInBytes=4
	load	[r14+-520],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=_temp_322  sizeInBytes=4
	load	[r14+-340],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=2  sizeInBytes=4
	mov	2,r1
	store	r1,[r15+8]
!   Call the function
	mov	105,r13		! source line 105
	mov	"\0\0CA",r10
	call	_P_UserSystem_Sys_Read
!   Retrieve Result: targetName=i  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-524]
! IF STATEMENT...
	mov	107,r13		! source line 107
	mov	"\0\0IF",r10
!   if i != 2 then goto _Label_326		(int)
	load	[r14+-524],r1
	mov	2,r2
	cmp	r1,r2
	bne	_Label_326
!	jmp	_Label_325
_Label_325:
! THEN...
	mov	108,r13		! source line 108
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_327 = _StringConst_26
	set	_StringConst_26,r1
	store	r1,[r14+-328]
!   Prepare Argument: offset=8  value=_temp_327  sizeInBytes=4
	load	[r14+-328],r1
	store	r1,[r15+0]
!   Call the function
	mov	108,r13		! source line 108
	mov	"\0\0CE",r10
	call	print
	jmp	_Label_328
_Label_326:
! ELSE...
	mov	110,r13		! source line 110
	mov	"\0\0EL",r10
! CALL STATEMENT...
!   _temp_329 = _StringConst_27
	set	_StringConst_27,r1
	store	r1,[r14+-324]
!   Prepare Argument: offset=8  value=_temp_329  sizeInBytes=4
	load	[r14+-324],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=i  sizeInBytes=4
	load	[r14+-524],r1
	store	r1,[r15+4]
!   Call the function
	mov	110,r13		! source line 110
	mov	"\0\0CA",r10
	call	_P_UserSystem_printIntVar
! END IF...
_Label_328:
! IF STATEMENT...
	mov	113,r13		! source line 113
	mov	"\0\0IF",r10
!   _temp_333 = &UserBuffer
	add	r14,-540,r1
	store	r1,[r14+-316]
!   _temp_334 = _StringConst_28
	set	_StringConst_28,r1
	store	r1,[r14+-312]
!   Prepare Argument: offset=8  value=_temp_333  sizeInBytes=4
	load	[r14+-316],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=_temp_334  sizeInBytes=4
	load	[r14+-312],r1
	store	r1,[r15+4]
!   Call the function
	mov	113,r13		! source line 113
	mov	"\0\0CA",r10
	call	_P_UserSystem_StrCmp
!   Retrieve Result: targetName=_temp_332  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-320]
!   if intIsZero (_temp_332) then goto _Label_330
	load	[r14+-320],r1
	cmp	r1,r0
	be	_Label_330
	jmp	_Label_331
_Label_330:
! THEN...
	mov	114,r13		! source line 114
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_335 = _StringConst_29
	set	_StringConst_29,r1
	store	r1,[r14+-308]
!   Prepare Argument: offset=8  value=_temp_335  sizeInBytes=4
	load	[r14+-308],r1
	store	r1,[r15+0]
!   Call the function
	mov	114,r13		! source line 114
	mov	"\0\0CE",r10
	call	print
	jmp	_Label_336
_Label_331:
! ELSE...
	mov	116,r13		! source line 116
	mov	"\0\0EL",r10
! CALL STATEMENT...
!   _temp_337 = _StringConst_30
	set	_StringConst_30,r1
	store	r1,[r14+-304]
!   Prepare Argument: offset=8  value=_temp_337  sizeInBytes=4
	load	[r14+-304],r1
	store	r1,[r15+0]
!   Call the function
	mov	116,r13		! source line 116
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_338 = _StringConst_31
	set	_StringConst_31,r1
	store	r1,[r14+-300]
!   Prepare Argument: offset=8  value=_temp_338  sizeInBytes=4
	load	[r14+-300],r1
	store	r1,[r15+0]
!   Call the function
	mov	117,r13		! source line 117
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_339 = &UserBuffer
	add	r14,-540,r1
	store	r1,[r14+-296]
!   Prepare Argument: offset=8  value=_temp_339  sizeInBytes=4
	load	[r14+-296],r1
	store	r1,[r15+0]
!   Call the function
	mov	118,r13		! source line 118
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_340 = _StringConst_32
	set	_StringConst_32,r1
	store	r1,[r14+-292]
!   Prepare Argument: offset=8  value=_temp_340  sizeInBytes=4
	load	[r14+-292],r1
	store	r1,[r15+0]
!   Call the function
	mov	119,r13		! source line 119
	mov	"\0\0CE",r10
	call	print
! END IF...
_Label_336:
! CALL STATEMENT...
!   _temp_341 = _StringConst_33
	set	_StringConst_33,r1
	store	r1,[r14+-288]
!   Prepare Argument: offset=8  value=_temp_341  sizeInBytes=4
	load	[r14+-288],r1
	store	r1,[r15+0]
!   Call the function
	mov	123,r13		! source line 123
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_342 = &UserBuffer
	add	r14,-540,r1
	store	r1,[r14+-284]
!   _temp_343 = _StringConst_34
	set	_StringConst_34,r1
	store	r1,[r14+-280]
!   Prepare Argument: offset=8  value=_temp_342  sizeInBytes=4
	load	[r14+-284],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=_temp_343  sizeInBytes=4
	load	[r14+-280],r1
	store	r1,[r15+4]
!   Call the function
	mov	124,r13		! source line 124
	mov	"\0\0CA",r10
	call	_P_UserSystem_StrCopy
! ASSIGNMENT STATEMENT...
	mov	125,r13		! source line 125
	mov	"\0\0AS",r10
!   _temp_345 = &UserBuffer
	add	r14,-540,r1
	store	r1,[r14+-272]
!   Move address of _temp_345 [2 ] into _temp_346
!     make sure index expr is >= 0
	mov	2,r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-272],r1
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
	store	r2,[r14+-268]
!   _temp_344 = _temp_346		(4 bytes)
	load	[r14+-268],r1
	store	r1,[r14+-276]
!   Prepare Argument: offset=8  value=fd  sizeInBytes=4
	load	[r14+-520],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=_temp_344  sizeInBytes=4
	load	[r14+-276],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=1  sizeInBytes=4
	mov	1,r1
	store	r1,[r15+8]
!   Call the function
	mov	125,r13		! source line 125
	mov	"\0\0CA",r10
	call	_P_UserSystem_Sys_Read
!   Retrieve Result: targetName=i  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-524]
! IF STATEMENT...
	mov	127,r13		! source line 127
	mov	"\0\0IF",r10
!   if i != 1 then goto _Label_348		(int)
	load	[r14+-524],r1
	mov	1,r2
	cmp	r1,r2
	bne	_Label_348
!	jmp	_Label_347
_Label_347:
! THEN...
	mov	128,r13		! source line 128
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_349 = _StringConst_35
	set	_StringConst_35,r1
	store	r1,[r14+-264]
!   Prepare Argument: offset=8  value=_temp_349  sizeInBytes=4
	load	[r14+-264],r1
	store	r1,[r15+0]
!   Call the function
	mov	128,r13		! source line 128
	mov	"\0\0CE",r10
	call	print
	jmp	_Label_350
_Label_348:
! ELSE...
	mov	130,r13		! source line 130
	mov	"\0\0EL",r10
! CALL STATEMENT...
!   _temp_351 = _StringConst_36
	set	_StringConst_36,r1
	store	r1,[r14+-260]
!   Prepare Argument: offset=8  value=_temp_351  sizeInBytes=4
	load	[r14+-260],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=i  sizeInBytes=4
	load	[r14+-524],r1
	store	r1,[r15+4]
!   Call the function
	mov	130,r13		! source line 130
	mov	"\0\0CA",r10
	call	_P_UserSystem_printIntVar
! END IF...
_Label_350:
! IF STATEMENT...
	mov	133,r13		! source line 133
	mov	"\0\0IF",r10
!   _temp_355 = &UserBuffer
	add	r14,-540,r1
	store	r1,[r14+-252]
!   _temp_356 = _StringConst_37
	set	_StringConst_37,r1
	store	r1,[r14+-248]
!   Prepare Argument: offset=8  value=_temp_355  sizeInBytes=4
	load	[r14+-252],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=_temp_356  sizeInBytes=4
	load	[r14+-248],r1
	store	r1,[r15+4]
!   Call the function
	mov	133,r13		! source line 133
	mov	"\0\0CA",r10
	call	_P_UserSystem_StrCmp
!   Retrieve Result: targetName=_temp_354  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-256]
!   if intIsZero (_temp_354) then goto _Label_352
	load	[r14+-256],r1
	cmp	r1,r0
	be	_Label_352
	jmp	_Label_353
_Label_352:
! THEN...
	mov	134,r13		! source line 134
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_357 = _StringConst_38
	set	_StringConst_38,r1
	store	r1,[r14+-244]
!   Prepare Argument: offset=8  value=_temp_357  sizeInBytes=4
	load	[r14+-244],r1
	store	r1,[r15+0]
!   Call the function
	mov	134,r13		! source line 134
	mov	"\0\0CE",r10
	call	print
	jmp	_Label_358
_Label_353:
! ELSE...
	mov	136,r13		! source line 136
	mov	"\0\0EL",r10
! CALL STATEMENT...
!   _temp_359 = _StringConst_39
	set	_StringConst_39,r1
	store	r1,[r14+-240]
!   Prepare Argument: offset=8  value=_temp_359  sizeInBytes=4
	load	[r14+-240],r1
	store	r1,[r15+0]
!   Call the function
	mov	136,r13		! source line 136
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_360 = _StringConst_40
	set	_StringConst_40,r1
	store	r1,[r14+-236]
!   Prepare Argument: offset=8  value=_temp_360  sizeInBytes=4
	load	[r14+-236],r1
	store	r1,[r15+0]
!   Call the function
	mov	137,r13		! source line 137
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_361 = &UserBuffer
	add	r14,-540,r1
	store	r1,[r14+-232]
!   Prepare Argument: offset=8  value=_temp_361  sizeInBytes=4
	load	[r14+-232],r1
	store	r1,[r15+0]
!   Call the function
	mov	138,r13		! source line 138
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_362 = _StringConst_41
	set	_StringConst_41,r1
	store	r1,[r14+-228]
!   Prepare Argument: offset=8  value=_temp_362  sizeInBytes=4
	load	[r14+-228],r1
	store	r1,[r15+0]
!   Call the function
	mov	139,r13		! source line 139
	mov	"\0\0CE",r10
	call	print
! END IF...
_Label_358:
! CALL STATEMENT...
!   _temp_363 = _StringConst_42
	set	_StringConst_42,r1
	store	r1,[r14+-224]
!   Prepare Argument: offset=8  value=_temp_363  sizeInBytes=4
	load	[r14+-224],r1
	store	r1,[r15+0]
!   Call the function
	mov	143,r13		! source line 143
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_364 = &UserBuffer
	add	r14,-540,r1
	store	r1,[r14+-220]
!   _temp_365 = _StringConst_43
	set	_StringConst_43,r1
	store	r1,[r14+-216]
!   Prepare Argument: offset=8  value=_temp_364  sizeInBytes=4
	load	[r14+-220],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=_temp_365  sizeInBytes=4
	load	[r14+-216],r1
	store	r1,[r15+4]
!   Call the function
	mov	144,r13		! source line 144
	mov	"\0\0CA",r10
	call	_P_UserSystem_StrCopy
! ASSIGNMENT STATEMENT...
	mov	145,r13		! source line 145
	mov	"\0\0AS",r10
!   _temp_367 = &UserBuffer
	add	r14,-540,r1
	store	r1,[r14+-208]
!   Move address of _temp_367 [2 ] into _temp_368
!     make sure index expr is >= 0
	mov	2,r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-208],r1
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
	store	r2,[r14+-204]
!   _temp_366 = _temp_368		(4 bytes)
	load	[r14+-204],r1
	store	r1,[r14+-212]
!   Prepare Argument: offset=8  value=fd  sizeInBytes=4
	load	[r14+-520],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=_temp_366  sizeInBytes=4
	load	[r14+-212],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=1  sizeInBytes=4
	mov	1,r1
	store	r1,[r15+8]
!   Call the function
	mov	145,r13		! source line 145
	mov	"\0\0CA",r10
	call	_P_UserSystem_Sys_Read
!   Retrieve Result: targetName=i  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-524]
! IF STATEMENT...
	mov	147,r13		! source line 147
	mov	"\0\0IF",r10
!   if i != 1 then goto _Label_370		(int)
	load	[r14+-524],r1
	mov	1,r2
	cmp	r1,r2
	bne	_Label_370
!	jmp	_Label_369
_Label_369:
! THEN...
	mov	148,r13		! source line 148
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_371 = _StringConst_44
	set	_StringConst_44,r1
	store	r1,[r14+-200]
!   Prepare Argument: offset=8  value=_temp_371  sizeInBytes=4
	load	[r14+-200],r1
	store	r1,[r15+0]
!   Call the function
	mov	148,r13		! source line 148
	mov	"\0\0CE",r10
	call	print
	jmp	_Label_372
_Label_370:
! ELSE...
	mov	150,r13		! source line 150
	mov	"\0\0EL",r10
! CALL STATEMENT...
!   _temp_373 = _StringConst_45
	set	_StringConst_45,r1
	store	r1,[r14+-196]
!   Prepare Argument: offset=8  value=_temp_373  sizeInBytes=4
	load	[r14+-196],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=i  sizeInBytes=4
	load	[r14+-524],r1
	store	r1,[r15+4]
!   Call the function
	mov	150,r13		! source line 150
	mov	"\0\0CA",r10
	call	_P_UserSystem_printIntVar
! END IF...
_Label_372:
! IF STATEMENT...
	mov	153,r13		! source line 153
	mov	"\0\0IF",r10
!   _temp_377 = &UserBuffer
	add	r14,-540,r1
	store	r1,[r14+-188]
!   _temp_378 = _StringConst_46
	set	_StringConst_46,r1
	store	r1,[r14+-184]
!   Prepare Argument: offset=8  value=_temp_377  sizeInBytes=4
	load	[r14+-188],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=_temp_378  sizeInBytes=4
	load	[r14+-184],r1
	store	r1,[r15+4]
!   Call the function
	mov	153,r13		! source line 153
	mov	"\0\0CA",r10
	call	_P_UserSystem_StrCmp
!   Retrieve Result: targetName=_temp_376  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-192]
!   if intIsZero (_temp_376) then goto _Label_374
	load	[r14+-192],r1
	cmp	r1,r0
	be	_Label_374
	jmp	_Label_375
_Label_374:
! THEN...
	mov	154,r13		! source line 154
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_379 = _StringConst_47
	set	_StringConst_47,r1
	store	r1,[r14+-180]
!   Prepare Argument: offset=8  value=_temp_379  sizeInBytes=4
	load	[r14+-180],r1
	store	r1,[r15+0]
!   Call the function
	mov	154,r13		! source line 154
	mov	"\0\0CE",r10
	call	print
	jmp	_Label_380
_Label_375:
! ELSE...
	mov	155,r13		! source line 155
	mov	"\0\0EL",r10
! IF STATEMENT...
	mov	155,r13		! source line 155
	mov	"\0\0IF",r10
!   _temp_384 = &UserBuffer
	add	r14,-540,r1
	store	r1,[r14+-172]
!   _temp_385 = _StringConst_48
	set	_StringConst_48,r1
	store	r1,[r14+-168]
!   Prepare Argument: offset=8  value=_temp_384  sizeInBytes=4
	load	[r14+-172],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=_temp_385  sizeInBytes=4
	load	[r14+-168],r1
	store	r1,[r15+4]
!   Call the function
	mov	155,r13		! source line 155
	mov	"\0\0CA",r10
	call	_P_UserSystem_StrCmp
!   Retrieve Result: targetName=_temp_383  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-176]
!   if intIsZero (_temp_383) then goto _Label_381
	load	[r14+-176],r1
	cmp	r1,r0
	be	_Label_381
	jmp	_Label_382
_Label_381:
! THEN...
	mov	156,r13		! source line 156
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_386 = _StringConst_49
	set	_StringConst_49,r1
	store	r1,[r14+-164]
!   Prepare Argument: offset=8  value=_temp_386  sizeInBytes=4
	load	[r14+-164],r1
	store	r1,[r15+0]
!   Call the function
	mov	156,r13		! source line 156
	mov	"\0\0CE",r10
	call	print
	jmp	_Label_387
_Label_382:
! ELSE...
	mov	158,r13		! source line 158
	mov	"\0\0EL",r10
! CALL STATEMENT...
!   _temp_388 = _StringConst_50
	set	_StringConst_50,r1
	store	r1,[r14+-160]
!   Prepare Argument: offset=8  value=_temp_388  sizeInBytes=4
	load	[r14+-160],r1
	store	r1,[r15+0]
!   Call the function
	mov	158,r13		! source line 158
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_389 = _StringConst_51
	set	_StringConst_51,r1
	store	r1,[r14+-156]
!   Prepare Argument: offset=8  value=_temp_389  sizeInBytes=4
	load	[r14+-156],r1
	store	r1,[r15+0]
!   Call the function
	mov	159,r13		! source line 159
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_390 = &UserBuffer
	add	r14,-540,r1
	store	r1,[r14+-152]
!   Prepare Argument: offset=8  value=_temp_390  sizeInBytes=4
	load	[r14+-152],r1
	store	r1,[r15+0]
!   Call the function
	mov	160,r13		! source line 160
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_391 = _StringConst_52
	set	_StringConst_52,r1
	store	r1,[r14+-148]
!   Prepare Argument: offset=8  value=_temp_391  sizeInBytes=4
	load	[r14+-148],r1
	store	r1,[r15+0]
!   Call the function
	mov	161,r13		! source line 161
	mov	"\0\0CE",r10
	call	print
! END IF...
_Label_387:
! END IF...
_Label_380:
! CALL STATEMENT...
!   _temp_392 = _StringConst_53
	set	_StringConst_53,r1
	store	r1,[r14+-144]
!   Prepare Argument: offset=8  value=_temp_392  sizeInBytes=4
	load	[r14+-144],r1
	store	r1,[r15+0]
!   Call the function
	mov	165,r13		! source line 165
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_393 = &UserBuffer
	add	r14,-540,r1
	store	r1,[r14+-140]
!   _temp_394 = _StringConst_54
	set	_StringConst_54,r1
	store	r1,[r14+-136]
!   Prepare Argument: offset=8  value=_temp_393  sizeInBytes=4
	load	[r14+-140],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=_temp_394  sizeInBytes=4
	load	[r14+-136],r1
	store	r1,[r15+4]
!   Call the function
	mov	166,r13		! source line 166
	mov	"\0\0CA",r10
	call	_P_UserSystem_StrCopy
! ASSIGNMENT STATEMENT...
	mov	167,r13		! source line 167
	mov	"\0\0AS",r10
!   _temp_396 = &UserBuffer
	add	r14,-540,r1
	store	r1,[r14+-128]
!   Move address of _temp_396 [2 ] into _temp_397
!     make sure index expr is >= 0
	mov	2,r2
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
	set	1,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-124]
!   _temp_395 = _temp_397		(4 bytes)
	load	[r14+-124],r1
	store	r1,[r14+-132]
!   Prepare Argument: offset=8  value=fd  sizeInBytes=4
	load	[r14+-520],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=_temp_395  sizeInBytes=4
	load	[r14+-132],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=1  sizeInBytes=4
	mov	1,r1
	store	r1,[r15+8]
!   Call the function
	mov	167,r13		! source line 167
	mov	"\0\0CA",r10
	call	_P_UserSystem_Sys_Read
!   Retrieve Result: targetName=i  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-524]
! IF STATEMENT...
	mov	169,r13		! source line 169
	mov	"\0\0IF",r10
!   if i != 1 then goto _Label_399		(int)
	load	[r14+-524],r1
	mov	1,r2
	cmp	r1,r2
	bne	_Label_399
!	jmp	_Label_398
_Label_398:
! THEN...
	mov	170,r13		! source line 170
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_400 = _StringConst_55
	set	_StringConst_55,r1
	store	r1,[r14+-120]
!   Prepare Argument: offset=8  value=_temp_400  sizeInBytes=4
	load	[r14+-120],r1
	store	r1,[r15+0]
!   Call the function
	mov	170,r13		! source line 170
	mov	"\0\0CE",r10
	call	print
	jmp	_Label_401
_Label_399:
! ELSE...
	mov	172,r13		! source line 172
	mov	"\0\0EL",r10
! CALL STATEMENT...
!   _temp_402 = _StringConst_56
	set	_StringConst_56,r1
	store	r1,[r14+-116]
!   Prepare Argument: offset=8  value=_temp_402  sizeInBytes=4
	load	[r14+-116],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=i  sizeInBytes=4
	load	[r14+-524],r1
	store	r1,[r15+4]
!   Call the function
	mov	172,r13		! source line 172
	mov	"\0\0CA",r10
	call	_P_UserSystem_printIntVar
! END IF...
_Label_401:
! IF STATEMENT...
	mov	175,r13		! source line 175
	mov	"\0\0IF",r10
!   _temp_406 = &UserBuffer
	add	r14,-540,r1
	store	r1,[r14+-108]
!   _temp_407 = _StringConst_57
	set	_StringConst_57,r1
	store	r1,[r14+-104]
!   Prepare Argument: offset=8  value=_temp_406  sizeInBytes=4
	load	[r14+-108],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=_temp_407  sizeInBytes=4
	load	[r14+-104],r1
	store	r1,[r15+4]
!   Call the function
	mov	175,r13		! source line 175
	mov	"\0\0CA",r10
	call	_P_UserSystem_StrCmp
!   Retrieve Result: targetName=_temp_405  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-112]
!   if intIsZero (_temp_405) then goto _Label_403
	load	[r14+-112],r1
	cmp	r1,r0
	be	_Label_403
	jmp	_Label_404
_Label_403:
! THEN...
	mov	176,r13		! source line 176
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_408 = _StringConst_58
	set	_StringConst_58,r1
	store	r1,[r14+-100]
!   Prepare Argument: offset=8  value=_temp_408  sizeInBytes=4
	load	[r14+-100],r1
	store	r1,[r15+0]
!   Call the function
	mov	176,r13		! source line 176
	mov	"\0\0CE",r10
	call	print
	jmp	_Label_409
_Label_404:
! ELSE...
	mov	178,r13		! source line 178
	mov	"\0\0EL",r10
! CALL STATEMENT...
!   _temp_410 = _StringConst_59
	set	_StringConst_59,r1
	store	r1,[r14+-96]
!   Prepare Argument: offset=8  value=_temp_410  sizeInBytes=4
	load	[r14+-96],r1
	store	r1,[r15+0]
!   Call the function
	mov	178,r13		! source line 178
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_411 = _StringConst_60
	set	_StringConst_60,r1
	store	r1,[r14+-92]
!   Prepare Argument: offset=8  value=_temp_411  sizeInBytes=4
	load	[r14+-92],r1
	store	r1,[r15+0]
!   Call the function
	mov	179,r13		! source line 179
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_412 = &UserBuffer
	add	r14,-540,r1
	store	r1,[r14+-88]
!   Prepare Argument: offset=8  value=_temp_412  sizeInBytes=4
	load	[r14+-88],r1
	store	r1,[r15+0]
!   Call the function
	mov	180,r13		! source line 180
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_413 = _StringConst_61
	set	_StringConst_61,r1
	store	r1,[r14+-84]
!   Prepare Argument: offset=8  value=_temp_413  sizeInBytes=4
	load	[r14+-84],r1
	store	r1,[r15+0]
!   Call the function
	mov	181,r13		! source line 181
	mov	"\0\0CE",r10
	call	print
! END IF...
_Label_409:
! CALL STATEMENT...
!   _temp_414 = _StringConst_62
	set	_StringConst_62,r1
	store	r1,[r14+-80]
!   Prepare Argument: offset=8  value=_temp_414  sizeInBytes=4
	load	[r14+-80],r1
	store	r1,[r15+0]
!   Call the function
	mov	185,r13		! source line 185
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_415 = &UserBuffer
	add	r14,-540,r1
	store	r1,[r14+-76]
!   _temp_416 = _StringConst_63
	set	_StringConst_63,r1
	store	r1,[r14+-72]
!   Prepare Argument: offset=8  value=_temp_415  sizeInBytes=4
	load	[r14+-76],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=_temp_416  sizeInBytes=4
	load	[r14+-72],r1
	store	r1,[r15+4]
!   Call the function
	mov	186,r13		! source line 186
	mov	"\0\0CA",r10
	call	_P_UserSystem_StrCopy
! ASSIGNMENT STATEMENT...
	mov	187,r13		! source line 187
	mov	"\0\0AS",r10
!   _temp_418 = &UserBuffer
	add	r14,-540,r1
	store	r1,[r14+-64]
!   Move address of _temp_418 [2 ] into _temp_419
!     make sure index expr is >= 0
	mov	2,r2
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
	set	1,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-60]
!   _temp_417 = _temp_419		(4 bytes)
	load	[r14+-60],r1
	store	r1,[r14+-68]
!   Prepare Argument: offset=8  value=fd  sizeInBytes=4
	load	[r14+-520],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=_temp_417  sizeInBytes=4
	load	[r14+-68],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=5  sizeInBytes=4
	mov	5,r1
	store	r1,[r15+8]
!   Call the function
	mov	187,r13		! source line 187
	mov	"\0\0CA",r10
	call	_P_UserSystem_Sys_Read
!   Retrieve Result: targetName=i  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-524]
! IF STATEMENT...
	mov	189,r13		! source line 189
	mov	"\0\0IF",r10
!   if intIsZero (i) then goto _Label_420
	load	[r14+-524],r1
	cmp	r1,r0
	be	_Label_420
	jmp	_Label_421
_Label_420:
! THEN...
	mov	190,r13		! source line 190
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_422 = _StringConst_64
	set	_StringConst_64,r1
	store	r1,[r14+-56]
!   Prepare Argument: offset=8  value=_temp_422  sizeInBytes=4
	load	[r14+-56],r1
	store	r1,[r15+0]
!   Call the function
	mov	190,r13		! source line 190
	mov	"\0\0CE",r10
	call	print
	jmp	_Label_423
_Label_421:
! ELSE...
	mov	192,r13		! source line 192
	mov	"\0\0EL",r10
! CALL STATEMENT...
!   _temp_424 = _StringConst_65
	set	_StringConst_65,r1
	store	r1,[r14+-52]
!   Prepare Argument: offset=8  value=_temp_424  sizeInBytes=4
	load	[r14+-52],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=i  sizeInBytes=4
	load	[r14+-524],r1
	store	r1,[r15+4]
!   Call the function
	mov	192,r13		! source line 192
	mov	"\0\0CA",r10
	call	_P_UserSystem_printIntVar
! END IF...
_Label_423:
! IF STATEMENT...
	mov	195,r13		! source line 195
	mov	"\0\0IF",r10
!   _temp_428 = &UserBuffer
	add	r14,-540,r1
	store	r1,[r14+-44]
!   _temp_429 = _StringConst_66
	set	_StringConst_66,r1
	store	r1,[r14+-40]
!   Prepare Argument: offset=8  value=_temp_428  sizeInBytes=4
	load	[r14+-44],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=_temp_429  sizeInBytes=4
	load	[r14+-40],r1
	store	r1,[r15+4]
!   Call the function
	mov	195,r13		! source line 195
	mov	"\0\0CA",r10
	call	_P_UserSystem_StrCmp
!   Retrieve Result: targetName=_temp_427  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-48]
!   if intIsZero (_temp_427) then goto _Label_425
	load	[r14+-48],r1
	cmp	r1,r0
	be	_Label_425
	jmp	_Label_426
_Label_425:
! THEN...
	mov	196,r13		! source line 196
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_430 = _StringConst_67
	set	_StringConst_67,r1
	store	r1,[r14+-36]
!   Prepare Argument: offset=8  value=_temp_430  sizeInBytes=4
	load	[r14+-36],r1
	store	r1,[r15+0]
!   Call the function
	mov	196,r13		! source line 196
	mov	"\0\0CE",r10
	call	print
	jmp	_Label_431
_Label_426:
! ELSE...
	mov	198,r13		! source line 198
	mov	"\0\0EL",r10
! CALL STATEMENT...
!   _temp_432 = _StringConst_68
	set	_StringConst_68,r1
	store	r1,[r14+-32]
!   Prepare Argument: offset=8  value=_temp_432  sizeInBytes=4
	load	[r14+-32],r1
	store	r1,[r15+0]
!   Call the function
	mov	198,r13		! source line 198
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_433 = _StringConst_69
	set	_StringConst_69,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=8  value=_temp_433  sizeInBytes=4
	load	[r14+-28],r1
	store	r1,[r15+0]
!   Call the function
	mov	199,r13		! source line 199
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_434 = &UserBuffer
	add	r14,-540,r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=8  value=_temp_434  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+0]
!   Call the function
	mov	200,r13		! source line 200
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_435 = _StringConst_70
	set	_StringConst_70,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_435  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   Call the function
	mov	201,r13		! source line 201
	mov	"\0\0CE",r10
	call	print
! END IF...
_Label_431:
! CALL STATEMENT...
!   _temp_436 = _StringConst_71
	set	_StringConst_71,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_436  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+0]
!   Call the function
	mov	204,r13		! source line 204
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=fd  sizeInBytes=4
	load	[r14+-520],r1
	store	r1,[r15+0]
!   Call the function
	mov	205,r13		! source line 205
	mov	"\0\0CA",r10
	call	_P_UserSystem_Sys_Close
! RETURN STATEMENT...
	mov	205,r13		! source line 205
	mov	"\0\0RE",r10
	add	r15,548,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__function_253_BasicSerialTest:
	.word	_sourceFileName
	.word	_Label_437
	.word	0		! total size of parameters
	.word	544		! frame size = 544
	.word	_Label_438
	.word	-16
	.word	4
	.word	_Label_439
	.word	-20
	.word	4
	.word	_Label_440
	.word	-24
	.word	4
	.word	_Label_441
	.word	-28
	.word	4
	.word	_Label_442
	.word	-32
	.word	4
	.word	_Label_443
	.word	-36
	.word	4
	.word	_Label_444
	.word	-40
	.word	4
	.word	_Label_445
	.word	-44
	.word	4
	.word	_Label_446
	.word	-48
	.word	4
	.word	_Label_447
	.word	-52
	.word	4
	.word	_Label_448
	.word	-56
	.word	4
	.word	_Label_449
	.word	-60
	.word	4
	.word	_Label_450
	.word	-64
	.word	4
	.word	_Label_451
	.word	-68
	.word	4
	.word	_Label_452
	.word	-72
	.word	4
	.word	_Label_453
	.word	-76
	.word	4
	.word	_Label_454
	.word	-80
	.word	4
	.word	_Label_455
	.word	-84
	.word	4
	.word	_Label_456
	.word	-88
	.word	4
	.word	_Label_457
	.word	-92
	.word	4
	.word	_Label_458
	.word	-96
	.word	4
	.word	_Label_459
	.word	-100
	.word	4
	.word	_Label_460
	.word	-104
	.word	4
	.word	_Label_461
	.word	-108
	.word	4
	.word	_Label_462
	.word	-112
	.word	4
	.word	_Label_463
	.word	-116
	.word	4
	.word	_Label_464
	.word	-120
	.word	4
	.word	_Label_465
	.word	-124
	.word	4
	.word	_Label_466
	.word	-128
	.word	4
	.word	_Label_467
	.word	-132
	.word	4
	.word	_Label_468
	.word	-136
	.word	4
	.word	_Label_469
	.word	-140
	.word	4
	.word	_Label_470
	.word	-144
	.word	4
	.word	_Label_471
	.word	-148
	.word	4
	.word	_Label_472
	.word	-152
	.word	4
	.word	_Label_473
	.word	-156
	.word	4
	.word	_Label_474
	.word	-160
	.word	4
	.word	_Label_475
	.word	-164
	.word	4
	.word	_Label_476
	.word	-168
	.word	4
	.word	_Label_477
	.word	-172
	.word	4
	.word	_Label_478
	.word	-176
	.word	4
	.word	_Label_479
	.word	-180
	.word	4
	.word	_Label_480
	.word	-184
	.word	4
	.word	_Label_481
	.word	-188
	.word	4
	.word	_Label_482
	.word	-192
	.word	4
	.word	_Label_483
	.word	-196
	.word	4
	.word	_Label_484
	.word	-200
	.word	4
	.word	_Label_485
	.word	-204
	.word	4
	.word	_Label_486
	.word	-208
	.word	4
	.word	_Label_487
	.word	-212
	.word	4
	.word	_Label_488
	.word	-216
	.word	4
	.word	_Label_489
	.word	-220
	.word	4
	.word	_Label_490
	.word	-224
	.word	4
	.word	_Label_491
	.word	-228
	.word	4
	.word	_Label_492
	.word	-232
	.word	4
	.word	_Label_493
	.word	-236
	.word	4
	.word	_Label_494
	.word	-240
	.word	4
	.word	_Label_495
	.word	-244
	.word	4
	.word	_Label_496
	.word	-248
	.word	4
	.word	_Label_497
	.word	-252
	.word	4
	.word	_Label_498
	.word	-256
	.word	4
	.word	_Label_499
	.word	-260
	.word	4
	.word	_Label_500
	.word	-264
	.word	4
	.word	_Label_501
	.word	-268
	.word	4
	.word	_Label_502
	.word	-272
	.word	4
	.word	_Label_503
	.word	-276
	.word	4
	.word	_Label_504
	.word	-280
	.word	4
	.word	_Label_505
	.word	-284
	.word	4
	.word	_Label_506
	.word	-288
	.word	4
	.word	_Label_507
	.word	-292
	.word	4
	.word	_Label_508
	.word	-296
	.word	4
	.word	_Label_509
	.word	-300
	.word	4
	.word	_Label_510
	.word	-304
	.word	4
	.word	_Label_511
	.word	-308
	.word	4
	.word	_Label_512
	.word	-312
	.word	4
	.word	_Label_513
	.word	-316
	.word	4
	.word	_Label_514
	.word	-320
	.word	4
	.word	_Label_515
	.word	-324
	.word	4
	.word	_Label_516
	.word	-328
	.word	4
	.word	_Label_517
	.word	-332
	.word	4
	.word	_Label_518
	.word	-336
	.word	4
	.word	_Label_519
	.word	-340
	.word	4
	.word	_Label_520
	.word	-344
	.word	4
	.word	_Label_521
	.word	-348
	.word	4
	.word	_Label_522
	.word	-352
	.word	4
	.word	_Label_523
	.word	-356
	.word	4
	.word	_Label_524
	.word	-360
	.word	4
	.word	_Label_525
	.word	-364
	.word	4
	.word	_Label_526
	.word	-368
	.word	4
	.word	_Label_527
	.word	-372
	.word	4
	.word	_Label_528
	.word	-376
	.word	4
	.word	_Label_529
	.word	-380
	.word	4
	.word	_Label_530
	.word	-384
	.word	4
	.word	_Label_531
	.word	-388
	.word	4
	.word	_Label_532
	.word	-392
	.word	4
	.word	_Label_533
	.word	-396
	.word	4
	.word	_Label_534
	.word	-400
	.word	4
	.word	_Label_535
	.word	-404
	.word	4
	.word	_Label_536
	.word	-408
	.word	4
	.word	_Label_537
	.word	-412
	.word	4
	.word	_Label_538
	.word	-416
	.word	4
	.word	_Label_539
	.word	-420
	.word	4
	.word	_Label_540
	.word	-424
	.word	4
	.word	_Label_541
	.word	-428
	.word	4
	.word	_Label_542
	.word	-432
	.word	4
	.word	_Label_543
	.word	-436
	.word	4
	.word	_Label_544
	.word	-440
	.word	4
	.word	_Label_545
	.word	-444
	.word	4
	.word	_Label_546
	.word	-448
	.word	4
	.word	_Label_547
	.word	-452
	.word	4
	.word	_Label_548
	.word	-9
	.word	1
	.word	_Label_549
	.word	-456
	.word	4
	.word	_Label_550
	.word	-10
	.word	1
	.word	_Label_551
	.word	-460
	.word	4
	.word	_Label_552
	.word	-464
	.word	4
	.word	_Label_553
	.word	-468
	.word	4
	.word	_Label_554
	.word	-472
	.word	4
	.word	_Label_555
	.word	-476
	.word	4
	.word	_Label_556
	.word	-480
	.word	4
	.word	_Label_557
	.word	-484
	.word	4
	.word	_Label_558
	.word	-488
	.word	4
	.word	_Label_559
	.word	-492
	.word	4
	.word	_Label_560
	.word	-496
	.word	4
	.word	_Label_561
	.word	-500
	.word	4
	.word	_Label_562
	.word	-516
	.word	16
	.word	_Label_563
	.word	-520
	.word	4
	.word	_Label_564
	.word	-524
	.word	4
	.word	_Label_565
	.word	-11
	.word	1
	.word	_Label_566
	.word	-540
	.word	16
	.word	0
_Label_437:
	.ascii	"BasicSerialTest\0"
	.align
_Label_438:
	.byte	'?'
	.ascii	"_temp_436\0"
	.align
_Label_439:
	.byte	'?'
	.ascii	"_temp_435\0"
	.align
_Label_440:
	.byte	'?'
	.ascii	"_temp_434\0"
	.align
_Label_441:
	.byte	'?'
	.ascii	"_temp_433\0"
	.align
_Label_442:
	.byte	'?'
	.ascii	"_temp_432\0"
	.align
_Label_443:
	.byte	'?'
	.ascii	"_temp_430\0"
	.align
_Label_444:
	.byte	'?'
	.ascii	"_temp_429\0"
	.align
_Label_445:
	.byte	'?'
	.ascii	"_temp_428\0"
	.align
_Label_446:
	.byte	'?'
	.ascii	"_temp_427\0"
	.align
_Label_447:
	.byte	'?'
	.ascii	"_temp_424\0"
	.align
_Label_448:
	.byte	'?'
	.ascii	"_temp_422\0"
	.align
_Label_449:
	.byte	'?'
	.ascii	"_temp_419\0"
	.align
_Label_450:
	.byte	'?'
	.ascii	"_temp_418\0"
	.align
_Label_451:
	.byte	'?'
	.ascii	"_temp_417\0"
	.align
_Label_452:
	.byte	'?'
	.ascii	"_temp_416\0"
	.align
_Label_453:
	.byte	'?'
	.ascii	"_temp_415\0"
	.align
_Label_454:
	.byte	'?'
	.ascii	"_temp_414\0"
	.align
_Label_455:
	.byte	'?'
	.ascii	"_temp_413\0"
	.align
_Label_456:
	.byte	'?'
	.ascii	"_temp_412\0"
	.align
_Label_457:
	.byte	'?'
	.ascii	"_temp_411\0"
	.align
_Label_458:
	.byte	'?'
	.ascii	"_temp_410\0"
	.align
_Label_459:
	.byte	'?'
	.ascii	"_temp_408\0"
	.align
_Label_460:
	.byte	'?'
	.ascii	"_temp_407\0"
	.align
_Label_461:
	.byte	'?'
	.ascii	"_temp_406\0"
	.align
_Label_462:
	.byte	'?'
	.ascii	"_temp_405\0"
	.align
_Label_463:
	.byte	'?'
	.ascii	"_temp_402\0"
	.align
_Label_464:
	.byte	'?'
	.ascii	"_temp_400\0"
	.align
_Label_465:
	.byte	'?'
	.ascii	"_temp_397\0"
	.align
_Label_466:
	.byte	'?'
	.ascii	"_temp_396\0"
	.align
_Label_467:
	.byte	'?'
	.ascii	"_temp_395\0"
	.align
_Label_468:
	.byte	'?'
	.ascii	"_temp_394\0"
	.align
_Label_469:
	.byte	'?'
	.ascii	"_temp_393\0"
	.align
_Label_470:
	.byte	'?'
	.ascii	"_temp_392\0"
	.align
_Label_471:
	.byte	'?'
	.ascii	"_temp_391\0"
	.align
_Label_472:
	.byte	'?'
	.ascii	"_temp_390\0"
	.align
_Label_473:
	.byte	'?'
	.ascii	"_temp_389\0"
	.align
_Label_474:
	.byte	'?'
	.ascii	"_temp_388\0"
	.align
_Label_475:
	.byte	'?'
	.ascii	"_temp_386\0"
	.align
_Label_476:
	.byte	'?'
	.ascii	"_temp_385\0"
	.align
_Label_477:
	.byte	'?'
	.ascii	"_temp_384\0"
	.align
_Label_478:
	.byte	'?'
	.ascii	"_temp_383\0"
	.align
_Label_479:
	.byte	'?'
	.ascii	"_temp_379\0"
	.align
_Label_480:
	.byte	'?'
	.ascii	"_temp_378\0"
	.align
_Label_481:
	.byte	'?'
	.ascii	"_temp_377\0"
	.align
_Label_482:
	.byte	'?'
	.ascii	"_temp_376\0"
	.align
_Label_483:
	.byte	'?'
	.ascii	"_temp_373\0"
	.align
_Label_484:
	.byte	'?'
	.ascii	"_temp_371\0"
	.align
_Label_485:
	.byte	'?'
	.ascii	"_temp_368\0"
	.align
_Label_486:
	.byte	'?'
	.ascii	"_temp_367\0"
	.align
_Label_487:
	.byte	'?'
	.ascii	"_temp_366\0"
	.align
_Label_488:
	.byte	'?'
	.ascii	"_temp_365\0"
	.align
_Label_489:
	.byte	'?'
	.ascii	"_temp_364\0"
	.align
_Label_490:
	.byte	'?'
	.ascii	"_temp_363\0"
	.align
_Label_491:
	.byte	'?'
	.ascii	"_temp_362\0"
	.align
_Label_492:
	.byte	'?'
	.ascii	"_temp_361\0"
	.align
_Label_493:
	.byte	'?'
	.ascii	"_temp_360\0"
	.align
_Label_494:
	.byte	'?'
	.ascii	"_temp_359\0"
	.align
_Label_495:
	.byte	'?'
	.ascii	"_temp_357\0"
	.align
_Label_496:
	.byte	'?'
	.ascii	"_temp_356\0"
	.align
_Label_497:
	.byte	'?'
	.ascii	"_temp_355\0"
	.align
_Label_498:
	.byte	'?'
	.ascii	"_temp_354\0"
	.align
_Label_499:
	.byte	'?'
	.ascii	"_temp_351\0"
	.align
_Label_500:
	.byte	'?'
	.ascii	"_temp_349\0"
	.align
_Label_501:
	.byte	'?'
	.ascii	"_temp_346\0"
	.align
_Label_502:
	.byte	'?'
	.ascii	"_temp_345\0"
	.align
_Label_503:
	.byte	'?'
	.ascii	"_temp_344\0"
	.align
_Label_504:
	.byte	'?'
	.ascii	"_temp_343\0"
	.align
_Label_505:
	.byte	'?'
	.ascii	"_temp_342\0"
	.align
_Label_506:
	.byte	'?'
	.ascii	"_temp_341\0"
	.align
_Label_507:
	.byte	'?'
	.ascii	"_temp_340\0"
	.align
_Label_508:
	.byte	'?'
	.ascii	"_temp_339\0"
	.align
_Label_509:
	.byte	'?'
	.ascii	"_temp_338\0"
	.align
_Label_510:
	.byte	'?'
	.ascii	"_temp_337\0"
	.align
_Label_511:
	.byte	'?'
	.ascii	"_temp_335\0"
	.align
_Label_512:
	.byte	'?'
	.ascii	"_temp_334\0"
	.align
_Label_513:
	.byte	'?'
	.ascii	"_temp_333\0"
	.align
_Label_514:
	.byte	'?'
	.ascii	"_temp_332\0"
	.align
_Label_515:
	.byte	'?'
	.ascii	"_temp_329\0"
	.align
_Label_516:
	.byte	'?'
	.ascii	"_temp_327\0"
	.align
_Label_517:
	.byte	'?'
	.ascii	"_temp_324\0"
	.align
_Label_518:
	.byte	'?'
	.ascii	"_temp_323\0"
	.align
_Label_519:
	.byte	'?'
	.ascii	"_temp_322\0"
	.align
_Label_520:
	.byte	'?'
	.ascii	"_temp_321\0"
	.align
_Label_521:
	.byte	'?'
	.ascii	"_temp_319\0"
	.align
_Label_522:
	.byte	'?'
	.ascii	"_temp_316\0"
	.align
_Label_523:
	.byte	'?'
	.ascii	"_temp_315\0"
	.align
_Label_524:
	.byte	'?'
	.ascii	"_temp_314\0"
	.align
_Label_525:
	.byte	'?'
	.ascii	"_temp_313\0"
	.align
_Label_526:
	.byte	'?'
	.ascii	"_temp_312\0"
	.align
_Label_527:
	.byte	'?'
	.ascii	"_temp_311\0"
	.align
_Label_528:
	.byte	'?'
	.ascii	"_temp_310\0"
	.align
_Label_529:
	.byte	'?'
	.ascii	"_temp_309\0"
	.align
_Label_530:
	.byte	'?'
	.ascii	"_temp_308\0"
	.align
_Label_531:
	.byte	'?'
	.ascii	"_temp_307\0"
	.align
_Label_532:
	.byte	'?'
	.ascii	"_temp_305\0"
	.align
_Label_533:
	.byte	'?'
	.ascii	"_temp_304\0"
	.align
_Label_534:
	.byte	'?'
	.ascii	"_temp_303\0"
	.align
_Label_535:
	.byte	'?'
	.ascii	"_temp_302\0"
	.align
_Label_536:
	.byte	'?'
	.ascii	"_temp_299\0"
	.align
_Label_537:
	.byte	'?'
	.ascii	"_temp_297\0"
	.align
_Label_538:
	.byte	'?'
	.ascii	"_temp_294\0"
	.align
_Label_539:
	.byte	'?'
	.ascii	"_temp_293\0"
	.align
_Label_540:
	.byte	'?'
	.ascii	"_temp_292\0"
	.align
_Label_541:
	.byte	'?'
	.ascii	"_temp_291\0"
	.align
_Label_542:
	.byte	'?'
	.ascii	"_temp_290\0"
	.align
_Label_543:
	.byte	'?'
	.ascii	"_temp_289\0"
	.align
_Label_544:
	.byte	'?'
	.ascii	"_temp_288\0"
	.align
_Label_545:
	.byte	'?'
	.ascii	"_temp_287\0"
	.align
_Label_546:
	.byte	'?'
	.ascii	"_temp_286\0"
	.align
_Label_547:
	.byte	'?'
	.ascii	"_temp_284\0"
	.align
_Label_548:
	.byte	'C'
	.ascii	"_temp_283\0"
	.align
_Label_549:
	.byte	'?'
	.ascii	"_temp_279\0"
	.align
_Label_550:
	.byte	'C'
	.ascii	"_temp_278\0"
	.align
_Label_551:
	.byte	'?'
	.ascii	"_temp_275\0"
	.align
_Label_552:
	.byte	'?'
	.ascii	"_temp_273\0"
	.align
_Label_553:
	.byte	'?'
	.ascii	"_temp_270\0"
	.align
_Label_554:
	.byte	'?'
	.ascii	"_temp_269\0"
	.align
_Label_555:
	.byte	'?'
	.ascii	"_temp_268\0"
	.align
_Label_556:
	.byte	'?'
	.ascii	"_temp_265\0"
	.align
_Label_557:
	.byte	'?'
	.ascii	"_temp_264\0"
	.align
_Label_558:
	.byte	'?'
	.ascii	"_temp_263\0"
	.align
_Label_559:
	.byte	'?'
	.ascii	"_temp_262\0"
	.align
_Label_560:
	.byte	'?'
	.ascii	"_temp_260\0"
	.align
_Label_561:
	.byte	'?'
	.ascii	"_temp_259\0"
	.align
_Label_562:
	.byte	'?'
	.ascii	"_temp_258\0"
	.align
_Label_563:
	.byte	'I'
	.ascii	"fd\0"
	.align
_Label_564:
	.byte	'I'
	.ascii	"i\0"
	.align
_Label_565:
	.byte	'C'
	.ascii	"ch\0"
	.align
_Label_566:
	.byte	'A'
	.ascii	"UserBuffer\0"
	.align
! 
! ===============  FUNCTION KeyTest  ===============
! 
_function_252_KeyTest:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__function_252_KeyTest,r1
	push	r1
	mov	27,r1
_Label_1280:
	push	r0
	sub	r1,1,r1
	bne	_Label_1280
	mov	211,r13		! source line 211
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   _temp_567 = _StringConst_72
	set	_StringConst_72,r1
	store	r1,[r14+-96]
!   Prepare Argument: offset=8  value=_temp_567  sizeInBytes=4
	load	[r14+-96],r1
	store	r1,[r15+0]
!   Call the function
	mov	220,r13		! source line 220
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_568 = _StringConst_73
	set	_StringConst_73,r1
	store	r1,[r14+-92]
!   Prepare Argument: offset=8  value=_temp_568  sizeInBytes=4
	load	[r14+-92],r1
	store	r1,[r15+0]
!   Call the function
	mov	221,r13		! source line 221
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_569 = _StringConst_74
	set	_StringConst_74,r1
	store	r1,[r14+-88]
!   Prepare Argument: offset=8  value=_temp_569  sizeInBytes=4
	load	[r14+-88],r1
	store	r1,[r15+0]
!   Call the function
	mov	222,r13		! source line 222
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_570 = _StringConst_75
	set	_StringConst_75,r1
	store	r1,[r14+-84]
!   Prepare Argument: offset=8  value=_temp_570  sizeInBytes=4
	load	[r14+-84],r1
	store	r1,[r15+0]
!   Call the function
	mov	223,r13		! source line 223
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_571 = _StringConst_76
	set	_StringConst_76,r1
	store	r1,[r14+-80]
!   Prepare Argument: offset=8  value=_temp_571  sizeInBytes=4
	load	[r14+-80],r1
	store	r1,[r15+0]
!   Call the function
	mov	224,r13		! source line 224
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_572 = _StringConst_77
	set	_StringConst_77,r1
	store	r1,[r14+-76]
!   Prepare Argument: offset=8  value=_temp_572  sizeInBytes=4
	load	[r14+-76],r1
	store	r1,[r15+0]
!   Call the function
	mov	225,r13		! source line 225
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_573 = _StringConst_78
	set	_StringConst_78,r1
	store	r1,[r14+-72]
!   Prepare Argument: offset=8  value=_temp_573  sizeInBytes=4
	load	[r14+-72],r1
	store	r1,[r15+0]
!   Call the function
	mov	226,r13		! source line 226
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_574 = _StringConst_79
	set	_StringConst_79,r1
	store	r1,[r14+-68]
!   Prepare Argument: offset=8  value=_temp_574  sizeInBytes=4
	load	[r14+-68],r1
	store	r1,[r15+0]
!   Call the function
	mov	227,r13		! source line 227
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_575 = _StringConst_80
	set	_StringConst_80,r1
	store	r1,[r14+-64]
!   Prepare Argument: offset=8  value=_temp_575  sizeInBytes=4
	load	[r14+-64],r1
	store	r1,[r15+0]
!   Call the function
	mov	228,r13		! source line 228
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_576 = _StringConst_81
	set	_StringConst_81,r1
	store	r1,[r14+-60]
!   Prepare Argument: offset=8  value=_temp_576  sizeInBytes=4
	load	[r14+-60],r1
	store	r1,[r15+0]
!   Call the function
	mov	229,r13		! source line 229
	mov	"\0\0CE",r10
	call	print
! ASSIGNMENT STATEMENT...
	mov	231,r13		! source line 231
	mov	"\0\0AS",r10
!   _temp_577 = _StringConst_82
	set	_StringConst_82,r1
	store	r1,[r14+-56]
!   Prepare Argument: offset=8  value=_temp_577  sizeInBytes=4
	load	[r14+-56],r1
	store	r1,[r15+0]
!   Call the function
	mov	231,r13		! source line 231
	mov	"\0\0CA",r10
	call	_P_UserSystem_Sys_Open
!   Retrieve Result: targetName=fd  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-100]
! IF STATEMENT...
	mov	232,r13		! source line 232
	mov	"\0\0IF",r10
!   if fd >= 0 then goto _Label_579		(int)
	load	[r14+-100],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_579
!	jmp	_Label_578
_Label_578:
! THEN...
	mov	233,r13		! source line 233
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_580 = _StringConst_83
	set	_StringConst_83,r1
	store	r1,[r14+-52]
!   Prepare Argument: offset=8  value=_temp_580  sizeInBytes=4
	load	[r14+-52],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=fd  sizeInBytes=4
	load	[r14+-100],r1
	store	r1,[r15+4]
!   Call the function
	mov	233,r13		! source line 233
	mov	"\0\0CA",r10
	call	_P_UserSystem_printIntVar
! END IF...
_Label_579:
! WHILE STATEMENT...
	mov	236,r13		! source line 236
	mov	"\0\0WH",r10
_Label_581:
!	jmp	_Label_582
_Label_582:
	mov	236,r13		! source line 236
	mov	"\0\0WB",r10
! ASSIGNMENT STATEMENT...
	mov	238,r13		! source line 238
	mov	"\0\0AS",r10
!   _temp_584 = &ch
	add	r14,-10,r1
	store	r1,[r14+-48]
!   Prepare Argument: offset=8  value=fd  sizeInBytes=4
	load	[r14+-100],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=_temp_584  sizeInBytes=4
	load	[r14+-48],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=1  sizeInBytes=4
	mov	1,r1
	store	r1,[r15+8]
!   Call the function
	mov	238,r13		! source line 238
	mov	"\0\0CA",r10
	call	_P_UserSystem_Sys_Read
!   Retrieve Result: targetName=i  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-104]
! IF STATEMENT...
	mov	239,r13		! source line 239
	mov	"\0\0IF",r10
!   if intIsZero (i) then goto _Label_585
	load	[r14+-104],r1
	cmp	r1,r0
	be	_Label_585
	jmp	_Label_586
_Label_585:
! THEN...
	mov	240,r13		! source line 240
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_587 = _StringConst_84
	set	_StringConst_84,r1
	store	r1,[r14+-44]
!   Prepare Argument: offset=8  value=_temp_587  sizeInBytes=4
	load	[r14+-44],r1
	store	r1,[r15+0]
!   Call the function
	mov	240,r13		! source line 240
	mov	"\0\0CE",r10
	call	print
	jmp	_Label_588
_Label_586:
! ELSE...
	mov	241,r13		! source line 241
	mov	"\0\0EL",r10
! IF STATEMENT...
	mov	241,r13		! source line 241
	mov	"\0\0IF",r10
!   if i == 1 then goto _Label_590		(int)
	load	[r14+-104],r1
	mov	1,r2
	cmp	r1,r2
	be	_Label_590
!	jmp	_Label_589
_Label_589:
! THEN...
	mov	242,r13		! source line 242
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_591 = _StringConst_85
	set	_StringConst_85,r1
	store	r1,[r14+-40]
!   Prepare Argument: offset=8  value=_temp_591  sizeInBytes=4
	load	[r14+-40],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=i  sizeInBytes=4
	load	[r14+-104],r1
	store	r1,[r15+4]
!   Call the function
	mov	242,r13		! source line 242
	mov	"\0\0CA",r10
	call	_P_UserSystem_printIntVar
	jmp	_Label_592
_Label_590:
! ELSE...
	mov	244,r13		! source line 244
	mov	"\0\0EL",r10
! CALL STATEMENT...
!   _temp_593 = _StringConst_86
	set	_StringConst_86,r1
	store	r1,[r14+-36]
!   Prepare Argument: offset=8  value=_temp_593  sizeInBytes=4
	load	[r14+-36],r1
	store	r1,[r15+0]
!   Call the function
	mov	244,r13		! source line 244
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_594 = charToInt (ch)
	loadb	[r14+-10],r1
	sll	r1,24,r1
	sra	r1,24,r1
	store	r1,[r14+-32]
!   Prepare Argument: offset=8  value=_temp_594  sizeInBytes=4
	load	[r14+-32],r1
	store	r1,[r15+0]
!   Call the function
	mov	245,r13		! source line 245
	mov	"\0\0CE",r10
	call	printHex
! CALL STATEMENT...
!   _temp_595 = _StringConst_87
	set	_StringConst_87,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=8  value=_temp_595  sizeInBytes=4
	load	[r14+-28],r1
	store	r1,[r15+0]
!   Call the function
	mov	246,r13		! source line 246
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_596 = charToInt (ch)
	loadb	[r14+-10],r1
	sll	r1,24,r1
	sra	r1,24,r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=8  value=_temp_596  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+0]
!   Call the function
	mov	247,r13		! source line 247
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   _temp_597 = _StringConst_88
	set	_StringConst_88,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_597  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   Call the function
	mov	248,r13		! source line 248
	mov	"\0\0CE",r10
	call	print
! END IF...
_Label_592:
! END IF...
_Label_588:
! IF STATEMENT...
	mov	253,r13		! source line 253
	mov	"\0\0IF",r10
!   _temp_600 = ch XOR 113		(bool)
	loadb	[r14+-10],r1
	mov	113,r2
	xor	r1,r2,r1
	storeb	r1,[r14+-9]
!   if _temp_600 then goto _Label_599 else goto _Label_598
	loadb	[r14+-9],r1
	cmp	r1,0
	be	_Label_598
	jmp	_Label_599
_Label_598:
! THEN...
	mov	254,r13		! source line 254
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_601 = _StringConst_89
	set	_StringConst_89,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_601  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+0]
!   Call the function
	mov	254,r13		! source line 254
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=fd  sizeInBytes=4
	load	[r14+-100],r1
	store	r1,[r15+0]
!   Call the function
	mov	255,r13		! source line 255
	mov	"\0\0CA",r10
	call	_P_UserSystem_Sys_Close
! RETURN STATEMENT...
	mov	256,r13		! source line 256
	mov	"\0\0RE",r10
	add	r15,112,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_599:
! END WHILE...
	jmp	_Label_581
_Label_583:
! 
! Routine Descriptor
! 
_RoutineDescriptor__function_252_KeyTest:
	.word	_sourceFileName
	.word	_Label_602
	.word	0		! total size of parameters
	.word	108		! frame size = 108
	.word	_Label_603
	.word	-16
	.word	4
	.word	_Label_604
	.word	-9
	.word	1
	.word	_Label_605
	.word	-20
	.word	4
	.word	_Label_606
	.word	-24
	.word	4
	.word	_Label_607
	.word	-28
	.word	4
	.word	_Label_608
	.word	-32
	.word	4
	.word	_Label_609
	.word	-36
	.word	4
	.word	_Label_610
	.word	-40
	.word	4
	.word	_Label_611
	.word	-44
	.word	4
	.word	_Label_612
	.word	-48
	.word	4
	.word	_Label_613
	.word	-52
	.word	4
	.word	_Label_614
	.word	-56
	.word	4
	.word	_Label_615
	.word	-60
	.word	4
	.word	_Label_616
	.word	-64
	.word	4
	.word	_Label_617
	.word	-68
	.word	4
	.word	_Label_618
	.word	-72
	.word	4
	.word	_Label_619
	.word	-76
	.word	4
	.word	_Label_620
	.word	-80
	.word	4
	.word	_Label_621
	.word	-84
	.word	4
	.word	_Label_622
	.word	-88
	.word	4
	.word	_Label_623
	.word	-92
	.word	4
	.word	_Label_624
	.word	-96
	.word	4
	.word	_Label_625
	.word	-100
	.word	4
	.word	_Label_626
	.word	-104
	.word	4
	.word	_Label_627
	.word	-10
	.word	1
	.word	0
_Label_602:
	.ascii	"KeyTest\0"
	.align
_Label_603:
	.byte	'?'
	.ascii	"_temp_601\0"
	.align
_Label_604:
	.byte	'C'
	.ascii	"_temp_600\0"
	.align
_Label_605:
	.byte	'?'
	.ascii	"_temp_597\0"
	.align
_Label_606:
	.byte	'?'
	.ascii	"_temp_596\0"
	.align
_Label_607:
	.byte	'?'
	.ascii	"_temp_595\0"
	.align
_Label_608:
	.byte	'?'
	.ascii	"_temp_594\0"
	.align
_Label_609:
	.byte	'?'
	.ascii	"_temp_593\0"
	.align
_Label_610:
	.byte	'?'
	.ascii	"_temp_591\0"
	.align
_Label_611:
	.byte	'?'
	.ascii	"_temp_587\0"
	.align
_Label_612:
	.byte	'?'
	.ascii	"_temp_584\0"
	.align
_Label_613:
	.byte	'?'
	.ascii	"_temp_580\0"
	.align
_Label_614:
	.byte	'?'
	.ascii	"_temp_577\0"
	.align
_Label_615:
	.byte	'?'
	.ascii	"_temp_576\0"
	.align
_Label_616:
	.byte	'?'
	.ascii	"_temp_575\0"
	.align
_Label_617:
	.byte	'?'
	.ascii	"_temp_574\0"
	.align
_Label_618:
	.byte	'?'
	.ascii	"_temp_573\0"
	.align
_Label_619:
	.byte	'?'
	.ascii	"_temp_572\0"
	.align
_Label_620:
	.byte	'?'
	.ascii	"_temp_571\0"
	.align
_Label_621:
	.byte	'?'
	.ascii	"_temp_570\0"
	.align
_Label_622:
	.byte	'?'
	.ascii	"_temp_569\0"
	.align
_Label_623:
	.byte	'?'
	.ascii	"_temp_568\0"
	.align
_Label_624:
	.byte	'?'
	.ascii	"_temp_567\0"
	.align
_Label_625:
	.byte	'I'
	.ascii	"fd\0"
	.align
_Label_626:
	.byte	'I'
	.ascii	"i\0"
	.align
_Label_627:
	.byte	'C'
	.ascii	"ch\0"
	.align
! 
! ===============  FUNCTION EchoTest  ===============
! 
_function_251_EchoTest:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__function_251_EchoTest,r1
	push	r1
	mov	30,r1
_Label_1281:
	push	r0
	sub	r1,1,r1
	bne	_Label_1281
	mov	264,r13		! source line 264
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   _temp_628 = _StringConst_90
	set	_StringConst_90,r1
	store	r1,[r14+-108]
!   Prepare Argument: offset=8  value=_temp_628  sizeInBytes=4
	load	[r14+-108],r1
	store	r1,[r15+0]
!   Call the function
	mov	273,r13		! source line 273
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_629 = _StringConst_91
	set	_StringConst_91,r1
	store	r1,[r14+-104]
!   Prepare Argument: offset=8  value=_temp_629  sizeInBytes=4
	load	[r14+-104],r1
	store	r1,[r15+0]
!   Call the function
	mov	275,r13		! source line 275
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_630 = _StringConst_92
	set	_StringConst_92,r1
	store	r1,[r14+-100]
!   Prepare Argument: offset=8  value=_temp_630  sizeInBytes=4
	load	[r14+-100],r1
	store	r1,[r15+0]
!   Call the function
	mov	276,r13		! source line 276
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_631 = _StringConst_93
	set	_StringConst_93,r1
	store	r1,[r14+-96]
!   Prepare Argument: offset=8  value=_temp_631  sizeInBytes=4
	load	[r14+-96],r1
	store	r1,[r15+0]
!   Call the function
	mov	277,r13		! source line 277
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_632 = _StringConst_94
	set	_StringConst_94,r1
	store	r1,[r14+-92]
!   Prepare Argument: offset=8  value=_temp_632  sizeInBytes=4
	load	[r14+-92],r1
	store	r1,[r15+0]
!   Call the function
	mov	278,r13		! source line 278
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_633 = _StringConst_95
	set	_StringConst_95,r1
	store	r1,[r14+-88]
!   Prepare Argument: offset=8  value=_temp_633  sizeInBytes=4
	load	[r14+-88],r1
	store	r1,[r15+0]
!   Call the function
	mov	279,r13		! source line 279
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_634 = _StringConst_96
	set	_StringConst_96,r1
	store	r1,[r14+-84]
!   Prepare Argument: offset=8  value=_temp_634  sizeInBytes=4
	load	[r14+-84],r1
	store	r1,[r15+0]
!   Call the function
	mov	280,r13		! source line 280
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_635 = _StringConst_97
	set	_StringConst_97,r1
	store	r1,[r14+-80]
!   Prepare Argument: offset=8  value=_temp_635  sizeInBytes=4
	load	[r14+-80],r1
	store	r1,[r15+0]
!   Call the function
	mov	281,r13		! source line 281
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_636 = _StringConst_98
	set	_StringConst_98,r1
	store	r1,[r14+-76]
!   Prepare Argument: offset=8  value=_temp_636  sizeInBytes=4
	load	[r14+-76],r1
	store	r1,[r15+0]
!   Call the function
	mov	282,r13		! source line 282
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_637 = _StringConst_99
	set	_StringConst_99,r1
	store	r1,[r14+-72]
!   Prepare Argument: offset=8  value=_temp_637  sizeInBytes=4
	load	[r14+-72],r1
	store	r1,[r15+0]
!   Call the function
	mov	283,r13		! source line 283
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_638 = _StringConst_100
	set	_StringConst_100,r1
	store	r1,[r14+-68]
!   Prepare Argument: offset=8  value=_temp_638  sizeInBytes=4
	load	[r14+-68],r1
	store	r1,[r15+0]
!   Call the function
	mov	284,r13		! source line 284
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_639 = _StringConst_101
	set	_StringConst_101,r1
	store	r1,[r14+-64]
!   Prepare Argument: offset=8  value=_temp_639  sizeInBytes=4
	load	[r14+-64],r1
	store	r1,[r15+0]
!   Call the function
	mov	285,r13		! source line 285
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_640 = _StringConst_102
	set	_StringConst_102,r1
	store	r1,[r14+-60]
!   Prepare Argument: offset=8  value=_temp_640  sizeInBytes=4
	load	[r14+-60],r1
	store	r1,[r15+0]
!   Call the function
	mov	286,r13		! source line 286
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_641 = _StringConst_103
	set	_StringConst_103,r1
	store	r1,[r14+-56]
!   Prepare Argument: offset=8  value=_temp_641  sizeInBytes=4
	load	[r14+-56],r1
	store	r1,[r15+0]
!   Call the function
	mov	287,r13		! source line 287
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_642 = _StringConst_104
	set	_StringConst_104,r1
	store	r1,[r14+-52]
!   Prepare Argument: offset=8  value=_temp_642  sizeInBytes=4
	load	[r14+-52],r1
	store	r1,[r15+0]
!   Call the function
	mov	288,r13		! source line 288
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_643 = _StringConst_105
	set	_StringConst_105,r1
	store	r1,[r14+-48]
!   Prepare Argument: offset=8  value=_temp_643  sizeInBytes=4
	load	[r14+-48],r1
	store	r1,[r15+0]
!   Call the function
	mov	289,r13		! source line 289
	mov	"\0\0CE",r10
	call	print
! ASSIGNMENT STATEMENT...
	mov	291,r13		! source line 291
	mov	"\0\0AS",r10
!   _temp_644 = _StringConst_106
	set	_StringConst_106,r1
	store	r1,[r14+-44]
!   Prepare Argument: offset=8  value=_temp_644  sizeInBytes=4
	load	[r14+-44],r1
	store	r1,[r15+0]
!   Call the function
	mov	291,r13		! source line 291
	mov	"\0\0CA",r10
	call	_P_UserSystem_Sys_Open
!   Retrieve Result: targetName=fd  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-112]
! IF STATEMENT...
	mov	292,r13		! source line 292
	mov	"\0\0IF",r10
!   if fd >= 0 then goto _Label_646		(int)
	load	[r14+-112],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_646
!	jmp	_Label_645
_Label_645:
! THEN...
	mov	293,r13		! source line 293
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_647 = _StringConst_107
	set	_StringConst_107,r1
	store	r1,[r14+-40]
!   Prepare Argument: offset=8  value=_temp_647  sizeInBytes=4
	load	[r14+-40],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=fd  sizeInBytes=4
	load	[r14+-112],r1
	store	r1,[r15+4]
!   Call the function
	mov	293,r13		! source line 293
	mov	"\0\0CA",r10
	call	_P_UserSystem_printIntVar
! END IF...
_Label_646:
! WHILE STATEMENT...
	mov	296,r13		! source line 296
	mov	"\0\0WH",r10
_Label_648:
!	jmp	_Label_649
_Label_649:
	mov	296,r13		! source line 296
	mov	"\0\0WB",r10
! ASSIGNMENT STATEMENT...
	mov	298,r13		! source line 298
	mov	"\0\0AS",r10
!   _temp_651 = &ch
	add	r14,-10,r1
	store	r1,[r14+-36]
!   Prepare Argument: offset=8  value=fd  sizeInBytes=4
	load	[r14+-112],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=_temp_651  sizeInBytes=4
	load	[r14+-36],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=1  sizeInBytes=4
	mov	1,r1
	store	r1,[r15+8]
!   Call the function
	mov	298,r13		! source line 298
	mov	"\0\0CA",r10
	call	_P_UserSystem_Sys_Read
!   Retrieve Result: targetName=i  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-116]
! IF STATEMENT...
	mov	300,r13		! source line 300
	mov	"\0\0IF",r10
!   if intIsZero (i) then goto _Label_652
	load	[r14+-116],r1
	cmp	r1,r0
	be	_Label_652
	jmp	_Label_653
_Label_652:
! THEN...
	mov	301,r13		! source line 301
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_654 = _StringConst_108
	set	_StringConst_108,r1
	store	r1,[r14+-32]
!   Prepare Argument: offset=8  value=_temp_654  sizeInBytes=4
	load	[r14+-32],r1
	store	r1,[r15+0]
!   Call the function
	mov	301,r13		! source line 301
	mov	"\0\0CE",r10
	call	print
	jmp	_Label_655
_Label_653:
! ELSE...
	mov	302,r13		! source line 302
	mov	"\0\0EL",r10
! IF STATEMENT...
	mov	302,r13		! source line 302
	mov	"\0\0IF",r10
!   if i == 1 then goto _Label_657		(int)
	load	[r14+-116],r1
	mov	1,r2
	cmp	r1,r2
	be	_Label_657
!	jmp	_Label_656
_Label_656:
! THEN...
	mov	303,r13		! source line 303
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_658 = _StringConst_109
	set	_StringConst_109,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=8  value=_temp_658  sizeInBytes=4
	load	[r14+-28],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=i  sizeInBytes=4
	load	[r14+-116],r1
	store	r1,[r15+4]
!   Call the function
	mov	303,r13		! source line 303
	mov	"\0\0CA",r10
	call	_P_UserSystem_printIntVar
	jmp	_Label_659
_Label_657:
! ELSE...
	mov	306,r13		! source line 306
	mov	"\0\0EL",r10
! ASSIGNMENT STATEMENT...
	mov	306,r13		! source line 306
	mov	"\0\0AS",r10
!   _temp_660 = &ch
	add	r14,-10,r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=8  value=fd  sizeInBytes=4
	load	[r14+-112],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=_temp_660  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=1  sizeInBytes=4
	mov	1,r1
	store	r1,[r15+8]
!   Call the function
	mov	306,r13		! source line 306
	mov	"\0\0CA",r10
	call	_P_UserSystem_Sys_Write
!   Retrieve Result: targetName=i  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-116]
! IF STATEMENT...
	mov	307,r13		! source line 307
	mov	"\0\0IF",r10
!   if i == 1 then goto _Label_662		(int)
	load	[r14+-116],r1
	mov	1,r2
	cmp	r1,r2
	be	_Label_662
!	jmp	_Label_661
_Label_661:
! THEN...
	mov	308,r13		! source line 308
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_663 = _StringConst_110
	set	_StringConst_110,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_663  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=i  sizeInBytes=4
	load	[r14+-116],r1
	store	r1,[r15+4]
!   Call the function
	mov	308,r13		! source line 308
	mov	"\0\0CA",r10
	call	_P_UserSystem_printIntVar
! END IF...
_Label_662:
! END IF...
_Label_659:
! END IF...
_Label_655:
! IF STATEMENT...
	mov	312,r13		! source line 312
	mov	"\0\0IF",r10
!   _temp_666 = ch XOR 113		(bool)
	loadb	[r14+-10],r1
	mov	113,r2
	xor	r1,r2,r1
	storeb	r1,[r14+-9]
!   if _temp_666 then goto _Label_665 else goto _Label_664
	loadb	[r14+-9],r1
	cmp	r1,0
	be	_Label_664
	jmp	_Label_665
_Label_664:
! THEN...
	mov	313,r13		! source line 313
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_667 = _StringConst_111
	set	_StringConst_111,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_667  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+0]
!   Call the function
	mov	313,r13		! source line 313
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=fd  sizeInBytes=4
	load	[r14+-112],r1
	store	r1,[r15+0]
!   Call the function
	mov	314,r13		! source line 314
	mov	"\0\0CA",r10
	call	_P_UserSystem_Sys_Close
! RETURN STATEMENT...
	mov	315,r13		! source line 315
	mov	"\0\0RE",r10
	add	r15,124,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_665:
! END WHILE...
	jmp	_Label_648
_Label_650:
! 
! Routine Descriptor
! 
_RoutineDescriptor__function_251_EchoTest:
	.word	_sourceFileName
	.word	_Label_668
	.word	0		! total size of parameters
	.word	120		! frame size = 120
	.word	_Label_669
	.word	-16
	.word	4
	.word	_Label_670
	.word	-9
	.word	1
	.word	_Label_671
	.word	-20
	.word	4
	.word	_Label_672
	.word	-24
	.word	4
	.word	_Label_673
	.word	-28
	.word	4
	.word	_Label_674
	.word	-32
	.word	4
	.word	_Label_675
	.word	-36
	.word	4
	.word	_Label_676
	.word	-40
	.word	4
	.word	_Label_677
	.word	-44
	.word	4
	.word	_Label_678
	.word	-48
	.word	4
	.word	_Label_679
	.word	-52
	.word	4
	.word	_Label_680
	.word	-56
	.word	4
	.word	_Label_681
	.word	-60
	.word	4
	.word	_Label_682
	.word	-64
	.word	4
	.word	_Label_683
	.word	-68
	.word	4
	.word	_Label_684
	.word	-72
	.word	4
	.word	_Label_685
	.word	-76
	.word	4
	.word	_Label_686
	.word	-80
	.word	4
	.word	_Label_687
	.word	-84
	.word	4
	.word	_Label_688
	.word	-88
	.word	4
	.word	_Label_689
	.word	-92
	.word	4
	.word	_Label_690
	.word	-96
	.word	4
	.word	_Label_691
	.word	-100
	.word	4
	.word	_Label_692
	.word	-104
	.word	4
	.word	_Label_693
	.word	-108
	.word	4
	.word	_Label_694
	.word	-112
	.word	4
	.word	_Label_695
	.word	-116
	.word	4
	.word	_Label_696
	.word	-10
	.word	1
	.word	0
_Label_668:
	.ascii	"EchoTest\0"
	.align
_Label_669:
	.byte	'?'
	.ascii	"_temp_667\0"
	.align
_Label_670:
	.byte	'C'
	.ascii	"_temp_666\0"
	.align
_Label_671:
	.byte	'?'
	.ascii	"_temp_663\0"
	.align
_Label_672:
	.byte	'?'
	.ascii	"_temp_660\0"
	.align
_Label_673:
	.byte	'?'
	.ascii	"_temp_658\0"
	.align
_Label_674:
	.byte	'?'
	.ascii	"_temp_654\0"
	.align
_Label_675:
	.byte	'?'
	.ascii	"_temp_651\0"
	.align
_Label_676:
	.byte	'?'
	.ascii	"_temp_647\0"
	.align
_Label_677:
	.byte	'?'
	.ascii	"_temp_644\0"
	.align
_Label_678:
	.byte	'?'
	.ascii	"_temp_643\0"
	.align
_Label_679:
	.byte	'?'
	.ascii	"_temp_642\0"
	.align
_Label_680:
	.byte	'?'
	.ascii	"_temp_641\0"
	.align
_Label_681:
	.byte	'?'
	.ascii	"_temp_640\0"
	.align
_Label_682:
	.byte	'?'
	.ascii	"_temp_639\0"
	.align
_Label_683:
	.byte	'?'
	.ascii	"_temp_638\0"
	.align
_Label_684:
	.byte	'?'
	.ascii	"_temp_637\0"
	.align
_Label_685:
	.byte	'?'
	.ascii	"_temp_636\0"
	.align
_Label_686:
	.byte	'?'
	.ascii	"_temp_635\0"
	.align
_Label_687:
	.byte	'?'
	.ascii	"_temp_634\0"
	.align
_Label_688:
	.byte	'?'
	.ascii	"_temp_633\0"
	.align
_Label_689:
	.byte	'?'
	.ascii	"_temp_632\0"
	.align
_Label_690:
	.byte	'?'
	.ascii	"_temp_631\0"
	.align
_Label_691:
	.byte	'?'
	.ascii	"_temp_630\0"
	.align
_Label_692:
	.byte	'?'
	.ascii	"_temp_629\0"
	.align
_Label_693:
	.byte	'?'
	.ascii	"_temp_628\0"
	.align
_Label_694:
	.byte	'I'
	.ascii	"fd\0"
	.align
_Label_695:
	.byte	'I'
	.ascii	"i\0"
	.align
_Label_696:
	.byte	'C'
	.ascii	"ch\0"
	.align
! 
! ===============  FUNCTION LineEchoTest  ===============
! 
_function_250_LineEchoTest:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__function_250_LineEchoTest,r1
	push	r1
	mov	58,r1
_Label_1282:
	push	r0
	sub	r1,1,r1
	bne	_Label_1282
	mov	325,r13		! source line 325
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! smallBuff
!   NEW ARRAY Constructor...
!   _temp_698 = &_temp_697
	add	r14,-180,r1
	store	r1,[r14+-144]
!   _temp_698 = _temp_698 + 4
	load	[r14+-144],r1
	add	r1,4,r1
	store	r1,[r14+-144]
!   Next value...
	mov	30,r1
	store	r1,[r14+-140]
_Label_700:
!   Data Move: *_temp_698 = 45  (sizeInBytes=1)
	mov	45,r1
	load	[r14+-144],r2
	storeb	r1,[r2]
!   _temp_698 = _temp_698 + 1
	load	[r14+-144],r1
	add	r1,1,r1
	store	r1,[r14+-144]
!   _temp_699 = _temp_699 + -1
	load	[r14+-140],r1
	add	r1,-1,r1
	store	r1,[r14+-140]
!   if intNotZero (_temp_699) then goto _Label_700
	load	[r14+-140],r1
	cmp	r1,r0
	bne	_Label_700
!   Initialize the array size...
	mov	30,r1
	store	r1,[r14+-180]
!   _temp_701 = &_temp_697
	add	r14,-180,r1
	store	r1,[r14+-136]
!   make sure array has size 30
	load	[r14+-136],r1
	load	[r1],r1
	set	30, r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bne	_runtimeErrorWrongArraySize
!   Data Move: smallBuff = *_temp_701  (sizeInBytes=36)
	load	[r14+-136],r5
	add	r14,-228,r4
	mov	9,r3
_Label_1283:
	load	[r5],r1
	add	r5,4,r5
	store	r1,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_1283
! CALL STATEMENT...
!   _temp_702 = _StringConst_112
	set	_StringConst_112,r1
	store	r1,[r14+-132]
!   Prepare Argument: offset=8  value=_temp_702  sizeInBytes=4
	load	[r14+-132],r1
	store	r1,[r15+0]
!   Call the function
	mov	334,r13		! source line 334
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_703 = _StringConst_113
	set	_StringConst_113,r1
	store	r1,[r14+-128]
!   Prepare Argument: offset=8  value=_temp_703  sizeInBytes=4
	load	[r14+-128],r1
	store	r1,[r15+0]
!   Call the function
	mov	335,r13		! source line 335
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=30  sizeInBytes=4
	mov	30,r1
	store	r1,[r15+0]
!   Call the function
	mov	336,r13		! source line 336
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   _temp_704 = _StringConst_114
	set	_StringConst_114,r1
	store	r1,[r14+-124]
!   Prepare Argument: offset=8  value=_temp_704  sizeInBytes=4
	load	[r14+-124],r1
	store	r1,[r15+0]
!   Call the function
	mov	337,r13		! source line 337
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_705 = _StringConst_115
	set	_StringConst_115,r1
	store	r1,[r14+-120]
!   Prepare Argument: offset=8  value=_temp_705  sizeInBytes=4
	load	[r14+-120],r1
	store	r1,[r15+0]
!   Call the function
	mov	338,r13		! source line 338
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_706 = _StringConst_116
	set	_StringConst_116,r1
	store	r1,[r14+-116]
!   Prepare Argument: offset=8  value=_temp_706  sizeInBytes=4
	load	[r14+-116],r1
	store	r1,[r15+0]
!   Call the function
	mov	339,r13		! source line 339
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_707 = _StringConst_117
	set	_StringConst_117,r1
	store	r1,[r14+-112]
!   Prepare Argument: offset=8  value=_temp_707  sizeInBytes=4
	load	[r14+-112],r1
	store	r1,[r15+0]
!   Call the function
	mov	340,r13		! source line 340
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_708 = _StringConst_118
	set	_StringConst_118,r1
	store	r1,[r14+-108]
!   Prepare Argument: offset=8  value=_temp_708  sizeInBytes=4
	load	[r14+-108],r1
	store	r1,[r15+0]
!   Call the function
	mov	341,r13		! source line 341
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_709 = _StringConst_119
	set	_StringConst_119,r1
	store	r1,[r14+-104]
!   Prepare Argument: offset=8  value=_temp_709  sizeInBytes=4
	load	[r14+-104],r1
	store	r1,[r15+0]
!   Call the function
	mov	342,r13		! source line 342
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_710 = _StringConst_120
	set	_StringConst_120,r1
	store	r1,[r14+-100]
!   Prepare Argument: offset=8  value=_temp_710  sizeInBytes=4
	load	[r14+-100],r1
	store	r1,[r15+0]
!   Call the function
	mov	343,r13		! source line 343
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_711 = _StringConst_121
	set	_StringConst_121,r1
	store	r1,[r14+-96]
!   Prepare Argument: offset=8  value=_temp_711  sizeInBytes=4
	load	[r14+-96],r1
	store	r1,[r15+0]
!   Call the function
	mov	344,r13		! source line 344
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_712 = _StringConst_122
	set	_StringConst_122,r1
	store	r1,[r14+-92]
!   Prepare Argument: offset=8  value=_temp_712  sizeInBytes=4
	load	[r14+-92],r1
	store	r1,[r15+0]
!   Call the function
	mov	345,r13		! source line 345
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_713 = _StringConst_123
	set	_StringConst_123,r1
	store	r1,[r14+-88]
!   Prepare Argument: offset=8  value=_temp_713  sizeInBytes=4
	load	[r14+-88],r1
	store	r1,[r15+0]
!   Call the function
	mov	346,r13		! source line 346
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_714 = _StringConst_124
	set	_StringConst_124,r1
	store	r1,[r14+-84]
!   Prepare Argument: offset=8  value=_temp_714  sizeInBytes=4
	load	[r14+-84],r1
	store	r1,[r15+0]
!   Call the function
	mov	347,r13		! source line 347
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_715 = _StringConst_125
	set	_StringConst_125,r1
	store	r1,[r14+-80]
!   Prepare Argument: offset=8  value=_temp_715  sizeInBytes=4
	load	[r14+-80],r1
	store	r1,[r15+0]
!   Call the function
	mov	348,r13		! source line 348
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_716 = _StringConst_126
	set	_StringConst_126,r1
	store	r1,[r14+-76]
!   Prepare Argument: offset=8  value=_temp_716  sizeInBytes=4
	load	[r14+-76],r1
	store	r1,[r15+0]
!   Call the function
	mov	349,r13		! source line 349
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_717 = _StringConst_127
	set	_StringConst_127,r1
	store	r1,[r14+-72]
!   Prepare Argument: offset=8  value=_temp_717  sizeInBytes=4
	load	[r14+-72],r1
	store	r1,[r15+0]
!   Call the function
	mov	350,r13		! source line 350
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_718 = _StringConst_128
	set	_StringConst_128,r1
	store	r1,[r14+-68]
!   Prepare Argument: offset=8  value=_temp_718  sizeInBytes=4
	load	[r14+-68],r1
	store	r1,[r15+0]
!   Call the function
	mov	351,r13		! source line 351
	mov	"\0\0CE",r10
	call	print
! ASSIGNMENT STATEMENT...
	mov	353,r13		! source line 353
	mov	"\0\0AS",r10
!   _temp_719 = _StringConst_129
	set	_StringConst_129,r1
	store	r1,[r14+-64]
!   Prepare Argument: offset=8  value=_temp_719  sizeInBytes=4
	load	[r14+-64],r1
	store	r1,[r15+0]
!   Call the function
	mov	353,r13		! source line 353
	mov	"\0\0CA",r10
	call	_P_UserSystem_Sys_Open
!   Retrieve Result: targetName=fd  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-184]
! IF STATEMENT...
	mov	354,r13		! source line 354
	mov	"\0\0IF",r10
!   if fd >= 0 then goto _Label_721		(int)
	load	[r14+-184],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_721
!	jmp	_Label_720
_Label_720:
! THEN...
	mov	355,r13		! source line 355
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_722 = _StringConst_130
	set	_StringConst_130,r1
	store	r1,[r14+-60]
!   Prepare Argument: offset=8  value=_temp_722  sizeInBytes=4
	load	[r14+-60],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=fd  sizeInBytes=4
	load	[r14+-184],r1
	store	r1,[r15+4]
!   Call the function
	mov	355,r13		! source line 355
	mov	"\0\0CA",r10
	call	_P_UserSystem_printIntVar
! END IF...
_Label_721:
! WHILE STATEMENT...
	mov	358,r13		! source line 358
	mov	"\0\0WH",r10
_Label_723:
!	jmp	_Label_724
_Label_724:
	mov	358,r13		! source line 358
	mov	"\0\0WB",r10
! ASSIGNMENT STATEMENT...
	mov	359,r13		! source line 359
	mov	"\0\0AS",r10
!   _temp_727 = &smallBuff
	add	r14,-228,r1
	store	r1,[r14+-52]
!   Move address of _temp_727 [0 ] into _temp_728
!     make sure index expr is >= 0
	mov	0,r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-52],r1
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
	store	r2,[r14+-48]
!   _temp_726 = _temp_728		(4 bytes)
	load	[r14+-48],r1
	store	r1,[r14+-56]
!   Prepare Argument: offset=8  value=fd  sizeInBytes=4
	load	[r14+-184],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=_temp_726  sizeInBytes=4
	load	[r14+-56],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=30  sizeInBytes=4
	mov	30,r1
	store	r1,[r15+8]
!   Call the function
	mov	359,r13		! source line 359
	mov	"\0\0CA",r10
	call	_P_UserSystem_Sys_Read
!   Retrieve Result: targetName=i  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-188]
! CALL STATEMENT...
!   _temp_729 = _StringConst_131
	set	_StringConst_131,r1
	store	r1,[r14+-44]
!   Prepare Argument: offset=8  value=_temp_729  sizeInBytes=4
	load	[r14+-44],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=i  sizeInBytes=4
	load	[r14+-188],r1
	store	r1,[r15+4]
!   Call the function
	mov	360,r13		! source line 360
	mov	"\0\0CA",r10
	call	_P_UserSystem_printIntVar
! ASSIGNMENT STATEMENT...
	mov	361,r13		! source line 361
	mov	"\0\0AS",r10
!   _temp_731 = &smallBuff
	add	r14,-228,r1
	store	r1,[r14+-36]
!   Move address of _temp_731 [0 ] into _temp_732
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
	set	1,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-32]
!   _temp_730 = _temp_732		(4 bytes)
	load	[r14+-32],r1
	store	r1,[r14+-40]
!   Prepare Argument: offset=8  value=fd  sizeInBytes=4
	load	[r14+-184],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=_temp_730  sizeInBytes=4
	load	[r14+-40],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=i  sizeInBytes=4
	load	[r14+-188],r1
	store	r1,[r15+8]
!   Call the function
	mov	361,r13		! source line 361
	mov	"\0\0CA",r10
	call	_P_UserSystem_Sys_Write
!   Retrieve Result: targetName=j  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-192]
! IF STATEMENT...
	mov	362,r13		! source line 362
	mov	"\0\0IF",r10
!   if i == j then goto _Label_734		(int)
	load	[r14+-188],r1
	load	[r14+-192],r2
	cmp	r1,r2
	be	_Label_734
!	jmp	_Label_733
_Label_733:
! THEN...
	mov	363,r13		! source line 363
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_735 = _StringConst_132
	set	_StringConst_132,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=8  value=_temp_735  sizeInBytes=4
	load	[r14+-28],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=j  sizeInBytes=4
	load	[r14+-192],r1
	store	r1,[r15+4]
!   Call the function
	mov	363,r13		! source line 363
	mov	"\0\0CA",r10
	call	_P_UserSystem_printIntVar
! END IF...
_Label_734:
! IF STATEMENT...
	mov	365,r13		! source line 365
	mov	"\0\0IF",r10
!   _temp_739 = &smallBuff
	add	r14,-228,r1
	store	r1,[r14+-24]
!   Move address of _temp_739 [0 ] into _temp_740
!     make sure index expr is >= 0
	mov	0,r2
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
!   Data Move: _temp_738 = *_temp_740  (sizeInBytes=1)
	load	[r14+-20],r1
	loadb	[r1],r1
	storeb	r1,[r14+-10]
!   _temp_741 = _temp_738 XOR 113		(bool)
	loadb	[r14+-10],r1
	mov	113,r2
	xor	r1,r2,r1
	storeb	r1,[r14+-9]
!   if _temp_741 then goto _Label_737 else goto _Label_736
	loadb	[r14+-9],r1
	cmp	r1,0
	be	_Label_736
	jmp	_Label_737
_Label_736:
! THEN...
	mov	366,r13		! source line 366
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_742 = _StringConst_133
	set	_StringConst_133,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_742  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+0]
!   Call the function
	mov	366,r13		! source line 366
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=fd  sizeInBytes=4
	load	[r14+-184],r1
	store	r1,[r15+0]
!   Call the function
	mov	367,r13		! source line 367
	mov	"\0\0CA",r10
	call	_P_UserSystem_Sys_Close
! RETURN STATEMENT...
	mov	368,r13		! source line 368
	mov	"\0\0RE",r10
	add	r15,236,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_737:
! END WHILE...
	jmp	_Label_723
_Label_725:
! 
! Routine Descriptor
! 
_RoutineDescriptor__function_250_LineEchoTest:
	.word	_sourceFileName
	.word	_Label_743
	.word	0		! total size of parameters
	.word	232		! frame size = 232
	.word	_Label_744
	.word	-16
	.word	4
	.word	_Label_745
	.word	-9
	.word	1
	.word	_Label_746
	.word	-20
	.word	4
	.word	_Label_747
	.word	-24
	.word	4
	.word	_Label_748
	.word	-10
	.word	1
	.word	_Label_749
	.word	-28
	.word	4
	.word	_Label_750
	.word	-32
	.word	4
	.word	_Label_751
	.word	-36
	.word	4
	.word	_Label_752
	.word	-40
	.word	4
	.word	_Label_753
	.word	-44
	.word	4
	.word	_Label_754
	.word	-48
	.word	4
	.word	_Label_755
	.word	-52
	.word	4
	.word	_Label_756
	.word	-56
	.word	4
	.word	_Label_757
	.word	-60
	.word	4
	.word	_Label_758
	.word	-64
	.word	4
	.word	_Label_759
	.word	-68
	.word	4
	.word	_Label_760
	.word	-72
	.word	4
	.word	_Label_761
	.word	-76
	.word	4
	.word	_Label_762
	.word	-80
	.word	4
	.word	_Label_763
	.word	-84
	.word	4
	.word	_Label_764
	.word	-88
	.word	4
	.word	_Label_765
	.word	-92
	.word	4
	.word	_Label_766
	.word	-96
	.word	4
	.word	_Label_767
	.word	-100
	.word	4
	.word	_Label_768
	.word	-104
	.word	4
	.word	_Label_769
	.word	-108
	.word	4
	.word	_Label_770
	.word	-112
	.word	4
	.word	_Label_771
	.word	-116
	.word	4
	.word	_Label_772
	.word	-120
	.word	4
	.word	_Label_773
	.word	-124
	.word	4
	.word	_Label_774
	.word	-128
	.word	4
	.word	_Label_775
	.word	-132
	.word	4
	.word	_Label_776
	.word	-136
	.word	4
	.word	_Label_777
	.word	-140
	.word	4
	.word	_Label_778
	.word	-144
	.word	4
	.word	_Label_779
	.word	-180
	.word	36
	.word	_Label_780
	.word	-184
	.word	4
	.word	_Label_781
	.word	-188
	.word	4
	.word	_Label_782
	.word	-192
	.word	4
	.word	_Label_783
	.word	-228
	.word	36
	.word	0
_Label_743:
	.ascii	"LineEchoTest\0"
	.align
_Label_744:
	.byte	'?'
	.ascii	"_temp_742\0"
	.align
_Label_745:
	.byte	'C'
	.ascii	"_temp_741\0"
	.align
_Label_746:
	.byte	'?'
	.ascii	"_temp_740\0"
	.align
_Label_747:
	.byte	'?'
	.ascii	"_temp_739\0"
	.align
_Label_748:
	.byte	'C'
	.ascii	"_temp_738\0"
	.align
_Label_749:
	.byte	'?'
	.ascii	"_temp_735\0"
	.align
_Label_750:
	.byte	'?'
	.ascii	"_temp_732\0"
	.align
_Label_751:
	.byte	'?'
	.ascii	"_temp_731\0"
	.align
_Label_752:
	.byte	'?'
	.ascii	"_temp_730\0"
	.align
_Label_753:
	.byte	'?'
	.ascii	"_temp_729\0"
	.align
_Label_754:
	.byte	'?'
	.ascii	"_temp_728\0"
	.align
_Label_755:
	.byte	'?'
	.ascii	"_temp_727\0"
	.align
_Label_756:
	.byte	'?'
	.ascii	"_temp_726\0"
	.align
_Label_757:
	.byte	'?'
	.ascii	"_temp_722\0"
	.align
_Label_758:
	.byte	'?'
	.ascii	"_temp_719\0"
	.align
_Label_759:
	.byte	'?'
	.ascii	"_temp_718\0"
	.align
_Label_760:
	.byte	'?'
	.ascii	"_temp_717\0"
	.align
_Label_761:
	.byte	'?'
	.ascii	"_temp_716\0"
	.align
_Label_762:
	.byte	'?'
	.ascii	"_temp_715\0"
	.align
_Label_763:
	.byte	'?'
	.ascii	"_temp_714\0"
	.align
_Label_764:
	.byte	'?'
	.ascii	"_temp_713\0"
	.align
_Label_765:
	.byte	'?'
	.ascii	"_temp_712\0"
	.align
_Label_766:
	.byte	'?'
	.ascii	"_temp_711\0"
	.align
_Label_767:
	.byte	'?'
	.ascii	"_temp_710\0"
	.align
_Label_768:
	.byte	'?'
	.ascii	"_temp_709\0"
	.align
_Label_769:
	.byte	'?'
	.ascii	"_temp_708\0"
	.align
_Label_770:
	.byte	'?'
	.ascii	"_temp_707\0"
	.align
_Label_771:
	.byte	'?'
	.ascii	"_temp_706\0"
	.align
_Label_772:
	.byte	'?'
	.ascii	"_temp_705\0"
	.align
_Label_773:
	.byte	'?'
	.ascii	"_temp_704\0"
	.align
_Label_774:
	.byte	'?'
	.ascii	"_temp_703\0"
	.align
_Label_775:
	.byte	'?'
	.ascii	"_temp_702\0"
	.align
_Label_776:
	.byte	'?'
	.ascii	"_temp_701\0"
	.align
_Label_777:
	.byte	'?'
	.ascii	"_temp_699\0"
	.align
_Label_778:
	.byte	'?'
	.ascii	"_temp_698\0"
	.align
_Label_779:
	.byte	'?'
	.ascii	"_temp_697\0"
	.align
_Label_780:
	.byte	'I'
	.ascii	"fd\0"
	.align
_Label_781:
	.byte	'I'
	.ascii	"i\0"
	.align
_Label_782:
	.byte	'I'
	.ascii	"j\0"
	.align
_Label_783:
	.byte	'A'
	.ascii	"smallBuff\0"
	.align
! 
! ===============  FUNCTION EOFTest  ===============
! 
_function_249_EOFTest:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__function_249_EOFTest,r1
	push	r1
	mov	39,r1
_Label_1284:
	push	r0
	sub	r1,1,r1
	bne	_Label_1284
	mov	376,r13		! source line 376
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! buff
!   NEW ARRAY Constructor...
!   _temp_785 = &_temp_784
	add	r14,-132,r1
	store	r1,[r14+-120]
!   _temp_785 = _temp_785 + 4
	load	[r14+-120],r1
	add	r1,4,r1
	store	r1,[r14+-120]
!   Next value...
!   Data Move: *_temp_785 = 49  (sizeInBytes=1)
	mov	49,r1
	load	[r14+-120],r2
	storeb	r1,[r2]
!   _temp_785 = _temp_785 + 1
	load	[r14+-120],r1
	add	r1,1,r1
	store	r1,[r14+-120]
!   Next value...
!   Data Move: *_temp_785 = 50  (sizeInBytes=1)
	mov	50,r1
	load	[r14+-120],r2
	storeb	r1,[r2]
!   _temp_785 = _temp_785 + 1
	load	[r14+-120],r1
	add	r1,1,r1
	store	r1,[r14+-120]
!   Next value...
!   Data Move: *_temp_785 = 51  (sizeInBytes=1)
	mov	51,r1
	load	[r14+-120],r2
	storeb	r1,[r2]
!   _temp_785 = _temp_785 + 1
	load	[r14+-120],r1
	add	r1,1,r1
	store	r1,[r14+-120]
!   Next value...
!   Data Move: *_temp_785 = 52  (sizeInBytes=1)
	mov	52,r1
	load	[r14+-120],r2
	storeb	r1,[r2]
!   _temp_785 = _temp_785 + 1
	load	[r14+-120],r1
	add	r1,1,r1
	store	r1,[r14+-120]
!   Next value...
!   Data Move: *_temp_785 = 53  (sizeInBytes=1)
	mov	53,r1
	load	[r14+-120],r2
	storeb	r1,[r2]
!   _temp_785 = _temp_785 + 1
	load	[r14+-120],r1
	add	r1,1,r1
	store	r1,[r14+-120]
!   Next value...
!   Data Move: *_temp_785 = 54  (sizeInBytes=1)
	mov	54,r1
	load	[r14+-120],r2
	storeb	r1,[r2]
!   _temp_785 = _temp_785 + 1
	load	[r14+-120],r1
	add	r1,1,r1
	store	r1,[r14+-120]
!   Initialize the array size...
	mov	6,r1
	store	r1,[r14+-132]
!   _temp_787 = &_temp_784
	add	r14,-132,r1
	store	r1,[r14+-112]
!   make sure array has size 6
	load	[r14+-112],r1
	load	[r1],r1
	set	6, r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bne	_runtimeErrorWrongArraySize
!   Data Move: buff = *_temp_787  (sizeInBytes=12)
	load	[r14+-112],r5
	add	r14,-152,r4
	load	[r5],r1
	store	r1,[r4]
	load	[r5+4],r1
	store	r1,[r4+4]
	load	[r5+8],r1
	store	r1,[r4+8]
! CALL STATEMENT...
!   _temp_788 = _StringConst_134
	set	_StringConst_134,r1
	store	r1,[r14+-108]
!   Prepare Argument: offset=8  value=_temp_788  sizeInBytes=4
	load	[r14+-108],r1
	store	r1,[r15+0]
!   Call the function
	mov	385,r13		! source line 385
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_789 = _StringConst_135
	set	_StringConst_135,r1
	store	r1,[r14+-104]
!   Prepare Argument: offset=8  value=_temp_789  sizeInBytes=4
	load	[r14+-104],r1
	store	r1,[r15+0]
!   Call the function
	mov	386,r13		! source line 386
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_790 = _StringConst_136
	set	_StringConst_136,r1
	store	r1,[r14+-100]
!   Prepare Argument: offset=8  value=_temp_790  sizeInBytes=4
	load	[r14+-100],r1
	store	r1,[r15+0]
!   Call the function
	mov	387,r13		! source line 387
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_791 = _StringConst_137
	set	_StringConst_137,r1
	store	r1,[r14+-96]
!   Prepare Argument: offset=8  value=_temp_791  sizeInBytes=4
	load	[r14+-96],r1
	store	r1,[r15+0]
!   Call the function
	mov	388,r13		! source line 388
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_792 = _StringConst_138
	set	_StringConst_138,r1
	store	r1,[r14+-92]
!   Prepare Argument: offset=8  value=_temp_792  sizeInBytes=4
	load	[r14+-92],r1
	store	r1,[r15+0]
!   Call the function
	mov	389,r13		! source line 389
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_793 = _StringConst_139
	set	_StringConst_139,r1
	store	r1,[r14+-88]
!   Prepare Argument: offset=8  value=_temp_793  sizeInBytes=4
	load	[r14+-88],r1
	store	r1,[r15+0]
!   Call the function
	mov	390,r13		! source line 390
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_794 = _StringConst_140
	set	_StringConst_140,r1
	store	r1,[r14+-84]
!   Prepare Argument: offset=8  value=_temp_794  sizeInBytes=4
	load	[r14+-84],r1
	store	r1,[r15+0]
!   Call the function
	mov	391,r13		! source line 391
	mov	"\0\0CE",r10
	call	print
! ASSIGNMENT STATEMENT...
	mov	393,r13		! source line 393
	mov	"\0\0AS",r10
!   _temp_795 = _StringConst_141
	set	_StringConst_141,r1
	store	r1,[r14+-80]
!   Prepare Argument: offset=8  value=_temp_795  sizeInBytes=4
	load	[r14+-80],r1
	store	r1,[r15+0]
!   Call the function
	mov	393,r13		! source line 393
	mov	"\0\0CA",r10
	call	_P_UserSystem_Sys_Open
!   Retrieve Result: targetName=fd  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-136]
! IF STATEMENT...
	mov	394,r13		! source line 394
	mov	"\0\0IF",r10
!   if fd >= 0 then goto _Label_797		(int)
	load	[r14+-136],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_797
!	jmp	_Label_796
_Label_796:
! THEN...
	mov	395,r13		! source line 395
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_798 = _StringConst_142
	set	_StringConst_142,r1
	store	r1,[r14+-76]
!   Prepare Argument: offset=8  value=_temp_798  sizeInBytes=4
	load	[r14+-76],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=fd  sizeInBytes=4
	load	[r14+-136],r1
	store	r1,[r15+4]
!   Call the function
	mov	395,r13		! source line 395
	mov	"\0\0CA",r10
	call	_P_UserSystem_printIntVar
! END IF...
_Label_797:
! CALL STATEMENT...
!   _temp_799 = _StringConst_143
	set	_StringConst_143,r1
	store	r1,[r14+-72]
!   Prepare Argument: offset=8  value=_temp_799  sizeInBytes=4
	load	[r14+-72],r1
	store	r1,[r15+0]
!   Call the function
	mov	398,r13		! source line 398
	mov	"\0\0CE",r10
	call	print
! ASSIGNMENT STATEMENT...
	mov	399,r13		! source line 399
	mov	"\0\0AS",r10
!   _temp_801 = &buff
	add	r14,-152,r1
	store	r1,[r14+-64]
!   Move address of _temp_801 [0 ] into _temp_802
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
	set	1,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-60]
!   _temp_800 = _temp_802		(4 bytes)
	load	[r14+-60],r1
	store	r1,[r14+-68]
!   Prepare Argument: offset=8  value=fd  sizeInBytes=4
	load	[r14+-136],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=_temp_800  sizeInBytes=4
	load	[r14+-68],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=6  sizeInBytes=4
	mov	6,r1
	store	r1,[r15+8]
!   Call the function
	mov	399,r13		! source line 399
	mov	"\0\0CA",r10
	call	_P_UserSystem_Sys_Read
!   Retrieve Result: targetName=i  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-140]
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=i  sizeInBytes=4
	load	[r14+-140],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=0  sizeInBytes=4
	mov	0,r1
	store	r1,[r15+4]
!   Call the function
	mov	400,r13		! source line 400
	mov	"\0\0CA",r10
	call	_function_246_Check
! IF STATEMENT...
	mov	401,r13		! source line 401
	mov	"\0\0IF",r10
!   _temp_806 = &buff
	add	r14,-152,r1
	store	r1,[r14+-56]
!   _temp_807 = _StringConst_144
	set	_StringConst_144,r1
	store	r1,[r14+-52]
!   Prepare Argument: offset=8  value=_temp_806  sizeInBytes=4
	load	[r14+-56],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=_temp_807  sizeInBytes=4
	load	[r14+-52],r1
	store	r1,[r15+4]
!   Call the function
	mov	401,r13		! source line 401
	mov	"\0\0CA",r10
	call	_P_UserSystem_StrEqual
!   Retrieve Result: targetName=_temp_805  sizeInBytes=1
	loadb	[r15],r1
	storeb	r1,[r14+-10]
!   if _temp_805 then goto _Label_804 else goto _Label_803
	loadb	[r14+-10],r1
	cmp	r1,0
	be	_Label_803
	jmp	_Label_804
_Label_803:
! THEN...
	mov	402,r13		! source line 402
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_808 = _StringConst_145
	set	_StringConst_145,r1
	store	r1,[r14+-48]
!   Prepare Argument: offset=8  value=_temp_808  sizeInBytes=4
	load	[r14+-48],r1
	store	r1,[r15+0]
!   Call the function
	mov	402,r13		! source line 402
	mov	"\0\0CE",r10
	call	print
! END IF...
_Label_804:
! CALL STATEMENT...
!   _temp_809 = _StringConst_146
	set	_StringConst_146,r1
	store	r1,[r14+-44]
!   Prepare Argument: offset=8  value=_temp_809  sizeInBytes=4
	load	[r14+-44],r1
	store	r1,[r15+0]
!   Call the function
	mov	405,r13		! source line 405
	mov	"\0\0CE",r10
	call	print
! ASSIGNMENT STATEMENT...
	mov	406,r13		! source line 406
	mov	"\0\0AS",r10
!   _temp_811 = &buff
	add	r14,-152,r1
	store	r1,[r14+-36]
!   Move address of _temp_811 [0 ] into _temp_812
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
	set	1,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-32]
!   _temp_810 = _temp_812		(4 bytes)
	load	[r14+-32],r1
	store	r1,[r14+-40]
!   Prepare Argument: offset=8  value=fd  sizeInBytes=4
	load	[r14+-136],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=_temp_810  sizeInBytes=4
	load	[r14+-40],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=6  sizeInBytes=4
	mov	6,r1
	store	r1,[r15+8]
!   Call the function
	mov	406,r13		! source line 406
	mov	"\0\0CA",r10
	call	_P_UserSystem_Sys_Read
!   Retrieve Result: targetName=i  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-140]
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=i  sizeInBytes=4
	load	[r14+-140],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=3  sizeInBytes=4
	mov	3,r1
	store	r1,[r15+4]
!   Call the function
	mov	407,r13		! source line 407
	mov	"\0\0CA",r10
	call	_function_246_Check
! IF STATEMENT...
	mov	408,r13		! source line 408
	mov	"\0\0IF",r10
!   _temp_816 = &buff
	add	r14,-152,r1
	store	r1,[r14+-28]
!   _temp_817 = _StringConst_147
	set	_StringConst_147,r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=8  value=_temp_816  sizeInBytes=4
	load	[r14+-28],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=_temp_817  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+4]
!   Call the function
	mov	408,r13		! source line 408
	mov	"\0\0CA",r10
	call	_P_UserSystem_StrEqual
!   Retrieve Result: targetName=_temp_815  sizeInBytes=1
	loadb	[r15],r1
	storeb	r1,[r14+-9]
!   if _temp_815 then goto _Label_814 else goto _Label_813
	loadb	[r14+-9],r1
	cmp	r1,0
	be	_Label_813
	jmp	_Label_814
_Label_813:
! THEN...
	mov	409,r13		! source line 409
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_818 = _StringConst_148
	set	_StringConst_148,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_818  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   Call the function
	mov	409,r13		! source line 409
	mov	"\0\0CE",r10
	call	print
! END IF...
_Label_814:
! CALL STATEMENT...
!   _temp_819 = _StringConst_149
	set	_StringConst_149,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_819  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+0]
!   Call the function
	mov	412,r13		! source line 412
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=fd  sizeInBytes=4
	load	[r14+-136],r1
	store	r1,[r15+0]
!   Call the function
	mov	413,r13		! source line 413
	mov	"\0\0CA",r10
	call	_P_UserSystem_Sys_Close
! RETURN STATEMENT...
	mov	413,r13		! source line 413
	mov	"\0\0RE",r10
	add	r15,160,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__function_249_EOFTest:
	.word	_sourceFileName
	.word	_Label_820
	.word	0		! total size of parameters
	.word	156		! frame size = 156
	.word	_Label_821
	.word	-16
	.word	4
	.word	_Label_822
	.word	-20
	.word	4
	.word	_Label_823
	.word	-24
	.word	4
	.word	_Label_824
	.word	-28
	.word	4
	.word	_Label_825
	.word	-9
	.word	1
	.word	_Label_826
	.word	-32
	.word	4
	.word	_Label_827
	.word	-36
	.word	4
	.word	_Label_828
	.word	-40
	.word	4
	.word	_Label_829
	.word	-44
	.word	4
	.word	_Label_830
	.word	-48
	.word	4
	.word	_Label_831
	.word	-52
	.word	4
	.word	_Label_832
	.word	-56
	.word	4
	.word	_Label_833
	.word	-10
	.word	1
	.word	_Label_834
	.word	-60
	.word	4
	.word	_Label_835
	.word	-64
	.word	4
	.word	_Label_836
	.word	-68
	.word	4
	.word	_Label_837
	.word	-72
	.word	4
	.word	_Label_838
	.word	-76
	.word	4
	.word	_Label_839
	.word	-80
	.word	4
	.word	_Label_840
	.word	-84
	.word	4
	.word	_Label_841
	.word	-88
	.word	4
	.word	_Label_842
	.word	-92
	.word	4
	.word	_Label_843
	.word	-96
	.word	4
	.word	_Label_844
	.word	-100
	.word	4
	.word	_Label_845
	.word	-104
	.word	4
	.word	_Label_846
	.word	-108
	.word	4
	.word	_Label_847
	.word	-112
	.word	4
	.word	_Label_848
	.word	-116
	.word	4
	.word	_Label_849
	.word	-120
	.word	4
	.word	_Label_850
	.word	-132
	.word	12
	.word	_Label_851
	.word	-136
	.word	4
	.word	_Label_852
	.word	-140
	.word	4
	.word	_Label_853
	.word	-152
	.word	12
	.word	0
_Label_820:
	.ascii	"EOFTest\0"
	.align
_Label_821:
	.byte	'?'
	.ascii	"_temp_819\0"
	.align
_Label_822:
	.byte	'?'
	.ascii	"_temp_818\0"
	.align
_Label_823:
	.byte	'?'
	.ascii	"_temp_817\0"
	.align
_Label_824:
	.byte	'?'
	.ascii	"_temp_816\0"
	.align
_Label_825:
	.byte	'C'
	.ascii	"_temp_815\0"
	.align
_Label_826:
	.byte	'?'
	.ascii	"_temp_812\0"
	.align
_Label_827:
	.byte	'?'
	.ascii	"_temp_811\0"
	.align
_Label_828:
	.byte	'?'
	.ascii	"_temp_810\0"
	.align
_Label_829:
	.byte	'?'
	.ascii	"_temp_809\0"
	.align
_Label_830:
	.byte	'?'
	.ascii	"_temp_808\0"
	.align
_Label_831:
	.byte	'?'
	.ascii	"_temp_807\0"
	.align
_Label_832:
	.byte	'?'
	.ascii	"_temp_806\0"
	.align
_Label_833:
	.byte	'C'
	.ascii	"_temp_805\0"
	.align
_Label_834:
	.byte	'?'
	.ascii	"_temp_802\0"
	.align
_Label_835:
	.byte	'?'
	.ascii	"_temp_801\0"
	.align
_Label_836:
	.byte	'?'
	.ascii	"_temp_800\0"
	.align
_Label_837:
	.byte	'?'
	.ascii	"_temp_799\0"
	.align
_Label_838:
	.byte	'?'
	.ascii	"_temp_798\0"
	.align
_Label_839:
	.byte	'?'
	.ascii	"_temp_795\0"
	.align
_Label_840:
	.byte	'?'
	.ascii	"_temp_794\0"
	.align
_Label_841:
	.byte	'?'
	.ascii	"_temp_793\0"
	.align
_Label_842:
	.byte	'?'
	.ascii	"_temp_792\0"
	.align
_Label_843:
	.byte	'?'
	.ascii	"_temp_791\0"
	.align
_Label_844:
	.byte	'?'
	.ascii	"_temp_790\0"
	.align
_Label_845:
	.byte	'?'
	.ascii	"_temp_789\0"
	.align
_Label_846:
	.byte	'?'
	.ascii	"_temp_788\0"
	.align
_Label_847:
	.byte	'?'
	.ascii	"_temp_787\0"
	.align
_Label_848:
	.byte	'?'
	.ascii	"_temp_786\0"
	.align
_Label_849:
	.byte	'?'
	.ascii	"_temp_785\0"
	.align
_Label_850:
	.byte	'?'
	.ascii	"_temp_784\0"
	.align
_Label_851:
	.byte	'I'
	.ascii	"fd\0"
	.align
_Label_852:
	.byte	'I'
	.ascii	"i\0"
	.align
_Label_853:
	.byte	'A'
	.ascii	"buff\0"
	.align
! 
! ===============  FUNCTION OpenCloseTerminalTest  ===============
! 
_function_248_OpenCloseTerminalTest:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__function_248_OpenCloseTerminalTest,r1
	push	r1
	mov	35,r1
_Label_1285:
	push	r0
	sub	r1,1,r1
	bne	_Label_1285
	mov	419,r13		! source line 419
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   _temp_854 = _StringConst_150
	set	_StringConst_150,r1
	store	r1,[r14+-132]
!   Prepare Argument: offset=8  value=_temp_854  sizeInBytes=4
	load	[r14+-132],r1
	store	r1,[r15+0]
!   Call the function
	mov	425,r13		! source line 425
	mov	"\0\0CE",r10
	call	print
! FOR STATEMENT...
	mov	429,r13		! source line 429
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_859 = 1		(4 bytes)
	mov	1,r1
	store	r1,[r14+-128]
!   Calculate and save the FOR-LOOP ending value
!   _temp_860 = 10		(4 bytes)
	mov	10,r1
	store	r1,[r14+-124]
!   Initialize FOR-LOOP index variable
!   Data Move: j = _temp_859  (sizeInBytes=4)
	load	[r14+-128],r1
	store	r1,[r14+-140]
_Label_855:
!   Perform the FOR-LOOP termination test
!   if j > _temp_860 then goto _Label_858		
	load	[r14+-140],r1
	load	[r14+-124],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_858
_Label_856:
	mov	429,r13		! source line 429
	mov	"\0\0FB",r10
! CALL STATEMENT...
!   _temp_861 = _StringConst_151
	set	_StringConst_151,r1
	store	r1,[r14+-120]
!   Prepare Argument: offset=8  value=_temp_861  sizeInBytes=4
	load	[r14+-120],r1
	store	r1,[r15+0]
!   Call the function
	mov	430,r13		! source line 430
	mov	"\0\0CE",r10
	call	print
! FOR STATEMENT...
	mov	431,r13		! source line 431
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_866 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-116]
!   Calculate and save the FOR-LOOP ending value
!   _temp_867 = 9		(4 bytes)
	mov	9,r1
	store	r1,[r14+-112]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_866  (sizeInBytes=4)
	load	[r14+-116],r1
	store	r1,[r14+-136]
_Label_862:
!   Perform the FOR-LOOP termination test
!   if i > _temp_867 then goto _Label_865		
	load	[r14+-136],r1
	load	[r14+-112],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_865
_Label_863:
	mov	431,r13		! source line 431
	mov	"\0\0FB",r10
! ASSIGNMENT STATEMENT...
	mov	432,r13		! source line 432
	mov	"\0\0AS",r10
!   _temp_868 = _StringConst_152
	set	_StringConst_152,r1
	store	r1,[r14+-108]
!   Prepare Argument: offset=8  value=_temp_868  sizeInBytes=4
	load	[r14+-108],r1
	store	r1,[r15+0]
!   Call the function
	mov	432,r13		! source line 432
	mov	"\0\0CA",r10
	call	_P_UserSystem_Sys_Open
!   Retrieve Result: targetName=fd  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-144]
! IF STATEMENT...
	mov	433,r13		! source line 433
	mov	"\0\0IF",r10
!   if fd >= 0 then goto _Label_870		(int)
	load	[r14+-144],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_870
!	jmp	_Label_869
_Label_869:
! THEN...
	mov	434,r13		! source line 434
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_871 = _StringConst_153
	set	_StringConst_153,r1
	store	r1,[r14+-104]
!   Prepare Argument: offset=8  value=_temp_871  sizeInBytes=4
	load	[r14+-104],r1
	store	r1,[r15+0]
!   Call the function
	mov	434,r13		! source line 434
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=fd  sizeInBytes=4
	load	[r14+-144],r1
	store	r1,[r15+0]
!   Call the function
	mov	435,r13		! source line 435
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   _temp_872 = _StringConst_154
	set	_StringConst_154,r1
	store	r1,[r14+-100]
!   Prepare Argument: offset=8  value=_temp_872  sizeInBytes=4
	load	[r14+-100],r1
	store	r1,[r15+0]
!   Call the function
	mov	436,r13		! source line 436
	mov	"\0\0CE",r10
	call	print
	jmp	_Label_873
_Label_870:
! ELSE...
	mov	437,r13		! source line 437
	mov	"\0\0EL",r10
! IF STATEMENT...
	mov	437,r13		! source line 437
	mov	"\0\0IF",r10
!   if fd == i then goto _Label_875		(int)
	load	[r14+-144],r1
	load	[r14+-136],r2
	cmp	r1,r2
	be	_Label_875
!	jmp	_Label_874
_Label_874:
! THEN...
	mov	438,r13		! source line 438
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_876 = _StringConst_155
	set	_StringConst_155,r1
	store	r1,[r14+-96]
!   Prepare Argument: offset=8  value=_temp_876  sizeInBytes=4
	load	[r14+-96],r1
	store	r1,[r15+0]
!   Call the function
	mov	438,r13		! source line 438
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=fd  sizeInBytes=4
	load	[r14+-144],r1
	store	r1,[r15+0]
!   Call the function
	mov	439,r13		! source line 439
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   _temp_877 = _StringConst_156
	set	_StringConst_156,r1
	store	r1,[r14+-92]
!   Prepare Argument: offset=8  value=_temp_877  sizeInBytes=4
	load	[r14+-92],r1
	store	r1,[r15+0]
!   Call the function
	mov	440,r13		! source line 440
	mov	"\0\0CE",r10
	call	print
! END IF...
_Label_875:
! END IF...
_Label_873:
!   Increment the FOR-LOOP index variable and jump back
_Label_864:
!   i = i + 1
	load	[r14+-136],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-136]
	jmp	_Label_862
! END FOR
_Label_865:
! CALL STATEMENT...
!   _temp_878 = _StringConst_157
	set	_StringConst_157,r1
	store	r1,[r14+-88]
!   Prepare Argument: offset=8  value=_temp_878  sizeInBytes=4
	load	[r14+-88],r1
	store	r1,[r15+0]
!   Call the function
	mov	445,r13		! source line 445
	mov	"\0\0CE",r10
	call	print
! FOR STATEMENT...
	mov	446,r13		! source line 446
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_883 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-84]
!   Calculate and save the FOR-LOOP ending value
!   _temp_884 = 9		(4 bytes)
	mov	9,r1
	store	r1,[r14+-80]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_883  (sizeInBytes=4)
	load	[r14+-84],r1
	store	r1,[r14+-136]
_Label_879:
!   Perform the FOR-LOOP termination test
!   if i > _temp_884 then goto _Label_882		
	load	[r14+-136],r1
	load	[r14+-80],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_882
_Label_880:
	mov	446,r13		! source line 446
	mov	"\0\0FB",r10
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=i  sizeInBytes=4
	load	[r14+-136],r1
	store	r1,[r15+0]
!   Call the function
	mov	447,r13		! source line 447
	mov	"\0\0CA",r10
	call	_P_UserSystem_Sys_Close
!   Increment the FOR-LOOP index variable and jump back
_Label_881:
!   i = i + 1
	load	[r14+-136],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-136]
	jmp	_Label_879
! END FOR
_Label_882:
!   Increment the FOR-LOOP index variable and jump back
_Label_857:
!   j = j + 1
	load	[r14+-140],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-140]
	jmp	_Label_855
! END FOR
_Label_858:
! CALL STATEMENT...
!   _temp_885 = _StringConst_158
	set	_StringConst_158,r1
	store	r1,[r14+-76]
!   Prepare Argument: offset=8  value=_temp_885  sizeInBytes=4
	load	[r14+-76],r1
	store	r1,[r15+0]
!   Call the function
	mov	451,r13		! source line 451
	mov	"\0\0CE",r10
	call	print
! FOR STATEMENT...
	mov	452,r13		! source line 452
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_890 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-72]
!   Calculate and save the FOR-LOOP ending value
!   _temp_891 = 9		(4 bytes)
	mov	9,r1
	store	r1,[r14+-68]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_890  (sizeInBytes=4)
	load	[r14+-72],r1
	store	r1,[r14+-136]
_Label_886:
!   Perform the FOR-LOOP termination test
!   if i > _temp_891 then goto _Label_889		
	load	[r14+-136],r1
	load	[r14+-68],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_889
_Label_887:
	mov	452,r13		! source line 452
	mov	"\0\0FB",r10
! ASSIGNMENT STATEMENT...
	mov	453,r13		! source line 453
	mov	"\0\0AS",r10
!   _temp_892 = _StringConst_159
	set	_StringConst_159,r1
	store	r1,[r14+-64]
!   Prepare Argument: offset=8  value=_temp_892  sizeInBytes=4
	load	[r14+-64],r1
	store	r1,[r15+0]
!   Call the function
	mov	453,r13		! source line 453
	mov	"\0\0CA",r10
	call	_P_UserSystem_Sys_Open
!   Retrieve Result: targetName=fd  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-144]
! IF STATEMENT...
	mov	454,r13		! source line 454
	mov	"\0\0IF",r10
!   if fd >= 0 then goto _Label_894		(int)
	load	[r14+-144],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_894
!	jmp	_Label_893
_Label_893:
! THEN...
	mov	455,r13		! source line 455
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_895 = _StringConst_160
	set	_StringConst_160,r1
	store	r1,[r14+-60]
!   Prepare Argument: offset=8  value=_temp_895  sizeInBytes=4
	load	[r14+-60],r1
	store	r1,[r15+0]
!   Call the function
	mov	455,r13		! source line 455
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=fd  sizeInBytes=4
	load	[r14+-144],r1
	store	r1,[r15+0]
!   Call the function
	mov	456,r13		! source line 456
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   _temp_896 = _StringConst_161
	set	_StringConst_161,r1
	store	r1,[r14+-56]
!   Prepare Argument: offset=8  value=_temp_896  sizeInBytes=4
	load	[r14+-56],r1
	store	r1,[r15+0]
!   Call the function
	mov	457,r13		! source line 457
	mov	"\0\0CE",r10
	call	print
	jmp	_Label_897
_Label_894:
! ELSE...
	mov	458,r13		! source line 458
	mov	"\0\0EL",r10
! IF STATEMENT...
	mov	458,r13		! source line 458
	mov	"\0\0IF",r10
!   if fd == i then goto _Label_899		(int)
	load	[r14+-144],r1
	load	[r14+-136],r2
	cmp	r1,r2
	be	_Label_899
!	jmp	_Label_898
_Label_898:
! THEN...
	mov	459,r13		! source line 459
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_900 = _StringConst_162
	set	_StringConst_162,r1
	store	r1,[r14+-52]
!   Prepare Argument: offset=8  value=_temp_900  sizeInBytes=4
	load	[r14+-52],r1
	store	r1,[r15+0]
!   Call the function
	mov	459,r13		! source line 459
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=fd  sizeInBytes=4
	load	[r14+-144],r1
	store	r1,[r15+0]
!   Call the function
	mov	460,r13		! source line 460
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   _temp_901 = _StringConst_163
	set	_StringConst_163,r1
	store	r1,[r14+-48]
!   Prepare Argument: offset=8  value=_temp_901  sizeInBytes=4
	load	[r14+-48],r1
	store	r1,[r15+0]
!   Call the function
	mov	461,r13		! source line 461
	mov	"\0\0CE",r10
	call	print
! END IF...
_Label_899:
! END IF...
_Label_897:
!   Increment the FOR-LOOP index variable and jump back
_Label_888:
!   i = i + 1
	load	[r14+-136],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-136]
	jmp	_Label_886
! END FOR
_Label_889:
! CALL STATEMENT...
!   _temp_902 = _StringConst_164
	set	_StringConst_164,r1
	store	r1,[r14+-44]
!   Prepare Argument: offset=8  value=_temp_902  sizeInBytes=4
	load	[r14+-44],r1
	store	r1,[r15+0]
!   Call the function
	mov	465,r13		! source line 465
	mov	"\0\0CE",r10
	call	print
! ASSIGNMENT STATEMENT...
	mov	466,r13		! source line 466
	mov	"\0\0AS",r10
!   _temp_903 = _StringConst_165
	set	_StringConst_165,r1
	store	r1,[r14+-40]
!   Prepare Argument: offset=8  value=_temp_903  sizeInBytes=4
	load	[r14+-40],r1
	store	r1,[r15+0]
!   Call the function
	mov	466,r13		! source line 466
	mov	"\0\0CA",r10
	call	_P_UserSystem_Sys_Open
!   Retrieve Result: targetName=fd  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-144]
! IF STATEMENT...
	mov	467,r13		! source line 467
	mov	"\0\0IF",r10
!   if fd != -1 then goto _Label_905		(int)
	load	[r14+-144],r1
	mov	-1,r2
	cmp	r1,r2
	bne	_Label_905
!	jmp	_Label_904
_Label_904:
! THEN...
	mov	468,r13		! source line 468
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_906 = _StringConst_166
	set	_StringConst_166,r1
	store	r1,[r14+-36]
!   Prepare Argument: offset=8  value=_temp_906  sizeInBytes=4
	load	[r14+-36],r1
	store	r1,[r15+0]
!   Call the function
	mov	468,r13		! source line 468
	mov	"\0\0CE",r10
	call	print
	jmp	_Label_907
_Label_905:
! ELSE...
	mov	470,r13		! source line 470
	mov	"\0\0EL",r10
! CALL STATEMENT...
!   _temp_908 = _StringConst_167
	set	_StringConst_167,r1
	store	r1,[r14+-32]
!   Prepare Argument: offset=8  value=_temp_908  sizeInBytes=4
	load	[r14+-32],r1
	store	r1,[r15+0]
!   Call the function
	mov	470,r13		! source line 470
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=fd  sizeInBytes=4
	load	[r14+-144],r1
	store	r1,[r15+0]
!   Call the function
	mov	471,r13		! source line 471
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   _temp_909 = _StringConst_168
	set	_StringConst_168,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=8  value=_temp_909  sizeInBytes=4
	load	[r14+-28],r1
	store	r1,[r15+0]
!   Call the function
	mov	472,r13		! source line 472
	mov	"\0\0CE",r10
	call	print
! END IF...
_Label_907:
! CALL STATEMENT...
!   _temp_910 = _StringConst_169
	set	_StringConst_169,r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=8  value=_temp_910  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+0]
!   Call the function
	mov	476,r13		! source line 476
	mov	"\0\0CE",r10
	call	print
! FOR STATEMENT...
	mov	477,r13		! source line 477
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_915 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-20]
!   Calculate and save the FOR-LOOP ending value
!   _temp_916 = 9		(4 bytes)
	mov	9,r1
	store	r1,[r14+-16]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_915  (sizeInBytes=4)
	load	[r14+-20],r1
	store	r1,[r14+-136]
_Label_911:
!   Perform the FOR-LOOP termination test
!   if i > _temp_916 then goto _Label_914		
	load	[r14+-136],r1
	load	[r14+-16],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_914
_Label_912:
	mov	477,r13		! source line 477
	mov	"\0\0FB",r10
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=i  sizeInBytes=4
	load	[r14+-136],r1
	store	r1,[r15+0]
!   Call the function
	mov	478,r13		! source line 478
	mov	"\0\0CA",r10
	call	_P_UserSystem_Sys_Close
!   Increment the FOR-LOOP index variable and jump back
_Label_913:
!   i = i + 1
	load	[r14+-136],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-136]
	jmp	_Label_911
! END FOR
_Label_914:
! CALL STATEMENT...
!   _temp_917 = _StringConst_170
	set	_StringConst_170,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_917  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	481,r13		! source line 481
	mov	"\0\0CE",r10
	call	print
! RETURN STATEMENT...
	mov	481,r13		! source line 481
	mov	"\0\0RE",r10
	add	r15,144,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__function_248_OpenCloseTerminalTest:
	.word	_sourceFileName
	.word	_Label_918
	.word	0		! total size of parameters
	.word	140		! frame size = 140
	.word	_Label_919
	.word	-12
	.word	4
	.word	_Label_920
	.word	-16
	.word	4
	.word	_Label_921
	.word	-20
	.word	4
	.word	_Label_922
	.word	-24
	.word	4
	.word	_Label_923
	.word	-28
	.word	4
	.word	_Label_924
	.word	-32
	.word	4
	.word	_Label_925
	.word	-36
	.word	4
	.word	_Label_926
	.word	-40
	.word	4
	.word	_Label_927
	.word	-44
	.word	4
	.word	_Label_928
	.word	-48
	.word	4
	.word	_Label_929
	.word	-52
	.word	4
	.word	_Label_930
	.word	-56
	.word	4
	.word	_Label_931
	.word	-60
	.word	4
	.word	_Label_932
	.word	-64
	.word	4
	.word	_Label_933
	.word	-68
	.word	4
	.word	_Label_934
	.word	-72
	.word	4
	.word	_Label_935
	.word	-76
	.word	4
	.word	_Label_936
	.word	-80
	.word	4
	.word	_Label_937
	.word	-84
	.word	4
	.word	_Label_938
	.word	-88
	.word	4
	.word	_Label_939
	.word	-92
	.word	4
	.word	_Label_940
	.word	-96
	.word	4
	.word	_Label_941
	.word	-100
	.word	4
	.word	_Label_942
	.word	-104
	.word	4
	.word	_Label_943
	.word	-108
	.word	4
	.word	_Label_944
	.word	-112
	.word	4
	.word	_Label_945
	.word	-116
	.word	4
	.word	_Label_946
	.word	-120
	.word	4
	.word	_Label_947
	.word	-124
	.word	4
	.word	_Label_948
	.word	-128
	.word	4
	.word	_Label_949
	.word	-132
	.word	4
	.word	_Label_950
	.word	-136
	.word	4
	.word	_Label_951
	.word	-140
	.word	4
	.word	_Label_952
	.word	-144
	.word	4
	.word	0
_Label_918:
	.ascii	"OpenCloseTerminalTest\0"
	.align
_Label_919:
	.byte	'?'
	.ascii	"_temp_917\0"
	.align
_Label_920:
	.byte	'?'
	.ascii	"_temp_916\0"
	.align
_Label_921:
	.byte	'?'
	.ascii	"_temp_915\0"
	.align
_Label_922:
	.byte	'?'
	.ascii	"_temp_910\0"
	.align
_Label_923:
	.byte	'?'
	.ascii	"_temp_909\0"
	.align
_Label_924:
	.byte	'?'
	.ascii	"_temp_908\0"
	.align
_Label_925:
	.byte	'?'
	.ascii	"_temp_906\0"
	.align
_Label_926:
	.byte	'?'
	.ascii	"_temp_903\0"
	.align
_Label_927:
	.byte	'?'
	.ascii	"_temp_902\0"
	.align
_Label_928:
	.byte	'?'
	.ascii	"_temp_901\0"
	.align
_Label_929:
	.byte	'?'
	.ascii	"_temp_900\0"
	.align
_Label_930:
	.byte	'?'
	.ascii	"_temp_896\0"
	.align
_Label_931:
	.byte	'?'
	.ascii	"_temp_895\0"
	.align
_Label_932:
	.byte	'?'
	.ascii	"_temp_892\0"
	.align
_Label_933:
	.byte	'?'
	.ascii	"_temp_891\0"
	.align
_Label_934:
	.byte	'?'
	.ascii	"_temp_890\0"
	.align
_Label_935:
	.byte	'?'
	.ascii	"_temp_885\0"
	.align
_Label_936:
	.byte	'?'
	.ascii	"_temp_884\0"
	.align
_Label_937:
	.byte	'?'
	.ascii	"_temp_883\0"
	.align
_Label_938:
	.byte	'?'
	.ascii	"_temp_878\0"
	.align
_Label_939:
	.byte	'?'
	.ascii	"_temp_877\0"
	.align
_Label_940:
	.byte	'?'
	.ascii	"_temp_876\0"
	.align
_Label_941:
	.byte	'?'
	.ascii	"_temp_872\0"
	.align
_Label_942:
	.byte	'?'
	.ascii	"_temp_871\0"
	.align
_Label_943:
	.byte	'?'
	.ascii	"_temp_868\0"
	.align
_Label_944:
	.byte	'?'
	.ascii	"_temp_867\0"
	.align
_Label_945:
	.byte	'?'
	.ascii	"_temp_866\0"
	.align
_Label_946:
	.byte	'?'
	.ascii	"_temp_861\0"
	.align
_Label_947:
	.byte	'?'
	.ascii	"_temp_860\0"
	.align
_Label_948:
	.byte	'?'
	.ascii	"_temp_859\0"
	.align
_Label_949:
	.byte	'?'
	.ascii	"_temp_854\0"
	.align
_Label_950:
	.byte	'I'
	.ascii	"i\0"
	.align
_Label_951:
	.byte	'I'
	.ascii	"j\0"
	.align
_Label_952:
	.byte	'I'
	.ascii	"fd\0"
	.align
! 
! ===============  FUNCTION TerminalErrorTest  ===============
! 
_function_247_TerminalErrorTest:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__function_247_TerminalErrorTest,r1
	push	r1
	mov	82,r1
_Label_1286:
	push	r0
	sub	r1,1,r1
	bne	_Label_1286
	mov	487,r13		! source line 487
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   _temp_953 = _StringConst_171
	set	_StringConst_171,r1
	store	r1,[r14+-304]
!   Prepare Argument: offset=8  value=_temp_953  sizeInBytes=4
	load	[r14+-304],r1
	store	r1,[r15+0]
!   Call the function
	mov	495,r13		! source line 495
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_954 = _StringConst_172
	set	_StringConst_172,r1
	store	r1,[r14+-300]
!   Prepare Argument: offset=8  value=_temp_954  sizeInBytes=4
	load	[r14+-300],r1
	store	r1,[r15+0]
!   Call the function
	mov	496,r13		! source line 496
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_955 = _StringConst_173
	set	_StringConst_173,r1
	store	r1,[r14+-296]
!   Prepare Argument: offset=8  value=_temp_955  sizeInBytes=4
	load	[r14+-296],r1
	store	r1,[r15+0]
!   Call the function
	mov	498,r13		! source line 498
	mov	"\0\0CE",r10
	call	print
! ASSIGNMENT STATEMENT...
	mov	499,r13		! source line 499
	mov	"\0\0AS",r10
!   _temp_956 = _StringConst_174
	set	_StringConst_174,r1
	store	r1,[r14+-292]
!   Prepare Argument: offset=8  value=_temp_956  sizeInBytes=4
	load	[r14+-292],r1
	store	r1,[r15+0]
!   Call the function
	mov	499,r13		! source line 499
	mov	"\0\0CA",r10
	call	_P_UserSystem_Sys_Open
!   Retrieve Result: targetName=fd  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-312]
! IF STATEMENT...
	mov	500,r13		! source line 500
	mov	"\0\0IF",r10
!   if fd >= 0 then goto _Label_958		(int)
	load	[r14+-312],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_958
!	jmp	_Label_957
_Label_957:
! THEN...
	mov	501,r13		! source line 501
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_959 = _StringConst_175
	set	_StringConst_175,r1
	store	r1,[r14+-288]
!   Prepare Argument: offset=8  value=_temp_959  sizeInBytes=4
	load	[r14+-288],r1
	store	r1,[r15+0]
!   Call the function
	mov	501,r13		! source line 501
	mov	"\0\0CE",r10
	call	print
! RETURN STATEMENT...
	mov	502,r13		! source line 502
	mov	"\0\0RE",r10
	add	r15,332,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_958:
! CALL STATEMENT...
!   _temp_960 = _StringConst_176
	set	_StringConst_176,r1
	store	r1,[r14+-284]
!   Prepare Argument: offset=8  value=_temp_960  sizeInBytes=4
	load	[r14+-284],r1
	store	r1,[r15+0]
!   Call the function
	mov	505,r13		! source line 505
	mov	"\0\0CE",r10
	call	print
! ASSIGNMENT STATEMENT...
	mov	506,r13		! source line 506
	mov	"\0\0AS",r10
!   _temp_962 = &_Global_bigBuffer
	set	_Global_bigBuffer,r1
	store	r1,[r14+-276]
!   Move address of _temp_962 [0 ] into _temp_963
!     make sure index expr is >= 0
	mov	0,r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-276],r1
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
	store	r2,[r14+-272]
!   _temp_961 = _temp_963		(4 bytes)
	load	[r14+-272],r1
	store	r1,[r14+-280]
!   Prepare Argument: offset=8  value=fd  sizeInBytes=4
	load	[r14+-312],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=_temp_961  sizeInBytes=4
	load	[r14+-280],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=-1  sizeInBytes=4
	mov	-1,r1
	store	r1,[r15+8]
!   Call the function
	mov	506,r13		! source line 506
	mov	"\0\0CA",r10
	call	_P_UserSystem_Sys_Read
!   Retrieve Result: targetName=i  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-308]
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=i  sizeInBytes=4
	load	[r14+-308],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=-1  sizeInBytes=4
	mov	-1,r1
	store	r1,[r15+4]
!   Call the function
	mov	507,r13		! source line 507
	mov	"\0\0CA",r10
	call	_function_246_Check
! CALL STATEMENT...
!   _temp_964 = _StringConst_177
	set	_StringConst_177,r1
	store	r1,[r14+-268]
!   Prepare Argument: offset=8  value=_temp_964  sizeInBytes=4
	load	[r14+-268],r1
	store	r1,[r15+0]
!   Call the function
	mov	509,r13		! source line 509
	mov	"\0\0CE",r10
	call	print
! ASSIGNMENT STATEMENT...
	mov	510,r13		! source line 510
	mov	"\0\0AS",r10
!   _temp_966 = &_Global_bigBuffer
	set	_Global_bigBuffer,r1
	store	r1,[r14+-260]
!   Move address of _temp_966 [0 ] into _temp_967
!     make sure index expr is >= 0
	mov	0,r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-260],r1
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
	store	r2,[r14+-256]
!   _temp_965 = _temp_967		(4 bytes)
	load	[r14+-256],r1
	store	r1,[r14+-264]
!   Prepare Argument: offset=8  value=fd  sizeInBytes=4
	load	[r14+-312],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=_temp_965  sizeInBytes=4
	load	[r14+-264],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=-123123123  sizeInBytes=4
	set	-123123123,r1
	store	r1,[r15+8]
!   Call the function
	mov	510,r13		! source line 510
	mov	"\0\0CA",r10
	call	_P_UserSystem_Sys_Read
!   Retrieve Result: targetName=i  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-308]
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=i  sizeInBytes=4
	load	[r14+-308],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=-1  sizeInBytes=4
	mov	-1,r1
	store	r1,[r15+4]
!   Call the function
	mov	511,r13		! source line 511
	mov	"\0\0CA",r10
	call	_function_246_Check
! CALL STATEMENT...
!   _temp_968 = _StringConst_178
	set	_StringConst_178,r1
	store	r1,[r14+-252]
!   Prepare Argument: offset=8  value=_temp_968  sizeInBytes=4
	load	[r14+-252],r1
	store	r1,[r15+0]
!   Call the function
	mov	513,r13		! source line 513
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_969 = _StringConst_179
	set	_StringConst_179,r1
	store	r1,[r14+-248]
!   Prepare Argument: offset=8  value=_temp_969  sizeInBytes=4
	load	[r14+-248],r1
	store	r1,[r15+0]
!   Call the function
	mov	514,r13		! source line 514
	mov	"\0\0CE",r10
	call	print
! ASSIGNMENT STATEMENT...
	mov	515,r13		! source line 515
	mov	"\0\0AS",r10
!   _temp_970 = main
	set	main,r1
	store	r1,[r14+-244]
!   Prepare Argument: offset=8  value=fd  sizeInBytes=4
	load	[r14+-312],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=_temp_970  sizeInBytes=4
	load	[r14+-244],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=1  sizeInBytes=4
	mov	1,r1
	store	r1,[r15+8]
!   Call the function
	mov	515,r13		! source line 515
	mov	"\0\0CA",r10
	call	_P_UserSystem_Sys_Read
!   Retrieve Result: targetName=i  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-308]
! IF STATEMENT...
	mov	517,r13		! source line 517
	mov	"\0\0IF",r10
!   if i == -1 then goto _Label_972		(int)
	load	[r14+-308],r1
	mov	-1,r2
	cmp	r1,r2
	be	_Label_972
!	jmp	_Label_973
_Label_973:
!   if intIsZero (i) then goto _Label_972
	load	[r14+-308],r1
	cmp	r1,r0
	be	_Label_972
!	jmp	_Label_971
_Label_971:
! THEN...
	mov	518,r13		! source line 518
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_974 = _StringConst_180
	set	_StringConst_180,r1
	store	r1,[r14+-240]
!   Prepare Argument: offset=8  value=_temp_974  sizeInBytes=4
	load	[r14+-240],r1
	store	r1,[r15+0]
!   Call the function
	mov	518,r13		! source line 518
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=i  sizeInBytes=4
	load	[r14+-308],r1
	store	r1,[r15+0]
!   Call the function
	mov	519,r13		! source line 519
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   _temp_975 = _StringConst_181
	set	_StringConst_181,r1
	store	r1,[r14+-236]
!   Prepare Argument: offset=8  value=_temp_975  sizeInBytes=4
	load	[r14+-236],r1
	store	r1,[r15+0]
!   Call the function
	mov	520,r13		! source line 520
	mov	"\0\0CE",r10
	call	print
! END IF...
_Label_972:
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=fd  sizeInBytes=4
	load	[r14+-312],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=97  sizeInBytes=1
	mov	97,r1
	storeb	r1,[r15+4]
!   Call the function
	mov	522,r13		! source line 522
	mov	"\0\0CA",r10
	call	_function_245_NextInput
! CALL STATEMENT...
!   _temp_976 = _StringConst_182
	set	_StringConst_182,r1
	store	r1,[r14+-232]
!   Prepare Argument: offset=8  value=_temp_976  sizeInBytes=4
	load	[r14+-232],r1
	store	r1,[r15+0]
!   Call the function
	mov	524,r13		! source line 524
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_977 = _StringConst_183
	set	_StringConst_183,r1
	store	r1,[r14+-228]
!   Prepare Argument: offset=8  value=_temp_977  sizeInBytes=4
	load	[r14+-228],r1
	store	r1,[r15+0]
!   Call the function
	mov	525,r13		! source line 525
	mov	"\0\0CE",r10
	call	print
! ASSIGNMENT STATEMENT...
	mov	526,r13		! source line 526
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=fd  sizeInBytes=4
	load	[r14+-312],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=268435455  sizeInBytes=4
	set	268435455,r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=1  sizeInBytes=4
	mov	1,r1
	store	r1,[r15+8]
!   Call the function
	mov	526,r13		! source line 526
	mov	"\0\0CA",r10
	call	_P_UserSystem_Sys_Read
!   Retrieve Result: targetName=i  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-308]
! IF STATEMENT...
	mov	528,r13		! source line 528
	mov	"\0\0IF",r10
!   if i == -1 then goto _Label_979		(int)
	load	[r14+-308],r1
	mov	-1,r2
	cmp	r1,r2
	be	_Label_979
!	jmp	_Label_980
_Label_980:
!   if intIsZero (i) then goto _Label_979
	load	[r14+-308],r1
	cmp	r1,r0
	be	_Label_979
!	jmp	_Label_978
_Label_978:
! THEN...
	mov	529,r13		! source line 529
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_981 = _StringConst_184
	set	_StringConst_184,r1
	store	r1,[r14+-224]
!   Prepare Argument: offset=8  value=_temp_981  sizeInBytes=4
	load	[r14+-224],r1
	store	r1,[r15+0]
!   Call the function
	mov	529,r13		! source line 529
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=i  sizeInBytes=4
	load	[r14+-308],r1
	store	r1,[r15+0]
!   Call the function
	mov	530,r13		! source line 530
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   _temp_982 = _StringConst_185
	set	_StringConst_185,r1
	store	r1,[r14+-220]
!   Prepare Argument: offset=8  value=_temp_982  sizeInBytes=4
	load	[r14+-220],r1
	store	r1,[r15+0]
!   Call the function
	mov	531,r13		! source line 531
	mov	"\0\0CE",r10
	call	print
! END IF...
_Label_979:
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=fd  sizeInBytes=4
	load	[r14+-312],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=120  sizeInBytes=1
	mov	120,r1
	storeb	r1,[r15+4]
!   Call the function
	mov	533,r13		! source line 533
	mov	"\0\0CA",r10
	call	_function_245_NextInput
! ASSIGNMENT STATEMENT...
	mov	537,r13		! source line 537
	mov	"\0\0AS",r10
!   _temp_984 = &fd
	add	r14,-312,r1
	store	r1,[r14+-212]
!   _temp_983 = _temp_984 AND -8192		(int)
	load	[r14+-212],r1
	mov	-8192,r2
	and	r1,r2,r1
	store	r1,[r14+-216]
!   p = _temp_983 OR 8188		(int)
	load	[r14+-216],r1
	mov	8188,r2
	or	r1,r2,r1
	store	r1,[r14+-316]
! CALL STATEMENT...
!   _temp_985 = _StringConst_186
	set	_StringConst_186,r1
	store	r1,[r14+-208]
!   Prepare Argument: offset=8  value=_temp_985  sizeInBytes=4
	load	[r14+-208],r1
	store	r1,[r15+0]
!   Call the function
	mov	545,r13		! source line 545
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_986 = _StringConst_187
	set	_StringConst_187,r1
	store	r1,[r14+-204]
!   Prepare Argument: offset=8  value=_temp_986  sizeInBytes=4
	load	[r14+-204],r1
	store	r1,[r15+0]
!   Call the function
	mov	546,r13		! source line 546
	mov	"\0\0CE",r10
	call	print
! ASSIGNMENT STATEMENT...
	mov	547,r13		! source line 547
	mov	"\0\0AS",r10
!   if intIsZero (p) then goto _runtimeErrorNullPointer
	load	[r14+-316],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Data Move: save = *p  (sizeInBytes=4)
	load	[r14+-316],r1
	load	[r1],r1
	store	r1,[r14+-320]
! ASSIGNMENT STATEMENT...
	mov	548,r13		! source line 548
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=fd  sizeInBytes=4
	load	[r14+-312],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=p  sizeInBytes=4
	load	[r14+-316],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=5  sizeInBytes=4
	mov	5,r1
	store	r1,[r15+8]
!   Call the function
	mov	548,r13		! source line 548
	mov	"\0\0CA",r10
	call	_P_UserSystem_Sys_Read
!   Retrieve Result: targetName=i  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-308]
! IF STATEMENT...
	mov	549,r13		! source line 549
	mov	"\0\0IF",r10
!   if i != 4 then goto _Label_988		(int)
	load	[r14+-308],r1
	mov	4,r2
	cmp	r1,r2
	bne	_Label_988
!	jmp	_Label_987
_Label_987:
! THEN...
	mov	550,r13		! source line 550
	mov	"\0\0TN",r10
! IF STATEMENT...
	mov	550,r13		! source line 550
	mov	"\0\0IF",r10
!   if intIsZero (p) then goto _runtimeErrorNullPointer
	load	[r14+-316],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Data Move: _temp_991 = *p  (sizeInBytes=4)
	load	[r14+-316],r1
	load	[r1],r1
	store	r1,[r14+-200]
!   if 825373492 == _temp_991 then goto _Label_990		(int)
	set	825373492,r1
	load	[r14+-200],r2
	cmp	r1,r2
	be	_Label_990
!	jmp	_Label_989
_Label_989:
! THEN...
	mov	551,r13		! source line 551
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_992 = _StringConst_188
	set	_StringConst_188,r1
	store	r1,[r14+-196]
!   Prepare Argument: offset=8  value=_temp_992  sizeInBytes=4
	load	[r14+-196],r1
	store	r1,[r15+0]
!   Call the function
	mov	551,r13		! source line 551
	mov	"\0\0CE",r10
	call	print
! END IF...
_Label_990:
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=fd  sizeInBytes=4
	load	[r14+-312],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=53  sizeInBytes=1
	mov	53,r1
	storeb	r1,[r15+4]
!   Call the function
	mov	553,r13		! source line 553
	mov	"\0\0CA",r10
	call	_function_245_NextInput
	jmp	_Label_993
_Label_988:
! ELSE...
	mov	554,r13		! source line 554
	mov	"\0\0EL",r10
! IF STATEMENT...
	mov	554,r13		! source line 554
	mov	"\0\0IF",r10
!   if i != -1 then goto _Label_995		(int)
	load	[r14+-308],r1
	mov	-1,r2
	cmp	r1,r2
	bne	_Label_995
!	jmp	_Label_994
_Label_994:
! THEN...
	mov	555,r13		! source line 555
	mov	"\0\0TN",r10
! IF STATEMENT...
	mov	555,r13		! source line 555
	mov	"\0\0IF",r10
!   if intIsZero (p) then goto _runtimeErrorNullPointer
	load	[r14+-316],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Data Move: _temp_998 = *p  (sizeInBytes=4)
	load	[r14+-316],r1
	load	[r1],r1
	store	r1,[r14+-192]
!   if save == _temp_998 then goto _Label_997		(int)
	load	[r14+-320],r1
	load	[r14+-192],r2
	cmp	r1,r2
	be	_Label_997
!	jmp	_Label_996
_Label_996:
! THEN...
	mov	556,r13		! source line 556
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_999 = _StringConst_189
	set	_StringConst_189,r1
	store	r1,[r14+-188]
!   Prepare Argument: offset=8  value=_temp_999  sizeInBytes=4
	load	[r14+-188],r1
	store	r1,[r15+0]
!   Call the function
	mov	556,r13		! source line 556
	mov	"\0\0CE",r10
	call	print
! END IF...
_Label_997:
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=fd  sizeInBytes=4
	load	[r14+-312],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=49  sizeInBytes=1
	mov	49,r1
	storeb	r1,[r15+4]
!   Call the function
	mov	558,r13		! source line 558
	mov	"\0\0CA",r10
	call	_function_245_NextInput
	jmp	_Label_1000
_Label_995:
! ELSE...
	mov	560,r13		! source line 560
	mov	"\0\0EL",r10
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=i  sizeInBytes=4
	load	[r14+-308],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=-1  sizeInBytes=4
	mov	-1,r1
	store	r1,[r15+4]
!   Call the function
	mov	560,r13		! source line 560
	mov	"\0\0CA",r10
	call	_function_246_Check
! END IF...
_Label_1000:
! END IF...
_Label_993:
! ASSIGNMENT STATEMENT...
	mov	562,r13		! source line 562
	mov	"\0\0AS",r10
!   if intIsZero (p) then goto _runtimeErrorNullPointer
	load	[r14+-316],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Data Move: *p = save  (sizeInBytes=4)
	load	[r14+-320],r1
	load	[r14+-316],r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	566,r13		! source line 566
	mov	"\0\0AS",r10
!   _temp_1003 = &_Global_bigBuffer
	set	_Global_bigBuffer,r1
	store	r1,[r14+-176]
!   Move address of _temp_1003 [8999 ] into _temp_1004
!     make sure index expr is >= 0
	mov	8999,r2
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
	set	1,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-172]
!   _temp_1002 = _temp_1004		(4 bytes)
	load	[r14+-172],r1
	store	r1,[r14+-180]
!   _temp_1001 = _temp_1002 - 10		(int)
	load	[r14+-180],r1
	mov	10,r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-184]
!   p = _temp_1001 AND -8192		(int)
	load	[r14+-184],r1
	mov	-8192,r2
	and	r1,r2,r1
	store	r1,[r14+-316]
! ASSIGNMENT STATEMENT...
	mov	567,r13		! source line 567
	mov	"\0\0AS",r10
!   charPtr = p - 3		(int)
	load	[r14+-316],r1
	mov	3,r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-324]
! CALL STATEMENT...
!   _temp_1005 = _StringConst_190
	set	_StringConst_190,r1
	store	r1,[r14+-168]
!   Prepare Argument: offset=8  value=_temp_1005  sizeInBytes=4
	load	[r14+-168],r1
	store	r1,[r15+0]
!   Call the function
	mov	572,r13		! source line 572
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_1006 = _StringConst_191
	set	_StringConst_191,r1
	store	r1,[r14+-164]
!   Prepare Argument: offset=8  value=_temp_1006  sizeInBytes=4
	load	[r14+-164],r1
	store	r1,[r15+0]
!   Call the function
	mov	573,r13		! source line 573
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_1007 = charPtr - 3		(int)
	load	[r14+-324],r1
	mov	3,r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-160]
!   _temp_1009 = _StringConst_192
	set	_StringConst_192,r1
	store	r1,[r14+-152]
!   if intIsZero (_temp_1009) then goto _runtimeErrorNullPointer
	load	[r14+-152],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Move address of _temp_1009 [0 ] into _temp_1010
!     make sure index expr is >= 0
	mov	0,r2
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
	set	1,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-148]
!   _temp_1008 = _temp_1010		(4 bytes)
	load	[r14+-148],r1
	store	r1,[r14+-156]
!   Prepare Argument: offset=8  value=_temp_1007  sizeInBytes=4
	load	[r14+-160],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=_temp_1008  sizeInBytes=4
	load	[r14+-156],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=13  sizeInBytes=4
	mov	13,r1
	store	r1,[r15+8]
!   Call the function
	mov	574,r13		! source line 574
	mov	"\0\0CE",r10
	call	MemoryCopy
! ASSIGNMENT STATEMENT...
	mov	575,r13		! source line 575
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=fd  sizeInBytes=4
	load	[r14+-312],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=charPtr  sizeInBytes=4
	load	[r14+-324],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=7  sizeInBytes=4
	mov	7,r1
	store	r1,[r15+8]
!   Call the function
	mov	575,r13		! source line 575
	mov	"\0\0CA",r10
	call	_P_UserSystem_Sys_Read
!   Retrieve Result: targetName=i  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-308]
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=i  sizeInBytes=4
	load	[r14+-308],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=7  sizeInBytes=4
	mov	7,r1
	store	r1,[r15+4]
!   Call the function
	mov	576,r13		! source line 576
	mov	"\0\0CA",r10
	call	_function_246_Check
! IF STATEMENT...
	mov	577,r13		! source line 577
	mov	"\0\0IF",r10
!   _temp_1014 = charPtr - 3		(int)
	load	[r14+-324],r1
	mov	3,r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-144]
!   _temp_1016 = _StringConst_193
	set	_StringConst_193,r1
	store	r1,[r14+-136]
!   if intIsZero (_temp_1016) then goto _runtimeErrorNullPointer
	load	[r14+-136],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Move address of _temp_1016 [0 ] into _temp_1017
!     make sure index expr is >= 0
	mov	0,r2
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
	set	1,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-132]
!   _temp_1015 = _temp_1017		(4 bytes)
	load	[r14+-132],r1
	store	r1,[r14+-140]
!   Prepare Argument: offset=8  value=_temp_1014  sizeInBytes=4
	load	[r14+-144],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=_temp_1015  sizeInBytes=4
	load	[r14+-140],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=13  sizeInBytes=4
	mov	13,r1
	store	r1,[r15+8]
!   Call the function
	mov	577,r13		! source line 577
	mov	"\0\0CA",r10
	call	_P_UserSystem_MemoryEqual
!   Retrieve Result: targetName=_temp_1013  sizeInBytes=1
	loadb	[r15],r1
	storeb	r1,[r14+-9]
!   if _temp_1013 then goto _Label_1012 else goto _Label_1011
	loadb	[r14+-9],r1
	cmp	r1,0
	be	_Label_1011
	jmp	_Label_1012
_Label_1011:
! THEN...
	mov	578,r13		! source line 578
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_1018 = _StringConst_194
	set	_StringConst_194,r1
	store	r1,[r14+-128]
!   Prepare Argument: offset=8  value=_temp_1018  sizeInBytes=4
	load	[r14+-128],r1
	store	r1,[r15+0]
!   Call the function
	mov	578,r13		! source line 578
	mov	"\0\0CE",r10
	call	print
! END IF...
_Label_1012:
! CALL STATEMENT...
!   _temp_1019 = _StringConst_195
	set	_StringConst_195,r1
	store	r1,[r14+-124]
!   Prepare Argument: offset=8  value=_temp_1019  sizeInBytes=4
	load	[r14+-124],r1
	store	r1,[r15+0]
!   Call the function
	mov	581,r13		! source line 581
	mov	"\0\0CE",r10
	call	print
! ASSIGNMENT STATEMENT...
	mov	582,r13		! source line 582
	mov	"\0\0AS",r10
!   _temp_1021 = &_Global_bigBuffer
	set	_Global_bigBuffer,r1
	store	r1,[r14+-116]
!   Move address of _temp_1021 [0 ] into _temp_1022
!     make sure index expr is >= 0
	mov	0,r2
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
	set	1,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-112]
!   _temp_1020 = _temp_1022		(4 bytes)
	load	[r14+-112],r1
	store	r1,[r14+-120]
!   Prepare Argument: offset=8  value=fd  sizeInBytes=4
	load	[r14+-312],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=_temp_1020  sizeInBytes=4
	load	[r14+-120],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=-1  sizeInBytes=4
	mov	-1,r1
	store	r1,[r15+8]
!   Call the function
	mov	582,r13		! source line 582
	mov	"\0\0CA",r10
	call	_P_UserSystem_Sys_Write
!   Retrieve Result: targetName=i  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-308]
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=i  sizeInBytes=4
	load	[r14+-308],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=-1  sizeInBytes=4
	mov	-1,r1
	store	r1,[r15+4]
!   Call the function
	mov	583,r13		! source line 583
	mov	"\0\0CA",r10
	call	_function_246_Check
! CALL STATEMENT...
!   _temp_1023 = _StringConst_196
	set	_StringConst_196,r1
	store	r1,[r14+-108]
!   Prepare Argument: offset=8  value=_temp_1023  sizeInBytes=4
	load	[r14+-108],r1
	store	r1,[r15+0]
!   Call the function
	mov	585,r13		! source line 585
	mov	"\0\0CE",r10
	call	print
! ASSIGNMENT STATEMENT...
	mov	586,r13		! source line 586
	mov	"\0\0AS",r10
!   _temp_1025 = &_Global_bigBuffer
	set	_Global_bigBuffer,r1
	store	r1,[r14+-100]
!   Move address of _temp_1025 [0 ] into _temp_1026
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
	set	1,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-96]
!   _temp_1024 = _temp_1026		(4 bytes)
	load	[r14+-96],r1
	store	r1,[r14+-104]
!   Prepare Argument: offset=8  value=fd  sizeInBytes=4
	load	[r14+-312],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=_temp_1024  sizeInBytes=4
	load	[r14+-104],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=-123123123  sizeInBytes=4
	set	-123123123,r1
	store	r1,[r15+8]
!   Call the function
	mov	586,r13		! source line 586
	mov	"\0\0CA",r10
	call	_P_UserSystem_Sys_Write
!   Retrieve Result: targetName=i  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-308]
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=i  sizeInBytes=4
	load	[r14+-308],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=-1  sizeInBytes=4
	mov	-1,r1
	store	r1,[r15+4]
!   Call the function
	mov	587,r13		! source line 587
	mov	"\0\0CA",r10
	call	_function_246_Check
! CALL STATEMENT...
!   _temp_1027 = _StringConst_197
	set	_StringConst_197,r1
	store	r1,[r14+-92]
!   Prepare Argument: offset=8  value=_temp_1027  sizeInBytes=4
	load	[r14+-92],r1
	store	r1,[r15+0]
!   Call the function
	mov	589,r13		! source line 589
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_1028 = _StringConst_198
	set	_StringConst_198,r1
	store	r1,[r14+-88]
!   Prepare Argument: offset=8  value=_temp_1028  sizeInBytes=4
	load	[r14+-88],r1
	store	r1,[r15+0]
!   Call the function
	mov	590,r13		! source line 590
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_1029 = _StringConst_199
	set	_StringConst_199,r1
	store	r1,[r14+-84]
!   Prepare Argument: offset=8  value=_temp_1029  sizeInBytes=4
	load	[r14+-84],r1
	store	r1,[r15+0]
!   Call the function
	mov	591,r13		! source line 591
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_1030 = charPtr		(4 bytes)
	load	[r14+-324],r1
	store	r1,[r14+-80]
!   _temp_1032 = _StringConst_200
	set	_StringConst_200,r1
	store	r1,[r14+-72]
!   if intIsZero (_temp_1032) then goto _runtimeErrorNullPointer
	load	[r14+-72],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Move address of _temp_1032 [0 ] into _temp_1033
!     make sure index expr is >= 0
	mov	0,r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-72],r1
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
	store	r2,[r14+-68]
!   _temp_1031 = _temp_1033		(4 bytes)
	load	[r14+-68],r1
	store	r1,[r14+-76]
!   Prepare Argument: offset=8  value=_temp_1030  sizeInBytes=4
	load	[r14+-80],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=_temp_1031  sizeInBytes=4
	load	[r14+-76],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=9  sizeInBytes=4
	mov	9,r1
	store	r1,[r15+8]
!   Call the function
	mov	592,r13		! source line 592
	mov	"\0\0CE",r10
	call	MemoryCopy
! ASSIGNMENT STATEMENT...
	mov	593,r13		! source line 593
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=fd  sizeInBytes=4
	load	[r14+-312],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=charPtr  sizeInBytes=4
	load	[r14+-324],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=9  sizeInBytes=4
	mov	9,r1
	store	r1,[r15+8]
!   Call the function
	mov	593,r13		! source line 593
	mov	"\0\0CA",r10
	call	_P_UserSystem_Sys_Write
!   Retrieve Result: targetName=i  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-308]
! CALL STATEMENT...
!   Call the function
	mov	594,r13		! source line 594
	mov	"\0\0CA",r10
	call	_P_UserSystem_nl
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=i  sizeInBytes=4
	load	[r14+-308],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=9  sizeInBytes=4
	mov	9,r1
	store	r1,[r15+4]
!   Call the function
	mov	595,r13		! source line 595
	mov	"\0\0CA",r10
	call	_function_246_Check
! CALL STATEMENT...
!   _temp_1034 = _StringConst_201
	set	_StringConst_201,r1
	store	r1,[r14+-64]
!   Prepare Argument: offset=8  value=_temp_1034  sizeInBytes=4
	load	[r14+-64],r1
	store	r1,[r15+0]
!   Call the function
	mov	597,r13		! source line 597
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_1035 = _StringConst_202
	set	_StringConst_202,r1
	store	r1,[r14+-60]
!   Prepare Argument: offset=8  value=_temp_1035  sizeInBytes=4
	load	[r14+-60],r1
	store	r1,[r15+0]
!   Call the function
	mov	598,r13		! source line 598
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_1036 = _StringConst_203
	set	_StringConst_203,r1
	store	r1,[r14+-56]
!   Prepare Argument: offset=8  value=_temp_1036  sizeInBytes=4
	load	[r14+-56],r1
	store	r1,[r15+0]
!   Call the function
	mov	599,r13		! source line 599
	mov	"\0\0CE",r10
	call	print
! ASSIGNMENT STATEMENT...
	mov	600,r13		! source line 600
	mov	"\0\0AS",r10
!   _temp_1038 = _StringConst_204
	set	_StringConst_204,r1
	store	r1,[r14+-48]
!   if intIsZero (_temp_1038) then goto _runtimeErrorNullPointer
	load	[r14+-48],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Move address of _temp_1038 [0 ] into _temp_1039
!     make sure index expr is >= 0
	mov	0,r2
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
	set	1,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-44]
!   _temp_1037 = _temp_1039		(4 bytes)
	load	[r14+-44],r1
	store	r1,[r14+-52]
!   Prepare Argument: offset=8  value=fd  sizeInBytes=4
	load	[r14+-312],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=_temp_1037  sizeInBytes=4
	load	[r14+-52],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=11  sizeInBytes=4
	mov	11,r1
	store	r1,[r15+8]
!   Call the function
	mov	600,r13		! source line 600
	mov	"\0\0CA",r10
	call	_P_UserSystem_Sys_Write
!   Retrieve Result: targetName=i  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-308]
! CALL STATEMENT...
!   Call the function
	mov	601,r13		! source line 601
	mov	"\0\0CA",r10
	call	_P_UserSystem_nl
! IF STATEMENT...
	mov	602,r13		! source line 602
	mov	"\0\0IF",r10
!   if i == 11 then goto _Label_1041		(int)
	load	[r14+-308],r1
	mov	11,r2
	cmp	r1,r2
	be	_Label_1041
!	jmp	_Label_1040
_Label_1040:
! THEN...
	mov	603,r13		! source line 603
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_1042 = _StringConst_205
	set	_StringConst_205,r1
	store	r1,[r14+-40]
!   Prepare Argument: offset=8  value=_temp_1042  sizeInBytes=4
	load	[r14+-40],r1
	store	r1,[r15+0]
!   Call the function
	mov	603,r13		! source line 603
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=i  sizeInBytes=4
	load	[r14+-308],r1
	store	r1,[r15+0]
!   Call the function
	mov	604,r13		! source line 604
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   _temp_1043 = _StringConst_206
	set	_StringConst_206,r1
	store	r1,[r14+-36]
!   Prepare Argument: offset=8  value=_temp_1043  sizeInBytes=4
	load	[r14+-36],r1
	store	r1,[r15+0]
!   Call the function
	mov	605,r13		! source line 605
	mov	"\0\0CE",r10
	call	print
! END IF...
_Label_1041:
! CALL STATEMENT...
!   _temp_1044 = _StringConst_207
	set	_StringConst_207,r1
	store	r1,[r14+-32]
!   Prepare Argument: offset=8  value=_temp_1044  sizeInBytes=4
	load	[r14+-32],r1
	store	r1,[r15+0]
!   Call the function
	mov	608,r13		! source line 608
	mov	"\0\0CE",r10
	call	print
! ASSIGNMENT STATEMENT...
	mov	609,r13		! source line 609
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=fd  sizeInBytes=4
	load	[r14+-312],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=268435455  sizeInBytes=4
	set	268435455,r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=1  sizeInBytes=4
	mov	1,r1
	store	r1,[r15+8]
!   Call the function
	mov	609,r13		! source line 609
	mov	"\0\0CA",r10
	call	_P_UserSystem_Sys_Write
!   Retrieve Result: targetName=i  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-308]
! IF STATEMENT...
	mov	611,r13		! source line 611
	mov	"\0\0IF",r10
!   if i == -1 then goto _Label_1046		(int)
	load	[r14+-308],r1
	mov	-1,r2
	cmp	r1,r2
	be	_Label_1046
!	jmp	_Label_1047
_Label_1047:
!   if intIsZero (i) then goto _Label_1046
	load	[r14+-308],r1
	cmp	r1,r0
	be	_Label_1046
!	jmp	_Label_1045
_Label_1045:
! THEN...
	mov	612,r13		! source line 612
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_1048 = _StringConst_208
	set	_StringConst_208,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=8  value=_temp_1048  sizeInBytes=4
	load	[r14+-28],r1
	store	r1,[r15+0]
!   Call the function
	mov	612,r13		! source line 612
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=i  sizeInBytes=4
	load	[r14+-308],r1
	store	r1,[r15+0]
!   Call the function
	mov	613,r13		! source line 613
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   _temp_1049 = _StringConst_209
	set	_StringConst_209,r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=8  value=_temp_1049  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+0]
!   Call the function
	mov	614,r13		! source line 614
	mov	"\0\0CE",r10
	call	print
	jmp	_Label_1050
_Label_1046:
! ELSE...
	mov	616,r13		! source line 616
	mov	"\0\0EL",r10
! CALL STATEMENT...
!   _temp_1051 = _StringConst_210
	set	_StringConst_210,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_1051  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   Call the function
	mov	616,r13		! source line 616
	mov	"\0\0CE",r10
	call	print
! END IF...
_Label_1050:
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=fd  sizeInBytes=4
	load	[r14+-312],r1
	store	r1,[r15+0]
!   Call the function
	mov	619,r13		! source line 619
	mov	"\0\0CA",r10
	call	_P_UserSystem_Sys_Close
! CALL STATEMENT...
!   _temp_1052 = _StringConst_211
	set	_StringConst_211,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_1052  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+0]
!   Call the function
	mov	621,r13		! source line 621
	mov	"\0\0CE",r10
	call	print
! RETURN STATEMENT...
	mov	621,r13		! source line 621
	mov	"\0\0RE",r10
	add	r15,332,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__function_247_TerminalErrorTest:
	.word	_sourceFileName
	.word	_Label_1053
	.word	0		! total size of parameters
	.word	328		! frame size = 328
	.word	_Label_1054
	.word	-16
	.word	4
	.word	_Label_1055
	.word	-20
	.word	4
	.word	_Label_1056
	.word	-24
	.word	4
	.word	_Label_1057
	.word	-28
	.word	4
	.word	_Label_1058
	.word	-32
	.word	4
	.word	_Label_1059
	.word	-36
	.word	4
	.word	_Label_1060
	.word	-40
	.word	4
	.word	_Label_1061
	.word	-44
	.word	4
	.word	_Label_1062
	.word	-48
	.word	4
	.word	_Label_1063
	.word	-52
	.word	4
	.word	_Label_1064
	.word	-56
	.word	4
	.word	_Label_1065
	.word	-60
	.word	4
	.word	_Label_1066
	.word	-64
	.word	4
	.word	_Label_1067
	.word	-68
	.word	4
	.word	_Label_1068
	.word	-72
	.word	4
	.word	_Label_1069
	.word	-76
	.word	4
	.word	_Label_1070
	.word	-80
	.word	4
	.word	_Label_1071
	.word	-84
	.word	4
	.word	_Label_1072
	.word	-88
	.word	4
	.word	_Label_1073
	.word	-92
	.word	4
	.word	_Label_1074
	.word	-96
	.word	4
	.word	_Label_1075
	.word	-100
	.word	4
	.word	_Label_1076
	.word	-104
	.word	4
	.word	_Label_1077
	.word	-108
	.word	4
	.word	_Label_1078
	.word	-112
	.word	4
	.word	_Label_1079
	.word	-116
	.word	4
	.word	_Label_1080
	.word	-120
	.word	4
	.word	_Label_1081
	.word	-124
	.word	4
	.word	_Label_1082
	.word	-128
	.word	4
	.word	_Label_1083
	.word	-132
	.word	4
	.word	_Label_1084
	.word	-136
	.word	4
	.word	_Label_1085
	.word	-140
	.word	4
	.word	_Label_1086
	.word	-144
	.word	4
	.word	_Label_1087
	.word	-9
	.word	1
	.word	_Label_1088
	.word	-148
	.word	4
	.word	_Label_1089
	.word	-152
	.word	4
	.word	_Label_1090
	.word	-156
	.word	4
	.word	_Label_1091
	.word	-160
	.word	4
	.word	_Label_1092
	.word	-164
	.word	4
	.word	_Label_1093
	.word	-168
	.word	4
	.word	_Label_1094
	.word	-172
	.word	4
	.word	_Label_1095
	.word	-176
	.word	4
	.word	_Label_1096
	.word	-180
	.word	4
	.word	_Label_1097
	.word	-184
	.word	4
	.word	_Label_1098
	.word	-188
	.word	4
	.word	_Label_1099
	.word	-192
	.word	4
	.word	_Label_1100
	.word	-196
	.word	4
	.word	_Label_1101
	.word	-200
	.word	4
	.word	_Label_1102
	.word	-204
	.word	4
	.word	_Label_1103
	.word	-208
	.word	4
	.word	_Label_1104
	.word	-212
	.word	4
	.word	_Label_1105
	.word	-216
	.word	4
	.word	_Label_1106
	.word	-220
	.word	4
	.word	_Label_1107
	.word	-224
	.word	4
	.word	_Label_1108
	.word	-228
	.word	4
	.word	_Label_1109
	.word	-232
	.word	4
	.word	_Label_1110
	.word	-236
	.word	4
	.word	_Label_1111
	.word	-240
	.word	4
	.word	_Label_1112
	.word	-244
	.word	4
	.word	_Label_1113
	.word	-248
	.word	4
	.word	_Label_1114
	.word	-252
	.word	4
	.word	_Label_1115
	.word	-256
	.word	4
	.word	_Label_1116
	.word	-260
	.word	4
	.word	_Label_1117
	.word	-264
	.word	4
	.word	_Label_1118
	.word	-268
	.word	4
	.word	_Label_1119
	.word	-272
	.word	4
	.word	_Label_1120
	.word	-276
	.word	4
	.word	_Label_1121
	.word	-280
	.word	4
	.word	_Label_1122
	.word	-284
	.word	4
	.word	_Label_1123
	.word	-288
	.word	4
	.word	_Label_1124
	.word	-292
	.word	4
	.word	_Label_1125
	.word	-296
	.word	4
	.word	_Label_1126
	.word	-300
	.word	4
	.word	_Label_1127
	.word	-304
	.word	4
	.word	_Label_1128
	.word	-308
	.word	4
	.word	_Label_1129
	.word	-312
	.word	4
	.word	_Label_1130
	.word	-316
	.word	4
	.word	_Label_1131
	.word	-320
	.word	4
	.word	_Label_1132
	.word	-324
	.word	4
	.word	0
_Label_1053:
	.ascii	"TerminalErrorTest\0"
	.align
_Label_1054:
	.byte	'?'
	.ascii	"_temp_1052\0"
	.align
_Label_1055:
	.byte	'?'
	.ascii	"_temp_1051\0"
	.align
_Label_1056:
	.byte	'?'
	.ascii	"_temp_1049\0"
	.align
_Label_1057:
	.byte	'?'
	.ascii	"_temp_1048\0"
	.align
_Label_1058:
	.byte	'?'
	.ascii	"_temp_1044\0"
	.align
_Label_1059:
	.byte	'?'
	.ascii	"_temp_1043\0"
	.align
_Label_1060:
	.byte	'?'
	.ascii	"_temp_1042\0"
	.align
_Label_1061:
	.byte	'?'
	.ascii	"_temp_1039\0"
	.align
_Label_1062:
	.byte	'?'
	.ascii	"_temp_1038\0"
	.align
_Label_1063:
	.byte	'?'
	.ascii	"_temp_1037\0"
	.align
_Label_1064:
	.byte	'?'
	.ascii	"_temp_1036\0"
	.align
_Label_1065:
	.byte	'?'
	.ascii	"_temp_1035\0"
	.align
_Label_1066:
	.byte	'?'
	.ascii	"_temp_1034\0"
	.align
_Label_1067:
	.byte	'?'
	.ascii	"_temp_1033\0"
	.align
_Label_1068:
	.byte	'?'
	.ascii	"_temp_1032\0"
	.align
_Label_1069:
	.byte	'?'
	.ascii	"_temp_1031\0"
	.align
_Label_1070:
	.byte	'?'
	.ascii	"_temp_1030\0"
	.align
_Label_1071:
	.byte	'?'
	.ascii	"_temp_1029\0"
	.align
_Label_1072:
	.byte	'?'
	.ascii	"_temp_1028\0"
	.align
_Label_1073:
	.byte	'?'
	.ascii	"_temp_1027\0"
	.align
_Label_1074:
	.byte	'?'
	.ascii	"_temp_1026\0"
	.align
_Label_1075:
	.byte	'?'
	.ascii	"_temp_1025\0"
	.align
_Label_1076:
	.byte	'?'
	.ascii	"_temp_1024\0"
	.align
_Label_1077:
	.byte	'?'
	.ascii	"_temp_1023\0"
	.align
_Label_1078:
	.byte	'?'
	.ascii	"_temp_1022\0"
	.align
_Label_1079:
	.byte	'?'
	.ascii	"_temp_1021\0"
	.align
_Label_1080:
	.byte	'?'
	.ascii	"_temp_1020\0"
	.align
_Label_1081:
	.byte	'?'
	.ascii	"_temp_1019\0"
	.align
_Label_1082:
	.byte	'?'
	.ascii	"_temp_1018\0"
	.align
_Label_1083:
	.byte	'?'
	.ascii	"_temp_1017\0"
	.align
_Label_1084:
	.byte	'?'
	.ascii	"_temp_1016\0"
	.align
_Label_1085:
	.byte	'?'
	.ascii	"_temp_1015\0"
	.align
_Label_1086:
	.byte	'?'
	.ascii	"_temp_1014\0"
	.align
_Label_1087:
	.byte	'C'
	.ascii	"_temp_1013\0"
	.align
_Label_1088:
	.byte	'?'
	.ascii	"_temp_1010\0"
	.align
_Label_1089:
	.byte	'?'
	.ascii	"_temp_1009\0"
	.align
_Label_1090:
	.byte	'?'
	.ascii	"_temp_1008\0"
	.align
_Label_1091:
	.byte	'?'
	.ascii	"_temp_1007\0"
	.align
_Label_1092:
	.byte	'?'
	.ascii	"_temp_1006\0"
	.align
_Label_1093:
	.byte	'?'
	.ascii	"_temp_1005\0"
	.align
_Label_1094:
	.byte	'?'
	.ascii	"_temp_1004\0"
	.align
_Label_1095:
	.byte	'?'
	.ascii	"_temp_1003\0"
	.align
_Label_1096:
	.byte	'?'
	.ascii	"_temp_1002\0"
	.align
_Label_1097:
	.byte	'?'
	.ascii	"_temp_1001\0"
	.align
_Label_1098:
	.byte	'?'
	.ascii	"_temp_999\0"
	.align
_Label_1099:
	.byte	'?'
	.ascii	"_temp_998\0"
	.align
_Label_1100:
	.byte	'?'
	.ascii	"_temp_992\0"
	.align
_Label_1101:
	.byte	'?'
	.ascii	"_temp_991\0"
	.align
_Label_1102:
	.byte	'?'
	.ascii	"_temp_986\0"
	.align
_Label_1103:
	.byte	'?'
	.ascii	"_temp_985\0"
	.align
_Label_1104:
	.byte	'?'
	.ascii	"_temp_984\0"
	.align
_Label_1105:
	.byte	'?'
	.ascii	"_temp_983\0"
	.align
_Label_1106:
	.byte	'?'
	.ascii	"_temp_982\0"
	.align
_Label_1107:
	.byte	'?'
	.ascii	"_temp_981\0"
	.align
_Label_1108:
	.byte	'?'
	.ascii	"_temp_977\0"
	.align
_Label_1109:
	.byte	'?'
	.ascii	"_temp_976\0"
	.align
_Label_1110:
	.byte	'?'
	.ascii	"_temp_975\0"
	.align
_Label_1111:
	.byte	'?'
	.ascii	"_temp_974\0"
	.align
_Label_1112:
	.byte	'?'
	.ascii	"_temp_970\0"
	.align
_Label_1113:
	.byte	'?'
	.ascii	"_temp_969\0"
	.align
_Label_1114:
	.byte	'?'
	.ascii	"_temp_968\0"
	.align
_Label_1115:
	.byte	'?'
	.ascii	"_temp_967\0"
	.align
_Label_1116:
	.byte	'?'
	.ascii	"_temp_966\0"
	.align
_Label_1117:
	.byte	'?'
	.ascii	"_temp_965\0"
	.align
_Label_1118:
	.byte	'?'
	.ascii	"_temp_964\0"
	.align
_Label_1119:
	.byte	'?'
	.ascii	"_temp_963\0"
	.align
_Label_1120:
	.byte	'?'
	.ascii	"_temp_962\0"
	.align
_Label_1121:
	.byte	'?'
	.ascii	"_temp_961\0"
	.align
_Label_1122:
	.byte	'?'
	.ascii	"_temp_960\0"
	.align
_Label_1123:
	.byte	'?'
	.ascii	"_temp_959\0"
	.align
_Label_1124:
	.byte	'?'
	.ascii	"_temp_956\0"
	.align
_Label_1125:
	.byte	'?'
	.ascii	"_temp_955\0"
	.align
_Label_1126:
	.byte	'?'
	.ascii	"_temp_954\0"
	.align
_Label_1127:
	.byte	'?'
	.ascii	"_temp_953\0"
	.align
_Label_1128:
	.byte	'I'
	.ascii	"i\0"
	.align
_Label_1129:
	.byte	'I'
	.ascii	"fd\0"
	.align
_Label_1130:
	.byte	'I'
	.ascii	"p\0"
	.align
_Label_1131:
	.byte	'I'
	.ascii	"save\0"
	.align
_Label_1132:
	.byte	'P'
	.ascii	"charPtr\0"
	.align
! 
! ===============  FUNCTION Check  ===============
! 
_function_246_Check:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__function_246_Check,r1
	push	r1
	mov	4,r1
_Label_1287:
	push	r0
	sub	r1,1,r1
	bne	_Label_1287
	mov	627,r13		! source line 627
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! IF STATEMENT...
	mov	632,r13		! source line 632
	mov	"\0\0IF",r10
!   if i != expectedVal then goto _Label_1134		(int)
	load	[r14+8],r1
	load	[r14+12],r2
	cmp	r1,r2
	bne	_Label_1134
!	jmp	_Label_1133
_Label_1133:
! THEN...
	mov	633,r13		! source line 633
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_1135 = _StringConst_212
	set	_StringConst_212,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_1135  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   Call the function
	mov	633,r13		! source line 633
	mov	"\0\0CE",r10
	call	print
	jmp	_Label_1136
_Label_1134:
! ELSE...
	mov	635,r13		! source line 635
	mov	"\0\0EL",r10
! CALL STATEMENT...
!   _temp_1137 = _StringConst_213
	set	_StringConst_213,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_1137  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+0]
!   Call the function
	mov	635,r13		! source line 635
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=i  sizeInBytes=4
	load	[r14+8],r1
	store	r1,[r15+0]
!   Call the function
	mov	636,r13		! source line 636
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   _temp_1138 = _StringConst_214
	set	_StringConst_214,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_1138  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	637,r13		! source line 637
	mov	"\0\0CE",r10
	call	print
! END IF...
_Label_1136:
! RETURN STATEMENT...
	mov	632,r13		! source line 632
	mov	"\0\0RE",r10
	add	r15,20,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__function_246_Check:
	.word	_sourceFileName
	.word	_Label_1139
	.word	8		! total size of parameters
	.word	16		! frame size = 16
	.word	_Label_1140
	.word	8
	.word	4
	.word	_Label_1141
	.word	12
	.word	4
	.word	_Label_1142
	.word	-12
	.word	4
	.word	_Label_1143
	.word	-16
	.word	4
	.word	_Label_1144
	.word	-20
	.word	4
	.word	0
_Label_1139:
	.ascii	"Check\0"
	.align
_Label_1140:
	.byte	'I'
	.ascii	"i\0"
	.align
_Label_1141:
	.byte	'I'
	.ascii	"expectedVal\0"
	.align
_Label_1142:
	.byte	'?'
	.ascii	"_temp_1138\0"
	.align
_Label_1143:
	.byte	'?'
	.ascii	"_temp_1137\0"
	.align
_Label_1144:
	.byte	'?'
	.ascii	"_temp_1135\0"
	.align
! 
! ===============  FUNCTION NextInput  ===============
! 
_function_245_NextInput:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__function_245_NextInput,r1
	push	r1
	mov	72,r1
_Label_1288:
	push	r0
	sub	r1,1,r1
	bne	_Label_1288
	mov	644,r13		! source line 644
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! buffer
!   NEW ARRAY Constructor...
!   _temp_1146 = &_temp_1145
	add	r14,-176,r1
	store	r1,[r14+-72]
!   _temp_1146 = _temp_1146 + 4
	load	[r14+-72],r1
	add	r1,4,r1
	store	r1,[r14+-72]
!   Next value...
	mov	100,r1
	store	r1,[r14+-68]
_Label_1148:
!   Data Move: *_temp_1146 = 63  (sizeInBytes=1)
	mov	63,r1
	load	[r14+-72],r2
	storeb	r1,[r2]
!   _temp_1146 = _temp_1146 + 1
	load	[r14+-72],r1
	add	r1,1,r1
	store	r1,[r14+-72]
!   _temp_1147 = _temp_1147 + -1
	load	[r14+-68],r1
	add	r1,-1,r1
	store	r1,[r14+-68]
!   if intNotZero (_temp_1147) then goto _Label_1148
	load	[r14+-68],r1
	cmp	r1,r0
	bne	_Label_1148
!   Initialize the array size...
	mov	100,r1
	store	r1,[r14+-176]
!   _temp_1149 = &_temp_1145
	add	r14,-176,r1
	store	r1,[r14+-64]
!   make sure array has size 100
	load	[r14+-64],r1
	load	[r1],r1
	set	100, r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bne	_runtimeErrorWrongArraySize
!   Data Move: buffer = *_temp_1149  (sizeInBytes=104)
	load	[r14+-64],r5
	add	r14,-284,r4
	mov	26,r3
_Label_1289:
	load	[r5],r1
	add	r5,4,r5
	store	r1,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_1289
! ASSIGNMENT STATEMENT...
	mov	655,r13		! source line 655
	mov	"\0\0AS",r10
!   _temp_1150 = &inputChar
	add	r14,-11,r1
	store	r1,[r14+-60]
!   Prepare Argument: offset=8  value=fd  sizeInBytes=4
	load	[r14+8],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=_temp_1150  sizeInBytes=4
	load	[r14+-60],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=1  sizeInBytes=4
	mov	1,r1
	store	r1,[r15+8]
!   Call the function
	mov	655,r13		! source line 655
	mov	"\0\0CA",r10
	call	_P_UserSystem_Sys_Read
!   Retrieve Result: targetName=i  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-180]
! IF STATEMENT...
	mov	656,r13		! source line 656
	mov	"\0\0IF",r10
!   if i == 1 then goto _Label_1152		(int)
	load	[r14+-180],r1
	mov	1,r2
	cmp	r1,r2
	be	_Label_1152
!	jmp	_Label_1151
_Label_1151:
! THEN...
	mov	657,r13		! source line 657
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_1153 = _StringConst_215
	set	_StringConst_215,r1
	store	r1,[r14+-56]
!   Prepare Argument: offset=8  value=_temp_1153  sizeInBytes=4
	load	[r14+-56],r1
	store	r1,[r15+0]
!   Call the function
	mov	657,r13		! source line 657
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=i  sizeInBytes=4
	load	[r14+-180],r1
	store	r1,[r15+0]
!   Call the function
	mov	658,r13		! source line 658
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   _temp_1154 = _StringConst_216
	set	_StringConst_216,r1
	store	r1,[r14+-52]
!   Prepare Argument: offset=8  value=_temp_1154  sizeInBytes=4
	load	[r14+-52],r1
	store	r1,[r15+0]
!   Call the function
	mov	659,r13		! source line 659
	mov	"\0\0CE",r10
	call	print
! END IF...
_Label_1152:
! IF STATEMENT...
	mov	663,r13		! source line 663
	mov	"\0\0IF",r10
!   _temp_1157 = inputChar XOR expectedChar		(bool)
	loadb	[r14+-11],r1
	loadb	[r14+12],r2
	xor	r1,r2,r1
	storeb	r1,[r14+-10]
!   if _temp_1157 then goto _Label_1156 else goto _Label_1155
	loadb	[r14+-10],r1
	cmp	r1,0
	be	_Label_1155
	jmp	_Label_1156
_Label_1155:
! THEN...
	mov	664,r13		! source line 664
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_1158 = _StringConst_217
	set	_StringConst_217,r1
	store	r1,[r14+-48]
!   Prepare Argument: offset=8  value=_temp_1158  sizeInBytes=4
	load	[r14+-48],r1
	store	r1,[r15+0]
!   Call the function
	mov	664,r13		! source line 664
	mov	"\0\0CE",r10
	call	print
	jmp	_Label_1159
_Label_1156:
! ELSE...
	mov	666,r13		! source line 666
	mov	"\0\0EL",r10
! CALL STATEMENT...
!   _temp_1160 = _StringConst_218
	set	_StringConst_218,r1
	store	r1,[r14+-44]
!   Prepare Argument: offset=8  value=_temp_1160  sizeInBytes=4
	load	[r14+-44],r1
	store	r1,[r15+0]
!   Call the function
	mov	666,r13		! source line 666
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=expectedChar  sizeInBytes=1
	loadb	[r14+12],r1
	storeb	r1,[r15+0]
!   Call the function
	mov	667,r13		! source line 667
	mov	"\0\0CE",r10
	call	printChar
! CALL STATEMENT...
!   _temp_1161 = _StringConst_219
	set	_StringConst_219,r1
	store	r1,[r14+-40]
!   Prepare Argument: offset=8  value=_temp_1161  sizeInBytes=4
	load	[r14+-40],r1
	store	r1,[r15+0]
!   Call the function
	mov	668,r13		! source line 668
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=inputChar  sizeInBytes=1
	loadb	[r14+-11],r1
	storeb	r1,[r15+0]
!   Call the function
	mov	669,r13		! source line 669
	mov	"\0\0CE",r10
	call	printChar
! CALL STATEMENT...
!   _temp_1162 = _StringConst_220
	set	_StringConst_220,r1
	store	r1,[r14+-36]
!   Prepare Argument: offset=8  value=_temp_1162  sizeInBytes=4
	load	[r14+-36],r1
	store	r1,[r15+0]
!   Call the function
	mov	670,r13		! source line 670
	mov	"\0\0CE",r10
	call	print
! END IF...
_Label_1159:
! IF STATEMENT...
	mov	674,r13		! source line 674
	mov	"\0\0IF",r10
!   _temp_1165 = inputChar XOR 10		(bool)
	loadb	[r14+-11],r1
	mov	10,r2
	xor	r1,r2,r1
	storeb	r1,[r14+-9]
!   if _temp_1165 then goto _Label_1163 else goto _Label_1164
	loadb	[r14+-9],r1
	cmp	r1,0
	be	_Label_1164
	jmp	_Label_1163
_Label_1163:
! THEN...
	mov	675,r13		! source line 675
	mov	"\0\0TN",r10
! ASSIGNMENT STATEMENT...
	mov	675,r13		! source line 675
	mov	"\0\0AS",r10
!   _temp_1167 = &buffer
	add	r14,-284,r1
	store	r1,[r14+-28]
!   Move address of _temp_1167 [0 ] into _temp_1168
!     make sure index expr is >= 0
	mov	0,r2
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
!   _temp_1166 = _temp_1168		(4 bytes)
	load	[r14+-24],r1
	store	r1,[r14+-32]
!   _temp_1170 = &buffer
	add	r14,-284,r1
	store	r1,[r14+-16]
!   Data Move: _temp_1169 = *_temp_1170  (sizeInBytes=4)
	load	[r14+-16],r1
	load	[r1],r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=fd  sizeInBytes=4
	load	[r14+8],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=_temp_1166  sizeInBytes=4
	load	[r14+-32],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=_temp_1169  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+8]
!   Call the function
	mov	675,r13		! source line 675
	mov	"\0\0CA",r10
	call	_P_UserSystem_Sys_Read
!   Retrieve Result: targetName=i  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-180]
! END IF...
_Label_1164:
! RETURN STATEMENT...
	mov	674,r13		! source line 674
	mov	"\0\0RE",r10
	add	r15,292,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__function_245_NextInput:
	.word	_sourceFileName
	.word	_Label_1171
	.word	8		! total size of parameters
	.word	288		! frame size = 288
	.word	_Label_1172
	.word	8
	.word	4
	.word	_Label_1173
	.word	12
	.word	1
	.word	_Label_1174
	.word	-16
	.word	4
	.word	_Label_1175
	.word	-20
	.word	4
	.word	_Label_1176
	.word	-24
	.word	4
	.word	_Label_1177
	.word	-28
	.word	4
	.word	_Label_1178
	.word	-32
	.word	4
	.word	_Label_1179
	.word	-9
	.word	1
	.word	_Label_1180
	.word	-36
	.word	4
	.word	_Label_1181
	.word	-40
	.word	4
	.word	_Label_1182
	.word	-44
	.word	4
	.word	_Label_1183
	.word	-48
	.word	4
	.word	_Label_1184
	.word	-10
	.word	1
	.word	_Label_1185
	.word	-52
	.word	4
	.word	_Label_1186
	.word	-56
	.word	4
	.word	_Label_1187
	.word	-60
	.word	4
	.word	_Label_1188
	.word	-64
	.word	4
	.word	_Label_1189
	.word	-68
	.word	4
	.word	_Label_1190
	.word	-72
	.word	4
	.word	_Label_1191
	.word	-176
	.word	104
	.word	_Label_1192
	.word	-180
	.word	4
	.word	_Label_1193
	.word	-11
	.word	1
	.word	_Label_1194
	.word	-284
	.word	104
	.word	0
_Label_1171:
	.ascii	"NextInput\0"
	.align
_Label_1172:
	.byte	'I'
	.ascii	"fd\0"
	.align
_Label_1173:
	.byte	'C'
	.ascii	"expectedChar\0"
	.align
_Label_1174:
	.byte	'?'
	.ascii	"_temp_1170\0"
	.align
_Label_1175:
	.byte	'?'
	.ascii	"_temp_1169\0"
	.align
_Label_1176:
	.byte	'?'
	.ascii	"_temp_1168\0"
	.align
_Label_1177:
	.byte	'?'
	.ascii	"_temp_1167\0"
	.align
_Label_1178:
	.byte	'?'
	.ascii	"_temp_1166\0"
	.align
_Label_1179:
	.byte	'C'
	.ascii	"_temp_1165\0"
	.align
_Label_1180:
	.byte	'?'
	.ascii	"_temp_1162\0"
	.align
_Label_1181:
	.byte	'?'
	.ascii	"_temp_1161\0"
	.align
_Label_1182:
	.byte	'?'
	.ascii	"_temp_1160\0"
	.align
_Label_1183:
	.byte	'?'
	.ascii	"_temp_1158\0"
	.align
_Label_1184:
	.byte	'C'
	.ascii	"_temp_1157\0"
	.align
_Label_1185:
	.byte	'?'
	.ascii	"_temp_1154\0"
	.align
_Label_1186:
	.byte	'?'
	.ascii	"_temp_1153\0"
	.align
_Label_1187:
	.byte	'?'
	.ascii	"_temp_1150\0"
	.align
_Label_1188:
	.byte	'?'
	.ascii	"_temp_1149\0"
	.align
_Label_1189:
	.byte	'?'
	.ascii	"_temp_1147\0"
	.align
_Label_1190:
	.byte	'?'
	.ascii	"_temp_1146\0"
	.align
_Label_1191:
	.byte	'?'
	.ascii	"_temp_1145\0"
	.align
_Label_1192:
	.byte	'I'
	.ascii	"i\0"
	.align
_Label_1193:
	.byte	'C'
	.ascii	"inputChar\0"
	.align
_Label_1194:
	.byte	'A'
	.ascii	"buffer\0"
	.align
! 
! ===============  FUNCTION Menu  ===============
! 
_function_244_Menu:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__function_244_Menu,r1
	push	r1
	mov	27,r1
_Label_1290:
	push	r0
	sub	r1,1,r1
	bne	_Label_1290
	mov	685,r13		! source line 685
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   _temp_1195 = _StringConst_221
	set	_StringConst_221,r1
	store	r1,[r14+-96]
!   Prepare Argument: offset=8  value=_temp_1195  sizeInBytes=4
	load	[r14+-96],r1
	store	r1,[r15+0]
!   Call the function
	mov	692,r13		! source line 692
	mov	"\0\0CE",r10
	call	print
! ASSIGNMENT STATEMENT...
	mov	693,r13		! source line 693
	mov	"\0\0AS",r10
!   _temp_1196 = _StringConst_222
	set	_StringConst_222,r1
	store	r1,[r14+-92]
!   Prepare Argument: offset=8  value=_temp_1196  sizeInBytes=4
	load	[r14+-92],r1
	store	r1,[r15+0]
!   Call the function
	mov	693,r13		! source line 693
	mov	"\0\0CA",r10
	call	_P_UserSystem_Sys_Open
!   Retrieve Result: targetName=fd  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-100]
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=fd  sizeInBytes=4
	load	[r14+-100],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=0  sizeInBytes=4
	mov	0,r1
	store	r1,[r15+4]
!   Call the function
	mov	694,r13		! source line 694
	mov	"\0\0CA",r10
	call	_function_246_Check
! ASSIGNMENT STATEMENT...
	mov	695,r13		! source line 695
	mov	"\0\0AS",r10
!   _temp_1197 = _StringConst_223
	set	_StringConst_223,r1
	store	r1,[r14+-88]
!   Prepare Argument: offset=8  value=_temp_1197  sizeInBytes=4
	load	[r14+-88],r1
	store	r1,[r15+0]
!   Call the function
	mov	695,r13		! source line 695
	mov	"\0\0CA",r10
	call	_P_UserSystem_Sys_Open
!   Retrieve Result: targetName=fd  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-100]
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=fd  sizeInBytes=4
	load	[r14+-100],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=1  sizeInBytes=4
	mov	1,r1
	store	r1,[r15+4]
!   Call the function
	mov	696,r13		! source line 696
	mov	"\0\0CA",r10
	call	_function_246_Check
! CALL STATEMENT...
!   _temp_1198 = _StringConst_224
	set	_StringConst_224,r1
	store	r1,[r14+-84]
!   Prepare Argument: offset=8  value=_temp_1198  sizeInBytes=4
	load	[r14+-84],r1
	store	r1,[r15+0]
!   Call the function
	mov	697,r13		! source line 697
	mov	"\0\0CA",r10
	call	_function_243_Print
! WHILE STATEMENT...
	mov	698,r13		! source line 698
	mov	"\0\0WH",r10
_Label_1199:
!	jmp	_Label_1200
_Label_1200:
	mov	698,r13		! source line 698
	mov	"\0\0WB",r10
! CALL STATEMENT...
!   _temp_1202 = _StringConst_225
	set	_StringConst_225,r1
	store	r1,[r14+-80]
!   Prepare Argument: offset=8  value=_temp_1202  sizeInBytes=4
	load	[r14+-80],r1
	store	r1,[r15+0]
!   Call the function
	mov	699,r13		! source line 699
	mov	"\0\0CA",r10
	call	_function_243_Print
! CALL STATEMENT...
!   _temp_1203 = _StringConst_226
	set	_StringConst_226,r1
	store	r1,[r14+-76]
!   Prepare Argument: offset=8  value=_temp_1203  sizeInBytes=4
	load	[r14+-76],r1
	store	r1,[r15+0]
!   Call the function
	mov	700,r13		! source line 700
	mov	"\0\0CA",r10
	call	_function_243_Print
! CALL STATEMENT...
!   _temp_1204 = _StringConst_227
	set	_StringConst_227,r1
	store	r1,[r14+-72]
!   Prepare Argument: offset=8  value=_temp_1204  sizeInBytes=4
	load	[r14+-72],r1
	store	r1,[r15+0]
!   Call the function
	mov	701,r13		! source line 701
	mov	"\0\0CA",r10
	call	_function_243_Print
! CALL STATEMENT...
!   _temp_1205 = _StringConst_228
	set	_StringConst_228,r1
	store	r1,[r14+-68]
!   Prepare Argument: offset=8  value=_temp_1205  sizeInBytes=4
	load	[r14+-68],r1
	store	r1,[r15+0]
!   Call the function
	mov	702,r13		! source line 702
	mov	"\0\0CA",r10
	call	_function_243_Print
! CALL STATEMENT...
!   _temp_1206 = _StringConst_229
	set	_StringConst_229,r1
	store	r1,[r14+-64]
!   Prepare Argument: offset=8  value=_temp_1206  sizeInBytes=4
	load	[r14+-64],r1
	store	r1,[r15+0]
!   Call the function
	mov	703,r13		! source line 703
	mov	"\0\0CA",r10
	call	_function_243_Print
! CALL STATEMENT...
!   _temp_1207 = _StringConst_230
	set	_StringConst_230,r1
	store	r1,[r14+-60]
!   Prepare Argument: offset=8  value=_temp_1207  sizeInBytes=4
	load	[r14+-60],r1
	store	r1,[r15+0]
!   Call the function
	mov	704,r13		! source line 704
	mov	"\0\0CA",r10
	call	_function_243_Print
! CALL STATEMENT...
!   _temp_1208 = _StringConst_231
	set	_StringConst_231,r1
	store	r1,[r14+-56]
!   Prepare Argument: offset=8  value=_temp_1208  sizeInBytes=4
	load	[r14+-56],r1
	store	r1,[r15+0]
!   Call the function
	mov	705,r13		! source line 705
	mov	"\0\0CA",r10
	call	_function_243_Print
! CALL STATEMENT...
!   _temp_1209 = _StringConst_232
	set	_StringConst_232,r1
	store	r1,[r14+-52]
!   Prepare Argument: offset=8  value=_temp_1209  sizeInBytes=4
	load	[r14+-52],r1
	store	r1,[r15+0]
!   Call the function
	mov	706,r13		! source line 706
	mov	"\0\0CA",r10
	call	_function_243_Print
! CALL STATEMENT...
!   _temp_1210 = _StringConst_233
	set	_StringConst_233,r1
	store	r1,[r14+-48]
!   Prepare Argument: offset=8  value=_temp_1210  sizeInBytes=4
	load	[r14+-48],r1
	store	r1,[r15+0]
!   Call the function
	mov	707,r13		! source line 707
	mov	"\0\0CA",r10
	call	_function_243_Print
! CALL STATEMENT...
!   _temp_1211 = _StringConst_234
	set	_StringConst_234,r1
	store	r1,[r14+-44]
!   Prepare Argument: offset=8  value=_temp_1211  sizeInBytes=4
	load	[r14+-44],r1
	store	r1,[r15+0]
!   Call the function
	mov	708,r13		! source line 708
	mov	"\0\0CA",r10
	call	_function_243_Print
! CALL STATEMENT...
!   _temp_1212 = _StringConst_235
	set	_StringConst_235,r1
	store	r1,[r14+-40]
!   Prepare Argument: offset=8  value=_temp_1212  sizeInBytes=4
	load	[r14+-40],r1
	store	r1,[r15+0]
!   Call the function
	mov	709,r13		! source line 709
	mov	"\0\0CA",r10
	call	_function_243_Print
! ASSIGNMENT STATEMENT...
	mov	710,r13		! source line 710
	mov	"\0\0AS",r10
!   Call the function
	mov	710,r13		! source line 710
	mov	"\0\0CA",r10
	call	_function_242_GetChar
!   Retrieve Result: targetName=c  sizeInBytes=1
	loadb	[r15],r1
	storeb	r1,[r14+-9]
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=c  sizeInBytes=1
	loadb	[r14+-9],r1
	storeb	r1,[r15+0]
!   Call the function
	mov	711,r13		! source line 711
	mov	"\0\0CA",r10
	call	_function_241_PutChar
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=10  sizeInBytes=1
	mov	10,r1
	storeb	r1,[r15+0]
!   Call the function
	mov	712,r13		! source line 712
	mov	"\0\0CA",r10
	call	_function_241_PutChar
! SWITCH STATEMENT (using an indirect jump table)...
	mov	713,r13		! source line 713
	mov	"\0\0SW",r10
!   Evaluate the switch expression...
!   _temp_1224 = charToInt (c)
	loadb	[r14+-9],r1
	sll	r1,24,r1
	sra	r1,24,r1
	store	r1,[r14+-36]
	load	[r14+-36],r1
!   If _temp_1224 is not within 16-bits goto default code
	srl	r1,15,r2
	cmp	r2,0
	be	_Label_1291
	set	0x1ffff,r3
	cmp	r2,r3
	bne	_Label_1213
_Label_1291:
!   If _temp_1224 is < 49 (==smallestCaseValue) goto default code
	cmp	r1,49
	bl	_Label_1213
!   If _temp_1224 is > 57 (==greatestCaseValue) goto default code
	cmp	r1,57
	bg	_Label_1213
!   r1 = (r1-lowValue) * 4 + jumpTableAddr
	sub	r1,49,r1
	sll	r1,2,r1
	set	_Label_1225,r2
	add	r1,r2,r1
!   Jump indirect through the jump table
	jmp	r1
!   Jump table
_Label_1225:
	jmp	_Label_1215	! 49:	
	jmp	_Label_1216	! 50:	
	jmp	_Label_1217	! 51:	
	jmp	_Label_1218	! 52:	
	jmp	_Label_1219	! 53:	
	jmp	_Label_1220	! 54:	
	jmp	_Label_1221	! 55:	
	jmp	_Label_1222	! 56:	
	jmp	_Label_1223	! 57:	
! CASE 49...
_Label_1215:
! CALL STATEMENT...
!   Call the function
	mov	715,r13		! source line 715
	mov	"\0\0CA",r10
	call	_function_253_BasicSerialTest
! BREAK STATEMENT...
	mov	716,r13		! source line 716
	mov	"\0\0BR",r10
	jmp	_Label_1214
! CASE 50...
_Label_1216:
! CALL STATEMENT...
!   Call the function
	mov	718,r13		! source line 718
	mov	"\0\0CA",r10
	call	_function_252_KeyTest
! BREAK STATEMENT...
	mov	719,r13		! source line 719
	mov	"\0\0BR",r10
	jmp	_Label_1214
! CASE 51...
_Label_1217:
! CALL STATEMENT...
!   Call the function
	mov	721,r13		! source line 721
	mov	"\0\0CA",r10
	call	_function_251_EchoTest
! BREAK STATEMENT...
	mov	722,r13		! source line 722
	mov	"\0\0BR",r10
	jmp	_Label_1214
! CASE 52...
_Label_1218:
! CALL STATEMENT...
!   Call the function
	mov	724,r13		! source line 724
	mov	"\0\0CA",r10
	call	_function_250_LineEchoTest
! BREAK STATEMENT...
	mov	725,r13		! source line 725
	mov	"\0\0BR",r10
	jmp	_Label_1214
! CASE 53...
_Label_1219:
! CALL STATEMENT...
!   Call the function
	mov	727,r13		! source line 727
	mov	"\0\0CA",r10
	call	_function_249_EOFTest
! BREAK STATEMENT...
	mov	728,r13		! source line 728
	mov	"\0\0BR",r10
	jmp	_Label_1214
! CASE 54...
_Label_1220:
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=0  sizeInBytes=4
	mov	0,r1
	store	r1,[r15+0]
!   Call the function
	mov	730,r13		! source line 730
	mov	"\0\0CA",r10
	call	_P_UserSystem_Sys_Close
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=1  sizeInBytes=4
	mov	1,r1
	store	r1,[r15+0]
!   Call the function
	mov	731,r13		! source line 731
	mov	"\0\0CA",r10
	call	_P_UserSystem_Sys_Close
! CALL STATEMENT...
!   Call the function
	mov	732,r13		! source line 732
	mov	"\0\0CA",r10
	call	_function_248_OpenCloseTerminalTest
! ASSIGNMENT STATEMENT...
	mov	733,r13		! source line 733
	mov	"\0\0AS",r10
!   _temp_1226 = _StringConst_236
	set	_StringConst_236,r1
	store	r1,[r14+-32]
!   Prepare Argument: offset=8  value=_temp_1226  sizeInBytes=4
	load	[r14+-32],r1
	store	r1,[r15+0]
!   Call the function
	mov	733,r13		! source line 733
	mov	"\0\0CA",r10
	call	_P_UserSystem_Sys_Open
!   Retrieve Result: targetName=fd  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-100]
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=fd  sizeInBytes=4
	load	[r14+-100],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=0  sizeInBytes=4
	mov	0,r1
	store	r1,[r15+4]
!   Call the function
	mov	734,r13		! source line 734
	mov	"\0\0CA",r10
	call	_function_246_Check
! ASSIGNMENT STATEMENT...
	mov	735,r13		! source line 735
	mov	"\0\0AS",r10
!   _temp_1227 = _StringConst_237
	set	_StringConst_237,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=8  value=_temp_1227  sizeInBytes=4
	load	[r14+-28],r1
	store	r1,[r15+0]
!   Call the function
	mov	735,r13		! source line 735
	mov	"\0\0CA",r10
	call	_P_UserSystem_Sys_Open
!   Retrieve Result: targetName=fd  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-100]
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=fd  sizeInBytes=4
	load	[r14+-100],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=1  sizeInBytes=4
	mov	1,r1
	store	r1,[r15+4]
!   Call the function
	mov	736,r13		! source line 736
	mov	"\0\0CA",r10
	call	_function_246_Check
! BREAK STATEMENT...
	mov	737,r13		! source line 737
	mov	"\0\0BR",r10
	jmp	_Label_1214
! CASE 55...
_Label_1221:
! CALL STATEMENT...
!   Call the function
	mov	739,r13		! source line 739
	mov	"\0\0CA",r10
	call	_function_247_TerminalErrorTest
! BREAK STATEMENT...
	mov	740,r13		! source line 740
	mov	"\0\0BR",r10
	jmp	_Label_1214
! CASE 56...
_Label_1222:
! ASSIGNMENT STATEMENT...
	mov	742,r13		! source line 742
	mov	"\0\0AS",r10
!   Call the function
	mov	742,r13		! source line 742
	mov	"\0\0CA",r10
	call	_P_UserSystem_Sys_Fork
!   Retrieve Result: targetName=pid  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-104]
! IF STATEMENT...
	mov	743,r13		! source line 743
	mov	"\0\0IF",r10
!   if intIsZero (pid) then goto _Label_1228
	load	[r14+-104],r1
	cmp	r1,r0
	be	_Label_1228
	jmp	_Label_1229
_Label_1228:
! THEN...
	mov	744,r13		! source line 744
	mov	"\0\0TN",r10
! ASSIGNMENT STATEMENT...
	mov	744,r13		! source line 744
	mov	"\0\0AS",r10
!   _temp_1230 = _StringConst_238
	set	_StringConst_238,r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=8  value=_temp_1230  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+0]
!   Call the function
	mov	744,r13		! source line 744
	mov	"\0\0CA",r10
	call	_P_UserSystem_Sys_Exec
!   Retrieve Result: targetName=i  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-108]
! CALL STATEMENT...
!   _temp_1231 = _StringConst_239
	set	_StringConst_239,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_1231  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   Call the function
	mov	745,r13		! source line 745
	mov	"\0\0CA",r10
	call	_function_243_Print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=-1  sizeInBytes=4
	mov	-1,r1
	store	r1,[r15+0]
!   Call the function
	mov	746,r13		! source line 746
	mov	"\0\0CA",r10
	call	_P_UserSystem_Sys_Exit
	jmp	_Label_1232
_Label_1229:
! ELSE...
	mov	748,r13		! source line 748
	mov	"\0\0EL",r10
! ASSIGNMENT STATEMENT...
	mov	748,r13		! source line 748
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=pid  sizeInBytes=4
	load	[r14+-104],r1
	store	r1,[r15+0]
!   Call the function
	mov	748,r13		! source line 748
	mov	"\0\0CA",r10
	call	_P_UserSystem_Sys_Join
!   Retrieve Result: targetName=i  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-108]
! END IF...
_Label_1232:
! BREAK STATEMENT...
	mov	750,r13		! source line 750
	mov	"\0\0BR",r10
	jmp	_Label_1214
! CASE 57...
_Label_1223:
! CALL STATEMENT...
!   Call the function
	mov	752,r13		! source line 752
	mov	"\0\0CA",r10
	call	_P_UserSystem_Sys_Shutdown
! DEFAULT CASE...
_Label_1213:
! CALL STATEMENT...
!   _temp_1233 = _StringConst_240
	set	_StringConst_240,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_1233  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+0]
!   Call the function
	mov	754,r13		! source line 754
	mov	"\0\0CA",r10
	call	_function_243_Print
! BREAK STATEMENT...
	mov	755,r13		! source line 755
	mov	"\0\0BR",r10
	jmp	_Label_1214
! END SWITCH...
_Label_1214:
! END WHILE...
	jmp	_Label_1199
_Label_1201:
! 
! Routine Descriptor
! 
_RoutineDescriptor__function_244_Menu:
	.word	_sourceFileName
	.word	_Label_1234
	.word	0		! total size of parameters
	.word	108		! frame size = 108
	.word	_Label_1235
	.word	-16
	.word	4
	.word	_Label_1236
	.word	-20
	.word	4
	.word	_Label_1237
	.word	-24
	.word	4
	.word	_Label_1238
	.word	-28
	.word	4
	.word	_Label_1239
	.word	-32
	.word	4
	.word	_Label_1240
	.word	-36
	.word	4
	.word	_Label_1241
	.word	-40
	.word	4
	.word	_Label_1242
	.word	-44
	.word	4
	.word	_Label_1243
	.word	-48
	.word	4
	.word	_Label_1244
	.word	-52
	.word	4
	.word	_Label_1245
	.word	-56
	.word	4
	.word	_Label_1246
	.word	-60
	.word	4
	.word	_Label_1247
	.word	-64
	.word	4
	.word	_Label_1248
	.word	-68
	.word	4
	.word	_Label_1249
	.word	-72
	.word	4
	.word	_Label_1250
	.word	-76
	.word	4
	.word	_Label_1251
	.word	-80
	.word	4
	.word	_Label_1252
	.word	-84
	.word	4
	.word	_Label_1253
	.word	-88
	.word	4
	.word	_Label_1254
	.word	-92
	.word	4
	.word	_Label_1255
	.word	-96
	.word	4
	.word	_Label_1256
	.word	-100
	.word	4
	.word	_Label_1257
	.word	-104
	.word	4
	.word	_Label_1258
	.word	-108
	.word	4
	.word	_Label_1259
	.word	-9
	.word	1
	.word	0
_Label_1234:
	.ascii	"Menu\0"
	.align
_Label_1235:
	.byte	'?'
	.ascii	"_temp_1233\0"
	.align
_Label_1236:
	.byte	'?'
	.ascii	"_temp_1231\0"
	.align
_Label_1237:
	.byte	'?'
	.ascii	"_temp_1230\0"
	.align
_Label_1238:
	.byte	'?'
	.ascii	"_temp_1227\0"
	.align
_Label_1239:
	.byte	'?'
	.ascii	"_temp_1226\0"
	.align
_Label_1240:
	.byte	'?'
	.ascii	"_temp_1224\0"
	.align
_Label_1241:
	.byte	'?'
	.ascii	"_temp_1212\0"
	.align
_Label_1242:
	.byte	'?'
	.ascii	"_temp_1211\0"
	.align
_Label_1243:
	.byte	'?'
	.ascii	"_temp_1210\0"
	.align
_Label_1244:
	.byte	'?'
	.ascii	"_temp_1209\0"
	.align
_Label_1245:
	.byte	'?'
	.ascii	"_temp_1208\0"
	.align
_Label_1246:
	.byte	'?'
	.ascii	"_temp_1207\0"
	.align
_Label_1247:
	.byte	'?'
	.ascii	"_temp_1206\0"
	.align
_Label_1248:
	.byte	'?'
	.ascii	"_temp_1205\0"
	.align
_Label_1249:
	.byte	'?'
	.ascii	"_temp_1204\0"
	.align
_Label_1250:
	.byte	'?'
	.ascii	"_temp_1203\0"
	.align
_Label_1251:
	.byte	'?'
	.ascii	"_temp_1202\0"
	.align
_Label_1252:
	.byte	'?'
	.ascii	"_temp_1198\0"
	.align
_Label_1253:
	.byte	'?'
	.ascii	"_temp_1197\0"
	.align
_Label_1254:
	.byte	'?'
	.ascii	"_temp_1196\0"
	.align
_Label_1255:
	.byte	'?'
	.ascii	"_temp_1195\0"
	.align
_Label_1256:
	.byte	'I'
	.ascii	"fd\0"
	.align
_Label_1257:
	.byte	'I'
	.ascii	"pid\0"
	.align
_Label_1258:
	.byte	'I'
	.ascii	"i\0"
	.align
_Label_1259:
	.byte	'C'
	.ascii	"c\0"
	.align
! 
! ===============  FUNCTION Print  ===============
! 
_function_243_Print:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__function_243_Print,r1
	push	r1
	mov	7,r1
_Label_1292:
	push	r0
	sub	r1,1,r1
	bne	_Label_1292
	mov	763,r13		! source line 763
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	768,r13		! source line 768
	mov	"\0\0AS",r10
!   if intIsZero (str) then goto _runtimeErrorNullPointer
	load	[r14+8],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Move address of str [0 ] into _temp_1261
!     make sure index expr is >= 0
	mov	0,r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+8],r1
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
	store	r2,[r14+-16]
!   _temp_1260 = _temp_1261		(4 bytes)
	load	[r14+-16],r1
	store	r1,[r14+-20]
!   if intIsZero (str) then goto _runtimeErrorNullPointer
	load	[r14+8],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Data Move: _temp_1262 = *str  (sizeInBytes=4)
	load	[r14+8],r1
	load	[r1],r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=1  sizeInBytes=4
	mov	1,r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=_temp_1260  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=_temp_1262  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+8]
!   Call the function
	mov	768,r13		! source line 768
	mov	"\0\0CA",r10
	call	_P_UserSystem_Sys_Write
!   Retrieve Result: targetName=i  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-24]
! RETURN STATEMENT...
	mov	768,r13		! source line 768
	mov	"\0\0RE",r10
	add	r15,32,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__function_243_Print:
	.word	_sourceFileName
	.word	_Label_1263
	.word	4		! total size of parameters
	.word	28		! frame size = 28
	.word	_Label_1264
	.word	8
	.word	4
	.word	_Label_1265
	.word	-12
	.word	4
	.word	_Label_1266
	.word	-16
	.word	4
	.word	_Label_1267
	.word	-20
	.word	4
	.word	_Label_1268
	.word	-24
	.word	4
	.word	0
_Label_1263:
	.ascii	"Print\0"
	.align
_Label_1264:
	.byte	'P'
	.ascii	"str\0"
	.align
_Label_1265:
	.byte	'?'
	.ascii	"_temp_1262\0"
	.align
_Label_1266:
	.byte	'?'
	.ascii	"_temp_1261\0"
	.align
_Label_1267:
	.byte	'?'
	.ascii	"_temp_1260\0"
	.align
_Label_1268:
	.byte	'I'
	.ascii	"i\0"
	.align
! 
! ===============  FUNCTION GetChar  ===============
! 
_function_242_GetChar:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__function_242_GetChar,r1
	push	r1
	mov	6,r1
_Label_1293:
	push	r0
	sub	r1,1,r1
	bne	_Label_1293
	mov	773,r13		! source line 773
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	779,r13		! source line 779
	mov	"\0\0AS",r10
!   _temp_1269 = &c
	add	r14,-9,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=1  sizeInBytes=4
	mov	1,r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=_temp_1269  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=1  sizeInBytes=4
	mov	1,r1
	store	r1,[r15+8]
!   Call the function
	mov	779,r13		! source line 779
	mov	"\0\0CA",r10
	call	_P_UserSystem_Sys_Read
!   Retrieve Result: targetName=i  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-20]
! RETURN STATEMENT...
	mov	780,r13		! source line 780
	mov	"\0\0RE",r10
!   ReturnResult: c  (sizeInBytes=1)
	loadb	[r14+-9],r1
	storeb	r1,[r14+8]
	add	r15,28,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__function_242_GetChar:
	.word	_sourceFileName
	.word	_Label_1270
	.word	0		! total size of parameters
	.word	24		! frame size = 24
	.word	_Label_1271
	.word	-16
	.word	4
	.word	_Label_1272
	.word	-9
	.word	1
	.word	_Label_1273
	.word	-20
	.word	4
	.word	0
_Label_1270:
	.ascii	"GetChar\0"
	.align
_Label_1271:
	.byte	'?'
	.ascii	"_temp_1269\0"
	.align
_Label_1272:
	.byte	'C'
	.ascii	"c\0"
	.align
_Label_1273:
	.byte	'I'
	.ascii	"i\0"
	.align
! 
! ===============  FUNCTION PutChar  ===============
! 
_function_241_PutChar:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__function_241_PutChar,r1
	push	r1
	mov	5,r1
_Label_1294:
	push	r0
	sub	r1,1,r1
	bne	_Label_1294
	mov	785,r13		! source line 785
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	790,r13		! source line 790
	mov	"\0\0AS",r10
!   _temp_1274 = &c
	add	r14,8,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=1  sizeInBytes=4
	mov	1,r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=_temp_1274  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=1  sizeInBytes=4
	mov	1,r1
	store	r1,[r15+8]
!   Call the function
	mov	790,r13		! source line 790
	mov	"\0\0CA",r10
	call	_P_UserSystem_Sys_Write
!   Retrieve Result: targetName=i  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-16]
! RETURN STATEMENT...
	mov	790,r13		! source line 790
	mov	"\0\0RE",r10
	add	r15,24,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__function_241_PutChar:
	.word	_sourceFileName
	.word	_Label_1275
	.word	4		! total size of parameters
	.word	20		! frame size = 20
	.word	_Label_1276
	.word	8
	.word	1
	.word	_Label_1277
	.word	-12
	.word	4
	.word	_Label_1278
	.word	-16
	.word	4
	.word	0
_Label_1275:
	.ascii	"PutChar\0"
	.align
_Label_1276:
	.byte	'C'
	.ascii	"c\0"
	.align
_Label_1277:
	.byte	'?'
	.ascii	"_temp_1274\0"
	.align
_Label_1278:
	.byte	'I'
	.ascii	"i\0"
	.align
