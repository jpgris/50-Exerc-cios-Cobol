       IDENTIFICATION DIVISION.
       PROGRAM-ID. Exerc-12.
       AUTHOR. JOAO_PAULO.

       DATA DIVISION.
       WORKING-STORAGE SECTION.
       01  LadoQuadrado        PIC 9(4).
       01  ContadorLinhas      PIC 9(4) VALUE 1.
       01  ContadorAsteriscos  PIC 9(4).

       PROCEDURE DIVISION.
       INICIO.
           DISPLAY "Digite o tamanho do lado do quadrado (1 a 20): ".
           ACCEPT LadoQuadrado.

           IF LadoQuadrado < 1 OR LadoQuadrado > 20
            DISPLAY "Tamanho do lado inválido. Deve estar entre 1 e 20"
      *********NAO FUNCIONA
           stop run
           END-IF.

                 PERFORM VARYING ContadorLinhas FROM 1 BY 1 UNTIL
                                         ContadorLinhas > LadoQuadrado

              PERFORM VARYING ContadorAsteriscos FROM 1 BY 1 UNTIL
                                     ContadorAsteriscos > LadoQuadrado
                                DISPLAY "* " with no advancing

           END-PERFORM
           DISPLAY SPACE
           END-PERFORM.
           GO TO INICIO.


       ROT-FIM.
           DISPLAY SPACE
           display "Obrigado volte sempre!!! "
           DISPLAY SPACE

           ACCEPT OMITTED.
           EXIT PROGRAM.
           STOP RUN.