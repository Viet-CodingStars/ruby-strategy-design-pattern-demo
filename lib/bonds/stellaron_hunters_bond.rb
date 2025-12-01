# frozen_string_literal: true

require_relative '../strategies/sequence_numbers_strategy'

# Stellaron Hunters bond - inherits from SequenceNumbersStrategy (2, 3, 4)
class StellaronHuntersBond < SequenceNumbersStrategy
  def name
    'Stellaron Hunters'
  end

  def levels
    { bronze: 2, silver: 3, gold: 4, platinum: nil }
  end
end
