       IDENTIFICATION DIVISION.
       PROGRAM-ID. EXERC-25.
       AUTHOR. JOAO_PAULO.

       DATA DIVISION.
       WORKING-STORAGE SECTION.
       01  Numero         PIC 9(5).
       01  Resultado      PIC 9(20) VALUE 1.
       01  Contador         PIC 9(5).

       PROCEDURE DIVISION.
            DISPLAY "Informe um nUmero para calcular o fatorial: "
            ACCEPT Numero at 0144

            IF Numero < 0
                DISPLAY "Nao e possivel calcular o fatorial"
                        "de um numero negativo."
            ELSE
                PERFORM CalcularFatorial
                DISPLAY "O fatorial de " Numero " eh: " Resultado
            END-IF

           ACCEPT OMITTED.
           STOP RUN.

           CalcularFatorial SECTION.
           PERFORM VARYING Contador FROM 1 BY 1 UNTIL Contador > Numero
                MULTIPLY Contador BY Resultado GIVING Resultado
           END-PERFORM.
           EXIT SECTION.

           DISPLAY SPACE
            display "Obrigado volte sempre!!! "
           DISPLAY SPACE

           ACCEPT OMITTED.
           EXIT PROGRAM.
           STOP RUN.