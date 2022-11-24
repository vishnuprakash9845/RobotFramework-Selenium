*** Settings ***
Documentation  We are testing conditional statement 'if'

*** Variables ***
${x}    ${10}

*** Test Cases ***
My If Test Case 1
    IF  ${x} == ${10}
        log to console  \nValue is 10
    END


My If Test Case 2
    IF  ${x} == ${10}
        log to console  \nValue is 10
    ELSE
        log to console  \nValue is NOT equal to 10
    END


My If Test Case 3
    IF  ${x} == ${10}
        log to console  \nValue is 10
    ELSE IF     ${x} > ${10}
        log to console  \nValue is greater than 10
    ELSE
        log to console  \nValue is less than 10
    END


# Command to run
# robot -d results test_if_stmt_testsuite_25.robot