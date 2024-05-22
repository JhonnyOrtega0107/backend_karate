Feature: Service Users
  As QA Automation
  I want to consult a user for ID
  To validate the status code and response

  Background: consume service
    * url url
    * def responseGet = read ("userFetchforIDResponse.json")


  Scenario: Validate status 200 when existing user
    Given path 'users','2'
    When method get
    Then status 200
    And print response
    And match response == responseGet



  Scenario: Validate status 404 when non existing user
    Given path 'users','50'
    When method get
    Then status 404
