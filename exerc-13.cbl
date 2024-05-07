       IDENTIFICATION DIVISION.
       PROGRAM-ID. Exerc-13.
       AUTHOR. JOAO_PAULO.

       DATA DIVISION.
       WORKING-STORAGE SECTION.
       01  LadoQuadrado        PIC 9(2).
       01  ContadorLinhas      PIC 9(2) VALUE 1.
       01  ContadorColunas     PIC 9(2) VALUE 1.

       PROCEDURE DIVISION.
       inicio.
           DISPLAY "Digite o tamanho do lado do quadrado (1 a 20): ".
           ACCEPT LadoQuadrado.

           IF LadoQuadrado < 1 OR LadoQuadrado > 20
            DISPLAY "Tamanho do lado invalido. Deve estar entre 1 e 20."
               STOP RUN
           END-IF.

           PERFORM VARYING ContadorLinhas FROM 1 BY 1 UNTIL
                           ContadorLinhas > LadoQuadrado
               IF ContadorLinhas = 1 OR ContadorLinhas = LadoQuadrado
                   PERFORM VARYING ContadorColunas FROM 1 BY 1 UNTIL
                                    ContadorColunas > LadoQuadrado
                       DISPLAY "* " with no advancing
                   END-PERFORM
               ELSE
                   PERFORM VARYING ContadorColunas FROM 1 BY 1 UNTIL
                                   ContadorColunas > LadoQuadrado

                      IF ContadorColunas = 1 OR LadoQuadrado
                         DISPLAY "* " with no advancing
                      ELSE
                         DISPLAY "  "with no advancing
                      END-IF
                   END-PERFORM

               END-IF
               DISPLAY SPACE
           END-PERFORM.
           go to inicio.
           DISPLAY SPACE
           display "Obrigado volte sempre!!! "
           DISPLAY SPACE

           ACCEPT OMITTED.
           EXIT PROGRAM.
           STOP RUN.