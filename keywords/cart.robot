*** Settings ***
Library           SeleniumLibrary
Variables         ../variables/cart_variables.py

*** Keywords ***



Add Item To Cart
    Wait Until Element Is Visible    ${ADD_TO_CART_BUTTON}

    Click Element    ${ADD_TO_CART_BUTTON}
    Wait Until Element Is Visible    ${SUCCESS_CART_MESSAGE}
    Log    Item added to cart successfully.

Navigate To Shopping Cart
    Wait Until Element Is Visible    ${SHOPPING_CART_POPUP}
    wait until element is enabled    ${SHOPPING_CART_POPUP}
    Click Element    ${SHOPPING_CART_POPUP}
    Wait Until Page Contains Element    ${PRODUCT_INFO}
    element should be visible    ${PRODUCT_INFO}
    Log    Navigated to shopping cart.

Update Quantity In Cart
    [Arguments]    ${quantity}
    Wait Until Element Is Visible    ${UPDATE_QUANTITY_FIELD}
    Clear Element Text    ${UPDATE_QUANTITY_FIELD}
    Input Text    ${UPDATE_QUANTITY_FIELD}    ${quantity}
    Wait Until Element Is Visible    ${UPDATE_QUANTITY_BUTTON}
    Click Element    ${UPDATE_QUANTITY_BUTTON}
    Wait Until Element Is Visible    ${UPDATE_CART_MSG}
    Log    Cart updated successfully with quantity: ${quantity}.

Empty Cart
    Wait Until Element Is Visible    ${EMPTY_CART_BUTTON}
    Click Element    ${EMPTY_CART_BUTTON}
    Wait Until Element Is Visible    ${CONTINUE_BUTTON}
    Log    Cart emptied successfully.

Verify Cart Contents
    Wait Until Element Is Visible    ${PRODUCT_INFO}
    Element Should Be Visible    ${PRODUCT_INFO}
    Log    Item is visible in the cart.
