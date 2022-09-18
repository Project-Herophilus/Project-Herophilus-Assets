Return to the <a href="https://github.com/Project-Herophilus" target="_blank">Main GitHub Org. Site</a>

For all iDaaS design patterns it should be assumed that you will either install as part of this effort, or have the following:

# General
- An existing Kafka (or some flavor of it) up and running. We have implemented iDaaS with numerous Kafka implementations. 
Please see the following files we have included to try and help: <br/>
[Kafka Non Windows](https://github.com/RedHat-Healthcare/iDaaS-Demos/blob/master/Kafka.md) <br/>
[Kafka Windows](https://github.com/RedHat-Healthcare/iDaaS-Demos/blob/master/KafkaWindows.md) <br/>
No matter the platform chosen it is important to know that the Kafka out of the box implementation might require some 
changes depending upon your implementation needs. Here are a few we have made to ensure: <br/>
In <kafka>/config/consumer.properties file we will be enhancing the property of auto.offset.reset to earliest. This is intended to enable any new
system entering the group to read ALL the messages from the start. <br/>
auto.offset.reset=earliest <br/>
 
# Java Centric Assets
This section applies to iDaaS-Connect.

## Specific Needed Assets
- Java JDK: Java is what everything is developed in. The current supported JDK release(s) are 1.8 and 11. We strongly 
recommend 11 as all the build actions and activities we do are based on this JDK release.
<a href="https://developers.redhat.com/products/openjdk/download" target=_blank>OpenJDK Download Site</a>.
- Maven: Some understanding of building, deploying Java artifacts and the commands associated. If using Maven commands then 
Maven would need to be intalled and runing for the environment you are using. More details about Maven can be 
found [here](https://maven.apache.org/install.html)<br/>
- An internet connection with active internet connectivity, this is to ensure that if any Maven commands are
run and any libraries need to be pulled down they can.<br/>

 
 
