*** Settings ***
Library    SeleniumLibrary
Library    Collections

*** Variables ***


*** Keywords ***


*** Test Cases ***
Task
    @{LIS}    Create List    U1    U2    U3    U4    U5
    ${RES}    Create Dictionary    name=facepalm    count=1034    users=@{LIS}
    Log    ${RES}

    @{LIS2}    create list    U1    U2    U3
    ${RES2}    Create Dictionary    name=astonished    count=3    users=@{LIS2}    reaction=${RES} 
    Log    ${RES2}
    
    @{LIS3}    Create List    C0224BE7T    ....
    ${RES3}    Create Dictionary    type=message    channel=C2147483705    user=U2147483679    text=Hello world    ts=1355517523.00005    is_starred=True    pinned_to=@{LIS3}    reactions=${RES2}        
    Log    ${RES3}   

 task2
     ${t2}    Create Dictionary
     @{t3}    Create List    Burgers    Fast Food    Restaurants
     @{t4}    Create List    
     Create Dictionary    business_id=PK6aSizckHFWK8i0oxt5DA    fill_address=400 waterfront Dr E/nHomestead\nnHomestand, PA 15120    hours=${t2}    open=True    categories=@{t3}    city=nHomestead    review_count=5    name=McDonald's    neighborhoods=@{t4} 