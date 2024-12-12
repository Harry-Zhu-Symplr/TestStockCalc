$PBExportHeader$w_calc_ball.srw
forward
global type w_calc_ball from window
end type
type sle_3 from singlelineedit within w_calc_ball
end type
type st_3 from statictext within w_calc_ball
end type
type sle_2 from singlelineedit within w_calc_ball
end type
type st_2 from statictext within w_calc_ball
end type
type cbx_1 from checkbox within w_calc_ball
end type
type sle_1 from singlelineedit within w_calc_ball
end type
type st_1 from statictext within w_calc_ball
end type
type cb_1 from commandbutton within w_calc_ball
end type
end forward

global type w_calc_ball from window
integer width = 1870
integer height = 1220
boolean titlebar = true
string title = "Untitled"
boolean controlmenu = true
boolean minbox = true
boolean maxbox = true
boolean resizable = true
long backcolor = 67108864
string icon = "AppIcon!"
boolean center = true
sle_3 sle_3
st_3 st_3
sle_2 sle_2
st_2 st_2
cbx_1 cbx_1
sle_1 sle_1
st_1 st_1
cb_1 cb_1
end type
global w_calc_ball w_calc_ball

on w_calc_ball.create
this.sle_3=create sle_3
this.st_3=create st_3
this.sle_2=create sle_2
this.st_2=create st_2
this.cbx_1=create cbx_1
this.sle_1=create sle_1
this.st_1=create st_1
this.cb_1=create cb_1
this.Control[]={this.sle_3,&
this.st_3,&
this.sle_2,&
this.st_2,&
this.cbx_1,&
this.sle_1,&
this.st_1,&
this.cb_1}
end on

on w_calc_ball.destroy
destroy(this.sle_3)
destroy(this.st_3)
destroy(this.sle_2)
destroy(this.st_2)
destroy(this.cbx_1)
destroy(this.sle_1)
destroy(this.st_1)
destroy(this.cb_1)
end on

type sle_3 from singlelineedit within w_calc_ball
integer x = 969
integer y = 472
integer width = 457
integer height = 132
integer taborder = 20
integer textsize = -12
integer weight = 400
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Tahoma"
long textcolor = 33554432
string text = "10"
borderstyle borderstyle = stylelowered!
end type

type st_3 from statictext within w_calc_ball
integer x = 526
integer y = 504
integer width = 402
integer height = 76
integer textsize = -12
integer weight = 400
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Tahoma"
long textcolor = 33554432
long backcolor = 67108864
string text = "exec time"
boolean focusrectangle = false
end type

type sle_2 from singlelineedit within w_calc_ball
integer x = 969
integer y = 72
integer width = 457
integer height = 132
integer taborder = 10
integer textsize = -12
integer weight = 400
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Tahoma"
long textcolor = 33554432
string text = "8"
borderstyle borderstyle = stylelowered!
end type

type st_2 from statictext within w_calc_ball
integer x = 526
integer y = 100
integer width = 421
integer height = 76
integer textsize = -12
integer weight = 400
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Tahoma"
long textcolor = 33554432
long backcolor = 67108864
string text = "max ball"
boolean focusrectangle = false
end type

type cbx_1 from checkbox within w_calc_ball
integer x = 526
integer y = 676
integer width = 667
integer height = 96
integer textsize = -12
integer weight = 400
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Tahoma"
long textcolor = 33554432
long backcolor = 67108864
string text = "Reverse sequence"
end type

type sle_1 from singlelineedit within w_calc_ball
integer x = 969
integer y = 268
integer width = 457
integer height = 132
integer taborder = 10
integer textsize = -12
integer weight = 400
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Tahoma"
long textcolor = 33554432
string text = "1"
borderstyle borderstyle = stylelowered!
end type

type st_1 from statictext within w_calc_ball
integer x = 526
integer y = 280
integer width = 421
integer height = 76
integer textsize = -12
integer weight = 400
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Tahoma"
long textcolor = 33554432
long backcolor = 67108864
string text = "current ball"
boolean focusrectangle = false
end type

type cb_1 from commandbutton within w_calc_ball
integer x = 521
integer y = 840
integer width = 457
integer height = 132
integer taborder = 10
integer textsize = -12
integer weight = 400
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Tahoma"
string text = "calc"
end type

event clicked;long ll_ball_max
long ll_curr_ball
long ll_time

long i
ll_ball_max = long(sle_2.text)
ll_curr_ball = long(sle_1.text)
ll_time = long(sle_3.text)

for i = 1 to ll_time
	If cbx_1.checked then
		ll_curr_ball = ll_curr_ball - 1
		if ll_curr_ball = 0 then ll_curr_ball = ll_ball_max
	else
		ll_curr_ball = ll_curr_ball + 1
		if ll_curr_ball = ll_ball_max + 1 then ll_curr_ball = 1
	end if
next 

sle_1.text = string(ll_curr_ball)
end event

