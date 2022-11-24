*** Settings ***
Documentation  In this test suite, we are using mylib2 library
Library  mylib2.py

*** Test Cases ***
My Lib2 Test Case
    ${add_result}=    my add func  ${10}  ${20}
    ${sub_result}=    my sub func  ${10}  ${20}
    log to console  \nAdd result is: ${add_result}
    log to console  \nSub result is: ${sub_result}


# Command to run
# robot test_mylib2_testsuite_22.robot