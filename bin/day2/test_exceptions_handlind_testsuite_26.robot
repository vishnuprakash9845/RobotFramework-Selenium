*** Settings ***
Documentation  In this test suite we are testing exceptions handling

*** Test Cases ***
My Test Case 1
    [Documentation]  Without handling exceptions
    ${x}=  set variable  ${10}
    ${y}=  set variable  ${0}
    ${result}=  EVALUATE  ${x}/${y}
    log to console  \nResult is: ${result}

My Test Case 2
    log to console  \nThis is My Test Case 2

My Test Case 3
    [Documentation]  Handling exceptions
    ${x}=  set variable  ${10}
    ${y}=  set variable  ${0}
    TRY
        ${result}=  EVALUATE  ${x}/${y}
        log to console  \nResult is: ${result}
    EXCEPT
        log to console  Some error in try block, please check test case 3
    END


My Test Case 4
    [Documentation]  Handling exceptions
    ${x}=  set variable  ${10}
    ${y}=  set variable  ${0}
    TRY
        ${result}=  EVALUATE  ${x}/${y}
        log to console  \nResult is: ${result}
    EXCEPT  AS  ${msg}
        log to console  \nSome error in try block, please check test case 4
        log to console  \nReason is: ${msg}
    END

# Command to run
# robot -d results test_exceptions_handlind_testsuite_26.robot