*** Settings ***
Library    SeleniumLibrary

*** test case ***
amri

    open browser    https://www.amazon.in/b?node=6967393031    edge 
    Maximize Browser Window
    Capture Page Screenshot
    Sleep    4
    Close Browser