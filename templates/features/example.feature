Feature: Google Search for "Functional Testing"
  As a developer that wants to learn more about functional testing with Cucumber
  I should be able to search "Functional Testing with Cucumber" on Google

  @async_off
  Scenario: Search "Functional Testing with Cucumber" on Google
    Given I go to http://google.com
    When I fill in "q" with "Functional Testing with Cucumber"
    And I press "Google Search"
    Then I should see "Search Results"