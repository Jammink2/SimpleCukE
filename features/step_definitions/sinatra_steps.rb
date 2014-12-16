"""
Note:  This tutorial is an adaptation of these two tutorials.  Many thanks to their respective authors.
http://code.tutsplus.com/tutorials/singing-with-sinatra--net-18965
Tutorial:  Setting up and trying out Capybara with a sample app
http://code.tutsplus.com/tutorials/ruby-for-newbies-testing-web-apps-with-capybara-and-cucumber--net-21446
"""
Given(/^I am on the home page$/) do
    visit "/"
end

Then /^I should see "([^"]*)"$/ do |text|
  page.has_content? text
end

Then /^I should see "([^"]*)" in the selector "([^"]*)"$/ do |text, selector|
  page.expect have_selector selector, content: text
end
 
Then /^I should see "([^"]*)" in a link$/ do |text|
  page.expect have_link text
end

Given /^I am on "([^"]*)"$/ do |path|
  visit path
end

When /^I fill in "([^"]*)" with "([^"]*)"$/ do |element, text|
    fill_in element, with: text
end

When /^I click "([^"]*)"$/ do |element|
  click_on element
end



