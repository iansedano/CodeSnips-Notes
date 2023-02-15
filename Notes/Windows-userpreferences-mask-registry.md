__________________________________________

UserPreferencesMask - unofficial reference
__________________________________________

Description .... bitmask registry binary value, sets user interface (UI) settings
Registry key ... HKCU\Control Panel\Desktop
Data type ...... REG_BINARY
Default value .. Windows 2000 - 0x80003E9E, Windows XP - 0x80073E9E
TechNet link ... http://www.microsoft.com/technet/prodtechnol/windows2000serv/reskit/regentry/55198.mspx?mfr=true
Forum (MSFN) ... http://www.msfn.org/board/index.php?showtopic=73209
------------------------------------
Last revision .. 2006/10/29
Info format .... Bit - Mask (binary, dword) - Description (name/effect/info + os + values)
* .............. unknown or reserved for future use

 0 - 01 00 00 00 = 0x00000001 - X-Mouse (Active window tracking); window get focus when the mouse poiter is over it; Windows 2000 and above, 0 = disable, 1 = enable, default 0
 1 - 02 00 00 00 = 0x00000002 - Menu animation (Fade or slide menus into view); effect depends on the value of bit 9; Windows 2000 and above, 0 = disable, 1 = enable, default 1
 2 - 04 00 00 00 = 0x00000004 - Combo box animation (Slide open combox boxes); Windows 2000 and above, 0 = disable, 1 = enable, default 1
 3 - 08 00 00 00 = 0x00000008 - List box smooth scrolling (Smooth-scroll list boxes); Windows 2000 and above, 0 = disable, 1 = enable, default 1
 4 - 10 00 00 00 = 0x00000010 - Gradient captions; effect for window title bars; Windows 2000 and above, 0 = disable, 1 = enable, default 1
 5 - 20 00 00 00 = 0x00000020 - Keyboard cues; underlined letters for keyboard navigation; Windows 2000 and above, 0 = hide (until Alt key is pressed), 1 = show, default 0
 6 - 40 00 00 00 = 0x00000040 - Active window tracking Z order; bit 0 must be enabled to work; Windows 2000 and above, 0 = disable, 1 = bring focused window to the top, default 0
 7 - 80 00 00 00 = 0x00000080 - Hot tracking (mouse-related window effects); Windows 2000 and above, 0 = disable, 1 = enable, default 1
 8 - 00 01 00 00 = 0x00000100 - *
 9 - 00 02 00 00 = 0x00000200 - Menu fade; bit 1 must be enabled to work; Windows 2000 and above, 0 = slide animation, 1 = fade animation, default 1
10 - 00 04 00 00 = 0x00000400 - Selection fade (Fade out menu items after clicking); Windows 2000 and above, 0 = disable, 1 = enable, default 1
11 - 00 08 00 00 = 0x00000800 - ToolTip animation (Fade or slide ToolTips into view); effect depends on the value of bit 12, Windows 2000 and above, 0 = disable, 1 = enable, default 1
12 - 00 10 00 00 = 0x00001000 - ToolTip fade; bit 11 must be enabled to work; Windows 2000 and above, 0 = slide animation, 1 = fade animation, default 1
13 - 00 20 00 00 = 0x00002000 - Cursor shadow (Show shadows under mouse pointer); more than 256 colors required; Windows 2000 and above, 0 = disable, 1 = enable, default 1
14 - 00 40 00 00 = 0x00004000 - Show location of pointer when the CTRL key is pressed; Windows XP and above, 0 = disable, 1 = enable, default 0
15 - 00 80 00 00 = 0x00008000 - ClickLock; highlight or drag without holding down the mouse button, Windows XP and above, 0 = disable, 1 = enable, default 0
16 - 00 00 01 00 = 0x00010000 - Hide pointer while typing; Windows XP and above; 0 = disable (show), 1 = enable (hide), default 1
17 - 00 00 02 00 = 0x00020000 - Flat menus; Windows XP and above, 0 = classic 3D look, 1 = Office XP style, default 1 (if Visual Style is enabled) or 0 (if Classic Style is enabled)
18 - 00 00 04 00 = 0x00040000 - Shadows under menus; Windows XP and above, 0 = disable, 1 = enable, default 1
19 - 00 00 08 00 = 0x00080000 - *
20 - 00 00 10 00 = 0x00100000 - *
21 - 00 00 20 00 = 0x00200000 - *
22 - 00 00 40 00 = 0x00400000 - *
23 - 00 00 80 00 = 0x00800000 - *
24 - 00 00 00 01 = 0x01000000 - *
25 - 00 00 00 02 = 0x02000000 - *
26 - 00 00 00 04 = 0x04000000 - *
27 - 00 00 00 08 = 0x08000000 - *
28 - 00 00 00 10 = 0x10000000 - *
29 - 00 00 00 20 = 0x20000000 - *
30 - 00 00 00 40 = 0x40000000 - *
31 - 00 00 00 80 = 0x80000000 - UI effects; 1 = all UI effects are enabled
