# frozen_string_literal: true

require_relative 'base_strategy'

module Strategies
  # Strategy that selects all even numbers from the given range.
  class EvenNumbersStrategy < BaseStrategy
    # Select all even numbers from the range
    # @return [Array<Integer>] Array of even numbers within the range
    def select_numbers
      range.to_a.select(&:even?)
    end

    # Get the name of this strategy
    # @return [String] The strategy name
    def name
      'Even Numbers Strategy'
    end

    # Get a description of how this strategy works
    # @return [String] The strategy description
    def description
      'Selects all even numbers from the given range'
    end
  end
end
