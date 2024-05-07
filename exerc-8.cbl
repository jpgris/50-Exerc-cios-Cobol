       IDENTIFICATION DIVISION.
       PROGRAM-ID. Exerc-8.
       AUTHOR. JOAO_PAULO.

       DATA DIVISION.
       WORKING-STORAGE SECTION.
       77  PrecoIngresso        PIC 9(3)V99 VALUE 5.00.
       77  NumeroIngressos      PIC 9(3)    VALUE 120.
       77  Despesas             PIC 9(5)V99 VALUE 200.00.
       77  AumentoVendas        PIC 9(2)    VALUE 26.
       77  ReducaoPreco         PIC 9(3)V99 VALUE 0.50.
       77  ReceitaOriginal      PIC 9(5)V99.
       77  ReceitaModificada    PIC 9(5)V99.

       PROCEDURE DIVISION.
           COMPUTE ReceitaOriginal = PrecoIngresso * NumeroIngressos -
                   Despesas
           DISPLAY "Receita original: R$ " ReceitaOriginal.

           COMPUTE NumeroIngressos = NumeroIngressos + AumentoVendas
           COMPUTE PrecoIngresso = PrecoIngresso - ReducaoPreco
           COMPUTE ReceitaModificada = PrecoIngresso * NumeroIngressos -
                   Despesas
           DISPLAY "Receita modificada: R$ " ReceitaModificada.

           ACCEPT OMITTED.
           EXIT PROGRAM.
           STOP RUN.
      *wrun32 exerc-8