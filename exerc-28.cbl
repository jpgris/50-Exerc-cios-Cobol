       IDENTIFICATION DIVISION.
       PROGRAM-ID. EXERC-28.
       AUTHOR. JOAO_PAULO.

       DATA DIVISION.
       WORKING-STORAGE SECTION.
       01  Sexo                    PIC X.
       01  Resposta                PIC X.
       01  QtdPessoasSim           PIC 99 VALUE ZEROS.
       01  QtdPessoasNao           PIC 99 VALUE ZEROS.
       01  QtdMulheresSim          PIC 99 VALUE ZEROS.
       01  QtdHomens               PIC 99 VALUE ZEROS.
       01  QtdHomensNao            PIC 99 VALUE ZEROS.
       01  PercentagemHomensNao    PIC 999V99 VALUE ZEROS.
       01  Contador                PIC 99 VALUE 1.

       PROCEDURE DIVISION.
           PERFORM 5 TIMES
            DISPLAY "Informe o sexo do entrevistado (M/F): "
            ACCEPT Sexo
            DISPLAY "Informe a resposta do entrevistado (S/N): "
            ACCEPT Resposta

            IF Resposta = "S" OR "s"
                ADD 1 TO QtdPessoasSim
                IF Sexo = "F" OR "f"
                    ADD 1 TO QtdMulheresSim
                END-IF

            ELSE IF Resposta = "N" OR "n"
                ADD 1 TO QtdPessoasNao
                IF Sexo = "M" OR "m"
                    ADD 1 TO QtdHomensNao
                END-IF
            END-IF

            IF Sexo = "M" OR "m"
                ADD 1 TO QtdHomens
            END-IF

            ADD 1 TO Contador

            IF QtdHomens > 0
                COMPUTE PercentagemHomensNao =
                         (QtdHomensNao / QtdHomens) * 100
            END-IF
            END-IF
           END-PERFORM.

            DISPLAY "Numero de pessoas que respondeu sim: "
                     QtdPessoasSim
            DISPLAY "Numero de pessoas que respondeu nao: "
                     QtdPessoasNao
            DISPLAY "Numero de mulheres que respondeu sim: "
                     QtdMulheresSim
            DISPLAY "Percentagem de homens que respondeu nao: "
                     PercentagemHomensNao

           DISPLAY SPACE
           display "Obrigado volte sempre!!! "
           DISPLAY SPACE

           ACCEPT OMITTED.
           EXIT PROGRAM.
           STOP RUN.