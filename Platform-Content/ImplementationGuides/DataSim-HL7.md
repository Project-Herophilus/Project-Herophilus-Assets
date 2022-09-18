# Data Simulator: HL7

## Scenario(s)
This scenario follows a very common general clinical care implementation pattern for processing HL7 transactions. The
implementation pattern involves one system sending data to another system via the HL7 message standard protocol (MLLP).
The HL7 data simulator will connect and send a configurable number of HL7 transactions to the defined HL7 server
host and port. When the HL7 message is processed by the HL7 Server it will generate an HL7 ACK that is receives.

 <img src="https://github.com/Project-Herophilus/Project-Herophilus-Assets/blob/main/images/iDaaS-Platform/DataFlow-HL7.png" width="800" height="600">

It is important to know that for every HL7 Message Type/Event there is a specifically defined, and dedicated, HL7 socket
server endpoint.

## Additional Repositories Involved with This Scenario
For this scenario you will need an existing system or capability to act as an HL7 Server. While any will do for this demonstration,
and many have been tested we are going to write this from the implementation perspective that you are trying to
test [iDaaS Connect HL7](https://github.com/Project-Herophilus/iDaaS-Connect/blob/main/iDaaS-Connect-HL7/README.md) and its general capabilities.

# Start The Engine!!!
This section covers the running of the solution. There are several options to start the Engine Up!!!

## Step 1: Kafka Server To Connect To
In order for ANY processing to occur you must have a Kafka server running that this accelerator is configured to connect to.
Please see the following files we have included to try and help: <br/>
[Kafka Non Windows](https://github.com/RedHat-Healthcare/iDaaS-Demos/blob/master/Kafka.md)<br/>
[Kafka Windows](https://github.com/RedHat-Healthcare/iDaaS-Demos/blob/master/KafkaWindows.md)<br/>
As with all implementations we also have container based implementations of Kafka as well. These can be very simple to implement
and include.

## Step 2: How To Get, Build and Run iDaaS-Connect Assets
Within each submodule/design pattern/reference architecture in this repository there is a specific README.md. It is
intended to follow a specific format that covers a solution definition, how we look to continually improve, pre-requisities,
implementation details including specialized configuration, known issues and their potential resolutions.
However, there are a lot of individual capabilities, we have tried to keep content relevant and specific to
cover specific topics.
- For cloning, building and running of assets that content can be found
  [here](https://github.com/Project-Herophilus/Project-Herophilus-Assets/blob/main/CloningBuildingRunningSolution.md).
- Within each implementation there is a management console, the management console provides the same
  interface and capabilities no matter what implementation you are working within, some specifics and
  and details can be found [here](https://github.com/Project-Herophilus/Project-Herophilus-Assets/blob/main/AdministeringPlatform.md).
- If you are using containers, we maintain numerous assets [here](https://hub.docker.com/search?q=rhhcarch)

## Specific Implementation Configuration Details
There are several key details you must make decisions on and also configure. For all of these you will
need to update the application.properties in accordance with these decisions.

*- if you are using non-container assets then the settings can be found in the /src/properties/application.properties* <br/>
*- containers ConfigMaps references would just not include the idaas. as part of the property name*

### A. iDaaS Connect HL7
The settings for usage of [iDaaS Connect HL7](https://github.com/Project-Herophilus/iDaaS-Connect/blob/main/iDaaS-Connect-HL7/README.md)
and its general capabilities below are ONLY a small section of the overall application.properties. If this is implemented in a
container these are defined as values within a config map. All the notes below are specific to ONLY getting
an HL7 ADT Server up and running and all other capabilities are disabled to minimize complexity.

Because you will be running this on some equipment in your infrastructure you will need to know the IP/hostname
and make sure that all the routes and network details are worked out for it to be able to receive inbound data.
If this is all running local on your machine you might need to have ports opened locally by IT staff or
it just might work. Since, this component uses all IPs it is recommended that you know your IP or hostname.

- The adtPort needs to be set to a port not in use, it will fail to start otherwise. This port will needed in
  the configuration of the data simulator next.
- The adtTopicName is the Kafka topic where the transactions once processed willend up
```
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
idaas.processPublicCloud=false
idaas.cloudAPI=urlendpoint
# HL7 Specific properties
# ADT
idaas.hl7ADT_Directory=/data-input/hl7/adt
idaas.adtPort=10001
idaas.adtACKResponse=true
idaas.adtTopicName=mctn_mms_adt
```

### B. iDaaS Data Simulator HL7
Since this is the client it will need to know how to connect to the server in section A.
Supported properties include (for this accelerator there is a block per message type that follows the same pattern):
```
# Server - Internal
management.port=9960
server.port=9960
server.max-http-header-size=200000
server.address=0.0.0.0
management.address=0.0.0.0
# Kafka
idaas.kafkaBrokers=localhost:9092
idaas.kicTopicName=opsmgmt_platformtransactions
# Timing and Processing Counts
idaas.timerSeconds=5s
idaas.processingCount=1000
# Connectivity Attributes
# ADT
idaas.processADT=true
idaas.processADTVolume=false
idaas.hl7ADT_Directory=/data-input/simulators/adt
idaas.adtPort=<Port>
idaas.adtHost=<IP or Host>
idaas.adtACKResponse=true
idaas.adtTopicName=mctn_mms_adt_client
```

## Step 3: Running the App: Maven Commands or Code Editor
This section covers how to get the application started and running locally. There will be other sections added in the future
for containers.

### General Instructions
+ Your system has met all the pre-requisites.
+ You have cloned the repo(s) or downloaded the zip of rep and unzipped it.

You can run the individual efforts with a specific command, it is always recommended you run the mvn clean install first.
Here is the command to run the design pattern from the command line: <br/>
```
mvn spring-boot:run
 ```

# Running the Java JAR
To run the code from a jar file.
+ Your system has met all the pre-requisites.
+ You have cloned the repo(s) or downloaded the zip of rep and unzipped it.
+ Maven build: go to the directory of where you have this code. Specifically, you want to be at the same level as the POM.xml file and execute the
  following command: <br/>
```
mvn clean install
```
+ Running the built jar from the maven build
```
java -jar <jarfile>.jar 
 ```

### Specific Implementation Instructions
These are specific to getting this solution to run.

#### A. iDaaS Connect HL7
+ You can run the individual efforts with a specific command, it is always recommended you run the mvn clean install first.
  Here is the command to run the design pattern from the command line: <br/>
```
mvn spring-boot:run
 ```
or
```
java -jar <jarfile>.jar
```

### Verfiying that it worked
- Start your HL7 Server, in this case iDaaS Connect HL7
- Start

Happy using and coding....


