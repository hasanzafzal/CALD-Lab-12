INCLUDE Irvine32.inc

.data
prompt BYTE "Random Number: ", 0
.code
main PROC
    mov ecx, 10  ; Loop counter for 10 random numbers
LoopStart:
    call Randomize ; Seed the random number generator
    mov eax, 21   ; Upper bound (exclusive)
    call RandomRange ; Generate a random number between 0 and 20
    mov edx, OFFSET prompt
    call WriteString
    call WriteDec
    call Crlf
    loop LoopStart

    exit
main ENDP
END main