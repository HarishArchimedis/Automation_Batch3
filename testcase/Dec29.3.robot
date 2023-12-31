*** Settings ***
Library    SeleniumLibrary

Resource   
Variables    ../Data/Data.py

# *** Variables ***
# ${uu}    https://www.saucedemo.com/v1/
# ${CC}    chrome
# ${ii}    //input[@id='user-name']
# ${pp}    //input[@id='password']
# #${ps}    secret_sauce  
# ${lg}    //input[@id='login-button']



*** Keywords ***
yyy
    [Arguments]    ${name}    ${password}
    Open Browser    ${uu}    ${CC} 
    Maximize Browser Window
    Input Text    ${ii}    ${name}         
    Input Password    ${pp}    ${password}          
    Click Element    ${lg}          

*** Test Cases ***
wer
    yyy    standard_user    secret_sauce      

  





