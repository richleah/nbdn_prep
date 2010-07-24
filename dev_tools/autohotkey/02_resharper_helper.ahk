;==========================
;Initialise
;==========================
#NoEnv
SendMode Input
SetWorkingDir %A_ScriptDir% 
SetTitleMatchMode 2
;=============================
;RESHARPER
;=============================
;#IfWinActive, Microsoft Visual Studio

;Resharper navigate from here
LWIN & g:: send, ^+g

;Map RunTest/Rerun Test
LWIN & t:: send, ^!+t
LWIN & p:: send, ^!+r

;Resharper find type by name
LWIN & n:: send, ^n

;Resharper generate code(alt + insert) or in solution explorer Create file from template 
LWIN & i:: send, !{insert}

;Highlight Current Usages
LWIN & 8::
    Send, ^+{F7}
return

;Find Usages
LWIN & 9::
    Send, !{F7}
return

;Move Down A Method
$!j::
    Send, !{Down}
return


;Process Move Method Up
$^+!k::
    Send, ^+!{Up}
return

;Process Move Method Down
$^+!j::
    Send, ^+!{Down}
return

;Process Go to next usage 
$+!j::
    Send, ^!{Down}
return

;Process Go to previous usage 
$+!k::
    Send, ^!{Up}
return

;Next Error In Solution
ALT & 0::
    Send, !{F12}
return

;Next Error In File
ALT & -::
    Send, {F12}
return
;#IfWinActive
