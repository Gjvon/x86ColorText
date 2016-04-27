; Gjvon Graves
;Write a program that displays the same string in four different colors

INCLUDE Irvine32.inc

.data
count DWORD 0
str1 BYTE "C",0dh,0ah,0

.code
main PROC

	mov ecx, 16
	mov edx, str1
	L1:
	call setColor
	call	WriteString
	L2:

	Loop L1
	ret
main ENDP

setColor PROC
	
	call	SetTextColor
	ret
setColor ENDP
exit
END main