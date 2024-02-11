Feature:  Beverage Alternatives in Coffee Machine
  As a user,
  I want to have various beverage options in the coffee machine in order to choose demanded coffee.

  Background:
    Given the coffee machine is turned on
    And there is water in the tank
    And coffee beans are placed 

  Scenario: Customer selects a normal coffee
    Given the grinder is working
    When the customer picks a normal coffee
    Then the machine should give a normal coffee

  Scenario: Customer selects a cappuccino
    Given the milk frother is working
    And the machine is cleaned
    When the customer picks a cappuccino
    Then the machine should make a cappuccino

  Scenario: Customer selects an espresso
    And the water is hot
    When the customer picks an espresso
    Then the machine should make and give an espresso

  Scenario: Customer selects a latte
    Given there is enough milk
    When the customer picks a latte
    Then the machine should make and give a latte

  Scenario: Customer selects hot chocolate
    Given there's hot chocolate mix
    And the heating element is on
    When the customer picks hot chocolate
    Then the machine should make a hot chocolate