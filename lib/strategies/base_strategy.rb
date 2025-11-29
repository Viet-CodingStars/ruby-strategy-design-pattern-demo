# frozen_string_literal: true

module Strategies
  # Base strategy class that defines the interface for all bond strategies.
  # This serves as the abstract base class in the Strategy Design Pattern.
  class BaseStrategy
    attr_reader :range

    # Initialize the strategy with a range of numbers
    # @param range [Range] The range of numbers to work with
    def initialize(range)
      raise ArgumentError, 'Range must be provided' unless range.is_a?(Range)

      @range = range
    end

    # Select numbers according to the strategy
    # @return [Array<Integer>] Array of selected numbers
    def select_numbers
      raise NotImplementedError, "#{self.class} must implement #select_numbers"
    end

    # Get the name of the strategy
    # @return [String] The strategy name
    def name
      raise NotImplementedError, "#{self.class} must implement #name"
    end

    # Get a description of how this strategy works
    # @return [String] The strategy description
    def description
      raise NotImplementedError, "#{self.class} must implement #description"
    end
  end
end
