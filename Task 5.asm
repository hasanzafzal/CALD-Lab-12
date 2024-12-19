INCLUDE Irvine32.inc

.data
Uarray WORD 1000h, 2000h, 3000h, 4000h
.code
main PROC
    ; Move values from Uarray to 32-bit registers using movzx (zero-extend)
    movzx eax, WORD PTR Uarray[0]   ; Move 16-bit value to eax with zero-extension
    movzx ebx, WORD PTR Uarray[2]   ; Move 16-bit value to ebx with zero-extension
    movzx ecx, WORD PTR Uarray[4]   ; Move 16-bit value to ecx with zero-extension
    movzx edx, WORD PTR Uarray[6]   ; Move 16-bit value to edx with zero-extension
    ; Display register values
    call DumpRegs
    exit
main ENDP
END main