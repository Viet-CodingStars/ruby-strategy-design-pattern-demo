# frozen_string_literal: true

require_relative '../strategies/base_strategy'
require_relative '../strategies/even_numbers_strategy'

module Bonds
  # Express Cohort bond - uses even numbers strategy (2, 4, 6)
  class ExpressCohortBond < BaseBond
    def initialize
      super(Strategies::EvenNumbersStrategy.new(2..6))
    end

    def name
      'Express Cohort'
    end

    def levels
      { bronze: 2, silver: 4, gold: 6, platinum: nil }
    end
  end
end
