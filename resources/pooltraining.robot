*** Settings ***
Library    Browser

*** Variables ***
${url_homepage}    https://pooltraining.nl/
${link_pooltraining}    css=p a:has-text("Pooltraining")    
${hamburgermenu}    #site-navigation
${pagina_header_welkomstpagina}    css=header h2.entry-title
${pagina_header}    css=header h1.entry-title
${pagina_header_welkomstpagina_tekst}    Welkom bij Pooltraining.nl
${pagina_header_poolles_tekst}    Pool les
${pagina_header_locatie_tekst}    Locatie
${pagina_header_tarieven_tekst}    Tarieven
${pagina_header_beschikbaarheid_tekst}    Beschikbaarheid
${pagina_header_contact_tekst}    Contact
${pagina_header_overmij_tekst}    Over mij
${pagina_header_pooltoernooien_tekst}    Pooltoernooien
${pagina_header_wistjedat_tekst}    Wist je dat
${menu_item}    #menu-menubalk a:has-text("${menu_text}")

*** Keywords ***
Valideer Header tekst
    [Arguments]    ${pagina_header}    ${controleer_tekst}
    Wait For Elements State    ${pagina_header}    visible
    ${header_text}=    Get Text    ${pagina_header}
    Should Contain    ${header_text}    ${controleer_tekst}

Click Menu Item
    [Arguments]    ${menu_text}
    ${selector}=    Set Variable    .menu-item a:has-text("${menu_text}")
    Wait For Elements State    ${selector}    visible
    Click    ${selector}

