echo 'Building iDaaS Data Simulator'
_myCodeDir='/Development/Project-Herophilus/DataSimulators/HL7/'
_myiDaaSAssetsDir='/Development/iDaaS-Assets/'
cd $_myCodeDir
mvn clean install
echo 'Copying iDaaS Data Simulator - JAR File'
cd $_myCodeDir/target/
cd /Development/Project-Herophilus/DataSimulators/HL7/target/
cp *.jar /Development/iDaaS-Assets/iDaaS-DataSimulator-HL7.jar
echo 'Copying iDaaS Data Simulator - Properties File'
cd $_myCodeDir/src/main/resources/
cp application.properties $_myiDaaSAssetsDir/properties/hl7datasim-application.properties


