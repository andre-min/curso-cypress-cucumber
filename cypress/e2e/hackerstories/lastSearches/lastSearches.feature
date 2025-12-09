Feature: Last Searches

  @hackerstories
  Scenario: Shows the last five searched terms as buttons
    Given I access the Hacker Stories web app
    When I seach for these terms 
      | Vue |  Svelte | Angula | Next | Nest |
    Then I see "4" buttons, one for each of the last searched terms