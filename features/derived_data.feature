Feature: Derived Parameters Calculation

    In order to enrich data
    As a data analyst
    I want derived parameters calculated during ingestion

    Scenario: Calculate derived parameters during ingestion
        Given data containing base parameters (requirement 4.5.1.2)
        And configured derivation formulas for secondary parameters
        When the system ingests the data
        Then it should calculate all configured derived parameters
        And store them with the original data
        And mark derived data with appropriate provenance metadata
        And record the derivation process for audit purposes
        And handle cases where input values are missing or flagged

    Scenario: Add new derived parameter calculation
        Given existing data streams with base parameters
        And a business need for a new derived parameter
        When an authorized user configures a new derivation formula
        Then the system should validate the formula for correctness
        And apply the new derivation to new incoming data
        And provide an option to reprocess historical data
        And maintain version control of derivation formulas

    Scenario: Handle invalid derived parameter calculation
        Given base data containing values outside expected ranges
        When the system attempts to calculate derived parameters
        Then it should detect potential calculation errors
        And apply appropriate quality flags to the derived values
        And continue processing the remaining parameters
        And log the calculation issues for review