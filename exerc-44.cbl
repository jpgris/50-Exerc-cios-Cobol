       IDENTIFICATION DIVISION.
       PROGRAM-ID. exerc-44.

       DATA DIVISION.
       WORKING-STORAGE SECTION.
       01  WSS-CodigoCliente         PIC 9(3).
       01  WSS-TipoConta             PIC 9(1).
       01  WSS-ValorInvestido        PIC 9(7)V99.
       01  WSS-RendimentoMensal      PIC 9(09)V99.
       01  WSS-RendimentoMensal-mask PIC zzz,zzz,zzz,zz9.99.
       01  WSS-TotalJuros            PIC 9(9)V99 VALUE 0.
       01  WSS-DescontoPoupanca      PIC 9(3)V99 VALUE 1.5.
       01  WSS-DescontoPoupancaPlus  PIC 9(3)V99 VALUE 2.
       01  WSS-DescontoFundosRenda   PIC 9(3)V99 VALUE 4.
       01  WSS-FimLeitura            PIC X VALUE "N".

       PROCEDURE DIVISION.
       Inicio.
           PERFORM UNTIL WSS-FimLeitura = "S"
                DISPLAY "Digite o codigo do "
                        "cliente (<= 0 para encerrar): "
                ACCEPT WSS-CodigoCliente

                IF WSS-CodigoCliente <= 0
                    MOVE "S" TO WSS-FimLeitura
                ELSE
                   PERFORM LerWSS-TipoConta
                END-IF

           END-PERFORM.

           IF WSS-CodigoCliente = 0
                 DISPLAY " Para sair precione ENTER"
                 GO TO fim
           END-IF


           DISPLAY "Total de juros pagos: " WSS-TOTALJUROS.

       Fim.
           ACCEPT OMITTED.
           EXIT PROGRAM.
           STOP RUN.

       LerWSS-TipoConta.
            DISPLAY "Digite o tipo da conta (1-Poupanca, 2-Poupanca"
                     "Plus, 3-Fundos de Renda): "
             ACCEPT WSS-TipoConta

            DISPLAY "Digite o valor investido: "
            ACCEPT WSS-ValorInvestido
            EVALUATE WSS-TipoConta
                WHEN 1
                 COMPUTE WSS-RendimentoMensal =
                 WSS-ValorInvestido * (WSS-DescontoPoupanca / 100)
                WHEN 2
                 COMPUTE WSS-RendimentoMensal =
                 WSS-ValorInvestido * (WSS-DescontoPoupancaPlus / 100)
                WHEN 3
                 COMPUTE WSS-RendimentoMensal =
                 WSS-ValorInvestido * (WSS-DescontoFundosRenda / 100)
                WHEN OTHER
                    DISPLAY "Tipo de conta invalido"
            END-EVALUATE.

           ADD WSS-RendimentoMensal TO WSS-TotalJuros

           MOVE WSS-RendimentoMensal TO WSS-RendimentoMensal-mask
           DISPLAY "Rendimento mensal: " WSS-RendimentoMensal-mask.