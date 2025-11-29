# frozen_string_literal: true

require_relative 'base_strategy'

module Strategies
  # Strategy that selects all odd numbers from the given range.
  class OddNumbersStrategy < BaseStrategy
    # Select all odd numbers from the range
    # @return [Array<Integer>] Array of odd numbers within the range
    def select_numbers
      range.to_a.select(&:odd?)
    end

    # Get the name of this strategy
    # @return [String] The strategy name
    def name
      'Odd Numbers Strategy'
    end

    # Get a description of how this strategy works
    # @return [String] The strategy description
    def description
      'Selects all odd numbers from the given range'
    end
  end
end
