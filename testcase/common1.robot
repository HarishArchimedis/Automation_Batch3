*** Settings ***
Library    SeleniumLibrary
Resource    
Variables    
Suite Setup    Log    harish
Suite Teardown    Log    harish2
Test Setup
Test Teardown
Test Template
Documentation    
Test Timeout    
*** Variables ***

*** Keywords ***


*** Test Cases ***
tc01
    
    # ${list1}    Create List    a    b    c
    # Log    ${list1}
    # ${dic}    Create Dictionary    name=harish    id=1234    apple=true  
    # Log    ${dic}  
    # ${scalar}    Set Variable    dvdd
    # Set Test Variable    gg
    # ${fsds}    Set Global Variable    gjhj

    # FOR    ${element}    IN    @{list1}
    #      Log    ${element}
        
    # END

    # FOR    ${counter}    IN RANGE    1    11    2
    #     Log    ${counter}
        
    # END

    # FOR    ${index}    ${element}    IN ENUMERATE    @{LIST}
    #     Log    ${index}: ${element}
        
    # END
    ${list1}    Create List    a    b    c
    ${list2}    Create List    1    2    3

    FOR    ${l1-element}    ${l2-element}    IN ZIP    ${list2}    ${list1}
        Log    ${l1-element} - ${l2-element}
        
        
    END




tc02
    Log To Console    dvvdvv

tc03
    



    
