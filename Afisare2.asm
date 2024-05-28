load R1,Text
load R2,1
load R0,0
NextChar:
load RF,[R1]
addi R1,R1,R2
jmpEQ RF=R0,Ready
jmp NextChar
Ready:
halt
Text: db "Nume:....",10
db "Prenume:....",10
db "Grupa:....",10
db 0