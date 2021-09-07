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
1.  The first script to run is named 1-start_kafka_zookeeper_windows.bat, it is ONLY
used to start zookeeper.
2.  The second script to run is named 2-start_kafka_server_windows.bat, it will start all the server
based components so ANY code and potential third party applications can
connect to specific Kafka Topics.

## Validating Kafka is Running
Use any third party tool. We leverage [Kafka Tools](https://kafkatool.com/), it is a very nice desktop tools for
simply connect to Kafka and see the topics, and the ALL the data within them.