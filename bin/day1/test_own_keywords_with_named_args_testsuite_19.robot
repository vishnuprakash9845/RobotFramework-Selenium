*** Settings ***
Documentation  Writing own keyword which takes named argument or keyword arguments
Library  Collections

*** Test Cases ***
My Test Case
    My Own Keyword  a=${10}     b=${20}     x=${30}     y=${40}
    # c={x:30, y:40}

*** Keywords ***
My Own Keyword
    [Arguments]  ${a}=  ${b}=${10}  &{c}
    ${values}=  get dictionary values  ${c}
    ${result}=  evaluate  ${a} + ${b} + sum(${values})
    log to console  \nAdd result is ${result}
    log  \nAdd result is ${result}

# Command:
# robot .\test_own_keywords_with_named_args_testsuite_19.robot