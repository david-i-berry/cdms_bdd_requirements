Feature: Data Ingestion

    In order to process various meteorological and geographical data
    As a system operator
    I want to ingest data in different formats

    Scenario: Ingest BUFR data
        Given a valid BUFR data file (requirement 5.1.1.2)
        And I am logged in with data ingestion privileges
        When I upload the file to the system
        Then the system should successfully ingest the data within 60 seconds
        And log the successful ingestion status with timestamp and source identifier
        And send a notification to the data monitoring dashboard

    Scenario: Ingest BUFR data with validation errors
        Given a BUFR data file with format inconsistencies
        And I am logged in with data ingestion privileges
        When I upload the file to the system
        Then the system should identify the validation errors
        And provide detailed error messages for each inconsistency
        And log the validation failure
        And create an incident ticket for data quality review

    Scenario: Ingest TAC data
        Given a valid TAC data file
        When I upload the file to the system
        Then the system should successfully ingest the data
        And log the successful ingestion status

    Scenario: Ingest vector data
        Given a valid vector data file (shapefile/GML/KML)
        When I upload the file to the system
        Then the system should successfully ingest the data
        And log the successful ingestion status

    Scenario: Ingest raster data
        Given a valid raster data file (netCDF/HDF/GeoTIFF)
        When I upload the file to the system
        Then the system should successfully ingest the data
        And log the successful ingestion status

    Scenario: Ingest ASCII data
        Given a valid ASCII data file
        When I upload the file to the system
        Then the system should successfully ingest the data
        And log the successful ingestion status

    Scenario: Ingest other supported data formats
        Given a valid data file in a supported format
        When I upload the file to the system
        Then the system should successfully ingest the data
        And log the successful ingestion status