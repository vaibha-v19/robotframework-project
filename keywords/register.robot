*** Settings ***
Library  SeleniumLibrary
Variables          ../variables/register_variables.py

*** Keywords ***
Navigate To Register Page
    Click Element    ${MY_ACCOUNT_DROPDOWN}
    Wait Until Element Is Visible    ${REGISTER_OPTION}
    Click Element    ${REGISTER_OPTION}

Fill Registration Form
    [Arguments]    ${first_name}    ${last_name}    ${email}    ${telephone}    ${password}    ${confirm_password}    ${agree_box_checked}
    Input Text    ${FIRST_NAME_FIELD}    ${first_name}
    Input Text    ${LAST_NAME_FIELD}    ${last_name}
    Input Text    ${EMAIL_FIELD}        ${email}
    Input Text    ${TELEPHONE_FIELD}    ${telephone}
    Input Text    ${PASSWORD_FIELD}     ${password}
    Input Text    ${CONFIRM_PASSWORD_FIELD}    ${confirm_password}
    Run Keyword If    ${agree_box_checked}    Click Element    ${AGREE_BOX}

Submit Registration Form
    Click Element    ${CONTINUE_BUTTON}

Verify Registration Success
    Wait Until Element Is Visible   ${ACCOUNT_CREATED_HEADING}
    [Return]    Run Keyword And Return Status    Element Should Be Visible    ${ACCOUNT_CREATED_HEADING}