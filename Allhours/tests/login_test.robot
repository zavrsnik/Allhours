*** Settings ***
Library    Browser
Resource    personal.resource

*** Test Cases ***
Login To Spica All Hours
    New Browser    headless=False
    New Page    https://login.spica.com/Account/Login
    Fill Text    id=username-field    {Username}
    Fill Text    id=password-field    {Password}
    Sleep    2s
    Close Browser 