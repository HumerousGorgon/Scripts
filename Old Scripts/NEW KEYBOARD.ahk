


#IfWinActive ahk_exe Adobe Premiere Pro.exe

;Common modifier keys used in AHK:
; Alt = !
; Shift = +
; Ctrl = ^
; Windows Key = #

;z::
;BlockInput, SendAndMouse ;---------------------------Selects the inputs to block.
;SendInput, ^t{Enter} ;-------------------------------Opens the titler window.
;BlockInput On ;--------------------------------------Blocks input from the user.
;SetKeyDelay, 0 ;-------------------------------------Makes key presses have 0 delay.
;MouseGetPos, xpos, ypos ;----------------------------Stores current co-ordinates of mouse position as variables x and y.
;DllCall("SetCursorPos", int, -797, int, 179) ;-------Send mouse cursor to text tool.
;sleep, 10 
;MouseClick, Left, , , 1 ;----------------------------Left clicks mouse to select text tool.
;DllCall("SetCursorPos", int, -635, int, 459) ;-------Send mouse cursor to set text into window.
;sleep, 100 
;MouseClick, Left, , , 1 ;----------------------------Left clicks to make text box appear.
;sleep, 100
;DllCall("SetCursorPos", int, -676, int, 166) ;-------Send mouse cursor to font selection box.
;sleep, 100
;MouseClick, Left, , , 1 ;----------------------------Selects all text within font selection box.
;sleep, 10
;SendInput, Dosis{Enter} ;----------------------------Inputs default font.
;sleep, 10
;DllCall("SetCursorPos", int, -635, int, 459) ;-------Sends mouse cursor back to text box so user can type.
;sleep, 10
;MouseClick, Left, , , 1 ;----------------------------Left clicks so user can type within box.
;sleep, 10
;DllCall("SetCursorPos", int, xpos, int, ypos) ;------Returns mouse cursor to original position.
;BlockInput, Off ;------------------------------------Re-enables user input.
;return
;Open titler and set default font.

z::
BlockInput, SendAndMouse
BlockInput On
SetKeyDelay, 0
MouseGetPos, xpos, ypos
GoSub, +3
DllCall("SetCursorPos", int, 830, int, 181)
MouseClick, Left, , , 1
DllCall("SetCursorPos", int, 90, int, 230)
MouseClick, Left, , , 1
Send, ^+{/}
DllCall("SetCursorPos", int, xpos, int, ypos)
BlockInput, Off
return


v::Send b100.1{Enter}
;Change clip speed to 100.1%.

c::Send b200{Enter}
;Change clip speed to 200%.

q::Send {NumpadMult}{NumpadDiv}
;Ripple delete clip at playhead.

Ins::Send ^+{PgUp}export{Tab}{Tab}{Tab}{Tab}{Enter}
;Exports frame to folder

;u::
;BlockInput, SendAndMouse ;---------------------------Selects the inputs to block.
;BlockInput, On ;-------------------------------------Blocks input from the user.
;SetKeyDelay, 0 ;-------------------------------------Makes key presses have 0 delay.
;MouseGetPos, xpos, ypos ;----------------------------Stores current co-ordinates of mouse position as variables x and y.
;DllCall("SetCursorPos", int, 27, int, 97) ;----------Moves cursor to effects tab.
;sleep, 10
;MouseClick, Left, , , 1 ;----------------------------Selects the effects tab.
;DllCall("SetCursorPos", int, 15, int, 128) ;---------Moves mouse cursor to effects search bar.
;sleep, 10 
;MouseClick, Left, , , 1 ;----------------------------Selects effects search bar.
;SendInput, {BS}crop ;--------------------------------Clears effects search bar and inputs effect.
;DllCall("SetCursorPos", int, 59, int, 270) ;---------Moves mouse cursor to select the effect.
;MouseClick, Left, , , 2 ;----------------------------Double clicks effect to apply it to the clip.
;DllCall("SetCursorPos", int, xpos, int, ypos) ;------Returns the mouse to original position.
;BlockInput, off ;------------------------------------Re-enables user input.
;return
;Apply crop effect to selected clip.

u::
BlockInput, SendAndMouse
BlockInput, On
SetKeyDelay, 0
MouseGetPos, xpos, ypos
Gosub, +1
Send, crop
DllCall("SetCursorPos", int, 59, int, 270)
MouseClick, Left, , , 2
DllCall("SetCursorPos", int, xpos, int, ypos)
BlockInput, off
return
;Applies the crop effect.

