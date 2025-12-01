# frozen_string_literal: true

require_relative 'base_strategy'

# Strategy for bonds that use sequence numbers (1, 2, 3 or custom sequences)
class SequenceNumbersStrategy < BaseStrategy
  def levels
    raise NotImplementedError, "#{self.class} must implement #levels"
  end
end
