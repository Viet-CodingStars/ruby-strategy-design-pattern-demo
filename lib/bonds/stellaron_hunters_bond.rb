# frozen_string_literal: true

require_relative 'base_bond'
require_relative '../strategies/sequence_numbers_strategy'

module Bonds
  # Stellaron Hunters bond - uses sequence strategy (2, 3, 4) with step 1
  class StellaronHuntersBond < BaseBond
    def initialize
      super(Strategies::SequenceNumbersStrategy.new(2..4, step: 1))
    end

    def name
      'Stellaron Hunters'
    end

    def levels
      { bronze: 2, silver: 3, gold: 4, platinum: nil }
    end
  end
end
