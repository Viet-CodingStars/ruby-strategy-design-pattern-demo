# frozen_string_literal: true

require_relative '../strategies/sequence_numbers_strategy'

# IPC bond - inherits from SequenceNumbersStrategy with custom levels (2, nil, 3)
class IpcBond < SequenceNumbersStrategy
  def name
    'IPC'
  end

  def levels
    { bronze: 2, silver: nil, gold: 3, platinum: nil }
  end
end
