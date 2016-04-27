; Gjvon Graves
;Write a program that displays the same string in four different colors

INCLUDE Irvine32.inc

.data

str1 BYTE "Lonestar College",0dh,0ah,0					;string that will display in color

.code
main PROC

	mov ecx, 16
	mov edx, str1
	L1:
	call setColor										;call a library process to set the color
	call	WriteString									; call writeString process
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