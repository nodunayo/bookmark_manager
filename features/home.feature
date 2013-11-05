Feature: View homepage
  In order to see something
  As a visitor
  I need some sort of UI

  Scenario: The header
    Given I am on the homepage
    Then I should see "Bookmark Manager" within "header"
    Then I should see "Add link" within "header"
    Then I should see "Sign up" within "header"
    Then I should see "Sign in" within "header"

  Scenario: The footer
    Given I am on the homepage
    Then I should see "Makers Academy"
    Then I should see "I built this page at Makers Academy"

  Scenario: Current links
    Given I am on the homepage
    When I fill in "name" with "Makers Academy"
    And I fill in "url" with "https://www.makersacademy.com"
    And I fill in "description" with "12 week intensive coding course"
    And I press "save"
    Then I should see:
    |name           |url                  |description                  |
    |Makers Academy |https://www.makersacademy.com|12 week intensive coding course|




