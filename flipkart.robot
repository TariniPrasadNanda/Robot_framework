*** Settings ***
Library     SeleniumLibrary
*** Test Cases ***
MouseActionTest
    open browser        https://swisnl.github.io/jQuery-contextMenu/demo.html           edge
    maximize browser window
    # Right click operation
    open context menu   //span[text()='right click me']
    sleep   3
    # Double click operation
    go to   https://testautomationpractice.blogspot.com/
    double click element    //div[@id='HTML10']/div[1]/button
    sleep   3
    # Drag and drop operation
    drag and drop   xpath://div[@id='draggable']        xpath://div[@id='droppable']
    sleep  5
    close browser


