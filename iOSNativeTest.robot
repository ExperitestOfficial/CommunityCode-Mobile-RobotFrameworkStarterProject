*** Settings ***
Library    AppiumLibrary
Suite Teardown	Close Session
Resource   cloudCredentials.robot


*** Variables ***
${PLATFORM_NAME}	  iOS
${IOS_BUNDLE_ID}	  com.experitest.ExperiBank
${APPIUM_VERSION}   <APPIUM_VERSION>
${TEST_NAME}		    Robot Native Test - iOS

*** Keywords ***
Start Session
    Open Application
    ...			${cloudUrl}	digitalai:accessKey=${accessKey}
    ...			app=cloud:${IOS_BUNDLE_ID}
    ...			platformName=${PLATFORM_NAME}
    ...			appiumVersion=${APPIUM_VERSION}
    ...			testName=${TEST_NAME}

Close Session
    Close Application

*** Test Cases ***
${TEST_NAME}
	Start Session
	Portrait
	Input Text	xpath=//*[@name='usernameTextField']			company
	Input Text	xpath=//*[@name='passwordTextField']			company
	Click Element	xpath=//*[@name='loginButton']
	Click Element	xpath=//*[@name='makePaymentButton']
	Input Text	xpath=//*[@name='phoneTextField']			0501234567
	Input Text	xpath=//*[@name='nameTextField']			John Snow
	Input Text	xpath=//*[@name='amountTextField']			50
	Click Element	xpath=//*[@name='countryButton']
	Click Element	xpath=//*[@name='Switzerland']
	Click Element	xpath=//*[@name='sendPaymentButton']
	Click Element	xpath=//*[@name='Yes']