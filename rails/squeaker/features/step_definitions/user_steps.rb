Given /^there is a User$/ do
  Factory(:user)
end

Given /^the User has posted the message "([^"]*)"$/ do |message_text|
  User.count.should == 1
  Factory(:message, :content => message_text, :user => User.first)
end

When /^I visit the page for the User$/ do
  visit(user_path(User.first))
end

Given /^I am Active User$/ do
  @current_user = Factory(:user)
end

When /^I fill in (\w+) with "([^"]*)"$/ do |field, content|
  fill_in(field, :with => content)
end

When /^I click Submit Button$/ do
  click_button("Submit")
end

Then /^"([^"]*)" is saved to database$/ do |arg1|
  Message.find_by_content(arg1)
end
