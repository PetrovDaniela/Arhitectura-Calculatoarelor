load R1, 0
load R2, 1
load R5, 0
load R3, 4
load R4, -1
Fib:
addi R5, R1, R2
move R1, R2
move R2, R5
addi R3, R3, R4
move RF, R3
load R0, 0
jmpEQ RF=R0, Ready
jmp Fib
Ready:
Halt