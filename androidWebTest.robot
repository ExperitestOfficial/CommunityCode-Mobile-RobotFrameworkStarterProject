*** Settings ***
Library    AppiumLibrary
Suite Teardown	Close Session
Resource   cloudCredentials.robot


*** Variables ***
${PLATFORM_NAME}	  Android
${TEST_NAME}		    Robot Demo Test - Web
${BROWSER_NAME}		  Chrome
${APPIUM_VERSION}   <APPIUM_VERSION>


*** Keywords ***
Start Session
    Open Application
    ...			${cloudUrl}	digitalai:accessKey=${accessKey}
    ...			platformName=${PLATFORM_NAME}	browserName=${BROWSER_NAME}
    ...			appiumVersion=${APPIUM_VERSION}
    ...			testName=${TEST_NAME}

Close Session
    Close Application

Double Click
	[Arguments]	@{KWARGS}
	Click Element	@{KWARGS}
	Click Element	@{KWARGS}

*** Test Cases ***
${TEST_NAME}
	Start Session
	Portrait
	Go To Url	https://demo-bank.ct.digital.ai
	Input Text	xpath=//*[@data-auto='username']//input			company
	Input Text	xpath=//*[@data-auto='password']//input			company
	Double Click	xpath=//*[@data-auto='login']
	BuiltIn.Sleep 	5s
	Wait Until Element Is Visible 	xpath=//*[@data-auto='transfer-funds']
	Click Element	xpath=//*[@data-auto='transfer-funds']
	Input Text	xpath=//input[@name='NAME']				          John
	Input Text	xpath=//input[@name='PHONE']			        	1-234-5678
	Input Text	xpath=//input[@name='AMOUNT']				        1000
	Double Click	xpath=//*[@data-auto='country']
	Click Element	xpath=//*[text()='India']
	Click Element	xpath=//*[@data-auto='transfer-button']