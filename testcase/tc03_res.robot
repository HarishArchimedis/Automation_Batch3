*** Settings ***
Library    SeleniumLibrary

*** Test Cases ***

#opening
    # Open Browser    https://www.saucedemo.com/v1/    chrome
    # Maximize Browser Window
    # Input Text    //input[@id="user-name"]    standard_user
    # Input Password    //input[@id="password"]    secret_sauce    
    # Click Button    //input[@id="login-button"]         
    # Click Button    (//button[@class="btn_primary btn_inventory"])[1]
    # Capture Page Screenshot
    # Close Browser

# check box
#     Open Browser    https://demoqa.com/checkbox    chrome
#     Maximize Browser Window
#     Sleep    5
#     Click Element    //label[@for="tree-node-home"]/span[1]
#     Sleep    10
#     Page Should Contain Element    //*[contains(@class, 'icon-check')]
#     Close Browser

radio button execution
    # Create Webdriver    Chrome
    # Open Browser    https://demoqa.com/radio-button    chrome
    # Maximize Browser Window
    # Sleep    5
    # Wait Until Page Contains Element    //input[@id="yesRadio" and @type="radio"] 
    # Page Should Contain Element    //input[@id="yesRadio" and @type="radio"]
    
    # sleep    5

# upload
#     Open Browser    https://tus.io/demo    chrome
#     Maximize Browser Window
#     Sleep    5
#     Choose File    //input[@id="P0-0"]    data\data.py
#     Sleep    5
    