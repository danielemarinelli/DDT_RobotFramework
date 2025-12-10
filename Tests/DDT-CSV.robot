*** Settings ***
Documentation    Testing Data Driven from csv file with Robot Framework
Library    SeleniumLibrary
Library    DataDriver    ../Dataset/data.csv
Resource    ../Resources/common.robot

Suite Setup    common.Start TestCase
Suite Teardown    common.Finish TestCase
Test Template    Invalid Login Scenarios


*** Test Cases ***
Verify login fails with invalid credentials    ${username}    ${password}    ${error_msg}

*** Keywords ***
Invalid Login Scenarios
    [Arguments]    ${username}    ${password}    ${error_msg}
    Input Text    ${txtbox_username}    ${username}
    Input Password    ${txtbox_password}    ${password}  
    Click Button    ${btn_login}
    Sleep    2s
    Element Should Contain    ${txt_error}    ${error_msg}