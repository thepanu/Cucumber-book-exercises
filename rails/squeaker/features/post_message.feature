Feature: Post message

  Scenario: User can post messages
    Given there is a User
    And I am Active User
    When I visit the page for the User
    And I fill in content with "test message"
    And I click Submit Button
    Then "test message" is saved to database
    And I should see "test message"
