*** Settings ***

Library      SeleniumLibrary
Resource     ../Helpers/kws.resource       


*** Keywords ***
Entao visualizo tela de sucesso 
    Page Should Contain            Your order on My Shop is complete.      ${LBL_MSG_SUCESSO_COMPRA} 
    Fechar o sistema     


Quando clicar em comprar
    Wait Until Element Is Visible       ${BNT_COMPRAR}
    Click Element                       ${BNT_COMPRAR}
  
Entao o produto e adicionado no carrinho
    Page Should Contain           Meu carrinho          ${LBL_MSG_SUCESSO_CARRINHO}
    Fechar o sistema    
