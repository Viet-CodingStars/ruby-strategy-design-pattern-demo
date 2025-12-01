# frozen_string_literal: true

require_relative '../strategies/even_numbers_strategy'

# Cosmic Scholar bond - inherits from EvenNumbersStrategy
class CosmicScholarBond < EvenNumbersStrategy
  def name
    'Cosmic Scholar'
  end
end
