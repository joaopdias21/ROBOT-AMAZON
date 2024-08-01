base_page.SeleniumLibrary.Close Browser

*** Settings ***
Library  SeleniumLibrary
Resource  ../pages/base_page.robot
Resource  ../pages/home_page.robot
Resource  ../pages/product_page.robot
Resource  ../pages/login_page.robot

*** Variables ***
${EMAIL}  testeamzon@hotmail.com
${PASSWORD}  123456789
${BROWSER}  chrome

*** Test Cases ***
Add Alexa To Cart
    Open Browser To URL  ${URL}
    Sleep    10s
    Log In  ${EMAIL}  ${PASSWORD}
    Sleep    10s
    Search For Product  Alexa
    Select First Product
    Add Product To Cart
    