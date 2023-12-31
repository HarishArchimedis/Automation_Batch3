*** Settings ***
Library    SeleniumLibrary

*** Test Cases ***
#Speed
    # ${speed}=    Get Selenium Speed
    # Log To Console    ${speed}
    # Open Browser    https://www.saucedemo.com/v1/    Edge
    # Maximize Browser Window
    # Set Selenium Speed    5 seconds
    # Input Text    //input[@id="user-name"]    keerthana
    # Input Password    //input[@id="password"]    Keer06
    # Click Button    //input[@type="submit"]
    # ${speed}=    Get Selenium Speed
    # Log To Console    ${speed}
    # Close Browser

# timeout

#     Open Browser    https://www.saucedemo.com/v1/    Edge
#     Maximize Browser Window
#     Set Selenium Timeout    15 seconds
#     ${tm}=    Get Selenium Timeout
#     Log To Console    ${tm}
#     Wait Until Page Contains    keerthana
#     Input Text    //input[@id="user-name"]    keerthana
#     Input Password    //input[@id="password"]    Keer06
#     Click Button    //input[@type="submit"]
#     Close Browser

# Impliwait
    
#     Open Browser    https://www.saucedemo.com/v1/    Edge
#     Maximize Browser Window
#     ${def}=    Get Selenium Implicit Wait
#     Log To Console    ${def}
#     Set Selenium Implicit Wait    15 seconds
#     ${def}=    Get Selenium Implicit Wait
#     Log To Console    ${def}
#     Input Text    //input[@id="user-name11"]    keerthana
#     Input Password    //input[@id="password"]    Keer06
#     Click Button    //input[@type="submit"]
#     Close Browser

keywordssample
    #Create Webdriver    Firefox
    Open Browser    https://www.saucedemo.com/v1/    Edge
    Maximize Browser Window
    # Input Text    //input[@id="user-name"]    keerthana
    # Input Password    //input[@id="password"]    Keer06
    # Click Button    //input[@type="submit"]
    # Current Frame Should Contain    Username and password do not match any user in this service
    # Current Frame Should Not Contain    Username and password do not match any user in this service
    # Delete All Cookies
    # Delete Cookie    keerthana

    # Close Browser
    Add Cookie    name    value