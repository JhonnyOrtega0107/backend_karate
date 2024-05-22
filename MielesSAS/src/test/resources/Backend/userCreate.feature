Feature: Service Users
  As QA Automation
  I want to create a user with name and job
  To validate the status code and response

  Background: consume service
    * url url
    * def requestUser  = {"name": '#(name)', "job": '#(job)'}
    * def requestUser2  = {"name": '#(name)', "job": '#(job)', "email": '#(email)'}
    * def responsePost = read ("userCreateResponse.json")


  Scenario: Validate status 201 when user is created
    Given path 'users'
    And request requestUser
    When method post
    Then status 201
    And print response
    And match response == responsePost

  Scenario: Validate status 400 when data is invalid
    Given path 'users'
    And request requestUser2
    When method post
    Then status 400
