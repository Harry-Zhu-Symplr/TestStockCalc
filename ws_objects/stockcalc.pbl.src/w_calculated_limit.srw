$PBExportHeader$w_calculated_limit.srw
forward
global type w_calculated_limit from window
end type
type cbx_1 from checkbox within w_calculated_limit
end type
type sle_4 from singlelineedit within w_calculated_limit
end type
type st_4 from statictext within w_calculated_limit
end type
type cb_2 from commandbutton within w_calculated_limit
end type
type cb_1 from commandbutton within w_calculated_limit
end type
type sle_3 from singlelineedit within w_calculated_limit
end type
type st_3 from statictext within w_calculated_limit
end type
type sle_2 from singlelineedit within w_calculated_limit
end type
type st_2 from statictext within w_calculated_limit
end type
type sle_1 from singlelineedit within w_calculated_limit
end type
type st_1 from statictext within w_calculated_limit
end type
end forward

global type w_calculated_limit from window
integer width = 1655
integer height = 1224
boolean titlebar = true
string title = "Untitled"
boolean controlmenu = true
boolean minbox = true
boolean maxbox = true
boolean resizable = true
long backcolor = 67108864
string icon = "AppIcon!"
boolean center = true
cbx_1 cbx_1
sle_4 sle_4
st_4 st_4
cb_2 cb_2
cb_1 cb_1
sle_3 sle_3
st_3 st_3
sle_2 sle_2
st_2 st_2
sle_1 sle_1
st_1 st_1
end type
global w_calculated_limit w_calculated_limit

on w_calculated_limit.create
this.cbx_1=create cbx_1
this.sle_4=create sle_4
this.st_4=create st_4
this.cb_2=create cb_2
this.cb_1=create cb_1
this.sle_3=create sle_3
this.st_3=create st_3
this.sle_2=create sle_2
this.st_2=create st_2
this.sle_1=create sle_1
this.st_1=create st_1
this.Control[]={this.cbx_1,&
this.sle_4,&
this.st_4,&
this.cb_2,&
this.cb_1,&
this.sle_3,&
this.st_3,&
this.sle_2,&
this.st_2,&
this.sle_1,&
this.st_1}
end on

on w_calculated_limit.destroy
destroy(this.cbx_1)
destroy(this.sle_4)
destroy(this.st_4)
destroy(this.cb_2)
destroy(this.cb_1)
destroy(this.sle_3)
destroy(this.st_3)
destroy(this.sle_2)
destroy(this.st_2)
destroy(this.sle_1)
destroy(this.st_1)
end on

type cbx_1 from checkbox within w_calculated_limit
integer x = 1161
integer y = 304
integer width = 242
integer height = 96
integer textsize = -12
integer weight = 400
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Tahoma"
long textcolor = 33554432
long backcolor = 67108864
string text = "Plus"
boolean checked = true
end type

type sle_4 from singlelineedit within w_calculated_limit
integer x = 741
integer y = 648
integer width = 654
integer height = 132
integer taborder = 20
integer textsize = -12
integer weight = 400
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Tahoma"
long textcolor = 33554432
borderstyle borderstyle = stylelowered!
end type

type st_4 from statictext within w_calculated_limit
integer x = 219
integer y = 660
integer width = 457
integer height = 76
integer textsize = -12
integer weight = 400
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Tahoma"
long textcolor = 33554432
long backcolor = 67108864
string text = "Total Price:"
alignment alignment = right!
boolean focusrectangle = false
end type

type cb_2 from commandbutton within w_calculated_limit
integer x = 937
integer y = 880
integer width = 457
integer height = 132
integer taborder = 30
integer textsize = -12
integer weight = 400
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Tahoma"
string text = "Colse"
end type

event clicked;Close(Parent)
end event

type cb_1 from commandbutton within w_calculated_limit
integer x = 407
integer y = 880
integer width = 457
integer height = 132
integer taborder = 30
integer textsize = -12
integer weight = 400
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Tahoma"
string text = "Calc"
end type

event clicked;dec ll_cur_price
dec ll_total_price
int li_times, i 
dec ll_rate

ll_cur_price = dec(sle_1.text)
li_times = Integer(sle_3.text)
ll_rate = Dec(sle_2.text)
//ll_cur_price = Long(sle_1.text)
/*
if ll_rate < 1 then ll_rate = 1 + ll_rate


For i = 1 to li_times
	ll_cur_price = Round(ll_cur_price * ll_rate, 2)
next

ll_total_price = ll_cur_price

sle_4.text = String(ll_total_price)

*/

if ll_rate > 1 then ll_rate = ll_rate - 1


For i = 1 to li_times
	if cbx_1.checked then
		ll_cur_price = Round(ll_cur_price * ( 1 + ll_rate), 2)
	else
		ll_cur_price -= Round(ll_cur_price * ll_rate, 2)
	end if
next

ll_total_price = ll_cur_price

sle_4.text = String(ll_total_price)
end event

type sle_3 from singlelineedit within w_calculated_limit
integer x = 741
integer y = 472
integer width = 654
integer height = 132
integer taborder = 20
integer textsize = -12
integer weight = 400
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Tahoma"
long textcolor = 33554432
borderstyle borderstyle = stylelowered!
end type

type st_3 from statictext within w_calculated_limit
integer x = 219
integer y = 504
integer width = 457
integer height = 76
integer textsize = -12
integer weight = 400
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Tahoma"
long textcolor = 33554432
long backcolor = 67108864
string text = "Times:"
alignment alignment = right!
boolean focusrectangle = false
end type

type sle_2 from singlelineedit within w_calculated_limit
integer x = 741
integer y = 284
integer width = 402
integer height = 132
integer taborder = 10
integer textsize = -12
integer weight = 400
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Tahoma"
long textcolor = 33554432
borderstyle borderstyle = stylelowered!
end type

type st_2 from statictext within w_calculated_limit
integer x = 219
integer y = 320
integer width = 457
integer height = 76
integer textsize = -12
integer weight = 400
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Tahoma"
long textcolor = 33554432
long backcolor = 67108864
string text = "Rate:"
alignment alignment = right!
boolean focusrectangle = false
end type

type sle_1 from singlelineedit within w_calculated_limit
integer x = 741
integer y = 112
integer width = 654
integer height = 132
integer taborder = 10
integer textsize = -12
integer weight = 400
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Tahoma"
long textcolor = 33554432
borderstyle borderstyle = stylelowered!
end type

type st_1 from statictext within w_calculated_limit
integer x = 215
integer y = 136
integer width = 462
integer height = 76
integer textsize = -12
integer weight = 400
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Tahoma"
long textcolor = 33554432
long backcolor = 67108864
string text = "Current Price:"
alignment alignment = right!
boolean focusrectangle = false
end type

