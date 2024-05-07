       IDENTIFICATION DIVISION.
       PROGRAM-ID. exerc-33.

       DATA DIVISION.
       WORKING-STORAGE SECTION.
       01  Salario              PIC 9(5)V99.
       01  NumFilhos            PIC 99.
       01  TotalSalarios        PIC 9(8)V99 VALUE 0.
       01  TotalFilhos          PIC 999 VALUE 0.
       01  MaiorSalario         PIC 9(5)V99 VALUE 0.
       01  Percate50            PIC 9(3)V9(2) VALUE 0.
       01  ContadorPessoas      PIC 999 VALUE 0.
       01  MediaSalario         PIC 9(5)V99 VALUE 0.
       01  MediaFilhos          PIC 9(5)V99 VALUE 0.
       01  Perc                 PIC ZZ9.


       PROCEDURE DIVISION.
       Inicio.
           DISPLAY "Digite o salario e o numero de filhos dos "
           "habitantes (para encerrar, digite salario negativo):"

           PERFORM UNTIL Salario > 0
                ACCEPT Salario
                IF Salario >= 0
                    ACCEPT NumFilhos

                    ADD Salario TO TotalSalarios
                    ADD NumFilhos TO TotalFilhos
                    ADD 1 TO ContadorPessoas

                    IF Salario > MaiorSalario
                        MOVE Salario TO MaiorSalario
                    END-IF

                    IF Salario <= 150
                        ADD 1 TO Percate50
                    END-IF
                END-IF
           END-PERFORM.

           IF ContadorPessoas > 0
                COMPUTE Perc = (Percate50 / ContadorPessoas) * 100
                COMPUTE MediaSalario = TotalSalarios / ContadorPessoas
                COMPUTE MediaFilhos = TotalFilhos / ContadorPessoas
                DISPLAY "Media do Salario da Populacao: R$ ",
                         MediaSalario
                DISPLAY "Media do Numero de Filhos: ", MediaFilhos
                DISPLAY "Maior Salario: R$ ", MaiorSalario
                DISPLAY "Percentagem de Pessoas com Salarios ate"
                        "R$ 150,00: ", Perc, "%"


           ELSE
                DISPLAY "Nenhum dado foi inserido."
           END-IF.

           DISPLAY SPACE
            display "Obrigado volte sempre!!! "
           DISPLAY SPACE

           ACCEPT OMITTED.
           EXIT PROGRAM.
           STOP RUN.