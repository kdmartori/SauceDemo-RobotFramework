*** Variables ***
${SITE}                         http://saucedemo.com
${BROWSER}                      Chrome
${LOGIN}                        id=user-name
${SENHA}                        id=password
${BOTAOLOGIN}                   id=login-button
${DETALHES_SAUCELABSPACK}       css=#item_4_title_link > div
${ADICIONAR_SAUCELABSPACK}      id=add-to-cart-sauce-labs-backpack
${CARRINHO}                     css=#shopping_cart_container > a
${REMOVER_SAUCELABSPACK}        id=remove-sauce-labs-backpack
${CONTINUESHOPPING}             id=continue-shopping
${ADICIONAR_FLEECEJACKET}       id=add-to-cart-sauce-labs-fleece-jacket
${CHECKOUT}                     id=checkout
${FIRSTNAME}                    id=first-name
${LASTNAME}                     id=last-name
${POSTALCODE}                   id=postal-code
${BOTAOCONTINUE}                id=continue
${VALORTOTAL}                   css=#checkout_summary_container > div > div.summary_info > div.summary_total_label
${BOTAOFINISH}                  id=finish
${THANKYOU}                     css=#checkout_complete_container > h2

*** Keywords ***
Fazer login no site com o usuário "standard_user"
  Open Browser      ${SITE}     ${BROWSER}
  Maximize Browser Window
  Input Text        ${LOGIN}        standard_user
  Input Text        ${SENHA}        secret_sauce
  Clicar em Elemento     ${BOTAOLOGIN}

Acessar os detalhes do produto "Sauce Labs Backpack"
  Clicar em Elemento     ${DETALHES_SAUCELABSPACK}

Adicionar o produto "Sauce Labs Backpack" ao carrinho de compras
  Clicar em Elemento     ${ADICIONAR_SAUCELABSPACK}

Abrir o carrinho de compras
  Clicar em Elemento     ${CARRINHO}

Remover o produto "Sauce Labs Backpack" do carrinho de compras
  Clicar em Elemento     ${REMOVER_SAUCELABSPACK}

Clicar em "Continue Shopping" para voltar à Página Inicial
  Clicar em Elemento      ${CONTINUESHOPPING}

Adicionar o produto "Sauce Labs Fleece Jacket" ao carrinho de compras
  Clicar em Elemento      ${ADICIONAR_FLEECEJACKET}

Clicar em "Checkout" para finalizar a compra
  Clicar em Elemento     ${CHECKOUT}

Preencher os dados: PRIMEIRO NOME (FIRST NAME), SOBRENOME (LAST NAME) E CEP (POSTAL CODE)
  Input Text        ${FIRSTNAME}      Fernanda
  Input Text        ${LASTNAME}       Rodrigues
  Input Text        ${POSTALCODE}     58807-633

Clicar no botão "CONTINUE"
  Clicar em Elemento   ${BOTAOCONTINUE}

Validar se o valor total cobrado é de "$53.99"
  Element Should Contain    ${VALORTOTAL}   $53.99

Clicar no botão "FINISH"
  Clicar em Elemento    ${BOTAOFINISH}

Validar que a compra foi realizada e a mensagem "THANK YOU FOR YOUR ORDER" está sendo exibida
  Element Should Contain    ${THANKYOU}     THANK YOU FOR YOUR ORDER

Clicar em Elemento
  [Arguments]                       ${elemento}
  Scroll Element Into View          ${elemento}
  Wait Until Element is Visible     ${elemento}
  Click Element                     ${elemento}