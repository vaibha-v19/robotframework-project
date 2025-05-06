*** Settings ***
Library  SeleniumLibrary
Variables          ../variables/login_variables.py
*** Keywords ***

Navigate To Login Page
    Click Element    ${MY_ACCOUNT_DROPDOWN}
    Wait Until Element Is Visible    ${LOGIN_OPTION}
    Click Element    ${LOGIN_OPTION}
Login To Account
    [Arguments]    ${email}    ${password}
    Input Text    ${LOGIN_EMAIL_FIELD}    ${email}
    Input Text    ${LOGIN_PASSWORD_FIELD}    ${password}
    Click Button    ${LOGIN_BUTTON}

Verify Login Success
    Wait Until Element Is Visible   ${LOGIN_VERIFICATION_TEXT}
    Element Should Be Visible   ${LOGIN_VERIFICATION_TEXT}
