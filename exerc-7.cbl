       IDENTIFICATION DIVISION.
       PROGRAM-ID. Exerc-7.
       AUTHOR. JOAO_PAULO.


       WORKING-STORAGE SECTION.
       01 valor-compra        PIC 9(7)V99 VALUE 0.
       01 desconto            PIC 9(3)V99 VALUE 0.
       01 desconto-acumulado  PIC 9(3)V99 VALUE 0.
       01 valor-final         PIC 9(7)V99 VALUE 0.

       PROCEDURE DIVISION.
           INICIO.
           DISPLAY "Informe o valor da compra: ".
           ACCEPT valor-compra.

           IF valor-compra > 500
            COMPUTE desconto-acumulado = (valor-compra - 500) / 100 * 1
           IF desconto-acumulado > 25
            MOVE 25 TO desconto-acumulado
           END-IF

           COMPUTE desconto = valor-compra / 100 * desconto-acumulado
           COMPUTE valor-final = valor-compra - desconto

           DISPLAY "Desconto acumulado: " desconto-acumulado
           DISPLAY "Desconto aplicado:  " desconto
           DISPLAY "       Valor final: " valor-final
           ELSE
            DISPLAY "Sem desconto para compras abaixo de R$500."
           END-IF.
           GO TO INICIO.

           ACCEPT OMITTED.
           EXIT PROGRAM.
           STOP RUN.
      *wrun32 exerc-7