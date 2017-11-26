#IfWinActive ahk_exe Adobe Premiere Pro.exe

;Common modifier keys used in AHK:
; Alt = !
; Shift = +
; Ctrl = ^
; Windows Key = #

z::
BlockInput, SendAndMouse ;---------------------------Selects the inputs to block.
SendInput, ^t{Enter} ;-------------------------------Opens the titler window.
BlockInput On ;--------------------------------------Blocks input from the user.
SetKeyDelay, 0 ;-------------------------------------Makes key presses have 0 delay.
MouseGetPos, xpos, ypos ;----------------------------Stores current co-ordinates of mouse position as variables x and y.
DllCall("SetCursorPos", int, 14, int, 122) ;-------Send mouse cursor to text tool.
sleep, 10 
MouseClick, Left, , , 1 ;----------------------------Left clicks mouse to select text tool.
DllCall("SetCursorPos", int, 160, int, 374) ;-------Send mouse cursor to set text into window.
sleep, 100 
MouseClick, Left, , , 1 ;----------------------------Left clicks to make text box appear.
sleep, 100
DllCall("SetCursorPos", int, 128, int, 130) ;-------Send mouse cursor to font selection box.
sleep, 100
MouseClick, Left, , , 1 ;----------------------------Selects all text within font selection box.
sleep, 10
SendInput, Dosis{Enter} ;----------------------------Inputs default font.
sleep, 10
DllCall("SetCursorPos", int, 160, int, 374) ;-------Sends mouse cursor back to text box so user can type.
sleep, 10
MouseClick, Left, , , 1 ;----------------------------Left clicks so user can type within box.
sleep, 10
DllCall("SetCursorPos", int, xpos, int, ypos) ;------Returns mouse cursor to original position.
BlockInput, Off ;------------------------------------Re-enables user input.
return
;Open titler and set default font.

v::Send b100.1{Enter}
;Change clip speed to 100.1%.

c::Send b200{Enter}
;Change clip speed to 200%.

q::Send {NumpadMult}{NumpadDiv}
;Ripple delete clip at playhead.

u::
BlockInput, SendAndMouse ;---------------------------Selects the inputs to block.
BlockInput, On ;-------------------------------------Blocks input from the user.
SetKeyDelay, 0 ;-------------------------------------Makes key presses have 0 delay.
MouseGetPos, xpos, ypos ;----------------------------Stores current co-ordinates of mouse position as variables x and y.
DllCall("SetCursorPos", int, 31, int, 502) ;----------Moves cursor to effects tab.
sleep, 10
MouseClick, Left, , , 1 ;----------------------------Selects the effects tab.
DllCall("SetCursorPos", int, 150, int, 530) ;---------Moves mouse cursor to effects search bar.
sleep, 10 
MouseClick, Left, , , 1 ;----------------------------Selects effects search bar.
SendInput, {BS}crop ;--------------------------------Clears effects search bar and inputs effect.
DllCall("SetCursorPos", int, 77, int, 674) ;---------Moves mouse cursor to select the effect.
MouseClick, Left, , , 2 ;----------------------------Double clicks effect to apply it to the clip.
DllCall("SetCursorPos", int, xpos, int, ypos) ;------Returns the mouse to original position.
BlockInput, off ;------------------------------------Re-enables user input.
return
;Apply crop effect to selected clip.

j::
BlockInput, SendAndMouse ;---------------------------Selects the inputs to block.
BlockInput, On ;-------------------------------------Blocks input from the user.
SetKeyDelay, 0 ;-------------------------------------Makes key presses have 0 delay.
MouseGetPos, xpos, ypos ;----------------------------Stores current co-ordinates of mouse position as variables x and y.
DllCall("SetCursorPos", int, 31, int, 502) ;----------Moves cursor to effects tab.
sleep, 10
MouseClick, Left, , , 1 ;----------------------------Selects the effects tab.
DllCall("SetCursorPos", int, 17, int, 530) ;---------Moves mouse cursor to effects search bar.
sleep, 10 
MouseClick, Left, , , 1 ;----------------------------Selects effects search bar.
SendInput, {BS}three ;--------------------------------Clears effects search bar and inputs effect.
DllCall("SetCursorPos", int, 60, int, 675) ;---------Moves mouse cursor to select the effect.
MouseClick, Left, , , 2 ;----------------------------Double clicks effect to apply it to the clip.
DllCall("SetCursorPos", int, xpos, int, ypos) ;------Returns the mouse to original position.
BlockInput, off ;------------------------------------Re-enables user input.
return
;Apply three way colour corrector to selected clip.

