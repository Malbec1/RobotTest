*** Settings ***
Library  SeleniumLibrary

*** Test Cases ***
CountLink
        open browser    https://www.google.com/    chrome
    maximize browser window
    ${linkcount}=   get element count   xpath://span
    log to console  ${linkcount}
    : for   ${i}  IN RANGE  1   ${linkcount}
    \   ${gettext}=     get text    xpath:(//span)[${i}]
    \   log to console  ${gettext}
    close browser
