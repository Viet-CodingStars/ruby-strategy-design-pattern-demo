# frozen_string_literal: true

require_relative 'base_strategy'

# Strategy for bonds that use odd numbers (3, 5, 7, 9)
class OddNumbersStrategy < BaseStrategy
  def levels
    { bronze: 3, silver: 5, gold: 7, platinum: 9 }
  end
end
