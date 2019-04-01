Given(/^I am on the Default Page$/) do
  visit 'http://localhost:8080'
end

Then("I should see Feed me button") do
  expect(page).to have_content("Feed Me!")
end

Then("I should see query box with correct prompt text") do
  expect(page).to have_selector("search_query")
end

Then("amount box has default value 5") do
  expect(page).to have_selector("ex2[value='5']")
end

Then("I should see text {string}") do |string|
  expect(page).to have_content string
end

When("I enter {string} in the search box") do |string|
  fill_in 'search_query', :with => string
end

When("I enter {string} in the number box") do |string|
  fill_in 'ex2', :with => string
end

When("press search") do
  click_on("Submit")
end

When("click Ok") do
  click_on("Ok")
end

Then("I should be on {string} page") do |string|
  expect(page).to have_current_path("/" + string)
end

Then("I should see {int} results") do |int|
  expect(page).to have_content("Distance", count:int)
end

#Results Page
Given("I searched for {string} {string} results") do |string, string2|
  visit 'http://localhost:3000/'
  fill_in 'search_query', :with => string2
  fill_in 'amount', :with => string
  click_on("Submit")
end

Then("there should be a collage") do
  find("img[alt='collage']")
end

Then("I should see a drop down list") do
  expect(page).to have_select("rstdrop")
end

Then("no item should be selected by default") do
  expect(page).to have_select("rstdrop")
end

When("I select {string} from dropdown box") do |string|
  select string, :from => "rstdrop"
end

When("I click {string}") do |string|
  click_on(string)
end

When("I click on a recipe") do
  find('.recrow2', :text => 'Jerk Chicken').click
end

When("I click on a restaurant") do
  find('.recrow2', :text => 'KFC').click
end

Given("there is a result in the favorites list") do
  visit 'http://localhost:3000/'
  fill_in 'query', :with => 'Chicken'
  fill_in 'amount', :with => '2'
  click_on("Submit")
  find('.recrow2', :text => 'Jerk Chicken').click
  select "Favorites", :from => "rcpdrop"
  click_on("Add to List")
  click_on("Return to Results Page")

end

Then("the result should be displayed first") do
  find('.recrow1', :text => 'Jerk Chicken').click
end

Given("there is an item in the do-not-show list") do
  visit 'http://localhost:3000/'
  fill_in 'query', :with => 'Chicken'
  fill_in 'amount', :with => '2'
  click_on("Submit")
  find('.recrow2', :text => 'Jerk Chicken').click
  select "Do Not Show", :from => "rcpdrop"
  click_on("Add to List")
  click_on("Return to Results Page")
end

Then("the item will not be displayed") do
  expect(page).to have_content("Jerk Chicken", count:0)
end

#Recipe Page
Given("I selected the first recipe result") do
  find('.recrow1', :text => 'Chicken Spinoccoli').click
end

Then("I should get a printable version of the item") do
  expect(page).to have_title "Print"
end

When("I select list {string} on recipe page") do |string|
  select string, :from => "rcpdrop"
end

#Restaurant Page
Given("I selected the first restaurant result") do
  find('.recrow1', :text => 'Chick-fil-A').click
end

Then("I should see Google Maps directions page") do
  expect(page).to have_title("Tommy Trojan to 3758 S Figueroa St, Los Angeles, CA 90007 - Google Maps")
end

Then("the destination should be prefilled with {string}") do |string|
  expect(page).to have_title("Tommy Trojan to 3758 S Figueroa St, Los Angeles, CA 90007 - Google Maps")
end

Then("the starting point should be USC") do
  expect(page).to have_title("Tommy Trojan to 3758 S Figueroa St, Los Angeles, CA 90007 - Google Maps")
end

Then("I should go to the restuarants home page") do
  expect(page).to have_current_path("/Locations/CA/USC-In-Line")
end

When("I select list {string} on restaurant page") do |string|
  select string, :from => "resdrop"
end

#List Management
Given("I have a list with two items") do
  visit 'http://localhost:3000/'
  fill_in 'query', :with => 'Chicken'
  fill_in 'amount', :with => '2'
  click_on("Submit")

  find('.recrow2', :text => 'Jerk Chicken').click
  select "Favorites", :from => "rcpdrop"
  click_on("Add to List")
  click_on("Return to Results Page")

  find('.recrow1', :text => 'Chick-fil-A').click
  select "Favorites", :from => "resdrop"
  click_on("Add to List")
  click_on("Return to Results Page")
end

Given("I am on the Favorites Page") do
  visit 'http://localhost:3000/Favorite'
end

Then("all items in that list are displayed") do
  expect(page).to have_content("Jerk Chicken")
  expect(page).to have_conent("Chick-fil-A")
end

When("I remove {string}") do |string|
  find('.recrow2', :text => string).click
  click_on("Remove Item")
end

Then("{string} should be gone") do |string|
    expect(page).to have_content(string, count:0)
end

When("I move {string} to list {string}") do |string, string2|
  find('.recrow2', :text => string).click
  select string2, :from => "resdrop"
  click_on("Move to List")
end

Then("{string} should be in {string} list") do |string, string2|
  visit 'http://localhost:3000/' + string2
  expect(page).to have_content(string)
end

When("I select list {string}") do |string|
  select string, :from => "resdrop"
end

