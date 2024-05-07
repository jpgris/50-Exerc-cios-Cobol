       IDENTIFICATION DIVISION.
       PROGRAM-ID. EXERC-26.
       AUTHOR. JOAO_PAULO.

       DATA DIVISION.
       WORKING-STORAGE SECTION.
       01  Idade               PIC 99.
       01  Peso                PIC 999V99.
       01  SomaPesos1a10       PIC 9999V99 VALUE ZEROS.
       01  QtdPessoas1a10      PIC 99      VALUE ZEROS.
       01  SomaPesos11a20      PIC 9999V99 VALUE ZEROS.
       01  QtdPessoas11a20     PIC 99      VALUE ZEROS.
       01  SomaPesos21a30      PIC 9999V99 VALUE ZEROS.
       01  QtdPessoas21a30     PIC 99      VALUE ZEROS.
       01  SomaPesosMais30     PIC 9999V99 VALUE ZEROS.
       01  QtdPessoasMais30    PIC 99      VALUE ZEROS.
       01  Contador            PIC 99      VALUE 1.
       01  MediaPesos1a10      PIC ZZZZ9.99.
       01  MediaPesos11a20     PIC ZZZZ9.99.
       01  MediaPesos21a30     PIC ZZZZ9.99.
       01  MediaPesosMais30    PIC ZZZZ9.99.

       PROCEDURE DIVISION.

           PERFORM 5 TIMES
            DISPLAY "Informe a idade da pessoa " Contador
            ACCEPT Idade
            DISPLAY "Informe o peso da pessoa " Contador
            ACCEPT Peso

            ADD Peso TO SomaPesosMais30
            ADD 1 TO QtdPessoasMais30

            IF Idade >= 1 AND Idade <= 10
                ADD Peso TO SomaPesos1a10
                ADD 1 TO QtdPessoas1a10
            ELSE IF Idade >= 11 AND Idade <= 20
                ADD Peso TO SomaPesos11a20
                ADD 1 TO QtdPessoas11a20
            ELSE IF Idade >= 21 AND Idade <= 30
                ADD Peso TO SomaPesos21a30
                ADD 1 TO QtdPessoas21a30
            END-IF
            END-IF
            END-IF
      *    EVALUATE TRUE
      *    WHEN Idade >= 1 AND Idade <= 10
      *    END-EVALUATE
      *    EVALUATE IDADE

            ADD 1 TO Contador
           END-PERFORM

            COMPUTE MediaPesos1a10 = SomaPesos1a10 / QtdPessoas1a10
            COMPUTE MediaPesos11a20 = SomaPesos11a20 / QtdPessoas11a20
            COMPUTE MediaPesos21a30 = SomaPesos21a30 / QtdPessoas21a30
            COMPUTE MediaPesosMais30 =
                    SomaPesosMais30 / QtdPessoasMais30

            DISPLAY "Media de pesos para a"
                    "faixa de 1 a 10 anos:" MediaPesos1a10
            DISPLAY "Media de pesos para a"
                    "faixa de 11 a 20 anos:" MediaPesos11a20
            DISPLAY "Media de pesos para a"
                    "faixa de 21 a 30 anos:" MediaPesos21a30
            DISPLAY "Media de pesos para"
                    "maiores de 30 anos:" MediaPesosMais30
            .

           DISPLAY SPACE
            display "Obrigado volte sempre!!! "
           DISPLAY SPACE

           ACCEPT OMITTED.
           EXIT PROGRAM.
           STOP RUN.