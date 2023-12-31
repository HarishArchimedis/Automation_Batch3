*** Settings ***
Library    SeleniumLibrary
Library    Collections

*** Test Cases ***
tt
    # ${sel}    Create List    Java    Python    Robot

    # FOR    ${el}    IN    @{sel}
    #     ${ee}    Set Variable    ${el} selenium
        
    # END

    ${di}    Create Dictionary    abitha=dec21    #amritha=mar03    gayathri=mar31    keerthana=jan03
    log    ${di}
    # ${di11}    Get Dictionary Items    ${di} 
    # Log    ${di11}    
    # ${di12}    Get Dictionary Keys    ${di}
    # Log    ${di12}
    # ${di13}    Get Dictionary Values    ${di}
    # Log    ${di13}
    # ${di14}    Get From Dictionary    ${di}    gayathri
    # Log    ${di14}
    # Log Dictionary    ${di}
    # ${di2}    Set To Dictionary    ${di}    keerthi=feb25
    # Log    ${di2}

    # ${di15}    Log Dictionary    ${di2}
    # Log    ${di15}   

    # Pop From Dictionary    ${di2}    keerthi
    

