Feature: Coffee Strength Regulation in Coffee Machine
  As a user,
  I want to adjust the strength of the coffee in the coffee machine in order to prefer demanded strength.

  Background:
    Given the coffee machine is at turned on
    And there is water in the tank
    And coffee beans are placed 

  Scenario: Customer choices strong coffee
    Given the grinder is working
    And there are enough coffee beans
    When the customer picks a strong coffee
    Then the machine should adjust the coffee strength
    And  make a strong coffee

  Scenario: Customer selects a mild coffee
    Given the grinder is working
    And there are enough coffee beans
    When the customer picks a mild coffee
    Then the machine should adjust the coffee strength to be mild
    And make a mild coffee

  Scenario: Customer selects a regular coffee
    Given the grinder is working
    And there are enough coffee beans
    When the customer picks a regular coffee
    Then the machine should maintain the coffee strength
    And make a normal coffee

  Scenario: Customer adjusts coffee strength settings
    Given the grinder is working
    And there are enough coffee beans
    When the customer adjusts the coffee strength settings to a specific level
    Then the machine should dispense coffee with the demanded strength