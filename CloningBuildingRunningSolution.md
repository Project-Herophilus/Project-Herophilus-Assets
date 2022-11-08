Return to the <a href="https://github.com/Project-Herophilus" target="_blank">Main GitHub Org. Site</a>

# General 
This content is designws to cover the specific topic of Building and Running an iDaaS solution. While there are references to specific solutions 
named within this content it is meant to show how to implement specifics.

## Step 1: Kafka Server To Connect To
In order for ANY processing to occur you must have a Kafka server running that this accelerator is configured to connect to.
Please see the following files we have included to try and help: <br/>
[Kafka Non-Windows](https://github.com/Project-Herophilus/Project-Herophilus-Assets/blob/main/Kafka.md)<br/>
[Kafka Windows](https://github.com/Project-Herophilus/Project-Herophilus-Assets/blob/main/KafkaWindows.md)<br/>

## Step 2: Cloning or Downloading the Code Repository
This section covers how to get the application cloned and downloaded.
+ Maven: The following steps are needed to run the code. Either through your favorite IDE or command line. The following command will
clone the iDaaS-Connect repository and all it's submodules:
```
git clone <repo name>
For example to clone iDaaS-Connwct:
git clone https://github.com/Project-Herophilus/iDaaS-Connect.git
 ```
+ You can also go ahead and download the code from a specific repository and then unzip it as well. To download just click on the Code
button and select the Download Zip option.

## Java Assets
This section is specific to the Java centric assets provided.

### Building the App: Command Line
This section covers how to get the application built.
+ Maven: The following steps are needed to run the code. Either through your favorite IDE or command line
You can either compile at the base directory or go to the specific iDaaS-Connect acceelerator. Specifically, you want to
be at the same level as the POM.xml file and execute the following command: <br/>
```
mvn clean install
```

### Running the App
There are several ways and manner we can run the application.

### Command Line
You dont necessarily have to run Step 3 first; however, personnel experience and several contributors have strongly expressed that it is
just a cleaner way to ensure all the assets are pulled and if anything is needed or issues the mvn clean install should show it.

- Here is the command to run the design pattern from the command line: <br/>
```
mvn spring-boot:run
 ```
- Here is the command to run the design pattern in Dev mode from the command line:
```
mvn spring-boot:run -Dspring-boot.run.profiles=dev
 ```
- Depending upon if you have every run this code before and what libraries you have already in your local Maven instance
it could take a few minutes. From a code editor you also can right click on the Application.java in the /src/<application namespace> and select Run

### Running the Java JAR
If you don't run the code from an editor or from the maven commands above. You can compile the code through the maven
commands above to build a jar file. Then, go to the /target directory and run the following command: <br/>

```
java -jar <jarfile>.jar 
```

### Additional or Advanced Design Pattern/Accelerator Configuration
 
All iDaaS Design Pattern/Accelelrators have application.properties files to enable some level of reusability of code and simplfying configurational enhancements.<br/>
In order to run multiple iDaaS integration applications we had to ensure the internal http ports that
the application uses. In order to do this we MUST set the server.port property otherwise it defaults to port 8080 and ANY additional
components will fail to start. 
  
The following section is designed around the application.properties ssupporting iDaaS Connect HL7; however, it is aplicable across all iDaaS-Connect assets. iDaaS Connect HL7 uses 9980 for its server port (where the user management interface will run from). You can change this, but you will have to ensure other applications are not
using the port you specify.

```
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
### Specific Examples of using Parameters  

 - To specify one different attribute being changed
 ```
 java -jar <jarfile>.jar --idaas.adtPort=10009
 ```
 - To use a properties file in a custom location 
 ```
 java -jar <jarfile>.jar --spring.config.location=file:./config/application.properties`
```
 
### Deploying To OpenShift

#### Using The Maven Plugin

	1. Be in the specific directory of the module/submodule you will be deploying
 2. Login into the OpenShift console 
 3. Select Copy Login Credentials
	4. Copy the key login details from the OpenShift console, under the user there is a copy login token, copy it
	5. <Insert the entire command on the screen>
	6. oc project <your project name>
 7. Run the mvn command below

```
mvn clean oc:deploy -P openshift -Djkube.generator.from=openshift/fuse7-java11-openshift:1.10 -Djkube.generator.fromMode=istag![image](https://user-images.githubusercontent.com/64438147/200469551-50087cb6-9470-4e2e-b8d5-db036dc1e562.png)
```
