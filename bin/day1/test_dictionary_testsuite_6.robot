*** Settings ***
Documentation  In this test suite we are testing dictionary

*** Variables ***
&{my_courses}   course1=Python      course2=Java    course3=C++

*** Test Cases ***
My Dictionary Test
    log to console  \nDictionary is: &{my_courses}
    log  \nDictionary is: &{my_courses}

    log to console  1st course name ${my_courses}[course1]
    log  1st course name ${my_courses}[course1]

#  Run below command
# robot .\test_dictionary_testsuite_6.robot