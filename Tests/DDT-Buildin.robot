*** Settings ***
Documentation    Testing Data Driven (Built-in feature) with Robot Framework
Library    SeleniumLibrary
Resource    ../Resources/common.robot

Suite Setup    common.Start TestCase
Suite Teardown    common.Finish TestCase
Test Template    Invalid Login Scenarios
# Run the script --> robot -d results ./Tests/DDT-Buildin.robot

*** Test Cases ***                                    USERNAME        PASSWORD        ERROR_MESSAGE
Verify login fails - Blank Username and Password      ${EMPTY}        ${EMPTY}        Epic sadface: Username is required
Verify login fails - Wrong Username                   standard_user1  secret_sauce    Epic sadface: Username and password do not match any user in this service
Verify login fails - Wrong Password                   standard_user   secret_s        Epic sadface: Username and password do not match any user in this service
Verify login fails - Wrong Username and Password      sttw1           stt_1           Epic sadface: Username and password do not match any user in this service
    
    
*** Keywords ***
Invalid Login Scenarios
    [Arguments]    ${username}    ${password}    ${error_msg}
    Input Text    ${txtbox_username}    ${username}
    Input Password    ${txtbox_password}    ${password}  
    Click Button    ${btn_login}
    Sleep    2s
    Element Should Contain    ${txt_error}    ${error_msg}