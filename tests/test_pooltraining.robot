*** Settings ***
Library    Browser
Library     Collections
Resource    ../resources/generiek.robot
Resource    ../resources/pooltraining.robot
Suite Setup     Open Browser setup

*** Test Cases ***
Menu items Pooltraining.nl controleer headers twee
    New Page    ${url_homepage}
    Wait until element visible    ${pagina_header_welkomstpagina}
    Valideer Header tekst   ${pagina_header_welkomstpagina}     ${pagina_header_welkomstpagina_tekst}
    Click Menu Item    Pool les
    Valideer Header tekst    ${pagina_header}    ${pagina_header_poolles_tekst}
    Click Menu Item    Locatie
    Valideer Header tekst    ${pagina_header}    ${pagina_header_locatie_tekst}
    Click Menu Item    Tarieven
    Valideer Header tekst    ${pagina_header}    ${pagina_header_tarieven_tekst}
    Click Menu Item    Beschikbaarheid
    Valideer Header tekst    ${pagina_header}    ${pagina_header_beschikbaarheid_tekst}
    Click Menu Item    Contact
    Valideer Header tekst    ${pagina_header}    ${pagina_header_contact_tekst}
    Click Menu Item    Over mij
    Valideer Header tekst    ${pagina_header}    ${pagina_header_overmij_tekst}
    Click Menu Item    Pooltoernooien
    Valideer Header tekst    ${pagina_header}    ${pagina_header_pooltoernooien_tekst}
    Click Menu Item    Wist je dat
    Valideer Header tekst    ${pagina_header}    ${pagina_header_wistjedat_tekst}

Ga op Home via de de link naar Pooltraining
    New Page    ${url_homepage}
    # Wait until argument visible    ${link_pooltraining}
    Click    ${link_pooltraining}
    # Wait until argument visible    ${pagina_header_poolles_tekst}
    Valideer Header tekst   ${pagina_header}     ${pagina_header_poolles_tekst}