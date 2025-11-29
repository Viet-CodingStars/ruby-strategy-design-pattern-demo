# frozen_string_literal: true

require_relative 'base_bond'
require_relative '../strategies/sequence_numbers_strategy'

module Bonds
  # IPC bond - uses sequence strategy with custom levels (2, nil, 3)
  class IpcBond < BaseBond
    def initialize
      super(Strategies::SequenceNumbersStrategy.new(2..3, step: 1))
    end

    def name
      'IPC'
    end

    def levels
      { bronze: 2, silver: nil, gold: 3, platinum: nil }
    end
  end
end
