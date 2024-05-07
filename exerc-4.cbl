       IDENTIFICATION DIVISION.
       PROGRAM-ID. EXERC-4.
       AUTHOR. JOAO_PAULO.

       DATA DIVISION.
       WORKING-STORAGE SECTION.
       77  Numero      PIC 9(2).
       77  Contador    PIC 9(2) VALUE 1.
       77  Soma        PIC 9(2)V99 VALUE 0.
       77  Resultado   PIC 9(2)V99.

       PROCEDURE DIVISION.
           PARAGRAFO.
           DISPLAY "Digite um valor inteiro e positivo (n): ".
           ACCEPT Numero.

           PERFORM VARYING Contador FROM 1 BY 1 UNTIL Contador > Numero
             COMPUTE Resultado = 1 / Contador
             ADD Resultado to Soma
             display "Resultado " Contador "/" Numero " = " Resultado

           END-PERFORM.
           DISPLAY "A soma eh: " Soma.


           GO TO PARAGRAFO.


           ACCEPT OMITTED.
           EXIT PROGRAM.
           STOP RUN.

      *wrun32 exerc-4