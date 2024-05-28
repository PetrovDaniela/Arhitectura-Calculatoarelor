load R1,Text
load R2,1
load R3,1
sir:
load RF, [R1]
addi R1,R1,R2
load R0,32
jmpEQ RF=R0, Ready
load R0, 0h
jmpEQ RF=R0, stop
jmp sir
Ready:
addi R3,R3,R2
jmp sir
stop:halt
Text: db 10
db "Maine mergem la picnic si sa jucam volei", 10
db 0h