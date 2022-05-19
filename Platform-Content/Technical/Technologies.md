Return to the <a href="https://project-herophilus.github.io/Project-Herophilus-Assets/" target="_blank">Main Page</a>

#  Technologies
Here are the technologies that drive our ability to continue to extend the 
capabilities we continue to deliver:

## Integration
This is enabled by one of the most active communities and continues to grow and expand this technology for well over a decade,
the <a href="https://camel.apache.org/" target="_blank">Apache Camel</a> community. As part of its wide adoption there 
are thousands of implementations of all sizes, types and scale levels in numerous industries with 
some of them growing to support 1 billion daily transactions. As part of its growth are the hundred plus connectors that
it natively supports, this will be very beneficial as connectivity will continue to be extended to more and more platforms.
## Business Rules, Workflow</td>
This capability is driven by the upstream <a href="https://www.drools.org/" target="_blank">Drools</a> community. This 
technology is very largely adopted and implemented throughout numerous industries. Drools has a very large footprint in 
organizations all over the world delivering expert based solutions and capabilities.
## Complex Event Processing</td>
This capability the upstream <a href="https://www.drools.org/" target="_blank">Drools Fusion</a> community. Since it is
based on Drools it continues their very large footprint in organizations all over the world delivering 
complex event specific solutions and capabilities.
## Data Streaming
This capability is being supported by the upstream <a href="https://kafka.apache.org/" target="_blank">Kafka</a> community. 
We are also looking at future implementations with other distributed queuing technologies. While this technology is based on this we
also are aware of others that have implemented JMS and RabbitMQ based implementations with this footprint as well.
## Data                    
We currently are moving to support DDLs for multiple RDBMS platforms starting with Maria DB (MySQL) and Postgres. This is 
because there is wide adoption of these within healthcare. The first few implementations with be SQL Server DDL centric as 
well finalize data model validation. We also intend to expand towards NoSQL standards
quickly as we continue to implement new features. Connected Health/iDaaS overall objective 
is to ensure we help define data as an asset.
# Hybrid/Multi-Cloud
When and where possible this reference architecture/design pattern is completely designed to be cloud native. 
The ONLY exception is when we have to deal with specific industry needs that cannot be done with a cloud native manner. 
In healthcare this refers specifically to HL7 v2 messaging. The reason is this form of messaging is legacy based on
the client-server socket paradigm and is meant to be long running. However, ALL any FHIR components are cloud native 
by design. We include Docker files and also the needed yaml files for implementing in Kubernetes like distros.

