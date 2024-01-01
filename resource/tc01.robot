*** setting ***
Library    SeleniumLibrary
Library    Collections
Library    String


*** Variables ***
${sauceurl}    https://www.saucedemo.com/v1/
${browser}    edge
    



*** Test Cases ***
brows
    open Browser    https://www.flipkart.com   edge
    Maximize Browser Window
    Click Button    //button[@class="_1wGnMD rX1XT4 _2nD2xJ"]
    # Click button    //img[@src="https://rukminim1.flixcart.com/flap/96/96/image/29327f40e9c4d26b.png?q=100"]
    Sleep    5
    Capture Page Screenshot
    Close Browser


newbrows
    Open Browser   ${sauceurl}    ${browser}
    Maximize Browser Window
    Input Text    //input[@id="user-name"]    "gaythri"
    Input Password   //input[@id="password"]    g1234
    Click Button    //input[@id="login-button"]
    Clear Element Text    //input[@id="user-name"]
    Click Image    //img[@src="img/Login_Bot_graphic.png"]
    Click Element    //div[@class="login_logo"]
    Press Keys    //input[@id="user-name"]    CTRL+A+BACKSPACE
    Input Text    //input[@ID="user-name"]    "kirthi"
    Sleep    10
    ${url}    Get Location
    Should Be Equal    ${sauceurl}    ${url}
    Capture Page Screenshot
    Close Browser

nbs
    Open Browser    https://www.amazon.in/?tag=msndeskabkin-21&ref=pd_sl_7qhce485bd_e&adgrpid=1322714095756137&hvadid=82669897710514&hvnetw=o&hvqmt=e&hvbmt=be&hvdev=c&hvlocint=&hvlocphy=157302&hvtargid=kwd-82670512756912:loc-90&hydadcr=14453_2334184    edge
    Maximize Browser Window
    Click Image    //img[@src="https://m.media-amazon.com/images/I/71nXZEQQiEL._AC_SY290_.jpg"]
    Sleep    5
    Close Browser
# testc01
    # ${vars}=    Set Variable    welcome-user
    # Log To Console   ${vars}
    # @{userlist}    Create List    amritha    kirthi    monica
    # ${user_length}    Get Length    ${userlist}    
    # Log To Console    ${user_length}
    # ${user_data}    Get From List    ${userlist}    2
    # Log To Console    ${user_data}
    # FOR    ${i}    IN RANGE    1    10

    # Log To Console  ${i}

    # END
    # # FOR    ${userlist}    IN RANGE   0    2
    # #     Log    ${userlist}
        
    # # END
    # FOR    ${j}    IN    @{userlist}
    #     Log    ${j}
        
    # END
    # ${create_key}=    Set Variable    log to Console
    # Run Keyword    ${create_key}    ${userlist}
    # # Log To Console    ${i}
    # ${key_word}=    Set Variable    NO
    # Run Keyword If    '${key_word}'=='YES'    Log    value found
    # Run Keyword If    '${key_word}'=='NO'    Log    value not found
gdgd
    Log    kjjfknfe

neg
    Create Webdriver    Firefox

    