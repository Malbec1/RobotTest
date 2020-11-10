*** Settings ***
Library  SeleniumLibrary

*** Test Cases ***
Capture screenshot
    open browser    https://opensource-demo.orangehrmlive.com/      chrome
    maximize browser window
    capture element screenshot  xpath://div[@id='divLogo']//img         logo.png
    capture page screenshot     page.png
    sleep   3
    close browser

*** Keywords ***
