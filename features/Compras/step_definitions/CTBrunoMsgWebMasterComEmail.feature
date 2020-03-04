#language: pt

Funcionalidade: Enviar mensagem para webmaster

Cenário: Enviar mensagem para o webmaster da página

    Dado que eu esteja na home
    E clicar no botão contac us
    E na próxima página preencher o campo message com a mensagem requerida
    E modificar o campo subject reading para a opção webmaster
    E preencher o campo de email com um email válido
    E clicar no botão send
    Então a mensagem será enviada com sucesso