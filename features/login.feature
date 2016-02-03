Feature: Login

  Background: Registration
    Given I have registered to the system

  Scenario: Positive Login
    Given I am not logged in
    When I submit valid credential
    Then I am logged in
