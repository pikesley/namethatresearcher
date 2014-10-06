Feature: Name That Researcher

  Scenario: Show me the homepage
    When I go to the home page
    Then I should see "UnJ_6p6l.jpeg" within "img"
    And I should see "J"
