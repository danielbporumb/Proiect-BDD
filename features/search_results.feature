Feature: Test the functionality of the Search Input

  Background:
    Given I am on the Home Page

  Scenario: Check that the user can use the search functionality - without examples table
    When I type "laptop" in the Search Input
    When I click on the Search button
    Then Search results are displayed
    Then All the search results contain the word "laptop"

  Scenario Outline: Check that the user can use the search functionality - with examples table
    When I type "<text>" in the Search Input
    When I click on the Search button
    Then Search results are displayed
    Then All the search results contain the word "<text>"

    Examples:
      | text                                        |
      | laptop                                      |
      | apple                                       |
      | HTC One M8 Android L 5.0 Lollipop           |
      | Samsung Series 9 NP900X4C Premium Ultrabook |