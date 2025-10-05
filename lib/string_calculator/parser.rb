# frozen_string_literal: true

class StringCalculator::Parser
  DEFAULT_DELIMITERS = [',', '\n'].freeze

  def initialize(input)
    @input = input.to_s
  end

  def numbers
    return [] if @input.empty?

    delimiters, numbers_str = parse_delimiters_and_numbers
    numbers_str.split(delimiters_regex(delimiters)).map(&:to_i)
  end

  private

  def parse_delimiters_and_numbers
    if @input.start_with?('//')
      header, numbers_str = @input.split('\n', 2)
      delimiters = extract_custom_delimiters(header)
      [delimiters, numbers_str]
    else
      [DEFAULT_DELIMITERS, @input]
    end
  end

  def extract_custom_delimiters(header)
    spec = header[2..]
    return spec.scan(/\[([^\]]+)\]/).flatten if spec.include?('[')

    [spec]
  end

  def delimiters_regex(delimiters)
    Regexp.union(delimiters.map { |d| Regexp.escape(d) })
  end
end
