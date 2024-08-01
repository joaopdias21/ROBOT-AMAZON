*** Settings ***
Library           SeleniumLibrary

*** Variables ***

${URL}            https://www.amazon.com.br/
${BROWSER}        chrome

*** Keywords ***
Open Browser To URL
    [Arguments]  ${url}
    Open Browser  ${url}  ${BROWSER}
    Maximize Browser Window

Close Browser
    Close Browser