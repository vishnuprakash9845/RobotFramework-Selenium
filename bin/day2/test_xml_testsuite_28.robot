*** Settings ***
Documentation  We are testing 'xml' standard library
Library  XML
Library  OperatingSystem
Library  Collections

*** Test Cases ***
My XML Parse Test

    ${my_xml}=  get file  my_test.xml
    log to console  \nXML File Content:\n\n${my_xml}\n\n

    ${root}=  PARSE XML  ${my_xml}
    log to console  \nROOT is: ${root}
    log to console  \nROOT Tag is: ${root.tag}
    should be equal  ${root.tag}    mycourse

    ${name}=  get element   ${root}     name
    log to console  \nName object reference: ${name}
    log to console  \nName is: ${name.text}
    should be equal  ${name.text}   Robot Framework

    log to console  \nName Attribute is: ${name.attrib}
    dictionary should contain key  ${name.attrib}  id

    element text should be  ${name}     Robot Framework
    element attribute should be  ${name}    id  1


# Command to run
# robot -d results test_xml_testsuite_28.robot