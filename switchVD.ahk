#Include C:/02-Happy/code/random/Switch-Virtual-Desktops/VD.ahk

MaxVirtualDesktops := VD.getCount() ; How many virtual desktops being used , has to be exactly this variable
CurrentDesktop := 1 ; Desktop 1 = 1, Desktop 2 = 2, not 0 index based
^!\::
    MaxVirtualDesktops := VD.getCount()
    CurrentDesktop := CurrentDesktop + 1
    If (MaxVirtualDesktops < CurrentDesktop) {
        Iterations := MaxVirtualDesktops - 1
        Loop, %Iterations%
        {
            Send, ^#{Left}
            Sleep, 1
        }
        CurrentDesktop := 1
    } Else {
        Send, ^#{Right}
    }
return