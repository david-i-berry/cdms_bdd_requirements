Feature: Quality Control Metrics

    In order to evaluate quality control effectiveness
    As a quality control manager
    I want to monitor quality control metrics

    Scenario: View quality control metrics
        Given executed quality control processes
        When a user accesses the QC metrics dashboard
        Then the system should display metrics on QC effectiveness
        And highlight potential issues requiring attention
