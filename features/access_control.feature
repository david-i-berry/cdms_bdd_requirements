Feature: Role-based Access Control

    In order to protect sensitive data
    As a system administrator
    I want to control access based on user roles

    Scenario: Access control for restricted data
        Given a user with specific role permissions
        And data with defined access restrictions
        When the user attempts to access data
        Then the system should verify access rights against multiple criteria:
          - User role and privileges
          - Data sensitivity classification
          - Geographic access restrictions
          - Temporal access restrictions (embargo periods)
          - Purpose limitations
        And grant or deny access accordingly
        And log access attempts for audit purposes
        And provide appropriate feedback on access denial

    Scenario: Role assignment and management
        Given an identity management system
        And predefined system roles with permission sets
        When an administrator assigns roles to users
        Then the system should apply the role permissions immediately
        And maintain a history of role assignments
        And enforce separation of duties where required
        And periodically prompt for role review and recertification

    Scenario: Temporary elevated access
        Given a user requiring temporary additional permissions
        And a documented business justification
        When an authorized approver grants temporary elevated access
        Then the system should assign additional permissions for a specified duration
        And notify relevant security personnel of the elevation
        And automatically revoke elevated access when the period expires
        And maintain comprehensive logs of the temporary access

    Scenario: Data access based on data sharing agreements
        Given formal data sharing agreements with external organizations
        And data tagged with sharing restriction metadata
        When an external user attempts to access data
        Then the system should enforce the specific terms of applicable agreements
        And track usage against any quantity limitations
        And ensure appropriate attribution is captured
        And generate reports on external data access for data owners


