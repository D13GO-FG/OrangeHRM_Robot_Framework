*** Settings ***
Library    SeleniumLibrary
Variables    ../PageObject/Locators.py

*** Keywords ***
Open My Browser
    [Arguments]    ${siteUrl}   ${Browser}
    Open Browser    ${siteUrl}  ${Browser}
    Maximize Browser Window

Enter Username
    [Arguments]    ${username}
    Wait Until Element Is Visible    ${txt_login_username}
    Input Text    ${txt_login_username}     ${username}

Enter Pwd
    [Arguments]    ${password}
    Wait Until Element Is Visible    ${txt_login_password}
    Input Password    ${txt_login_password}     ${password}

Click Login
    Wait Until Element Is Visible    ${btn_login}
    Click Element    ${btn_login}

Verify Successful Login
    Title Should Be    OrangeHRM

Successuful Login
    Open My Browser     https://opensource-demo.orangehrmlive.com/web/index.php/auth/login   edge
    Enter Username      Admin
    Enter Pwd           admin123
    Click Login

Close My Browsers
    Close All Browsers