load R1,2
load R2,1
load R3,5
load RE,4
load R0,0
Nextnr:
addi RE,RE,R1
jmpEq R3=R0 ,Ready
addi R0,R0,R2
jmp Nextnr
Ready:
halt