// File: base.libsonnet
{
  // Base object with core functionality
  Base:: {
    name: "DefaultName",
    version: "1.0.0",
    isActive: true,
    
    // Method to get a summary of the object
    summary():: "Name: " + self.name + ", Version: " + self.version + ", Active: " + (if self.isActive then "Yes" else "No"),
  },
}