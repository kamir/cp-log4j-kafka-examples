require "kafka"
kafka = Kafka.new(["127.0.0.1:9092"], client_id: "my-application")
kafka.deliver_message("Hello, World from ruby!", topic: "docker_log_messages")
