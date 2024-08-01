*** Settings ***
Library  SeleniumLibrary

*** Variables ***
${LOGIN_BUTTON}  id=nav-link-accountList-nav-line-1
${EMAIL_FIELD}  id=ap_email
${CONTINUE_BUTTON}  id=continue
${PASSWORD_FIELD}  id=ap_password
${SIGNIN_BUTTON}  id=signInSubmit

*** Keywords ***
Log In
    [Arguments]  ${email}  ${password}
    Click Element  ${LOGIN_BUTTON}
    Input Text  ${EMAIL_FIELD}  ${email}
    Click Button  ${CONTINUE_BUTTON}
    Input Text  ${PASSWORD_FIELD}  ${password}
    Click Button  ${SIGNIN_BUTTON}