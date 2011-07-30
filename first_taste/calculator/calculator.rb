input = File.read(ARGV[0])
operator = input.split(/\d+/).join.strip
numbers_to_operate = input.split(operator).map { |n| n.to_i }

if operator == '+'
  total = 0
  numbers_to_operate.each do |number|
    total += number
  end
elsif operator == '/'
   numbers_to_operate.each do |number|
     if total.nil?
        total = number
     else
        if number == 0
          total = "Error: div by zero"
        else
          total = total / number
        end
     end
   end
elsif operator == '*'
  numbers_to_operate.each do |number|
    if total.nil?
        total = number
     else

      total = total * number

     end
  end
else
  total
end
print total

