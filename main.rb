#!/usr/bin/env ruby
# frozen_string_literal: true

require_relative 'lib/bond_game'

puts '=' * 60
puts 'Honkai Star Rail Currency War - Bond Selection Demo'
puts 'Using Strategy Design Pattern'
puts '=' * 60
puts

# Create a game instance
game = BondGame.new

# Define the bond range (1-36 is common for Currency War)
bond_range = 1..36

# Demonstrate Odd Numbers Strategy
puts '-' * 60
puts 'Strategy 1: Odd Numbers'
puts '-' * 60
game.strategy = Strategies::OddNumbersStrategy.new(bond_range)
game.display_bonds

# Demonstrate Even Numbers Strategy
puts '-' * 60
puts 'Strategy 2: Even Numbers'
puts '-' * 60
game.strategy = Strategies::EvenNumbersStrategy.new(bond_range)
game.display_bonds

# Demonstrate Sequence Numbers Strategy (every number)
puts '-' * 60
puts 'Strategy 3: Sequence Numbers (step: 1)'
puts '-' * 60
game.strategy = Strategies::SequenceNumbersStrategy.new(bond_range, step: 1)
game.display_bonds

# Demonstrate Sequence Numbers Strategy with step of 3
puts '-' * 60
puts 'Strategy 4: Sequence Numbers (step: 3)'
puts '-' * 60
game.strategy = Strategies::SequenceNumbersStrategy.new(bond_range, step: 3)
game.display_bonds

# Demonstrate Sequence Numbers Strategy with step of 5
puts '-' * 60
puts 'Strategy 5: Sequence Numbers (step: 5)'
puts '-' * 60
game.strategy = Strategies::SequenceNumbersStrategy.new(bond_range, step: 5)
game.display_bonds

# Demonstrate with a different range
puts '-' * 60
puts 'Strategy 6: Odd Numbers (Range: 10-20)'
puts '-' * 60
custom_range = 10..20
game.strategy = Strategies::OddNumbersStrategy.new(custom_range)
game.display_bonds

puts '=' * 60
puts 'Demo completed!'
puts '=' * 60
