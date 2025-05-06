*** Settings ***
Library           SeleniumLibrary
Library           DataDriver    file=../variables/login_test.xlsx    file_type=xlsx
Resource          ../keywords/base.robot
Resource          ../keywords/login.robot
Variables         ../variables/login_variables.py

Test Template     Login Test Template


*** Test Cases ***
Login Test Template


*** Keywords ***
Login Test Template
    [Arguments]    ${email}    ${password}    ${expected_result}
    Open Browser And Navigate To URL    https://tutorialsninja.com/demo
    Navigate To Login Page
    Login To Account    ${email}    ${password}
    ${is_success}=    Run Keyword And Return Status    Verify Login Success
    ${actual_result}=    Set Variable If    ${is_success}    Successfull    Failed
    Should Be Equal    ${actual_result}    ${expected_result}
    Close Browser