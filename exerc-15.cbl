       IDENTIFICATION DIVISION.
       PROGRAM-ID. Exerc-15.
       AUTHOR. JOAO_PAULO.

       DATA DIVISION.
       WORKING-STORAGE SECTION.
       01  Compras_a_Vista       PIC 9(4) VALUE 0.
       01  Compras_a_Prazo      PIC 9(4) VALUE 0.
       01  Valor_da_compra       PIC 9(4) VALUE 0.
       01  Tipo_de_Venda         PIC X(30).
        88 Tipo_Venda_V       value "v", "V".
        88 Tipo_Venda_P       value "P", "p".
       01  Valor_total_Compras   PIC 9(4) VALUE 0.
       01  V                     PIC X(1).
       01  P                     PIC X(1).

       PROCEDURE DIVISION.
       INICIO.
           PERFORM 2 TIMES
           ADD 1 TO Valor_da_compra
           DISPLAY "Informe o valor da compra: "
           accept Valor_da_compra
           DISPLAY "Para venda a Prazo P ou a vista V: "
           accept Tipo_de_Venda


           IF Tipo_Venda_V
            add Valor_da_compra TO Compras_a_Vista
           ELSE
            IF Tipo_Venda_P
            add Valor_da_compra TO Compras_a_Prazo
            ELSE
             IF Valor_da_compra <> 'V' or 'v' or 'P' or 'p'
              DISPLAY " Codigo Errado!!!!"
             END-IF
            END-IF
           END-IF

           COMPUTE Valor_total_Compras = Compras_a_Prazo +
                    Compras_a_Vista

           END-PERFORM.
           DISPLAY "compras a vista: " Compras_a_Vista
           DISPLAY "compras a prazo: " Compras_a_Prazo
           DISPLAY "Total em compras: " Valor_total_Compras

           DISPLAY SPACE
           display "Obrigado volte sempre!!! "
           DISPLAY SPACE

           GO TO INICIO.
           EXIT PROGRAM.
           STOP RUN.

