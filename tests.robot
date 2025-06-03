*** Settings ***
Library    QWeb
Library    QForce
Library    DataDriver    reader_class=TestDataApi    name=Contacts.xlsx

Suite Setup       Open Browser        about:blank     Chrome
Suite Teardown    Close All Browsers
Test Template     Example Test

*** Test Cases ***
Example Test with ${First Name} ${Last Name} ${Lead Sorce} ${Mobile} ${Mailing City} ${Mailing Country}

*** Keywords ***
Example Test
    [Arguments]    ${First Name}    ${Last Name}    ${Lead Sorce}    ${Mobile}    ${Mailing City}    ${Mailing Country}
    # Your tests here, this is just an example
    # just use the values from excel using variable names
    GoTo               ${devurl}
    TypeText           Username              ${devusername}
    TypeText           Password              ${devpassword}
    ClickText          Log In
    LaunchApp          Sales
    ClickText          Contacts
    ClickText          New
    UseModal                    On
    TypeText           First Name            ${First Name}
    TypeText           Last Name             ${Last Name}
    PickList           Lead Source           ${Lead Sorce}
    TypeText           Mobile                ${Mobile}
    TypeText           Mailing City          ${Mailing City}
    TypeText           Mailing Country       ${Mailing Country}
    ClickText          Save                  anchor=2
    UseModal           Off
    

  