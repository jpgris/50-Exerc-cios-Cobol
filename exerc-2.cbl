       IDENTIFICATION DIVISION.
       PROGRAM-ID. EXERC-2.
       AUTHOR. JOAO_PAULO.

       DATA DIVISION.
       WORKING-STORAGE SECTION.
       77  Numero    PIC 9(2).
       77  Contador  PIC 9(2) VALUE 1.
       77  Resultado PIC 9(3).

       PROCEDURE DIVISION.
           PERFORM VARYING Numero FROM 1 BY 1 UNTIL Numero > 02
               PERFORM VARYING Contador FROM 1 BY 1 UNTIL Contador > 10
                   compute Resultado = Numero * Contador
                   display Numero " x " Contador " = " Resultado

               END-PERFORM
               display "---------------"

           END-PERFORM.

           ACCEPT OMITTED.
           EXIT PROGRAM.
           STOP RUN.

      *wrun32 exerc-