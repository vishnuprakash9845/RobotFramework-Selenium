*** Settings ***
Documentation  In this file we are testing for loop
Metadata  For loop test Version 1.0
*** Variables ***
@{my_list}      100     200     300
&{my_dict}      a=${100}    b=${200}    c=${300}

*** Test Cases ***
My List Test Case 1
    [Documentation]  print each value present in list
    FOR     ${i}    IN  @{my_list}
        log to console  \nValue of i is: ${i}
    END

My List Test Case 2
    [Documentation]  If value is 300 then break the loop
    FOR     ${i}    IN  @{my_list}
        IF  ${i} == 300
            BREAK
        END
        log to console  \nValue of i is: ${i}
    END


My List Test Case 3
    [Documentation]  In between we can send for next iteration using 'continue'
    FOR  ${i}  IN  @{my_list}
        IF  ${i} == 200
            CONTINUE
        END
        log to console  \nValue of i is: ${i}
    END

My List Test Case 5
    [Documentation]  We can use ENUMERATE to make (index, value) pair
    FOR  ${i}  ${j}  IN ENUMERATE  @{my_list}
        log to console  \nIndex is: ${i} and value is: ${j}
    END


My List Test Case 6
    [Documentation]  We can use zip to make pair of 2 or more lists like [(100,100), (200, 200)]
    FOR  ${i}  ${j}  IN ZIP  ${my_list}  ${my_list}
        log to console  \nValue of i is: ${i} and Value of j is: ${j}
    END


My Dictionary Test Case 1
    [Documentation]  We can iterate through keys
    FOR  ${item}  IN  &{my_dict}
        log to console  \n Item is: ${item}
    END


My Dictionary Test Case 2
    [Documentation]  we can iterate through key and values
    FOR  ${k}  ${v}  IN  &{my_dict}
        LOG TO CONSOLE  \nKey is: ${k} and value is: ${v}
    END


# Command to run
# robot -d results test_for_loop_testsuite_23.robot