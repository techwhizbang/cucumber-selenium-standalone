Feature: Google Search for "Functional Testing"
  As a developer that wants to learn more about functional testing with Cucumber
  I should be able to search "Functional Testing with Cucumber" on Google

  Scenario: Search "Functional Testing with Cucumber" on Google
    When I go to http://google.com
    When I fill in "Google Search" with "Functional Testing with Cucumber"
    Then I should see "Search Results"