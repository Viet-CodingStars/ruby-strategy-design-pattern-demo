# frozen_string_literal: true

require_relative 'base_strategy'

# Strategy for bonds that use even numbers (2, 4, 6)
class EvenNumbersStrategy < BaseStrategy
  def levels
    { bronze: 2, silver: 4, gold: 6, platinum: nil }
  end
end
