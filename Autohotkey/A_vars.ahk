;commands/functions that can set the default value (if used in the auto-execute section):
(AHK v1) AutoTrim - A_AutoTrim
(AHK v1) Menu (Tray) - A_IconHidden, A_IconTip
(AHK v1) SetBatchLines - A_BatchLines, A_NumBatchLines
(AHK v1) SetFormat - A_FormatFloat, A_FormatInteger
(AHK v2) TraySetIcon - A_IconFile, A_IconNumber
CoordMode - A_CoordModeCaret, A_CoordModeMenu, A_CoordModeMouse, A_CoordModePixel, A_CoordModeToolTip
Critical - A_IsCritical
DetectHiddenText - A_DetectHiddenText
DetectHiddenWindows - A_DetectHiddenWindows
FileEncoding - A_FileEncoding
ListLines - A_ListLines
SendLevel - A_SendLevel
SendMode - A_SendMode
SetControlDelay - A_ControlDelay
SetDefaultMouseSpeed - A_DefaultMouseSpeed
SetKeyDelay - A_KeyDelay, A_KeyDelayPlay, A_KeyDuration, A_KeyDurationPlay
SetMouseDelay - A_MouseDelay, A_MouseDelayPlay
SetRegView - A_RegView
SetStoreCapsLockMode - A_StoreCapsLockMode
SetTitleMatchMode - A_TitleMatchMode, A_TitleMatchModeSpeed
SetWinDelay - A_WinDelay
StringCaseSense - A_StringCaseSense
Thread

;other commands/functions that affect A_ variables (selected):
DllCall (SetLastError) - A_LastError
SetWorkingDir - A_WorkingDir

;other A_ variables (selected):
A_AllowMainWindow [AHK v1 equivalent, set by Menu (Tray)]
A_Args
A_Index
A_IsCompiled
A_TrayMenu [object]

;date info not attainable via FormatTime:
A_MSec
A_NowUTC

;date info attainable via FormatTime:
A_DD / A_MDay
A_DDD
A_DDDD
A_Hour
A_Min
A_MM / A_Mon
A_MMM
A_MMMM
A_Now
A_Sec
A_WDay
A_YDay
A_YWeek
A_YYYY / A_Year

;system folder locations:
A_AppData
A_AppDataCommon
A_Desktop
A_DesktopCommon
A_MyDocuments
A_ProgramFiles
A_Programs
A_ProgramsCommon
A_StartMenu
A_StartMenuCommon
A_Startup
A_StartupCommon
A_Temp
A_WinDir

;all other variables (AHK v1 only):
A_CaretX
A_CaretY
A_DefaultGui
A_DefaultListView
A_DefaultTreeView
A_ExitReason
A_Gui
A_GuiControl
A_GuiControlEvent
A_GuiEvent
A_GuiHeight
A_GuiWidth
A_GuiX
A_GuiY
A_IPAddress1
A_IPAddress2
A_IPAddress3
A_IPAddress4
A_LoopFileLongPath
A_LoopRegSubKey
A_OSType
A_ThisMenu
A_ThisMenuItem
A_ThisMenuItemPos

;all other variables (some AHK v2 only, some in both AHK v1/v2):
A_AhkPath
A_AhkVersion
A_ComputerName
A_ComSpec
A_Cursor
A_EndChar
A_EventInfo
A_InitialWorkingDir
A_Is64bitOS
A_IsAdmin
A_IsPaused
A_IsSuspended
A_IsUnicode
A_Language
A_LineFile
A_LineNumber
A_LoopField
A_LoopFileAttrib
A_LoopFileDir
A_LoopFileExt
A_LoopFileFullPath
A_LoopFileName
A_LoopFilePath
A_LoopFileShortName
A_LoopFileShortPath
A_LoopFileSize
A_LoopFileSizeKB
A_LoopFileSizeMB
A_LoopFileTimeAccessed
A_LoopFileTimeCreated
A_LoopFileTimeModified
A_LoopReadLine
A_LoopRegKey
A_LoopRegName
A_LoopRegTimeModified
A_LoopRegType
A_OSVersion
A_PriorHotkey
A_PriorKey
A_PtrSize
A_ScreenDPI
A_ScreenHeight
A_ScreenWidth
A_ScriptDir
A_ScriptFullPath
A_ScriptHwnd
A_ScriptName
A_Space
A_Tab
A_ThisFunc
A_ThisHotkey
A_ThisLabel
A_TickCount
A_TimeIdle
A_TimeIdleKeyboard
A_TimeIdleMouse
A_TimeIdlePhysical
A_TimeSincePriorHotkey
A_TimeSinceThisHotkey
A_UserName

;built-in variables not beginning with 'A_':
AHK v1 only: ClipboardAll, ComSpec, ProgramFiles
AHK v2 only: Array, Class, Map, Object
AHK v1/v2: Clipboard, ErrorLevel, False, True


