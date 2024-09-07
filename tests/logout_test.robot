*** Settings ***
Library           SeleniumLibrary
Resource          ../resources/keywords.robot
Variables         ../variables/credentials.py
Suite Setup       Open Browser To Registration Page
Suite Teardown    Close Browser

*** Test Cases ***
# Test Case: Logout User
Logout User Test
    [Documentation]    This test case verifies that a logged-in user can successfully log out and is redirected to the login page.
    Login As Valid User
    Verify Login Successful
    Logout User
    Verify User Navigated To Login Page