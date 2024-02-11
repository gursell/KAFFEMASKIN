Feature: Water Connection in Coffee Machine

  Background:
    Given the coffee machine is turned on
    And there are coffee beans loaded

  Scenario: Check water connection
    Given the coffee machine is ready
    When the customer checks the water connection
    Then it should confirm the water connection is secure

  Scenario: Refill water tank
    Given the coffee machine is ready
    And the water level is low
    When the customer refills the water tank
    Then it should detect the increase
    And confirm the water connection is secure

  Scenario: Water connection failure alert
    Given the coffee machine is ready
    And there is a water connection failure
    When the customer tries to make coffee
    Then it should display a water connection failure alert
    And prevent coffee dispensing until fixed