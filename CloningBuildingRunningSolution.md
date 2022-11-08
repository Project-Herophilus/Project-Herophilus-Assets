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

- Traditional, Spring-Boot style build. You will need resources/application-dev.properties to application.properties and you can then run: 
```
mvn spring-boot:run
```
- Here is the command to run the design pattern in Dev mode from the command line. This uses the settings in the resources/application-dev.properties
```
mvn spring-boot:run -Dspring-boot.run.profiles=dev
 ```

- Depending upon if you have every run this code before and what libraries you have already in your local Maven instance
it could take a few minutes. From a code editor you also can right click on the Application.java in the /src/<application namespace> and select Run

### Running the Java JAR
If you don't run the code from an editor or from the maven commands above. You can compile the code through the maven
commands above to build a jar file. Then, go to the /target directory and run the following command: <br/>

- You will need to build a jar file.
- Run the jar file with the standard command:
```
java -jar <jarfile>.jar 
```

### Additional or Advanced Design Pattern/Accelerator Configuration
 
All iDaaS Design Pattern/Accelelrators have application.properties files to enable some level of reusability of code and simplfying configurational enhancements. The following section is designed around the application.properties ssupporting iDaaS Connect HL7; however, it is applicable across all iDaaS-Connect assets. iDaaS Connect HL7 uses 9980 for its server port (where the user management interface will run from). You can change this, but you will have to ensure other applications are not using ports you specify.

```
# Kafka Details and Topics
idaas.kafka.brokers=localhost:9092
idaas.ccdapost.topic.name=ccdapost
idaas.ccdaconversion.topic.name=ccdaconverted
idaas.hl7conversion.topic.name=hl7converted
idaas.hl7post.topic.name=hl7post
idaas.publiccloud.topic.name=cloud
idaas.terminology.topic.name=terminologies
idaas.deidentification.topic.name=deidentification
idaas.processacks.topic.name=hl7acks
idaas.datatier.topic.name=datatier
idass.heda.topic.name=hedainbound
idass.sdoh.topic.name=sdoh
idaas.hl7adt.topic.name=adt
idaas.hl7mdm.topic.name=mdm
idaas.hl7mfn.topic.name=mfn
idaas.hl7orm.topic.name=orm
idaas.hl7oru.topic.name=oru
idaas.hl7rde.topic.name=rde
idaas.hl7sch.topic.name=sch
idaas.hl7vxu.topic.name=vxu
# HL7 Ports
idaas.port.adt=10001
idaas.port.mdm=10002
idaas.port.mfn=10003
idaas.port.orm=10004
idaas.port.oru=10005
idaas.port.rde=10006
idaas.port.sch=10007
idaas.port.vxu=10008
# Processes
idaas.process.PublicCloud=true
idaas.process.Terminologies=true
idaas.process.Sdoh=true
idaas.process.Deidentification=false
idaas.process.Empi=false
idaas.process.Acks=true
idaas.process.DataTier=false
idass.process.HEDA=false
# Conversions
idaas.convert.CCDAtoFHIR=true
idaas.convert.HL7toFHIR=true
# External APIs
idaas.api.deidentification=http://localhost:8001/api/deidentification
idaas.api.empi=http://localhost:8001/api/empi
idaas.api.cloud=urlendpoint
# Other Settings
aws.access.key=
aws.secret.key=
aws.region=US_EAST_1
aws.region.lower=us-east-1
aws.bucket=public-idaas
```
### Specific Examples of using Parameters  

 - To specify one different attribute being changed
 ```
 java -jar <jarfile>.jar --idaas.port.adt=10001
 ```
 - To use a properties file in a custom location 
 ```
 java -jar <jarfile>.jar --spring.config.location=file:./config/application.properties`
```
 
### Deploying To OpenShift (Using The Maven Plugin)

 - Be in the specific directory of the module/submodule you will be deploying
 - Login into the OpenShift console 
 - Select Copy Login Credentials
 - Copy the key login details from the OpenShift console, under the user there is a copy login token, copy it
 - Then, (Insert the entire command on the screen)
 - oc project (your project name)
 - Run the mvn command below

```
mvn clean oc:deploy -P openshift -Djkube.generator.from=openshift/fuse7-java11-openshift:1.10 -Djkube.generator.fromMode=istag
```
