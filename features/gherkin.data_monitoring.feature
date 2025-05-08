Feature: Data Monitoring

    In order to track data quality
    As a data quality manager
    I want to monitor incoming data

    Scenario: Monitor data quality
        Given incoming data streams
        When the monitoring system runs
        Then it should analyze data quality metrics
        And display trends and anomalies