*** Settings ***
Documentation           Suíte de testes da área de busca de produtos
Library    SeleniumLibrary

Resource        ../resources/base.resource
Test Setup       Dado que esteja no site do ponto frio
Suite Teardown   Fechar o sistema

*** Test Cases ***
CT001 - Teste de Busca de Produtos
    [Tags]    buscarProduto
    Quando clicar na caixa de busca
    E digitar smartphones
    E clicar em buscar