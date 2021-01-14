# cp-log4j-kafka-examples

This Demo shows how to collect logs from custom applications, such as Java applications, SpringBoot applications, KStreams applications or KSQLDB servers.
Such applications can be managed by a central operations team. In this case, the challenge is simply the collection of log data and forwarding of it to the place where the processing happens. Instead of using a fully managed stack, many teams prefer also a local log-collection, e.g., for MPV projects and PoCs long before an operations team can take over.

For those teams is this reposirtory. 

We use this approach for building an active log analytics pipeline.

## Current state:

### Demo 1
- A simple Java application uses Log4J-Kafka Log-appender for direct log forwarding to a Confluent platform cluster.

### Demo 2
- A docker container with a tomcat server provides some log lines.
- The container is started with a Fluentd log-driver.
- Fluentd takes over the control on the log data flow.
- A kafka-plugin in Fluentd is forwarding the log data to a Confluent platform cluster where the logs are stored in a topic.

## Todo
- test with multiline logs
- test with log-files and a tail-source
- provide a demo for syslog integration via Kafka-Connect
