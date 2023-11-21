*** Settings ***
Documentation    Ejercicio de practica para pruebas automaticas
Library  SeleniumLibrary
Resource    ../Resources/Login.robot
Resource    ../Resources/Buys.robot
Resource    ../Resources/ShoppingCart.robot


*** Variables ***
${Url}    https://www.saucedemo.com/
${Engine}    Chrome
${Usuario}    standard_user
${Contraseña}    secret_sauce


*** Test Cases ***
    
Login_exitoso a SwagLabs
    [Documentation]    Ingreso a la pagina de manera exitosa con un usuario activo
    [Tags]    Escenario camino feliz
    Open My Browser    ${Url}    ${Engine}
    Enter Data    ${Usuario}    ${Contraseña}        
    Sleep    9s
    
Seleccionar Productos
    [Documentation]    Seleccionar todos los productos al carrito de compras
    [Tags]    Escenario camino feliz
    Buys Sauce Labs Onesie    ${btn_SauceLabsOnesie }
    Buys Sauce Labs Bike Light    ${btn_SauceLabsBikeLight}
    Buys Sauce Labs Bolt T-Shirt    ${btn_SauceLabsBoltTShirt}
    Buys Test allTheThings T-Shirt Red    ${btn_TestallTheThingsTShirtRed}
    Sauce Labs Backpack    ${btn_SauceLabsBackpack}
    Sauce Labs Fleece Jacket    ${btn_SauceLabsFleeceJacket}

Entrar al Carrito
    [Documentation]    Verificación y compra de los productos seleccionados en el carrito    
    [Tags]    Escenario camino feliz
    Verificar Carrito de compra
    Comprar productos

*** Comments ***
Llenar Formulario Envio
    [Documentation]    Llenar los datos del formuarlio de envio
    [Tags]    Escenario Camino Feliz
    Input Text    ${For_nombre}    ${VarNombre}
    Sleep    2s
    Input Text    ${For_Apellido}    ${VarApellido}
    Sleep    2s
    Input Text    ${For_CodePostal}    ${VarCodePostal}
    Sleep    2s
    Click Button    ${btn_EnviarForm}
