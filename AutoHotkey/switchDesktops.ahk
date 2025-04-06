; place this file to C:\Users\ondrej\OneDrive\Documents\AutoHotkey
; place a shortcut to the .ahk file path from above into a folder C:\Users\ondrej\AppData\Roaming\Microsoft\Windows\Start Menu\Programs\Startup


; switch to the Prev Desktop
!1::
    Send, ^#{Left}  ; Simulates Ctrl + Win + Left Arrow (Prev Desktop)
	return
	
; switch to the Next Desktop
!2::
    Send, ^#{Right}  ; Simulates Ctrl + Win + Right Arrow (Next Desktop)
	return