INCLUDE Irvine32.inc

.data
prompt BYTE "Enter a 32-bit integer: ", 0
decimalMsg BYTE "Decimal: ", 0
hexMsg BYTE "Hexadecimal: ", 0
binaryMsg BYTE "Binary: ", 0
.code
main PROC
    mov edx, OFFSET prompt ; Prompt the user for input
    call WriteString    
    call ReadInt; Read the integer from the user
    mov ebx, eax ; Save the input value
    ; Display the integer in decimal
    mov edx, OFFSET decimalMsg
    call WriteString
    mov eax, ebx
    call WriteInt
    call Crlf
    ; Display the integer in hexadecimal
    mov edx, OFFSET hexMsg
    call WriteString
    mov eax, ebx
    call WriteHex
    call Crlf
    ; Display the integer in binary
    mov edx, OFFSET binaryMsg
    call WriteString
    mov eax, ebx
    call WriteBinB
    call Crlf
    ; Display CPU registers
    call DumpRegs
    exit
main ENDP
END main