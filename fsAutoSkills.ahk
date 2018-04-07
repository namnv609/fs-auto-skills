#NoEnv
#Persistent

SendMode Input
SetWorkingDir %A_ScriptDir%

isStop := 1

Menu, Tray, NoStandard
Menu, Tray, Tip, FS Auto Skills

Gui, New
Gui, Font, S10, Tahoma
Gui, Add, GroupBox, W418 H120, Tùy chọn
Gui, Add, Checkbox, VcbKeyQ GcbKeyQ W80 X28 Y34, Phím Q
Gui, Add, Edit, VeTimeDelayKeyQ X108 Y32 W30 H22 +Disabled +Number +Limit2, 1
Gui, Add, Checkbox, VcbKeyW GcbKeyW W80 X28 Y64, Phím W
Gui, Add, Edit, VeTimeDelayKeyW X108 Y62 W30 H22 +Disabled +Number +Limit2, 1
Gui, Add, Checkbox, VcbKeyE GcbKeyE W80 X28 Y94, Phím E
Gui, Add, Edit, VeTimeDelayKeyE X108 Y92 W30 H22 +Disabled +Number +Limit2, 1
Gui, Add, Checkbox, VcbKeyA GcbKeyA W80 X160 Y34, Phím A
Gui, Add, Edit, VeTimeDelayKeyA X248 Y32 W30 H22 +Disabled +Number +Limit2, 1
Gui, Add, Checkbox, VcbKeyS GcbKeyS W80 X160 Y64, Phím S
Gui, Add, Edit, VeTimeDelayKeyS X248 Y62 W30 H22 +Disabled +Number +Limit2, 1
Gui, Add, Checkbox, VcbKeyD GcbKeyD W80 X160 Y94, Phím D
Gui, Add, Edit, VeTimeDelayKeyD X248 Y92 W30 H22 +Disabled +Number +Limit2, 1
Gui, Add, Checkbox, VcbKeyZ GcbKeyZ W80 X296 Y34, Phím Z
Gui, Add, Edit, VeTimeDelayKeyZ x380 Y32 W30 H22 +Disabled +Number +Limit2, 1
Gui, Add, Checkbox, VcbKeyX GcbKeyX W80 X296 Y64, Phím X
Gui, Add, Edit, VeTimeDelayKeyX x380 Y62 W30 H22 +Disabled +Number +Limit2, 1
Gui, Add, Checkbox, VcbKeyC GcbKeyC W80 X296 Y94, Phím C
Gui, Add, Edit, VeTimeDelayKeyC x380 Y92 W30 H22 +Disabled +Number +Limit2, 1
Gui, Add, Button, +Default VbtnStart GbtnStart W100 H22 X10,&Bắt Đầu
Gui, Add, Button, +Disabled VbtnStop GbtnStop W100 H22 X130 Y134,&Dừng Lại
Gui, Add, Link, W418 X10, <a href="https://github.com/namnv609">©2018 by NamNV609</a>
Gui, Show, w440 h190, FS Auto Skills
return

cbKeyQ:
  Gui, Submit, NoHide

  If cbKeyQ = 1
    GuiControl, -Disabled, eTimeDelayKeyQ
  Else
    GuiControl, +Disabled, eTimeDelayKeyQ
return
cbKeyW:
  Gui, Submit, NoHide

  If cbKeyW = 1
    GuiControl, -Disabled, eTimeDelayKeyW
  Else
    GuiControl, +Disabled, eTimeDelayKeyW
return
cbKeyE:
  Gui, Submit, NoHide

  If cbKeyE = 1
    GuiControl, -Disabled, eTimeDelayKeyE
  Else
    GuiControl, +Disabled, eTimeDelayKeyE
return
cbKeyA:
  Gui, Submit, NoHide

  If cbKeyA = 1
    GuiControl, -Disabled, eTimeDelayKeyA
  Else
    GuiControl, +Disabled, eTimeDelayKeyA
return
cbKeyS:
  Gui, Submit, NoHide

  If cbKeyS = 1
    GuiControl, -Disabled, eTimeDelayKeyS
  Else
    GuiControl, +Disabled, eTimeDelayKeyS
return
cbKeyD:
  Gui, Submit, NoHide

  If cbKeyD = 1
    GuiControl, -Disabled, eTimeDelayKeyD
  Else
    GuiControl, +Disabled, eTimeDelayKeyD
return
cbKeyZ:
  Gui, Submit, NoHide

  If cbKeyZ = 1
    GuiControl, -Disabled, eTimeDelayKeyZ
  Else
    GuiControl, +Disabled, eTimeDelayKeyZ
return
cbKeyX:
  Gui, Submit, NoHide

  If cbKeyX = 1
    GuiControl, -Disabled, eTimeDelayKeyX
  Else
    GuiControl, +Disabled, eTimeDelayKeyX
return
cbKeyC:
  Gui, Submit, NoHide

  If cbKeyC = 1
    GuiControl, -Disabled, eTimeDelayKeyC
  Else
    GuiControl, +Disabled, eTimeDelayKeyC
return


btnStart:
  GuiControl, -Disabled, btnStop
  GuiControl, +Disabled, btnStart

  isStop := 0

  While isStop = 0
  {
    SetTitleMatchMode, 2
    If cbKeyQ = 1
    {
      ControlSend,, q, Phong Than_Dong Thien Phuc Dia
      Sleep, %eTimeDelayKeyQ%000
    }
    If cbKeyW = 1
    {
      ControlSend,, w, Phong Than_Dong Thien Phuc Dia
      Sleep, %eTimeDelayKeyW%000
    }
    If cbKeyE = 1
    {
      ControlSend,, e, Phong Than_Dong Thien Phuc Dia
      Sleep, %eTimeDelayKeyE%000
    }
    If cbKeyA = 1
    {
      ControlSend,, a, Phong Than_Dong Thien Phuc Dia
      Sleep, %eTimeDelayKeyA%000
    }
    If cbKeyS = 1
    {
      ControlSend,, s, Phong Than_Dong Thien Phuc Dia
      Sleep, %eTimeDelayKeyS%000
    }
    If cbKeyD = 1
    {
      ControlSend,, d, Phong Than_Dong Thien Phuc Dia
      Sleep, %eTimeDelayKeyD%000
    }
    If cbKeyZ = 1
    {
      ControlSend,, z, Phong Than_Dong Thien Phuc Dia
      Sleep, %eTimeDelayKeyZ%000
    }
    If cbKeyX = 1
    {
      ControlSend,, x, Phong Than_Dong Thien Phuc Dia
      Sleep, %eTimeDelayKeyX%000
    }
    If cbKeyC = 1
    {
      ControlSend,, c, Phong Than_Dong Thien Phuc Dia
      Sleep, %eTimeDelayKeyC%000
    }
  }
return
btnStop:
  GuiControl, +Disabled, btnStop
  GuiControl, -Disabled, btnStart

  isStop := 1
return
GuiClose:
  ExitApp
return