*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${URL}      https://automationexercise.com
${BROWSER}  Chrome
${EMAIL}    your_email@example.com
${PASSWORD} your_password

*** Test Cases ***
Test Login
    Open Browser    ${URL}    ${BROWSER}
    Maximize Browser Window
    Wait Until Element Is Visible    //a[@href='/login']
    Click Element    //a[@href='/login']
    Wait Until Element Is Visible    //h2[contains(text(),'Login to your account')]    
    Input Text    //input[@name='email']    ${EMAIL}
    Input Text    //input[@name='password']    ${PASSWORD}
    Click Button    //button[@type='submit']
    Wait Until Element Is Visible    //b[contains(text(),'Logged in as')]
    Page Should Contain    Logged in as
    Click Element    //a[@href='/delete_account']
    Wait Until Element Is Visible    //h2[contains(text(),'ACCOUNT DELETED!')]
    Page Should Contain    ACCOUNT DELETED!
    Close Browser
