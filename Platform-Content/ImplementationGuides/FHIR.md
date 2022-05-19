Return to the <a href="https://project-herophilus.github.io/Project-Herophilus-Assets/" target="_blank">Main Page</a>

# FHIR Implementation Guide

### Integration Data Flow Steps
This data flow is a sample flow based on real world usage and needs. When the iDAAS-Connect-FHIR starts it
creates a servlet endpoint per defined FHIR Resource
that can be leveraged immediately. To date the iDAAS-Connect-FHIR component fully supports all
the FHIR resource needs for CMS Interoperability Final Rule including support for USCD1.
FHIR Servers and has been tested with multiple FHIR servers.<br/>
<b>How would I connect to iDAAS-Connect-FHIR to post data to it?</b><br/>
<i>Every FHIR supported resource is in lower case.</i> This example is based on the default
configuration of iDAAS with no advanced configuration or HTTPS endpoints being enabled. For example,
if the iDAAS-Connect-FHIR
is running on localhost and you are trying to work with a FHIR Condition resource then
the URL would be http://localhost/9081/condition.

1. We use Insomnia Core, a well know API testing tool, to connect to the specific FHIR resource endpoint within the
   running instance of iDAAS-Connect-FHIR.
2. iDAAS-Connect-FHIR audits the inbound data.
3. iDAAS-Connect-FHIR then processes the data to/from the configured FHIR server
4. iDAAS-Connect-FHIR then processes the FHIR server response and audits it as well.

# Design Pattern/Accelerator Configuration
The section below tries to go through the attributes located in the ```<src>/<main>/<resources>/application.properties file ``` .

## Properties via application.properties
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
leveraged:
idaas.fhirVendor=ibm
idaas.fhirVendor=hapi
idaas.fhirVendor=microsoft

## Command Line Argument Passing
Alternatively, if you have a running instance of Kafka, you can start a solution with:
`./platform-scripts/start-solution-with-kafka-brokers.sh --idaas.kafkaBrokers=host1:port1,host2:port2`.
The script will startup iDAAS server.
It is possible to overwrite configuration by:
1. Providing parameters via command line e.g.
2. Leverage the respective application.properties file in the correct location to ensure the properties are properly set
   To use with a custom location `./start-solution.sh --spring.config.location=file:./config/application.properties`. However,
   if you run from a Java IDE or from any command line that just invokes the jar it will automatically pull the application.properties
   file in the resources directory closest to the jar file.
   
# Start The Engine!!!
This section covers the running of the solution. There are several options to start the Engine Up!!!

## Step 1: Kafka Server To Connect To
In order for ANY processing to occur you must have a Kafka server running that this accelerator is configured to connect to.
Please see the following files we have included to try and help: <br/>
[Kafka](https://github.com/RedHat-Healthcare/iDaaS-Demos/blob/master/Kafka.md)<br/>
[KafkaWindows](https://github.com/RedHat-Healthcare/iDaaS-Demos/blob/master/KafkaWindows.md)<br/>

## Step 2: FHIR Server Startup
The platform is all about working with other technologies as needed. Please following the following links for any
specifics to the two leading FHIR Servers we have implemented and tested with: <br/>
<a href="https://github.com/RedHat-Healthcare/iDaaS-Demos/tree/master/Connect-FHIR/FHIRServer-HAPI.md" target="_blank">HAPI FHIR Server</a><br/>
<a href="https://github.com/RedHat-Healthcare/iDaaS-Demos/tree/master/Connect-FHIR/FHIRServer-IBM.md" target="_blank">IBM FHIR Server</a><br/>

## Step 3: Running the App: Maven Commands or Code Editor
This section covers how to get the application started.
+ Maven: go to the directory of where you have this code. Specifically, you want to be at the same level as the POM.xml file and execute the
  following command: <br/>
```
mvn clean install
 ```
Depending upon if you have every run this code before and what libraries you have already in your local Maven instance it could take a few minutes.
```
mvn spring-boot:run
 ```
+ Code Editor: You can right click on the Application.java in the /src/<application namespace> and select Run

# Testing
We have made a recent change to leverage Insomnia Core for testing APIs.  Leverage the files included in the
platforms-addons/Insomnia-APITesting directory of this repository. 


If you would like to contribute feel free to, contributions are always welcome!!!!

Happy using and coding....


