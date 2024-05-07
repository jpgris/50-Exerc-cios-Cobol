       IDENTIFICATION DIVISION.
       PROGRAM-ID. Exerc-11.
       AUTHOR. JOAO_PAULO.

       DATA DIVISION.
       WORKING-STORAGE SECTION.
       01 LimiteInteiro       PIC 9(5).
       01 Contador            PIC 9(5) VALUE 1.

       PROCEDURE DIVISION.
           INICIO.
           DISPLAY "Digite um numero inteiro: ".
           ACCEPT LimiteInteiro.

           DISPLAY "Numeros pares de 1 ate " LimiteInteiro ": ".
           PERFORM VARYING Contador FROM 2 BY 2 UNTIL
                           Contador > LimiteInteiro
               DISPLAY Contador
           END-PERFORM.

           DISPLAY "Numeros impares de 1 ate " LimiteInteiro ": ".
           PERFORM VARYING Contador FROM 1 BY 2 UNTIL
                           Contador > LimiteInteiro
               DISPLAY Contador
           END-PERFORM.

           GO TO INICIO.

           DISPLAY SPACE
           display "Obrigado volte sempre!!! "
           DISPLAY SPACE

           ACCEPT OMITTED.
           EXIT PROGRAM.
           STOP RUN.