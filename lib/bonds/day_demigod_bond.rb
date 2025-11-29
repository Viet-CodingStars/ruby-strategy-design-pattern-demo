# frozen_string_literal: true

require_relative 'base_bond'
require_relative '../strategies/odd_numbers_strategy'

module Bonds
  # Day Demigod bond - uses odd numbers strategy (3, 5, 7, 9)
  class DayDemigodBond < BaseBond
    def initialize
      super(Strategies::OddNumbersStrategy.new(3..9))
    end

    def name
      'Day Demigod'
    end

    def levels
      { bronze: 3, silver: 5, gold: 7, platinum: 9 }
    end
  end
end
