       IDENTIFICATION DIVISION.
       PROGRAM-ID. EXERC-3.
       AUTHOR. JOAO_PAULO.

       DATA DIVISION.
       WORKING-STORAGE SECTION.
       77  Numero     PIC 9(4).
       77  Resto      PIC 9(4).
       77  Resultado  PIC 9(4).

       PROCEDURE DIVISION.
           PERFORM VARYING Numero FROM 1001 BY 1 UNTIL Numero > 2000
               MOVE FUNCTION mod (Numero 11) to Resto
               IF Resto = 2
                  MOVE Numero TO Resultado
                  DISPLAY Resultado
               END-IF
           END-PERFORM.

           ACCEPT OMITTED.
           EXIT PROGRAM.
           STOP RUN.

      *wrun32 exerc-3
