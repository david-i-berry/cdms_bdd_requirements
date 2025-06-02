Feature: Business Rules Management

    In order to enforce data policies
    As a system administrator
    I want to manage business rules

    Scenario: Create user-specified business rule
        Given a need for a new business rule
        When an administrator defines the rule
        Then the system should store the rule
        And apply it during future data processing