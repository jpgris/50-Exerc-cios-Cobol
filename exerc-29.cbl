       IDENTIFICATION DIVISION.
       PROGRAM-ID. EXERC-29.
       AUTHOR. JOAO_PAULO.

       DATA DIVISION.
       WORKING-STORAGE SECTION.
       01 Nota1                PIC 9(2).
       01 Nota2                PIC 9(2).
       01 Nota3                PIC 9(2).
       01 MediaNotas           PIC 9(2).
       01 AulasFrequentadas    PIC 99.
       01 Aprovado             PIC X.

       PROCEDURE DIVISION.
       INICIO.
            DISPLAY "Informe a primeira nota: "
            ACCEPT Nota1
            DISPLAY "Informe a segunda nota: "
            ACCEPT Nota2
            DISPLAY "Informe a terceira nota: "
            ACCEPT Nota3
            DISPLAY "Informe o numero de aulas frequentadas: "
            ACCEPT AulasFrequentadas

            COMPUTE MediaNotas = (Nota1 + Nota2 + Nota3) / 3

            IF MediaNotas >= 6 AND AulasFrequentadas >= 40
                MOVE "S" TO Aprovado
            ELSE
                MOVE "N" TO Aprovado
            END-IF

            DISPLAY "Media das notas: " MediaNotas
            DISPLAY "Aprovado? " Aprovado
           GO TO INICIO.

           DISPLAY SPACE
            display "Obrigado volte sempre!!! "
           DISPLAY SPACE

           ACCEPT OMITTED.
           EXIT PROGRAM.
           STOP RUN.