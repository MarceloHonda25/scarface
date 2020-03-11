#language:pt
@login
Funcionalidade: Login
  Eu como usuario do site
  Pretendo realizar o login utilizando meu usuario e senha
  Para visualizar a area logada

  Contexto: Estar na tela de login
    Dado que eu estou na tela de login

    @logininvalido
    Cenario: Acesso invalido
      Quando eu digitar meu usuario válido e senha errados e clicar em login
      Entao receberei uma mensagem de login invalido

    @logininvalido
    Cenario: Usuario invalido
      Quando eu digitar um usuario invalido e clicar em login
      Entao receberei uma mensagem de usuario invalido

    @logininvalido
    Cenario: Usuario sem senha
      Quando eu digitar um usuario sem senha e clicar em login
      Entao Uma mensagem de senha obrigatória será exibida

    @logininvalido
    Cenario: Somente senha
      Quando eu digitar somente a senha e clicar em login
      Entao receberei mensagem que usuário deverá ser informado