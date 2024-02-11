Feature: Cleaning of Coffee Machine after Making Coffee

  Background:
    Given the coffee machine has water and coffee beans

  Scenario: User starts cleaning
    Given the machine is on
    When the user  ticks cleaning symbol
    Then the machine follows the process and cleans itself

  Scenario: Regular cleaning reminder
    Given the machine should make regular cleaning
    When it's warning that it needs to be cleaned
    Then the machine follows the process and cleans itself

  Scenario: Cleaning after milky drink
    Given the machine makes a coffe with milk
    When the machine finishes to make drink
    Then the machine follows the process and cleans for the milk frother

  Scenario: Cleaning after espresso
    Given the machine made espresso
    When the machine finishes to make drink
    Then the machine follows the process and cleans for the coffee beans