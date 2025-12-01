# frozen_string_literal: true

require_relative '../strategies/sequence_numbers_strategy'

# Galactic Voyager bond - inherits from SequenceNumbersStrategy (1, 3, 5, 7)
class GalacticVoyagerBond < SequenceNumbersStrategy
  def name
    'Galactic Voyager'
  end

  def levels
    { bronze: 1, silver: 3, gold: 5, platinum: 7 }
  end
end
