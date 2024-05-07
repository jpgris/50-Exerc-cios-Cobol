       IDENTIFICATION DIVISION.
       PROGRAM-ID. exerc-43.

       DATA DIVISION.
       WORKING-STORAGE SECTION.
       01  OpcaoMenu           PIC 9.
       01  SalarioAtual        PIC 9(7)V99.
       01  SalarioAtual-mask   PIC zzz9.99.
       01  NovoSalario-mask    PIC zzz9.99.
       01  NovoSalario         PIC 9(7)V99.
       01  Continuar           PIC X VALUE 'S'.

       PROCEDURE DIVISION.
       Inicio.
           PERFORM UNTIL Continuar = 'N'
                DISPLAY "Menu de Opcoes:"
                DISPLAY "1. Novo salario"
                DISPLAY "2. Ferias"
                DISPLAY "3. Decimo terceiro"
                DISPLAY "4. Sair"
                DISPLAY "Digite a opcao desejada:"

                ACCEPT OpcaoMenu

                EVALUATE OpcaoMenu
                    WHEN 1
                        PERFORM NovoSalario
                    WHEN 2
                        PERFORM Ferias
                    WHEN 3
                        PERFORM DecimoTerceiro
                    WHEN 4
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

       NovoSalario.
            DISPLAY "Digite o salario atual:"
            ACCEPT SalarioAtual

            IF SalarioAtual <= 350
                COMPUTE NovoSalario = SalarioAtual * 1.15
            ELSE IF SalarioAtual <= 600
                COMPUTE NovoSalario = SalarioAtual * 1.1
            ELSE
                COMPUTE NovoSalario = SalarioAtual * 1.05
            END-IF
            MOVE NovoSalario TO NovoSalario-mask
            DISPLAY "Novo Salario: ", NovoSalario-mask.

       Ferias.
            DISPLAY "Digite o salario atual:"
            ACCEPT SalarioAtual
            COMPUTE NovoSalario = SalarioAtual * 1.1
            move NovoSalario to NovoSalario-mask
            DISPLAY "Valor das Ferias: ", NovoSalario-mask.

       DecimoTerceiro.
            DISPLAY "Digite o salario atual:"
            ACCEPT SalarioAtual
            COMPUTE NovoSalario = SalarioAtual / 12
            move NovoSalario to NovoSalario-mask
            DISPLAY "Valor do Decimo Terceiro: ", NovoSalario-mask.