       IDENTIFICATION DIVISION.
       PROGRAM-ID. exerc-14.
       AUTHOR. JOAO_PAULO.

       DATA DIVISION.
       WORKING-STORAGE SECTION.
       01 ALTURA           PIC 9(2).
       01 I                PIC 9(2).
       01 J                PIC 9(2).
       01 ASTERISK         PIC X VALUE 'S'.                                                                                                                                                                                                                                                                                                     SADSA

       PROCEDURE DIVISION.
           INICIO.
           DISPLAY "Informe a altura do triangulo: ".
           ACCEPT ALTURA.

           PERFORM VARYING I FROM 1 BY 1 UNTIL I > ALTURA
               MOVE 0 TO J
               PERFORM UNTIL J >= I
                   DISPLAY ASTERISK WITH NO ADVANCING
                   ADD 1 TO J
               END-PERFORM
               DISPLAY SPACE
           END-PERFORM.
           GO TO INICIO.

           ACCEPT OMITTED.
           STOP RUN.
      *wrun32 exerc-14