*** Settings ***
Library     SeleniumLibrary

*** Test Cases ***
Navigatioalkeywords
    Open browser    https://www.google.com/     chrome
    ${loc}=     get location
    log to console  ${loc}
    sleep   3

    go to   https://www.facebook.com/
    ${loc1}=     get location
    log to console  ${loc1}

    go back
    ${loc2}=     get location
    log to console  ${loc2}
    sleep   3
    close browser

*** Keywords ***
