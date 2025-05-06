*** Settings ***
Library           SeleniumLibrary
Resource          ../keywords/base.robot
Resource          ../keywords/nav.robot
Resource          ../keywords/login.robot

Variables         ../variables/nav_variables.py


*** Test Cases ***


Test Contact Link
    [Documentation]    Verify the contact link functionality.
    Open Browser And Navigate To URL    https://tutorialsninja.com/demo

    Click Contact Link And Verify
    Close Browser

Test My Account Dropdown
    [Documentation]    Verify the My Account dropdown functionality.
    Open Browser And Navigate To URL    https://tutorialsninja.com/demo

    Click My Account Dropdown And Verify Links
    Close Browser

Test Wish List Link
    [Documentation]    Verify the Wish List link functionality.
    Open Browser And Navigate To URL    https://tutorialsninja.com/demo

    Navigate To Login Page
    Login To Account    testUser01@test.com    Test@01
    Click HomeButton
    Click Wish List Link And Verify
    Close Browser

Test Shopping Cart Link
    [Documentation]    Verify the Shopping Cart link functionality.
    Open Browser And Navigate To URL    https://tutorialsninja.com/demo


    Click Shopping Cart Link And Verify
    Close Browser

Test Checkout Link
    [Documentation]    Verify the Checkout link functionality.
    Open Browser And Navigate To URL    https://tutorialsninja.com/demo

    Click Checkout Link And Verify
    Close Browser