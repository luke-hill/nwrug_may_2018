Feature: Make a Google Search
  Scenario: Search for Apples
    Given I am on the Google Homepage
    When I search for Apples
    Then I should see a page of results

  Scenario: Apple uk should be the first result
    Given I am on the Google Homepage
    When I search for Apples
    Then the first result should contain a link to the Apple uk website
