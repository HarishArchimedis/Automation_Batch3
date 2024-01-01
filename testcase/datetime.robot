*** Settings ***
Documentation    get current date with arguments
Library    DateTime


*** Test Cases ***
TC1
    ${current}    Get Current Date
    Log To Console    default arguments    ${current}

TC2
    ${current}    Get Current Date    utc   
    Log To Console    time_zone=${current} 

TC3
    ${current}    Get Current Date    Increment=02:00:00
    Log To Console    Increment to : ${current} 

TC4  
    ${current}  Get Current Date    result_format=%d-%m-%y
    Log To Console    result_format : ${current}

TC5
    ${current}    Get Current Date    exclude_millis=${True}
    Log To Console    exclude_millis: ${current}

TC6
    ${current}    Get Current Date    result_format=DateTime
    Log To Console    display year only : ${current}  
 
TC7
    ${current}    Get Current Date    result_format=DateTime
    Log To Console    display month only :${current.month}
    Log To Console    display day only :${current.day} 