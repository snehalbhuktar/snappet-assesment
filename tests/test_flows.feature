Feature: User is able to give an answer

    Scenario: User is able to see the question and navigates to Answer page
        Given User is on the Question page
        When User waits for certain time period (As per the requirement)
        Then User is navigated to Answer page

    Scenario:User gives correct answer
        Given User is on Answer page
        When User writes "Hello world" in text field
        And Click on the "Correct" radio button
        And Check two checkboxes for "Correct"
        And Select the pink box
        And Click on "Check" button at the bottom
        Then "Correct" message should be displayed
        And The response time should be displayed

    Scenario: User writes correct answer in the text field and does not select any radio button
        Given User is on the Answer page
        When User writes "Hello world." in the text field
        And Select "Correct" check box
        And Click on "Check" button
        Then "Incorrect" message displayed at the bottom
        And The response time is displayed at the bottom

    Scenario: User writes incorrect answer in the tet field and does not select any check box
        Given User is on the Answer page
        When User writes "hello world" in the text field
        And Select "Correct" radio button
        And Click on "Check" button
        Then "Incorrect" message displayed at the bottom
        And Test field is highlighted with red colour
        And The response time is displayed at the bottom

    Scenario: User writes correct answer in the text field and select incorrect radio button
        Given User is on the Answer page
        When User writes "Hello world." in the text field
        And Select "Wrong" radio button
        And Check two checkboxes for "Correct"
        And Select the pink box
        And Click on "Check" button at the bottom
        Then "Incorrect" message is displayed at the bottom
        And  The response time is displayed at the bottom

    Scenario: User writes correct answer in the text field and select incorrect checkboxes
        Given User is on the Answer page
        When User writes "Hello world." in the text field
        And Select "Correct" radio button
        And Check checkbox for "Wrong"
        And Select the pink box
        And Click on "Check" button at the bottom
        Then "Incorrect" message is displayed at the bottom
        And  The response time is displayed at the bottom

    Scenario: User writes correct answer, select correct radio button and checkboxes but does not click on Pink button
        Given User is on the Answer page
        When User writes "Hello world." in the text field
        And Select "Correct" radio button
        And Check 2 check boxes for "Correct"
        And Click on "Check" button at the bottom
        Then "Incorrect" message is displayed at the bottom
        And  The response time is displayed at the bottom

    Scenario: User does not write anything in the Test field
        Given User is on the Answer page
        When Select "Correct" radio button
        And Check two checkboxes for "Correct"
        And Select the pink box
        And Click on "Check" button at the bottom
        Then Test field is highlighted with red border
        And "Incorrect required text is empty" is displayed at the bottom
        And  The response time is displayed at the bottom

    Scenario: User does not write or select anything
        Given User is on the Answer page
        When Click on the check button at the bottom
        Then Text field is highlighted with red border
        And "Incorrect required text empty" message displayed at the bottom
        And The response time is displayed at the bottom

    Scenario : Along with the correct information User also select Purple button
        Given User is on Answer page
        When User writes "Hello world" in text field
        And Click on the "Correct" radio button
        And Check two checkboxes for "Correct"
        And Select the pink box
        And Select Purple circle
        And Click on "Check" button at the bottom
        Then "Incorrect" message is displayed at the bottom
        And  The response time is displayed at the bottom