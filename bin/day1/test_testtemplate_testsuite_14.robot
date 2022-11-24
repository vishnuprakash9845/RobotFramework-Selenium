*** Settings ***
Documentation  'test template' will be applied if '[temlate]' not present
...             in each test case
Test Template  log


*** Test Cases ***
My Test Case 1
    [Documentation]  Without using any template we are printing all the course
    ...                 names. It will not make use of 'Test Template'
    [Template]
    log to console  \nPython
    log to console  \nJava
    log to console  \nPerl
    log to console  \nC++

My Test Case 2
    [Documentation]  'log to console' keyword will be called for each value
    [Template]    log to console
                  \nPython
                  \nJava
                  \nPerl
                  \nC++

My Test Case 3
    [Documentation]  'Test Template will be used'
    \nHi
    \nHello

My Test Case 4
    [Documentation]  'Test Template will be used'
    \nHi
    \nHello


# Command to execute
# robot .\test_testtemplate_testsuite_14.robot