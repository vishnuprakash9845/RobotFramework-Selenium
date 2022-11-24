*** Settings ***
Documentation  Based on the condition if we want to execute the loop

*** Test Cases ***
My While Loop Test 1
    [Documentation]  Print numbers from 1 to 10
    ${i}=  set variable  ${1}
    WHILE  ${i} <= ${10}
        log to console  \nValue is: ${i}
        ${i}=   EVALUATE  ${i}+${1}
    END

My While Loop Test 2
    [Documentation]  Print numbers from 1 to 10
    ${i}=  set variable  ${1}
    WHILE  ${i} <= ${10}
        IF  ${i} == ${5}
            BREAK
        END

        log to console  \nValue is: ${i}
        ${i}=   EVALUATE  ${i}+${1}
    END

My While Loop Test 3
    [Documentation]  using 'continue' print only even numbers

    ${i}=  set variable  ${1}
    WHILE  ${i} <= ${10}
        IF  ${i}%${2} != ${0}
            ${i}=  EVALUATE  ${i} + ${1}
            CONTINUE
        END
        log to console  Even Value Is: ${i}
        ${i}=  EVALUATE  ${i} + ${1}
    END

# Command to run
# robot -d results test_while_loop_testsuite_24.robot