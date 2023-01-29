Return to the <a href="https://project-herophilus.github.io/Project-Herophilus-Assets/" target="_blank">Main Page</a>

# HL7 Implementation Guide
This implementation guide with specific deal with HL7v2x messages.

## Integration Data Flow Steps
This data flow is a sample flow based on real world usage and needs. When the iDAAS-Connect-HL7 starts it
creates a series of HL7 MLLP Server ports, a specific set of directories, and some servlet endpoints.  All of these
endpoints are in place to enable processing of HL7 v2x messages, and CCDA documents.

![Data Flow](https://github.com/Project-Herophilus/Project-Herophilus-Assets/blob/main/images/iDaaS-Platform/DataFlow-HL7.png)

# Platform General Pre-Requisites
For all Healthcare Data Foundation (HDF) design patterns it should be assumed that you will either install as part of this effort or need the
[following](https://github.com/Project-Herophilus/Project-Herophilus-Assets/blob/main/PreRequisites.md).

## Cloning, Building and Running Solutions
Here is a consistent manner in the way you can clone, build and run this 
[component](https://github.com/Project-Herophilus/Project-Herophilus-Assets/blob/main/CloningBuildingRunningSolution.md).

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
cd iDaaS-Connect-HL7
```
Now, you should be in the iDaaS-Connect-HL7 sub-module directory and at the same level as the POM.xml file,
now execute the following command: <br/>
```
mvn clean install
```
### Step 2: Running the App
There are several ways and manner we can run the application.

### Command Line
You don't necessarily have to run Step 3 first; however, personnel experience and several contributors have strongly expressed that it is
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
iDaaS-Connect-HL7/src/resource/application.properties file.

Supported properties include:
```
management.endpoints.web.exposure.include=hawtio, jolokia,info, health, prometheus
hawtio.authenticationEnabled=false
management.endpoint.hawtio.enabled=true
management.endpoint.jolokia.enabled=true
# urls
# http://localhost:9980/actuator/jolokia/read/org.apache.camel:context=*,type=routes,name=*
# http://localhost:9980/actuator/hawtio/index.html
# Used for internal HTTP server managing application
# Must be unique and defined otherwise defaults to 8080
# used for any Fuse SpringBoot developed assets
management.port=9980
server.port=9980
server.max-http-header-size=200000
# Management App Server Address
server.address=0.0.0.0
management.address=0.0.0.0
# Kafka Configuration - use comma if multiple kafka servers are needed
idaas.kafkaBrokers=localhost:9092
idaas.integrationTopic=opsmgmt_platformtransactions
idaas.terminologyTopic=idaas_terminologies
idaas.fhirConversionTopic=idaas_ccdafhirconversion
# Public Cloud
idaas.cloudTopic=idaas_cloud
idaas.processPublicCloud=true
idaas.cloudAPI=urlendpoint
# HL7 Specific properties
# ADT
idaas.hl7ADT_Directory=/data-input/hl7/adt
idaas.adtPort=10001
idaas.adtACKResponse=true
idaas.adtTopicName=mctn_mms_adt
# ORM
idaas.hl7ORM_Directory=data-input/hl7/orm
idaas.ormPort=10002
idaas.ormACKResponse=true
# ORU
idaas.ormTopicName=mctn_mms_orm
idaas.hl7ORU_Directory=data-input/hl7/oru
idaas.oruPort=10003
idaas.oruACKResponse=true
idaas.oruTopicName=mctn_mms_oru
# RDE
idaas.hl7RDE_Directory=data-input/hl7/rde
idaas.rdePort=10004
idaas.rdeACKResponse=true
idaas.rdeTopicName=mctn_mms_rde
# MFN
idaas.hl7MFN_Directory=data-input/hl7/mfn
idaas.mfnPort=10005
idaas.mfnACKResponse=true
idaas.mfnTopicName=mctn_mms_mfn
# MDM
idaas.hl7MDM_Directory=data-input/hl7/mdm
idaas.mdmPort=10006
idaas.mdmACKResponse=true
idaas.mdmTopicName=mctn_mms_mdm
# SCH
idaas.hl7SCH_Directory=data-input/hl7/sch
idaas.schPort=10007
idaas.schACKResponse=true
idaas.schTopicName=mctn_mms_sch
# VXU
idaas.hl7VXU_Directory=data-input/hl7/vxu
idaas.vxuPort=10008
idaas.vxuACKResponse=true
idaas.vxuTopicName=mctn_mms_vxu
# CCDA
idaas.hl7ccda_Directory=data-input/ccda
idaas.ccdaTopicName=mctn_mms_ccda
# HL7 over HTTP
idaas.hl7HTTPTopicName=mctn_mms_hl7http
# Other Settings
idaas.convertCCDAtoFHIR=true
idaas.convertHL7toFHIR=true
idaas.processTerminologies=true
idaas.deidentify=false
idaas.anonymize=false
```
Below are the following attributes defined. You will notice that these setting don't contain idaas as that is specific to SpringBoot.

| Attribute Name              | Attribute Details                                                                                                                                    |
|-----------------------------|------------------------------------------------------------------------------------------------------------------------------------------------------|
| server.port                 | Used to define what port this assets runs on, sometimes you will also see manangement.port defined                                                   |
| server.max-http-header-size | Number of Bytes the server can process when receiving data                                                                                           |
| server.address              | 0.0.0.0 means to use all IPs on the machine                                                                                                          |
| management.address          | 0.0.0.0 means to use all IPs on the machine                                                                                                          |
| kafkaBrokers                | All the kafka Brokers involved within the integration, if there are several all can be seperated with a comma host:port, host2:port                  |
| integrationTopic            | Kafka Topic for processing all auditing and error handing                                                                                            |
| terminologyTopic            | Kafka Topic for all terminology processing                                                                                                           |
| cloudTopic                  | Kafka Topic for cloud integration with iDaaS Connect                                                                                                 |
| processPublicCloud          | Setting to determine of PublicCloud will be used (true or false)                                                                                     |
| cloudAPI                    | URL to send directly to iDaaS Connect Public Cloud                                                                                                   |
| fhirConversionTopic         | The Kafka Topic where FHIR conversion data lands                                                                                                     |
| hl7(msg)_Directory          | A defined directory where HL7 v2 message files can be processed from. These attributes are repeated by (msg) - ADT, ORM,ORU,MDM,MFN,RDE,SCH, and VXU |
| (msg)Port                   | The defined server port for the specific (msg). These attributes are repeated by (msg) - ADT, ORM,ORU,MDM,MFN,RDE,SCH, and VXU                       |                                                                                                     
| (msg)ACKResponse            | The processing of ACKs from the sending systems. These attributes are repeated by (msg) - ADT, ORM,ORU,MDM,MFN,RDE,SCH, and VXU                      |
| (msg)TopicName              | These attributes are repeated by (msg) - ADT, ORM,ORU,MDM,MFN,RDE,SCH, and VXU                                                                       |
| hl7ccda_Directory           | Directory to process HL7 CCDA directories from                                                                                                       |
| ccdaTopicName               | The Kafka Topic where CCDA inbound data to the platform lands                                                                                        |
| hl7OverHTTPTopicName        | The Kafka Topic where HL7 data sent over HTTP lands                                                                                                  |
| convertCCDAToFHIR           | Setting used to evaluate if CCDA transactions will be converted to FHR automatically                                                                 |
| convertHL7toFHIR            | Setting used to evaluate if HL7 transactions will be converted to FHIR automatically                                                                 |
| deidentify                  | Future setting: for enabling deidentification to occur                                                                                               |
| anonymize                   | Future setting: for enabling anonymization to occur                                                                                                  |

## Command Line Argument Passing
Alternatively, want to have a few unique ways to do this. This will override one specific property via a command line:
```
java -jar <jarfile>.jar --server.port=8888
```
to run a seperate specific application.properties file. In the example beloe the file is in the config directory
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

## Step 2: Running the App: Maven Commands or Code Editor
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
The following are ways to test HL7.

## HL7
To test these components you will need an HL7 client. There are many avaiable; or you could use the 
[HL7 Data Simulator](https://github.com/Project-Herophilus/iDaaS-DataSimulators/tree/main/HL7) provide by the Herophilus community.
It has a set of capabilities that will continue to expand.

## HL7 and CCDA over HTTP
We have a full set of testing that you can do using our Postman collection, please go
[here](https://www.postman.com/winter-robot-787282/workspace/intelligent-daas/collection/16526170-fb4cdfdd-9a65-4f04-9e32-b807921c1b5e?action=share&creator=16526170)
to access it. Since this collection deals with several assets the specific assets are located in the
->/Connect/HL7 folder.

To properly use the Postman Collection there are a couple things to understand:
1. There are varibles used to make the usage of the collection easier. If you open up SendFHIRResourceInbound to the right
   of it you will see what looks like an eye. Depending upon your implementation, hostnames and ports for iDaaS components
   you can set these as needed. This eliminates the need to reset them manually.
2. All the iDaaS-Connect-HL7 assets can be used with this one URL. 

If you would like to contribute feel free to, contributions are always welcome!!!!

Happy using and coding....


