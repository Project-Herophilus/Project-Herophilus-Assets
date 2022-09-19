Return to the <a href="https://github.com/Project-Herophilus" target="_blank">Main GitHub Org. Site</a>

# Kafka on Windows
We have seen, and been asked for more information and details specific
to how to implement specific assets in Windows. This document is intended to be content that covers
implementing Kafka for Windows. This requires the open source implementation as we have not seen
an code base otherwsie that works reliably.

# Downloads
The following section is meant to define all the specifc software you will need for this.
We are not recommending ANY third party software ONLY explaining the tools we have
used to be succesful with these steps.

# Helpful Links
Our team did not do these scripts or discover anything new to implement
this, we leveraged a series of links to construct these
instructions.

* [Geeks for Geeks](https://www.geeksforgeeks.org/how-to-install-and-run-apache-kafka-on-windows/)
* [DZone Kafka Windows Article](https://dzone.com/articles/running-apache-kafka-on-windows-os)

## Third Party Software
* [7Zip](https://www.7-zip.org/) -  Download the correct version to correspond with your system needs.

## Software Files
For this you will need to get the latet binary download of software from
[Apache Kafka Downloads Page](http://kafka.apache.org/downloads). For simplicity
we have included a release within this code repository within the platform-addons/windows
directory.

## Steps
1.  For this specific implementation I have created an install directory
on the C:\ drive named OpenSourceTech.
2. Use 7Zip to unzip the tgz file to a tar file.
3. I rename the .tar file to a .zip (don't necessarily need to do this but I do).
4. I unzip the .zip file into c:\OpenSourceTech

# Running Kafka
The scripts are contained within the platform-scripts/kafka/windows for this.
They are specifically hard coded for the c:\OpenSourceTech\<kafka release>.
You will just need to change these if you want to use them and don't unzip
files into these locations.

## Startup Kafka
You can download the scripts as a starting point from https://github.com/Project-Herophilus/Project-Herophilus-Assets/tree/main/Platform-Assets/Scripts/kafka/windows.
You will need to change the directory reference to match your configuration.<br/>

1.  The first script to run is named 1-start_kafka_zookeeper_windows.bat, it is ONLY
used to start zookeeper.
2.  The second script to run is named 2-start_kafka_server_windows.bat, it will start all the server
based components so ANY code and potential third party applications can
connect to specific Kafka Topics.

## Validating Kafka is Running
You can use any one of numerous tools to view Kafka topics with as you are developing and a potential interface for production when and if needed.
Depending on your Kafka implementation can make this a non-issue; however, we wanted to make you aware of this need
as being able to see data in every component natively is key for validating and implementing any solution. There are
several open or inexpensive options to chose from and within the community we have used all of them below with success.
- Open Source and Web based: [Provectus](https://github.com/provectus/kafka-ui)
- Open Source and Web based: [Kafdrop](https://github.com/obsidiandynamics/kafdrop)
- Open Source and Web based: [Kowl](https://github.com/redpanda-data/kowl)
- Desktop Based and Paid Product after trial: [Offset Explorer](https://www.kafkatool.com/)
