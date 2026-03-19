*** Settings ***
Library    Browser
Library     Dialogs
Resource   ../resources/formPage.robot
Resource    ../resources/generiek.robot
Suite Setup     Open Browser setup

*** Test Cases ***
Formulier Invullen
    New Page    ${FORM_PAGE}
    Wait For Elements State    ${input_firstName}    visible
    Fill Text    ${input_firstName}     ${FIRST_NAME}
    Fill Text    ${input_lastName}    ${LAST_NAME}
    Fill Text    ${input_email}        ${EMAIL}
    Click        ${button_oefenformulierSubmit}
    Wait For Elements State   ${successMsg}     visible
    ${actual_text}=    Get Text    ${successMsg}
    Log         Success bericht: ${actual_text}    INFO
    Should Be Equal    ${actual_text}    ${expectedText}
    Close Browser

