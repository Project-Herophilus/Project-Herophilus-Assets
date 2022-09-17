Return to the <a href="https://github.com/Project-Herophilus" target="_blank">Main GitHub Org. Site</a>

# Intelligent DaaS (Data as a Service) Industry Standards Support

This section is designed to cover all the various industry standards Intelligent DaaS support.

## HL7
Within the clinical integration space HL7.org is the group that manages and oversees the industry standards and has for 
several decades. For specifics and details on all the specifications they manage in healthcare, please feel to visit 
<a href="https://www.hl7.org/" target=_blank> HL7 Web Site</a>. HL7 is the oldest standards in healthcare for enabling systems integration, their focus is the clinical care side of 
the industry and they only handle specific billing related transactions as part of supporting the clinical services 
they support. HL7 is a very legacy based standards specific to the way communications occur. The HL7 v2 message 
standard has been a long standard for the clinical industry and vendor platforms to communicate for decades. 
It is often known as quasi standard throughout the healthcare industry due to its lack of hard and fast rules 
and openness for vendor augmentation. It has evolved from version 2.1 to its most current version 2.8 and 
is still being very actively enhanced. HL7 v2 communication involves a client-server based communication model 
known as MLLP (Minimal Lower Layer Protocol), the expectation is that the server is running one hundred percent 
of the time to receive transactions. As part of its communication it requires that every transaction is specifically 
acknowledged or negatively acknowledged during processing. Finally, healthcare systems and integrations typically 
involve a FIFO based messaging pattern, every message must be processed in order.

The Intelligent DaaS (Data as a Service) Platform has been tested and has the following HL7 v2 support, there is no notion of vendors within our implementations and we have working implementations with large and small EMR/EHR vendors.

|Message Trigger| Details |
|------|------|
|ADT| Admissions, Discharges, Transfers - A01 to A61 Any v2 message version release| 
|ORM| Orders |
|ORU| Results|
|MDM| Master Data Management |
|MFN| Master File Notifications | 
|SIU| Schedule | 
|VXU|Vaccinations | 

## FHIR R4
FHIR, Fast Healthcare Interoperability Resources, is the modern current healthcare industry standardization approach to
move healthcare from the dark ages of client-server connectivity towards a REST based set of capabilities. 
Unlike other attempts to modernize clinical integration standards FHIR is the future. It has been around for several years 
and already has a very large vendor community supporting and adopting it. The industry adoption from 2020 going forward 
adoption will dramatically increase with government mandates from CMS directly naming it as the means of compliance. 
We have decided to focus on what CMS has defined as the standard for Interoperability and Patient Access final rule. 
A FHIR Server is not required for our implementation or CMS compliance; however, these servers can help organizations 
with capabilities they might need. The Intelligent DaaS (Data as a Service) Connect FHIR component is designed to 
connect to multiple vendor implementations of FHIR servers in a repeatable manner. 

With our implementation we support ALL FHIR resources.

## EDI
EDI for healthcare involves all the standard event support that comes for HIPAA compliant billing transactions like:
We have also included support for Supply chain transactions. This support means you can parse, build and generate EDI based messages.
It DOES NOT mean there is an EDI engine included within this platform. We provide facilities to support leveraging EDI data.

## ePrescribe 
The intent is to support this needed industry standard once we get a request from someone who wants to implement it.

