       IDENTIFICATION DIVISION.
       PROGRAM-ID. EXERC-24.
       AUTHOR. JOAO_PAULO.

       DATA DIVISION.
       WORKING-STORAGE SECTION.
       01  Numero         PIC 9(5).
       01  LimiteSuperior PIC 9(5).
       01  LimiteDivisao  PIC 9(5).
       01  Divisor        PIC 9(5).
       01  Primo          PIC X VALUE 'N'.
       01  VerificarPrimo PIC 9(5).

       PROCEDURE DIVISION.
           DISPLAY "Informe o numero desejado: "
           ACCEPT Numero convert

           perform until LimiteSuperior > Numero
              perform until LimiteDivisao







           accept omitted.
           exit program.
           stop run.
