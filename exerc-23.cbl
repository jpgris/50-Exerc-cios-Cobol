       IDENTIFICATION DIVISION.
       PROGRAM-ID. EXERC-23.
       AUTHOR. JOAO_PAULO.

       DATA DIVISION.
       WORKING-STORAGE SECTION.
       01  Idade          PIC 99.
       01  SomaIdades     PIC 99 VALUE ZEROS.
       01  QtdIdades      PIC 99 VALUE ZEROS.
       01  MediaIdade     PIC 99V99 VALUE ZEROS.

       PROCEDURE DIVISION.
       inicio.
            DISPLAY "Digite a idade (ou 0 para encerrar): "
            ACCEPT Idade

           PERFORM UNTIL Idade = 0
                ADD Idade TO SomaIdades
                ADD 1 TO QtdIdades

                DISPLAY "Digite a idade (ou 0 para encerrar): "
                ACCEPT Idade
           END-PERFORM.

            IF QtdIdades > 0
                COMPUTE MediaIdade = SomaIdades / QtdIdades
                DISPLAY "A media das idades eh: " MediaIdade
            ELSE
                DISPLAY "Nenhuma idade foi digitada."
            END-IF.
           go to inicio.
           DISPLAY SPACE
            display "Obrigado volte sempre!!! "
           DISPLAY SPACE

           ACCEPT OMITTED.
           EXIT PROGRAM.
           STOP RUN.