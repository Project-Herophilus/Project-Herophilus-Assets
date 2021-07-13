source kafka_version.sh
cd tmp/"kafka_2.13-$KAFKA_VERSION"
bin/kafka-topics.sh --list --bootstrap-server localhost:9092
