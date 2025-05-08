Feature: Data Transformation

    In order to standardize data formats
    As a data manager
    I want data to be transformed during ingestion

    Scenario: Transform data during ingestion
        Given configured transformation rules for a data type
        When data of that type is being ingested
        Then the system should apply the transformation rules
        And store the transformed data