*** Settings ***
Library    SeleniumLibrary
Library    DateTime
Library    Collections

*** Test Cases ***
# getting current date
#     Get Current Date

# Adding time to date
#     ${day}    Add Time To Date    2023/12/30    12.30 
#     Log    ${day}    
# Adding time to time
#     ${abi}    Add Time To Time    4.30    6.30   
#     Log    ${1} 
# date convertion
#     ${current}     Get Current Date
#     Log    ${current}
#     Convert Date    2023-12-30   
# sub
#     ${current}    Get Current Date    result_format=%A
#     # Log    ${current}
#     # ${future}    Subtract Date From Date    ${current}    2023-12-14
    # ${current}    Get Current Date    result_format=%a
    # Log    ${current}
    # ${current}    Get Current Date    result_format=%B
    # Log    ${current}
    # ${current}    Get Current Date    result_format=%y
    # Log    ${current}
    # ${current}    Get Current Date    result_format=%H
    # ${current}    Get Current Date    result_format=%M
    # ${current}    Get Current Date    result_format=%S 
    # ${current}    Get Current Date    result_format=%H %M %S
    # ${current}    Get Current Date    result_format=%y

# HSC
#       Open Browser    https://tnresults.nic.in/tpfpecrd.htm    chrome   
#     Maximize Browser Window
#     Input Text    //input[@id="regno"]    213456
#     ${current}    Get current date    result_format=%d-%m-%Y
#     Input Text    //input[@id="dob"]    ${current}
#     Sleep    4
#     Press Keys    //input[@id="dob"]    CTRL+A+BACKSPACE
#     Sleep    5
#     ${y}    Get Current Date    
    


#     ${add}    Add Time To Date    ${y}    10 days
#     ${r}    Convert Date    ${add}    result_format=%d-%m-%Y
#     Input Text    //input[@id="dob"]    ${r}
#     Capture Page Screenshot
#     Sleep    5
#     Input Text    //input[@id="dob"]    ${add}
#     Sleep    4
#     Press Keys    //input[@id="dob"]    CTRL+A+BACKSPACE
#     Sleep    5

#     Capture Page Screenshot


# Tc8
#     FOR    ${c}    IN RANGE    20   40    5
#     Log    ${c}
    
#     END



tc9
    ${l}    Create List    java    python    selenium
    Log    ${l}
    ${l2}    Append To List    ${l}    robot
    Log    ${l2}
    


