*** Settings ***
Library           SeleniumLibrary
Resource          ../resources/keywords.robot
Variables         ../variables/credentials.py
Suite Setup        Open Browser To Login Page
Suite Teardown    Close Browser


*** Test Cases ***

# Test Case 1: Successful Login with Valid Credentials
Valid Login Test
    [Documentation]    This test case verifies that a user can log in with valid credentials and that the "Logged in as username" message is visible.
    Login As Valid User
    Verify Logged In As Username    ${USERNAME}

# Test Case 2: Unsuccessful Login with Invalid Credentials
Invalid Login Test
    [Documentation]    This test case verifies that a user cannot log in with invalid credentials and that an error message is displayed.
    Login As Invalid User
    Verify Login Failed

# Test Case 3: Attempt Login with Empty Username

