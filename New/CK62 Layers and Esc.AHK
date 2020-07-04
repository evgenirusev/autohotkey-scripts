SetCapsLockState, AlwaysOff

;<------------------- Arrow Keys ----------------->

; these are for onenote
CapsLock & i::
if(GetKeyState("Shift","p")) {
	SendPlay +{Up}
} else {
	if WinExist("Ubuntu")
	{
		Send {Up}
	} else {
		SendPlay {Up}
	}
}
Return

CapsLock & k::
if (GetKeyState("Shift","p")) {
	SendPlay +{Down}
} else {
	if WinExist("Ubuntu")
	{
		Send {Down}
	} else {
		SendPlay {Down}
	}
}
Return

CapsLock & j::Left
CapsLock & l::Right
;<------------------- Arrow Keys ----------------->

CapsLock & [::Home
CapsLock & '::End
CapsLock & ,::Delete
CapsLock & p::PgUp 
CapsLock & `;::PgDn
CapsLock & Esc::
if GetKeyState("Shift")
	Send {~}
else
	Send {``}
return

CapsLock & 1::F1
CapsLock & 2::F2
CapsLock & 3::F3
CapsLock & 4::F4
CapsLock & 5::F5
CapsLock & 7::F7
CapsLock & 6::F6
CapsLock & 8::F8
CapsLock & 9::F9
CapsLock & 0::F10
CapsLock & -::F11
CapsLock & =::F12
CapsLock & Backspace::Delete
CapsLock & c::Send {Volume_Up}
CapsLock & x::Send {Volume_Down}
CapsLock & z::Send {Volume_Mute}
CapsLock & q::Send !{y}

; Mouse Movement
;---------------------------------
#E::Click WheelUp
#D::Click WheelDown
#W::Click

#x:: ; Scroll left.
ControlGetFocus, control, A
SendMessage, 0x114, 0, 0, %control%, A ; 0x114 is WM_HSCROLL
return

#c:: ; Scroll right.
ControlGetFocus, control, A
SendMessage, 0x114, 1, 0, %control%, A ; 0x114 is WM_HSCROLL
return
;---------------------------------

CapsLock & Tab:: Send !{a}
Shift & Tab:: Send ^+{Tab}
Ctrl & CapsLock:: return
Shift & CapsLock:: return
Alt & CapsLock:: return

CapsLock::Esc
Esc::CapsLock