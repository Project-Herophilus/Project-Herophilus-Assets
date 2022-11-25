Return to the <a href="https://github.com/Project-Herophilus" target="_blank">Main GitHub Org. Site</a>

# OpenShift

## Pre-Requisites
There are no known prpe-requisites for any environment except having OpenShift 4.9 or above installed and ready for implementation.

## Operators
Operators enable OpenShift users and administrators to provide various certified capabilities to hundreds of various types of systems. There are operators
for everything from RDBMS/eDW/NoSQL vendors to Cloud Providers various PaaS and SaaS components to Security to Monitoring to Networking and many more. To get
a complete list of all the potential operators please check out the OperatorHub [here](https://operatorhub.io/).

# Implementation Details
The following are intended to be a general guide for ANY specifics we have discovered with the numerous OpenShift deployments we have done.

## Operators Pre-Requisites
There are some recommendations for implementation that we have found helpful.

### iDaaS-Connect
Before starting any deployments it is recommended that you install the following Operators to provide the best experience supporting deployed applications with a management user interface and also providing a robust means to see detailed logs in many ways and leverage a very solid way to build and use dashboards.

- Fuse Console
- AMQ Streams
- Kibana
- Grafana

## How to deploy to OpenShift
While there are many ways this can be done we have one very effective and efficient way, it is [documented here](https://github.com/Project-Herophilus/Project-Herophilus-Assets/blob/main/CloningBuildingRunningSolution.md).

