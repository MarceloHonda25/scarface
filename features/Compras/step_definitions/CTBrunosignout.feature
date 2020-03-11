#language: pt
@signout

Funcionalidade: Realizar Signout

Cenário: Realizar com sucesso o sign da página

    Dado que eu esteja logado na home
    Quando clicar em signout
    Então o usuário retornará a home deslogado