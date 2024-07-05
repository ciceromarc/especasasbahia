*** Settings ***
Documentation           Suíte de testes da área de carrinho e compra
Library    SeleniumLibrary

Resource        ../resources/base.resource
Test Setup       Dado que esteja no site do ponto frio no detalhe do produto
Suite Teardown   Fechar o sistema

*** Test Cases ***
CT002 - Teste de adicionar produto no carrinho
    [Tags]    carrinho
    Quando clicar em comprar
    Entao o produto e adicionado no carrinho