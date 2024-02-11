
Feature: Payment Preference at Coffee Machine
  As a user, I want to select payment options for my coffee

  Background:
    Given the coffee machine is turned on
    And there is water in the water tank
    And coffee beans are placed

  Scenario: Customer pays by cash for a regular coffee
    Given the coffee machine is ready
    And the grinder is working
    When the customer inserts cash
    Then the system should accept the payment
    And the machine make a regular coffee

  Scenario: Customer pays with a credit card for a cappuccino
    Given the coffee machine is ready
    And the grinder is working
    And the milk frother is operational
    When the customer swipes their credit card
    Then the system should accept the card payment
    And the machine make a cappuccino

  Scenario: Customer gets a free espresso
    Given the coffee machine is ready
    And the grinder is working
    And the water is hot
    When the customer selects a free espresso
    Then the machine make an espresso without payment

  Scenario: Customer adds credit for future purchases
    Given the coffee machine is ready
    When the customer adds credit to their account
    Then the system should update the customer's balance
    And allow future purchases without immediate payment

  Scenario: Customer can not pay the fee
    Given the coffee machine is ready
    And the grinder is working
    When the customer can not complete a purchasing
    Then the system should reject the option for payment
    And the machine does not make the demanded coffee