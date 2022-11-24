*** Settings ***
Documentation  'Test Setup' and 'Test TearDown' will execute if [setup]/[teardown]
...             tags are missing in test case
Test Setup  log to console  \nThis is TEST SETUP
Test Teardown  log to console   \nThis is TEST TEARDOWN

*** Test Cases ***
My Test Case 1
    [Setup]  log to console  \nThis is Test Case 1 Setup
    [Teardown]  log to console  \n This is Test Case 1 Teardown
    log to console  \nThis is test case 1
    #log  \nThis is test case 1

My Test Case 2
    [Documentation]  Test Teardown will execute from settings section
    [Setup]  log to console  \nThis is Test Case 2 Setup
    log to console  \nThis is test case 2
    #log  \nThis is test case 2

My Test Case 3
    [Documentation]  Test Setup will execute from settings section
    [Teardown]  log to console  \n This is Test Case 3 Teardown
    log to console  \nThis is test case 3
    #log  \nThis is test case 3

My Test Case 4
    [Documentation]  Here [Setup] present which does NOTHING
    [Setup]
    [Teardown]  log to console  \n This is Test Case 3 Teardown
    log to console  \nThis is test case 3
    #log  \nThis is test case 3

# Command is
# robot .\test_testsetup_testsuite_11.robot