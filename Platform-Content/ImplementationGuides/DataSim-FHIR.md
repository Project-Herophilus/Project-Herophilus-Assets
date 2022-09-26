# Data Simulator: FHIR

## Scenario(s)
This scenario follows a very common general clinical care implementation pattern for processing FHIR transactions. The
implementation pattern involves one system sending data to another system via a web based deliver manner a FHIR
resource. The FHIR data simulator will connect and send a configurable number of FHIR transactions to the defined FHIR
resource endpoint and attached services (based on the configuration used).

 <img src="https://github.com/Project-Herophilus/Project-Herophilus-Assets/blob/main/images/iDaaS-Platform/DataFlow-FHIR.png" width="800" height="600">

## Additional Repositories Involved with This Scenario
For this scenario you will need an existing system or capability to act as an HL7 Server. While any will do for this demonstration,
and many have been tested we are going to write this from the implementation perspective that you are trying to
test [iDaaS Connect FHIR](https://github.com/Project-Herophilus/iDaaS-Connect/blob/main/iDaaS-Connect-FHIR/README.md) and its general capabilities.

# Start The Engine!!!
This section covers the running of the solution. There are several options to start the Engine Up!!!

## Step 1: Kafka Server To Connect To
In order for ANY processing to occur you must have a Kafka server running that this accelerator is configured to connect to.
Please see the following files we have included to try and help: <br/>
[Kafka Non Windows](https://github.com/Project-Herophilus/Project-Herophilus-Assets/blob/main/Kafka.md)<br/>
[Kafka Windows](https://github.com/Project-Herophilus/Project-Herophilus-Assets/blob/main/KafkaWindows.md)<br/>
As with all implementations we also have container based implementations of Kafka as well. These can be very simple to implement
and include.

## Step 2: How To Get, Build and Run iDaaS-Connect Assets
Within each submodule/design pattern/reference architecture in this repository there is a specific README.md. It is
intended to follow a specific format that covers a solution definition, how we look to continually improve, pre-requisities,
implementation details including specialized configuration, known issues and their potential resolutions.
However, there are a lot of individual capabilities, we have tried to keep content relevant and specific to
cover specific topics.
- For cloning, building and running of assets that content can be found
  [here](https://github.com/Project-Herophilus/Project-Herophilus-Assets/blob/main/CloningBuildingRunningSolution.md).
- Within each implementation there is a management console, the management console provides the same
  interface and capabilities no matter what implementation you are working within, some specifics and
  and details can be found [here](https://github.com/Project-Herophilus/Project-Herophilus-Assets/blob/main/AdministeringPlatform.md).
- If you are using containers, we maintain numerous assets [here](https://hub.docker.com/search?q=rhhcarch)

## Specific Implementation Configuration Details
There are several key details you must make decisions on and also configure. For all of these you will
need to update the application.properties in accordance with these decisions.

*- if you are using non-container assets then the settings can be found in the /src/properties/application.properties* <br/>
*- containers ConfigMaps references would just not include the idaas. as part of the property name*

### A. iDaaS Connect FHIR