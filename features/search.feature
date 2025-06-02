Feature: Search Functionality

    In order to find specific data
    As a system user
    I want to search for data and metadata

    Scenario: Perform integrated search
        Given populated data and metadata repositories
        When a user performs an integrated search
        Then the system should return matching observations and metadata
        And present them in a coherent view

    Scenario: Search metadata catalogue
        Given a populated metadata catalogue
        When a user searches with specific criteria
        Then the system should return matching metadata records
        And provide access to associated data
