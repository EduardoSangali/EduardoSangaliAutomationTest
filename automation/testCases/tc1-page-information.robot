*** Settings ***
Documentation  A test suite to check if all job experiences are being displayed as expected
# Here the resource file is called to allow the test just call the function name for all the tests that it need to.
Resource  ../resources/resources.robot
Suite Setup         openBrowse
Suite Teardown      closeBrowse

*** Test Cases ***
#Here is a suite name creation with all validations above
JobValidation
    ambevExperienceTextValidation
    daitanExperienceTextValidation
    gftExperienceTextValidation
    fitExperienceTextValidation


