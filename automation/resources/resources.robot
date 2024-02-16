#Here is where the library can be imported
*** Settings ***
Library  SeleniumLibrary

#Creation of the variables that can be called as the user want to.
*** Variables ***
${browse}                       chrome
${URL}                          http://localhost:5050/interview
${wrongUrl}                     http://localhost:5050
${ambevJobTitleId}              id:ambev-experience-title
${ambevJobDescriptionId}        id:ambev-experience-description
${daitanJobTitleId}             id:daitan-experience-title
${daitanJobDescriptionId}       id:daitan-experience-description
${gftJobTitleId}                id:gft-experience-title
${gftJobDescriptionId}          id:gft-experience-description
${fitJobTitleId}                id:fit-experience-title
${fitJobDescriptionId}          id:fit-experience-description

#Keywords are the test scenarios that will be called inside the testc case files.
*** Keywords ***
#For these tests we are checking if all job experiences are being displayed on the website.
ambevExperienceTextValidation
    element text should be       ${ambevJobTitleId}             Senior Quality Analyst | AMBEV S.A. (BEES) | 03/2022 to 03/2023
    element text should be       ${ambevJobDescriptionId}       I was responsible for the quality of one module of a mobile application, which was being implemented in several countries expanding the product. For these launches, I collaborated with the development of an automation of a mass data generator (Javascript within POSTMAN) that sped up tasks that would otherwise take hours or even days of work to a couple minutes, contributing greatly to the deadlines and quality in deliveries.

daitanExperienceTextValidation
    element text should be       ${daitanJobTitleId}            SDET (Software Development Engineer in Test) | Daitan | 10/2021 to 02/2022
    element text should be       ${daitanJobDescriptionId}      I was responsible for test automation using Python, in addition to researching the best support framework for the solution in question. I was responsible for coding, executing, documenting and representing everything related to quality of the product. The solution was focused on data analysis (python, pandas, etc.) using Docker.

gftExperienceTextValidation
    element text should be       ${gftJobTitleId}               L2 Test Analyst | GFT | 03/2020 to 09/2021
    element text should be       ${gftJobDescriptionId}         I was responsible for understanding technical documentation focusing on creating the necessary test plan to better cover the functionality in question, creating, documenting and executing test cases (manual and automated) via interface and APIDue to the project I worked on being one of the pioneers in API automation at GFT, I developed text and video training so that employees allocated to projects that may need to automate API can perform this function as expected.

fitExperienceTextValidation
    element text should be       ${fitJobTitleId}               Junior Tester | FIT Institute of Technology | 12/2018 to 03/2020
    element text should be       ${fitJobDescriptionId}         Test executor was my main role, but on occasion, I would work with the creation of test cases and, consequently, the creation of test plans, in addition to the creation of some automations.\nIn 2019 I worked on a project in which I had the opportunity to go to Italy for regression testing with the QA team from Brazil and Italy, working together to finalize the product.\nAlso in 2019 I had the opportunity to go to China on another project, for some workshops as both a conductor and a participant to spread knowledge and learn about testing and QA methodology, among the teams working in this area of the project.

#This test check if when the url is not using the path "interview" at the end, that tha page return a 404 error
error404Validation
    title should be             404 Not Found

#This is a method used to open the browser, and the arguments added to it, are to avoid some Docker execution error.
openBrowse
    ${chrome_options}=  Evaluate  sys.modules['selenium.webdriver'].ChromeOptions()  sys, selenium.webdriver
    Call Method    ${chrome_options}    add_argument    --no-sandbox
    Call Method    ${chrome_options}    add_argument    --headless
    Open Browser    ${URl}              ${browse}       options=${chrome_options}

#This is the same case that the previous one, but inserting the wrong url.
openBrowseWrongUrl
    ${chrome_options}=  Evaluate  sys.modules['selenium.webdriver'].ChromeOptions()  sys, selenium.webdriver
        Call Method    ${chrome_options}    add_argument    --no-sandbox
        Call Method    ${chrome_options}    add_argument    --headless
        Open Browser   ${wrongUrl}          ${browse}       options=${chrome_options}

#This is a method created to close all browsers at the end of the test execution.
closeBrowse
    close all browsers