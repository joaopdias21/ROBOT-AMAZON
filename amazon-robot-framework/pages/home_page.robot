*** Settings ***
Library  SeleniumLibrary

*** Variables ***
${SEARCH_BAR}  id=twotabsearchtextbox
${SEARCH_BUTTON}  id=nav-search-submit-button

*** Keywords ***
Search For Product
    [Arguments]  ${product}
    Input Text  ${SEARCH_BAR}  ${product}
    Click Button  ${SEARCH_BUTTON}