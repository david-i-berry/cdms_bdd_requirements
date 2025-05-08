Feature: Metadata Management

    In order to maintain contextual information
    As a data manager
    I want to create, update, and delete metadata

    Scenario: Create discovery metadata
        Given a need for new discovery metadata
        When a user submits metadata information
        Then the system should store the discovery metadata
        And associate it with relevant data

    Scenario: Update station metadata
        Given existing station metadata
        When a user modifies the metadata
        Then the system should store the updated metadata
        And maintain a history of metadata changes

    Scenario: Delete provenance metadata
        Given existing provenance metadata
        When a user requests deletion
        Then the system should archive the metadata
        And remove it from active use
