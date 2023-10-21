# 6410402104 พิชญา เสนา
Feature: deposit
    As a customer
    I want to deposit my money using ATM

Background:
    Given a customer with id 1 and pin 111 with balance 200 exists
    When I login to ATM with id 1 and pin 111

Scenario: Deposit amount less than balance
    When I deposit 100 from ATM
    Then my account balance is 100

Scenario: Deposit amount more than balance
    When I deposit 300 from ATM
    Then my account balance is 200
