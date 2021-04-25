Feature: User is able to perform different actions using buttons

  Scenario: User can resize the "Answer" window
    Given User is on the "Answer" page
    When User clicks on resize button
    Then "Answer" window become small
    And User is able to see the entire content of "Answer" window using scroll bar
    # Observation: User is not able to resize the "Answer" window to his desired dimensions

  Scenario: User can maximize the "Answer" window
    Given User have clicked the resize button once on the Answer page and "Answer" window appears small
    When User clicks on resize button
    Then "Answer" window maximises (or appears as before)
    And User is able to see the entire content of "Answer" window uising scroll bar

  Scenario: User can hear the options available using Play button
    Given User is on "Answer" page
    When User clicks on Play button
    Then User hears all the options available for radio buttons and check boxes
    And Each option gets highlighted during its call

  Scenario: User can reset the answer page
    Given User is on "Answer" page
    And User enters "Hello" in the text field
    And User selects "Correct" radio button
    And User selects "wrong" check box
    When User clicks on reset button
    Then "Answer" page gets refreshed
    And Text field is empty again
    And "Correct" radio button gets unselected
    And "wrong" check box gets unselected

  Scenario: User can reset the answer page after checking for wrong answer
    Given User is on "Answer" page
    And "Incorrect" message is displayed at the bottom
    When User clicks on reset button
    Then "Answer" page gets refreshed
    And Test field is empty
    And No radio button is selected
    And No checkbox is selected
    # Observation: "Incorrect" message still appears at the bottom. Same is the behaviour for "Correct" message as well

  Scenario: Verify the functionality of "Get answer Behavior" button without giving any answer
    Given User is on "Answer" page
    And User have not written and selected anything
    When User clicks on the "Get answer Behavior" button
    Then "Can answer" message displayed at the bottom

  Scenario: Verify the functionality of "Get answer Behavior" button after giving correct answer
    Given User is on "Answer" page
    And User has given correct answer
    When User clicks on the "Get answer Behavior" button
    Then "Can answer" message displayed at the bottom

  Scenario: Verify the functionality "Get answer Behavior" button after giving incorrect answer
    Given User is on "Answer" page
    And User has given incorrect answer
    When User clicks on the "Get answer Behavior" button
    Then "Can answer" message displayed at the bottom

  Scenario: Verify the functionality of Is dirty button
    Given User is on "Answer" page
    When  User clicks on Is dirty button
    Then "Not dirty" message is displayed at the bottom

  Scenario: Verify the functionality of Is dirty button after giving correct answer
    Given User is on "Answer" page
    And User has given correct answer
    When  User clicks on Is dirty button
    Then "Dirty" messaged is displayed at the bottom

  Scenario: Verify the functionality of Is dirty button after giving incorrect answer
    Given User is on "Answer" page
    And User has given incorrect answer
    When  User clicks on Is dirty button
    Then "Dirty" messaged is displayed at the bottom

  Scenario: Verify the functionality of Is empty button without entering any answer
    Given User is on "Answer" page
    When User clicks on Is empty button
    Then "Empty" message is displayed

  Scenario: Verify the functionality of Is empty button after entering answer
    Given User is on "Answer" page
    And User writes "Hello world." in the text field
    And User selects "Correct" radio button
    When User clicks on Is empty button
    Then "Not empty" message is displayed

  Scenario: User is able to see correct answer by clicking on "Show correct answer" button
    Given User is on "Answer" page
    When User clicks on Show correct answer button
    Then "Hello world." displayed on the text field
    And "Correct" radio button is selected
    And Two "Correct" check boxes are selected
    And Pink box is selected

  Scenario: User is able to see correct answer after giving an incorrect answer
    Given User is on "Answer" page
    When User writes "Hello" in the text field
    And User clicks on Show correct answer button
    Then "Hello world." displayed on the text field
    And "Correct" radio button is selected
    And Two "Correct" check boxes are selected
    And Pink box is selected

  Scenario: User is able to see example answer
    Given User is on "Answer" page
    When User clicks on Load example answer button
    Then "e" appears in the text field and text field is highlighted with red
    And "Wrong" radio button is selected
    And "Wrong" check box is selected

  Scenario: User is able to see the Next question
    Given User is on "Answer" page
    When When User clicks on Next button
    Then User is navigated to next question ("https://exercise-player.snappet.org/exercise/2837978")

  Scenario: User is able to see Previous question
    Given User is on "Answer" page
    When User clicks on Prev button
    Then User is navigated to previous question

  Scenario: Verify the functionality of Exercise input button
    Given User is on "Answer" page
    When User clicks on Exercise input button
    Then Pop up appears
    And Verify the content

  Scenario: User is able to see the overview page
    Given User is on "Answer" page
    When When User clicks on Overview button
    Then User is navigated to overview page





