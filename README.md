#README

This project is an implementation of the String Calculator TDD in Rails 8 using ActiveRecord. The calculator follows a strict Test-Driven Development (TDD) approach, with incremental commits showcasing the evolution of the code.

Features

	Adds numbers from a comma-separated string input.

	Handles any number of integers.

	Supports new line (\n) as a delimiter.

	Supports custom delimiters using the format: //[delimiter]\n[numbers].

	Raises an exception for negative numbers, listing all of them in the error message.

Installation

	Clone the repository:

		git clone https://github.com/nidhi-soni1104/calculator-rails8
		cd string_calculator

	Install dependencies:

	  bundle install

	Set up the database:

	  rails db:migrate

	Run tests:

	  rspec

Usage

	To use the calculator, call the .add method on the Calculator model:

	Calculator.add("")        # => 0
	Calculator.add("1")       # => 1
	Calculator.add("1,5")     # => 6
	Calculator.add("1,2,3,4") # => 10
	Calculator.add("1\n2,3") # => 6
	Calculator.add("//;\n1;2") # => 3
	Calculator.add("-1,2,-3") # => Exception: "Negative numbers not allowed: -1, -3"


Test Cases:

✅ Returns 0 for an empty string.

✅ Returns the number itself for a single number.

✅ Returns the sum of two comma-separated numbers.

✅ Handles multiple numbers.

✅ Supports new lines as delimiters.

✅ Supports custom delimiters.

✅ Raises an exception for negative numbers.

