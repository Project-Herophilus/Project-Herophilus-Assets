Return to the <a href="https://project-herophilus.github.io/Project-Herophilus-Assets/" target="_blank">Main Page</a>

# Setting Up and End User Environment
As we worked to establish iDaaS we wanted to ensure that we could enable complex platforms and systems to
be extended, developed and delivered. It is very important to keep the end user development
experience as simple as possible, our focus is to enable developers to be running in minutes. We have had 
developers leverage Macs, Windows (Server and Desktop) OS, Red Hat Enterprise Linux and Ubuntu for development
platforms. We work to support all these technologies and deliver needed scripts (where possible) to try and assist.

## Pre-Requisites
These Pre-Requsites are intended to provide the core details of what is needed on any development machine 
irrespective of OS. As you read these they are the tooling we have gone with due to several reasons, if you wish to use
different technologies feel free to add those capabilities in, thats's the power of Open Source, we also anticipate adding more
technologies as we continue to progress.

### Java JDK
Java is what everything is developed in. While we list JDK 8 SDK you can run a Java SDKs from
version 8, 11, 13,14 and 15. We have leveraged all these JDKs and been able to build, compile and run the
code within the community leveraging iDaaS.
<br>
We always recommend to consult upstream technologies to ensure these products
are certified and will run beyond a developer machine. We have also seen some tweaks needed in POM files for
specific Java versions.<br>
<a href="https://developers.redhat.com/products/openjdk/download" target=_blank>OpenJDK Download Site</a>

### Kafka
The platform is a series of decoupled components and leverages Kafka capabilities to help it move and distribute data.
We have tested it extensively with any version beyond Kafka 2.5 for some of the key features and enhancements they have
implemented upstream.
<u>
For ease of usage you can also get the latest Kafka release within the code repository, the
zip file is within the platform-addons directory.
</u>
<br>
<a href="https://kafka.apache.org/downloads" target=_blank>Apache Kafka Download Site</a><br>
<a href="https://access.redhat.com/products/red-hat-amq#streams" target=_blank>Red Hat AM-Q Site and Download</a>

### Maven
Maven is a repository framework where vendors can place their libraries in a public site. iDaaS leverages this to
pull needed upstream files and even has some of their open-iDaaS already in the Maven repository ecosystem.
<a href=" https://maven.apache.org/install.html" target=_blank>Maven Site and Installation Link</a>

### Open Source Databases - MariaDB Community 10.x / MySQL 8
While we list this in required we have also put in the word optional. If you want to persist data from the auditing
components we have developed than we have focused on implementing it with lon standing open source RDBMs technology.
However, if you dont want to output the auditing data to an RDBMS then this is not needed (thus the optionality).
Furthermore, you could implement another RDBMS like Postgres, SQL Server, etc. <br>
<a href="https://dev.mysql.com/downloads/" target=_blank>MySQL Community Site</a>
<a href="https://mariadb.com/downloads/" target=_blank>MariaDB Community Site</a>

### API Testing Tool
There are several of these and again it comes to personal preference. We are currently moving to supporting Postman and
and Soap UI community over the next period of time will be replacing all Insomnia import files with Postman and SoapUI 
import files. Both Postman and SoapUI have strong community editions to leverage.

<a href="https://www.soapui.org/tools/soapui/" target=_blank>SOAP UI Community Site</a><br>
<a href="https://www.postman.com/product/api-client/" target=_blank>Postman Site</a><br>

### Code Editor (User Preference)
We always want to recommend that resources pick a code editor or IDE they are comfortable with. You could use command line; however, 
you dont need to. While this is a personal decision we wanted to provide a few common ones numerous resources have used when building, implementing,
contributing to iDaaS. <br>
<a href="https://www.jetbrains.com/idea/" target=_blank>IntelliJ IDEA Site</a><br>
<a href="https://code.visualstudio.com/" target=_blank>Visual Studio Code Site</a><br>
<a href="https://www.eclipse.org" target=_blank>Eclipse Site</a><br>
<a href="https://developers.redhat.com/products/codeready-studio/download?extIdCarryOver=true&sc_cid=701f2000001OH7EAAW" target=_blank>Red Hat Developer Studio Site</a><br/>

## Containers - Docker for Local Usage
In order to showcase the containers aspect of our capabilities,  and since this is running on a developer desktop we 
want to ensure we provide some recommendations in line with what other contriubutors and developers use. <br>
<a href="https://www.docker.com/products/docker-desktop" target=_blank>Docker Desktop Site</a><br>
<a href="https://developers.redhat.com/products/codeready-containers/overview" target=_blank>Code Ready Container Site</a><br>
