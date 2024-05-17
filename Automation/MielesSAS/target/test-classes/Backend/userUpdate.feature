Feature: Service Users
  As QA Automation
  I want to update a user with name and job
  To validate the status code and response

  Background: consume service
    * url url
    * def requestUser  = {"name": '#(name)', "job": '#(job)'}
    * def requestUser2  = {"name": '#(name)', "job": '#(job)', "email": '#(email)'}
    * def responsePost = read ("userUpdateResponse.json")


  Scenario: Validate status 200 when user is update
    Given path 'users','3'
    And request requestUser
    When method put
    Then status 200
    And print response
    And match response == responsePost

  Scenario: Validate status 400 when data is invalid
    Given path 'users','2'
    And request requestUser2
    When method put
    Then status 400