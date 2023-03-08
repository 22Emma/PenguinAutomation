Feature: Login to Fidexio

  US: user should be able to login with valid credentials

  Background:
  Given user is on the fidexio login  page

  @wip
  Scenario: Pos manager is on login page
    When user(pos) enters "posmanager34@info.com" and "posmanager" as credentials
    Then user(pos) is on the dashboard


  Scenario: Sales manager is on login page
    When user(sales) enters "salesmanager56@info.com" and "salesmanager" as credentials
    Then user(sales) is on the dashboard
