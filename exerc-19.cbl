       IDENTIFICATION DIVISION.
       PROGRAM-ID. EXERC-19.
       AUTHOR. JOAO_PAULO.

       DATA DIVISION.
       WORKING-STORAGE SECTION.
       77  Numero          PIC 99.
       77  QtdNumeros3090  PIC 99 VALUE ZEROS.
       77  Contador        PIC 99 VALUE 1.

       PROCEDURE DIVISION.
           PERFORM 25 TIMES
            DISPLAY "Informe o numero " Contador
             ACCEPT Numero

            IF Numero >= 30 AND Numero <= 90
                ADD 1 TO QtdNumeros3090
            END-IF

            ADD 1 TO Contador
           END-PERFORM.

           DISPLAY "Quantidade de numeros entre 30 e 90:"QtdNumeros3090


           DISPLAY SPACE
            display "Obrigado volte sempre!!! "
           DISPLAY SPACE

           ACCEPT OMITTED.
           EXIT PROGRAM.
           STOP RUN.
