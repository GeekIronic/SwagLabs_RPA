*** Settings ***
Library    SeleniumLibrary
Variables    ../PageObject/Locations.py

*** Keywords ***

Verificar Carrito de compra    
    Click Element    ${btn_ShoppingCart}
    Sleep    4s

Comprar productos
    Click Button    xpath://*[@id="checkout"]    
    Sleep    10s