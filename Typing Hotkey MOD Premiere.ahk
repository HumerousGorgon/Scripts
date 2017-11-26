;Variables
class1 = Edit1
class2 = Edit3
class3 = Edit2
state1 = suspended
state2 = normal

#IfWinActive ahk_exe Adobe Premiere Pro.exe

;Left mouse button click
;	Checks for window class below it
;	if window class = edit 1, edit 3, etc.
;			suspend script then click left mouse button
;	else
;		if script suspended through image search
;			re-enable then left mouse button.
;		else
;			left mouse button
;return
;
;
;IMAGE SEARCH THE SCREEN TO GAIN STATE OF SCRIPT

;Rectangle to search
;x1 = 1614
;y1 = 1042
;
;x2 = 1714
;y2 = 1074
;
;Basic idea is described above. 
;The hotkey detects that the left mouse button is selected. AHK then checks the class of window below the mouse (as you always have to click into the text box to type into it).
;If the box matches either class {edit1}, {edit2}, etc. then it will suspend the hotkey script that controls all of Premiere's hotkeys, meaning typing is not affected.
;It will then simulate a left click to ensure that the function of the click is not impeded. If the class is not one of the pre-defined variables, then AHK will check to see
;if the script is still suspended by doing an image search for the suspended icon on the lower right of the taskbar. If the script is suspended, then AHK will un-suspend the script,
;and a left mouse button press will also be simulated. If it does not find the image, then it indicates that the script is not suspended, meaning that nothing needs to be done and
;AHK will simply send a left mouse button press.

;#InputLevel, 2
;LButton::
;MouseGetPos, xpos, ypos, , Class
;MsgBox, The class is %Class%
;if (Class = class1 || Class = class2)
;{
;	Gosub, p
;	sendinput, {LButton}
;}
;else
;{
;	ImageSearch, VarX, VarY, 1614, 1042, 1714, 1074, C:\Users\humerous\Desktop\AutoHotKey\Images\State_Suspended.bmp
;	if ErrorLevel = 0
;	{
;		Gosub, p
;		sendinput, {LButton}
;	}
;	else
;	{
;		sendinput, {LButton}
;	}
;}
;return
;#InputLevel

#InputLevel, 1 ;----Allows for control of other scripts hotkeys
p:: Send, {F10} ;---Disables Premiere Hotkeys script.

LButton::
MouseGetPos, xpos, ypos, , Class ;-------Gets the class underneath the cursor.
if (Class = class1 || Class = class2 || Class = class3) ;--If the class defined in the previous line matches either of the variables defined above, the premiere hotkeys script is disabled and a left mouse click is sent.
{
	Gosub, p
	sendinput, {LButton}
}
else ;---If the class defined does not match either of the variables, this script will read the other scripts state from the text file (SEE PREMIERE HOTKEYS SCRIPT FOR MORE INFO) and either re-enable the script and send a left mouse click or just send a left mouse click, depending on if the state is suspended or normal.
{
	FileReadLine, state, %A_WorkingDir%\premiere_hotkeys_state.txt, 1
	;MsgBox, state is %state%
	if (state = state1)
	{
		Gosub, p
		sendinput, {LButton}
	}
	else if (state = state2)
	{
		sendinput, {LButton}
	}
}
return
	