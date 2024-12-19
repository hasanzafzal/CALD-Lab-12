INCLUDE Irvine32.inc

.data
prompt      BYTE "Enter your name: ", 0
userName    BYTE 30 DUP(?)
nameLength  DWORD ?
.code
main PROC
    ; Prompt the user for their name
    mov edx, OFFSET prompt
    call WriteString
    ; Read the user's name
    mov edx, OFFSET userName
    mov ecx, 30          ; Maximum length of the name
    call ReadString
    ; Determine the length of the name
    mov esi, OFFSET userName ; Point to the start of the name string
    mov ecx, 0               ; Initialize counter to 0
countLoop:
    movzx eax, BYTE PTR [esi] ; Load the current character
    cmp al, 0                 ; Check if it's the null terminator
    je endCount               ; Exit loop if null terminator is found
    inc ecx                   ; Increment counter
    inc esi                   ; Move to the next character
    jmp countLoop             ; Repeat loop
endCount:
    mov nameLength, ecx       ; Store the length of the name
    ; Display the user's name
    mov edx, OFFSET userName
    call WriteString
    call Crlf
    ; Exit the program
    exit
main ENDP
END main