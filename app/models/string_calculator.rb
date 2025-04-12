class StringCalculator
  def add(numbers)
    return 0 if numbers.empty?

    # Check for custom delimiter
    if numbers.start_with?("//")
      parts = numbers.split("\n", 2)
      delimiter = parts[0][2..-1]
      numbers = parts[1]
      numbers = numbers.split(delimiter).map(&:to_i)
    else
      numbers = numbers.split(/,|\n/).map(&:to_i)
    end

    # Check for negative numbers
    negatives = numbers.select { |n| n < 0 }
    unless negatives.empty?
      raise "negatives not allowed: #{negatives.join(', ')}"
    end

    # Return the sum of the numbers
    numbers.sum
  end
end
