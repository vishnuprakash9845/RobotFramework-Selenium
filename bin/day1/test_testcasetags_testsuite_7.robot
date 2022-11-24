*** Settings ***
Documentation  In this test suite, we are learning tags in test cases

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
# robot -e regression .\test_testcasetags_testsuite_7.robot
# robot -i regression .\test_testcasetags_testsuite_7.robot