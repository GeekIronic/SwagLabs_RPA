*** Settings ***
Library    SeleniumLibrary
Resource    ../Resources/Login.robot
Variables    ../PageObject/Locations.py

*** Variables ***
${Url}    https://www.saucedemo.com/
${Engine}    Chrome      
${message}    Epic sadface: Sorry, this user has been locked out. 

*** Test Cases ***

Login Usuario Bloqueado
    [Documentation]    Escenario en donde intenta ingresar un usuario bloqueado
    [Tags]    Validacion de login
    Open My Browser    ${Url}    ${Engine}
    Enter Data    locked_out_user    secret_sauce        
    Sleep    3s
    ${msn}    Get Text    ${msnBlock}
    Element Should Be Visible    ${msnBlock}    ${msn}

login usuario no existe
    [Documentation]    Escenario en donde intenta ingresar un usuario que no existe
    [Tags]    Validacion de login
    Open My Browser    ${Url}    ${Engine}
    Enter Data    app    secret_sauce        
    Sleep    3s
    ${msn}    Get Text    ${msnBlock}
    Element Should Be Visible    ${msnBlock}    ${msn}

login_contraseña_mal_digitada
    [Documentation]    Escenario en donde intenta ingresar un usuario habilitado con contraseña mal digitada
    [Tags]    Validacion de login
    Open My Browser    ${Url}    ${Engine}
    Enter Data    standard_user    tester1        
    Sleep    3s
    ${msn}    Get Text    ${msnBlock}
    Element Should Be Visible    ${msnBlock}    ${msn}
