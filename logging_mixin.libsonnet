// File: logging_mixin.libsonnet
{
  // Mixin that adds logging capabilities
  LoggingMixin:: {
    logLevel: "INFO",
    
    // Log method to output messages with the current log level
    log(message):: self.logLevel + ": " + message,
    
    // Method to change the log level
    setLogLevel(level):: self { logLevel: level },
  },
}