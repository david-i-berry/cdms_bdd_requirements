Feature: Climate Indices Calculation

    In order to track climate change indicators
    As a climate researcher
    I want to calculate climate indices

    Scenario: Calculate core climate indices
        Given sufficient climate data (requirement 4.4.2.12, 6.1.2.3)
        And standardized definitions of core climate indices (ETCCDI, etc.)
        And quality-controlled daily observation time series
        When a user requests core climate indices calculation
        Then the system should calculate the indices according to international definitions
        And apply appropriate missing data handling procedures
        And calculate uncertainty estimates where applicable
        And store results with complete calculation metadata
        And present the results with appropriate visualizations
        And provide export options in standard formats (CSV, netCDF)
        And generate trend analyses for indices over time

    Scenario: Calculate indices on different temporal scales
        Given quality-controlled climate data
        And index definitions that can be applied at multiple time scales
        When a user requests indices calculation with specific temporal parameters
        Then the system should calculate the indices at the requested scale (monthly, seasonal, annual)
        And ensure methodological consistency across scales
        And clearly document the temporal characteristics in output metadata
        And provide comparative analysis across temporal scales where applicable

    Scenario: Calculate spatially aggregated indices
        Given point-based climate indices calculations
        And defined spatial aggregation regions
        When a user requests regionally averaged indices
        Then the system should perform appropriate spatial aggregation
        And handle areas with varying station density appropriately
        And document the aggregation methodology
        And provide uncertainty estimates for regional values
        And generate spatial comparison visualizations

    Scenario: Calculate application-specific indices
        Given relevant climate data
        When a user requests application-specific indices
        Then the system should calculate the custom indices
        And present the results with appropriate context

    Scenario: Generate national climate monitoring products
        Given country-specific climate data
        When a user requests national climate monitoring products
        Then the system should generate the products according to national standards
        And prepare them for distribution