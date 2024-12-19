INCLUDE Irvine32.inc

.data
num1 WORD 2254h
num2 WORD 3228h
.code
main PROC
    ; Display initial values
    mov ax, num1
    call WriteHex
    call Crlf
    mov ax, num2
    call WriteHex
    call Crlf
    ; Swap the numbers
    mov ax, num1
    xchg ax, num2
    mov num1, ax
    ; Display swapped values
    mov ax, num1
    call WriteHex
    call Crlf
    mov ax, num2
    call WriteHex
    call Crlf
    exit
main ENDP
END main