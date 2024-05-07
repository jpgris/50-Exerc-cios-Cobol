       IDENTIFICATION DIVISION.
       PROGRAM-ID. EXERC-21.
       AUTHOR. JOAO_PAULO.

       DATA DIVISION.
       WORKING-STORAGE SECTION.
       01  Idade               PIC 99.
       01  Sexo                PIC X.
       01  SomaIdadeGrupo      PIC 99 VALUE ZEROS.
       01  QtdPessoasGrupo     PIC 99 VALUE ZEROS.
       01  SomaIdadeMulheres   PIC 99 VALUE ZEROS.
       01  QtdMulheres         PIC 99 VALUE ZEROS.
       01  SomaIdadeHomens     PIC 99 VALUE ZEROS.
       01  QtdHomens           PIC 99 VALUE ZEROS.
       01  Contador            PIC 99 VALUE 1.
       01  MediaIdadeGrupo     PIC 99 VALUE ZEROS.
       01  MediaIdadeMulheres  PIC 99 VALUE ZEROS.
       01  MediaIdadeHomens    PIC 99 VALUE ZEROS.

       PROCEDURE DIVISION.
           PERFORM 7 TIMES
            DISPLAY "Informe a idade da pessoa " Contador
             ACCEPT Idade
            DISPLAY "Informe o sexo da pessoa (M/F) " Contador
             ACCEPT Sexo

            ADD Idade TO SomaIdadeGrupo
            ADD 1 TO QtdPessoasGrupo

            IF Sexo = "F" OR "f"
                ADD Idade TO SomaIdadeMulheres
                ADD 1 TO QtdMulheres
            ELSE
                ADD Idade TO SomaIdadeHomens
                ADD 1 TO QtdHomens
            END-IF

            ADD 1 TO Contador
           END-PERFORM

            IF QtdMulheres > 0
            COMPUTE MediaIdadeMulheres = SomaIdadeMulheres / QtdMulheres
            END-IF

            IF QtdHomens > 0
             COMPUTE MediaIdadeHomens = SomaIdadeHomens / QtdHomens
            END-IF

            IF QtdPessoasGrupo > 0
             COMPUTE MediaIdadeGrupo = SomaIdadeGrupo / QtdPessoasGrupo
            END-IF

           DISPLAY "Idade media do grupo: " MediaIdadeGrupo
           DISPLAY "Idade media das mulheres: " MediaIdadeMulheres
           DISPLAY "Idade media dos homens: " MediaIdadeHomens

           DISPLAY SPACE
            display "Obrigado volte sempre!!! "
           DISPLAY SPACE

           ACCEPT OMITTED.
           EXIT PROGRAM.
           STOP RUN.