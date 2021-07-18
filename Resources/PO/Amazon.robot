*** Settings ***
Library  SeleniumLibrary
#Resource  Resources/PO/LandingPage.robot
#Resource  Resources/PO/TopNav.robot
#Resource  Resources/PO/SearchResults.robot
#Resource  Resources/PO/Product.robot
#Resource  Resources/PO/Cart.robot
#Resource  Resources/PO/SignIn.robot
Resource  Resources/Common.robot
Resource  Resources/Amazon.robot

*** Keywords ***
Search for Products
    Wait Until Page Contains  Amazon
    Input Text  id=twotabsearchtextbox  Ferrari 458
    Sleep  3s

Select Product from Search Results
    Click Button  css=#nav-search-submit-button
    #Click Button  xpath=//*[@id="nav-search-submit-button"]

