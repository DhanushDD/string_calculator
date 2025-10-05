# frozen_string_literal: true

require 'simplecov'
SimpleCov.start
require 'string_calculator'

RSpec.describe StringCalculator do
  subject(:calculator) { described_class.new }
  describe '#add' do
    context 'with empty input' do
      it { expect(calculator.add('')).to eq(0) }
    end

    context 'with single number' do
      it { expect(calculator.add('4')).to eq(4) }
    end

    context 'with multiple comma-separated numbers' do
      it { expect(calculator.add('1,2,3')).to eq(6) }
    end

    context 'with newlines as delimiters' do
      it { expect(calculator.add("1\n2,3")).to eq(6) }
    end

    context 'with custom delimiters' do
      it { expect(calculator.add("//;\n1;2")).to eq(3) }
      it 'supports multi-character delimiters' do
        expect(calculator.add("//[***]\n1***2***3")).to eq(6)
      end
      it 'supports multiple delimiters' do
        expect(calculator.add("//[*][%]\n1*2%3")).to eq(6)
      end
    end

    context 'with negative numbers' do
      it 'raises an informative error' do
        expect { calculator.add('2,-4,3,-1') }
          .to raise_error(ArgumentError, 'Negative numbers not allowed: -4, -1')
      end
    end
  end
end
