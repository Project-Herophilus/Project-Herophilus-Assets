# Background
Open Source or the "community" development model has been used in software development for almost two decades. Over the
last decade all significant software innovation in the past 10 years has been from open-source communities. Here is a
<a href="https://www.redhat.com/rhdc/managed-files/rh-enterprise-open-source-report-f27565-202101-en.pdf" target="_blank">report</a>
that showcases all the various ways open source and it's culture is transforming the way not only software is delivery but
changing the way new innovation is being delivered. Healthcare for many decades has also relied upon community development
in areas such as treatment protocols, safety standards, and industry standards based data formats. Now, as we head into
a new era driven by comsumption and secure managed services it is a perfect time in healthcare for open source and
healthcare.

Welcome to Project Herophilus, our mission is to be an open source upstream healthcare
community focused on enabling healthcare care to solve problems with data driven assets. In order to help healthcare it was
critical that we define [specific design principles](Platform-Content/Design/DesignPrinciples.md) to ensure a very
[scalable, extensible and reusable architecture](Platform-Content/Design/Architecture.md) with a focus on enabling
specific [capabilities](Platform-Content/Design/Capabilities.md). The intent of this organization is two fold: help drive
data driven open source capabilities into healthcare while demonstrating how healthcare can leverage open source to
solve industry problems. Why the name? Herophilus or spelled Herophilos, Herophilus was a Greek physician who is often
credited with being the founder of Anatomy. Since anatomy is the foundation for medicine and our focus is around enabling
healthcare we felt this was a very good name.

Project Herophilus intent is to help with various areas related to data challenges consistently seen across all areas of
healthcare for decades. We created a [fictious organization](Platform-Content/General/FictitiousOrg.md) for consistency and ensure we
can accurately define and relate any solutions being developed. The overall project is intended to deal with
[integration standards support](Platform-Content/Design/IntegrationStandardsSupported.md) and non industry standard data challenges.
At Project Herophilus, we [leverage industry leading open source technologies](Platform-Content/Technical/Technologies.md)
to help us bring the most widely adopted and used capabilities to bear. Assets currently available provide tools for configuration,
testing, legacy and modern data integration, modern application integration, synthetic data, and more. All of these assets
are available to any organization. The sole purpose of ALL the capabilities we have built for healthcare
is to focus on enabling <b> Data as an Asset</b>. The major focus of our efforts is to reduce, and hopefully remove, the data barriers
while reducing risk and moving data integration towards <b>Data Innovation</b> and enable it to move from a specific task based
enabler to a mainstream application development enablement.has made these assets available to anyone using fully open
source software and all under Apache 2 licensing.

# iDaaS (intelligent Data as a Service) Platform
As we thought about how to brand our efforts we ended up settling on iDaaS (Intelligent Data as a Service). The core enablement
we focused on providing for healthcare was to ensure we help reduce the data barriers within healthcare. Our key focus is
<b> Data as an Asset</b> and to enable rapid innovation with data in healthcare. We are focused on delivering cloud native assets
that can run in a customer private, public or hybrid cloud environment(s) as the customer needs them. We will continue to
drive solving business problem and running anywhere securely and at scale.

Here is a detailed and Cloud Agnostic visual:<br/><br/>
![Cloud Agnostic](/images/iDaaS-Platform/Implementations/Implementations-Gen-CloudAgnostic.png)

## Key Platform Components
Within iDaaS there are a series of components that are designed to for purpose and scale. Each on of these components is available
fully open source and when someone needs enterprise grade secure open source software you can look to the key downstream
implementations.

