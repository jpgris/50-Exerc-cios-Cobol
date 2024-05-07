       IDENTIFICATION DIVISION.
       PROGRAM-ID. EXERC-30.
       AUTHOR. JOAO_PAULO.

       DATA DIVISION.
       WORKING-STORAGE SECTION.
       01 Matricula               PIC 9(5).
       01 Nota1                   PIC 9(2).
       01 Nota2                   PIC 9(2).
       01 Nota3                   PIC 9(2).
       01 Frequencia              PIC 99.
       01 NotaFinal               PIC 9(3)V99.
       01 Statuss                  PIC X.
       01 MaiorNota               PIC 9(2) VALUE 0.
       01 MenorNota               PIC 9(2).
       01 TotalReprovados         PIC 99 VALUE ZEROS.
       01 PercentagemReprovados   PIC 999V99 VALUE ZEROS.
       01 Contador                PIC 99 VALUE 1.

       PROCEDURE DIVISION.
           PERFORM 2 times
            DISPLAY "Informe o numero da matricula do aluno " Contador
            ACCEPT Matricula
            DISPLAY "Informe a primeira nota do aluno " Contador
            ACCEPT Nota1
            DISPLAY "Informe a segunda nota do aluno " Contador
            ACCEPT Nota2
            DISPLAY "Informe a terceira nota do aluno " Contador
            ACCEPT Nota3
            DISPLAY "Informe a frequencia do aluno " Contador
            ACCEPT Frequencia

            COMPUTE NotaFinal = (Nota1 + Nota2 + Nota3) / 3

            IF NotaFinal >= 6 AND Frequencia >= 40
                MOVE "Aprovado" TO Statuss
            ELSE
                MOVE "Reprovado" TO Statuss
                ADD 1 TO TotalReprovados
            END-IF

            IF NotaFinal > MaiorNota
                MOVE NotaFinal TO MaiorNota
            END-IF

            IF NotaFinal < MenorNota
                MOVE NotaFinal TO MenorNota
            END-IF

            ADD Frequencia TO PercentagemReprovados
            ADD 1 TO Contador
           END-PERFORM.

            COMPUTE PercentagemReprovados =
            (PercentagemReprovados / 10) * 100

            DISPLAY "Numero da matricula: " Matricula
            DISPLAY "Nota final: " NotaFinal
            DISPLAY "Statuss: " Statuss


            IF Contador > 10
                DISPLAY "Maior nota da turma: " MaiorNota
                DISPLAY "Menor nota da turma: " MenorNota
                DISPLAY "Total de alunos reprovados: " TotalReprovados
                DISPLAY "Percentagem de alunos reprovados por"
                "frequencia abaixo da minima necessaria: "
                PercentagemReprovados
            END-IF

           DISPLAY SPACE
           display "Obrigado volte sempre!!! "
           DISPLAY SPACE

           ACCEPT OMITTED.
           EXIT PROGRAM.
           STOP RUN.