# frozen_string_literal: true

require_relative 'spec_helper'

RSpec.describe Strategies::SequenceNumbersStrategy do
  let(:range) { 1..10 }
  let(:strategy) { described_class.new(range) }

  describe '#initialize' do
    it 'defaults step to 1' do
      expect(strategy.step).to eq(1)
    end

    it 'accepts a custom step' do
      strategy = described_class.new(range, step: 3)
      expect(strategy.step).to eq(3)
    end

    it 'raises ArgumentError for non-positive step' do
      expect { described_class.new(range, step: 0) }.to raise_error(ArgumentError)
      expect { described_class.new(range, step: -1) }.to raise_error(ArgumentError)
    end

    it 'raises ArgumentError for non-integer step' do
      expect { described_class.new(range, step: 1.5) }.to raise_error(ArgumentError)
    end
  end

  describe '#select_numbers' do
    context 'with default step of 1' do
      it 'returns all numbers in the range' do
        expect(strategy.select_numbers).to eq([1, 2, 3, 4, 5, 6, 7, 8, 9, 10])
      end
    end

    context 'with step of 2' do
      let(:strategy) { described_class.new(range, step: 2) }

      it 'returns every other number' do
        expect(strategy.select_numbers).to eq([1, 3, 5, 7, 9])
      end
    end

    context 'with step of 3' do
      let(:strategy) { described_class.new(range, step: 3) }

      it 'returns every third number' do
        expect(strategy.select_numbers).to eq([1, 4, 7, 10])
      end
    end

    context 'with a larger step than range' do
      let(:strategy) { described_class.new(range, step: 20) }

      it 'returns only the first number' do
        expect(strategy.select_numbers).to eq([1])
      end
    end
  end

  describe '#name' do
    it 'returns the strategy name' do
      expect(strategy.name).to eq('Sequence Numbers Strategy')
    end
  end

  describe '#description' do
    it 'includes the step in the description' do
      strategy = described_class.new(range, step: 5)
      expect(strategy.description).to include('step 5')
    end
  end
end
