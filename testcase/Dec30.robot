*** Settings ***
Library    built




*** Test Cases ***
Dictionary

    ${item1}    Create Dictionary    description=quarter    mode=REQUIRED    name=qtr    type=STRING
    log    ${item1}

    ${item2}    Create Dictionary    description=salesrepresentative    mode=NULLABLE    name=rep    type=string    description=${item1}
    log    ${item2}

    ${item3}    Create Dictionary    description=totalsale    mode=nullable    name=sales    type=integer    description=${item2}  
    Log    ${item3}
    ${json_string}=    evaluate    json.dumps($item3)    json
    Log    ${json_string}
