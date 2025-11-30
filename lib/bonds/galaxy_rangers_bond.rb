# frozen_string_literal: true

require_relative '../strategies/base_strategy'
require_relative '../strategies/sequence_numbers_strategy'

module Bonds
  # Galaxy Rangers bond - uses sequence strategy (1, 2, 3) with step 1
  class GalaxyRangersBond < BaseBond
    def initialize
      super(Strategies::SequenceNumbersStrategy.new(1..3, step: 1))
    end

    def name
      'Galaxy Rangers'
    end

    def levels
      { bronze: 1, silver: 2, gold: 3, platinum: nil }
    end
  end
end
