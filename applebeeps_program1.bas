5 REM PROGRAM #1
10 I = 10: HOME
20 PRINT "SOUND #1": PRINT : LIST 30,37
30 PRINT CHR$ (7)
35 PRINT "": REM CTRL-G
37 REM PRINT"CTRL-G"
40 GOTO 10000
50 I = 50: HOME
60 PRINT "SOUND #2": PRINT :  LIST 70,90
70 FOR LOOP = 1 TO 10
80 PRINT CHR$ (7);
90 NEXT
100 GOTO 10000
110 I = 110: HOME
120 PRINT "SOUND #3": PRINT : LIST 130
130 X = PEEK (-16336)
140 GOTO 10000
150 I = 150: HOME
160 PRINT "SOUND #4": PRINT : LIST 170, 200
170 NO = - 16336
180 FOR LOOP = 1 TO 100 
190 X = PEEK (NO)
200 NEXT
210 GOTO 10000
220 I = 220: HOME
230 PRINT "SOUND #5": PRINT : LIST 240, 260
240 NO = -16336
250 X = PEEK (NO) + PEEK (NO)+ PEEK (NO)+ PEEK (NO)+ PEEK (NO)+ PEEK (NO)+ PEEK (NO)+ PEEK (NO)+ PEEK (NO)+ PEEK (NO)+ PEEK (NO)+ PEEK (NO)+ PEEK (NO)+ PEEK (NO)+ PEEK (NO)
260 REM 15 times
270 GOTO 10000
280 I = 280: HOME
290 PRINT "SOUND #6": PRINT : LIST 300,330
300 NO = - 16336
310 FOR LOOP = 1 TO 100
320 X = PEEK (NO) - PEEK (NO) + PEEK (NO) - PEEK (NO) + PEEK (NO) - PEEK (NO) + PEEK (NO)
330 NEXT
10000 POKE - 16368,0: VTAB 20: HTAB 1 : CALL - 958: PRINT "'R' FOR REPEAT, 'C' TO CONTINUE ";: GET A$
10010 IF A$ < > "R" AND A$ < > "C" THEN 10000
10020 IF A$ = "C" THEN 10100
10030 IF I = 10 THEN 30
10040 IF I = 50 THEN 70
10050 IF I = 110 THEN X = PEEK ( - 16336): GOTO 130
10060 IF I = 150 THEN 170
10070 IF I = 220 THEN 240
10080 IF I = 280 THEN 300
10100 IF I = 10 THEN 50
10110 IF I = 50 THEN 110 
10120 IF I = 110 THEN 150
10130 IF I = 150 THEN 220
10140 IF I = 220 THEN 280
10150 TEXT : HTAB 1: PRINT "END OF PROGRAM #1"