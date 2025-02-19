require 'rails_helper'

RSpec.describe Calculator, type: :model do
  describe ".add" do
    it "returns 0 for an empty string" do
      expect(Calculator.add("")).to eq(0)
    end

    it "returns the number itself when a single number is passed" do
      expect(Calculator.add("1")).to eq(1)
    end

    it "returns the sum of two comma-separated numbers" do
      expect(Calculator.add("1,5")).to eq(6)
    end

    it "handles multiple numbers" do
	  expect(Calculator.add("1,2,3,4")).to eq(10)
	end

	it "handles new lines as delimiters" do
	  expect(Calculator.add("1\n2,3")).to eq(6)
	end

	it "supports different delimiters" do
	  expect(Calculator.add("//;\n1;2")).to eq(3)
	end

	it "raises an exception for negative numbers" do
	  expect { Calculator.add("1,-2,3,-4") }.to raise_error("Negative numbers not allowed: -2, -4")
	end
  end
end
