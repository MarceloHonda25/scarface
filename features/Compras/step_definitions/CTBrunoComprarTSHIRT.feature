#language: pt
@comprastshirt

Funcionalidade: Compras

Cenário: Comprar uma T-SHIRTS via Bank Wire
  Dado que eu esteja na home 
  Quando clicar no campo T-SHIRTS 
    E repousar o cursor do mouse no item em exibição Faded Short Sleeve T-shirts
    E clicar em proceed to checkout1
    E clicar em proceed to checkout2
    E clicar em proceed to checkout3
    E clicar em proceed to checkout4
    E clicar em proceed to checkout5
    E clicar na opção pay by bank Wire
    E clicar no botão confirm my order
  Então a compra será realizada com sucesso
