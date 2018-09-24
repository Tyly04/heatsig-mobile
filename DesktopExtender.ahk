Gui, 1:+AlwaysOnTop
WinGetPos,,, desk_width, desk_height, Program Manager
deskWidth2 := desk_width/2 - (450/2)
dH := desk_height - (379)
dH2 := desk_height - 150
deskWidth1 := desk_width - 479
deskWidth3 := 0
Gui, 1:Font, S30 CDefault, Verdana
Gui, 1:Add, Button, x12 y39 w450 h110 +Center gBtnUp, Up
Gui, 1:Add, Button, x12 y259 w450 h110 +Center gBtnDown, Down
Gui, 1:Add, Button, x0 y149 w255 h110 +Center gBtnLeft, Left
Gui, 1:Add, Button, x255 y149 w255 h110 +Center gBtnRight, Right
Gui, 1:Show, x%deskWidth1% y%dH% h379 w479 , controlManager
Gui, 2:New
Gui, 2:Font, S30 CDefault, Verdana
Gui, 2:Add, Button, x0 y0 w450 h110 +Center gBtnSpace, 
Gui, 2:Show, x%deskWidth2% y%dH2% h110 w450, spaceManager
Gui, 3:New
Gui, 3:Font, S30 CDefault, Verdana
Gui, 3:Add, Button, x0 y0 w255 h110 +Center gBtnE, E
Gui, 3:Add, Button, x255 y0 w255 h110 +Center gBtnF, F
Gui, 3:Show, x%deskWidth3% y%dH2% h110 w450, interactionManager 
WinSet, AlwaysOnTop, On, spaceManager
WinSet, AlwaysOnTop, On, interactionManager
isUp := 0
isDown := 0
isLeft := 0
isRight := 0
return
; Button-label
BtnUp:
	if(isUp = 0){
		ControlSend,, {w down}, Heat Signature
		isUp := 1
	} else {
    		ControlSend,, {w up}, Heat Signature
		isUp := 0
	}
return
BtnDown:
	if(isDown = 0){
		ControlSend,, {s down}, Heat Signature
		isDown := 1
	} else {
    		ControlSend,, {s up}, Heat Signature
		isDown := 0
	}
return
BtnLeft:
	if(isLeft = 0){
		ControlSend,, {a down}, Heat Signature
		isLeft := 1
	} else {
    		ControlSend,, {a up}, Heat Signature
		isLeft := 0
	}
return
BtnRight:
	if(isRight = 0){
		ControlSend,, {d down}, Heat Signature
		isRight := 1
	} else {
    		ControlSend,, {d up}, Heat Signature
		isRight := 0
	}
return
GuiClose:
ExitApp
GuiClose2:
ExitApp
BtnSpace:
	ControlSend,, {SPACE}, Heat Signature
return
BtnE:
	ControlSend,, e, Heat Signature
return
BtnF:
	ControlSend,, f, Heat Signature
return