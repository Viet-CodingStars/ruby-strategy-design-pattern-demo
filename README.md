# ruby-strategy-design-pattern-demo

Ruby Strategy Design Pattern demo in the case of Honkai Star Rail Currency War.

## Overview

This project demonstrates an inheritance-based design pattern using Ruby. The pattern is applied to a bond system for the Honkai Star Rail Currency War game.

## Architecture

- **BaseStrategy**: Abstract base class containing common bond functionality (level checking, requirements)
- **Strategy Classes**: OddNumbersStrategy, EvenNumbersStrategy, SequenceNumbersStrategy inherit from BaseStrategy
- **Bond Classes**: Each bond inherits directly from its corresponding strategy class (e.g., `BelobogBond < EvenNumbersStrategy < BaseStrategy`)

### Bonds

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

Check bond level with a given number:

```bash
ruby main.rb BondName,Number
```

Examples:
- `ruby main.rb Belobog,3` → `bronze`
- `ruby main.rb Belobog,1` → `none`
- `ruby main.rb Belobog,6` → `gold`

## Project Structure

```
├── lib/
│   ├── strategies/
│   │   ├── base_strategy.rb                 # Abstract base class
│   │   ├── odd_numbers_strategy.rb          # Odd numbers strategy (3,5,7,9)
│   │   ├── even_numbers_strategy.rb         # Even numbers strategy (2,4,6)
│   │   └── sequence_numbers_strategy.rb     # Sequence numbers strategy
│   └── bonds/
│       ├── xianzhou_bond.rb                 # Xianzhou bond (Odd, modified)
│       ├── wolf_hunt_bond.rb                # Wolf Hunt bond (Odd)
│       ├── night_demigod_bond.rb            # Night Demigod bond (Odd)
│       ├── day_demigod_bond.rb              # Day Demigod bond (Odd)
│       ├── belobog_bond.rb                  # Belobog bond (Even)
│       ├── express_cohort_bond.rb           # Express Cohort bond (Even)
│       ├── cosmic_scholar_bond.rb           # Cosmic Scholar bond (Even)
│       ├── galactic_voyager_bond.rb         # Galactic Voyager bond (Sequence)
│       ├── planet_of_festivities_bond.rb    # Planet of Festivities bond (Even)
│       ├── stellaron_hunters_bond.rb        # Stellaron Hunters bond (Sequence)
│       ├── galaxy_rangers_bond.rb           # Galaxy Rangers bond (Sequence)
│       └── ipc_bond.rb                      # IPC bond (Sequence)
├── main.rb                                  # Main application
└── README.md
```
