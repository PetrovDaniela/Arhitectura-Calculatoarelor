load R1,Text
load R2,1
load R3,176
load R0,0
NextChar:
load RE,[R1]
addi R1,R1,R2
jmpEQ RF=R0,Ready
store RF, [R3]
addi R3,R3,R2
jmp NextChar
Ready:
halt
Text: db "Zdreanta cel cu ochii de faianta",10
db 0