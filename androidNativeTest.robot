*** Settings ***
Library    AppiumLibrary
Suite Teardown	Close Session
Resource   cloudCredentials.robot


*** Variables ***
${PLATFORM_NAME}   	Android
${ANDROID_PACKAGE}	com.experitest.ExperiBank
${ANDROID_ACTIVITY}	.LoginActivity
${APPIUM_VERSION}   <APPIUM_VERSION>
${TEST_NAME}		    Robot Native Test - Android

*** Keywords ***
Start Session
    Open Application
    ...			${cloudUrl}	digitalai:accessKey=${accessKey}
    ...			app=cloud:${ANDROID_PACKAGE}/${ANDROID_ACTIVITY}
    ...			platformName=${PLATFORM_NAME}	appPackage=${ANDROID_PACKAGE}
    ...			appActivity=${ANDROID_ACTIVITY}
    ...     appiumVersion=${APPIUM_VERSION}
    ...     testName=${TEST_NAME}
Close Session
    Close Application

*** Test Cases ***
${TEST_NAME}
	Start Session
	Portrait
	Input Text	id= com.experitest.ExperiBank:id/usernameTextField	company
	Input Text	id=com.experitest.ExperiBank:id/passwordTextField	company
	Click Element	id=com.experitest.ExperiBank:id/loginButton
	BuiltIn.Sleep	5s
	Click Element	id=com.experitest.ExperiBank:id/makePaymentButton
	Input Text	id=com.experitest.ExperiBank:id/phoneTextField		0501234567
	Input Text	id=com.experitest.ExperiBank:id/nameTextField		John Snow
	Input Text	id=com.experitest.ExperiBank:id/amountTextField		50
	Input Text	id=com.experitest.ExperiBank:id/countryTextField	Switzerland
	Click Element	id=com.experitest.ExperiBank:id/sendPaymentButton
	Click Element	id=android:id/button1