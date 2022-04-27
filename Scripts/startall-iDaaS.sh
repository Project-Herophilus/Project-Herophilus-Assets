echo "Start Kafka and Kafdrop for Kafka Needs"
./start-grafana.sh &
sleep 10
echo "Start Kafka and Kafdrop for Kafka Needs"
./start-kafka.sh &
sleep 10
echo "Set iDaaS Assets Directory"
_myiDaaSAssetsDir='/Development/iDaaS-Assets/'
sleep 10
echo "Start iDaaS KIC"
./start-KIC.sh &
echo "Start iDaaS Connect Artifacts"
sleep 10
./start-HL7.sh &
sleep 10
./start-FHIR.sh &
# sleep 10
# ./start-ThirdParty.sh &
echo "All tasks Completed!!!"

