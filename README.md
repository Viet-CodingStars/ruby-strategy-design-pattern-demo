# ruby-strategy-design-pattern-demo

Ruby Strategy Design Pattern demo in the case of Honkai Star Rail Currency War.

## Overview

This project demonstrates the Strategy Design Pattern using Ruby. The pattern is applied to a bond system for the Honkai Star Rail Currency War game.

## Strategy Design Pattern

The Strategy pattern defines a family of algorithms, encapsulates each one, and makes them interchangeable. The pattern lets the algorithm vary independently from clients that use it.

### Strategies

1. **Base Strategy** (`Strategies::BaseStrategy`) - The abstract base class that defines the interface for all strategies
2. **Odd Numbers Strategy** (`Strategies::OddNumbersStrategy`) - Selects all odd numbers from a given range
3. **Even Numbers Strategy** (`Strategies::EvenNumbersStrategy`) - Selects all even numbers from a given range
4. **Sequence Numbers Strategy** (`Strategies::SequenceNumbersStrategy`) - Selects numbers in sequence with a configurable step from a given range

### Bonds

Bonds inherit from the three strategies and define specific level requirements:

| Bond Name             | Bronze | Silver | Gold | Platinum | Strategy         |
|-----------------------|--------|--------|------|----------|------------------|
| Xianzhou              | 3      | 5      | 7    | 10       | Odd (modified)   |
| Wolf Hunt             | 3      | 5      | 7    | 9        | Odd              |
| Night Demigod         | 3      | 5      | 7    | 9        | Odd              |
| Day Demigod           | 3      | 5      | 7    | 9        | Odd              |
| Belobog               | 2      | 4      | 6    |          | Even             |
| Express Cohort        | 2      | 4      | 6    |          | Even             |
| Cosmic Scholar        | 2      | 4      | 6    |          | Even             |
| Galactic Voyager      | 1      | 3      | 5    | 7        | Sequence         |
| Planet of Festivities | 2      | 4      | 6    |          | Even             |
| Stellaron Hunters     | 2      | 3      | 4    |          | Sequence         |
| Galaxy Rangers        | 1      | 2      | 3    |          | Sequence         |
| IPC                   | 2      |        | 3    |          | Sequence         |

## Usage

```ruby
require_relative 'lib/bonds/xianzhou_bond'

# Create a bond
bond = Bonds::XianzhouBond.new

# Get level requirements
bond.requirement_for(:bronze)    # => 3
bond.requirement_for(:platinum)  # => 10

# Check available levels
bond.available_levels  # => [:bronze, :silver, :gold, :platinum]

# Get strategy info
bond.strategy.name  # => "Odd Numbers Strategy"
```

## Running the Demo

```bash
ruby main.rb
```

## Project Structure

```
├── lib/
│   ├── strategies/
│   │   ├── base_strategy.rb                 # Abstract base strategy
│   │   ├── odd_numbers_strategy.rb          # Odd numbers strategy
│   │   ├── even_numbers_strategy.rb         # Even numbers strategy
│   │   └── sequence_numbers_strategy.rb     # Sequence numbers strategy
│   └── bonds/
│       ├── base_bond.rb                     # Abstract base bond
│       ├── xianzhou_bond.rb                 # Xianzhou bond
│       ├── wolf_hunt_bond.rb                # Wolf Hunt bond
│       ├── night_demigod_bond.rb            # Night Demigod bond
│       ├── day_demigod_bond.rb              # Day Demigod bond
│       ├── belobog_bond.rb                  # Belobog bond
│       ├── express_cohort_bond.rb           # Express Cohort bond
│       ├── cosmic_scholar_bond.rb           # Cosmic Scholar bond
│       ├── galactic_voyager_bond.rb         # Galactic Voyager bond
│       ├── planet_of_festivities_bond.rb    # Planet of Festivities bond
│       ├── stellaron_hunters_bond.rb        # Stellaron Hunters bond
│       ├── galaxy_rangers_bond.rb           # Galaxy Rangers bond
│       └── ipc_bond.rb                      # IPC bond
├── main.rb                                  # Demo application
└── README.md
```
