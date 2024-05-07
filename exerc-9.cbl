       IDENTIFICATION DIVISION.
       PROGRAM-ID. Exerc-9.
       AUTHOR. JOAO_PAULO.

       DATA DIVISION.
       WORKING-STORAGE SECTION.
       77  Idade                PIC 9(2).
       77  Contador             PIC 9(2) VALUE 0.
       77  QtdMaioresDe18       PIC 9(2) VALUE 0.

       PROCEDURE DIVISION.

           PERFORM UNTIL Contador = 10
               ADD 1 TO Contador
               DISPLAY "Digite a idade da pessoa " Contador ": "
               ACCEPT Idade

               IF Idade >= 18
                   ADD 1 TO QtdMaioresDe18
               END-IF
           END-PERFORM.
           DISPLAY "QtdMaioresDe18: " QtdMaioresDe18.

           ACCEPT OMITTED.
           EXIT PROGRAM.
           STOP RUN.