*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${urldemo}    https://demoqa.com/browser-windows
${brows}    chrome
${el}    //button[@id='windowButton']


*** Keywords ***

*** Test Cases ***
win
    Open Browser    ${urldemo}    ${brows}  
    Maximize Browser Window 
    Set Selenium Speed    3
    Click Element    ${el}
    #Maximize Browser Window
    Go To    https://demoqa.com/sample 
    # Maximize Browser Window   
    #Click Element    ${}${urldemo}   
    # ${ed}    Get Text    //h1[@id='sampleHeading']
    # Log To Console    ${ed}    

    
    
