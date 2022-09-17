Return to the <a href="https://github.com/Project-Herophilus" target="_blank">Main GitHub Org. Site</a>

# Administering the Platform - Management and Insight of Components
Administering and seeing what the plaform is doing is also critical. Within each specific repository there is an administrative user interface that allows for monitoring and insight into the connectivity of any endpoint. Additionally, there is also the implementation to enable implementations to build there own by exposing the metadata. The data is exposed and can be used in numerous very common tools like Data Dog, Prometheus and so forth.
This capability to enable would require a few additional properties to be set.

Below is a generic visual of how this looks (the visual below is specific to iDaaS Connect HL7): <br/>

![iDaaS Platform - Visuals - iDaaS Data Flow - Detailed](https://github.com/Project-Herophilus/Project-Herophilus-Assets/blob/main/images/iDaaS-Platform/iDaaS-Mgmt-UI.png)

Every asset has its own defined specific port, we have done this to ensure multiple solutions can be run simultaneously.

## Administrative Interface(s): iDaaS-Connect Specifics
For all the URL links we have made them localhost based, simply change them to the server the solution is running on.

| iDaaS Connect Asset               | Port | Admin URL   | JMX URL|                                                                                   
|----------| ----   |--------------------------------------------------|------------------------------------------------------------------------------------------| 
| iDaaS Connect HL7                 | 9980| http://localhost:9980/actuator/hawtio/index.html                                                                                           | http://localhost:9980/actuator/jolokia/read/org.apache.camel:context=*,type=routes,name=* | 
| iDaaS Connect FHIR                | 9981| http://localhost:9981/actuator/hawtio/index.html                                                                                           | http://localhost:9981/actuator/jolokia/read/org.apache.camel:context=*,type=routes,name=* |  
| iDaaS Connect BlueButton          | 9982| http://localhost:9982/actuator/hawtio/index.html                                                                                           | http://localhost:9982/actuator/jolokia/read/org.apache.camel:context=*,type=routes,name=* |  
| iDaaS Connect Third Party         | 9983| http://localhost:9983/actuator/hawtio/index.html                                                                                           | http://localhost:9983/actuator/jolokia/read/org.apache.camel:context=*,type=routes,name=* |  
| iDaaS Connect EDI                 | 9984| http://localhost:9984/actuator/hawtio/index.html                                                                                           | http://localhost:9984/actuator/jolokia/read/org.apache.camel:context=*,type=routes,name=* |  
| iDaaS Connect Compliance Automation| 9985| http://localhost:9985/actuator/hawtio/index.html                                                                                           | http://localhost:9985/actuator/jolokia/read/org.apache.camel:context=*,type=routes,name=* |  
| iDaaS Connect ePrescribe          | 9986| http://localhost:9986/actuator/hawtio/index.html| http://localhost:9986/actuator/jolokia/read/org.apache.camel:context=*,type=routes,name=* |  

