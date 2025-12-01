#!/usr/bin/env ruby
# frozen_string_literal: true

# Load all bonds
require_relative 'lib/bonds/xianzhou_bond'
require_relative 'lib/bonds/wolf_hunt_bond'
require_relative 'lib/bonds/night_demigod_bond'
require_relative 'lib/bonds/day_demigod_bond'
require_relative 'lib/bonds/belobog_bond'
require_relative 'lib/bonds/express_cohort_bond'
require_relative 'lib/bonds/cosmic_scholar_bond'
require_relative 'lib/bonds/galactic_voyager_bond'
require_relative 'lib/bonds/planet_of_festivities_bond'
require_relative 'lib/bonds/stellaron_hunters_bond'
require_relative 'lib/bonds/galaxy_rangers_bond'
require_relative 'lib/bonds/ipc_bond'

# Create all bonds
BONDS = {
  'Xianzhou' => XianzhouBond.new,
  'Wolf Hunt' => WolfHuntBond.new,
  'Night Demigod' => NightDemigodBond.new,
  'Day Demigod' => DayDemigodBond.new,
  'Belobog' => BelobogBond.new,
  'Express Cohort' => ExpressCohortBond.new,
  'Cosmic Scholar' => CosmicScholarBond.new,
  'Galactic Voyager' => GalacticVoyagerBond.new,
  'Planet of Festivities' => PlanetOfFestivitiesBond.new,
  'Stellaron Hunters' => StellaronHuntersBond.new,
  'Galaxy Rangers' => GalaxyRangersBond.new,
  'IPC' => IpcBond.new
}.freeze

# Main execution
if __FILE__ == $PROGRAM_NAME
  if ARGV.empty?
    puts 'Usage: ruby main.rb BondName,Number'
    puts 'Example: ruby main.rb Belobog,3'
  else
    input = ARGV[0]
    parts = input.split(',').map(&:strip)

    if parts.length == 2
      bond_name = parts[0]
      number = parts[1].to_i
      bond = BONDS[bond_name]

      if bond
        level = bond.level_for_number(number)
        puts level ? level.to_s : 'none'
      else
        puts 'Bond not found'
      end
    else
      puts 'Usage: ruby main.rb BondName,Number'
      puts 'Example: ruby main.rb Belobog,3'
    end
  end
end
