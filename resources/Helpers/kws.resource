*** Settings ***
Library      SeleniumLibrary
Library      FakerLibrary
Resource     ./util.py

*** Variables ***
# Busca
${BASE_URL}                     https://www.pontofrio.com.br/
${BASE_URL_Produto}             https://www.pontofrio.com.br/cama-box-de-casal-biflex-turquia-com-molas-ensacadas-e-pillow-inn-69x138x188cm-branco-grafite/p/1001309782
${INPUT_BUSCA}                  xpath=//input[@id='search-form-input']
${TXT_ITEM_BUSCA}               smartphones
${BTN_LUPA}                     css=.search__icon
#Carrinho
${BTN_PRODUTO}                  xpath=//span[contains(text(),'Smartphone Motorola Moto G84 5G Grafite 256GB, 8GB')]




#Compra
${BNT_COMPRAR}                  css:#buy-button
${BTN_CARRINHO}                 css:a[title='Produtos inseridos no meu carrinho: 0'] svg


#Pagamento
${LBL_MSG_SUCESSO_COMPRA}               xpath=//p[@class='alert alert-success']
${LBL_MSG_SUCESSO_CARRINHO}             xpath=//h1[@class='styled__Container-e8qtbd-0 kwYBvp sc-jlGgGc gmqVni']
