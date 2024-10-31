; Hotkey: Ctrl + Alt + Right Mouse Button - Toggles window transparency
^!RButton::
    ; Retrieve the current transparency level of the active window and store it in 'currentTransparency'
    WinGet, currentTransparency, Transparent, A
    ; Check if the transparency is OFF or uninitialized
    if (currentTransparency = "") or (currentTransparency = "OFF")
    {
        ; Set the transparency of the active window to 50 (semi-transparent)
        WinSet, Transparent, 50, A
    }
    else
    {
        ; Disable transparency, making the window fully opaque
        WinSet, Transparent, OFF, A
    }
return

; Hotkey: Ctrl + Alt + T - Toggles "Always on Top" for the active window
^!t::
    ; Retrieve the "Always on Top" status of the active window
    WinGet, currentAlwaysOnTop, ExStyle, A
    ; Check if the window is already "Always on Top"
    if (currentAlwaysOnTop & 0x8) ; 0x8 is the ExStyle flag for "Always on Top"
    {
        ; Remove "Always on Top" status from the active window
        WinSet, AlwaysOnTop, Off, A
    }
    else
    {
        ; Set the active window to "Always on Top"
        WinSet, AlwaysOnTop, On, A
    }
return
