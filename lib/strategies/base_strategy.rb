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

module Bonds
  # Base class for all bonds that defines the levels and inherits from a strategy.
  class BaseBond
    LEVELS = %i[bronze silver gold platinum].freeze

    attr_reader :strategy

    # Initialize the bond with its strategy
    # @param strategy [Strategies::BaseStrategy] The strategy this bond uses
    def initialize(strategy)
      @strategy = strategy
    end

    # Get the name of the bond
    # @return [String] The bond name
    def name
      raise NotImplementedError, "#{self.class} must implement #name"
    end

    # Get the level requirements for this bond
    # @return [Hash] Hash with level keys and number requirements
    def levels
      raise NotImplementedError, "#{self.class} must implement #levels"
    end

    # Get the requirement for a specific level
    # @param level [Symbol] The level (:bronze, :silver, :gold, :platinum)
    # @return [Integer, nil] The number requirement or nil if not available
    def requirement_for(level)
      levels[level]
    end

    # Check if a level is available for this bond
    # @param level [Symbol] The level to check
    # @return [Boolean] True if the level is available
    def level_available?(level)
      !levels[level].nil?
    end

    # Get all available levels for this bond
    # @return [Array<Symbol>] Array of available levels
    def available_levels
      levels.keys.select { |level| level_available?(level) }
    end

    # Get the level achieved for a given number
    # @param number [Integer] The number to check
    # @return [Symbol, nil] The highest level achieved or nil if none
    def level_for_number(number)
      achieved_level = nil
      LEVELS.each do |level|
        req = requirement_for(level)
        next if req.nil?

        achieved_level = level if number >= req
      end
      achieved_level
    end

    # Display bond information
    def display_info
      puts "#{name}:"
      puts "  Strategy: #{strategy.name}"
      LEVELS.each do |level|
        req = requirement_for(level)
        puts "  #{level.to_s.capitalize}: #{req || 'N/A'}"
      end
      puts
    end
  end
end
