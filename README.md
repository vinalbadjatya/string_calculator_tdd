# string_calculator_tdd# String Calculator TDD

This is a simple **String Calculator** project built with **Test-Driven Development (TDD)** in Ruby.

---

## 📌 Features

- Add numbers passed as a string
- Numbers separated by commas or newlines
- Raise an exception if any negative numbers are present, listing **all negative numbers** in the exception message

---

### ✅ How Someone Can Check:
1. **Clone  repository**
2. **Run `bundle install`** (if you use a `Gemfile`)
3. **Run `rspec`** to check if all tests are passing
4. **Open the `string_calculator.rb` file** to review the code logic

## 🚀 How to Run

1. **Clone the repository**
   ```bash
   git clone git@github.com:vinalbadjatya/string_calculator_tdd.git
   cd string_calculator_tdd

2. **Run bundle install

3. Run the rspec

4. Project Structure

string_calculator_tdd/
├── lib/
│   └── string_calculator.rb   # Calculator implementation


├── spec/
│   └── string_calculator_spec.rb  # RSpec test cases


├── README.md

├── Gemfile

└── .rspec

5. Example

calculator = StringCalculator.new

puts calculator.add("1,2,3")  # Output: 6

puts calculator.add("1\n2,3") # Output: 6

puts calculator.add("-1,2,-3")

Raises: Negative numbers not allowed: -1, -3
