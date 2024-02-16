*** Settings ***
Documentation  A test suite to check if the website will not open without the "/interview" route
# Here the resource file is called to allow the test just call the function name for all the tests that it need to.
Resource  ../resources/resources.robot
Suite Setup         openBrowseWrongUrl
Suite Teardown      closeBrowse

*** Test Cases ***
#Here is a suite name creation with all validations above
WrongUrlValidation
    error404Validation
