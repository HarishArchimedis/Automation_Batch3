*** Settings ***
Library    SeleniumLibrary
Library    Collections

Resource    ../resource/commanfuc.robot

*** Variables ***
${rbm}    Set Global Variable    actual

*** Test Cases ***
tc_to_createlist
    [Tags]    list

    ${userlist}    Create List    abitha    amritha    agasthiya    haarika    monica 

    ${length}=    Get Length    ${userlist}

    ${count}=    Get Count    ${userlist}    agasthiya

    Log To Console    length of list :${userlist} 

    Log    ${userlist}

    Log Many    welcome${userlist}

    Log Variables    level=Info

    Length Should Be    agasthiya    9

    ${nuser}    Get Variable Value    ${userlist}

    Log    ${userlist}

    ${sor}    Get Variables      
    
    Log    ${sor}

    Set Local Variable    ${rbm}    wings  

    Log    ${rbm}

    # ${rrbn}    Set Task Variable    reports

    # Log    ${rrbn}
    
    ${num}    Set Variable    45

    ${c1}    Convert To Binary    ${num}

    Log    ${c1}

    ${c2}    Convert To Bytes    ${num}
    Log    ${c2}

    ${c3}    Convert To Hex    ${num}
    Log    ${c3}

    ${c4}    Convert To Boolean    ${num}
    Log    ${c4}

    ${num1}    Set Variable    23.9

    Log    ${num1}

    ${int1}    Convert To Integer    101    2

    Log    ${int1}

    FOR    ${element}    IN    @{userlist}
        IF    $element == 'amritha' 

            Continue For Loop    
        END
        Log    ${element}
        
    END
    
    FOR    ${count}    IN RANGE    1    9    2    
        IF    ${count} == 3

            Continue For Loop
            
        END
        Log    ${count}
        
    END

    ${orders}    Create Dictionary    orderno=67    date=01-01-2024    trackingno=TN0039291    custid=11045    customername=suehatfield 

    Log    ${orders}   
    ${len}    Get Length    ${orders}   
    Log    ${len}  

    ${ITEM}    Get Dictionary Items    ${orders}
    Log    ${ITEM}

    ${keys}    Get Dictionary Keys    ${orders}
    Log    ${keys}

    ${Value}    Get Dictionary Values    ${orders}
    Log    ${Value}

    ${odic}    Get From Dictionary    ${orders}    orderno

    Log    ${odic}      

    ${addic}    Set To Dictionary    ${orders}    city=chennai  

    Log    ${addic}  

    # Dictionaries Should Be Equal    ${orders}    ${ITEM}  

    ${dic1}    Create Dictionary    name=gayathri

    Log    ${dic1}

    ${dic2}    Create Dictionary    name=gayathri

    Dictionaries Should Be Equal    ${dic1}    ${dic2}

    
