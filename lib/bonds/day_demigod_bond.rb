# frozen_string_literal: true

require_relative '../strategies/odd_numbers_strategy'

# Day Demigod bond - inherits from OddNumbersStrategy
class DayDemigodBond < OddNumbersStrategy
  def name
    'Day Demigod'
  end
end
