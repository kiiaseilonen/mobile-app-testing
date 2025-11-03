*** Settings ***
Documentation    Keywords for android testing
Library    AppiumLibrary

Resource    ../../android/androidresources/AndroidVariables.resource

*** Keywords ***
Open Test Application
    Open Application    ${REMOTE_URL}    app=${ANDROID_TEST_APP}    platformName=${ANDROID_PLATFORM_NAME}     automationName=${ANDROID_AUTOMATION_NAME}  deviceName=${ANDROID_DEVICE_NAME}
    Page Should Contain Text    Products

Wait Until Element Is Visible And Click It
    [ Arguments]    ${locator}
    Wait Until Element Is Visible    ${locator}
    Click Element    ${locator} 

Navigate to Login
    Wait Until Element Is Visible And Click It    accessibility_id=View menu
    Wait Until Element Is Visible And Click It    accessibility_id=Login Menu Item
    Wait Until Element Is Visible    id=com.saucelabs.mydemoapp.android:id/nameRL

Login To App
    Input Text    id=com.saucelabs.mydemoapp.android:id/nameRL    ${USERNAME}
    Input Text    id=com.saucelabs.mydemoapp.android:id/passwordET    ${PASSWORD}
    Wait Until Element Is Visible And Click It    accessibility_id=Tap to login with given credentials
    Wait Until Page Contains    Products


## NExt steps: make init file for setting suites. suite set up vs test case suite set up 