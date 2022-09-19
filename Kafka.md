Return to the <a href="https://github.com/Project-Herophilus" target="_blank">Main GitHub Org. Site</a>

*Please keep in mind this page is NOT a recommendation on a production install. We also provide
no hardening instructions for Kafka either*

# Kafka

We have included the basics for any implementation. There are specific install guides that are available
all across the internet. Here are the steps several of the community have taken to simplify the 
experience. 

## Steps
1. Go to https://kafka.apache.org/downloads and download the version you want. For most of this
community the latest Scala release seems to be the release of choice. It is a tar gzip file.
2. For simplistic purposes several of the community leverage a directory like OpenSourceTech.
We will need to unzip the file into whatever directory we have created or chosen.
3. Use any Archive technology, or the equivalent command, to untar the tgz file to a tar file.
```
tar -xvf <tar_archive> <directory>
```

# Running Kafka
Like installs there are a ton of scripts avaiable on the internet to the help anyone get up and running.
We have included Kafka scripts here: https://github.com/Project-Herophilus/Project-Herophilus-Assets/tree/main/Platform-Assets/Scripts/kafka/non-windows
- In Line 10 of the script you would just need to change the directory to wherever you have installed it
for both the start_ and stop_ scripts (in the stop script the directory location setting is the first line.

