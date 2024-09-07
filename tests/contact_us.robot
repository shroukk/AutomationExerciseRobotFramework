*** Settings ***
Library           SeleniumLibrary
Resource          ../resources/keywords.robot
Variables         ../variables/credentials.py
Suite Setup       Launch Browser And Navigate To URL
Suite Teardown    Close Browser

*** Test Cases ***
# Test Case: Contact Us Form Submission
Contact Us Form Submission Test
    [Documentation]    This test case verifies the contact us form submission process, including file upload and success message verification.
    Verify Home Page Is Visible
    Click On Contact Us Button
    Verify Get In Touch Is Visible
    Fill Contact Us Form
    Upload File
    Submit Contact Us Form
    Confirm Submission
    Verify Success Message Is Visible
    Click Home Button
    Verify Landed On Home Page
