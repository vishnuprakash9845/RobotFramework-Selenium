*** Settings ***
Documentation  We are testing standard library 'screenshot'
Library  Screenshot
Test Setup  take screenshot
Test Teardown  take screenshot

*** Test Cases ***
My Test Case
    [Template]    log to console
    \nHello C
    \nHello C++
    \nHello Java
    \nHello Python


# Command to run
# robot -d results test_screenshot_testsuite_27.robot