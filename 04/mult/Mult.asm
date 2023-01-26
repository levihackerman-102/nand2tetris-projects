// This file is part of www.nand2tetris.org
// and the book "The Elements of Computing Systems"
// by Nisan and Schocken, MIT Press.
// File name: projects/04/Mult.asm

// Multiplies R0 and R1 and stores the result in R2.
// (R0, R1, R2 refer to RAM[0], RAM[1], and RAM[2], respectively.)

// Put your code here.

@product // product = 0
M = 0
@counter // counter = 0
M = 0
(LOOP)
    @counter // check if counter == R1
    D = M
    @1
    D = D - M
    @END
    D; JEQ
    @0
    D = M
    @product // repeated addition of R0 in product
    M = M + D
    @counter // counter increment
    M = M + 1
    @LOOP
    0; JMP
(END)
    @product // Load product in D and set R2 = product
    D = M
    @2
    M = D
