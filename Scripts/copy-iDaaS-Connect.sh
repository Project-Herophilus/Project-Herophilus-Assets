echo 'Building iDaaS Connect'
_myCodeDir='/Development/Project-Herophilus/iDaaS-Connect/'
_myiDaaSAssetsDir='/Development/iDaaS-Assets/'
echo 'Building iDaaS Connect - PublicCloud'
cd $_myCodeDir/iDaaS-Connect-Cloud/
mvn clean install
cd $_myCodeDir/iDaaS-Connect-Cloud/target/
echo 'Copying iDaaS Connect - PublicCloud JAR File'
cp *.jar /Development/iDaaS-Assets/iDaaS-Connect-Cloud.jar
echo 'Copying iDaaS Connect - PublicCloud Properties File'
cd $_myCodeDir/iDaaS-Connect-Cloud/src/main/resources/
cp application.properties $_myiDaaSAssetsDir/properties/cloud-application.properties
echo 'Building iDaaS Connect - EDI'
cd $_myCodeDir/iDaaS-Connect-EDI/
mvn clean install
cd $_myCodeDir/iDaaS-Connect-EDI/target/
echo 'Copying iDaaS Connect - EDI JAR File'
cp *.jar /Development/iDaaS-Assets/iDaaS-Connect-EDI.jar
echo 'Copying iDaaS Connect - EDI Properties File'
cd $_myCodeDir/iDaaS-Connect-EDI/src/main/resources/
cp application.properties $_myiDaaSAssetsDir/properties/edi-application.properties
echo 'Building iDaaS Connect - FHIR'
cd $_myCodeDir/iDaaS-Connect-FHIR/
mvn clean install
cd $_myCodeDir/iDaaS-Connect-FHIR/target/
echo 'Copying iDaaS Connect - FHIR JAR File'
cp *.jar /Development/iDaaS-Assets/iDaaS-Connect-FHIR.jar
echo 'Copying iDaaS Connect - FHIR Properties File'
cd $_myCodeDir/iDaaS-Connect-FHIR/src/main/resources/
cp application.properties $_myiDaaSAssetsDir/properties/fhir-application.properties
echo 'Building iDaaS Connect - HL7'
cd $_myCodeDir/iDaaS-Connect-HL7/
mvn clean install
cd $_myCodeDir/iDaaS-Connect-HL7/target/
echo 'Copying iDaaS Connect - HL7 JAR File'
cp *.jar /Development/iDaaS-Assets/iDaaS-Connect-HL7.jar
echo 'Copying iDaaS Connect - HL7 Properties File'
cd $_myCodeDir/iDaaS-Connect-HL7/src/main/resources/
cp application.properties $_myiDaaSAssetsDir/properties/hl7-application.properties
echo 'Building iDaaS Connect - SAP'
cd $_myCodeDir/iDaaS-Connect-SAP/
mvn clean install
cd $_myCodeDir/iDaaS-Connect-SAP/target/
echo 'Copying iDaaS Connect - SAP JAR File'
cp *.jar /Development/iDaaS-Assets/iDaaS-Connect-SAP.jar
echo 'Copying iDaaS Connect - SAP Properties File'
cd $_myCodeDir/iDaaS-Connect-SAP/src/main/resources/
cp application.properties $_myiDaaSAssetsDir/properties/sap-application.properties
echo 'Building iDaaS Connect - ThirdParty'
cd $_myCodeDir/iDaaS-Connect-ThirdParty/
mvn clean install
cd $_myCodeDir/iDaaS-Connect-ThirdParty/target/
echo 'Copying iDaaS Connect - ThirdParty JAR File'
cp *.jar /Development/iDaaS-Assets/iDaaS-Connect-ThirdParty.jar
echo 'Copying iDaaS Connect - ThirdParty Properties File'
cd $_myCodeDir/iDaaS-Connect-ThirdParty/src/main/resources/
cp application.properties $_myiDaaSAssetsDir/properties/thirdparty-application.properties
