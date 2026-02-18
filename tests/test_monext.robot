*** Settings ***
Library           SeleniumLibrary
Library           Page.py
Library           DateTime

Suite Setup       Setup Test Environment
Suite Teardown    Teardown Test Environment

*** Variables ***
${FIRSTNAME}        Marie
${LASTNAME}         Dupont
${EMAIL}            marie.dupont@test.fr
${COMPANY}          TestAutomation
${PHONE}            0612345678
${MESSAGE}          Test message auto.

*** Test Cases ***
Scenario: Flow Verification
    Verify Home Page Assets
    Verify Contact Form Visibility
    Fill Contact Form Information    ${FIRSTNAME}    ${LASTNAME}    ${EMAIL}    ${COMPANY}    ${PHONE}    ${MESSAGE}
    Verify Footer Section