| Key Area                                                                      | Business Purpose                                                                                                                                                                                                                                                                                                          |
|-------------------------------------------------------------------------------|---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
| [iDaaS-Connect](https://github.com/Project-Herophilus/iDaaS-Connect)          | Connecting to all types of data and providing access to information in near realtime. It is intended to be a comprehensive set of <b> design patterns, reference architecture, accelerators </b> to help anyone and supports hundreds of connectors from legacy to modern to industry standards to various public clouds. |
| [iDaaS-Route](https://github.com/Project-Herophilus/iDaaS-Route)              | Routing of data - code and business rules based intelligent routing exist.                                                                                                                                                                                                                                                |
| [iDaaS-DReAM](https://github.com/Project-Herophilus/iDaaS-DReAM)              | Business rules based platforms designed for usage within healthcare.                                                                                                                                                                                                                                                      |
| [iDaaS-KIC](https://github.com/Project-Herophilus/iDaaS-KIC)                  | Knowledge, Insight and Conformance is all about providing the ability to process errors, audit and other data. This consists of the endpoints, processing and persistence needed to support the platform.                                                                                                                 |
| [iDaaS Data Simulators](https://github.com/Project-Herophilus/DataSimulators) | The ability to process and simulate data into various industry standards and enable connectivity to iDaaS assets for various types of testing                                                                                                                                                                             | 

## Key Supporting Platform Components
There are several open source efforts that provide capabilities to help enable iDaaS.

| Key Area                                                              | Business Purpose                                                                                                                                                                                                                                                                                                          |
|-----------------------------------------------------------------------|---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
| [DataSynthesis](https://github.com/Project-Herophilus/DataSynthesis)  | The need for synthetic/fictitous data that resembles real information                                                                                                                                                                                                                                                     | 
| [Event-Builder](https://github.com/Project-Herophilus/Event-Builder)  | A library that enables parsing, processing and transforming data while enabling various capabilities. Can be used within iDaaS or on its own.                                                                                                                                                                             |

## Key Supporting Platform Assets
There are several open source efforts that provide capabilities to help enable iDaaS.

| Key Area                                                                                                             | Business Purpose                                                                                                                                                                      |
|----------------------------------------------------------------------------------------------------------------------|---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
| [Industry Content](https://github.com/Project-Herophilus/Project-Herophilus-Assets/tree/main/IndustryPublishedContent) | Industry specific content, this can be either US government agencies or countries defined healthcare policies and procedures.                                                         | 
| [Testing Assets](https://github.com/Project-Herophilus/Project-Herophilus-Assets/tree/main/Testing) | Artifacts that help in the testing practices and processes. These include API collection for Postman and lots of test data either specific to iDaaS components or industry standards. |

## Key General Industry Content Links

| Content|
| -------------|
| <a href="https://github.com/Project-Herophilus/Project-Herophilus-Assets/tree/main/IndustryPublishedContent/CMS/CMS-Interoperability%20and%20Data%20Access%20Final%20Rule.pdf" target="_blank">CMS Interoperability Final Rule</a>|
| <a href="https://github.com/Project-Herophilus/Project-Herophilus-Assets/tree/main/IndustryPublishedContent/ONC/ONC_Cures_Act_Final_Rule_03092020.pdf" target="_blank">21st Centrury Cures Act</a>|
| <a href="https://github.com/Project-Herophilus/Project-Herophilus-Assets/tree/main/IndustryPublishedContent/FHIR/USCDI-Version-2-July-2021-Final.pdf" target="_blank">US CDI v2 Standard</a>|

# Key Downstream Implementations
Project Herophilus has been forked and used to support numerous healthcare efforts well beyond the several that exist today.
It currently is used by numerous companies and healthcare industry efforts. Below are some key downstream implementations
that use Project Herophiluszz;

- Red Hat has been a key sponsor and supporter in establishing Project Herophilis. Its support of this community is a
  real world demonstration of its commitment to open source specifically in the area of healthcare. As part of its commitment
  Red Hat is keeping its enterprise open source leading approach and operates a subset of these assets “downstream.” While
  the “accelerators” are provided as is, Red Hat customers can get these assets to help them immediately “accelerate”
  building a variety solutions to address business needs. All Red Hat Healthcare assets are available at
  https://github.com/RedHat-Healthcare/.

The downstream assets are used by several vendors and have been used in numerous solutions,
[here](Platform-Content/Technical/Implementation.md) are just a few.

# Where Are We Headed
We have numerous [technical advisors](Platform-Content/General/TechnicalAdvisors.md) that help ensure we are addressing healthcare
industry needs. Beyond our technical advisors we have received key sponsorship from Red Hat. Red Hat who is a leader in
enterprise open source and offers support, security, services and training. Red Hat is keeping its enterprise open source
leading approach and operates a subset of these assets “downstream.” While the “accelerators” are provided as is, Red
Hat customers can get secure and supported software the “accelerators” run atop for their production and other business
needs. For more information please feel to go to https://github.com/RedHat-Healthcare/. Several efforts from Project Herophilus
are forked here and other branded efforts are named the same. Some of these cannot be forked as they leverage completely
different libraries and go through a seperate build and testing process; however, the capabilities they deliver are the same.

Please feel free to go to our discussion  and/or issues areas in any of the specific repositories. We consider all
feedback as we are looking to improve our design pattern/reference architecture. Any communication to these areas
or the project owners influences our [technical roadmap](Platform-Content/Roadmap/index.md).

# How to Get Started
In the background section we tried to giv and quick and simple definition for what we are doing. However, as you can imagine
with all the capabilities enabled and supported are massive. After seeing all the types of
<a href="https://camel.apache.org/components/3.13.x/index.html" target="_blank">connectivity natively supported</a>.
Then, you could look at our [features matrix](Platform-Content/General/Features.md) and feel free to check out our
[technical guides](Platform-Content/Technical/intro.md) to see how to build out various development
environments. Then, I would look at the [various repositories](Platform-Content/Design/PlatformComponents.md) and the specific
capabilities they enable. The final step we would recommend is looking through the [implementation guides](Platform-Content/ImplementationGuides/intro.md)
to hopefully pull it all together and explain what neds to be implemented to match your need(s).

<br/>
<i>Happy coding!!!!</i>
