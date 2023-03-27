*** Settings ***
Library    SeleniumLibrary
Resource    ../Resources/LoginKeywords.robot
Suite Setup    Open My Browser    ${siteUrl}   ${browser}
Suite Teardown    Close My Browsers

*** Variables ***
${browser}  edge
${siteUrl}  https://opensource-demo.orangehrmlive.com/web/index.php/auth/login
${user}     Admin
${pwd}      admin123

*** Test Cases ***
Login Test
    Enter Username    ${user}
    Enter Pwd   ${pwd}
    Click Login
    Verify Successful Login
