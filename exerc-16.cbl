       IDENTIFICATION DIVISION.
       PROGRAM-ID. EXERC-16.

       DATA DIVISION.
       WORKING-STORAGE SECTION.
       01  Idade                     PIC 99.
       01  Altura                    PIC 9(3)V99.
       01  Peso                      PIC 9(3)V99.
       01  Acima50                   PIC 99 VALUE ZEROS.
       01  SomaAl10a20               PIC 9(3)V99 VALUE ZEROS.
       01  QtdIdade10a20             PIC 99 VALUE ZEROS.
       01  QtdPesoMenor40            PIC 99 VALUE ZEROS.
       01  QtdTotalPessoas           PIC 99 VALUE 25.
       01  MAIdade10a20              PIC 99.
       01  Contador                  PIC 99.
       01  Menor40                   PIC 99.

       PROCEDURE DIVISION.
       inicio.
           PERFORM 25 TIMES
            DISPLAY "Informe a idade da pessoa "
             ACCEPT Idade
            DISPLAY "Informe a altura da pessoa "
             ACCEPT Altura
            DISPLAY "Informe o peso da pessoa "
             ACCEPT Peso

            IF Idade > 50
                ADD 1 TO Acima50
            END-IF

            IF Idade >= 10 AND Idade <= 20
                ADD Altura TO SomaAl10a20
                ADD 1 TO QtdIdade10a20
            END-IF

            IF Peso < 40
                ADD 1 TO QtdPesoMenor40
            END-IF

            ADD 1 TO Contador
           end-perform.

           COMPUTE MAIdade10a20 = SomaAl10a20 /
                      QtdIdade10a20
           COMPUTE Menor40 = (QtdPesoMenor40 / QtdTotalPessoas) * 100.

           DISPLAY "Quantidade de pessoas com idade"
           " superior a 50 anos: " Acima50
           DISPLAY "Média das alturas das pessoas com"
           " idade entre 10 e 20 anos: " MAIdade10a20
           DISPLAY "Porcentagem das pessoas com peso"
           " inferior a 40 quilos: " Menor40


           go to inicio.

           DISPLAY SPACE
           display "Obrigado volte sempre!!! "
           DISPLAY SPACE

           EXIT PROGRAM.
           STOP RUN.