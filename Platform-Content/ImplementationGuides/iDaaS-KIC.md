Return to the <a href="https://project-herophilus.github.io/Project-Herophilus-Assets/" target="_blank">Main Page</a>

# iDaaS-KIC General Implementation Guide

## Data Flow Steps
This data flow of how iDaaS KIC.

![Data Flow](https://github.com/Project-Herophilus/Project-Herophilus-Assets/blob/enhancement/implementation-guides/images/iDaaS-Platform/DataFlow-iDaaS-KIC.png)

# Platform General Pre-Requisites
For all iDaaS design patterns it should be assumed that you will either install as part of this effort or need the
[following](https://github.com/Project-Herophilus/Project-Herophilus-Assets/blob/main/PreRequisites.md).
This platform also includes a very basic Grafana dashboard.

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
cd iDaaS-KIC
```
Now, you should be in the iDaaS-Connect-HL7 sub-module directory and at the same level as the POM.xml file,
now execute the following command: <br/>
```
mvn clean install
```

### Step 2: Running the App
There are several ways and manner we can run the application.

### Command Line
You don't necessarily have to run Step 1 first; however, personnel experience and several contributors have strongly expressed that it is
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
iDaaS-Connect-PublicCloud/src/resource/application.properties file.

Supported properties include:
```
server.address=0.0.0.0
management.address=0.0.0.0
management.port=9970
server.port=9970
server.max-http-header-size=200000
## Kafka Details
idaas.kafkaBrokers=localhost:9092
idaas.integrationTopic=opsmgmt_platformtransactions
idaas.appintegrationTopic=opsmgmt_platformappintgrtn
## Audit Settings - Directory Settings
# Data Integration
idaas.storeInFs_DataIntegrationAudit=true
idaas.auditDir_DataIntegrationAuditLocation=/data_output/kic_dataintgrt
# Application Integration
idaas.storeInFs_AppIntegrationAudit=true
idaas.auditDir_AppIntegrationAuditLocation=/data_output/audit_appintegration
## Relational Database Detail
# Setting the createDbTable=true will try to autocreate a table
idaas.createDbTable=false
idaas.storeInDb=true
# Relational Database Detail
idaas.storeInDb_DataIntegrationAudit=true
idaas.storeInDb_AppIntegrationAudit=true
# Database Tables
idaas.isCreateDbTable=false
idaas.dbIntegrationTableName=intgrtn_insight
idaas.dbAppIntegrationTableName=appintgrtn_insight
# Postgres
idaas.dbDriverClassName=org.postgresql.Driver
idaas.dbUrl=jdbc:postgresql://localhost:5432/idaas_kic
idaas.dbPassword=Developer123
idaas.dbUsername=postgres
```

*This needs to have a correctly defined database connection with host, post, username and password if you plan on using 
the Grafana Dashboard or anything related to the seeing data in other than a JSON based file*

Below are the following attributes defined. You will notice that these setting don't contain idaas as that is specific to SpringBoot.

| Attribute Name                 | Attribute Details                                                                                                                                    |
|--------------------------------|------------------------------------------------------------------------------------------------------------------------------------------------------|
| server.port                    | Used to define what port this assets runs on, sometimes you will also see manangement.port defined                                                   |
| server.max-http-header-size    | Number of Bytes the server can process when receiving data                                                                                           |
| server.address                 | 0.0.0.0 means to use all IPs on the machine                                                                                                          |
| management.address             | 0.0.0.0 means to use all IPs on the machine                                                                                                          |
| kafkaBrokers                   | All the kafka Brokers involved within the integration, if there are several all can be seperated with a comma host:port, host2:port                  |
| integrationTopic               | Kafka Topic for processing all auditing and error handing - specific to native iDaaS-Connect assets                                                  |
| appintegrationTopic | Kafka Topic for all third party application integration processing                                                                                   |

| cloudTopic                     | Kafka Topic for cloud integration with iDaaS Connect                                                                                                 |
| processPublicCloud             | Setting to determine of PublicCloud will be used (true or flase)                                                                                     |
| cloudAPI                       | URL to send directly to iDaaS Connect Public Cloud                                                                                                   |
| fhirConversionTopic            | The Kafka Topic where FHIR conversion data lands                                                                                                     |
| hl7(msg)_Directory             | A defined directory where HL7 v2 message files can be processed from. These attributes are repeated by (msg) - ADT, ORM,ORU,MDM,MFN,RDE,SCH, and VXU |
| (msg)Port                      | The defined server port for the specific (msg). These attributes are repeated by (msg) - ADT, ORM,ORU,MDM,MFN,RDE,SCH, and VXU                       |                                                                                                     
| (msg)ACKResponse               | The processing of ACKs from the sending systems. These attributes are repeated by (msg) - ADT, ORM,ORU,MDM,MFN,RDE,SCH, and VXU                      |
| (msg)TopicName                 | These attributes are repeated by (msg) - ADT, ORM,ORU,MDM,MFN,RDE,SCH, and VXU                                                                       |
| hl7ccda_Directory              | Directory to process HL7 CCDA directories from                                                                                                       |
| ccdaTopicName                  | The Kafka Topic where CCDA inbound data to the platform lands                                                                                        |
| hl7OverHTTPTopicName           | The Kafka Topic where HL7 data sent over HTTP lands                                                                                                  |
| convertCCDAToFHIR              | Setting used to evaluate if CCDA transactions will be converted to FHR automatically                                                                 |
| convertHL7toFHIR               | Setting used to evaluate if HL7 transactions will be converted to FHIR automatically                                                                 |
| deidentify                     | Future setting: for enabling deidentification to occur                                                                                               |
| anonymize                      | Future setting: for enabling anonymization to occur                                                                                                  |

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



### Specific Implementation Instructions
These are specific to getting this solution to run.

#### A. iDaaS KIC
+ You can run the individual efforts with a specific command, it is always recommended you run the mvn clean install first.
  This assumes you are within the base directory where all the assets where cloned/downloaded to. Here is the command to 
  run the design pattern from the command line: <br/>
```
cd iDaaS-KIC-Integration
mvn clean install
mvn spring-boot:run
 ```
or
```
- Build the jar file as defined above and then run:
java -jar <jarfile>.jar
```

### Verfiying that it worked
- Start iDaaS-KIC (Section A. above this)
- Make sure that the application.properties or ConfigMap Settings are what you have told others to use, otherwise you 
will not see data. Use any of the iDaaS-Connect or other components you are using and you should data processing into 
the iDaaS-KIC platform.
- Look within Kafka, iDaaS-KIC, or on the system attached to the HL7 Server and look at what it processed.

Happy using and coding....