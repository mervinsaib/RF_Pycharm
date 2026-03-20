*** Settings ***
Library    Browser
Library     Collections
Resource    ../resources/generiek.robot
Resource    ../resources/bol.robot
Resource    ../resources/pooltraining.robot
Suite Setup     Open Browser setup

*** Test Cases ***
Zoek op Bol naar draadloze muis
    New Page    ${url_bol}
    Wait until element visible    ${bol_logo}
    Click    ${accepteer_cookies}
    verify element is not visible    ${accepteer_cookies}
    zoekveld invoeren en op enter drukken    draadloze muis
    Sleep    3s
    Wait until element visible    ${resultaat_zoeken}
    Click    ${resultaat_zoeken}
    # Valideer Header tekst   ${pagina_header_welkomstpagina}     ${pagina_header_welkomstpagina_tekst} 





