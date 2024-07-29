*** Settings ***
Library           SeleniumLibrary

*** Variables ***
${URL}            https://www.amazon.com.br/ap/signin?openid.pape.max_auth_age=0&openid.return_to=https%3A%2F%2Fwww.amazon.com.br%2Fref%3Dnav_ya_signin&openid.identity=http%3A%2F%2Fspecs.openid.net%2Fauth%2F2.0%2Fidentifier_select&openid.assoc_handle=brflex&openid.mode=checkid_setup&openid.claimed_id=http%3A%2F%2Fspecs.openid.net%2Fauth%2F2.0%2Fidentifier_select&openid.ns=http%3A%2F%2Fspecs.openid.net%2Fauth%2F2.0
${BROWSER}        chrome
${EMAIL}          testeamzon@hotmail.com
${PASSWORD}       123456789
${EXPECTED_URL}   https://www.amazon.com.br/ref=nav_ya_signin

*** Test Cases ***
Login To Amazon
    Open Browser    ${URL}    ${BROWSER}
    Maximize Browser Window
    
    Wait Until Element Is Visible    id=ap_email    10s
    Input Text    id=ap_email    ${EMAIL}
    Click Button    id=continue
    Wait Until Element Is Visible    id=ap_password    10s
    Input Text    id=ap_password    ${PASSWORD}
    Click Button    id=signInSubmit
    ${current_url}=    Get Location
    Should Contain    ${current_url}    ${EXPECTED_URL}
    [Teardown]    Close Browser
