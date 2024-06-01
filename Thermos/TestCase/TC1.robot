*** Settings ***
Library  SeleniumLibrary

*** Variables ***
${URL}             https://thermos.com/account/register
${BROWSER}         Chrome
${FULL_NAME}       Matthew Tirtaa
${EMAIL}           MatthewTirta@example1.com
${PASSWORD}        MatthewTirtaa18
${PHONE_NUMBER}    1234567823

*** Test Cases ***
Thermos Register
    Open Browser    ${URL}    ${BROWSER}
    Maximize Browser Window
    Click Element    name=customer[name]
    Input Text       name=customer[name]          ${FULL_NAME}
    Click Element    name=customer[email]
    Input Text       name=customer[email]         ${EMAIL}
    Click Element    name=customer[phone]
    Input Text       name=customer[phone]         ${PHONE_NUMBER}
    Click Element    name=customer[password]
    Input Text       name=customer[password]      ${PASSWORD}
    Execute Javascript    window.scrollBy(0, 200)
    Click Element    name=customer[password_confirmation]
    Input Text       name=customer[password_confirmation]    ${PASSWORD}
    Click Button    css=#create_customer button[type="submit"]
    Close Browser