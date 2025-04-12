class StringCalculator
  def add(numbers)
    return 0 if numbers.empty?
    numbers.split(',').map(&:to_i).sum
  end
end

calculator = StringCalculator.new

result1 = calculator.add("")
puts "Test 1: Empty string => Result: #{result1}, Expected: 0, #{result1 == 0 ? 'PASS' : 'FAIL'}"

result2 = calculator.add("1")
puts "Test 2: \"1\" => Result: #{result2}, Expected: 1, #{result2 == 1 ? 'PASS' : 'FAIL'}"

result3 = calculator.add("1,5")
puts "Test 3: \"1,5\" => Result: #{result3}, Expected: 6, #{result3 == 6 ? 'PASS' : 'FAIL'}"

result4 = calculator.add("1,2,3,4,5")
puts "Test 4: \"1,2,3,4,5\" => Result: #{result4}, Expected: 15, #{result4 == 15 ? 'PASS' : 'FAIL'}"