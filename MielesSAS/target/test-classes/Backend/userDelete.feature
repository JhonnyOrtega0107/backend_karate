Feature: Service Users
  As QA Automation
  I want to delete a user with ID
  To validate the status code and response

  Background: consume service
    * url url
    * def requestUser  = {"name": '#(name)', "job": '#(job)'}
    * def responsePost = read ("userUpdateResponse.json")


  Scenario: Validate status 204 when user is delete
    Given path 'users','3'
    When method delete
    Then status 204
    And print response
