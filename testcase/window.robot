*** Settings ***
Library    SeleniumLibrary

*** Test Cases ***
case1
    Open Browser    https://demoqa.com/browser-windows    chrome
    Maximize Browser Window
    Click Element    //button[@id="tabButton"]
    Sleep    4
    Capture Page Screenshot
    Sleep    5
    Go To    https://demoqa.com/sample
    ${GT}    Get Text    //h1[@id="sampleHeading"]
    Log    ${GT}
    Sleep    2
    Go To    https://demoqa.com/browser-windows
    Sleep    3
    Get Text    //div[@class="main-header"]
    Sleep    2
    Go To    https://demoqa.com/browser-windows
    Click Element    //button[@id="windowButton"]
    Maximize Browser Window


