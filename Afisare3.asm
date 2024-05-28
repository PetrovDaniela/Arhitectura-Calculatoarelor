load R1, Text
load R2,1
load R0,0
NextChar:
load RF, [R1]
addi R1,R1,R2
jmpEQ RF=R0,Ready
jmp NextChar
Ready:
load R2,-1
addi R1,R1,R2
invers: addi R1,R1,R2
load RF, [R1]
jmpEQ RF=R0,stop
jmp invers
stop: halt
Text: db "Luna", 10
db 0h