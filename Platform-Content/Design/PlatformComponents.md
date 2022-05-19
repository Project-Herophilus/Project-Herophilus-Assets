Return to the <a href="https://project-herophilus.github.io/Project-Herophilus-Assets/" target="_blank">Main Page</a>

# Platform Components
iDaaS is a series of <b> design patterns / accelerators </b>, because of this component based design, building with it or 
atop it is straight forward, repeatable and reusable. Within each iDaaS component there is an implementation/running 
specific set of instructions.

<i>Each component contains a link to the public Git Hub code repositories!!!</i>

## Upstream General Repositories
These are very specific repositories meant to showcase the capability with a limited set of features. In January 2021 we 
focused on consolidating almost thirty repositories to less than ten. We did this to ensure we simplified the development 
and implementation experience.

Capability  | Description  |
|---|---|
|<a href="https://github.com/Project-Herophilus/DataSynthesis" target="_blank">DataSynthesis| This repository is all assets supporting a synthetic data platform.|
|<a href="https://github.com/Project-Herophilus/Defianz" target="_blank">Defianz| This repository is all assets supporting de-identification and/or anonymization of data platform.|
|<a href="https://github.com/Project-Herophilus/Event-Builder" target="_blank">Event Builder| This repository is the code base that can be used to parse, generate and build healthcare industry std. data within iDaaS or other technologies.|
|<a href="https://github.com/Project-Herophilus/iDaaS-AddOns" target="_blank">iDaaS Add-Ons| This repository is Intended to be assets that can be used across assets and be generally helpful with some specific challenges.|

## Upstream Platform Repositories
These are very specific repositories meant to showcase the capability with a limited set of features. In January 2021 we focused on consolidating almost thirty repositories to less than ten. We did this to ensure we simplified the development and implementation experience.

| Capability | Description  |
|---|---|
|<a href="https://github.com/Project-Herophilus/iDaaS-Showcases" target="_blank">iDaaS Showcases| This repository is specifically designed to to maintain all the iDaaS platform demos. This repository contains demos for BlueButton, EDI, DREAM, FHIR, HL7, Route Data Distribution, and Third Party.|
|<a href="https://github.com/Project-Herophiluse/iDaaS-Connect" target="_blank">iDaaS Connect </a>|This repository is specifically designed to to maintain all the iDaaS Connect components. This repository contains iDaaS Connect components for Audit and Compliance, BlueButton, EDI,  FHIR, HL7,, and Third Party.|
|<a href="https://github.com/Project-Herophilus/iDaaS-Route" target="_blank">iDaaS Route - Data Distribution|This repository is specifically designed to test a subset of iDaaS Route components and capabilities.|
|<a href="https://github.com/Project-Herophilus/iDAAS-DREAM" target="_blank">iDaaS DREAM Platform</a>|This repository is specifically designed for iDaaS DREAM components and capabilities.  Within this repository the is also the iDaaS Event Builder parsing, builder and generator code base.|
|<a href="https://github.com/Project-Herophilus/iDaaS-KIC" target="_blank">iDaaS KIC (Knowledge, Insight and Conformance)</a>|This repository is specifically designed to specifically support all needed components for iDaaS KIC (Knowledge, Insight and Conformance). This specific capability is intended to enable auditing and reconciliation of anything the iDaaS platform is engaged in leveraging.|
|<a href="https://github.com/Project-Herophilus/DataSimulators" target="_blank">iDaaS Data Simulator</a>|This repository is specifically designed to specifically support simulating data for enabling iDaaS implementations.|

## Known Downstream Platform - Red Hat Healthcare Repositories
These are very specific repositories meant to showcase the capability with a limited set of features. In January 2021 we focused on consolidating almost thirty repositories to less than ten. We did this to ensure we simplified the development and implementation experience.

| Capability | Description  |
|---|---|
|<a href="https://github.com/RedHat-Healthcare/iDaaS-Demos" target="_blank">iDaaS Demos| This repository is specifically designed to to maintain all the iDaaS platform demos. This repository contains demos for BlueButton, EDI, DREAM, FHIR, HL7, Route Data Distribution, and Third Party.|
|<a href="https://github.com/RedHat-Healthcare/iDaaS-Connect" target="_blank">iDaaS Connect </a>|This repository is specifically designed to to maintain all the iDaaS Connect components. This repository contains iDaaS Connect components for Audit and Compliance, BlueButton, EDI,  FHIR, HL7,, and Third Party.|
|<a href="https://github.com/RedHat-Healthcare/iDaaS-Route" target="_blank">iDaaS Route - Data Distribution|This repository is specifically designed to test a subset of iDaaS Route components and capabilities.|
|<a href="https://github.com/RedHat-Healthcare/iDAAS-DREAM" target="_blank">iDaaS DREAM Platform</a>|This repository is specifically designed for iDaaS DREAM components and capabilities.  Within this repository the is also the iDaaS Event Builder parsing, builder and generator code base.|
|<a href="https://github.com/RedHat-Healthcare/iDaaS-KIC" target="_blank">iDaaS KIC (Knowledge, Insight and Conformance)</a>|This repository is specifically designed to specifically support all needed components for iDaaS KIC (Knowledge, Insight and Conformance). This specific capability is intended to enable auditing and reconciliation of anything the iDaaS platform is engaged in leveraging.|
|<a href="https://github.com/RedHat-Healthcare/DataSimulators" target="_blank">iDaaS Data Simulator</a>|This repository is specifically designed to specifically support simulating data for enabling iDaaS implementations.|

