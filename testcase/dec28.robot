*** Settings ***
Library    SeleniumLibrary   
Library    Telnet

*** Test Cases ***
hrm
    Open Browser    https://opensource-demo.orangehrmlive.com/web/index.php/auth/login    chrome
    Maximize Browser Window
    Input Text    //input[@name="username"]   Admin
    Input Password    //input[@name="password"]    admin123
    Click Element    //button[@type="submit"]
    Sleep    5
    