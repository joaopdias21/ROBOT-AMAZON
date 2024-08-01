*** Settings ***
Library  SeleniumLibrary

*** Variables ***
${FIRST_PRODUCT}  xpath=(//*[@id="search"]/div[1]/div[1]/div/span[1]/div[1]/div[2]/div/div/span/div/div/div[3]/div[2]/h2/a)
${ADD_TO_CART_BUTTON}  id=add-to-cart-button
# ${PRODUCT_NAME}    Adicionado ao carrinho

*** Keywords ***
Select First Product
    Click Element  ${FIRST_PRODUCT}

Add Product To Cart
    Click Button  ${ADD_TO_CART_BUTTON}

# Verify Product In Cart
#     Element Should Be Visible  ${PRODUCT_NAME}