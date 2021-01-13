docker build . -t tc

docker run --log-driver=fluentd --log-opt fluentd-address=localhost:9881 tc

