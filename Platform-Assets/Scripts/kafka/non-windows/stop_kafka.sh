kafkaDir=$HOME'/OpenSourceTech/kafka_2.13-2.6.0'
echo "Directory: "$kafkaDir
cd $kafkaDir

bin/kafka-server-stop.sh config/server.properties
bin/zookeeper-server-stop.sh config/zookeeper.properties

#rm -rf /tmp/kafka-logs /tmp/zookeeper
