       IDENTIFICATION DIVISION.
       PROGRAM-ID. exerc-50.

       DATA DIVISION.
       WORKING-STORAGE SECTION.
       01 Ano      PIC 9(4).
       01 resultado PIC 9(3).


       PROCEDURE DIVISION.

       INICIO.
           DISPLAY "DESCUBRA SE O ANO EH BISSEXTO"
           PERFORM 5 TIMES
           DISPLAY " "
           DISPLAY "Digite o ano: "
           ACCEPT Ano  AT 0315
           DISPLAY " "

           MOVE FUNCTION mod (Ano 4) to resultado
               IF Resultado = 0
                  DISPLAY " "
                  DISPLAY "O ANO EH BISSEXTO"

                else
                  DISPLAY " "
                  DISPLAY "O ANO NAO EH BISSEXTO"

               END-IF
           DISPLAY "-------------------------------"
           END-PERFORM.
           GO TO INICIO.


           DISPLAY SPACE
           display "Obrigado volte sempre!!! "
           DISPLAY SPACE

           ACCEPT OMITTED.
           EXIT PROGRAM.
           STOP RUN.
