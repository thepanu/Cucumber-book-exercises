input = File.read(ARGV[0])
operator = input.split(/\d+/).join.strip
numbers_to_add = input.split(operator).map { |n| n.to_i }

if operator == '+'
  total = 0
  numbers_to_add.each do |number|
    total += number
  end
elsif operator == '/'
   numbers_to_add.each do |number|
     if total.nil?
        total = number
     else
        total = total / number
     end
   end
else
  total
end
print total

