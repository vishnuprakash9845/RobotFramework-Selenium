*** Settings ***
Documentation   In this test suite we are discussing about scalars in robot frameworks


*** Variables ***
${a}    ${10}

*** Test Cases ***
My Test Case
    [Documentation]  In this test case we are testing scalar variable
    log to console  \nValue of a is ${a}
    log  \nValue of a is ${a}