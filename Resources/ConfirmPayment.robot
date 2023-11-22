*** Settings ***
Library    SeleniumLibrary
Variables    ../PageObject/Locations.py

*** Keywords ***
Confirmar Pago    
    Click Button    ${btn_Continue}
    Sleep    5s

Cancelar Pago
    Click Button    ${btn_Cancel}
    Sleep    2s