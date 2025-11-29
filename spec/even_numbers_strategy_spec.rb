# frozen_string_literal: true

require_relative 'spec_helper'

RSpec.describe Strategies::EvenNumbersStrategy do
  let(:range) { 1..10 }
  let(:strategy) { described_class.new(range) }

  describe '#select_numbers' do
    it 'returns only even numbers from the range' do
      expect(strategy.select_numbers).to eq([2, 4, 6, 8, 10])
    end

    context 'with a range starting from an even number' do
      let(:range) { 2..12 }

      it 'returns only even numbers' do
        expect(strategy.select_numbers).to eq([2, 4, 6, 8, 10, 12])
      end
    end

    context 'with a range containing no even numbers' do
      let(:range) { 1..1 }

      it 'returns an empty array' do
        expect(strategy.select_numbers).to eq([])
      end
    end
  end

  describe '#name' do
    it 'returns the strategy name' do
      expect(strategy.name).to eq('Even Numbers Strategy')
    end
  end

  describe '#description' do
    it 'returns a description' do
      expect(strategy.description).to include('even numbers')
    end
  end
end
