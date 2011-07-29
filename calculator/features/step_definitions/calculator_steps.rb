Given /^the input "([^"]*)"$/ do |input|
  File.open('input.txt', 'w') do |file|
    file.puts(input)
  end
end

require 'open3'
When /^the calculator is run$/ do
  command = "ruby calculator.rb input.txt"
  Open3.popen3(command) do |stdin, stdout, stderr|
    error_message = stderr.read
    raise(error_message) unless error_message.empty?
    @output = stdout.read
  end
end


require 'test/unit'
include Test::Unit::Assertions
Then /^the output should be "([^"]*)"$/ do |expected_output|
  assert_equal(expected_output, @output, "The output was not what was expected")
end
