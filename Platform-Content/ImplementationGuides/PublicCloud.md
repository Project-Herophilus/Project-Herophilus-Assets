Return to the <a href="https://project-herophilus.github.io/Project-Herophilus-Assets/" target="_blank">Main Page</a>

# Public Cloud Implementation Guide

## Data Flow Steps
This data flow of how iDaaS Connect Public Cloud functions.

![Data Flow](https://github.com/Project-Herophilus/Project-Herophilus-Assets/blob/main/images/iDaaS-Platform/DataFlow-PublicCloud.png)

# Platform General Pre-Requisites
For all iDaaS design patterns it should be assumed that you will either install as part of this effort or need the
[following](https://github.com/Project-Herophilus/Project-Herophilus-Assets/blob/main/PreRequisites.md).

## Cloning, Building and Running Solutions
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
cd iDaaS-Connect-Cloud
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
management.port=9985
server.port=9985
# Management App Server Address
server.address=0.0.0.0
management.address=0.0.0.0
# Kafka
idaas.kafkaBrokers=localhost:9092
idaas.integrationTopic=opsmgmt_platformtransactions
idaas.cloudTopic=idaas_cloud
idaas.test_cloudTopic=idaas_cloud
## AWS
# Access
idaas.awsAccessKey=<Your Key Here>
idaas.awsSecretKey=<Your Key Here>
#AWS-S3
camel.component.aws2-s3.accessKey=<Your Key Here>
camel.component.aws2-s3.secretKey=<Your Key Here>
camel.component.aws2-s3.region=us-east-1
bucketName=testhealthcarebucket
camel.component.aws2-sqs.accessKey=<Your Key Here>
camel.component.aws2-sqs.secretKey=<Your Key Here>
camel.component.aws2-sqs.region=us-east-1
camel.component.aws2-kinesis.accessKey=<Your Key Here>
camel.component.aws2-kinesis.secretKey=<Your Key Here>
camel.component.aws2-kinesis.region=us-east-1
camel.component.aws2-sns.accessKey=<Your Key Here>
camel.component.aws2-sns.secretKey=<Your Key Here>
camel.component.aws2-sns.region=us-east-1
camel.component.aws2-ses.accessKey=<Your Key Here>
camel.component.aws2-ses.secretKey=<Your Key Here>
camel.component.aws2-ses.region=us-east-1
#AWS-MQSpecifics
broker.address=<Your Server Here>
broker.options=sslEnabled=true&amqp.idleTimeout=240000&transport.trustAll=true&transport.verifyHost=false
#broker.port=443
broker.port=<Your Port Here>
broker.user=admin
broker.password=<Your Password Here>
broker.url=amqps://${broker.address}:${broker.port}?${broker.options}
sleep.time=1
amq.url=amq:test.
#AWSConnectorSettings
idaas.awsS3=true
idaas.awsMQ=true
idaas.awsSQS=true
idaas.awsKinesis=true
idaas.awsSNS=true
idaas.awsSES=true
idaas.awsLambda-false
#Azure
#GCP
```

Below are the following attributes defined. You will notice that these setting don't contain idaas as that is specific to SpringBoot.

| Attribute Name                         | Attribute Details                                                                                                                   |
|----------------------------------------|-------------------------------------------------------------------------------------------------------------------------------------|
| server.port                            | Used to define what port this assets runs on, sometimes you will also see manangement.port defined                                  |
| server.max-http-header-size            | Number of Bytes the server can process when receiving data                                                                          |
| server.address                         | 0.0.0.0 means to use all IPs on the machine                                                                                         |
| management.address                     | 0.0.0.0 means to use all IPs on the machine                                                                                         |
| kafkaBrokers                           | All the kafka Brokers involved within the integration, if there are several all can be seperated with a comma host:port, host2:port |
| integrationTopic                       | Kafka Topic for processing all auditing and error handing                                                                           |
| terminologyTopic                       | Kafka Topic for all terminology processing                                                                                          |
| cloudTopic                             | Kafka Topic for cloud integration with iDaaS Connect                                                                                |
| test_cloudTopic                        | Kafka Topic for testing cloud integration                                                                                           |
| awsAccessKey                           | Key assigned from AWS through portal or by admin team                                                                               |
| awsSecretKey                           | Key assigned from AWS through portal or by admin team                                                                               |
| cloudAPI                               | URL to send directly to iDaaS Connect Public Cloud                                                                                  |
| camel.component.aws2-s3.accessKey      | Key assigned from AWS through portal or by admin team                                                                               |
| camel.component.aws2-s3.secretKey      | Key assigned from AWS through portal or by admin team                                                                               |
| camel.component.aws2-s3.region         | The region/regions where S3 is running in                                                                                           |                                                                                                     
| bucketName                             | The specific bucket you will be using                                                                                               |
| camel.component.aws2-sqs.accessKey     | Key assigned from AWS through portal or by admin team                                                                               |
| camel.component.aws2-sqs.secretKey     | Key assigned from AWS through portal or by admin team                                                                               |
| camel.component.aws2-sqs.region        | The region/regions where SQS is running in                                                                                          |
| camel.component.aws2-kinesis.accessKey | Key assigned from AWS through portal or by admin team                                                                               |
| camel.component.aws2-kinesis.secretKey | Key assigned from AWS through portal or by admin team                                                                               |
| camel.component.aws2-kinesis.region    | The specific region/regions where Kinesis is running in                                                                             |
| camel.component.aws2-sns.accessKey     | Key assigned from AWS through portal or by admin team                                                                               |
| camel.component.aws2-sns.secretKey     | Key assigned from AWS through portal or by admin team                                                                               |
| camel.component.aws2-sns.region        | The specific region/regions where SNS is running in                                                                                 |
| camel.component.aws2-ses.accessKey     | Key assigned from AWS through portal or by admin team                                                                               |
| camel.component.aws2-ses.secretKey     | Key assigned from AWS through portal or by admin team                                                                               |
| camel.component.aws2-ses.region        | The specific region/regions where SES is running in                                                                                 |
| broker.address                         | AWS-MQSpecifics broker host name                                                                                                    |
| broker.options                         | sslEnabled=true&amqp.idleTimeout=240000&transport.trustAll=true&transport.verifyHost=false                                          |
| broker.port                            | 443                                                                                                                                 |
| broker.user                            | admin                                                                                                                               |
| broker.password                        | <Your Password Here>                                                                                                                |
| broker.url                             | amqps://${broker.address}:${broker.port}?${broker.options}                                                                          |
| sleep.time                             | 1                                                                                                                                   |
| amq.url                                | amq:test.                                                                                                                           |
| idaas.awsS3                            | true                                                                                                                                |
| idaas.awsMQ                            | true                                                                                                                                |
| idaas.awsSQS                           | true                                                                                                                                |
| idaas.awsKinesis                       | true                                                                                                                                |
| idaas.awsSNS                           | true                                                                                                                                |
| idaas.awsSES                           | true                                                                                                                                |
| idaas.awsLambda                        | false                                                                                                                               |

## Command Line Argument Passing
Alternatively, want to have a few unique ways to do this. This will override one specific property via a command line:
```
java -jar <jarfile>.jar --server.port=8888
```
to run a seperate specific application.properties file. In the example below the file is in the config directory
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
The following are ways to test iDaaS Public Cloud.

## From Other Components via Kafka

1. If any of the other iDaaS-Connect/iDaaS-DREaM assets are configured with the publicCloud setting enabled then they
will send data to a specific topic. iDaaS Connect-Cloud simply needs to be configured to process data on that same 
topic and it will then evaluate all the specific components settings to determine where it is processing data to by those
settings that are enabled (set to true).
2. Any asset can also send data to the same topic and the same processing rules will apply specific to how the 
components settings to determine where it is processing data to by those  settings that are enabled (set to true).

## URL Endpoint
there is a endpoint provided <host>:<port>/idaas/publiccloud that enables anything sent through the URL can be sent to the
various public cloud components based on the existing settings.

## Public Cloud over HTTP
We have a full set of testing that you can do using our Postman collection, please go
[here](https://www.postman.com/winter-robot-787282/workspace/intelligent-daas/collection/16526170-fb4cdfdd-9a65-4f04-9e32-b807921c1b5e?action=share&creator=16526170)
to access it. Since this collection deals with several assets the specific assets are located in the
->/Connect/Cloud folder.

To properly use the Postman Collection there are a couple things to understand:
1. There are varibles used to make the usage of the collection easier. If you open up API and to the right
   of it you will see what looks like an eye. Depending upon your implementation, hostnames and ports for iDaaS components
   you can set these as needed. This eliminates the need to reset them manually.
2. All the iDaaS-Connect-Cloud assets use the same URL; however, they show different medical devices sending data.

If you would like to contribute feel free to, contributions are always welcome!!!!

Happy using and coding....


