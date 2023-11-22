*** Settings ***
Library    SeleniumLibrary
Variables    ../PageObject/Locations.py

*** Keywords ***

Confirmar Pagos    
    Click Button    ${btn_Continue}
    Sleep    5s

Cancelar Pagos
    Click Button    ${btn_Cancel}
    Sleep    2s