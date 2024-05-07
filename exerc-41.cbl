       IDENTIFICATION DIVISION.
       PROGRAM-ID. exerc-41.

       DATA DIVISION.
       WORKING-STORAGE SECTION.
       01  Idade             PIC 99 VALUE 1.
       01  Altura            PIC 9(5)V99.
       01  SomaAlturas       PIC 9(8)V99 VALUE 0.
       01  QuantidadePessoas PIC 999 VALUE 0.
       01  MediaAlturas      PIC 9(5)V99.

       PROCEDURE DIVISION.
       Inicio.


           PERFORM UNTIL Idade = 0
           DISPLAY "Digite a idade: "
              ACCEPT Idade
           DISPLAY "Digite altura das pessoas: "
                ACCEPT Altura
                IF Idade > 50
                    ACCEPT Altura
                    ADD Altura TO SomaAlturas
                    ADD 1 TO QuantidadePessoas
                END-IF
           END-PERFORM.

           IF QuantidadePessoas > 0
                COMPUTE MediaAlturas = SomaAlturas / QuantidadePessoas
                DISPLAY "Media das Alturas das Pessoas com mais de"
                        "0 anos: ", MediaAlturas
           ELSE
                DISPLAY "Nenhuma pessoa com mais de 50 anos "
                        "foi registrada."
           END-IF

           DISPLAY SPACE
           display "Obrigado volte sempre!!! "
           DISPLAY SPACE

           ACCEPT OMITTED.
           EXIT PROGRAM.
           STOP RUN.