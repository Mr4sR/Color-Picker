loop, {
	MouseGetPos, MouseX, MouseY 
	PixelGetColor, color, %MouseX%, %MouseY% ;color under the mouse
	Blue:="0x" SubStr(color,3,2) ;substr is to get the piece
	Blue:=Blue+0 ;add 0 is to convert it to the current number format
	Green:="0x" SubStr(color,5,2)
	Green:=Green+0
	Red:="0x" SubStr(color,7,2)
	Red:=Red+0
	ToolTip, Red: %Red%`nGreen: %Green%`nBlue: %Blue%`nHex: %color%, MouseX+10, MouseY+10
}
return
$F10::pause
return