Feature: Data Validation

    In order to ensure data quality
    As a data manager
    I want validation checks applied during ingestion

    Scenario: Validate data format
        Given data being ingested
        When the system processes the data
        Then it should validate the data format against specifications
        And flag or reject invalid formatted data

    Scenario: Apply constraint checks
        Given data being ingested (requirement 5.3.1.2)
        And predefined constraint parameters (min/max values, valid ranges, etc.)
        When the system processes the data
        Then it should apply defined constraint checks
        And flag values that violate constraints with appropriate QC flags
        And include the constraint violation details in the QC report
        And categorize violations by severity (warning, error, critical)
        And apply automatic corrections where configured to do so

    Scenario: Constraint check configuration
        Given a requirement for a new constraint check
        And I am logged in as a Data Quality Manager
        When I configure constraint parameters for a specific variable
        Then the system should validate the constraint parameters
        And save the constraint check configuration
        And apply the new constraint check to future data
        And make the constraint available for retrospective application

    Scenario: Apply consistency checks
        Given data being ingested
        When the system processes the data
        Then it should apply defined consistency checks
        And flag inconsistent values

    Scenario: Apply statistical checks
        Given data being ingested
        When the system processes the data
        Then it should apply defined statistical checks
        And flag statistically anomalous values

    Scenario: Apply spatial checks
        Given geospatial data being ingested
        When the system processes the data
        Then it should apply defined spatial checks
        And flag spatially anomalous values

    Scenario: Apply comparison checks
        Given data being ingested
        When the system processes the data
        Then it should apply defined comparison checks
        And flag values that fail comparisons

    Scenario: Apply combination checks
        Given data being ingested
        When the system processes the data
        Then it should apply defined combination checks
        And flag values that fail combination validations