// This file is part of www.nand2tetris.org
// and the book "The Elements of Computing Systems"
// by Nisan and Schocken, MIT Press.
// File name: projects/04/Fill.asm

// Runs an infinite loop that listens to the keyboard input. 
// When a key is pressed (any key), the program blackens the screen,
// i.e. writes "black" in every pixel. When no key is pressed, the
// program clears the screen, i.e. writes "white" in every pixel.

// Put your code here.
    @16384
    D = A
    
    @1
    M = D


(LOOP)

    @24576 // keyboard
    D = M
    
    @WHITE
    D; JEQ
    
    // blacken
    @1 // but dont go out-of-bounds
    D = M
    @24575
    D = D - A
    @LOOP
    D; JGE
    
    @1
    D = M
    A = D
    M = -1
    
    @1
    D = M
    M = D + 1
    
    @LOOP
    0;JMP

(WHITE)
    @1 // but dont go out-of-bounds
    D = M
    @16384
    D = D - A
    @LOOP
    D; JLE

    @1
    D = M
    M = D - 1
    
    @1
    D = M
    A = D
    M = 0
    @LOOP
    0;JMP

