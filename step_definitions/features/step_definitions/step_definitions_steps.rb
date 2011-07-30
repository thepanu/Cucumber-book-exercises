Given /^I have deposited \$(\d+) in my (\w+) Account$/ do |amount, account_type|
  #pending # express the regexp above with the code you wish you had
  puts amount
  puts account_type
end

When /^I transfer \$(\d+) from my (\w+) Account into my (\w+) Account$/ do |amount, from, to|
  puts amount
  puts from
  puts to
end

Then /^I the balance of the (\w+) Account should be \$(\d+)$/ do |account, amount|
  puts account
  puts amount
end
Given /^I have deposited \$(\d+) in my account$/ do |amount|
  Account.new :balance => amount.to_i
end

When /^I request \$(\d+)$/ do |amount|
  pending("How do we simulate cash being requested?")
end
Then /^\$(\d+) should be dispensed$/ do |amount|
  pending("How do we validate that cash was dispensed?")
end
