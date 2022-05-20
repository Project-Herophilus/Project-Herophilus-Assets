Return to the <a href="https://project-herophilus.github.io/Project-Herophilus-Assets/" target="_blank">Main Page</a>

# Background
The goal of this document is to help with the basics of installing Fedora and the needed artifacts 
on Fedora. Many resources have followed this and expressed happiness in the performance of Fedora.

# General Pre-Requisites
After installing and setting up the system either on dedicated, virtual or IAAS based hardware then
we recommend doing the following to ensure you have enough space and dont run into some basic issues.

We would recommend that you implement directories outside of the /home directory to not run into substantial potential space issues with /home and so forth.
What we have built out is directories for each of the following:
- /Development
- /OpenSourceTech
- /RedHatTech - (If you download any supported RedHat Bits)
  Here is a general link for knowledge: https://averagelinuxuser.com/linux-root-folders-explained/ <br/>
  Here are some generic instructions we have for creating /Development
```
sudo mkdir /Development
```
Changing ownership and groups examples https://www.thegeekstuff.com/2012/06/chown-examples/

# Development Tools
The following are all the development tools and the supporting assets needed to do some form of development and
implementation of iDaaS reference architectures.

### Code Repository Management

#### GIT
The most popular version control management system and the one we leverage.

```
sudo dnf install git
```

### Package Repository

#### Maven
his is needed on development machines and is the central repository management tool.
From the command line: <br>
```sudo dnf install maven```

### Development Language(s)

The ONLY development language required for iDaaS specifically is Java SDK. The other development
languages are used for a potential other variety of efforts and needs. Also, we don't cover Python in this section but those
instructions can be easily found online.

#### Java SDK

Platform comes with OpenJDK 8. Based on needs feel free to update system to (not just JREs) as you need.
For this environment we will install Java OpenJDK 11. We have also had committers and resources leveraging
iDaaS running Open JDK 11, 13, 14 and 15 as well, As with everything it is critical to make sure
that you only run approved technologies. <br>
From the command line:<br>
```yum install java-11-openjdk-devel```

A key benefit of using Linux is the ease of switching Java versions. This is managed by <br>
```
sudo update-alternatives --config java
```
#### NodeJS
Node has continued to grow and expand in capabilities are features. We are currently starting to
use it within iDaaS and various other iDaaS open source assets, the plans are to continue to expand
how we leverage it in 2022.<br/>
<a href="https://nodejs.org/en/" target="_blank">Node JS Web Site</a><br>
```
dnf module install nodejs:<stream>
```

#### .Net Core
While not currently used within iDaaS there are plans to start leveraging it in 2021.<br/>
<a href="https://docs.microsoft.com/en-us/dotnet/core/install/linux" target="_blank">.Net Core Linux</a><br>
<a href="https://docs.microsoft.com/en-us/dotnet/core/install/linux-rhel" target="_blank">.Net Core on Linux</a><br>
From the command line: <br>
```sudo dnf install dotnet-sdk-5.0``` <br/>
```sudo dnf install dotnet-sdk-3.1```

# Development Tooling

## IntelliJ
These specific steps focus around IntelliJ, numerous contributors and resources working with iDaaS use some
flavor of IntelliJ. For simplicity we will download the files to /username/home/Downloads.

### Toolbox App
Download the <a href="http://www.jetbrains.com/toolboxapp" target="_blank">IntelliJ Tolbox App Download</a> for the link.<br>
```
cd /user/home/Downloads
``` 
```
sudo tar -xvf jetbrains-toolbox-releasenumber.tar.gz -C /opt
``` 
```
./jetbrains-toolbox-releasenumber
``` 

Now you can install all the development tools you need to leverage, clearly within Community edition or license you may have purchased

# Additional Tools
Depending upon if you are going to do all development and testing local then you might need a few additional
technologies installed locally.

## Apache Kafka
There is no Kafka package, which is kind of stunning since it is so widly used. The install is simply enough
though and plenty of content online that explains the key steps.

https://kafka.apache.org/quickstart

## RDBMS
There are two common RDBMS - Relational Databases technologies that we support. MOST of the work
done has been in MySQL/MariaDB. There are some nuances so you will notice for a few capabilities we
have seperate scripts for each of these technologies.

### MySQL (Using MariaDB):
https://fedoraproject.org/wiki/MariaDB <br/>

```
sudo dnf install mariadb
``` 
For MySQL Community Server
```
sudo dnf install mysql-community-server
``` 

### PostgresQL
https://fedoraproject.org/wiki/PostgreSQL
```
sudo dnf install postgres-server
```

# Cloning Code and Getting Started Implementing
One you installed everyting based on your needs, please feel free to go ahead and clone ANY or ALL
of the repsositories. To help we maintain a key repository list [here](CodeRepositories.md).
