Feature: Data Ingestion Logging

    In order to track data processing
    As a system operator
    I want all ingestion activities to be logged

    Scenario: Log successful data ingestion
        Given data is being ingested
        When the ingestion process completes successfully
        Then the system should log the successful status
        And include timestamp and data source information

    Scenario: Log failed data ingestion
        Given data is being ingested
        When the ingestion process fails
        Then the system should log the failure status
        And include error details, timestamp, and data source information
        And classify the error type (format error, connection issue, etc.)
        And generate an alert based on error severity
        And retain the source file in a quarantine area for investigation