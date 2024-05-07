       IDENTIFICATION DIVISION.
       PROGRAM-ID. exe-16-1.
       AUTHOR. JOAO_PAULO.

       DATA DIVISION.
       WORKING-STORAGE SECTION.
       77  Idade                        PIC 9(2).
       77  Altura                       PIC 9(2)V99.
       77  Peso                         PIC 9(2)V99.
       77  QtdPessoasAcima50anos        PIC 9(2).
       77  MediaAlturaEntre10e20Anos    PIC 9(2).
       77  PorcentagemPesoInferior40KG  PIC 9(2).
       77  Contador                     PIC 9(3).

       PROCEDURE DIVISION.
       INICIO.
           PERFORM 5 VEZES
            DISPLAY "Informe a Idade: " Contador
            accept Idade
            DISPLAY "Informe a Altura: " Contador
            accept Altura
            Display "Informe o Peso: " Contador
            accept peso

           If Idade > 50
             ADD 1 TO QtdPessoasAcima50anos
           END-IF

           END-PERFORM.
           go to INICIO.

