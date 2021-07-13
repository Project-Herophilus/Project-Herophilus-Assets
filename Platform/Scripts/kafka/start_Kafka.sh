_mydir='/Users/alscott/RedHatTech/kafka_2.12-2.4.0.redhat-00005'

cd $_mydir
bin/zookeeper-server-start.sh config/zookeeper.properties &
bin/kafka-server-start.sh config/server.properties &
