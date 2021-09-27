*** Settings ***
Library                         SeleniumLibrary

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
