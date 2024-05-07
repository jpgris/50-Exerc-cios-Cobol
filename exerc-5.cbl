       IDENTIFICATION DIVISION.
       PROGRAM-ID. Exerc-5.
       AUTHOR. JOAO_PAULO.

       DATA DIVISION.
       WORKING-STORAGE SECTION.
       77  A    PIC 9(5).
       77  B    PIC 9(5).
       77  C    PIC 9(5).
       77  Temp PIC 9(5).

       PROCEDURE DIVISION.
           DISPLAY "BEM VINDO AOS VALORES ORGANIZADOS!!!".
           DISPLAY "Digite o valor de A: ".
           ACCEPT A.

           DISPLAY "Digite o valor de B: ".
           ACCEPT B.

           DISPLAY "Digite o valor de C: ".
           ACCEPT C.

           DISPLAY "Valores na ordem lida: A=" A " B=" B " C=" C.

           IF A > B
               MOVE A TO Temp
               MOVE B TO A
               MOVE Temp TO B
           END-IF

           IF B > C
               MOVE B TO Temp
               MOVE C TO B
               MOVE Temp TO C
           END-IF

           IF A > B
               MOVE A TO Temp
               MOVE B TO A
               MOVE Temp TO B
           END-IF

           DISPLAY "Valores em ordem crescente: A=" A " B=" B " C=" C.

           DISPLAY "Valores em ordem decrescente: C=" C " B=" B " A=" A.

           ACCEPT OMITTED.
           EXIT PROGRAM.
           STOP RUN.
      *wrun32 exerc-