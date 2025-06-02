Feature: Observation Form Management

    In order to facilitate manual data entry
    As a data entry operator
    I want customizable observation forms

    Scenario: Design observation form
        Given a need for a new observation form
        When an administrator designs the form
        Then the system should create the form based on the design
        And make it available for data entry

    Scenario: Enter observation data via forms
        Given an observation form
        When a user enters data and submits the form
        Then the system should validate the entered data
        And store the observation data
        And calculate any derived parameters