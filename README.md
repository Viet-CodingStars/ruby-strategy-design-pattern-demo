# ruby-strategy-design-pattern-demo

Ruby Strategy Design Pattern demo in the case of Honkai Star Rail Currency War.

## Overview

This project demonstrates the Strategy Design Pattern using Ruby. The pattern is applied to a bond selection system for the Honkai Star Rail Currency War game.

## Strategy Design Pattern

The Strategy pattern defines a family of algorithms, encapsulates each one, and makes them interchangeable. The pattern lets the algorithm vary independently from clients that use it.

### Components

1. **Base Strategy** (`Strategies::BaseStrategy`) - The abstract base class that defines the interface for all strategies
2. **Odd Numbers Strategy** (`Strategies::OddNumbersStrategy`) - Selects all odd numbers from a given range
3. **Even Numbers Strategy** (`Strategies::EvenNumbersStrategy`) - Selects all even numbers from a given range
4. **Sequence Numbers Strategy** (`Strategies::SequenceNumbersStrategy`) - Selects numbers in sequence with a configurable step from a given range
5. **BondGame** - The context class that uses strategies to select bond numbers

## Usage

```ruby
require_relative 'lib/bond_game'

# Create a game instance
game = BondGame.new

# Define a range of bond numbers
bond_range = 1..36

# Use the Odd Numbers Strategy
game.strategy = Strategies::OddNumbersStrategy.new(bond_range)
puts game.select_bonds  # => [1, 3, 5, 7, 9, 11, 13, 15, 17, 19, 21, 23, 25, 27, 29, 31, 33, 35]

# Use the Even Numbers Strategy
game.strategy = Strategies::EvenNumbersStrategy.new(bond_range)
puts game.select_bonds  # => [2, 4, 6, 8, 10, 12, 14, 16, 18, 20, 22, 24, 26, 28, 30, 32, 34, 36]

# Use the Sequence Numbers Strategy with step of 3
game.strategy = Strategies::SequenceNumbersStrategy.new(bond_range, step: 3)
puts game.select_bonds  # => [1, 4, 7, 10, 13, 16, 19, 22, 25, 28, 31, 34]
```

## Running the Demo

```bash
ruby main.rb
```

## Running Tests

```bash
rspec spec/
```

## Project Structure

```
├── lib/
│   ├── bond_game.rb                         # Context class
│   └── strategies/
│       ├── base_strategy.rb                 # Abstract base strategy
│       ├── odd_numbers_strategy.rb          # Odd numbers strategy
│       ├── even_numbers_strategy.rb         # Even numbers strategy
│       └── sequence_numbers_strategy.rb     # Sequence numbers strategy
├── spec/
│   ├── spec_helper.rb
│   ├── base_strategy_spec.rb
│   ├── odd_numbers_strategy_spec.rb
│   ├── even_numbers_strategy_spec.rb
│   ├── sequence_numbers_strategy_spec.rb
│   └── bond_game_spec.rb
├── main.rb                                  # Demo application
├── Gemfile
└── README.md
```
