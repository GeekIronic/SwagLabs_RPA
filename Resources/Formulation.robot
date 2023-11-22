*** Settings ***
Library    SeleniumLibrary
Variables    ../PageObject/Locations.py

*** Keywords ***

Register User
    [Arguments]    ${UserRegister}    ${LastUserRegister}    ${CodePostaRegister}     
    Wait Until Element Is Visible    //*[@id="first-name"]   20s
    Input Text    //*[@id="first-name"]   ${UserRegister}
    Sleep    2s
    Input Text    //*[@id="last-name"]    ${LastUserRegister}
    Sleep    2s
    Input Text    //*[@id="postal-code"]    ${CodePostaRegister}
    Sleep    2s
    Click Button    ${btn_EnviarForm}
