*** Settings ***
Library    SeleniumLibrary
Library    Collections
Library    OperatingSystem


*** Test Cases ***
# case1
#     ${li}    Create List    a    b    c 
#     Append To List    ${li}    d  
#     Log    ${li}

case2
    Open Browser    https://demoqa.com/browser-windows    chrome
    Maximize Browser Window
    Set Selenium Speed    2
    Click Element    //button[text()='New Tab']
    Capture Page Screenshot
    Go To    https://demoqa.com/sample 
    ${text}    Get Text    //h1[@id='sampleHeading'] 
    Log    ${text}  
    Go Back
       
    #Switch Window    https://demoqa.com/sample 
    #Switch Window    https://demoqa.com/browser-windows
    # Set Focus To Element     //h1[@id='sampleHeading'] 
    # Sleep    3
    # Switch Window    https://demoqa.com/browser-windows  
    # ${text2}    Get Text    //div[@class='pattern-backgound playgound-header']
    # Log To Console    ${text2}  
    # #Element Should Not Contain    ${text}     ${text2}        
    #  Should Not Be Equal    ${text}    ${text2}         
      
    
 

