# frozen_string_literal: true

require_relative '../strategies/even_numbers_strategy'

# Planet of Festivities bond - inherits from EvenNumbersStrategy
class PlanetOfFestivitiesBond < EvenNumbersStrategy
  def name
    'Planet of Festivities'
  end
end
