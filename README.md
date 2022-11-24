
# RobotFramework Training on 21st and 22nd November 2022

Basics of RobotFramework and running the tests from it


## Contents

### Day-1
  1. Console and Log to Console
  2. Provide Description about this test suite
  3. About scalars in robot frameworks
  4. Discussing about strings
  5. Discussing about list
  6. Testing dictionary
  7. Learning tags in test cases
  8. Force tags  which applies to all test cases
  9. Deafault tags will be applied when no [Tags] in each test case
  10. Setup and Teardown inside each test case
  11. Test Setup' and 'Test TearDown' will execute if [setup]/[teardown] tags are missing in test case
  12. Suite Setup and Suite Teardown
  13. Template tag in test case will be used to mention 'keyword' to be executed for the each arguments provided in test cases
  14. Test template will be applied if '[temlate]' not present in each test case
  15. Here we are writing our own keyword which is not taking any arguments
  16. User keyword which is taking one or more arguments
  17. We can provide default values to the arguments
  18. User defined keywords with variable arguments
  19. Writing own keyword which takes named argument or keyword arguments


### Day-2
20. In this test suite we are using myresources.robot resource file
21. In this test suite, we are using mylib1 library
22. In this test suite, we are using mylib2 library
23. In this file we are testing For loop
24. Based on the condition if we want to execute the While loop
25. We are testing conditional statement 'if'
26. In this test suite we are testing exceptions handling
27. We are testing standard library 'screenshot'
28. We are testing 'xml' standard library
29. We are testing DateTime standard library
30. Version-1 (Normal) : We are testing 'invalid login' for the website 'https://www.saucedemo.com/' using selenium library
31. Version-2 (Using Test Template): We are testing 'invalid login' for the website 'https://www.saucedemo.com/' using selenium library
32. Version-3 (Using CSV) : We are testing 'invalid login' for the website 'https://www.saucedemo.com/' using selenium library
33. Version-4 (Using excel) : We are testing 'invalid login' for the website 'https://www.saucedemo.com/' using selenium library
34. To execute tests in parallel : Install pabot and run command -> pabot --processes 2 test*.robot