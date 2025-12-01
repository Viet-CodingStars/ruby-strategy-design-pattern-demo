# frozen_string_literal: true

require_relative '../strategies/odd_numbers_strategy'

# Wolf Hunt bond - inherits from OddNumbersStrategy
class WolfHuntBond < OddNumbersStrategy
  def name
    'Wolf Hunt'
  end
end
