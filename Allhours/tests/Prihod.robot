*** Settings ***
Library    Browser
Resource   personal.resource

*** Test Cases ***
Login To Spica All Hours
    New Browser    headless=False
    New Page    https://login.spica.com/Account/Login
    Fill Text    id=username-field    ${Username}
    Fill Text    id=password-field    ${Password}
    Click    id=signin-button
    Wait For Elements State    id=clockingWidgetButton0   visible    10s
    #Click    id=clockingWidgetButton0
    Click    css=body > app-root > div > sds-side-bar > div > aside > div > app-navigation > sds-navigation-user-profile > div
    Sleep    5s
    Close Browser