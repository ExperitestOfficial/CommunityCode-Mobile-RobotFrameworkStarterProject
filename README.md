# CommunityCode-Mobile-RobotFrameworkStarterProject
The Robot framework project enables you to quickly run tests using easy syntax and utilizing human-readable keywords.\
It is implemented using Python which is also the primary language to extend it.\
We are using the AppiumLibrary is a Mobile App testing library for Robot Framework.
## Setting Up the Project

To set up the project:
1. Clone the project by running the following:
   ```
   git clone https://github.com/ExperitestOfficial/CommunityCode-Mobile-RobotFrameworkStarterProject.git
   cd CommunityCode-Mobile-RobotFrameworkStarterProject
   ```   
1. Set up authentication by updating the following parameters in [cloudCredentials.robot](cloudCredentials.robot):
    * cloudUrl - Url for the cloud the test would run in. For example, https://company.experitest.com/
    * accessKey -  Personal authentication. See [Obtaining Access Key](https://docs.digital.ai/bundle/TE/page/obtaining_access_key.html) to learn how to obtain an access key.

3. Make sure that Python 3 installed.
## Install Robot Framework globally
Open your terminal and run:
```
pip install robotframework
```
```
pip install --upgrade robotframework-appiumlibrary
```

### Appium Version
This project requires using Appium 2.\
Replace the variable <APPIUM_VERSION> in the test with the desired Appium version.

### Upload Application to the Cloud
The example tests in this project are using a demo application.
To upload your own application to cloud, log in to the cloud using a browser, choose *Applications* in the left hand menu, click on *upload*, and choose the application file you want to upload.

In you tests, change *com.experitest.ExperiBank* (and activity if needed) in the relevant places in the test.

## Running Tests
### Native and Web tests
In this project you can find an examples to how to run Native tests and Web tests using the robot framework on both Android and iOS devices.


To run the native test on Android run the following on the command line:

```
robot androidNativeTest.robot
```
## How to enable parallel execution
Pabot is a parallel test runner for the Robot framework. Pabot lets you run Robot tests in parallel at test-level as well as test-suite level.\
To install Pabot run the following command:
```
 pip install -U robotframework-pabot
```
For parallel execution run the below command:
```
 pabot --verbose --testlevelsplit --processes <num_of_processes> <path_to_tests> 
``` 
The file [multipleAndroidTests.robot](multipleAndroidTests.robot) contains three test cases, each test case runs a native test on Android.\
The command to run the 3 test cases in parallel is: pabot --verbose --testlevelsplit --processes 3 multipleAndroidTests.robot

## Documentation
To find out more about Continuous Cloud Testing usage, features, and best practices, visit our online [documentation](https://docs.digital.ai/bundle/TE/page/test_execution_home.html).

## Support
If you encounter an issue that is not covered here or in our online documentation, contact us at [support@digital.ai](mailto:support@digital.ai).




