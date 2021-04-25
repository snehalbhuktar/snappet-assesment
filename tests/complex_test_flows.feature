Feature: User is able to perform more than one action consecutively

  Scenario: User is able to correct his answer
    Given User is on Answer page
    When User writes "Hello world." in the text field
    And Select 1 "Correct" check box
    And Click on Check button at the bottom
    Then "Incorrect" message is displayed at the bottom
    And Response time is displayed at the bottom
    When Select "Correct" radio button
    And Select one more check box for "Correct"
    And Select Pink box
    And Click on Check button
    Then "Correct" message is displayed at the bottom
    And Response time is displayed at the bottom

  Scenario: User gives correct answer first and then gives incorrect answer
    Given User is on Answer page
    When User writes "Hello world." in the text field
    And Check 2 "Correct" check boxes
    And Select "Correct" radio button
    And Select Pink box
    And Click on Check button
    Then "Correct" message is displayed at the bottom
    And Response time is displayed at the bottom
    When User checks "Wrong" check box
    And User select Purple circle
    And Click on Check button at the bottom
    Then "Incorrect" message is displayed at the bottom
    And Response time is displayed at the bottom

  Scenario: Verify the functionality of Is dirty button first without any answer and then with answer
    Given User is on Answer page
    When User clicks on Is dirty button
    Then "Not dirty" message is displayed at the bottom
    When User selects "Correct" radio button
    And Writes "Hello world." in the text field
    And User clicks on Is dirty button
    Then "Dirty" message is displayed at the bottom

  Scenario: Verify the functionality of Is empty button first without ny answer and then with answer
    Given User is on Answer page
    When User clicks on Is empty button
    Then "Empty" message is displayed at the bottom
    When User checks 1 "Correct" check box
    And User clicks on Is empty button
    Then "Not empty" message is displayed at the bottom
    When Uncheck "Correct" check box
    And User clicks on Is empty button
    Then "Empty" message is displayed at the bottom
