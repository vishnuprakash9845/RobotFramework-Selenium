*** Settings ***
Documentation  In this test suite we are discussing about
...             force tags  which applies to all test cases
Force Tags  Sanity


*** Test Cases ***
My Test Case 1
    [Tags]  regression
    log to console  \nThis is test case 1
    log  \nThis is test case 1

My Test Case 2
    [Tags]  regression
    log to console  \nThis is test case 2
    log  \nThis is test case 2

My Test Case 3
    [Tags]  smoke
    log to console  \nThis is test case 3
    log  \nThis is test case 3

# Run below commands
# robot -i sanity .\test_forcetags_testsuite_8.robot