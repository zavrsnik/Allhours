*** Settings ***
Library    Browser

*** Test Cases ***
Login To Spica All Hours
    New Browser    headless=False
    New Page    https://login.spica.com/Account/Login
    Fill Text    id=username-field    ziga.zavrsnik@mesimedical.com
    Fill Text    id=password-field    Greatspain44.
    Sleep    10s
    Close Browser 