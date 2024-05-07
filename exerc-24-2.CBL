       IDENTIFICATION DIVISION.
       PROGRAM-ID. TESTE.
       SPECIAL-NAMES.
       WORKING-STORAGE SECTION.
       77  conjunto         pic 9(03).
       77  a                pic 9(03) values 1.
       77  i                pic 9(03) values 0.
       77  teste            pic 9(03) values 0.
       77  resultado        pic 9(03).
       77  resto            pic 9(03).
       77  mask             pic zz9.


       PROCEDURE DIVISION.

       PROCESSO.

           display "Insira um intervalo de numeros para saber os primos"
           accept conjunto convert.

           perform until a > conjunto
              perform until teste >= a or i > 2

                 add 1 to teste
                 divide a by teste giving resultado remainder resto

                 if resto = 0
                    add 1 to i
                 end-if

           end-perform

           if i <= 2
                 move a to mask
                 display mask
                 move mask to a
           end-if

              add 1 to a

              move 0 to i
              move 0 to teste

           end-perform.

       SAIR.

           accept omitted.
           exit program.
           stop run.