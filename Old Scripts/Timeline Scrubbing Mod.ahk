;variables
timeline1 = 0x202020
timeline2 = 0x313131
timeline3 = 0x1B1B1B
timeline4 = 0x414141
timeline5 = 0x212121
timeline6 = 0x262626

#IfWinActive ahk_exe Adobe Premiere Pro.exe
;ANYTHING BELOW THIS POINT WILL ONLY WORK IN PREMIERE PRO

;Timeline Scrubbing Mod COURTESY OF TARANVH
RButton::
MouseGetPos, xpos, ypos ;------Stores current mouse coordinates as x and y coordinates.
PixelGetColor colour, %xpos%, %ypos%, RGB ;------------Enables AHK to know what the colour of the pixel below the mouse is at current mouse position (see above ^^)
if (colour = timeline1 || colour = timeline2 || colour = timeline3 || colour = timeline4 || colour = timeline5 || colour = timeline6) ;----Compares colour to above defined colours.
	Send, ^+{a} ;------------------If the colour matches, exit out of any menu.
if (colour = timeline1 || colour = timeline2 || colour = timeline3 || colour = timeline4 || colour = timeline5 || colour = timeline6) ;----Compares colour to above defined colours. 
{
	click middle ;----Middle mouse highlights the timeline.
	if GetKeyState("RButton", "P") = 1 ;-----Enables AHK to identify whether the right mouse button is being held down or not.
		loop {
			Send, +/ ;-----Bound in premiere to send the playhead to mouse position.
			if GetKeyState("RButton", "P") = 0 ;-----If rmb is not held down from that point above, the loop ends.
				{
				Goto theEnd
				}
			}
	Send {escape}
	}
	
else {
 sendinput, {Rbutton} ;------Allows right mouse button normal operation.
 }

theEnd:
return
