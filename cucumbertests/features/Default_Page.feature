Feature: Entering Querys on the Main Page

Background:

	Given I am on the Default Page

Scenario: Exists a button with "Feed Me!" Label

	Then I should see Feed me button

Scenario: Query box has correct prompt text

	Then I should see query box with correct prompt text

Scenario: Amount box has correct default value

	Then amount box has default value 5

Scenario: Valid Search Query

	When I enter "Chicken" in the search box
	And I enter "4" in the number box
	And press search
	Then I should be on "Result" page
	And I should see 4 results

Scenario: Query Missing Food
	
	When I enter "4" in the number box
	And press search
	Then I should be on "" page

Scenario: Query Missing Number

	When I enter "Chicken" in the search box
	And press search
	Then I should be on "Result" page
	And I should see 5 results

Scenario: Query No Inputs
	
	When press search
	Then I should be on "" page

Scenario: Query Negative Number

	When I enter "Chicken" in the search box
	And I enter "-1" in the number box	
	And press search
	Then I should be on "" page

Scenario: Query Zero

	When I enter "Chicken" in the search box
	And I enter "0" in the number box
	And press search
	Then I should be on "" page

Scenario: Query Blank Number

	When I enter "Chicken" in the search box
	And I enter "" in the number box
	And press search
	Then I should be on "Result" page
