Feature: Login to Fidexio

  US: as a user should be able to login with valid credentials

  Background:
    Given user is on the fidexio login  page

  @wip
  Scenario: Pos manager is on login page
  AC1: user can login with valid credentials (posmanager)
    When user(pos) enters "posmanager34@info.com" and "posmanager" as credentials
    And user clicks to login button
    Then user(pos) is on the dashboard


  Scenario: Sales manager is on login page
  AC1: user can login with valid credentials (salesmanager)
    When user(sales) enters "salesmanager56@info.com" and "salesmanager" as credentials
    And user clicks to login button
    Then user(sales) is on the dashboard


  Scenario:
  AC2: user should see the "Wrong/Invalid password" message after providing invalids credentials
    When user enters "eiofw@info.com" as invalid username and "eggeed" as invalid password
    And user clicks to login button
    Then user should see the "Wrong login/password" message on the login page after providing invalid credentials

    Scenario:
    AC3: "Please fill out this field" message should be displayed if the password or username is empty
      When the user submits the login button without providing any username or password
      And user clicks to login button
      Then user should see the "Please fill out this field" text on the login page after not providing any credentials

  Scenario:
  AC4:User land on the ‘reset password’ page after clicking on the "Reset password" link
    When user clicks on "Reset password" link to reset password.
    Then user should be on the reset password page.

  Scenario:
  AC5:User should see the password in bullet signs by default
    When user enters "salesmanager" as password
    Then user should see the passoword in bullet signs by default

  Scenario:
  AC6: Verify if the ‘Enter’ key of the keyboard is working correctly on the login page.
    When  user enters "posmanager34@info.com" and "posmanager" as credentials to check the enter key
    And user should press the "Enter" key on the keyboard
    Then user should be logged in to the system