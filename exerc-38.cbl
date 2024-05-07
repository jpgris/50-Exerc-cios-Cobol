       IDENTIFICATION DIVISION.
       PROGRAM-ID. exerc-38.

       DATA DIVISION.
       WORKING-STORAGE SECTION.
       01  WSS-OpM     PIC 9.
       01  WSS-Nota1   PIC 9(3)V9(2).
       01  WSS-Nota2   PIC 9(3)V9(2).
       01  WSS-Nota3   PIC 9(3)V9(2).
       01  WSS-Peso1   PIC 9.
       01  WSS-Peso2   PIC 9.
       01  WSS-Peso3   PIC 9.
       01  WSS-MA      PIC 9(3)V9(2).
       01  WSS-MP      PIC 9(3)V9(2).
      ***********************
      *****Legenda***********

      *Opm - Opcao Me
      *MA - Media Aritmetica
      *MP - Media Ponderada

       PROCEDURE DIVISION.
       Inicio.
           PERFORM UNTIL WSS-OpM = 3
                DISPLAY "Menu de Opcoes:"
                DISPLAY "1. Media aritmetica"
                DISPLAY "2. Media ponderada"
                DISPLAY "3. Sair"
                DISPLAY "Digite a opcao desejada:"

                ACCEPT WSS-OpM

                EVALUATE WSS-OpM
                    WHEN 1
                        PERFORM CalcularWSS-MA
                    WHEN 2
                        PERFORM CalcularWSS-MP
                    WHEN 3
                        DISPLAY "Saindo do programa."
                    WHEN OTHER
                        DISPLAY "Opcao invalida. Digite novamente."
                END-EVALUATE
           END-PERFORM.

           STOP RUN.

       CalcularWSS-MA.
            DISPLAY "Digite as duas notas:"
            ACCEPT WSS-Nota1
            ACCEPT WSS-Nota2

            COMPUTE WSS-MA = (WSS-Nota1 + WSS-Nota2) / 2

            DISPLAY "Media Aritmetica: ", WSS-MA.

       CalcularWSS-MP.
            DISPLAY "Digite as tres notas e seus respectivos pesos:"
            ACCEPT WSS-Nota1
            ACCEPT WSS-Peso1
            ACCEPT WSS-Nota2
            ACCEPT WSS-Peso2
            ACCEPT WSS-Nota3
            ACCEPT WSS-Peso3

            COMPUTE WSS-MP =
            (WSS-Nota1 * WSS-Peso1 + WSS-Nota2 * WSS-Peso2 + WSS-Nota3
                 * WSS-Peso3) /
                (WSS-Peso1 + WSS-Peso2 + WSS-Peso3)

            DISPLAY "Media Ponderada: ", WSS-MP.

           DISPLAY SPACE
           display "Obrigado volte sempre!!! "
           DISPLAY SPACE

           ACCEPT OMITTED.
           EXIT PROGRAM.
           STOP RUN.

