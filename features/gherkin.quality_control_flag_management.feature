Feature: QC Flag Management

    In order to track data quality status
    As a data quality manager
    I want to manage multilayer QC flags

    Scenario: Apply multilayer QC flags
        Given data that has undergone quality control (requirement 5.4.1.3)
        And a defined QC flag hierarchy (raw, automatic, supervised, approved, etc.)
        When the QC process assigns flags
        Then the system should store flags in multiple layers
        And maintain independence between flag layers
        And track provenance of each flag (source, time, method)
        And display the appropriate flag level based on user needs
        And provide visualization of flag status across the entire dataset
        And allow authorized users to modify flags with appropriate justification

    Scenario: Configure QC flag schemas
        Given organizational quality management requirements
        And international standards for quality flagging
        When a quality administrator configures a flag schema
        Then the system should implement the flag definitions
        And validate the schema for completeness and consistency
        And document the flag meanings and relationships
        And provide migration tools for data with previous flag schemas

    Scenario: Filter data based on quality flags
        Given data with multilayer quality flags
        And user-specified quality requirements
        When a user queries data with quality constraints
        Then the system should filter data based on specified flag values
        And clearly indicate which quality level was applied
        And provide summary statistics of data inclusion/exclusion
        And offer options to adjust quality thresholds interactively