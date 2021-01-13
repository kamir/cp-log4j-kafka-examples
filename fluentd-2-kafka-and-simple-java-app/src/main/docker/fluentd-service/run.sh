###
#
# Plain Fluentd image ...
#
#docker pull fluent/fluentd:v0.12-debian
#docker run -d -p 9880:9880 -p 9881:9881 -v $(pwd)/conf:/fluentd/etc -e FLUENTD_CONF=fluentd.conf fluent/fluentd

###
#
# Add Kafka Plugin to Fluentd in self managed container
#
docker build . -t myfluentd:1

docker run -d -p 9880:9880 -p 9881:9881 --network=host myfluentd:1

sleep 15

###
#
#
# This worked in the past, but currently, no connection on 9880
#
# curl -L -X POST -d 'json={"json":"This is my test message!"}' http://localhost:9880/docker.logs

docker run --log-driver=fluentd --log-opt tag="docker.logs" --log-opt fluentd-address=localhost:9881 ubuntu echo 'Hello Fluentd!'

######
#
# Kafka plugin analysis
#
# ruby 2.3.7p456 (2018-03-28 revision 63024) [universal.x86_64-darwin18]
#
#require "kafka"
#kafka = Kafka.new(["127.0.0.1:9092"], client_id: "my-application")