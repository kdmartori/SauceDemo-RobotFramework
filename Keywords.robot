*** Settings ***
Library                         SeleniumLibrary
Resource                        ./Variables.robot

*** Keywords ***
Fazer login no site com o usuário "standard_user"
  Open Browser      ${SITE}     ${BROWSER}
  Maximize Browser Window
  Input Text        ${LOGIN}        standard_user
  Input Text        ${SENHA}        secret_sauce
  Click Element     ${BOTAOLOGIN}

Acessar os detalhes do produto "Sauce Labs Backpack"
  Click Element     ${DETALHES_SAUCELABSPACK}

Adicionar o produto "Sauce Labs Backpack" ao carrinho de compras
  Click Element     ${ADICIONAR_SAUCELABSPACK}

Abrir o carrinho de compras
  Click Element     ${CARRINHO}

Remover o produto "Sauce Labs Backpack" do carrinho de compras
  Click Element     ${REMOVER_SAUCELABSPACK}

Clicar em "Continue Shopping" para voltar à Página Inicial
  Click Element     ${CONTINUESHOPPING}

Adicionar o produto "Sauce Labs Fleece Jacket" ao carrinho de compras
  Click Element     ${ADICIONAR_FLEECEJACKET}

Clicar em "Checkout" para finalizar a compra
  Click Element     ${CHECKOUT}

Preencher os dados: PRIMEIRO NOME (FIRST NAME), SOBRENOME (LAST NAME) E CEP (POSTAL CODE)
  Input Text        ${FIRSTNAME}      Fernanda
  Input Text        ${LASTNAME}       Cademartori
  Input Text        ${POSTALCODE}     58807-633

Clicar no botão "CONTINUE"
  Click Element     ${BOTAOCONTINUE}

Validar se o valor total cobrado é de "$53.99"
  Element Should Contain    ${VALORTOTAL}   $53.99

Clicar no botão "FINISH"
  Click Element             ${BOTAOFINISH}

Validar que a compra foi realizada e a mensagem "THANK YOU FOR YOUR ORDER" está sendo exibida
  Element Should Contain    ${THANKYOU}     THANK YOU FOR YOUR ORDER