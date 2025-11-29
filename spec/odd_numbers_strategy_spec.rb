# frozen_string_literal: true

require_relative 'spec_helper'

RSpec.describe Strategies::OddNumbersStrategy do
  let(:range) { 1..10 }
  let(:strategy) { described_class.new(range) }

  describe '#select_numbers' do
    it 'returns only odd numbers from the range' do
      expect(strategy.select_numbers).to eq([1, 3, 5, 7, 9])
    end

    context 'with a range starting from an even number' do
      let(:range) { 2..12 }

      it 'returns only odd numbers' do
        expect(strategy.select_numbers).to eq([3, 5, 7, 9, 11])
      end
    end

    context 'with a range containing no odd numbers' do
      let(:range) { 2..2 }

      it 'returns an empty array' do
        expect(strategy.select_numbers).to eq([])
      end
    end
  end

  describe '#name' do
    it 'returns the strategy name' do
      expect(strategy.name).to eq('Odd Numbers Strategy')
    end
  end

  describe '#description' do
    it 'returns a description' do
      expect(strategy.description).to include('odd numbers')
    end
  end
end
