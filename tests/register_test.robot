*** Settings ***
Library           SeleniumLibrary
Library           DataDriver    file=../variables/register_test.xlsx    file_type=xlsx
Resource          ../keywords/base.robot
Resource          ../keywords/register.robot
Variables         ../variables/register_variables.py

Test Template     Register Test Template

*** Test Cases ***
Register Test Template

*** Keywords ***
Register Test Template
    [Arguments]    ${first_name}    ${last_name}    ${telephone}    ${password}    ${confirm_password}    ${agree_box_checked}    ${expected_result}
    Open Browser And Navigate To URL    https://tutorialsninja.com/demo

    Navigate To Register Page
    ${unique_email}=    Evaluate    str(uuid.uuid4()) + "@example.com"    modules=uuid
    Fill Registration Form    ${first_name}    ${last_name}    ${unique_email}    ${telephone}    ${password}    ${confirm_password}    ${agree_box_checked}
    Submit Registration Form
    ${is_success}=    Run Keyword And Return Status    Verify Registration Success
    ${actual_result}=    Set Variable If    ${is_success}    Successfull    Failed
    Log    Actual Result: ${actual_result}, Expected Result: ${expected_result}
    Should Be Equal    ${actual_result}    ${expected_result}
    Close Browser