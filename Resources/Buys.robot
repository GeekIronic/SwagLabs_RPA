*** Settings ***
Library    SeleniumLibrary
Variables    ../PageObject/Locations.py

*** Keywords ***

Buys Sauce Labs Onesie
    [Arguments]    ${Location}   
    Click Button    ${Location}
    Sleep    3s

Buys Sauce Labs Bike Light
    [Arguments]    ${Location}
    Click Button    ${Location}
    Sleep    3s

Buys Sauce Labs Bolt T-Shirt
    [Arguments]    ${Location}
    Click Button    ${Location}
    Sleep    3s

Buys Test allTheThings T-Shirt Red
    [Arguments]    ${Location}
    Click Button    ${Location}
    Sleep    3s

Sauce Labs Backpack
    [Arguments]    ${Location}
    Click Button    ${Location}
    Sleep    3s

Sauce Labs Fleece Jacket
    [Arguments]    ${Location}
    Click Button    ${Location}
    Sleep    3s


*** Comments ***

Cada palabra clave es para Seleccionar cada articulo existente en la pagina web.
La idea principal es que se pueda automatizar la seleccion de cada articulo
