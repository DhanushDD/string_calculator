# frozen_string_literal: true

require_relative 'string_calculator/parser'
class StringCalculator
  def add(input)
    parser = StringCalculator::Parser.new(input)
    numbers = parser.numbers
    raise_negatives(numbers)
    numbers.sum
  end

  private

  def raise_negatives(numbers)
    negatives = numbers.select { |n| n.negative? }
    return if negatives.empty?

    raise ArgumentError, "Negative numbers not allowed: #{negatives.join(', ')}"
  end
end
