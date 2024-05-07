       IDENTIFICATION DIVISION.
       PROGRAM-ID. exerc-34.

       DATA DIVISION.
       WORKING-STORAGE SECTION.
       01  Idade                PIC 99.
       01  Sexo                 PIC X.
       01  Salario              PIC 9(5)V99.
       01  TotalSalarios        PIC 9(8)V99 VALUE 0.
       01  MaiorIdade           PIC 99 VALUE 0.
       01  MenorIdade           PIC 99 VALUE 0.
       01  QtdMulheres          PIC 999 VALUE 0.
       01  MenorSalario         PIC 9(5)V99 VALUE 99.
       01  MenorSalarioIdade    PIC 99.
       01  MenorSalarioSexo     PIC X.
       01  MediaSalarios        PIC 9(5)V99 VALUE 99.

       PROCEDURE DIVISION.
       INICIO.
           DISPLAY "Dados (para encerrar, digite idade negativa):"
           DISPLAY "Digite a idade: "
            ACCEPT Idade
           DISPLAY "sexo (M/F): "
            ACCEPT Sexo
           DISPLAY "e salário dos: "
            ACCEPT Salario


           PERFORM UNTIL Idade < 0
                ACCEPT Idade
                IF Idade >= 0
                    ACCEPT Sexo
                    ACCEPT Salario

                    ADD Salario TO TotalSalarios

                    IF Idade > MaiorIdade
                        MOVE Idade TO MaiorIdade
                    END-IF

                    IF Idade < MenorIdade
                        MOVE Idade TO MenorIdade
                    END-IF

                    IF Sexo = "F" AND Salario <= 2000
                        ADD 1 TO QtdMulheres
                    END-IF

                    IF Salario < MenorSalario
                        MOVE Salario TO MenorSalario
                        MOVE Idade TO MenorSalarioIdade
                        MOVE Sexo TO MenorSalarioSexo
                    END-IF
                END-IF
           END-PERFORM.

           IF TotalSalarios > 0
             COMPUTE MediaSalarios = TotalSalarios / (Idade - 1)
             DISPLAY "Média dos Salários do Grupo: R$ ", MediaSalarios
             DISPLAY "Maior Idade do Grupo: ", MaiorIdade
             DISPLAY "Menor Idade do Grupo: ", MenorIdade
             DISPLAY "Quantidade de Mulheres com Salário"
                     "até R$ 200,00: ", QtdMulheres
             DISPLAY "Pessoa com Menor Salário: Idade=",
                     MenorSalarioIdade, " Sexo=", MenorSalarioSexo,
                     " Salário=R$ ", MenorSalario
           ELSE
                DISPLAY "Nenhum dado foi inserido."
           END-IF.
           GO TO INICIO.


           DISPLAY SPACE
            display "Obrigado volte sempre!!! "
           DISPLAY SPACE

           ACCEPT OMITTED.
           EXIT PROGRAM.
           STOP RUN.