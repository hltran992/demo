*** Settings ***
Documentation  This is some basic info about the whole suite
Library  SeleniumLibrary


*** Variables ***
    ${BROWSER}  ie

*** Test Cases ***
User must sign in to check out
    [Documentation]  This is some basic info
    [Tags]  Smoke
    Begin Web Test
    Search for Products
    Select Product from Search Results
    End Web Test

*** Keywords ***
Search for Products
    Wait Until Page Contains  Amazon
    Input Text  id=twotabsearchtextbox  Ferrari 458
    Sleep  3s

Select Product from Search Results
    Click Button  css=#nav-search-submit-button
    #Click Button  xpath=//*[@id="nav-search-submit-button"]

Begin Web Test
    Open Browser  http://www.amazon.com  chrome

End Web Test
    Close Browser
