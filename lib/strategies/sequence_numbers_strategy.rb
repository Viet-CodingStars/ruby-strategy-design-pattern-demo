# frozen_string_literal: true

require_relative 'base_strategy'

module Strategies
  # Strategy that selects a sequence of consecutive numbers from the given range.
  # This strategy allows specifying a step/interval for the sequence.
  class SequenceNumbersStrategy < BaseStrategy
    attr_reader :step

    # Initialize the strategy with a range and optional step
    # @param range [Range] The range of numbers to work with
    # @param step [Integer] The step/interval between numbers (default: 1)
    def initialize(range, step: 1)
      super(range)
      raise ArgumentError, 'Step must be a positive integer' unless step.is_a?(Integer) && step.positive?

      @step = step
    end

    # Select numbers from the range with the specified step
    # @return [Array<Integer>] Array of numbers in sequence
    def select_numbers
      range.step(step).to_a
    end

    # Get the name of this strategy
    # @return [String] The strategy name
    def name
      'Sequence Numbers Strategy'
    end

    # Get a description of how this strategy works
    # @return [String] The strategy description
    def description
      "Selects numbers in sequence with step #{step} from the given range"
    end
  end
end
