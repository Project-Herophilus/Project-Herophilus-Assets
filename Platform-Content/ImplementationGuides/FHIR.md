Return to the <a href="https://project-herophilus.github.io/Project-Herophilus-Assets/" target="_blank">Main Page</a>

# FHIR Implementation Guide

## Integration Data Flow Steps
This data flow is a sample flow based on real world usage and needs. When the iDAAS-Connect-FHIR starts it
creates a servlet endpoint that can be leveraged immediately. To date the iDAAS-Connect-FHIR component fully supports all
the FHIR R4 resource needs for CMS Interoperability Final Rule including support for USCD2. 

![Data Flow](https://github.com/Project-Herophilus/Project-Herophilus-Assets/blob/main/images/iDaaS-Platform/DataFlow-FHIR.png)

# Platform General Pre-Requisites
For all iDaaS design patterns it should be assumed that you will either install as part of this effort or need the
[following](https://github.com/Project-Herophilus/Project-Herophilus-Assets/blob/main/PreRequisites.md).

## Cloning, Building and Running Solutions

*You can go to https://github.com/orgs/Project-Herophilus/repositories to see all the specific respository
names and find the specific respository you will want to work with. To get the specific URL just select the repository
and then click on the Code dropdown and you will be able to select/copy the specific URL where the
code exists.*

Here is a consistent manner in the way you can clone, build and run this [component](https://github.com/Project-Herophilus/Project-Herophilus-Assets/blob/main/CloningBuildingRunningSolution.md).

# Implementation Centric Details
The following are specific for this implementation.

## Cloning or Downloading the Code Repository
This section covers how to get the application cloned and downloaded.
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
cd iDaaS-Connect-FHIR
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
iDaaS-Connect-FHIR/src/resource/application.properties file.

Supported properties include:

```
# Admin Interface Settings
management.endpoints.web.exposure.include=hawtio, jolokia,info, health, prometheus
hawtio.authenticationEnabled=false
management.endpoint.hawtio.enabled=true
management.endpoint.jolokia.enabled=true
# urls
# http://localhost:9981/actuator/jolokia/read/org.apache.camel:context=*,type=routes,name=*
# http://localhost:9981/actuator/hawtio/index.html
# Used for internal HTTP server managing application
# Must be unique and defined otherwise defaults to 8080
# used for any Fuse SpringBoot developed assets
server.port=9981
server.max-http-header-size=200000
## Management App Server Address
server.address=0.0.0.0
management.address=0.0.0.0
## Kafka
# Physical/Virtual
idaas.kafkaBrokers=localhost:9092
idaas.integrationTopic=opsmgmt_platformtransactions
idaas.terminologyTopic=idaas_terminologies
# Public Cloud
idaas.cloudTopic=idaas_cloud
idaas.processPublicCloud=false
idaas.cloudAPI=urlendpoint
# fhirVendor can be ibm hapi or microsoft
idaas.fhirVendor=hapi
idaas.ibmURI=localhost:8090/fhir-server/api/v4/
# HAPI FHIR prior to 5.x server release
idaas.hapiURI=localhost:8888/hapi-fhir-jpaserver/fhir/
# HAPI FHIR Server post 5.x
#idaas.hapiURI=localhost:8888/fhir/
#idaas.hapiURI=http://localhost:9981/idaas/
idaas.msoftURI=localhost:0809/microsoftapi/api/v4/
# FHIR Specific
idaas.processToFHIR=true
idaas.processTerminologies=true
idaas.processBundles=false
```
Below are the following attributes defined. You will notice that these setting don't contain idaas as that is specific to SpringBoot.

| Attribute Name              | Attribute Details                                                                                                                   |
|-----------------------------|-------------------------------------------------------------------------------------------------------------------------------------|
| server.port                 | Used to define what port this assets runs on, sometimes you will also see manangement.port defined                                  |
| server.max-http-header-size | Number of Bytes the server can process when receiving data                                                                          |
| server.address              | 0.0.0.0 means to use all IPs on the machine                                                                                         |
| management.address          | 0.0.0.0 means to use all IPs on the machine                                                                                         |
| kafkaBrokers               | All the kafka Brokers involved within the integration, if there are several all can be seperated with a comma host:port, host2:port |
| integrationTopic            | Kafka Topic for processing all auditing and error handing                                                                           |
| terminologyTopic            | Kafka Topic for all terminology processing                                                                                          |
| cloudTopic                  | Kafka Topic for cloud integration with iDaaS Connect                                                                                |
| processPublicCloud          | Setting to determine of PublicCloud will be used (true or false)                                                                    |
| cloudAPI                    | URL to send directly to iDaaS Connect Public Cloud                                                                                  |
| fhirVendor                  | FHIR vendor to be used - ibm hapi or microsoft                                                                                      |
| hapiURI                     | HAPI/SmileCDR processing endpoint                                                                                                   |
| ibmURI                      | IBM FHIR Server processing endpoint                                                                                                 |
| msoftURI                    | Microsoft FHIR Server processing endpoint                                                                                           |
| processtoFHIR               | Do you want to process to an external FHIR server (true or false)                                                                   |
| processTerminologies        | Do you process terminologies                                                                                                        |
| processBundles              | Do you want to process FHIR bundles                                                                                                 |                                                                |


## Command Line Argument Passing
Alternatively, want to have a few unique ways to do this. This will override one specific property via a command line:
```
java -jar <jarfile>.jar --server.port=8888
```
to run a seperate specific application.properties file. In the example below the file is in the config diretory
one level above where the jar is located, you can implement that through the following
command:
```
java -jar <jarfile>.jar --spring.config.location=file:./config/application.properties`
```
   
# Start The Engine!!!
This section covers the running of the solution. There are several options to start the Engine Up!!!

## Step 1: Kafka Server To Connect To
In order for ANY processing to occur you must have a Kafka server running that this accelerator is configured to connect to.
Please see the following files we have included to try and help: <br/>
[Kafka Non Windows](https://github.com/Project-Herophilus/Project-Herophilus-Assets/blob/main/Kafka.md)<br/>
[KafkaWindows](https://github.com/Project-Herophilus/Project-Herophilus-Assets/blob/main/KafkaWindows.md)<br/>

## Step 2: FHIR Server Startup
The platform is all about working with other technologies as needed. If you are working with an external FHIR server you will
need to ensure it is started and you have the base URL for all API endpoints it presents for processing. The URL is critical in 
helping iDaaS FHIR route data properly. 

## Step 3: Running the App: Maven Commands or Code Editor
This section covers how to get the application started.
+ Maven: go to the directory of where you have this code. Specifically, you want to be at the same level as the POM.xml file and execute the
  following command: <br/>
```
mvn clean install
 ```
+ Running the java jar file from a command line:
```
java -jar <jarfile>.jar
 ```
+ Running it from your developer machine/IDE.
```
mvn spring-boot:run
 ```

# Testing
We have a full set of testing that you can do using our Postman collection, please go 
[here](https://www.postman.com/winter-robot-787282/workspace/intelligent-daas/collection/16526170-fb4cdfdd-9a65-4f04-9e32-b807921c1b5e?action=share&creator=16526170) 
to access it. Since this collection deals with several assets the specific assets are located in the 
->/Connect/FHIR folder.

To properly use the Postman Collection there are a couple things to understand:
1. There are varibles used to make the usage of the collection easier. If you open up SendFHIRResourceInbound to the right
of it you will see what looks like an eye. Depending upon your implementattion, hostnames and ports for iDaaS components
you can set these as needed. This eliminates the need to reset them manually.
2. All the iDaaS-Connect-FHIR assets can be used with this one URL. You simply need to set the appropriate FHIR resource
name you are sending into iDaaS-Connect-FHIR with the header property named resourcename. The specific FHIR resource must
be defined in ALL lower case. 



If you would like to contribute feel free to, contributions are always welcome!!!!

Happy using and coding....


