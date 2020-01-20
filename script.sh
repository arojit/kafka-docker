# vi /opt/scripts/service-monitor-1.sh

#!/bin/bash

apache-zookeeper-3.5.6-bin/bin/zkServer.sh start

apache-zookeeper-3.5.6-bin/bin/zkCli.sh &

kafka_2.13-2.4.0/bin/kafka-server-start.sh kafka_2.13-2.4.0/config/server.properties &

kafka_2.13-2.4.0/bin/kafka-topics.sh --create --bootstrap-server localhost:9092 --replication-factor 1 --partitions 1 --topic test

python app.py