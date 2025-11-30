# frozen_string_literal: true

require_relative '../strategies/base_strategy'
require_relative '../strategies/sequence_numbers_strategy'

module Bonds
  # Galactic Voyager bond - uses sequence strategy (1, 3, 5, 7) with step 2
  class GalacticVoyagerBond < BaseBond
    def initialize
      super(Strategies::SequenceNumbersStrategy.new(1..7, step: 2))
    end

    def name
      'Galactic Voyager'
    end

    def levels
      { bronze: 1, silver: 3, gold: 5, platinum: 7 }
    end
  end
end
