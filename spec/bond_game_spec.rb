# frozen_string_literal: true

require_relative 'spec_helper'

RSpec.describe BondGame do
  let(:game) { described_class.new }
  let(:range) { 1..10 }

  describe '#initialize' do
    it 'can be created without a strategy' do
      expect(game.strategy).to be_nil
    end

    it 'can be created with a strategy' do
      strategy = Strategies::OddNumbersStrategy.new(range)
      game = described_class.new(strategy)
      expect(game.strategy).to eq(strategy)
    end
  end

  describe '#select_bonds' do
    it 'raises error when no strategy is set' do
      expect { game.select_bonds }.to raise_error(RuntimeError, /No strategy set/)
    end

    it 'delegates to the strategy' do
      game.strategy = Strategies::OddNumbersStrategy.new(range)
      expect(game.select_bonds).to eq([1, 3, 5, 7, 9])
    end
  end

  describe '#strategy_info' do
    it 'returns no strategy message when none set' do
      expect(game.strategy_info).to eq('No strategy set')
    end

    it 'returns strategy information when set' do
      game.strategy = Strategies::EvenNumbersStrategy.new(range)
      expect(game.strategy_info).to include('Even Numbers Strategy')
      expect(game.strategy_info).to include('1..10')
    end
  end

  describe 'changing strategies' do
    it 'allows switching between strategies' do
      game.strategy = Strategies::OddNumbersStrategy.new(range)
      expect(game.select_bonds).to eq([1, 3, 5, 7, 9])

      game.strategy = Strategies::EvenNumbersStrategy.new(range)
      expect(game.select_bonds).to eq([2, 4, 6, 8, 10])

      game.strategy = Strategies::SequenceNumbersStrategy.new(range, step: 3)
      expect(game.select_bonds).to eq([1, 4, 7, 10])
    end
  end
end
