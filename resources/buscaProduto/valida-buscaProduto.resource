*** Settings ***

Library      SeleniumLibrary
Resource     ../Helpers/kws.resource       


*** Keywords ***
Dado que esteja no site do ponto frio
    Open Browser            ${BASE_URL}           chrome    options=add_argument("--disable-web-security");add_argument("--incognito");add_argument("--start-maximized");add_experimental_option("excludeSwitches", ["enable-logging"])


Dado que esteja no site do ponto frio no detalhe do produto
    Open Browser            ${BASE_URL_Produto}   chrome   options=add_argument("--disable-web-security");add_argument("--incognito");add_argument("--start-maximized");add_experimental_option("excludeSwitches", ["enable-logging"])

Quando clicar na caixa de busca
    Click Element     ${INPUT_BUSCA}
   
E digitar smartphones
    Input Text        ${INPUT_BUSCA}            ${TXT_ITEM_BUSCA}

E clicar em buscar
    Click Element     ${BTN_LUPA}
    Fechar o sistema
    
Fechar o sistema
    Sleep    5
    Close Browser