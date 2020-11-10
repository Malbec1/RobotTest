*** Settings ***
Library  SeleniumLibrary

*** Variables ***
${browser}  chrome
${url}  https://www.selenium.dev/selenium/docs/api/java/index.html\

*** Test Cases ***
FramesTest
    open browser    ${url}  ${browser}
    maximize browser window
    select frame    packageListFrame
    click link      org.openqa.selenium
    unselect frame
    sleep   3
    select frame    packageFrame
    click link  Rotatable
    unselect frame
    sleep   3
    select frame    classFrame
    click link      Instance Methods
    unselect frame
    sleep   3

    close browser

*** Keywords ***
