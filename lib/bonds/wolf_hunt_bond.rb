# frozen_string_literal: true

require_relative '../strategies/base_strategy'
require_relative '../strategies/odd_numbers_strategy'

module Bonds
  # Wolf Hunt bond - uses odd numbers strategy (3, 5, 7, 9)
  class WolfHuntBond < BaseBond
    def initialize
      super(Strategies::OddNumbersStrategy.new(3..9))
    end

    def name
      'Wolf Hunt'
    end

    def levels
      { bronze: 3, silver: 5, gold: 7, platinum: 9 }
    end
  end
end
