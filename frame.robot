*** Settings ***
Library  SeleniumLibrary

*** Test Cases ***
Test1
    open browser  https://www.flipkart.com/     edge
    maximize browser window
    sleep  2
    close browser


