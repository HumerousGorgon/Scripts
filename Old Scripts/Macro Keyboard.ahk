#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.

#IfWinActive ahk_exe Adobe Premiere Pro.exe

+r::
Send !{Up}
return
;Nudge clip up timeline.

+f::
Send !{Down}
return
;Nudge clip down timeline.

+e::
Send i
return
;Set in marker.

+d::
Send o
return
;Set out marker

Numpad5::
SendInput, ^r
return
;Speed/Duration.


Numpad4::
SendInput, ^r 100.1{Enter}
return
;Speed up clip by 100.1%.


Numpad6::
SendInput, ^r 200{Enter}
return
;Double the speed of the clip.

Numpad3::
SendInput, ^t{Enter}
return
;Title creator.

Numpad1::
SendInput, ^d
return
;Default video transition.

Numpad2::
SendInput, ^D
return
;Default audio transition.