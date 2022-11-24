*** Settings ***
Documentation  In this test suite, we are discussing about list

*** Variables ***
@{my_list}      Java    Python  C   C++

*** Test Cases ***
My List Test Case
    log to console  My list is @{my_list}
    log  My list is @{my_list}

    log to console  1st element is ${my_list}[${0}]
    log  1st element is ${my_list}[${0}]

# Run below command to execute this test suite
# robot .\test_list_testsuite_5.robot