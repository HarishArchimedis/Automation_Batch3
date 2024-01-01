*** Settings ***

*** Test Cases ***


*** Variables ***

${r}    Set Global Variable    account


*** Test Cases ***
Create
    
    # ${var}    Set Variable    567

    # ${spl}    Convert To Binary    ${var}
    # Log    ${spl}

    # ${boolean}    Convert To Boolean    ${var}
    # Log    ${boolean}

    # ${spl2}    Convert To Bytes    ${var}
    # Log    ${spl2}

    #  ${spl3}    Convert To Hex    ${var}
    # Log    ${spl3}

    # ${rr}    Create List    a    b    b    c

    # ${rr2}    Get Length    ${rr}
    # Log    {rr2}

    # Log To Console    ${rr}

    # Log Variables

    # ${rr3}    Get Variable Value    ${var}
    # Log    ${rr3}

    # ${rr4}    Get Variables
    # Log    ${rr4}

    # ${t}    Set Library Search Order
    # Log    ${t}

    ${LIST}    Create List    aa    bb    cc    dd


    FOR    ${count1}    IN RANGE    0    20    2
        IF    ${count1} == 10

        Continue For Loop
        Log   ${count1}

        END
        
    END