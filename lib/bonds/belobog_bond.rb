# frozen_string_literal: true

require_relative '../strategies/even_numbers_strategy'

# Belobog bond - inherits from EvenNumbersStrategy
class BelobogBond < EvenNumbersStrategy
  def name
    'Belobog'
  end
end
