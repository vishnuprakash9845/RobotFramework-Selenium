*** Settings ***
Documentation  '[Template]' tag in test case will be used to mention 'keyword'
...         to be executed for the each arguments provided in test cases

*** Test Cases ***
My Test Case 1
    [Documentation]  Without using any template we are printing all the course
    ...                 names
    log to console  \nPython
    log to console  \nJava
    log to console  \nPerl
    log to console  \nC++

My Test Case 2
    [Documentation]  'log to console' keyword will be called for each value
    [Template]  log to console
                \nPython
                \nJava
                \nPerl
                \nC++

My Test Case 3
    [Template]  log to console
                \nHi
                \nHello


# Command:
# robot .\test_template_testsuite_13.robot