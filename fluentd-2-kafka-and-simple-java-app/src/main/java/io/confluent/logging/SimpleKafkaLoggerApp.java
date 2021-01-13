package io.confluent.logging;

import org.apache.log4j.Appender;
import org.apache.log4j.LogManager;
import org.apache.log4j.Logger;

import java.util.Enumeration;

public class SimpleKafkaLoggerApp {

    private static final Logger logger = Logger.getRootLogger();

    public static void main(String[] argv) {

        System.out.println("> Started SimpleKafkaLoggerApp.");

        Enumeration appenders = logger.getAllAppenders();

        while( appenders.hasMoreElements() ) {
            Appender a = (Appender)appenders.nextElement();
            System.out.println( "[ ]-> " + a.getName() );
        }

        System.out.println("> ... ");

        logger.debug( "This is a debug message from SimpleKafkaLoggerApp." );
        logger.info(  "This is an info message from SimpleKafkaLoggerApp." );
        logger.warn(  "This is a Warn message from SimpleKafkaLoggerApp.");
        logger.error( "This is an error message from SimpleKafkaLoggerApp." );

        System.out.println("> Stopped SimpleKafkaLoggerApp.");

        LogManager.shutdown();

        System.exit(0);

    }
}
