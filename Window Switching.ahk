F1::
IfWinNotExist, ahk_class Premiere Pro
	Run, Adobe Premiere Pro.exe
WinActivate ahk_class Premiere Pro
return

F2::
IfWinNotExist ahk_class Photoshop
	Run Photoshop.exe
WinActivate ahk_class Photoshop
return

F3::
IfWinNotExist ahk_class Adobe Audition CC.exe
	Run Adobe Audition CC.exe
WinActivate ahk_class Adobe Audition CC.exe
return

F4::
IfWinNotExist ahk_class Clover_WidgetWin_0
	Run Clover.exe
WinActivate ahk_class Clover_WidgetWin_0
return

F5::
WinActivate ahk_class Chrome_WidgetWin_1
return