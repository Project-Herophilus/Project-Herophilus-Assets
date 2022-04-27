echo 'Building iDaaS KIC'
_myCodeDir='/Development/Project-Herophilus/iDaaS-KIC/'
_myiDaaSAssetsDir='/Development/iDaaS-Assets/'
cd $_myCodeDir/iDaaS-KIC-Integration/
mvn clean install
echo 'Copying iDaaS KIC - JAR File'
cd $_myCodeDir/iDaaS-KIC-Integration/target/
cp *.jar $_myiDaaSAssetsDir/iDaaS-KIC.jar
echo 'Copying iDaaS KIC - Properties File'
cd $_myCodeDir/iDaaS-KIC-Integration/src/main/resources/
cp application.properties $_myiDaaSAssetsDir/properties/kic-application.properties

