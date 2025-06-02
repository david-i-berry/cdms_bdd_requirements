Feature: Data Download
        In order to use data in external systems
        As a data user
        I want to download data in various formats

    Scenario: Download data via WMS
        Given stored geospatial data
        When a user requests data via WMS
        Then the system should serve the data through the WMS interface
        And confirm successful delivery

    Scenario: Download data via WFS
        Given stored geospatial data
        When a user requests data via WFS
        Then the system should serve the data through the WFS interface
        And confirm successful delivery

    Scenario: Download data in WMO formats
        Given stored meteorological data
        When a user requests data in WMO format
        Then the system should generate the data in the requested WMO format
        And provide it for download