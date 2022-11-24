*** Settings ***
Documentation  We are testing 'invalid login' for the website 'https://www.saucedemo.com/'
...             using selenium library
Library  SeleniumLibrary
Library  DataDriver     my_data.xlsx   sheet_name=Sheet1
Metadata  Version 4
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
    Close Browser


# Command to run
# robot -d results test_selenium_testsuite_ver_4_33.robot