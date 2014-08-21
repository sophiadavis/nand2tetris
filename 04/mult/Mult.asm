// This file is part of www.nand2tetris.org
// and the book "The Elements of Computing Systems"
// by Nisan and Schocken, MIT Press.
// File name: projects/04/Mult.asm

// Multiplies R0 and R1 and stores the result in R2.
// (R0, R1, R2 refer to RAM[0], RAM[1], and RAM[3], respectively.)

// Put your code here.
    @2
    M = 0 // memloc sum = 0

(LOOP)
    @1
    D = M
    
    @END
    D; JEQ

    @2
    D = M       //  D = sum
    @0          //  put R0 in A
    D = D + M   //  D = sum + R0
    @2
    M = D       // sum = D
          // if R1 == 0, go to end
    @1
    M = M - 1   // R1--

    @LOOP
    0; JMP // go to LOOP

(END)
    @END
    0;JMP // infinite loop
    
    
