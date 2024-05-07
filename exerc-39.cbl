       IDENTIFICATION DIVISION.
       PROGRAM-ID. exerc-39.

       DATA DIVISION.
       WORKING-STORAGE SECTION.
       01  Voto          PIC 9    VALUE 1.
       01  WWS-TC1       PIC 9(3) VALUE 0.
       01  WWS-TC2       PIC 9(3) VALUE 0.
       01  WWS-TC3       PIC 9(3) VALUE 0.
       01  WWS-TC4       PIC 9(3) VALUE 0.
       01  WWS-TN        PIC 9(3) VALUE 0.
       01  WWS-TB        PIC 9(3) VALUE 0.
       01  WWS-TV        PIC 9(3) VALUE 0.
       01  PercN         PIC 9(3)V9(2).
       01  PercB-MASK    PIC ZZZ9.99.
       01  PercN-MASK    PIC ZZZ9.99.
       01  PercB         PIC 9(3)V9(2).

       PROCEDURE DIVISION.
           PERFORM UNTIL Voto = 0

                DISPLAY "Digite os votos (para encerrar, digite 0): "
                ACCEPT Voto
                ADD 1 TO WWS-TV

                EVALUATE Voto
                   WHEN 1
                       ADD 1 TO WWS-TC1
                   WHEN 2
                       ADD 1 TO WWS-TC2
                   WHEN 3
                       ADD 1 TO WWS-TC3
                   WHEN 4
                       ADD 1 TO WWS-TC4
                   WHEN 5
                       ADD 1 TO WWS-TN
                   WHEN 6
                       ADD 1 TO WWS-TB
                   when 0
                        move 0 to voto
                   when other
                        display "numero invalido"
                END-EVALUATE
            END-PERFORM.

            IF WWS-TV > 0
                COMPUTE PercN = (WWS-TN / WWS-TV) * 100
                COMPUTE PercB = (WWS-TB / WWS-TV) * 100

             DISPLAY "Total de Votos: ", WWS-TV
             DISPLAY "Total de Votos para Candidato 1: ", WWS-TC1
             DISPLAY "Total de Votos para Candidato 2: ", WWS-TC2
             DISPLAY "Total de Votos para Candidato 3: ", WWS-TC3
             DISPLAY "Total de Votos para Candidato 4: ", WWS-TC4
             DISPLAY "Total de Votos Nulos: ", WWS-TN
             DISPLAY "Total de Votos em Branco: ", WWS-TB
             MOVE PercN TO PercN-MASK
             DISPLAY "Percentagem de Votos Nulos: ", PercN-MASK, "%"
             MOVE PercB TO PercB-MASK
             DISPLAY "Percentagem de Votos em Branco: ", PercB-MASK, "%"
            ELSE
                DISPLAY "Nenhum voto foi registrado."
            END-IF


           DISPLAY SPACE
            display "Obrigado volte sempre!!! "
           DISPLAY SPACE

           accept omitted.
           EXIT PROGRAM.
           STOP RUN.