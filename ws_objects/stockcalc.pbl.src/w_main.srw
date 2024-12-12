$PBExportHeader$w_main.srw
forward
global type w_main from window
end type
type cb_4 from commandbutton within w_main
end type
type cb_3 from commandbutton within w_main
end type
type cb_2 from commandbutton within w_main
end type
type cb_1 from commandbutton within w_main
end type
end forward

global type w_main from window
integer width = 4553
integer height = 2484
boolean titlebar = true
string title = "Untitled"
boolean controlmenu = true
boolean minbox = true
boolean maxbox = true
boolean resizable = true
long backcolor = 67108864
string icon = "AppIcon!"
boolean center = true
cb_4 cb_4
cb_3 cb_3
cb_2 cb_2
cb_1 cb_1
end type
global w_main w_main

on w_main.create
this.cb_4=create cb_4
this.cb_3=create cb_3
this.cb_2=create cb_2
this.cb_1=create cb_1
this.Control[]={this.cb_4,&
this.cb_3,&
this.cb_2,&
this.cb_1}
end on

on w_main.destroy
destroy(this.cb_4)
destroy(this.cb_3)
destroy(this.cb_2)
destroy(this.cb_1)
end on

type cb_4 from commandbutton within w_main
integer x = 539
integer y = 1748
integer width = 457
integer height = 132
integer taborder = 40
integer textsize = -12
integer weight = 400
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Tahoma"
string text = "calc ball"
end type

event clicked;open(w_calc_ball)
end event

type cb_3 from commandbutton within w_main
integer x = 553
integer y = 1320
integer width = 457
integer height = 132
integer taborder = 30
integer textsize = -12
integer weight = 400
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Tahoma"
string text = "fileopen"
end type

event clicked;string ls_file = "C:\IntelliCred\harrytest1106.txt"


Integer li_FileNo


li_FileNo = FileOpen(ls_file, LineMode!, Write!, Shared!, Append!) 

sleep(9)

FileWrite(li_FileNo, "Harrytest " + string(now(),"yyyy-mm-dd hh:mm:ss.fff") )

FileClose(li_FileNo)

end event

type cb_2 from commandbutton within w_main
integer x = 517
integer y = 788
integer width = 457
integer height = 132
integer taborder = 20
integer textsize = -12
integer weight = 400
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Tahoma"
string text = "FileCopy"
end type

event clicked;Integer	li_FileNum
string as_source, as_target
as_source = "C:\Users\zhuyouquan\AppData\Roaming\PBApps\Applications\192.168.9.181_intelliprod181\viscompdf.dll"
as_target = "C:\Users\ZHUYOU~~1\AppData\Roaming\PBApps\APPLIC~~1\192168~~2.181\viscompdf.dll"

IF FileExists(as_source) = True Then
//	IF Not(FileExists(as_target) = True ) Then
		li_FileNum = FileCopy (as_source,  as_target, true)
		IF li_FileNum = 1 Then 
			return 1
		ElseIf  li_FileNum = -1 Then 
			//---------Begin Modified by (Appeon)Harry 03.19.2014 for V142 ISG-CLX--------
			//messagebox('Error Source file', 'The file: ' + as_source +' Could not be written. Please make sure the path exists and you have FULL permissions to it' )
			messagebox('Error Source file', 'Failed to copy the file ' +as_source + ' to '+as_target+'. Please make sure the path exists and you have FULL permissions to it' )
			//---------End Modfiied ------------------------------------------------------
			return - 1
		ElseIf  li_FileNum = -2 Then 
			//---------Begin Modified by (Appeon)Harry 03.19.2014 for V142 ISG-CLX--------
			//messagebox('Error Targret file', 'The Fax directory : ' + as_target +' Could not be opened. Please make sure the path exists and you have FULL permissions to it' )
			messagebox('Error Targret file', 'Failed to copy the file ' +as_source + ' to '+as_target+'. Please make sure the path exists and you have FULL permissions to it' )
			//---------End Modfiied ------------------------------------------------------
			return - 2
		End If
//	End If
End If
end event

type cb_1 from commandbutton within w_main
integer x = 485
integer y = 272
integer width = 457
integer height = 132
integer taborder = 10
integer textsize = -12
integer weight = 400
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Tahoma"
string text = "Limit"
end type

event clicked;open(w_calculated_limit)
end event

