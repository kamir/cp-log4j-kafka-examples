export CATALINA_HOME=/Users/mkampf/bin/apache-tomcat-8.5.59

mvn clean package install -U
cp target/KafkaLoggerApp-1.0-SNAPSHOT.jar $CATALINA_HOME/lib/KafkaLoggerApp-1.0-SNAPSHOT.jar

cd $CATALINA_HOME/bin

./shutdown.sh

./startup.sh




