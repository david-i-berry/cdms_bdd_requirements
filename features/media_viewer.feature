Feature: Media viewer

    In order to ???
    As a user of the system
    I want to view media associated with a station

    Scenario: View media content
        Given stored media files associated with observations
        When a user accesses the media viewer
        Then the system should display the media content
        And provide navigation controls