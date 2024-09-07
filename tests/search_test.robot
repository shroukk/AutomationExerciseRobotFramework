*** Settings ***
Library           SeleniumLibrary
Resource          ../resources/keywords.robot
Variables         ../variables/credentials.py
Suite Setup       Open Browser To Home Page
Suite Teardown    Close Browser



*** Test Cases ***
Search Product on Automation Exercise
    [Documentation]    Test to search for a product on automationexercise.com and verify results.
    Verify Home Page Title
    Click On Products Button
    Verify User Navigated to ALL Products Page
    Enter Product Name And Click Search
    Verify Searched Products Are Visible
    Verify Product Related To Search Is Visible


