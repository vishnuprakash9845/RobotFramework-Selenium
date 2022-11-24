*** Settings ***
Documentation  User keyword which is taking one or more arguments

*** Test Cases ***
My Test Case
    My Own Keyword To Print  \nHello
    My Own Keyword To Print  \nMonday

*** Keywords ***
My Own Keyword To Print
    [Arguments]  ${msg}
    log to console  ${msg}
    log  ${msg}

# Command:
# robot .\test_own_keywords_with_args_testsuite_16.robot