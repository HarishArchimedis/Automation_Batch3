*** Settings ***
Library    SeleniumLibrary
Library    OperatingSystem
Library    String

*** Test Cases ***
list1
    ${c}    Create List    java    python    robot
    log    ${c} 

    FOR    ${k}       IN    @{c}
        ${V}    Set Variable   ${k} selenium
        Log    ${V}
        
    END 
    
