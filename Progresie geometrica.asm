load R1,3; ratia geometrica
load R2,1; numaram cati temeni adunam
load R3,2; al catelea termen
load R4,0 
load RE,4; primul termne
load R5,0; contor la ce termen suntem
load R0,0
addi R3,R3,R2 ; mariM R3 cu 1 ca sa nu facem cu o iteratie prea mult
Nextadunare:
addi R5,R5,R2 ; aduma la contorul pentru al catelea termen suntem in progresie 
move R0,R5 ; putem compara doar cu R0  de accea copiem 
jmpEQ R3=R0, Ready ; daca am ajuns
move R4,RE ; copeim in R4 temenul anterior 
load R0,0
 Nextnr:
 jmpEq R1=R0 ,Nextadunare
addi RE,RE,R4 ; adunam termenul curent de cate ori avem ratia R1
 addi R0,R0,R2
 jmp Nextnr

Ready:
halt