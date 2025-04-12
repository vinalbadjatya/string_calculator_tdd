require_relative '../../models/string_calculator'
RSpec.describe StringCalculator do
  describe "#add" do
    it "returns 0 for an empty string" do
      calculator = StringCalculator.new
      expect(calculator.add("")).to eq(0)
    end

    it "returns the number itself for a single number" do
      calculator = StringCalculator.new
      expect(calculator.add("1")).to eq(1)
    end

    it 'returns the sum of two numbers' do
      calculator = StringCalculator.new
      expect(calculator.add("1,2")).to eq(3)
    end

    it 'returns the sum of numbers separated by new lines' do
      calculator = StringCalculator.new
      expect(calculator.add("1\n2,3")).to eq(6)
    end
  end
end
