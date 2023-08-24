*** Settings ***
Documentation    Saucedemo project
Library     Selenium2Library
Library     BuiltIn

*** Variable ***
${URL}      https://www.saucedemo.com/v1/
${BROWSER}      edge
${STRD_USR}     standard_user
${LKED_USR}     locked_out_user
${PRBM_USR}     problem_user
${PERF_USR}     performance_glitch_user
${PWD_ALL}      secret_sauce
${username_field}       //input[@id='user-name']
${password_field}       //input[@id='password']
${logIn_Button}     //input[@id='login-button']

*** Keywords ***
open browser with URL
    [Arguments]     ${URL}      ${BROWSER}
    Open Browser    ${URL}      ${BROWSER}

set input on text box
    [Arguments]     ${xpath}    ${text}
    Input Text      ${xpath}    ${text}

push button
    [Arguments]     ${button}
    Click Button    ${button}

*** Test Cases ***
login with standard user
    open browser with URL   ${URL}  ${BROWSER}
    sleep   1s
    maximize browser window
    set input on text box   ${username_field}   ${STRD_USR}
    sleep   1s
    set input on text box   ${password_field}   ${PWD_ALL}
    sleep   1s
    push button             ${logIn_Button}
    sleep   5s
    close Browser
login with locked_out user
    open browser with URL   ${URL}  ${BROWSER}
    sleep   1s
    maximize browser window
    set input on text box   ${username_field}   ${LKED_USR}
    sleep   1s
    set input on text box   ${password_field}   ${PWD_ALL}
    sleep   1s
    push button             ${logIn_Button}
    sleep   5s
    close Browser
login with problem user
    open browser with URL   ${URL}  ${BROWSER}
    sleep   1s
    maximize browser window
    set input on text box   ${username_field}   ${PRBM_USR}
    sleep   1s
    set input on text box   ${password_field}   ${PWD_ALL}
    sleep   1s
    push button             ${logIn_Button}
    sleep   5s
    close Browser
login with performance_glitch user
    open browser with URL   ${URL}  ${BROWSER}
    sleep   1s
    maximize browser window
    set input on text box   ${username_field}   ${PERF_USR}
    sleep   1s
    set input on text box   ${password_field}   ${PWD_ALL}
    sleep   1s
    push button             ${logIn_Button}
    sleep   5s
    close Browser
