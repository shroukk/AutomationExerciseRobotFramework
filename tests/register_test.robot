*** Settings ***
Library           SeleniumLibrary
Resource          ../resources/keywords.robot
Variables         ../variables/credentials.py
Suite Setup       Open Browser To Registration Page
Suite Teardown    Close Browser

*** Test Cases ***


# Test Case 1: Successful User Registration
Successful Registration Test
    [Documentation]    This test case verifies that a new user can successfully register by filling out the registration form.
    Enter Registration Details page1
    Enter Registration Details page2
    Submit Registration
    Verify Registration Successful

# Test Case 2: Successful User Registration
Registration With Existing Email Test
    [Documentation]    This test case verifies that registration fails when trying to register with an email that already exists in the system.
    Enter Registration Details page1    ${USER_NAME}    ${USER_EMAIL}
    Verify Registration Failed
