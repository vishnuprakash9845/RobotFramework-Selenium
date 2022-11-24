*** Settings ***
Documentation  In this test suite we are testing variables
...             present in myvariables.py
variables  myvariables.py

*** Test Cases ***
My Variable File Test Case
    log to console  \nValue of a is: ${a}
    log to console  \nValue of b is: ${b}
    log to console  \nValue of c is: ${c}
    log to console  \nValue of d is: ${d}

# Command to run
# robot test_variable_file_test_suite.robot