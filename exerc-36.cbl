       IDENTIFICATION DIVISION.
       PROGRAM-ID. exerc-37.

       DATA DIVISION.
       WORKING-STORAGE SECTION.
       01  Numero                PIC 9(5).
       01  SomaPositivos         PIC 9(8)       VALUE 0.
       01  QtdMenor35            PIC 999        VALUE 0.
       01  QtdEntre50_100        PIC 999        VALUE 0.
       01  QtdEntre10_20         PIC 999        VALUE 0.
       01  QtdTotal              PIC 999        VALUE 0.
       01  MediaPositivos        PIC 9(5)V99    VALUE 0.
       01  Percent50_100         PIC 9(3)V9(2).
       01  Percent10_20          PIC 9(3)V9(2).
       01  QtdMenor35-MASK       PIC ZZ9.99.
       01  MediaPositivos-MASK   PIC ZZ9.99.
       01  Percent50_100-MASK    PIC ZZ9.99.
       01  Percent10_20-MASK     PIC ZZ9.99.

       PROCEDURE DIVISION.
       INICIO.
           DISPLAY "Digite varios numeros"
                   "(para encerrar, digite um numero negativo):".

           PERFORM 6 TIMES
                ACCEPT Numero

                ADD 1 TO QtdTotal

                IF Numero < 35
                    ADD 1 TO QtdMenor35
                END-IF

                IF Numero > 0
                    ADD Numero TO SomaPositivos
                END-IF

                IF Numero >= 50 AND Numero <= 100
                    ADD 1 TO QtdEntre50_100
                END-IF

                IF Numero < 50 AND Numero >= 10 AND Numero <= 20
                    ADD 1 TO QtdEntre10_20
                END-IF

           IF QtdTotal > 0
                IF SomaPositivos > 0
                    COMPUTE MediaPositivos =
                        SomaPositivos / QtdTotal
                END-IF

                IF QtdTotal > 0
                    COMPUTE Percent50_100 =
                         (QtdEntre50_100 / QtdTotal) * 100
                    COMPUTE Percent10_20 =
                        (QtdEntre10_20 / QtdMenor35) * 100
                END-IF

                MOVE QtdMenor35 TO QtdMenor35-MASK
                DISPLAY "Qtd de Numeros Inferiores a 35: ",
                         QtdMenor35-MASK
                MOVE MediaPositivos TO MediaPositivos-MASK
                DISPLAY "Media dos Numeros Positivos: ",
                         MediaPositivos-MASK
                MOVE Percent50_100-MASK TO Percent50_100-MASK
                DISPLAY "Percentagem de Numeros entre 50 e 100: ",
                         Percent50_100-MASK, "%"
                MOVE Percent10_20 TO Percent10_20-MASK
                DISPLAY "Percentagem de Numeros entre 10 e 20 entre"
                        "os menores que 50: ", Percent10_20-MASK, "%"
            ELSE
                DISPLAY "Nenhum dado foi inserido."
            END-IF
           END-PERFORM.

           DISPLAY SPACE
            display "Obrigado volte sempre!!! "
           DISPLAY SPACE

           ACCEPT OMITTED.
           EXIT PROGRAM.
           STOP RUN.