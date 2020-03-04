#language: pt

Funcionalidade: Realizar LogOut

Cenário: Realizar com sucesso o logout da página

    Dado que eu esteja logado
    E acessando a home
    E clicar na opção signout no header da home
    Então o usuário retornará a home deslogado