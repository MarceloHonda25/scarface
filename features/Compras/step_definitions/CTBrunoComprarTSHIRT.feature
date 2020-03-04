#language: pt

Funcionalidade: Realizar compra

Cenário: Comprar uma T-SHIRTS via Bank Wire
  Dado que eu esteja na home 
  Quando clicar no campo T-SHIRTS 
    E repousar o cursor do mouse no item em exibição Faded Short Sleeve T-shirts
    E clicar em add to cart
    E Realizar cadastro no site
    E clicar na opção pay by bank Wire
    E clicar no botão confirm my order
  Então a compra será realizada com sucesso
