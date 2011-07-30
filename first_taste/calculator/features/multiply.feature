Feature: Multiplication
  This will multpliy given numbers

Scenario: Multiply two numbers
  Given the input "5*5"
  When the calculator is run
  Then the output should be "25"