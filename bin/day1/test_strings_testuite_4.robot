*** Settings ***
Documentation  In this test suite we are testing or discussing about strings

*** Variables ***
${a}    10
${b}    robot

*** Test Cases ***
My String Test Case
    log to console  \n Value of a is ${a}\n and Value of b is ${b}
    log to console  \n Character at 0th index ${b}[${0}]
    log to console  \n Character at 1st index ${b}[${1}]
    log to console  \n Character at 1st index ${b}[${1}:${4}]
    log    \n Value of a is ${a}\n and Value of b is ${b}
    log    \n Character at 0th index ${b}[${0}]
    log    \n Character at 1st index ${b}[${1}]
    log    \n Character at 1st index ${b}[${1}:${4}]

# Run below command to execute this test suite
# robot .\test_strings_testuite_4.robot