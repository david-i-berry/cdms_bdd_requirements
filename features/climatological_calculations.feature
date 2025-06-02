Feature: Climatological Calculations

    In order to analyze climate patterns
    As a climate scientist
    I want to calculate climatological statistics

    Scenario: Calculate climatological normals
        Given sufficient historical climate data (requirement 4.4.1.2, 6.1.2.3)
        And WMO-defined standard periods (1961-1990, 1991-2020, etc.)
        And quality-controlled observation time series of at least 30 years
        When a user requests climatological normals calculation
        Then the system should compute the normals according to WMO standards
        And handle missing data according to established rules (minimum data requirements)
        And calculate uncertainty estimates for the normals
        And store the results with full provenance metadata
        And make the normals available for climate monitoring products
        And generate comparison reports with previous normal periods

    Scenario: Update climatological normals with new data
        Given existing climatological normals
        And newly available quality-controlled data
        When a user requests normals recalculation
        Then the system should determine if recalculation criteria are met
        And perform the recalculation if appropriate
        And maintain version control of the normals
        And document the differences between versions
        And update dependent products that reference the normals

    Scenario: Calculate monthly summary statistics
        Given climate data spanning multiple months
        When a user requests monthly summary statistics
        Then the system should compute the statistics
        And present them in the requested format

    Scenario: Calculate daily summary statistics
        Given climate data spanning multiple days
        When a user requests daily summary statistics
        Then the system should compute the statistics
        And present them in the requested format

    Scenario: Generate World Weather Records
        Given climate data meeting WWR criteria
        When a user requests World Weather Records
        Then the system should generate the records according to standards
        And prepare them for submission