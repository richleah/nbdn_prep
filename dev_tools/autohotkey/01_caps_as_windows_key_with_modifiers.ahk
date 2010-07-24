;==========================
;Initialise
;==========================
#NoEnv
SendMode Input
SetWorkingDir %A_ScriptDir% 
SetTitleMatchMode 2

;=============================
;STANDARD KEY MAPPINGS
;=============================

;Map altGr to alt
;RAlt::Alt
;RShift::Shift
;RCtrl::Ctrl


;Map to escape or shift + escape
LWIN & e:: 
GetKeyState, state, shift, P
if state = D
send, {shift}+{escape}
else
send, {escape}
return

;Map to delete
LWIN & x::send, {delete} 

;Map alt & up
$!K::
	Send, !{Up}
return


;send right mouse button or ctrl shift r
LWIN & r::
GetKeyState, state, rshift, P
if state = D 
send, ^+r
else
send, {shift}+{F10}
return

;Map to left arrow or ctrl left arrow
LWIN & h::
GetKeyState, state, shift, P
if state = D 
send, ^{left}
else
send, {left} 
return


;Map to right arrow or ctrl right arrow
LWIN & l::
GetKeyState, state, shift, P
if state = D 
send, ^{right}
else
send, {right} 
return

;Map to up arrow
LWIN & k::
GetKeyState, state, shift, P
if state = D 
send, {shift}+{up}
else
send, {up}
return

;Map to down arrow
LWIN & j::
GetKeyState, state, shift, P
if state = D 
send, {shift}+{down}
else
send, {down}
return

;Map to Alt + Tab
LWIN & d:: ShiftAltTab

;Map to Alt + Shift + Tab
LWIN & f:: AltTab

;Map c to close window
LWIN & c::
GetKeyState, state, shift, P
if state = D 
send !{F4}
else
send, ^{F4}
return

;Stop win & key from toggling capslock.
;LWIN::
;*LWIN::
+LWIN::
LWIN & down:: 
LWIN & up::
LWIN & right::
LWIN & left::
LWIN & appskey::
LWIN & tab::
LWIN & `::
LWIN & 3:: 
LWIN & 5::
LWIN & 7::
LWIN & 8::
LWIN & 9::
LWIN & 0::
LWIN & -::
LWIN & =::
LWIN & y::
LWIN & a::
LWIN & s::
LWIN & `;::
LWIN & \::
LWIN & z::
LWIN & v::
LWIN & p:: 
LWIN & ,::
LWIN & .::
LWIN & space::
LWIN & enter::
LWIN & w::
LWIN & [::
LWIN & ]::
LWIN & #::

