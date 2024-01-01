*** Settings ***
Library    SeleniumLibrary
Resource    ../resource/commanfuc.robot
# Documentation    Get current date with Arguments
Library    DateTime


  

*** Test Cases ***
# tc1 login to saucelab and add item in cart
#     [Tags]    logtag   
#     login_keyword    standard_user    secret_sauce  

# tc login_and_click element
#     log_2


tc_open brower in incognito mode   
    [Tags]    inprivate_incognito
    ${options}=    Evaluate  sys.modules['selenium.webdriver'].ChromeOptions()  sys, selenium.webdriver
    Call Method    ${options}    add_argument    incognito
    Open Browser    https://www.saucedemo.com/v1/   Chrome    options=add_argument("--incognito")


tc_browser in inprivate mode
    [Tags]    inprivate_incognito
    ${options}=    Evaluate  sys.modules['selenium.webdriver'].ChromeOptions()  sys, selenium.webdriver
    Call Method    ${options}    add_argument    inprivate
    Open Browser    https://www.saucedemo.com/v1/    Edge    options=add_argument("--inprivate")

tc for exe js    
    Open Browser    https://stackoverflow.com/questions/39869543/how-to-reduce-waiting-time-in-selenium2library-robot-framework    Chrome
    Maximize Browser Window
    scroll_func
   


# tc_1 current date with default Arguments
#     [Tags]    datetime
#     ${current}    Get Current Date
#     Log To Console    ${current}

# tc current date with timezone is UTC
#     [Tags]    datetime
#     ${current}    Get Current Date    UTC
#     Log To Console    timezone is : ${current}


# tc current date with increment
#     [Tags]    datetime
#     ${current}    Get Current Date    increment=01:00:00
#     Log To Console    incremented time : ${current}

# tc current date with result_format Arguments
#     [Tags]    datetime
#     ${current}    Get Current Date    result_format=DateTime
#     Log To Console    result_format : ${current}

# tc current date with result_format Arguments
#     [Tags]    datetime
#     ${current}    Get Current Date    result_format=%d-%m-%Y %H:%M:%S
#     Log To Console    result_format : ${current}

# tc current date with exclude_millis
#     [Tags]    datetime
#     ${current}    Get Current Date    exclude_millis=True
#     Log To Console   exclude_milli second : ${current}

tc_switch windows
    Open Browser    https://demoqa.com/browser-windows    chrome    1
    Maximize Browser Window
    Wait Until Page Contains Element    //button[@id="tabButton"]    30
    Click Element    //button[@id="tabButton"]
    # Capture Page Screenshot
    Sleep    2
    Switch Window    url:https://demoqa.com/sample
    Capture Page Screenshot


tc_012 open browser in headless 

    Open Browser    https://www.google.com    headlesschrome    
    login_keyword    standard_user    secret_sauce

tc_switch browser
    Open Browser    https://demoqa.com/browser-windows    chrome    thrid
    Maximize Browser Window
    Open Browser    https://demoqa.com/sample    edge    2
    Sleep    2
    Open Browser    https://mail.google.com    chrome    1
    Switch Browser    thrid    
    Sleep    2
    Switch Browser    1
    Switch Browser    2

tc_open saucedemo
    [Tags]    newb
    Open Browser    https://www.saucedemo.com/v1/    ${Browser1}
    Maximize Browser Window
    Close Browser
