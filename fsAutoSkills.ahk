#NoEnv
#Persistent

SendMode Input
SetWorkingDir %A_ScriptDir%

isStop := 1
phongThanWinTitle := "Phong Than_Dong Thien Phuc Dia"

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

  controlDisableToggle(cbKeyQ, "eTimeDelayKeyQ")
return
cbKeyW:
  Gui, Submit, NoHide

  controlDisableToggle(cbKeyW, "eTimeDelayKeyW")
return
cbKeyE:
  Gui, Submit, NoHide

  controlDisableToggle(cbKeyE, "eTimeDelayKeyE")
return
cbKeyA:
  Gui, Submit, NoHide

  controlDisableToggle(cbKeyA, "eTimeDelayKeyA")
return
cbKeyS:
  Gui, Submit, NoHide

  controlDisableToggle(cbKeyS, "eTimeDelayKeyS")
return
cbKeyD:
  Gui, Submit, NoHide

  controlDisableToggle(cbKeyD, "eTimeDelayKeyD")
return
cbKeyZ:
  Gui, Submit, NoHide

  controlDisableToggle(cbKeyZ, "eTimeDelayKeyZ")
return
cbKeyX:
  Gui, Submit, NoHide

  controlDisableToggle(cbKeyX, "eTimeDelayKeyX")
return
cbKeyC:
  Gui, Submit, NoHide

  controlDisableToggle(cbKeyC, "eTimeDelayKeyC")
return

controlDisableToggle(state, controlName)
{
  If state = 1
    GuiControl, -Disabled, %controlName%
  Else
    GuiControl, +Disabled, %controlName%
}

btnStart:
  GuiControl, -Disabled, btnStop
  GuiControl, +Disabled, btnStart

  isStop := 0

  While isStop = 0
  {
    SetTitleMatchMode, 2
    If cbKeyQ = 1
    {
      ControlSend,, q, %phongThanWinTitle%
      Sleep, %eTimeDelayKeyQ%000
    }
    If cbKeyW = 1
    {
      ControlSend,, w, %phongThanWinTitle%
      Sleep, %eTimeDelayKeyW%000
    }
    If cbKeyE = 1
    {
      ControlSend,, e, %phongThanWinTitle%
      Sleep, %eTimeDelayKeyE%000
    }
    If cbKeyA = 1
    {
      ControlSend,, a, %phongThanWinTitle%
      Sleep, %eTimeDelayKeyA%000
    }
    If cbKeyS = 1
    {
      ControlSend,, s, %phongThanWinTitle%
      Sleep, %eTimeDelayKeyS%000
    }
    If cbKeyD = 1
    {
      ControlSend,, d, %phongThanWinTitle%
      Sleep, %eTimeDelayKeyD%000
    }
    If cbKeyZ = 1
    {
      ControlSend,, z, %phongThanWinTitle%
      Sleep, %eTimeDelayKeyZ%000
    }
    If cbKeyX = 1
    {
      ControlSend,, x, %phongThanWinTitle%
      Sleep, %eTimeDelayKeyX%000
    }
    If cbKeyC = 1
    {
      ControlSend,, c, %phongThanWinTitle%
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