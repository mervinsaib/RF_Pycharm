*** Settings ***
Library    Browser

*** Variables ***
${HEADLESS}    True    # LET OP: zet deze op True als je push doet naar de repository, anders kunnen we de tests niet draaien in de CI/CD pipeline
${BROWSER}     chromium    # kies hier: chromium / firefox / webkit


*** Keywords ***
Open Browser setup
    [Arguments]    ${BROWSER}=${BROWSER}    ${HEADLESS}=${HEADLESS}
    New Browser    ${BROWSER}    headless=${HEADLESS}   args=["--start-maximized"]
    New Context    viewport=None

Wait until argument visible
    [Arguments]    ${selector}
    Wait For Elements State    ${selector}    visible
    ${count}=    Get Element Count    ${selector}
    Should Be True    ${count} > 0