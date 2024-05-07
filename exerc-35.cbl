       IDENTIFICATION DIVISION.
       PROGRAM-ID. exerc-35.

       DATA DIVISION.
       WORKING-STORAGE SECTION.
       01  CodigoProduto        PIC 9(5).
       01  PrecoCusto           PIC 9(5)V99.
       01  NovoPrecoComAumento  PIC 9(5)V99.
       01  NovoPrecoSemAumento  PIC 9(5)V99.
       01  SomaPrecosComAumento PIC 9(8)V99 VALUE 0.
       01  SomaPrecosSemAumento PIC 9(8)V99 VALUE 0.
       01  ContadorProdutos     PIC 999     VALUE 0.
       01  MediaComAumento      PIC 9(5)V99.
       01  MediaSemAumento      PIC 9(5)V99.
       01  NovoPrecoComAumento-masc  PIC zzzz9.99.
       01  NovoPrecoSemAumento-masc  PIC zzzz9.99.
       01  MediaComAumento-MASK      PIC zzzz9.99.
       01  MediaSemAumento-MASK      PIC zzzz9.99.

       PROCEDURE DIVISION.
       INICIO.
           DISPLAY "Digite o codigo do produto e o preco de custo"
                   "(para encerrar, digite codigo negativo):".

           PERFORM UNTIL CodigoProduto > 5
                ADD 1 TO CodigoProduto
                ACCEPT CodigoProduto
                IF CodigoProduto >= 0
                    ACCEPT PrecoCusto

                    COMPUTE NovoPrecoComAumento = PrecoCusto * 1.20
                    COMPUTE NovoPrecoSemAumento = PrecoCusto

                    ADD NovoPrecoComAumento TO SomaPrecosComAumento
                    ADD NovoPrecoSemAumento TO SomaPrecosSemAumento
                    ADD 1 TO ContadorProdutos

                    MOVE NovoPrecoComAumento to NovoPrecoComAumento-masc
                    DISPLAY "Codigo do Produto: ", CodigoProduto
                    DISPLAY "Novo Preco com Aumento: R$",
                             NovoPrecoComAumento-masc
                    MOVE NovoPrecoSemAumento to NovoPrecoSemAumento-masc
                    DISPLAY "Novo Preco sem Aumento: R$",
                    NovoPrecoSemAumento-masc
                END-IF

                IF ContadorProdutos > 0
                    COMPUTE MediaComAumento =
                            SomaPrecosComAumento / ContadorProdutos
                    COMPUTE MediaSemAumento =
                            SomaPrecosSemAumento / ContadorProdutos
                    MOVE MediaComAumento TO MediaComAumento-MASK
                    DISPLAY "Media dos Precos com Aumento: R$ ",
                              MediaComAumento-MASK
                    MOVE MediaSemAumento-MASK TO MediaSemAumento-MASK
                    DISPLAY "Media dos Precos sem Aumento: R$ ",
                              MediaSemAumento-MASK
                ELSE
                    DISPLAY "Nenhum dado foi inserido."
            END-IF
           END-PERFORM.

           GO TO INICIO.

           DISPLAY SPACE
            display "Obrigado volte sempre!!! "
           DISPLAY SPACE

           ACCEPT OMITTED.
           EXIT PROGRAM.
           STOP RUN.