*** Settings ***
Library  SeleniumLibrary

*** Test Cases ***
Rightclick
    open browser    https://swisnl.github.io/jQuery-contextMenu/demo.html       chrome
    maximize browser window
    open context menu   xpath://span[@class='context-menu-one btn btn-neutral']
    sleep   3


DoubleClick
    go to   http://testautomationpractice.blogspot.com/
    maximize browser window
    double click element    xpath://button[contains(text(),'Copy Text')]
    sleep   3


DragandDrop
    go to   http://dhtmlgoodies.com/scripts/drag-drop-custom/demo-drag-drop-3.html
    maximize browser window
    drag and drop   id:box6     id:box106
    sleep   3
    close browser




*** Keywords ***