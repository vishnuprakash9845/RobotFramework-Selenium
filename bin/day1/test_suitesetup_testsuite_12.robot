*** Settings ***
Documentation  'Suite Setup' and 'Suite Teardown' where 'Suite Setup' will
...             execute before running ANY testcase and 'Suite Teardown' will
...             execute after runnning ALL the test cases
Suite Setup  log to console     \nThis is Suite setup
Suite Teardown  log to console  \nThis is Suite teardown



*** Test Cases ***
My Test Case 1
    [Setup]  log to console  \nThis is Test Case 1 Setup
    [Teardown]  log to console  \n This is Test Case 1 Teardown
    log to console  \nThis is test case 1
    log  \nThis is test case 1

My Test Case 2
    [Setup]  log to console  \nThis is Test Case 2 Setup
    [Teardown]  log to console  \n This is Test Case 2 Teardown
    log to console  \nThis is test case 2
    log  \nThis is test case 2

My Test Case 3
    [Setup]  log to console  \nThis is Test Case 3 Setup
    [Teardown]  log to console  \n This is Test Case 3 Teardown
    log to console  \nThis is test case 3
    log  \nThis is test case 3

# Command to run
# robot .\test_suitesetup_testsuite_12.robot