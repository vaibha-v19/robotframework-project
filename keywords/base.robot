*** Settings ***
Library  SeleniumLibrary
Variables          ../variables/login_variables.py
*** Keywords ***
Open Browser And Navigate To URL
    [Arguments]    ${url}
    Open Browser    ${url}    chrome
    Maximize Browser Window
Close Browsers
    close all browsers

Open my Browser
    open browser    https://tutorialsninja.com/demo    chrome