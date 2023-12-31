*** Settings ***
Library    SeleniumLibrary
Library    Collections


*** Variables ***

${r}    Set Global Variable    account


*** Test Cases ***
Create
    
    ${var}    Set Variable    567

    ${spl}    Convert To Binary    ${var}
    Log    ${spl}

    ${spl1}    Convert To Boolean    ${var}
    Log    ${spl1}

    ${spl2}    Convert To Bytes    ${var}
    Log    ${spl2}

     ${spl3}    Convert To Hex    ${var}
    Log    ${spl3}

    ${rr}    Create List    a    b    b    c

    ${rr2}    Get Length    ${rr}
    Log    {rr2}

    Log Many

    Log To Console    ${rr}

    Log Variables

    ${rr3}    Get Variable Value    ${var}
    Log    ${rr3}

    ${rr4}    Get Variables
    Log    ${rr4}

    ${r1}    Set Local Variable    apple
    Log    ${r1}

    Log    ${r}

    ${rrr}    Set Task Variable    report
    Log    ${rrr}

    ${t}    Set Library Search Order
    Log    ${t}

    ${LIST}    Create List    aa    bb    cc    dd

    FOR    ${element}    IN    @{LIST}
        IF    ${element} == dd
            
        
        Continue For Loop
        Log    ${element}

        END

        
    END

    FOR    ${count1}    IN RANGE    0    20    2
        IF    ${count1} == 10

        Continue For Loop
        Log   ${count1}

        END
        
    END








    