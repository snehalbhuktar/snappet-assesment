Feature: User is able to see the mouse hover text for each button

  Scenario: User is able to see the mouse hover text for resize button
    Given User is on the "Answer" page
    When User points mouse on resize button
    Then Mouse hover text "Resize" is displayed

  Scenario: User is able to see the mouse hover text for play button.
    Given User is on the "Answer" page
    When User points mouse on play button
    Then Mouse hover text "Play" is displayed

  Scenario: User is able to see the mouse hover text for reset button
    Given User is on the "Answer" page
    When User points mouse on reset button
    Then Mouse hover text "Reset" is displayed


  Scenario: User is able to see the mouse hover text for get answer behaviour button
    Given User is on the "Answer" page
    When User points mouse on get answer behaviour button
    Then Mouse hover text "Get answer Behaviour" is displayed

  Scenario: User is able to see the mouse hover text for check button
    Given User is on the "Answer" page
    When User points mouse on check button
    Then Mouse hover text "Check" is displayed

  Scenario: User is able to see the mouse hover text for is dirty button
    Given User is on the "Answer" page
    When User points mouse on is dirty button
    Then Mouse hover text "Is dirty" is displayed

  Scenario: User is able to see the mouse hover text for is empty button
    Given User is on the "Answer" page
    When User points mouse on is empty button
    Then Mouse hover text "Is empty" is displayed

  Scenario: User is able to see the mouse hover text for show correct answer button
    Given User is on the "Answer" page
    When User points mouse on show correct answer button
    Then Mouse hover text "Show correct answer" is displayed

    Scenario: User is able to see the mouse hover text for load example answer button
    Given User is on the "Answer" page
    When User points mouse on load example answer button
    Then Mouse hover text "Load example answer" is displayed


      #Observation: Mouse hover text not available for Overview, Exercise input, Prev and Next button