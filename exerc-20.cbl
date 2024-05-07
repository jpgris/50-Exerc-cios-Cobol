       IDENTIFICATION DIVISION.
       PROGRAM-ID. EXERC-20.
       AUTHOR. JOAO_PAULO.

       DATA DIVISION.
       WORKING-STORAGE SECTION.
       01  Idade                      PIC 99.
       01  Peso                       PIC 999V99.
       01  Altura                     PIC 9(3)V99.
       01  SomaIdades                 PIC 99 VALUE ZEROS.
       01  90Menos150                 PIC 99 VALUE ZEROS.
       01  10a30Mais190     PIC 99 VALUE ZEROS.
       01  Contador                   PIC 99 VALUE 1.
       01  MediaIdades                PIC 99 VALUE ZEROS.
       01  Por10a30Mais190            PIC 99 VALUE ZEROS.

       PROCEDURE DIVISION.
           PERFORM 25 TIMES
            DISPLAY "Informe a idade da pessoa " Contador
             ACCEPT Idade
            DISPLAY "Informe o peso da pessoa " Contador
             ACCEPT Peso
            DISPLAY "Informe a altura da pessoa " Contador
             ACCEPT Altura

            ADD Idade TO SomaIdades

            IF Peso > 90 AND Altura < 1.50
                ADD 1 TO 90Menos150
            END-IF

            IF Idade >= 10 AND Idade <= 30 AND Altura > 1.90
                ADD 1 TO 10a30Mais190
            END-IF

            ADD 1 TO Contador
           END-PERFORM

           COMPUTE MediaIdades = SomaIdades / 10.
           COMPUTE Por10a30Mais190 = (10a30Mais190 * 100) / 10.

           DISPLAY "Media das idades das dez pessoas: " MediaIdades
           DISPLAY "Qtde peso superior a 90"
                   "KG e altura 1,50: " 90Menos150
           DISPLAY "Porcentagem idade entre 10 e 30 anos entre as"
                   "pessoas que medem mais de 1,90: " Por10a30Mais190

           DISPLAY SPACE
            display "Obrigado volte sempre!!! "
           DISPLAY SPACE

           ACCEPT OMITTED.
           EXIT PROGRAM.
           STOP RUN.
