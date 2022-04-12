# General 
This content is designws to cover the specific topic of Building and Running an iDaaS solution. While there are references to specific solutions 
named within this content it is meant to show how to implement specifics.

## Step 1: Kafka Server To Connect To
In order for ANY processing to occur you must have a Kafka server running that this accelerator is configured to connect to.
Please see the following files we have included to try and help: <br/>
[Kafka](https://github.com/RedHat-Healthcare/iDaaS-Demos/blob/master/Kafka.md)<br/>
[KafkaWindows](https://github.com/RedHat-Healthcare/iDaaS-Demos/blob/master/KafkaWindows.md)<br/>

## Step 2: Cloning the Code Repository
This section covers how to get the application started.
+ Maven: The following steps are needed to run the code. Either through your favorite IDE or command line
```
git clone <repo name>
For example to clone iDaaS-Connwct:
git clone https://github.com/Project-Herophilus/iDaaS-Connect.git
 ```

## Step 3: Running the App: Maven Commands or Code Editor
This section covers how to get the application started.
+ Maven: The following steps are needed to run the code. Either through your favorite IDE or command line
```
git clone <repo name>
For example to clone iDaaS-Connwct:
git clone https://github.com/Project-Herophilus/iDaaS-Connect.git
 ```
You can either compile at the base directory or go to the specific iDaaS-Connect acceelerator. Specifically, you want to
be at the same level as the POM.xml file and execute the following command: <br/>
```
mvn clean install
```
You can run the individual efforts with a specific command, it is always recommended you run the mvn clean install first.
Here is the command to run the design pattern from the command line: <br/>
```
mvn spring-boot:run
 ```
Depending upon if you have every run this code before and what libraries you have already in your local Maven instance
it could take a few minutes.
+ Code Editor: You can right click on the Application.java in the /src/<application namespace> and select Run

# Running the Java JAR
If you don't run the code from an editor or from the maven commands above. You can compile the code through the maven
commands above to build a jar file. Then, go to the /target directory and run the following command: <br/>
```
java -jar <jarfile>.jar 
```

### Design Pattern/Accelerator Configuration
All iDaaS Design Pattern/Accelelrators have application.properties files to enable some level of reusability of code and simplfying configurational enhancements.<br/>
In order to run multiple iDaaS integration applications we had to ensure the internal http ports that
the application uses. In order to do this we MUST set the server.port property otherwise it defaults to port 8080 and ANY additional
components will fail to start. 
  
iDaaS Connect HL7 uses 9980. You can change this, but you will have to ensure other applications are not
using the port you specify.

```properties
server.port=9980
```

It is possible to overwrite configuration by:
1. Providing parameters via command line e.g.
`./start-solution.sh --idaas.adtPort=10009`
2. Creating an application.properties next to the idaas-connect-hl7.jar in the target directory
3. Creating a properties file in a custom location `./start-solution.sh --spring.config.location=file:./config/application.properties`

Supported properties include (for this accelerator there is a block per message type that follows the same pattern):
```properties
server.port=9980
# Kafka Configuration - use comma if multiple kafka servers are needed
idaas.kafkaBrokers=localhost:9092
# Basics on properties
idaas.hl7ADT_Directory=data/adt
idaas.adtPort=10001
idaas.adtACKResponse=true
idaas.adtTopicName=mctn_mms_adt
idaas.hl7ORM_Directory=data/orm
```
