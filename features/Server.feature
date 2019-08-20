@cucumber
Feature: Server feature
 
    @server
    Scenario: Make a New Server
        Given I am on Discord login page
        And I login as user1
        And I create a new server
        When I choose TestServer1 as the name for the server
        When I close popup and open server settings
        Then I delete the server TestServer1 and confirm it
