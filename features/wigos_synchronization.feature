Feature: WIGOS Metadata Synchronization

    In order to maintain standards compliance
    As a metadata manager
    I want to synchronize metadata with OSCAR/Surface

    Scenario: Synchronize WIGOS metadata
        Given local WIGOS metadata
        When the synchronization process runs
        Then the system should compare local metadata with OSCAR/Surface
        And update local or remote metadata as configured