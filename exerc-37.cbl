       IDENTIFICATION DIVISION.
       PROGRAM-ID. exerc-37.

       DATA DIVISION.
       WORKING-STORAGE SECTION.
       01  WSS-Numero          PIC 9(5).
       01  WSS-Soma-Positivos  PIC 9(8)     VALUE 0.
       01  WSS-Qtd-Menor35     PIC 999      VALUE 0.
       01  WSS-Qtd-Entre50_100 PIC 999      VALUE 0.
       01  WSS-Qtd-Entre10_20  PIC 999      VALUE 0.
       01  WSS-Qtd-Total       PIC 999      VALUE 0.
       01  WSS-Media-Positivos PIC 9(5)V99.
       01  WSS-Percent50_100   PIC 9(3)V9(2).
       01  WSS-Percent10_20    PIC 9(3)V9(2).

       PROCEDURE DIVISION.
       Inicio.
           DISPLAY "Digite vários números (para encerrar,"
                   "digite um número negativo):".

           PERFORM 5 TIMES
                ACCEPT WSS-Numero

                ADD 1 TO WSS-Qtd-Total

                IF WSS-Numero < 35
                    ADD 1 TO WSS-Qtd-Menor35
                END-IF

                IF WSS-Numero > 0
                    ADD WSS-Numero TO WSS-Soma-Positivos
                END-IF

                IF WSS-Numero >= 50 AND WSS-Numero <= 100
                    ADD 1 TO WSS-Qtd-Entre50_100
                END-IF

                IF WSS-Numero < 50 AND WSS-Numero >= 10 AND
                   WSS-Numero <= 20
                    ADD 1 TO WSS-Qtd-Entre10_20
                END-IF
           END-PERFORM.

           IF WSS-Qtd-Total > 0
                IF WSS-Soma-Positivos > 0
                    COMPUTE WSS-Media-Positivos =
                            WSS-Soma-Positivos / WSS-Qtd-Total
                END-IF

                IF WSS-Qtd-Total > 0
                    COMPUTE WSS-Percent50_100 =
                             (WSS-Qtd-Entre50_100 / WSS-Qtd-Total) * 100
                    COMPUTE WSS-Percent10_20 =
                            (WSS-Qtd-Entre10_20 / WSS-Qtd-Menor35) * 100
                END-IF

                DISPLAY "Qtd- de Números Inferiores a 35: ",
                          WSS-Qtd-Menor35
                DISPLAY "Média dos Números Positivos: ",
                          WSS-Media-Positivos
                DISPLAY "Percentagem de Números entre 50 e 100: ",
                          WSS-Percent50_100, "%"
                DISPLAY "Percentagem de Números entre 10 e 20 entre os"
                        "menores que 50: ", WSS-Percent10_20, "%"
            ELSE
                DISPLAY "Nenhum dado foi inserido."
            END-IF.

           DISPLAY SPACE
            display "Obrigado volte sempre!!! "
           DISPLAY SPACE

           ACCEPT OMITTED.
           EXIT PROGRAM.
           STOP RUN.