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
Here is a consistent manner in the way you can clone, build and run this [component](https://github.com/Project-Herophilus/Project-Herophilus-Assets/blob/main/CloningBuildingRunningSolution.md).

# Implementation Centric Implementation Details
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
idaas.kafkaBrokers=localhost:9092
idaas.processToFHIR=true
# fhirVendor can be ibm hapi or microsoft
idaas.fhirVendor=hapi
idaas.ibmFhirServer=http://localhost:8090/fhir-server/api/v4/
idass.hapiFhirServer=http://localhost:8888/fhir-server/api/v4/
idaas.microsoftFhirServer=http://localhost:9999/fhir/api/v4/
```

As you look at the properties the idaas.fhirVendor on startup determines the FHIR Server that would be
leveraged:<br/>
idaas.fhirVendor=ibm<br/>
idaas.fhirVendor=hapi<br/>
idaas.fhirVendor=microsoft<br/>

Additionally, this design pattern has been tested with multiple FHIR Servers and has been tested with multiple FHIR servers.<br/>
<b>How would I connect to iDAAS-Connect-FHIR to post data to it?</b><br/>
<i>Every FHIR supported resource is in lower case.</i> This example is based on the default
configuration of iDAAS with no advanced configuration or HTTPS endpoints being enabled. For example,
if the iDAAS-Connect-FHIR is running on localhost and you are trying to work with a FHIR Condition resource then
the URL would be http://localhost:9081/.

1. We use Insomnia Core, a well know API testing tool, to connect to the spec
2. ific FHIR resource endpoint within the
   running instance of iDAAS-Connect-FHIR.
2. iDAAS-Connect-FHIR audits the inbound data.
3. iDAAS-Connect-FHIR then processes the data to/from the configured FHIR server
4. iDAAS-Connect-FHIR then processes the FHIR server response and audits it as well.

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

## Step 1: Kafka Server To Connect To
In order for ANY processing to occur you must have a Kafka server running that this accelerator is configured to connect to.
Please see the following files we have included to try and help: <br/>
[Kafka Non Windows](https://github.com/RedHat-Healthcare/iDaaS-Demos/blob/master/Kafka.md)<br/>
[KafkaWindows](https://github.com/RedHat-Healthcare/iDaaS-Demos/blob/master/KafkaWindows.md)<br/>

## Step 2: FHIR Server Startup
The platform is all about working with other technologies as needed. If you are workign with an external FHIR server you will
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


