*** Settings ***
Library    SeleniumLibrary
Library    XML
Library    String
Library    OperatingSystem
Variables    ../data/data.py
Variables    ../data/xpath.py

*** Variables ***
${scroll_function}    function scrollToPosition(x, y) {window.scrollTo(x, y)}


*** Keywords ***
login_keyword
    [Arguments]    ${user_name}    ${passwd}
  
    Open Browser    ${Url}    ${Browser1}  
    Maximize Browser Window
    # ${user}    Set Variable    standard_user    ${True}
    # ${pasd}    Set Variable    secret_sauce    ${True}

    # IF    $user_name == $user  and   '$passwd' == $pasd   
    #     RETURN    ${user_name}
    # END
    Input Text    ${inpt}    ${user_name}
    Input Password    ${password}    ${passwd}
    Click Button    ${ip2} 
    Click Element    ${butt_ele}
    Click Link    ${link}
    Current Frame Should Contain    QTY
    Current Frame Should not Contain    edq
    Capture Page Screenshot
    Sleep    5
    Close Browser



log_2
    Open Browser    https://opensource-demo.orangehrmlive.com/web/index.php/auth/login    Edge
    Maximize Browser Window
    Sleep    2
    Set Selenium Implicit Wait    1 second     
    Input Text    //*[contains(@name, "username")]    Admin
    Input Password    //input[@type="password"]    admin123
    Click Element    //button[@type="submit"] 

    @{list1}    Create List    //span[text()="Admin"]/ancestor::a    //span[text()="PIM"]/ancestor::a        //span[text()="Leave"]/ancestor::a    //span[text()="Time"]/ancestor::a    //span[text()="Recruitment"]/ancestor::a    //span[text()="My Info"]/ancestor::a    //span[text()="Performance"]/ancestor::a    //span[text()="Dashboard"]/ancestor::a    //span[text()="Directory"]/ancestor::a    //span[text()="Claim"]/ancestor::a    //span[text()="Buzz"]/ancestor::a                              
    @{list2}    Create List     User Management    PIM    Leave    Select Employee    Recruitment    Employee Full Name    Employee Reviews    My Actions    Directory    Employee Claims    Buzz Newsfeed                
    FOR    ${l1.element}    ${l2.element}    IN ZIP    ${list1}    ${list2}
        
        Click Element    ${l1.element}
        Page Should Contain    ${l2.element}
        Capture Page Screenshot
        Sleep    1
        
    END
  
scroll_func
    Execute Javascript    ${scroll_function}
    Execute Javascript    window.scrollTo(0, document.body.scrollHeight)
    Sleep    3
    Capture Page Screenshot
    Execute Javascript    window.scrollTo(0, 0)
    Sleep    3
    Capture Page Screenshot
    

create_dic
    
    &{orders}    Create Dictionary    orderno = 67    date = 01-01-2024    trackingno = TN0039291    custid = 11045    customername = suehatfield 
