# frozen_string_literal: true

# Base class for all bonds and strategies.
# Bonds inherit from strategy classes which inherit from this base class.
class BaseStrategy
  LEVELS = %i[bronze silver gold platinum].freeze

  # Get the name of the bond/strategy
  # @return [String] The name
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
end
