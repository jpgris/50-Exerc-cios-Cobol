       IDENTIFICATION DIVISION.
       PROGRAM-ID. exerc-42.

       DATA DIVISION.
       WORKING-STORAGE SECTION.
       01  Num1               PIC 9(5)V99.
       01  Num2               PIC 9(5)V99.
       01  Resultado          PIC 9(5)V99.
       01  Resultado-mask     PIC zzz9.
       01  Operacao           PIC 9.
       01  Continuar          PIC X VALUE 'S'.

       PROCEDURE DIVISION.
       Inicio.
           PERFORM UNTIL Continuar = 'N'
                DISPLAY "Escolha a operacao desejada:"
                DISPLAY "1. Adicao"
                DISPLAY "2. Subtracao"
                DISPLAY "3. Multiplicacao"
                DISPLAY "4. Divisao"
                DISPLAY "5. Sair"
                ACCEPT Operacao

                EVALUATE Operacao
                    WHEN 1
                        PERFORM Adicao
                    WHEN 2
                        PERFORM Subtracao
                    WHEN 3
                        PERFORM Multiplicacao
                    WHEN 4
                        PERFORM Divisao
                    WHEN 5
                        DISPLAY "Saindo do programa."
                        MOVE 'N' TO Continuar
                    WHEN OTHER
                        DISPLAY "Opcao invalida. Tente novamente."
                END-EVALUATE
            END-PERFORM.

           DISPLAY SPACE
           display "Obrigado volte sempre!!! "
           DISPLAY SPACE

           ACCEPT OMITTED.
           EXIT PROGRAM.
           STOP RUN.

       Adicao.
           DISPLAY "Digite os dois numeros para adicao:"
            ACCEPT Num1
            ACCEPT Num2
           COMPUTE Resultado = Num1 + Num2
            move Resultado to Resultado-mask
            DISPLAY "Resultado da Adicao: ", Resultado-mask.
           PERFORM Pausa.

       Subtracao.
           DISPLAY "Digite os dois numeros para subtracao:"
            ACCEPT Num1
            ACCEPT Num2
           COMPUTE Resultado = Num1 - Num2
           move Resultado to Resultado-mask
           DISPLAY "Resultado da Subtracao: ", Resultado-mask.
           PERFORM Pausa.

       Multiplicacao.
           DISPLAY "Digite os dois numeros para multiplicacao:"
            ACCEPT Num1
            ACCEPT Num2
           COMPUTE Resultado = Num1 * Num2
           move Resultado to Resultado-mask
           DISPLAY "Resultado da Multiplicacao: ", Resultado-mask.
           PERFORM Pausa.

       Divisao.
           DISPLAY "Digite os dois numeros para divisao:"
            ACCEPT Num1
            ACCEPT Num2
           IF Num2 NOT EQUAL 0
                COMPUTE Resultado = Num1 / Num2
                move Resultado to Resultado-mask
                DISPLAY "Resultado da Divisao: ", Resultado-mask
           ELSE
                DISPLAY "Erro: Divisao por zero."
           END-IF.
           PERFORM Pausa.

        Pausa.
            DISPLAY "Pressione Enter para continuar."
            ACCEPT Operacao.