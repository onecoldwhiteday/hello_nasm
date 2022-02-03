global _start

        section .text
_start: mov     rax, 1    ; put the system call number 1(write) in rax
        mov     rdi, 1    ; file handle 1 is stdout
        mov     rsi, msg  ; address of string to output
        mov     rdx, msglen       ; number of bytes
        syscall       ; invoke operating system to do the write

        mov     rax, 60   ; Linux system call exit is 60
        mov     rdi, 0    ; exit code 0
        syscall       ; invoke operating system to exit

        section .rodata
msg:    db      "Hello, world!", 10     ; write string into msg, following with newline
msglen: equ $ - msg     ; count message length by countung difference between next location and label. Since that label occurs earlier, this difference is a positive value, and in fact it is the total length of the preceding db.
