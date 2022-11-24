*** Settings ***
Documentation  We are testing DateTime standard library
Library  DateTime

*** Test Cases ***
My Date Time Test Case
    ${date1}=   Get Current Date
    log to console  \nCurrent Date: ${date1}

    ${date2}=  set variable  2022-11-22 10:07:00
    ${result}=  Subtract Date From Date  ${date1}  ${date2}
    log to console  \nDate Difference: ${result}


# Command to run
# robot -d results test_date_time_testsuite_29.robot
