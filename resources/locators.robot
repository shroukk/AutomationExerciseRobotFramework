*** Variables ***


# Locators for Registration Page
${REGISTER_NAME_FIELD}            css=[data-qa="signup-name"]
${REGISTER_EMAIL_FIELD}           css=[data-qa="signup-email"]
${SIGNUP_BUTTON}                  css=[data-qa="signup-button"]
${REGISTER_PASSWORD_FIELD}        id=password
${REGISTER_FIRSTNAME_FIELD}       id=first_name
${REGISTER_LASTNAME_FIELD}        id=last_name
${REGISTER_ADDRESS1_FIELD}        id=address1
${REGISTER_COUNTRY_FIELD}         id=country
${REGISTER_STATE_FIELD}           id=state
${REGISTER_CITY_FIELD}            id=city
${REGISTER_ZIPCODE_FIELD}         id=zipcode
${REGISTER_MOBILE_FIELD}          id=mobile_number
${REGISTER_BUTTON}                css=[data-qa="create-account"]
${REGISTER_SUCCESS_MESSAGE}       css=[data-qa="account-created"]
${REGISTER_FAILURE_MESSAGE}       xpath=//*[@id="form"]/div/div/div[3]/div/form/p

# Locators for Login Page
${LOGIN_USERNAME_FIELD}           css=[data-qa="login-email"]
${LOGIN_PASSWORD_FIELD}           css=[data-qa="login-password"]
${LOGIN_BUTTON}                   css=[data-qa="login-button"]
${WELCOME_MESSAGE_ELEMENT}        xpath=//*[@id="header"]/div/div/div/div[2]/div/ul/li[10]/a
${LOGIN_ERROR_MESSAGE}            xpath=//*[@id="form"]/div/div/div[1]/div/form/p

# Locators for Home and Product Pages
${PRODUCT_PAGE_LINK}              id=product_page_link
${ADD_TO_CART_BUTTON}             id=add_to_cart_button
${CART_LINK}                      id=cart_link
${PRODUCT_IN_CART}                id=product_in_cart


# Locators for Logout Functionality
${LOGOUT_BUTTON}                 css=a[href="/logout"]



# Locators for Contact Us Page
${HOME_PAGE_ELEMENT}            css=[class="logo pull-left"]
${CONTACT_US_BUTTON}            css=a[href="/contact_us"]
${GET_IN_TOUCH_ELEMENT}         xpath=//h2[text()='Get In Touch']
${CONTACT_NAME_FIELD}           name=name
${CONTACT_EMAIL_FIELD}          name=email
${CONTACT_SUBJECT_FIELD}        name=subject
${CONTACT_MESSAGE_FIELD}        name=message
${CONTACT_UPLOAD_FIELD}         name=upload_file
${CONTACT_SUBMIT_BUTTON}        css=input[type="submit"]
${SUCCESS_MESSAGE_ELEMENT}      xpath=//div[contains(text(),'Success! Your details have been submitted successfully.')]
${HOME_BUTTON}                  xpath=//span[text()=" Home"]


# Locators for search
${URL}                         http://automationexercise.com
${BROWSER}                     chrome
${SEARCH_PAGE}                xpath=//a[@href='/products']
${SEARCH_INPUT}               id=search_product
${SUBMIT_SEARCH}              id=submit_search  
${SEARCHED_PRODUCTS_TEXT}     xpath=//h2[text()='Searched Products']
${SEARCHED_PRODUCTS}          xpath=//div[@class='features_items']/div