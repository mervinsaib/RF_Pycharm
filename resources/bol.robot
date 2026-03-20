*** Settings ***
Library    Browser
Library    Collections
Resource    ../resources/generiek.robot


*** Variables ***
${url_bol}    https://www.bol.com/
${accepteer_cookies}    div[role="dialog"] button:has-text("accepteren")
${bol_logo}    a[aria-label="Bol.com homepage"]
${zoekveld_bol}    xpath=//form[@id="siteSearch"]//input[@id="searchfor"]
# ${zoekveld_bol_resultaat}    xpath=//input[@id="searchfor"][value="${zoekterm}"]
${zoekveld_bol_vergrootglas}    header button[data-test="search-button"]
${zoekveld_invoer_basketbal}    basketbal    
${resultaat_zoeken}    h1:has-text("in Alle artikelen")
 

*** Keywords ***
zoekveld invoeren en op enter drukken
    [Arguments]    ${zoekterm}
    Fill Text    ${zoekveld_bol}    ${zoekterm}
    Sleep    1s
    #Click    ${zoekveld_bol_vergrootglas}
    Press Keys    ${zoekveld_bol}    Enter

Valideer zoekresultaat
    [Arguments]    ${zoekterm}
    Wait until element visible    ${resultaat_zoeken}
    ${text}=    Get Text    ${resultaat_zoeken}
    Should Contain    ${text}    ${zoekterm}