*** Settings ***
Library  SeleniumLibrary

*** Variables ***
${URL}  http://automationexercise.com
${EMAIL}  your-email@example.com
${PASSWORD}  your-password

*** Test Cases ***
Test Case 2: Login User with correct email and password
    Launch Browser  chrome
    Navigate To  ${URL}
    Verify Home Page Visible
    Click Signup Login Button
    Verify Login Page Visible
    Enter Login Credentials
    Click Login Button
    Verify Logged In As Username
    Click Delete Account Button
    Verify Account Deleted

*** Keywords ***
Launch Browser
    Open Browser  ${URL}  chrome
    Maximize Browser Window

Verify Home Page Visible
    Title Should Be  Automation Exercise

Click Signup Login Button
    Click Link  Signup / Login

Verify Login Page Visible
    Page Should Contain  Login to your account

Enter Login Credentials
    Input Text  id=email  ${EMAIL}
    Input Text  id=password  ${PASSWORD}

Click Login Button
    Click Button  Login

Verify Logged In As Username
    Page Should Contain  Logged in as ${EMAIL}

Click Delete Account Button
    Click Button  Delete Account

Verify Account Deleted
    Page Should Contain  ACCOUNT DELETED!
*** Settings ***
Library    SeleniumLibrary
 
*** Test Cases ***
Verify Google Homepage
    Open Browser    https://www.google.com    chrome
    Close Browser