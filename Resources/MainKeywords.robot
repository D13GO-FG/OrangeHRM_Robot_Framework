*** Settings ***
Library    SeleniumLibrary
Variables    ../PageObject/Locators.py

*** Keywords ***
Click My Info
    Wait Until Element Is Visible    ${btn_my_info}
    Click Element    ${btn_my_info}