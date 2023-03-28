*** Settings ***
Library    SeleniumLibrary
Resource    ../Resources/LoginKeywords.robot
Resource    ../Resources/MainKeywords.robot
Resource    ../Resources/MyInfoKeywords.robot
Suite Setup    Successuful Login
Suite Teardown    Close My Browsers

*** Test Cases ***
Fill out Form New Contact
    # Fill Out Contact Info
    Click My Info
    Click Contact Details
    Fill Out Form Address       Arbol     Pino      Bosque      Verde      12345
    Fill Out Form Telephone     123123123     123123123
    Fill Out Form Email         verde@example.com   planta@example.com
    Sleep    2
    Click Save Contact
    Verify Success Message