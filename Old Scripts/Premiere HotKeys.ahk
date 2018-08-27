#IfWinActive ahk_exe Adobe Premiere Pro.exe
;ANYTHING BELOW THIS POINT WILL ONLY WORK INSIDE OF PREMIERE PRO

;Common modifier keys used in AHK:
; Alt = !
; Shift = +
; Ctrl = ^
; Windows Key = #


;TITLE CREATOR
z::
BlockInput, SendAndMouse ;---------------------------Sets the inputs to block (Mouse and Keyboard)
BlockInput On ;--------------------------------------Blocks user input defined by the previous statement
SetKeyDelay, 0 ;-------------------------------------Sets delay between keypresses as variable 0
MouseGetPos, xpos, ypos ;----------------------------Obtains current mouse position and stores it as variable xpos and variable ypos (x and y coordinates)
GoSub, +3 ;------------------------------------------Calls upon the Title Selector hotkey
DllCall("SetCursorPos", int, 830, int, 181) ;--------Moves cursor to position x,y
MouseClick, Left, , , 1 ;----------------------------Left clicks the mouse once at selected point
DllCall("SetCursorPos", int, 90, int, 230) ;---------Moves cursor to position x,y
MouseClick, Left, , , 1 ;----------------------------Left clicks the mouse once at selected point
Send, ^+{/} ;----------------------------------------Sends keyboard shortcut bound in Premiere to duplicating a clip
DllCall("SetCursorPos", int, xpos, int, ypos) ;------Moves cursor back to original position xpos, ypos
BlockInput, Off ;------------------------------------Re-enables input from user
return
;Title Creator



;CLIP SPEED HOTKEYS
v::Send b100.1{Enter}
;Change clip speed to 100.1%.

c::Send b200{Enter}
;Change clip speed to 200%.



;TIMELINE HOTKEYS
q::Send {NumpadMult}{NumpadDiv}
;Ripple delete clip at playhead.

^+1::Send, ^+g-8{Enter}
;Default audio gain adjustment for intro.

;PANEL NAVIGATION
+1::
BlockInput, SendAndMouse ;---------------------------Selects the inputs to block.
BlockInput, On ;-------------------------------------Blocks input from the user.
SetKeyDelay, 0 ;-------------------------------------Makes key presses have 0 delay.
MouseGetPos, xpos, ypos ;----------------------------Stores current co-ordinates of mouse position as variables x and y.
DllCall("SetCursorPos", int, 27, int, 97) ;----------Moves cursor to effects panel.
MouseClick, Left, , , 1 ;----------------------------Selects the effects panel.
DllCall("SetCursorPos", int, 15, int, 128) ;---------Moves mouse cursor to effects search bar.
MouseClick, Left, , , 1 ;----------------------------Selects effects search bar.
SendInput, {BS} ;------------------------------------Clears effects search bar.
DllCall("SetCursorPos", int, xpos, int, ypos) ;------Sends mouse back to original co-ordinates.
return
;Highlights the effects panel and clears text in the search bar.

+2::
BlockInput, SendAndMouse ;---------------------------Selects the inputs to block.
BlockInput, On ;-------------------------------------Blocks input from the user.
SetKeyDelay, 0 ;-------------------------------------Makes key presses have 0 delay.
MouseGetPos, xpos, ypos ;----------------------------Stores current co-ordinates of mouse position as variables x and y.
DllCall("SetCursorPos", int, 126, int, 97) ;---------Moves cursor to Commonly Used Bin.
MouseClick, Left, , , 1 ;----------------------------Selects the Commonly Used Bin.
DllCall("SetCursorPos", int, xpos, int, ypos) ;------Sends mouse back to original co-ordinates.
return
;Selects the Commonly Used bin.

+3::
BlockInput, SendAndMouse ;---------------------------Selects the inputs to block.
BlockInput, On ;-------------------------------------Blocks input from the user.
SetKeyDelay, 0 ;-------------------------------------Makes key presses have 0 delay.
MouseGetPos, xpos, ypos ;----------------------------Stores current co-ordinates of mouse position as variables x and y.
DllCall("SetCursorPos", int, 257, int, 97) ;---------Moves cursor to Text Bin.
MouseClick, Left, , , 1 ;----------------------------Selects the Commonly Used Bin.
DllCall("SetCursorPos", int, xpos, int, ypos) ;------Sends mouse back to original co-ordinates.
return
;Selects the Text bin.



;APPLYING PRESETS
+F1::
BlockInput, SendAndMouse ;---------------------------Selects the inputs to block.
BlockInput, On ;-------------------------------------Blocks input from the user.
SetKeyDelay, 0 ;-------------------------------------Makes key presses have 0 delay.
MouseGetPos, xpos, ypos ;----------------------------Stores current co-ordinates of mouse position as variables x and y.
Gosub, +1 ;------------------------------------------Calls upon the effects panel selector hotkey.
SendInput, {BS}Colour ;------------------------------Clears effects search bar and inputs preset name.
DllCall("SetCursorPos", int, 48, int, 171) ;---------Moves mouse cursor to select the preset.
MouseClickDrag, Left, , , xpos, ypos, 1 ;------------Drags preset to clip.
DllCall("SetCursorPos", int, xpos, int, ypos) ;------Returns the mouse to original position.
BlockInput, off ;------------------------------------Re-enables user input.
return
;Apply default colour correction template.

