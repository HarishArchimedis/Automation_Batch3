*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${locts}=    //input[@id="tree-node-home"]/following-sibling::span[1]


*** Keywords ***
[Arguments]    ${locts}




*** Test Cases ***

# tc0001
#     Open Browser    https://www.saucedemo.com/v1/    edge
#     Maximize Browser Window
#     Input Text    //input[@id="user-name"]    standard_user
#     Input Password    //input[@id="password"]    secret_sauce
#     Click Button    //input[@id="login-button"]  
#     Click Element    //button[@class="btn_primary btn_inventory"]
#     Click Link    //a[@class="shopping_cart_link fa-layers fa-fw"]
#     Capture Page Screenshot
#     Sleep    5
#     Close Browser

tc002
    Open Browser    https://demoqa.com/checkbox    chrome
    Maximize Browser Window
    sleep    2
    Wait Until Page Contains Element    //input[@id="tree-node-home"]/following-sibling::span[1]   
    Click Element    ${locts}
    Page Should Contain Element    //input[@id="tree-node-home"]/following-sibling::span[1]
    Page Should Contain Element    //*[contains(@class, "icon-check")]
    

# tc003
#     Open Browser    https://demoqa.com/radio-button    chrome
#     Maximize Browser Window
#     Sleep    4
#     Wait Until Page Contains Element    //input[@id="yesRadio" and @type="radio"]
#     Page Should Contain Radio Button    //input[@id="yesRadio" and @type="radio"]
#     Click Element    //input[@id="yesRadio" and @type="radio"]
    


tc04
    Open Browser    https://demoqa.com/upload-download    chrome
    Maximize Browser Window
    Sleep    5
    Choose File    //input[@id="uploadFile"]   ${EXECDIR}/data/data.py
    



