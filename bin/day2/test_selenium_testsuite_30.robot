*** Settings ***
Documentation  We are testing 'invalid login' for the website 'https://www.saucedemo.com/'
...             using selenium library
Library  SeleniumLibrary
Metadata  Version 1

*** Variables ***
${inputElement}    xpath://*[@id="login-button1"]

*** Test Cases ***
My Invalid Login Test Case
    open browser        https://www.saucedemo.com/      chrome
    Maximize Browser Window
    Input Text  name:user-name  standard_user
    Input Password  name:password   xyz
    Click Button  xpath://*[@id="login-button"]
    Page Should Contain     Epic sadface
    Press Key    name:user-name    \\01
    Press Key    name:user-name    \\127
    wait until keyword succeeds    10s    2s    click element    ${inputElement}
    Close Browser

# Command to run
# robot -d results test_selenium_testsuite_30.robot