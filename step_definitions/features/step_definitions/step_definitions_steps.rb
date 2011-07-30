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

Then /^I the balance of the Checking Account should be \$(\d+)$/ do |arg1|
  pending # express the regexp above with the code you wish you had
end

Then /^I the balance of the Savings Account should be \$(\d+)$/ do |arg1|
  pending # express the regexp above with the code you wish you had
end
