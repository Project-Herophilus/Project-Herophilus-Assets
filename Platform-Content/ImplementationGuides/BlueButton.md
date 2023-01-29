Return to the <a href="https://project-herophilus.github.io/Project-Herophilus-Assets/" target="_blank">Main Page</a>

# BlueButton Implementation Guide
The following is the BlueButton implementation guide.

[//]: # (![Data Flow]&#40;https://github.com/Project-Herophilus/Project-Herophilus-Assets/blob/main/images/iDaaS-Platform/DataFlow-FHIR.png&#41;)

# Platform General Pre-Requisites
For all Healthcare Data Foundation (HDF) design patterns it should be assumed that you will either install as part of this effort or need the
[following](https://github.com/Project-Herophilus/Project-Herophilus-Assets/blob/main/PreRequisites.md).

## Cloning, Building and Running Solutions
Here is a consistent manner in the way you can clone, build and run this [component](https://github.com/Project-Herophilus/Project-Herophilus-Assets/blob/main/CloningBuildingRunningSolution.md).

# Implementation Centric Details
The following are specific for this implementation.

## Cloning or Downloading the Code Repository
This section covers how to get the application cloned and downloaded.

*You can go to https://github.com/orgs/Project-Herophilus/repositories to see all the specific respository
names and find the specific respository you will want to work with. To get the specific URL just select the repository
and then click on the Code dropdown and you will be able to select/copy the specific URL where the
code exists.*

+ Maven: The following steps are needed to run the code. Either through your favorite IDE or command line. The following command will
  clone the iDaaS-Connect repository and all it's submodules:
```
git clone <repo name>
For example to clone iDaaS-Connect:
git clone https://github.com/Project-Herophilus/iDaaS-Connect.git
 ```
+ You can also go ahead and download the code from a specific repository and then unzip it as well. To download just click on the Code
  button and select the Download Zip option.

## Java Assets
This section is specific to the Java centric assets provided.

### Step 1: Building the App: Command Line
This section covers how to get the application built.
+ Maven: The following steps are needed to build the code into a jar. This step can be done either through your favorite
  IDE or command line.
```
cd iDaaS-Connect-BlueButton
```
Now, you should be in the iDaaS-Connect-FHIR sub-module directory and at the same level as the POM.xml file,
now execute the following command: <br/>
```
mvn clean install
```

### Step 2: Running the App
There are several ways and manner we can run the application.

### Command Line
You dont necessarily have to run Step 3 first; however, personnel experience and several contributors have strongly expressed that it is
just a cleaner way to ensure all the assets are pulled and if anything is needed or issues the mvn clean install should show it.

- Here is the command to run the design pattern from the command line: <br/>
```
mvn spring-boot:run
 ```
- Depending upon if you have every run this code before and what libraries you have already in your local Maven instance
  it could take a few minutes. From a code editor you also can right click on the Application.java in the /src/<application namespace> and select Run

### Running the Java JAR
If you don't run the code from an editor or from the maven commands above. You can compile the code through the maven
commands above to build a jar file. Then, go to the /target directory and run the following command: <br/>

```
java -jar <jarfile>.jar 
```

### Properties via application.properties
Now, if you want to make changes to the specific properties for your implementation you will need to go into the
iDaaS-Connect-BlueButton/src/resource/application.properties file.

Supported properties include:

```
management.endpoints.web.exposure.include=hawtio,jolokia
hawtio.authenticationEnabled=false
management.endpoint.hawtio.enabled=true
management.endpoint.jolokia.enabled=true
# urls
# http://localhost:9982/actuator/jolokia/read/org.apache.camel:context=*,type=routes,name=*
# http://localhost:9982/actuator/hawtio/index.html
# Used for internal HTTP server managing application
# Must be unique and defined otherwise defaults to 8080
# used for any Fuse SpringBoot developed assets
# Port Used
management.port=9982
server.port=9982
# Management App Server Address
server.address=0.0.0.0
management.address=0.0.0.0
# Kafka
idaas.kafkaBrokers=localhost:9092
idaas.integrationTopic=opsmgmt_platformtransactions
idaas.terminologyTopic=idaas_terminologies
# Public Cloud
idaas.cloudTopic=idaas_cloud
idaas.processPublicCloud=false
idaas.cloudAPI=urlendpoint
# split your registered callback url into three parts: callback path, host, and port
# These should align with what the callback is that you specified within the CMS application
# portal
idaas.bluebuttonclientid=<your code here>
idaas.bluebuttonclientsecret=<your CMS Secret Code Here>
idaas.bluebuttoncallbackpath=login
idaas.bluebuttoncallbackhostname=localhost
idaas.bluebuttoncallbackportnumber=8890
```
Below are the following attributes defined. You will notice that these setting don't contain idaas as that is specific to SpringBoot.

| Attribute Name               | Attribute Details                                                                                                                   |
|------------------------------|-------------------------------------------------------------------------------------------------------------------------------------|
| server.port                  | Used to define what port this assets runs on, sometimes you will also see manangement.port defined                                  |
| server.max-http-header-size  | Number of Bytes the server can process when receiving data                                                                          |
| server.address               | 0.0.0.0 means to use all IPs on the machine                                                                                         |
| management.address           | 0.0.0.0 means to use all IPs on the machine                                                                                         |
| kafkaBrokers                 | All the kafka Brokers involved within the integration, if there are several all can be seperated with a comma host:port, host2:port |
| integrationTopic             | Kafka Topic for processing all auditing and error handing                                                                           |
| terminologyTopic             | Kafka Topic for all terminology processing                                                                                          |
| cloudTopic                   | Kafka Topic for cloud integration with iDaaS Connect                                                                                |
| processPublicCloud           | Setting to determine of PublicCloud will be used (true or false)                                                                    |
| cloudAPI                     | URL to send directly to iDaaS Connect Public Cloud                                                                                  |
| bluebuttonclientid           | Assigned Client ID when you register with CMS                                                                                       |
| bluebuttonclientsecret       | Created client secret from CMS                                                                                                      |
| bluebuttoncallbackpath       | Specific callback path to enable processing of data                                                                                 |
| bluebuttoncallbackhostname   | Hostname that is used in the callback                                                                                               |
| bluebuttoncallbackportnumber | The port number to be used as part of the callback                                                                                  |
                                                             |

## Command Line Argument Passing
Alternatively, want to have a few unique ways to do this. This will overrise one specific property via a command line:
```
java -jar <jarfile>.jar --server.port=8888
```
to run a seperate specific application.properties file. In the example beloe the file is is in the config diretory
one level above where the jar is located, you can implement that through the following
command:
```
java -jar <jarfile>.jar --spring.config.location=file:./config/application.properties`
```

# Start The Engine!!!
This section covers the running of the solution. There are several options to start the Engine Up!!!

Before doing anything make sure that you have created a CMS account and those values are within the properties file.

## Step 3: Specific Implementation Details
1. Sign up for the blue button [developer sandbox](https://bluebutton.cms.gov/).
2. Create a new application with the following. Then write down the resulting Client ID and Client Secret
* OAuth - Client Type: confidential
* OAuth - Grant Type: authorization-code
* Callback URLS: http://localhost:8890/callback (or another url more appropriate)

All of these properties can be placed into the application.properties files in src/main/resouorces or
you can add a custom application.properties file location as you test this, the steps are levrage a custom
application.properties file can be found in the same content listed above in the General Pre-Requisite section.

```
bluebutton.callback.path=callback
bluebutton.callback.host=localhost
bluebutton.callback.port=8890
```
Note:
http://localhost:8890/callback is the callback URL you registered with bluebutton.cms.gov. http://localhost:8890/bluebutton will be the service URL for iDAAS-Connect-BlueButton.
Every asset has its own defined specific port, we have done this to ensure multiple solutions can be run simultaneously.

## Step 1: Kafka Server To Connect To
In order for ANY processing to occur you must have a Kafka server running that this accelerator is configured to connect to.
Please see the following files we have included to try and help: <br/>
[Kafka Non Windows](https://github.com/Project-Herophilus/Project-Herophilus-Assets/blob/main/Kafka.md)<br/>
[KafkaWindows](https://github.com/Project-Herophilus/Project-Herophilus-Assets/blob/main/KafkaWindows.md)<br/>


## Step 2: Running the App: Maven Commands or Code Editor
This section covers how to get the application started.

* Download the [CSV file](https://bluebutton.cms.gov/synthetic_users_by_claim_count_full.csv) which contains 100 sample data with id, user name, and password.
* Make sure the application.properties are configured for your specific parameters defined when you setup your CMS account
* Build and start the project
  + From the command line or within your IDE go to the directory of where you have this code. Specifically, you want 
  to be at the same level as the POM.xml file and execute the following command: <br/>
    ```
    mvn spring-boot:run
    ```
* In a web browser type http://localhost:8890/bluebutton (this is bluebutton.callback.port setting in application.properties)
* It will automatically redirect you to Blue Buttons's authentication page. Fill in the user name and password
* Patient, Coverage, and ExplanationOfBenifit data will be sent to Kafka topic named bluebutton.

Happy Coding!!!!


If you would like to contribute feel free to, contributions are always welcome!!!!

Happy using and coding....


