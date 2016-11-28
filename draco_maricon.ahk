
#NoEnv
SendMode Input
#IfWinActive, AION Client
CoordMode, ToolTip, Client

global aionPID

;Here i get active window pid
TrayTip, Instructions:, Open the Aion window where you want to DualBox
loop
{
	IfWinActive, AION Client
	{
		WinGet, aionPID, PID, A
		break
	}
	sleep, 500
}
TrayTip, Hooked!
return

$F11::
SendAion(0)
return

SendAion(keys)
{
	ControlSend,, %keys%, ahk_pid %aionPID%
}
