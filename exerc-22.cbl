       IDENTIFICATION DIVISION.
       PROGRAM-ID. EXERC-22.
       AUTHOR. JOAO_PAULO.

       DATA DIVISION.
       WORKING-STORAGE SECTION.
       01  VlrCar       PIC 9(5) Value 0.
       01  PrecoFinal   PIC 9(5) Value 0.
       01  QtdParcelas  PIC 99.
       01  ValorParcela PIC ZZZZ9.99.
       01  PercAcre     PIC 99.
       01  ContParcel   PIC 99.

       PROCEDURE DIVISION.
           DISPLAY "DESCUBRA QUAL O VALOR DO SEU FINANCIAMENTO!" AT 0120
            DISPLAY " "
            DISPLAY SPACE
            DISPLAY "Informe o valor do carro: "
            ACCEPT VlrCar AT 0326
            DISPLAY " "

            DISPLAY SPACE
            DISPLAY "Tabela de Financiamento:" AT 0526
           DISPLAY "Parcelas    Preco Final    Valor da Parcela" AT 0701
            DISPLAY SPACE
            DISPLAY "------------------------------------------"

           PERFORM VARYING ContParcel FROM 6 BY 6 UNTIL ContParcel > 60
            COMPUTE PercAcre = (ContParcel - 6) * 3
            COMPUTE PrecoFinal = VlrCar - (VlrCar * 20 / 100)
                    + (VlrCar * PercAcre / 100)
            COMPUTE ValorParcela = PrecoFinal / ContParcel

            DISPLAY ContParcel "     " PrecoFinal "     " ValorParcela
           END-PERFORM.

           DISPLAY SPACE
            display "Obrigado volte sempre!!! "
           DISPLAY SPACE

           ACCEPT OMITTED.
           EXIT PROGRAM.
           STOP RUN.