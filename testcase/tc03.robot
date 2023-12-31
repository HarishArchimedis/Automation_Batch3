*** Settings ***
Library    SeleniumLibrary  

*** Test Cases ***
# Addcart
#     Open Browser    https://www.saucedemo.com/v1/    edge
#     Maximize Browser Window
#     Input Text    //input[@id="user-name"]    standard_user
#     Input Password    //input[@id="password"]    secret_sauce
#     Click Button    //input[@type="submit"]
#     Click Button    (//button[text()="ADD TO CART"])[1]
#     Click Link    //a[@class="shopping_cart_link fa-layers fa-fw"]
#     Capture Page Screenshot
#     Close Browser

# Checkbox   
#     Open Browser    https://demoqa.com/checkbox   edge
#     Maximize Browser Window
#     Sleep    3
#     Click Element    //label[@for="tree-node-home"]/span[1] 
#     Sleep    5
#     Page Should Contain Element   //*[contains(@class, 'icon-check')]
#     Close Browser

radiobutton 
    Open Browser    https://demoqa.com/radio-button    chrome
    Maximize Browser Window
    Sleep    5
    #Click Element    //input[@id="yesRadio" and @type="radio"]
    Click Element    //input[@type='radio']/parent::div[1]
    #Select Radio Button    name="like"    id="yesRadio"
    Sleep    3
    Page Should Contain Element    //input[@type='radio']/parent::div[1]
    Close Browser

# upload
#     Open Browser    https://demoqa.com/upload-download    edge
#     Maximize Browser Window
#     Sleep    5
#     #Click Element    //input[@id='uploadFile'] 
#     Choose File    //input[@id='uploadFile']    C:/Users/amird/OneDrive/Pictures/Camera imports/2022-01-19

# locators
#     Open Browser    https://demo.guru99.com/test/newtours/register.php    chrome
#     Maximize Browser Window
#     Input Text    name=firstName    Arthi