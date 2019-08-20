@cucumber
Feature: Chat features

    @chat
    Scenario: Send a Chat Message
        Given I am on Discord login page
        And I login as user1
        Then I see that login was successful
        And I Start a New Chat
        And I Send a Chat Message with text Test5551235
        Then I clean direct message list