j::
BlockInput, SendAndMouse ;---------------------------Selects the inputs to block.
BlockInput, On ;-------------------------------------Blocks input from the user.
SetKeyDelay, 0 ;-------------------------------------Makes key presses have 0 delay.
MouseGetPos, xpos, ypos ;----------------------------Stores current co-ordinates of mouse position as variables x and y.
DllCall("SetCursorPos", int, 27, int, 97) ;----------Moves cursor to effects tab.
sleep, 10
MouseClick, Left, , , 1 ;----------------------------Selects the effects tab.
DllCall("SetCursorPos", int, 15, int, 128) ;---------Moves mouse cursor to effects search bar.
sleep, 10 
MouseClick, Left, , , 1 ;----------------------------Selects effects search bar.
SendInput, {BS}three ;--------------------------------Clears effects search bar and inputs effect.
DllCall("SetCursorPos", int, 59, int, 270) ;---------Moves mouse cursor to select the effect.
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
DllCall("SetCursorPos", int, 27, int, 97) ;----------Moves cursor to effects tab.
sleep, 10
MouseClick, Left, , , 1 ;----------------------------Selects the effects tab.
DllCall("SetCursorPos", int, 15, int, 128) ;---------Moves mouse cursor to effects search bar.
sleep, 10 
MouseClick, Left, , , 1 ;----------------------------Selects effects search bar.
SendInput, {BS}Color Key ;--------------------------------Clears effects search bar and inputs effect.
DllCall("SetCursorPos", int, 59, int, 270) ;---------Moves mouse cursor to select the effect.
MouseClick, Left, , , 2 ;----------------------------Double clicks effect to apply it to the clip.
DllCall("SetCursorPos", int, xpos, int, ypos) ;------Returns the mouse to original position.
BlockInput, off ;------------------------------------Re-enables user input.
return
;Apply colour key effect (for getting rid of greenscreens) to selected clip.

i::
BlockInput, SendAndMouse ;---------------------------Selects the inputs to block.
BlockInput, On ;-------------------------------------Blocks input from the user.
SetKeyDelay, 0 ;-------------------------------------Makes key presses have 0 delay.
MouseGetPos, xpos, ypos ;----------------------------Stores current co-ordinates of mouse position as variables x and y.
DllCall("SetCursorPos", int, 27, int, 97) ;----------Moves cursor to effects tab.
sleep, 10
MouseClick, Left, , , 1 ;----------------------------Selects the effects tab.
DllCall("SetCursorPos", int, 15, int, 128) ;---------Moves mouse cursor to effects search bar.
sleep, 10 
MouseClick, Left, , , 1 ;----------------------------Selects effects search bar.
SendInput, {BS}gaussian ;--------------------------------Clears effects search bar and inputs effect.
DllCall("SetCursorPos", int, 114, int, 334) ;---------Moves mouse cursor to select the effect.
MouseClick, Left, , , 2 ;----------------------------Double clicks effect to apply it to the clip.
DllCall("SetCursorPos", int, xpos, int, ypos) ;------Returns the mouse to original position.
BlockInput, off ;------------------------------------Re-enables user input.
return
;Apply gaussian blur effect to selected clip.

Numpad1::
BlockInput, SendAndMouse ;---------------------------Selects the inputs to block.
BlockInput, On ;-------------------------------------Blocks input from the user.
SetKeyDelay, 0 ;-------------------------------------Makes key presses have 0 delay.
MouseGetPos, xpos, ypos ;----------------------------Stores current co-ordinates of mouse position as variables x and y.
DllCall("SetCursorPos", int, 27, int, 97) ;----------Moves cursor to effects tab.
sleep, 10
MouseClick, Left, , , 1 ;----------------------------Selects the effects tab.
DllCall("SetCursorPos", int, 15, int, 128) ;---------Moves mouse cursor to effects search bar.
sleep, 10 
MouseClick, Left, , , 1 ;----------------------------Selects effects search bar.
SendInput, {BS}Colour ;------------------------------Clears effects search bar and inputs preset name.
DllCall("SetCursorPos", int, 48, int, 171) ;---------Moves mouse cursor to select the preset.
sleep, 10
MouseClickDrag, Left, , , xpos, ypos, 1 1 ;----------Drags preset to clip.
DllCall("SetCursorPos", int, xpos, int, ypos) ;------Returns the mouse to original position.
BlockInput, off ;------------------------------------Re-enables user input.
return
;Apply default colour correction template.

Numpad2::
BlockInput, SendAndMouse ;---------------------------Selects the inputs to block.
BlockInput, On ;-------------------------------------Blocks input from the user.
SetKeyDelay, 0 ;-------------------------------------Makes key presses have 0 delay.
MouseGetPos, xpos, ypos ;----------------------------Stores current co-ordinates of mouse position as variables x and y.
DllCall("SetCursorPos", int, 27, int, 97) ;----------Moves cursor to effects tab.
sleep, 10
MouseClick, Left, , , 1 ;----------------------------Selects the effects tab.
DllCall("SetCursorPos", int, 15, int, 128) ;---------Moves mouse cursor to effects search bar.
sleep, 10 
MouseClick, Left, , , 1 ;----------------------------Selects effects search bar.
SendInput, {BS}gaussian ;------------------------------Clears effects search bar and inputs preset name.
DllCall("SetCursorPos", int, 97, int, 172) ;---------Moves mouse cursor to select the preset.
sleep, 10
MouseClickDrag, Left, , , xpos, ypos, 1 l ;----------Drags preset to clip.
DllCall("SetCursorPos", int, xpos, int, ypos) ;------Returns the mouse to original position.
BlockInput, off ;------------------------------------Re-enables user input.
return
;Apply gaussian blur template.

