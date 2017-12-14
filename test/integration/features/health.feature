@health
Feature: API proxy health
	As API administrator
	I want to monitor Apigee proxy and backend service health
	So I can alert when it is down
    
	@client_credentials
    Scenario: Create client_credentials token
        Given I set Content-Type header to application/x-www-form-urlencoded
        And I set body to grant_type=client_credentials&client_id=`clientId`&client_secret=`clientSecret`
        When I POST to /token
        Then response code should be 200
        And response header Content-Type should be application/json
        And response body should contain access_token
