*** Settings ***
Documentation  We are discussing about 'Default Tags'.
...             Deafault tags will be applied when no [Tags] in
...             each test case
Default Tags  Sanity


*** Test Cases ***
My Test Case 1
    [Tags]  regression
    log to console  \nThis is test case 1
    log  \nThis is test case 1

My Test Case 2
    [Documentation]  Deafult tags will be used here
    log to console  \nThis is test case 2
    log  \nThis is test case 2

My Test Case 3
    [Tags]  smoke
    log to console  \nThis is test case 3
    log  \nThis is test case 3

# Run below commands
# robot -i sanity .\test_default_tags_testsuite_9.robot