       IDENTIFICATION DIVISION.
       PROGRAM-ID. Exerc-10.
       AUTHOR. JOAO_PAULO.

       DATA DIVISION.
       WORKING-STORAGE SECTION.
       01  Idade                PIC 9(2).
       01  Contador             PIC 9(2) VALUE 0.
       01  QtdFaixa1            PIC 9(2) VALUE 0.
       01  QtdFaixa2            PIC 9(2) VALUE 0.
       01  QtdFaixa3            PIC 9(2) VALUE 0.
       01  QtdFaixa4            PIC 9(2) VALUE 0.
       01  QtdFaixa5            PIC 9(2) VALUE 0.
       01  TotalPessoas         PIC 9(2) VALUE 15.
       01  PercentagemFaixa1    PIC 9(3)V99.
       01  PercentagemFaixa5    PIC 9(3)V99.

       PROCEDURE DIVISION.
           PERFORM UNTIL Contador = 15
               ADD 1 TO Contador
               DISPLAY "Digite a idade da pessoa " Contador ": "
               ACCEPT Idade

           IF Idade <= 15
                   ADD 1 TO QtdFaixa1
               ELSE IF Idade <= 30
                   ADD 1 TO QtdFaixa2
               ELSE IF Idade <= 45
                   ADD 1 TO QtdFaixa3
               ELSE IF Idade <= 60
                   ADD 1 TO QtdFaixa4
               ELSE
                   ADD 1 TO QtdFaixa5
           END-IF
           END-IF
           END-IF
           END-IF
           END-PERFORM.

           COMPUTE PercentagemFaixa1 = (QtdFaixa1 / TotalPessoas) * 100
           COMPUTE PercentagemFaixa5 = (QtdFaixa5 / TotalPessoas) * 100

           DISPLAY "Quantidade de pessoas ate 15 anos:      " QtdFaixa1
           DISPLAY "Quantidade de pessoas de 16 a 30 anos : " QtdFaixa2
           DISPLAY "Quantidade de pessoas de 31 a 45 anos:  " QtdFaixa3
           DISPLAY "Quantidade de pessoas de 46 a 60 anos:  " QtdFaixa4
           DISPLAY "Quantidade de pessoas acima de 61 anos: " QtdFaixa5

           DISPLAY "Percentagem de pessoas ate 15 anos: "
                    PercentagemFaixa1 "%".
           DISPLAY "Percentagem de pessoas acima de 61 anos: "
                    PercentagemFaixa5 "%".

           ACCEPT OMITTED.
           EXIT PROGRAM.
           STOP RUN.