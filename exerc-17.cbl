       IDENTIFICATION DIVISION.
       PROGRAM-ID. EXERC-17.
       AUTHOR. JOAO_PAULO.

       DATA DIVISION.
       WORKING-STORAGE SECTION.
       01  Idade                      PIC 99.
       01  Peso                       PIC 999V99.
       01  QtdPessoasMais90           PIC 99 VALUE ZEROS.
       01  SomaIdades                 PIC 99 VALUE ZEROS.
       01  MediaIdades                PIC 99V99 VALUE ZEROS.
       01  Contador                   PIC 99 VALUE 1.

       PROCEDURE DIVISION.
           PERFORM 7 TIMES
            DISPLAY "Informe a idade da pessoa " Contador
             ACCEPT Idade
            DISPLAY "Informe o peso da pessoa " Contador
             ACCEPT Peso
            IF Peso > 90
                ADD 1 TO QtdPessoasMais90
            END-IF

            ADD Idade TO SomaIdades
            ADD 1 TO Contador
           END-PERFORM

           COMPUTE MediaIdades = SomaIdades / 7

           DISPLAY "Quantidade de pessoas com mais de 90 quilos: "
                    QtdPessoasMais90
           DISPLAY "Media das idades das sete pessoas: " MediaIdades

           DISPLAY SPACE
           display "Obrigado volte sempre!!! "
           DISPLAY SPACE

           ACCEPT OMITTED.
           EXIT PROGRAM.
           STOP RUN.