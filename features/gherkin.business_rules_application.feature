Feature: Business Rules Application

    In order to ensure data meets organizational requirements
    As a data manager
    I want business rules applied during data ingestion

    Scenario: Apply user-specified business rules during ingestion
        Given configured business rules for a data type (requirement 5.1.1.1)
        And rule priority settings have been established
        When data of that type is being ingested
        Then the system should apply all relevant business rules in priority order
        And log any rule violations with specific rule IDs and violation details
        And flag affected data records with appropriate QC codes
        And generate a business rule compliance report

    Scenario: Modify business rules during ongoing ingestion
        Given an active data ingestion process
        And business rules that need immediate updating
        When an administrator modifies the business rules
        Then the system should apply the updated rules to newly arriving data
        And notify operators that rule changes have been applied
        And clearly indicate in logs which version of rules were applied to which data