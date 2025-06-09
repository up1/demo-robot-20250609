*** Settings ***
Library   Browser

*** Test Cases ***
Example Test
    New Browser    browser=chromium    headless=false   args=["--start-maximized"]
    New Context     viewport=${NONE}
    New Page    https://seleniumbase.io/coffee/
    
    Click   xpath=//*[@data-test="Americano"]
    Click   xpath=//*[@data-test="Americano"]
    Get Text    xpath=//*[@id="app"]/ul/li[2]/a   contains    cart (2)
    Click    xpath=//*[@id="app"]/ul/li[2]/a
    Get Text    xpath=//*[@id="app"]/div[2]/div/div[1]/button   contains    Total: $12.00