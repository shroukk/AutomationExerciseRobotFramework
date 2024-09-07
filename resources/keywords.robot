*** Settings ***
Documentation       Automation Practice Test Suite
Library             SeleniumLibrary
Resource            ../resources/keywords.robot
Variables            ../variables/credentials.py
Resource            ../resources/locators.robot



*** Keywords ***

Open Browser To Registration Page
    Open Browser    https://automationexercise.com/login    chrome
    Maximize Browser Window

Enter Registration Details page1
    [Arguments]    ${USER_NAME}    ${USER_EMAIL}
    Input Text    ${REGISTER_NAME_FIELD}           ${USER_NAME}
    Input Text    ${REGISTER_EMAIL_FIELD}          ${USER_EMAIL}
    Click Button  ${SIGNUP_BUTTON}

Enter Registration Details page2
    Input Text    ${REGISTER_PASSWORD_FIELD}       ${USER_PASS}
    Input Text    ${REGISTER_FIRSTNAME_FIELD}      ${USER_FIRSTNAME}
    Input Text    ${REGISTER_LASTNAME_FIELD}       ${USER_LASTNAME}
    Input Text    ${REGISTER_ADDRESS1_FIELD}       ${USER_ADDRESS1}
    Select From List By Value    ${REGISTER_COUNTRY_FIELD}    ${USER_COUNTRY}
    Input Text    ${REGISTER_STATE_FIELD}          ${USER_STATE}
    Input Text    ${REGISTER_CITY_FIELD}           ${USER_CITY}
    Input Text    ${REGISTER_ZIPCODE_FIELD}        ${USER_ZIPCODE}
    Input Text    ${REGISTER_MOBILE_FIELD}         ${USER_MOBILE}

Submit Registration
    Click Button    ${REGISTER_BUTTON}

Verify Registration Successful
    Element Should Be Visible    ${REGISTER_SUCCESS_MESSAGE}
    Element Should Contain    ${REGISTER_SUCCESS_MESSAGE}   ${success_text}
    
Verify Registration Failed
    Element Should Be Visible    ${REGISTER_FAILURE_MESSAGE}
    Element Should Contain    ${REGISTER_FAILURE_MESSAGE}   ${fail_text}


# Login Keywords
Open Browser To Login Page
    Open Browser    https://automationexercise.com/login

Enter Login Credentials
    [Arguments]    ${username}    ${password}
    Input Text    ${LOGIN_USERNAME_FIELD}    ${username}
    Input Text    ${LOGIN_PASSWORD_FIELD}    ${password}

Click Login
    Click Button    ${LOGIN_BUTTON}

Verify Logged In As Username
    [Arguments]    ${username}
    Element Should Contain    ${WELCOME_MESSAGE_ELEMENT}   Logged in as ${username}

Verify Login Successful
    Element Should Be Visible    ${WELCOME_MESSAGE_ELEMENT}

Verify Login Failed
    Element Should Be Visible    ${LOGIN_ERROR_MESSAGE}

Login As Valid User
    Enter Login Credentials    ${VALID_USERNAME}    ${VALID_PASSWORD}
    Click Login
    
Login As Invalid User
    Enter Login Credentials    ${INVALID_USERNAME}    ${INVALID_PASSWORD}
    Click Login


# Logout Keywords
Logout User
    Click Link    ${LOGOUT_BUTTON}

Verify User Navigated To Login Page
    Location Should Be    ${LOGIN_PAGE_URL}



# contact us Keywords

Launch Browser And Navigate To URL
    Open Browser    http://automationexercise.com    chrome
    Maximize Browser Window

Verify Home Page Is Visible
    Element Should Be Visible    ${HOME_PAGE_ELEMENT}

Click On Contact Us Button
    Click Link    ${CONTACT_US_BUTTON}

Verify Get In Touch Is Visible
    Element Should Be Visible    ${GET_IN_TOUCH_ELEMENT}

Fill Contact Us Form
    Input Text    ${CONTACT_NAME_FIELD}    ${CONTACT_NAME}
    Input Text    ${CONTACT_EMAIL_FIELD}   ${CONTACT_EMAIL}
    Input Text    ${CONTACT_SUBJECT_FIELD}    ${CONTACT_SUBJECT}
    Input Text    ${CONTACT_MESSAGE_FIELD}    ${CONTACT_MESSAGE}

Upload File
    Choose File    ${CONTACT_UPLOAD_FIELD}    ${FILE_PATH}

Submit Contact Us Form
    Click Button    ${CONTACT_SUBMIT_BUTTON}

Confirm Submission
    Handle Alert    ACCEPT

Verify Success Message Is Visible
    Element Should Be Visible    ${SUCCESS_MESSAGE_ELEMENT}

Click Home Button
    Click Element    ${HOME_BUTTON}

Verify Landed On Home Page
    Element Should Be Visible    ${HOME_PAGE_ELEMENT}
    Location Should Be    ${HOME_PAGE_URL}
