# frozen_string_literal: true

require_relative 'base_bond'
require_relative '../strategies/odd_numbers_strategy'

module Bonds
  # Xianzhou bond - uses odd numbers strategy but with modified Platinum (10 instead of 9)
  class XianzhouBond < BaseBond
    def initialize
      super(Strategies::OddNumbersStrategy.new(3..10))
    end

    def name
      'Xianzhou'
    end

    def levels
      { bronze: 3, silver: 5, gold: 7, platinum: 10 }
    end
  end
end
