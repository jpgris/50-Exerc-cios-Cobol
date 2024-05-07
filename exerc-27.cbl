       IDENTIFICATION DIVISION.
       PROGRAM-ID. EXERC-27.
       AUTHOR. JOAO_PAULO.

       DATA DIVISION.
       WORKING-STORAGE SECTION.
       01 Idade              PIC 99.
       01 Opiniao            PIC 9.
       01 SomaIdadesOtimo    PIC 99 VALUE ZEROS.
       01 QtdPessoasOtimo    PIC 99 VALUE ZEROS.
       01 QtdPessoasRegular  PIC 99 VALUE ZEROS.
       01 QtdPessoasBom      PIC 99 VALUE ZEROS.
       01 Contador           PIC 99 VALUE 0.
       01 MediaIdadesOtimo   PIC 99 VALUE 0.
       01 PercentagemBom     PIC 99 VALUE 0.

       PROCEDURE DIVISION.
           PERFORM 3 TIMES
            ADD 1 TO Contador
            DISPLAY "Informe a idade do espectador " Contador
            ACCEPT Idade
            DISPLAY "Informe a opiniao do espectador"
                    "(1 - Regular, 2 - Bom, 3 - Ótimo) " Contador
            ACCEPT Opiniao

            IF Opiniao = 3
                ADD Idade TO SomaIdadesOtimo
                ADD 1 TO QtdPessoasOtimo
            ELSE IF Opiniao = 1
                ADD 1 TO QtdPessoasRegular
            ELSE IF Opiniao = 2
                ADD 1 TO QtdPessoasBom
            END-IF
            END-IF
            END-IF
           END-PERFORM.
            IF QtdPessoasOtimo > 0
                COMPUTE MediaIdadesOtimo =
                        SomaIdadesOtimo / QtdPessoasOtimo
            END-IF

           COMPUTE PercentagemBom = (QtdPessoasBom / 15.0) * 100
           DISPLAY "Media de idade das pessoas"
                   "que responderam otimo:"MediaIdadesOtimo
           DISPLAY "Quantidade de pessoas que responderam regular: "
                    QtdPessoasRegular
           DISPLAY "Percentagem de pessoas que responderam bom: "
                    PercentagemBom


           DISPLAY SPACE
            display "Obrigado volte sempre!!! "
           DISPLAY SPACE

           ACCEPT OMITTED.
           EXIT PROGRAM.
           STOP RUN.