m::
BlockInput, SendAndMouse ;---------------------------Selects the inputs to block.
BlockInput, On ;-------------------------------------Blocks input from the user.
SetKeyDelay, 0 ;-------------------------------------Makes key presses have 0 delay.
MouseGetPos, xpos, ypos ;----------------------------Stores current co-ordinates of mouse position as variables x and y.
DllCall("SetCursorPos", int, 31, int, 502) ;----------Moves cursor to effects tab.
sleep, 10
MouseClick, Left, , , 1 ;----------------------------Selects the effects tab.
DllCall("SetCursorPos", int, 17, int, 530) ;---------Moves mouse cursor to effects search bar.
sleep, 10 
MouseClick, Left, , , 1 ;----------------------------Selects effects search bar.
SendInput, {BS}Color Key ;--------------------------------Clears effects search bar and inputs effect.
DllCall("SetCursorPos", int, 61, int, 677) ;---------Moves mouse cursor to select the effect.
MouseClick, Left, , , 2 ;----------------------------Double clicks effect to apply it to the clip.
DllCall("SetCursorPos", int, xpos, int, ypos) ;------Returns the mouse to original position.
BlockInput, off ;------------------------------------Re-enables user input.
return
;Apply colour key effect (for getting rid of greenscreens) to selected clip.

Numpad1::
BlockInput, SendAndMouse ;---------------------------Selects the inputs to block.
BlockInput, On ;-------------------------------------Blocks input from the user.
SetKeyDelay, 0 ;-------------------------------------Makes key presses have 0 delay.
MouseGetPos, xpos, ypos ;----------------------------Stores current co-ordinates of mouse position as variables x and y.
DllCall("SetCursorPos", int, 31, int, 502) ;----------Moves cursor to effects tab.
sleep, 10
MouseClick, Left, , , 1 ;----------------------------Selects the effects tab.
DllCall("SetCursorPos", int, 17, int, 530) ;---------Moves mouse cursor to effects search bar.
sleep, 10 
MouseClick, Left, , , 1 ;----------------------------Selects effects search bar.
SendInput, {BS}Colour ;------------------------------Clears effects search bar and inputs preset name.
DllCall("SetCursorPos", int, 49, int, 576) ;---------Moves mouse cursor to select the preset.
sleep, 10
MouseClickDrag, Left, , , xpos, ypos, 1 l ;----------Drags preset to clip.
DllCall("SetCursorPos", int, xpos, int, ypos) ;------Returns the mouse to original position.
BlockInput, off ;------------------------------------Re-enables user input.
return
;Apply default colour correction template.

+1::
BlockInput, SendAndMouse ;---------------------------Selects the inputs to block.
BlockInput, On ;-------------------------------------Blocks input from the user.
SetKeyDelay, 0 ;-------------------------------------Makes key presses have 0 delay.
MouseGetPos, xpos, ypos ;----------------------------Stores current co-ordinates of mouse position as variables x and y.
DllCall("SetCursorPos", int, 31, int, 502) ;----------Moves cursor to effects tab.
sleep, 10
MouseClick, Left, , , 1 ;----------------------------Selects the effects tab.
DllCall("SetCursorPos", int, 17, int, 530) ;---------Moves mouse cursor to effects search bar.
sleep, 10 
MouseClick, Left, , , 1 ;----------------------------Selects effects search bar.
SendInput, {BS} ;------------------------------------Clears effects search bar.
DllCall("SetCursorPos", int, xpos, int, ypos) ;------Sends mouse back to original co-ordinates.
return

+2::
BlockInput, SendAndMouse ;---------------------------Selects the inputs to block.
BlockInput, On ;-------------------------------------Blocks input from the user.
SetKeyDelay, 0 ;-------------------------------------Makes key presses have 0 delay.
MouseGetPos, xpos, ypos ;----------------------------Stores current co-ordinates of mouse position as variables x and y.
DllCall("SetCursorPos", int,  126, int, 97) ;----------Moves cursor to Commonly Used Bin.
sleep, 10
MouseClick, Left, , , 1 ;----------------------------Selects the Commonly Used Bin.
DllCall("SetCursorPos", int, xpos, int, ypos) ;------Sends mouse back to original co-ordinates.
return

#IfWinActive

;THIS IS NOW THE WINDOW SWITCHING COMPONENT OF THE SCRIPT
;DO NOT PLACE PREMIERE HOTKEYS BELOW THIS POINT

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

;THIS IS WHERE THE RIGHT CLICK PLAYHEAD DRAG MOD STARTS
;DO NOT PLACE ANYTHING ELSE OTHER THAN CODE PERTAINING TO THIS BELOW THIS POINT

;THIS IS WHERE MISC HOTKEYS STARTS

`::Suspend, Toggle

