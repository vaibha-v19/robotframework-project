*** Settings ***
Library           SeleniumLibrary
Resource          ../keywords/base.robot
Resource          ../keywords/cart.robot
Resource          ../keywords/login.robot
Resource          ../keywords/nav.robot

Variables         ../variables/cart_variables.py

*** Test Cases ***
Test Add Item To Cart
    #set selenium speed    1 seconds
    [Documentation]    Verify adding an item to the cart.
    Open Browser And Navigate To URL    https://tutorialsninja.com/demo
    Navigate To Login Page
    Login To Account    testUser01@test.com    Test@01
    Click HomeButton
    Add Item To Cart
    Navigate To Shopping Cart
    Verify Cart Contents
    Close Browser

Test Update Quantity In Cart
    set selenium speed    1
    [Documentation]    Verify updating the quantity of an item in the cart.
    Open Browser And Navigate To URL    https://tutorialsninja.com/demo
    Navigate To Login Page
    Login To Account    testUser01@test.com    Test@01
    Click HomeButton
    Add Item To Cart
    Navigate To Shopping Cart
    Update Quantity In Cart    5
    Close Browser

Test Empty Cart
    [Documentation]    Verify emptying the cart.
    Open Browser And Navigate To URL    https://tutorialsninja.com/demo
    Navigate To Login Page
    Login To Account    testUser01@test.com    Test@01
    Click HomeButton
    Add Item To Cart
    Navigate To Shopping Cart
    Empty Cart
    Close Browser