+F2::
BlockInput, SendAndMouse ;---------------------------Selects the inputs to block.
BlockInput, On ;-------------------------------------Blocks input from the user.
SetKeyDelay, 0 ;-------------------------------------Makes key presses have 0 delay.
MouseGetPos, xpos, ypos ;----------------------------Stores current co-ordinates of mouse position as variables x and y.
Gosub, +1 ;------------------------------------------Calls upon the effects panel selector hotkey.
SendInput, {BS}gaussian ;----------------------------Clears effects search bar and inputs preset name.
DllCall("SetCursorPos", int, 97, int, 172) ;---------Moves mouse cursor to select the preset.
MouseClickDrag, Left, , , xpos, ypos, 1 l ;----------Drags preset to clip.
DllCall("SetCursorPos", int, xpos, int, ypos) ;------Returns the mouse to original position.
BlockInput, off ;------------------------------------Re-enables user input.
return
;Apply gaussian blur template.

+F3::
BlockInput, SendAndMouse ;---------------------------Selects the inputs to block.
BlockInput, On ;-------------------------------------Blocks input from the user.
SetKeyDelay, 0 ;-------------------------------------Makes key presses have 0 delay.
MouseGetPos, xpos, ypos ;----------------------------Stores current co-ordinates of mouse position as variables x and y.
Gosub, +1 ;------------------------------------------Calls upon the effects panel selector hotkey.
SendInput, {BS}Pop ;---------------------------------Clears effects search bar and inputs preset name.
DllCall("SetCursorPos", int, 88, int, 173) ;---------Moves mouse cursor to select the preset.
MouseClickDrag, Left, , , xpos, ypos, 1 l ;----------Drags preset to clip.
DllCall("SetCursorPos", int, xpos, int, ypos) ;------Returns the mouse to original position.
BlockInput, off ;------------------------------------Re-enables user input.
return
;Apply pop effect.

+F4::
BlockInput, SendAndMouse ;---------------------------Selects the inputs to block.
BlockInput, On ;-------------------------------------Blocks input from the user.
SetKeyDelay, 0 ;-------------------------------------Makes key presses have 0 delay.
MouseGetPos, xpos, ypos ;----------------------------Stores current co-ordinates of mouse position as variables x and y.
Gosub, +1 ;------------------------------------------Calls upon the effects panel selector hotkey.
SendInput, {BS}Slide ;-------------------------------Clears effects search bar and inputs preset name.
DllCall("SetCursorPos", int, 88, int, 173) ;---------Moves mouse cursor to select the preset.
MouseClickDrag, Left, , , xpos, ypos, 1 l ;----------Drags preset to clip.
DllCall("SetCursorPos", int, xpos, int, ypos) ;------Returns the mouse to original position.
BlockInput, off ;------------------------------------Re-enables user input.
return
;Apply slide in (bottom) NOT CURRENTLY WORKING DUE TO PRESET NOT BEING MADE IN PREMIERE.



;APPLYING EFFECTS
u::
BlockInput, SendAndMouse ;---------------------------Selects the inputs to block.
BlockInput, On ;-------------------------------------Blocks input fro the user.
SetKeyDelay, 0 ;-------------------------------------Makes key presses have 0 delay.
MouseGetPos, xpos, ypos ;----------------------------Stores current co-ordinates of mouse position as variables x and y.
Gosub, +1 ;------------------------------------------Calls upon the effects panel selector hotkey.
Send, crop ;-----------------------------------------Searches for the crop effect.
DllCall("SetCursorPos", int, 59, int, 270) ;---------Moves cursor ontop of the crop effect.
MouseClick, Left, , , 2 ;----------------------------Double left clicks to apply to the clip selected.
DllCall("SetCursorPos", int, xpos, int, ypos) ;------Moves mouse back to original position x and y.
BlockInput, off ;------------------------------------Re-enables user input.
return
;Applies the crop effect.

j::
BlockInput, SendAndMouse ;---------------------------Selects the inputs to block.
BlockInput, On ;-------------------------------------Blocks input from the user.
SetKeyDelay, 0 ;-------------------------------------Makes key presses have 0 delay.
MouseGetPos, xpos, ypos ;----------------------------Stores current co-ordinates of mouse position as variables x and y.
Gosub, +1 ;------------------------------------------Calls upon the effects panel selector hotkey.
SendInput, {BS}three ;-------------------------------Clears effects search bar and inputs effect.
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
GoSub, +1 ;------------------------------------------Calls upon the effects panel selector hotkey.
SendInput, {BS}Color Key ;---------------------------Clears effects search bar and inputs effect.
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
GoSub, +1 ;------------------------------------------Calls upon the effects panel selector hotkey.
SendInput, {BS}gaussian ;----------------------------Clears effects search bar and inputs effect.
DllCall("SetCursorPos", int, 114, int, 334) ;--------Moves mouse cursor to select the effect.
MouseClick, Left, , , 2 ;----------------------------Double clicks effect to apply it to the clip.
DllCall("SetCursorPos", int, xpos, int, ypos) ;------Returns the mouse to original position.
BlockInput, off ;------------------------------------Re-enables user input.
return
;Apply gaussian blur effect to selected clip.

;TESTING
#InputLevel, 0
F10::
Suspend, toggle
	if A_IsSuspended = 1
	{
		FileDelete, %A_WorkingDir%\premiere_hotkeys_state.txt
		FileAppend, suspended, %A_WorkingDir%\premiere_hotkeys_state.txt
	}
	else
	{
		FileDelete, %A_WorkingDir%\premiere_hotkeys_state.txt
		FileAppend, normal, %A_WorkingDir%\premiere_hotkeys_state.txt
	}
return







