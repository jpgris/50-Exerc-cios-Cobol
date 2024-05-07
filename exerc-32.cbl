       IDENTIFICATION DIVISION.
       PROGRAM-ID. exerc-32.
       DATA DIVISION.
       WORKING-STORAGE SECTION.
       01 Idade           PIC 99.
       01 SomaIdades      PIC 9(5) VALUE 0.
       01 Contador        PIC 999 VALUE 0.
       01 MediaIdades     PIC 9(3)V9(2).

       PROCEDURE DIVISION.
       Inicio.
           DISPLAY "Digite as idades (digite 0 para encerrar):".

           PERFORM UNTIL Idade = 0
                ACCEPT Idade
                IF Idade NOT EQUAL 0
                    ADD Idade TO SomaIdades
                    ADD 1 TO Contador
                END-IF
           END-PERFORM.

           IF Contador NOT EQUAL 0
              COMPUTE MediaIdades = SomaIdades / Contador
                DISPLAY "A média das idades é ", MediaIdades
           ELSE
                DISPLAY "Nenhuma idade foi digitada."
           END-IF.
           go to Inicio.

           DISPLAY SPACE
            display "Obrigado volte sempre!!! "
           DISPLAY SPACE

           ACCEPT OMITTED.
           EXIT PROGRAM.
           STOP RUN.