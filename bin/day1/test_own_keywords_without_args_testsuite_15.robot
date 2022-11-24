*** Settings ***
Documentation  Here we are writing our own keyword which is not taking
...            any arguments

*** Test Cases ***
My Test Case
    My Keyword 1

*** Keywords ***
My Keyword 1
    log to console  \nThis is my keyword 1
    log  \nThis is my keyword 1

# Command:
# robot .\test_own_keywords_without_args_testsuite_15.robot