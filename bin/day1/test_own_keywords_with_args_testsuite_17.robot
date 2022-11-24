*** Settings ***
Documentation  We can provide default values to the arguments

*** Test Cases ***
My Test Case
    My Own Keyword  ${10}
    My Own Keyword  ${10}  ${20}


*** Keywords ***
My Own Keyword
    [Arguments]  ${a}   ${b}=${10}
    ${result}=  evaluate  ${a} + ${b}
    log to console  \nAdd result is ${result}
    log  \nAdd result is ${result}

# Command:
# robot .\test_own_keywords_with_args_testsuite_17.robot