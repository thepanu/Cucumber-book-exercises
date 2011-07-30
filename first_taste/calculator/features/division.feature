Feature: Division

  Scenario: Divide two numbers
  Given the input "10/2"
  When the calculator is run
  Then the output should be "5"

  Scenario: Divide by zero
    Given the input "10/0"
    When the calculator is run
    Then the output should be "Error: div by zero"
