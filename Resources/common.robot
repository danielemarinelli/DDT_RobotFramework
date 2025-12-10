*** Settings ***
Library    SeleniumLibrary


*** Variables ***
${url}        https://www.saucedemo.com/
${browser}    chrome
${txtbox_username}    id:user-name
${txtbox_password}    id:password
${btn_login}          css:.submit-button
${txt_error}          xpath://h3[@data-test='error']

*** Keywords ***
Start TestCase
    Open Browser    ${url}    ${browser}
    Maximize Browser Window
    Sleep    2s

Finish TestCase
    Close Browser

