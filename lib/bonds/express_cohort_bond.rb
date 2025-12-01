# frozen_string_literal: true

require_relative '../strategies/even_numbers_strategy'

# Express Cohort bond - inherits from EvenNumbersStrategy
class ExpressCohortBond < EvenNumbersStrategy
  def name
    'Express Cohort'
  end
end
