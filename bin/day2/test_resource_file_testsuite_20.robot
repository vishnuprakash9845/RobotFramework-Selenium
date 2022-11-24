*** Settings ***
Documentation  In this test suite we are using myresources.robot
...             resource file
Resource  myresources.robot

*** Test Cases ***
My Test Case
    log to console  \nHost is: ${host}
    log to console  \nPort is: ${port}
    My SSH Keyword

# Command:
# robot .\test_resource_file_testsuite_20.robot