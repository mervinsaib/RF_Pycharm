*** Settings ***
Library    Browser
Library    Collections
Resource    ../resources/generiek.robot


*** Variables ***
${url_bol}    https://www.bol.com/
${accepteer_cookies}    div[role="dialog"] button:has-text("accepteren")
${bol_logo}    a[aria-label="Bol.com homepage"]
${zoekveld_bol}    xpath=//input[@id="searchfor"]
${zoekveld_invoer_basketbal}    basketbal    
${resultaat_zoeken}    h1:has-text("in Alle artikelen")

*** Keywords ***
zoekveld invoeren en op enter drukken
    [Arguments]    ${zoekterm}
    Fill Text    ${zoekveld_bol}    ${zoekterm}
    Press Keys    ${zoekveld_bol}    Enter

Valideer zoekresultaat
    [Arguments]    ${zoekterm}
    Wait until element visible    ${resultaat_zoeken}
    ${text}=    Get Text    ${resultaat_zoeken}
    Should Contain    ${text}    ${zoekterm}