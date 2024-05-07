       IDENTIFICATION DIVISION.
       PROGRAM-ID. exerc-40.

       DATA DIVISION.
       WORKING-STORAGE SECTION.
       01  WSS-Numero           PIC 9(5).
       01  WSS-SomaPositivos    PIC 9(8) VALUE 0.
       01  WSS-SomaNegativos    PIC 9(8) VALUE 0.
       01  WSS-SomaTotal        PIC 9(8) VALUE 0.

       PROCEDURE DIVISION.
       Inicio.
           DISPLAY "Digite uma lista de números positivos"
                   "ou negativos (termine com 0):".

           PERFORM UNTIL WSS-Numero = 0
                ACCEPT WSS-Numero
                IF WSS-Numero > 0
                    ADD WSS-Numero TO WSS-SomaPositivos
                ELSE
                    ADD WSS-Numero TO WSS-SomaNegativos
                END-IF

                ADD WSS-Numero TO WSS-SomaTotal
           END-PERFORM.

            DISPLAY "Soma dos Números Positivos: ", WSS-SomaPositivos
            DISPLAY "Soma dos Números Negativos: ", WSS-SomaNegativos
            DISPLAY "Soma Total: ", WSS-SomaTotal.

           DISPLAY SPACE
           display "Obrigado volte sempre!!! "
           DISPLAY SPACE

           ACCEPT OMITTED.
           EXIT PROGRAM.
           STOP RUN.