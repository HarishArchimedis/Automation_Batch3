*** Settings ***
Suite Setup    log to console    opening to Browser
Suite Teardown    Log To Console        closing Browser

Test Setup    Log To Console    login
Test Teardown    Log To Console    logout

*** Test Cases ***
TC1 
    Log To Console    gmail
TC2
    Log To Console    chrome
TC3
    Log To Console    facebook
Tc4
    Log To Console    instagram