Numpad3::
BlockInput, SendAndMouse ;---------------------------Selects the inputs to block.
BlockInput, On ;-------------------------------------Blocks input from the user.
SetKeyDelay, 0 ;-------------------------------------Makes key presses have 0 delay.
MouseGetPos, xpos, ypos ;----------------------------Stores current co-ordinates of mouse position as variables x and y.
DllCall("SetCursorPos", int, 27, int, 97) ;----------Moves cursor to effects tab.
sleep, 10
MouseClick, Left, , , 1 ;----------------------------Selects the effects tab.
DllCall("SetCursorPos", int, 15, int, 128) ;---------Moves mouse cursor to effects search bar.
sleep, 10 
MouseClick, Left, , , 1 ;----------------------------Selects effects search bar.
SendInput, {BS}Pop ;------------------------------Clears effects search bar and inputs preset name.
DllCall("SetCursorPos", int, 88, int, 173) ;---------Moves mouse cursor to select the preset.
sleep, 10
MouseClickDrag, Left, , , xpos, ypos, 1 l ;----------Drags preset to clip.
DllCall("SetCursorPos", int, xpos, int, ypos) ;------Returns the mouse to original position.
BlockInput, off ;------------------------------------Re-enables user input.
return
;Apply pop effect.

Numpad4::
BlockInput, SendAndMouse ;---------------------------Selects the inputs to block.
BlockInput, On ;-------------------------------------Blocks input from the user.
SetKeyDelay, 0 ;-------------------------------------Makes key presses have 0 delay.
MouseGetPos, xpos, ypos ;----------------------------Stores current co-ordinates of mouse position as variables x and y.
DllCall("SetCursorPos", int, 27, int, 97) ;----------Moves cursor to effects tab.
sleep, 10
MouseClick, Left, , , 1 ;----------------------------Selects the effects tab.
DllCall("SetCursorPos", int, 15, int, 128) ;---------Moves mouse cursor to effects search bar.
sleep, 10 
MouseClick, Left, , , 1 ;----------------------------Selects effects search bar.
SendInput, {BS}Slide ;------------------------------Clears effects search bar and inputs preset name.
DllCall("SetCursorPos", int, 88, int, 173) ;---------Moves mouse cursor to select the preset.
sleep, 10
MouseClickDrag, Left, , , xpos, ypos, 1 l ;----------Drags preset to clip.
DllCall("SetCursorPos", int, xpos, int, ypos) ;------Returns the mouse to original position.
BlockInput, off ;------------------------------------Re-enables user input.
return
;Apply slide in (bottom).

Numpad5::Send, ^+g-8{Enter}

+1::
BlockInput, SendAndMouse ;---------------------------Selects the inputs to block.
BlockInput, On ;-------------------------------------Blocks input from the user.
SetKeyDelay, 0 ;-------------------------------------Makes key presses have 0 delay.
MouseGetPos, xpos, ypos ;----------------------------Stores current co-ordinates of mouse position as variables x and y.
DllCall("SetCursorPos", int, 27, int, 97) ;----------Moves cursor to effects tab.
MouseClick, Left, , , 1 ;----------------------------Selects the effects tab.
DllCall("SetCursorPos", int, 15, int, 128) ;---------Moves mouse cursor to effects search bar.
MouseClick, Left, , , 1 ;----------------------------Selects effects search bar.
SendInput, {BS} ;------------------------------------Clears effects search bar.
DllCall("SetCursorPos", int, xpos, int, ypos) ;------Sends mouse back to original co-ordinates.
return

+2::
BlockInput, SendAndMouse ;---------------------------Selects the inputs to block.
BlockInput, On ;-------------------------------------Blocks input from the user.
SetKeyDelay, 0 ;-------------------------------------Makes key presses have 0 delay.
MouseGetPos, xpos, ypos ;----------------------------Stores current co-ordinates of mouse position as variables x and y.
DllCall("SetCursorPos", int, 126, int, 97) ;----------Moves cursor to Commonly Used Bin.
MouseClick, Left, , , 1 ;----------------------------Selects the Commonly Used Bin.
DllCall("SetCursorPos", int, xpos, int, ypos) ;------Sends mouse back to original co-ordinates.
return

+3::
BlockInput, SendAndMouse ;---------------------------Selects the inputs to block.
BlockInput, On ;-------------------------------------Blocks input from the user.
SetKeyDelay, 0 ;-------------------------------------Makes key presses have 0 delay.
MouseGetPos, xpos, ypos ;----------------------------Stores current co-ordinates of mouse position as variables x and y.
DllCall("SetCursorPos", int, 257, int, 97) ;---------Moves cursor to Commonly Used Bin.
MouseClick, Left, , , 1 ;----------------------------Selects the Commonly Used Bin.
DllCall("SetCursorPos", int, xpos, int, ypos) ;------Sends mouse back to original co-ordinates.
return

XButton1::Suspend, Toggle

`::Suspend, Toggle

