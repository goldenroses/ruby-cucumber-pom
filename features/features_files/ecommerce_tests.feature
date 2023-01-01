Feature: Ecommerce login Feature
  Scenario: Verify ecommerce webpage loads and user can sign in
    Given Ecommerce webpage Login Page loads
    And Ecommerce Login Link is present loaded
    Then Correct Username and Password Should Login Successfully <username> <password>
    And My Account page should display after login
    And Matching Account Details should be displayed
  Examples:
    | username                      | password      |
    | kankanaads@gmail.com          | LambdaTest123 |
