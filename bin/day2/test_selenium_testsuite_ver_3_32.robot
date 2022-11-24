*** Settings ***
Documentation  We are testing 'invalid login' for the website 'https://www.saucedemo.com/'
...             using selenium library
Library  SeleniumLibrary
Library  DataDriver     my_data.csv
Metadata  Version 3
Test Template   My Invalid Login Keyword

*** Test Cases ***
My Test Case

*** Keywords ***
My Invalid Login Keyword
    [Arguments]  ${username}    ${password}
    open browser        https://www.saucedemo.com/      chrome
    Maximize Browser Window
    Input Text  name:user-name  ${username}
    Input Password  name:password   ${password}
    Click Button  xpath://*[@id="login-button"]
    Page Should Contain     Epic sadface

# Command to run
# robot -d results test_selenium_testsuite_ver_3_32.robot