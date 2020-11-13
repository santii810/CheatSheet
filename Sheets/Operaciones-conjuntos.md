## Operaciones con conjuntos en Google Sheets  
Intersección entre conjuntos  
`=SI.ERROR(filter($A$2:$A; COINCIDIR($A$2:$A; B2:$B ;FALSO)); "no match")`


--Conjunto A - Conjunto B  
`=SI.ERROR(filter($A$2:$A; ESERROR(COINCIDIR($A$2:$A; B2:$B ; FALSO))); "no match")`


--Conjunto B - Conjunto A  
`=SI.ERROR(filter($B$2:$B; ESERROR(COINCIDIR($A$2:$A; B2:$B ; FALSO))); "no match")`




REFS:  
https://webapps.stackexchange.com/questions/40588/how-to-get-the-intersection-of-two-sets
