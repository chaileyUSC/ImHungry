Feature: Search ImHungry
	Testing on the default search page 

Background: 
	Given I am on the default search page 



Scenario: "Feed Me" Button
	Then the Feed Me button is on the search page

Scenario: "Log In" Button
	Then the Log In button is on the search page 

Scenario: "Sign Up" Button
	Then the Sign Up button is on the search page 

Scenario: Input box
	Then an input box with default text Enter Food is on the search page 

Scenario: Basic Pizza Search 
	When I type "pizza" in the input box
	And I click on the Feed Me button 
	Then I should I should see 5 restaurant results for "pizza" on the results page
	And I should see 5 recipe results for "pizza" on the results page 

