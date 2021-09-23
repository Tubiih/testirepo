*** Settings ***
Library    SeleniumLibrary
Test Teardown    Close Browser
*** Test Cases ***
Navigate
    Open Browser To Login Page
    Go to jobs
*** Keywords ***
Open Browser to Login Page
    Open Browser   https://www.etteplan.com/fi   Chrome
    Maximize Browser Window

Go to jobs
    Mouse Over    //*[@id="block-primary-navigation-new"]/ul/li[4]/a
    Click Element    //*[@id="block-primary-navigation-new"]/ul/li[4]/div/ul/li[1]/a
    Title Should Be    Avoimet työpaikat | Etteplan
    Wait Until Element Is Visible    //*[@id="AllOpenPositions"]/div/form/div[2]/div
    Click Element        //*[@id="AllOpenPositions"]/div/form/div[2]/div
    Sleep    2
    Click Element    //*[@id="AllOpenPositions"]/div/form/div[2]/div/div/div[1]/div[1]
    Sleep    3
