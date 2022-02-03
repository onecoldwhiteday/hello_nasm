"Hello world" written in NASM for Linux.

To run programm you should: 

`$ nasm -f elf63 -o hello.o hello.s` ; Compile it


`$ ld -o hello hello.o` ; Create executable


`$ ./hello` ; run


References I used: 
https://cs.lmu.edu/~ray/notes/nasmtutorial/
https://jameshfisher.com/2017/03/10/linux-assembly-hello-world/

Fun fact: NASM was created at the same month I was actually born: October 1995.
