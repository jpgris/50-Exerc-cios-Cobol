       IDENTIFICATION DIVISION.
       PROGRAM-ID. EXERC-18.
       AUTHOR. JOAO_PAULO.

       DATA DIVISION.
       WORKING-STORAGE SECTION.
       01  Idade                      PIC 99.
       01  Peso                       PIC 999V99.
       01  Altura                     PIC 9(3)V99.
       01  Olhos                      PIC X.
       01  Cabelos                    PIC X.
       01  QtdPessoasMais50Menos60    PIC 99 VALUE ZEROS.
       01  SomaIdadesMenor150         PIC 99 VALUE ZEROS.
       01  QtdPessoasOlhosAzuis       PIC 99 VALUE ZEROS.
       01  QtdPessoasRuivasSemOlhosAzuis PIC 99 VALUE ZEROS.
       01  Contador                   PIC 99 VALUE 0.
       01  MediaIdadesMenor150        PIC 99 VALUE 0.
       01  PorcentagemOlhosAzuis      PIC 99 VALUE 0.

       PROCEDURE DIVISION.
       INICIO.
           PERFORM 20 TIMES
             DISPLAY "A idade da pessoa " Contador
               ACCEPT Idade
             DISPLAY "Informe o peso da pessoa " Contador
               ACCEPT Peso
             DISPLAY "A altura da pessoa " Contador
               ACCEPT Altura
             DISPLAY "A cor dos olhos (A/P/V/C) da pessoa " Contador
               ACCEPT Olhos
             DISPLAY "A cor dos cabelos (P/C/L/R) da pessoa " Contador
               ACCEPT Cabelos

             IF Idade > 50 AND Peso < 60
                ADD 1 TO QtdPessoasMais50Menos60
             END-IF

             IF Altura < 1.50
                ADD Idade TO SomaIdadesMenor150
             END-IF

             IF Olhos = "A" OR "a"
                ADD 1 TO QtdPessoasOlhosAzuis
             END-IF

             IF Cabelos = "R" OR "r" AND NOT (Olhos = "A" OR "a")
                ADD 1 TO QtdPessoasRuivasSemOlhosAzuis
             END-IF

             ADD 1 TO Contador


           COMPUTE MediaIdadesMenor150 = SomaIdadesMenor150 / 20
           COMPUTE PorcentagemOlhosAzuis =
                   (QtdPessoasOlhosAzuis / 20) * 100

           DISPLAY "Quantidade de pessoas com idade superior a "
           "50 anos e peso inferior"
           "a 60 quilos: " QtdPessoasMais50Menos60
           DISPLAY "Média das idades das pessoas com altura inferior"
           " a 1,50: " MediaIdadesMenor150
           DISPLAY "Porcentagem de pessoas com olhos azuis entre as"
           " pessoas analisadas: " PorcentagemOlhosAzuis
           DISPLAY "Quantidade de pessoas ruivas que não possuem olhos"
           " azuis: " QtdPessoasRuivasSemOlhosAzuis


           DISPLAY SPACE
           display "Obrigado volte sempre!!! "
           DISPLAY SPACE

           STOP RUN.