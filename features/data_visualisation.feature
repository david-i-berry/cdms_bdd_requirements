Feature: Data Visualization

    In order to analyze data visually
    As a data analyst
    I want to visualize data in different formats

    Scenario: View data in tabular format
        Given stored observation data
        When a user requests tabular visualization
        Then the system should display the data in table format
        And provide sorting and filtering capabilities

    Scenario: View data in graphical format
        Given stored observation data
        When a user requests graphical visualization
        Then the system should display the data in appropriate graphs
        And provide customization options