*** Settings ***
Library                         SeleniumLibrary
Test Teardown                   Close Browser
Resource                        ./Keywords.robot

*** Test Cases ***
[Finalizando uma compra com usuário comum]
  Fazer login no site com o usuário "standard_user"
  Acessar os detalhes do produto "Sauce Labs Backpack"
  Adicionar o produto "Sauce Labs Backpack" ao carrinho de compras
  Abrir o carrinho de compras
  Remover o produto "Sauce Labs Backpack" do carrinho de compras
  Clicar em "Continue Shopping" para voltar à Página Inicial
  Adicionar o produto "Sauce Labs Fleece Jacket" ao carrinho de compras
  Abrir o carrinho de compras
  Clicar em "Checkout" para finalizar a compra
  Preencher os dados: PRIMEIRO NOME (FIRST NAME), SOBRENOME (LAST NAME) E CEP (POSTAL CODE)
  Clicar no botão "CONTINUE"
  Validar se o valor total cobrado é de "$53.99"
  Clicar no botão "FINISH"
  Validar que a compra foi realizada e a mensagem "THANK YOU FOR YOUR ORDER" está sendo exibida
