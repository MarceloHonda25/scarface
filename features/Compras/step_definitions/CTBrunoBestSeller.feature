#language: pt
@bestseller

Funcionalidade: Testar botões de acesso

Cenário: Testar botão best seller
    Dado que eu esteja na home
    Quando Clicar no botão best seller localizado abaixo do carrocel
    Então a página exibirá os produtos que são best sellers 
