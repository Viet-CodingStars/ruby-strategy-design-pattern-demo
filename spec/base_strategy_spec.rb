# frozen_string_literal: true

require_relative 'spec_helper'

RSpec.describe Strategies::BaseStrategy do
  describe '#initialize' do
    it 'accepts a range' do
      strategy = Strategies::BaseStrategy.new(1..10)
      expect(strategy.range).to eq(1..10)
    end

    it 'raises ArgumentError if range is not provided' do
      expect { Strategies::BaseStrategy.new(nil) }.to raise_error(ArgumentError)
    end

    it 'raises ArgumentError if range is not a Range' do
      expect { Strategies::BaseStrategy.new([1, 2, 3]) }.to raise_error(ArgumentError)
    end
  end

  describe '#select_numbers' do
    it 'raises NotImplementedError' do
      strategy = Strategies::BaseStrategy.new(1..10)
      expect { strategy.select_numbers }.to raise_error(NotImplementedError)
    end
  end

  describe '#name' do
    it 'raises NotImplementedError' do
      strategy = Strategies::BaseStrategy.new(1..10)
      expect { strategy.name }.to raise_error(NotImplementedError)
    end
  end

  describe '#description' do
    it 'raises NotImplementedError' do
      strategy = Strategies::BaseStrategy.new(1..10)
      expect { strategy.description }.to raise_error(NotImplementedError)
    end
  end
end
