       IDENTIFICATION DIVISION.
       PROGRAM-ID. Exerc-6.
       AUTHOR. JOAO_PAULO.

       DATA DIVISION.
       WORKING-STORAGE SECTION.
       77  FaturamentoLojaA   PIC 9(5).
       77  FaturamentoLojaB   PIC 9(5) VALUE 54000.
       77  Cliente            PIC 9(2).
       77  TotalFaturamento   PIC 9(5) VALUE 0.

       PROCEDURE DIVISION.
       INICIO.
           PERFORM VARYING Cliente FROM 1 BY 1 UNTIL Cliente > 5
               DISPLAY "Digite o faturamento do Cliente " Cliente ": "
               ACCEPT FaturamentoLojaA
               ADD FaturamentoLojaA TO TotalFaturamento
           END-PERFORM.

           IF TotalFaturamento > FaturamentoLojaB
               DISPLAY "O faturamento da loja foi superior a loja B."
           ELSE
            DISPLAY "O faturamento da loja nao foi superior a loja B."
           END-IF.
           GO TO INICIO.



           ACCEPT OMITTED.
           EXIT PROGRAM.
           STOP RUN.
      *wrun32 exerc-6