*** Settings ***
Documentation  User defined keywords with variable arguments

*** Test Cases ***
My Test Case
    My Own Keywords  ${10}
    # a=10, b=10, c=[]
    My Own Keywords  ${10}  ${20}
    # a = 10, b= 20, c=[]
    My Own Keywords  ${10}  ${20}   ${30}   ${40}
    # a =10, b=20, c=[30,40]

*** Keywords ***
My Own Keywords
    [Arguments]  ${a}   ${b}=${10}     @{c}
    ${result}=  EVALUATE  ${a} + ${b} + sum(${c})
    log to console  \nAdd result is ${result}
    log  \nAdd result is ${result}

# Command:
# robot .\test_own_keywords_with_args_testsuite_18.robot