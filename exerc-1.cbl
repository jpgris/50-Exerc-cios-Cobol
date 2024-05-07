       IDENTIFICATION DIVISION.
       PROGRAM-ID. EXERC-1.
       AUTHOR. JOAO_PAULO.

       DATA DIVISION.
       WORKING-STORAGE SECTION.
       77  WSS-contador           PIC 9(02) VALUE 1.
       77  WSS-numerador          PIC 9(02) VALUE 1.
       77  WSS-resultado          PIC 9(03) VALUE 1.

       PROCEDURE DIVISION.

           DISPLAY "TABUADA DA JOGATINA: " at 0330
           DISPLAY "Digite um numero para: " at 0501
           ACCEPT WSS-numerador

           PERFORM UNTIL WSS-contador > 10
             COMPUTE WSS-resultado = WSS-numerador * WSS-contador
             DISPLAY WSS-numerador " x " WSS-contador "=" WSS-resultado
             ADD 1 TO WSS-contador
           END-PERFORM.


           ACCEPT OMITTED.
           EXIT PROGRAM.
           STOP RUN.
      *wrun32 exerc-