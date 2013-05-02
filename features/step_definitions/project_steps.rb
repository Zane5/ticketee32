
Given /^I am on the homepage$/ do
  visit "/"
end

When /^I follow "([^"]*)"$/ do |link|
  click_link link
end

When /^I fill in "([^"]*)" with "([^"]*)"$/ do |field, value|
  fill_in field, :with => value
end

When /^I press "([^"]*)"$/ do |button|
  click_button(button)
end

Then /^I should see "([^"]*)"$/ do |content|
  page.should have_content(content)
end

Then /^I should be on the project page for "([^"]*)"$/ do |name|
  project_path(Project.find_by_name!(name))
end


Given /^there is a project called "([^\"]*)"$/ do |name|
  @project = FactoryGirl.create(:project, name:  name)
end

Then /^(?:|I )should not see "([^"]*)"$/ do |text|
  if page.respond_to? :should
    page.should have_no_content(text)
  else
    assert page.has_no_content?(text)
  end
end

=begin




Given /^(?:|I)am on (.+)$/ do |page_name|
#  pending # express the regexp above with the code you wish you had
  visit path_to(page_name)
end

When(/^I follow "(.*?)"$/) do |arg1|
  pending # express the regexp above with the code you wish you had
end

When(/^I fill in "(.*?)" with "(.*?)"$/) do |arg1, arg2|
  pending # express the regexp above with the code you wish you had
end

When(/^I press "(.*?)"$/) do |arg1|
  pending # express the regexp above with the code you wish you had
end

Then(/^I should see "(.*?)"$/) do |arg1|
  pending # express the regexp above with the code you wish you had
end

=end

