Feature: Custom Data Extraction

    In order to extract specific subsets of data
    As a data analyst
    I want to use custom queries

    Scenario: Extract data using custom query
        Given stored observation data
        When a user submits a custom query
        Then the system should execute the query against the data
        And return the matching results