*** Settings ***
Library    SeleniumLibrary
Variables    ../PageObject/Locations.py

*** Keywords ***

Open My Browser    
    [Arguments]    ${Page}    ${Browser}
    Open Browser    ${Page}    ${Browser}
    Maximize Browser Window

Enter Data
    [Arguments]    ${User}    ${Password}
    Input Text    ${UserLogin}    ${User}
    Input Text    ${PassLogin}    ${Password}
    Sleep    2s
    Click Button    ${btnLogin}

Sign_off
    Click Element    xpath://*[@id="react-burger-menu-btn"]
    Sleep    3S
    Click Element    xpath://*[@id="about_sidebar_link"]
