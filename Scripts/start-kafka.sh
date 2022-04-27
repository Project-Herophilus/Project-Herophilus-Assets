echo $HOME
echo 'Starting Kafka'
_myDir='/OpenSourceTech/kafka_2.13-3.0.0'
echo $HOME$_myDir
cd $_myDir
./bin/zookeeper-server-start.sh config/zookeeper.properties &
./bin/kafka-server-start.sh config/server.properties &

echo 'Starting KafDrop to View Kafka Queues'
cd /Development/iDaaS-Assets/
java -jar kafdrop-3.30.0.jar &

