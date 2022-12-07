*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${BROWSER}    chrome
${URL_HOME}    https://www.saucedemo.com/


*** Keywords ***
Acessar o site para efetuar o login
    Open Browser     url=${URL_HOME}    browser=${BROWSER}

Informar o usuário "${USER}"
    Input Text    user-name   ${USER}

Informar a senha "${PASSWORD}"
    Input Password    password    ${PASSWORD}

Clicar no botão login
    Click Element    login-button

Validar se foi efetuado o login através da imagem do robô na página
     Wait Until Element Is Visible    xpath=//*[@id="header_container"]/div[2]/div[1]

Fechar navegador
    Close Browser   
    
    