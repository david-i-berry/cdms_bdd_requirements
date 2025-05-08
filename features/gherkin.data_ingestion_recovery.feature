Feature: Automated Recovery

    In order to ensure system resilience
    As a system operator
    I want the system to automatically recover from ingestion failures

    Scenario: Recover from ingestion failure
        Given a data ingestion process
        When the ingestion fails
        Then the system should automatically attempt recovery
        And log the recovery attempt status
        And either successfully complete the ingestion or alert an administrator