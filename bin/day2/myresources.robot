*** Settings ***
Documentation  In this file we are keeping Variables, keywords
...             which we need to use it in more than one file or
...             more than test suite

*** Variables ***
${host}     192.168.13.10
${port}     1234

*** Keywords ***
My SSH Keyword
    log to console  \nThis is MySSH keyword in resource file
    log  \nThis is MySSH keyword in resource file