## Showcases
There are several repositories provided to give end to end implementation guidance.

| Capability | Repository | Description  |
|---|---|---|
|Receiving - HL7|<a href="https://github.com/RedHat-Healthcare/iDaaS-Connect/tree/master/iDaaS-Connect-HL7" target="_blank"> iDaaS Connect Clinical - HL7</a>|This iDaaS Connect accelerator specifically and ONLY supports the clinical integration standards of HL7.  From an integration connectivity and standards perspective it has HL7 MLLP Servers that support the following types from any vendor and any specific message version from 2.1 to 2.8: ADT (Admissions), ORM (Orders), ORU (Results), SCH (Schedules), PHA (Pharmacy), MFN (Master File Notifications), MDM (Medical Document Management) and VXU (Vaccinations).  This accelerator apart from handling the needed specific connectivity also does a minimal initial routing of data and has complete auditing integrated.
|Receiving - FHIR|<a href="https://github.com/RedHat-Healthcare/iDaaS-Connect/tree/master/iDaaS-Connect-FHIR" target="_blank"> iDaaS Connect - FHIR</a>| This iDaaS Connect accelerator specifically and ONLY  supports ALL FHIR resources.  From an integration perspective it enables processing of over 75+ specific <a href="https://www.hl7.org/fhir/STU3/resourcelist.html" target="_blank">FHIR resources</a> that span base, clinical, financial (all), specialized (all but testing). Another benefit of this platform is that you <b>DO NOT require a FHIR server for this be leveraged</b>. However,  It has been tested to work with several FHIR servers: HAPI JPA Server, Microsoft Azure FHIR Server and IBM FHIR Server. This accelerator apart from handling the needed specific connectivity also does a minimal initial routing of data and has complete auditing integrated.|
|Receiving - Blue Button | <a href="https://github.com/RedHat-Healthcare/iDaaS-Connect/tree/master/iDaaS-Connect-BlueButton" target="_blank"> iDaaS Connect Blue Button</a>|This iDaaS Connect accelerator specifically and ONLY  supports the critical FHIR need of processing data from BlueButton based on a series of data attributes that are passed to it.|
|Receiving - Non Industry Standard Data (i.e. - ETL, FTP, etc.)|<a href="https://github.com/RedHat-Healthcare/iDaaS-Connect/tree/master/iDaaS-Connect-ThirdParty" target="_blank">iDaaS Connect - Third Party</a>| This iDaaS Connect accelerator is specifically designed to receive data from several dozens connectors. The connectors include JDBC (any jdbc compliant data source with a jar), Kafka, FTP/sFTP and sFTP, AS400, HTTP(s), REST and many more.  Since this accelerator is built atop the upstream of Apache Camel this accelerator can leverage any <a href="https://camel.apache.org/components/latest/index.html" target="_blank">supported components</a>. This accelerator apart from handling the needed specific connectivity also does a minimal initial routing of data and has complete auditing integrated.|
|Routing - Data Distribution |<a href="https://github.com/RedHat-Healthcare/iDaaS-Route" target="_blank">iDaaS Route</a>|This iDaaS Route component  is specifically implemented to help enable a decoupled enterprise integration pattern. The focus of this component is  solely on enabling data to be distributed with any implementation needs or requirements. The initial design pattern is termed the HCDD (healthcare data distribution) enterprise integration pattern.|
|Run (Transform and Re-Shape Data|<a href="https://github.com/RedHat-Healthcare/iDAAS-DREAM/tree/master/iDaaS-EventBuilder" target="_blank">Event Builder</a>|This component is what enables Red Hat, partners, SIs and developers to develop, extend or enhance the platform's ability to process data into any type of needed custom format for any type of needed processing. iDaaS Event Builder is designed to call out and invoke needed events and can be customized based on business needs very quickly. The only thing past cloning the source code is setting up the appropriate way to include iDaaS Event Builder jar files so that it can be included. If you do not wish to leverage the existing code, enhance or extend it developers are able to add their own custom code for processing and object building.|
|Run (DREAM - Data Realtime Enablement)|<a href="https://github.com/RedHat-Healthcare/iDaaS-DREAM/" target="_blank">iDaaS DREAM (Data Runtime Enterprise Automated Mgmt)</a>| DREAM's design intent is to enable Red Hat, partners, SIs and developers to implement iDaaS and/or other capabilities internal or external to iDaaS in a dynamic manner without the need for stopping the platform and needing to restart it to work with data while adding new features.|
|Research and Resolve|<a href="https://github.com/RedHat-Healthcare/iDaaS-KIC" target="_blank">iDaaS KIC (Knowledge, Insight and Compliance)</a>|iDaaS KIC is where audit and other related data for the platform is stored. Like the rest of iDaaS it is intended to be extensible. iDaaS Data KIC is a platform to enable processing of data into the various components and data models included. The key things Data Hub is meant to ensure resources have data driven insights from ANY activity the iDaaS platform will do. A key thing to note in the data model and events the system focuses on is a way to associate one organization to many healthcare entities and to many applications and within each application any components wished to be defined. This is ALL up to the implementation. Because of this data enablement iDaaS focuses on enabling a detailed eventing model to iDaaS Data Hub for any activities the system does, this specifically is done through a transaction event which has a rich set of data attributes to enable detailed insight.|


For more specific details and common technical use cases please feel free to visit [Platform Specific Use Cases](../docs/UseCases/PlatformComponents-Specific.md).