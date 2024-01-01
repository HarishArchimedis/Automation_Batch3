*** Settings ***
Library    String
*** Variables ***
${r}    Apple    Banana
${z}    abi    amri
${ED}    GOAT    LION

*** Test Cases ***
case 2
    # ${B}    Convert To Lower Case    ${r}
    # Log    ${B}
    # ${c}    Convert To Upper Case    ${r}
    # Log    ${c}
    # ${t}    Convert To Title Case    ${r}
    # log    ${t}
    # ${f}    Fetch From Right    ${z}    abi
    # Log    ${f}
    # ${rs}    Remove String    amri    a
    # Log    ${rs}
    # ${ss}    Split String    abi 
    # log    ${ss}
    # ${Uc}    Should Be Upper Case    ABI
    # Log    {Uc}
    # ${sr}    Split String From Right    ${z}
    # Log    ${sr}
    # ${tc}    Should Be Title Case    ${ED}
    # Log    ${tc}
    # ${sl}    Split To Lines    amritha abi
    # Log    ${sl}
    # Should Be Unicode String    abi    amritha
    # ${a1}    Set Variable    1234
    # ${num}    Convert To Integer    ${a1}
    # # ${b1}    Set Variable    abcd
    # Should Not Be String    ${num}
    

${temp} =    Convert To Bytes    109876   hex
