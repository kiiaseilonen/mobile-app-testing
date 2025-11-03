*** Settings ***
Documentation    Test cases

Resource    ../../android/androidresources/keywords.resource

*** Test Cases ***
Open App
    Open Test Application

User Logs Input
    Navigate to Login
    Login To App