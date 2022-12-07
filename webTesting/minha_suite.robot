*** Settings ***
Documentation    Suite Exemplo WebTesting
Resource    resource.robot


*** Test Cases ***
Caso de Teste 01: Login no Site
    Acessar o site para efetuar o login
    Informar o usuário "standard_user"
    Informar a senha "secret_sauce"
    Clicar no botão login
    Validar se foi efetuado o login através da imagem do robô na página
    Fechar navegador