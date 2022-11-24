*** Settings ***
Documentation  '[setup]' and '[teardown]' inside each test case where
...             '[setup]' will run before executing the testcase and
...             'teardown' will run after executing the test case


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

# Run the below commands
# robot .\test_setup_testsuite_10.robot