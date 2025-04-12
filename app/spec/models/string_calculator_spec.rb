require_relative '../../models/string_calculator'

RSpec.describe StringCalculator do
  describe "#add" do
    it "returns 0 for an empty string" do
      expect(StringCalculator.new.add("")).to eq(0)
    end

    it "returns the number itself for a single number" do
      expect(StringCalculator.new.add("1")).to eq(1)
    end

    it "returns the sum of two numbers" do
      expect(StringCalculator.new.add("1,2")).to eq(3)
    end

    it "handles numbers separated by new lines" do
      expect(StringCalculator.new.add("1\n2,3")).to eq(6)
    end

    it "supports custom delimiters" do
      expect(StringCalculator.new.add("//;\n1;2")).to eq(3)
    end

    it "raises an error when a single negative number is provided" do
      expect { StringCalculator.new.add("1,-2,3") }.to raise_error(RuntimeError, "negatives not allowed: -2")
    end

    it "raises an error listing all negative numbers when multiple are provided" do
      expect { StringCalculator.new.add("1,-2,-3") }.to raise_error(RuntimeError, "negatives not allowed: -2, -3")
    end
  end
end