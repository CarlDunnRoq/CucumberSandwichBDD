Feature: Fibonacci number sequences

  Scenario: Default sequence initiated
    When a fibonacci sequence is started
    Then the next number should be 1

  Scenario: Initialized with a legitimate fibonacci number
    Given a fibonacci sequence initialized to 8
    Then the next number should be 13
    
  Scenario: Sequence is initialized and skipped
    Given a fibonacci sequence initialized to 2
    When the sequence is skipped 3 times
    Then the state should be "The current number is 8"
    And the next number should be 13

  Scenario: When initialized on a "non-fib" number
    Given a fibonacci sequence initialized to 4
    Then it should throw an exception

  Scenario: Sequence is initialized at 1, and skipped by 1
    Given a fibonacci sequence initialized to 1
    When the sequence is skipped 1 times
    Then the state should be "The current number is 1"
    And the next number should be 1

  Scenario: When the sequence is initialized twice
    Given a fibonacci sequence initialized to 8
    And a fibonacci sequence initialized to 5
    Then the next number should be 8

  Scenario: When the sequence is skipped 3 times
    Given a fibonacci sequence initialized to 5
    When the sequence is skipped 3 times
    And the sequence is skipped 3 times
    And the sequence is skipped 3 times
    Then the next number should be 610

  Scenario: When the sequence is initialized with a float
    Given a fibonacci sequence initialized to 3.0
    Then the next number should be 5
