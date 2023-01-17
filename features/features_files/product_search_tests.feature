Feature: Ecommerce search Feature
  Scenario: Verify ecommerce webpage loads and user can land on the dashboard
    Given User navigates to the homepage
    And Search Box is present and loaded
    Then User searches for a phone
    And There should be an iPhone displayed as part of the results
