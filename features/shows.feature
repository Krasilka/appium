Feature: Adding the show

  Background:
    Given I prepare application for use

  Scenario: As a user I can add show by float button
    When I add show Fringe
    Then on main screen I should see added show

  Scenario: After user adds the show, it is reported on statistics page
    When I add show Fringe
    Then on statistics screen I should see show has been counted

  Scenario: After user watches video, it is reported on statistics page
    When I add show Fringe
    And I watch first episode of the show
    Then on main screen I should see second episode
    And on statistics screen I should see watch has been counted



