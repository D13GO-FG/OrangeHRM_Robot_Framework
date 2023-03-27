*** Settings ***
Library    SeleniumLibrary
Variables    ../PageObject/Locators.py

*** Keywords ***
Click Contact Details
    Wait Until Element Is Visible    ${link_contact_detail}
    Click Element    ${link_contact_detail}

Fill Out Form Address
    [Arguments]    ${street_1}      ${street_2}     ${city}     ${state_province}      ${zip_code}
    Wait Until Element Is Visible    ${txt_street_1}
    Clear Text Field    ${txt_street_1}
    Input Text          ${txt_street_1}           ${street_1}
    Clear Text Field    ${txt_street_2}
    Input Text          ${txt_street_2}           ${street_2}
    Clear Text Field    ${txt_city}
    Input Text          ${txt_city}               ${city}
    Clear Text Field    ${txt_state_province}
    Input Text          ${txt_state_province}     ${state_province}
    Clear Text Field    ${txt_zip_code}
    Input Text          ${txt_zip_code}           ${zip_code}

    Click Element       ${select_country}
    Wait Until Element Is Visible    ${select_option}
    Click Element       ${select_option}

Fill Out Form Telephone
    [Arguments]    ${home_number}   ${mobile_number}
    Clear Text Field    ${txt_home_number}
    Input Text          ${txt_home_number}    ${home_number}
    Clear Text Field    ${txt_mobile_number}
    Input Text          ${txt_mobile_number}  ${mobile_number}

Fill Out Form Email
    [Arguments]    ${work_email}     ${email_other}
    Clear Text Field    ${txt_work_email}
    Input Text          ${txt_work_email}         ${work_email}
    Clear Text Field    ${txt_email_other}
    Input Text          ${txt_email_other}        ${email_other}

Click Save Contact
    Click Element    ${btn_save}

Verify Success Message
    Wait Until Element Is Visible    ${success_msg}

Clear Text Field
    [Arguments]    ${selector}
    click element   ${selector}
    press keys    ${selector}    CTRL+a+BACKSPACE