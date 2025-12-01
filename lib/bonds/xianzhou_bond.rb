# frozen_string_literal: true

require_relative '../strategies/odd_numbers_strategy'

# Xianzhou bond - inherits from OddNumbersStrategy with modified Platinum (10 instead of 9)
class XianzhouBond < OddNumbersStrategy
  def name
    'Xianzhou'
  end

  def levels
    { bronze: 3, silver: 5, gold: 7, platinum: 10 }
  end
end
