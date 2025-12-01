# frozen_string_literal: true

require_relative '../strategies/sequence_numbers_strategy'

# Galaxy Rangers bond - inherits from SequenceNumbersStrategy (1, 2, 3)
class GalaxyRangersBond < SequenceNumbersStrategy
  def name
    'Galaxy Rangers'
  end

  def levels
    { bronze: 1, silver: 2, gold: 3, platinum: nil }
  end
end
