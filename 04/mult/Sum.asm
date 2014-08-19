// This file is part of www.nand2tetris.org
// and the book "The Elements of Computing Systems"
// by Nisan and Schocken, MIT Press.
// File name: projects/04/Mult.asm

// Multiplies R0 and R1 and stores the result in R2.
// (R0, R1, R2 refer to RAM[0], RAM[1], and RAM[3], respectively.)

// Put your code here.

    @i
    M = 1 // memloc i = 1
    @sum
    M = 0 // memloc sum = 0

(LOOP)
    @i
    D = M // D = i
    @100
    D = D - A // D = i - 100
    @END
    D; JGT // if i - 100 > 0, go to end
    @i
    D = M // D = i
    @sum
    M = D + M // sum += i
    @i
    M = M + 1 // sum++
    @LOOP
    0; JMP // go to LOOP

(END)
    @END
    0;JMP // infinite loop
    
    
