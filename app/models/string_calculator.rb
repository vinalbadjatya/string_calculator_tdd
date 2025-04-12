class StringCalculator
  def add(numbers)
    return 0 if numbers.empty?

    if numbers.start_with?("//")
      parts = numbers.split("\n", 2)
      delimiter = parts[0][2..-1]
      numbers = parts[1]
      numbers = numbers.split(delimiter).map(&:to_i).sum
    else
      numbers = numbers.split(/,|\n/).map(&:to_i).sum
    end
    numbers
  end
end
