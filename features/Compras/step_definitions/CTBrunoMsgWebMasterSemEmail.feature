#language: pt

Funcionalidade: Enviar mensagem

Cenário: Enviar mensagem para o webmaster sem informar email
   Dado que eu esteja na home
    E clicar no botão contac us
    E na próxima página preencher o campo message
    E modificar o campo subject reader para webmaster
    E modificar o campo order experience para o valor 5
    E clicar em send
    Então a pagina ira recarregar e mostrara a mensagem 'There is 1 error - 1.Invalid email address.'

