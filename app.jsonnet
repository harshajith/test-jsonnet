// File: app.jsonnet
local base = import 'base.libsonnet';
local logging = import 'logging_mixin.libsonnet';

// Create an application by combining the base object with the logging mixin
local App = base.Base + logging.LoggingMixin + {
  // Override some properties from the base
  name: "MyAwesomeApp",
  version: "2.3.1",
  
  // Add application-specific methods
  start():: {
    message: $.log("Application " + $.name + " started"),
    status: "running",
  },
  
  stop():: {
    message: $.log("Application " + $.name + " stopped"),
    status: "stopped",
  },
};

// Create an instance with some customizations
{
  app: App,
  startMessage: App.start(),
  summaryInfo: App.summary(),
  debugLog: (App.setLogLevel("DEBUG")).log("This is a debug message"),
}