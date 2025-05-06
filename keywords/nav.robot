*** Settings ***
Library           SeleniumLibrary
Variables          ../variables/nav_variables.py

*** Keywords ***
Click Currency Dropdown And Verify Options
    [Arguments]    @{expected_values}
    FOR    ${index}    IN RANGE    0    3
        Log    Fetching dropdown options...
        Click Element    ${CURRENCY_BUTTON}
        Wait Until Element Is Visible    ${CURRENCY_DROPDOWN}
        ${dropdown_options}=    Get WebElements    ${CURRENCY_DROPDOWN}

        ${option}=    Get Text    ${dropdown_options}[${index}]
        Log    Option text fetched: ${option}
        Should Be Equal As Strings    ${option}    ${expected_values}[${index}]

        Log    Clicking on the dropdown option: ${option}
        Click Element    ${dropdown_options}[${index}]

        Log    Re-opening the currency dropdown...
        Click Element    ${CURRENCY_BUTTON}
        Sleep    1.5s
    END



Click Contact Link And Verify
    Click Element    ${CONTACT_LINK}
    ${current_url}=    Get Location
    Log    Contact page URL: ${current_url}
    Should Be Equal    ${current_url}    https://tutorialsninja.com/demo/index.php?route=information/contact

Click My Account Dropdown And Verify Links
    Click Element    ${MY_ACCOUNT_DROPDOWN}
    Wait Until Element Is Visible    ${REGISTER_LINK}
    Click Element    ${REGISTER_LINK}
    ${register_url}=    Get Location
    Log    Register page URL: ${register_url}
    Should Be Equal    ${register_url}    https://tutorialsninja.com/demo/index.php?route=account/register
    Go Back
    Click Element    ${MY_ACCOUNT_DROPDOWN}
    Click Element    ${LOGIN_LINK}
    ${login_url}=    Get Location
    Log    Login page URL: ${login_url}
    Should Be Equal    ${login_url}    https://tutorialsninja.com/demo/index.php?route=account/login

Click Wish List Link And Verify
    wait until element is visible   ${WISH_LIST_LINK}
    Click Element    ${WISH_LIST_LINK}
    ${wish_list_url}=    Get Location
    Log    Wish List page URL: ${wish_list_url}
    Should Be Equal    ${wish_list_url}    https://tutorialsninja.com/demo/index.php?route=account/wishlist

Click Shopping Cart Link And Verify
    wait until element is visible    ${SHOPPING_CART_LINK}
    Click Element    ${SHOPPING_CART_LINK}
    ${shopping_cart_url}=    Get Location
    Log    Shopping Cart page URL: ${shopping_cart_url}
    Should Be Equal    ${shopping_cart_url}    https://tutorialsninja.com/demo/index.php?route=checkout/cart

Click Checkout Link And Verify
    Click Element    ${CHECKOUT_LINK}
    ${checkout_url}=    Get Location
    Log    Checkout page URL: ${checkout_url}
    Should Be Equal    ${checkout_url}    https://tutorialsninja.com/demo/index.php?route=checkout/cart

Click HomeButton
    wait until element is visible    ${HOME_BUTTON}
    click element   ${HOME_BUTTON}