# frozen_string_literal: true

require_relative 'base_bond'
require_relative '../strategies/even_numbers_strategy'

module Bonds
  # Belobog bond - uses even numbers strategy (2, 4, 6)
  class BelobogBond < BaseBond
    def initialize
      super(Strategies::EvenNumbersStrategy.new(2..6))
    end

    def name
      'Belobog'
    end

    def levels
      { bronze: 2, silver: 4, gold: 6, platinum: nil }
    end
  end
end
