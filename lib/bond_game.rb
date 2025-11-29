# frozen_string_literal: true

require_relative 'strategies/base_strategy'
require_relative 'strategies/odd_numbers_strategy'
require_relative 'strategies/even_numbers_strategy'
require_relative 'strategies/sequence_numbers_strategy'

# BondGame is the context class in the Strategy Pattern.
# It uses different strategies to select bond numbers for the Currency War game.
class BondGame
  attr_accessor :strategy

  # Initialize the game with an optional strategy
  # @param strategy [Strategies::BaseStrategy, nil] The initial strategy to use
  def initialize(strategy = nil)
    @strategy = strategy
  end

  # Execute the current strategy to select bond numbers
  # @return [Array<Integer>] Array of selected bond numbers
  def select_bonds
    raise 'No strategy set. Please set a strategy before selecting bonds.' unless strategy

    strategy.select_numbers
  end

  # Get information about the current strategy
  # @return [String] Strategy information
  def strategy_info
    return 'No strategy set' unless strategy

    "#{strategy.name}: #{strategy.description} (Range: #{strategy.range})"
  end

  # Display the selected bonds
  def display_bonds
    puts strategy_info
    puts "Selected bonds: #{select_bonds.join(', ')}"
    puts
  end
end
