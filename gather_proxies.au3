Func WinSafeActive($win)
	For $i = 1 To 10
		$ret = WinActivate($win)
		if $ret == 0 then
			Sleep(2000)
		Else
			Return $ret
		ENDIF
	Next
EndFunc

WinSafeActive("Proxy Goblin v2.5.9 rev 1")
;WinActive("Proxy Goblin v2.5.9 rev 1")
;ControlClick("Proxy Goblin v2.5.9 rev 1", "Gather Proxies", "[CLASS:WindowsForms10.BUTTON.app.0.33c0d9d; TEXT:Gather Proxies; INSTANCE:1]")
ControlClick("Proxy Goblin v2.5.9 rev 1", "Gather Proxies", "[NAME:ui_button_gather_proxies]")
Sleep(12000000)

WinSafeActive("Proxy Goblin v2.5.9 rev 1")
ControlSend("Proxy Goblin v2.5.9 rev 1", "", "[NAME:MenuStrip1]", "!fs")
Sleep(1000)
WinSafeActive("Export Raw Proxies As Text")
ControlSend("Export Raw Proxies As Text", "", "[CLASS:Edit; INSTANCE:1]", "raw_proxy.txt")
Sleep(1000)
WinSafeActive("Export Raw Proxies As Text")
ControlClick("Export Raw Proxies As Text", "保存(&S)", "[CLASS:Button; INSTANCE:2]")
Sleep(1000)
WinSafeActive("Export Raw Proxies As Text")
ControlClick("Export Raw Proxies As Text", "是(&Y)", "[CLASS:Button; INSTANCE:1]")
Sleep(1000)
WinSafeActive("Export >> View Folder")
WinClose("Export >> View Folder")
Run("upload.bat")
