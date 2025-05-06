# Product Info Locators

#PRODUCT_INFO = "xpath=//table[@class='table table-bordered']//td[text()='Product Name']"
PRODUCT_INFO="xpath=//h2[text()='What would you like to do next?']"
EMPTY_CART_BUTTON = "xpath=//button[@type='button' and @class='btn btn-danger' and @data-original-title='Remove']"
EMPTY_CART_MSG = "xpath=//p[text()='Your shopping cart is empty!']"
HOME_BUTTON = "xpath=//a[text()='Qafox.com']"
CONTINUE_BUTTON= "xpath=//a[text()='Continue']"
UPDATE_QUANTITY_FIELD = "xpath=//input[@class='form-control']"
UPDATE_QUANTITY_BUTTON = "xpath=//button[@type='submit' and @class='btn btn-primary' and @data-original-title='Update']"
UPDATE_CART_MSG = "xpath=//div[@class='alert alert-success alert-dismissible']//button[@class='close' and @data-dismiss='alert']"



# Add to Cart Locators
ADD_TO_CART_BUTTON = "xpath=//button[.//span[text()='Add to Cart']]"
SUCCESS_CART_MESSAGE = "xpath=//div[contains(@class, 'alert-success') and contains(@class, 'alert-dismissible')]"
SHOPPING_CART_POPUP = "xpath=//a[text()='shopping cart']"
