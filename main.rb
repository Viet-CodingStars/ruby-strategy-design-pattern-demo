#!/usr/bin/env ruby
# frozen_string_literal: true

# Load all bonds
require_relative 'lib/bonds/base_bond'
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
  'Xianzhou' => Bonds::XianzhouBond.new,
  'Wolf Hunt' => Bonds::WolfHuntBond.new,
  'Night Demigod' => Bonds::NightDemigodBond.new,
  'Day Demigod' => Bonds::DayDemigodBond.new,
  'Belobog' => Bonds::BelobogBond.new,
  'Express Cohort' => Bonds::ExpressCohortBond.new,
  'Cosmic Scholar' => Bonds::CosmicScholarBond.new,
  'Galactic Voyager' => Bonds::GalacticVoyagerBond.new,
  'Planet of Festivities' => Bonds::PlanetOfFestivitiesBond.new,
  'Stellaron Hunters' => Bonds::StellaronHuntersBond.new,
  'Galaxy Rangers' => Bonds::GalaxyRangersBond.new,
  'IPC' => Bonds::IpcBond.new
}.freeze

# Check the level for a bond with a given number
# @param bond_name [String] The name of the bond
# @param number [Integer] The number to check
# @return [String] The level achieved or 'none'
def check_bond_level(bond_name, number)
  bond = BONDS[bond_name]
  return 'Bond not found' unless bond

  level = bond.level_for_number(number)
  level ? level.to_s : 'none'
end

# Display all bonds in a table format
def display_bonds_table
  puts '=' * 70
  puts 'Honkai Star Rail Currency War - Bond System'
  puts 'Using Strategy Design Pattern'
  puts '=' * 70
  puts

  puts '| %-21s | %-6s | %-6s | %-4s | %-8s |' % ['Bond Name', 'Bronze', 'Silver', 'Gold', 'Platinum']
  puts '|' + '-' * 23 + '|' + '-' * 8 + '|' + '-' * 8 + '|' + '-' * 6 + '|' + '-' * 10 + '|'

  BONDS.each_value do |bond|
    bronze = bond.requirement_for(:bronze) || ''
    silver = bond.requirement_for(:silver) || ''
    gold = bond.requirement_for(:gold) || ''
    platinum = bond.requirement_for(:platinum) || ''

    puts '| %-21s | %-6s | %-6s | %-4s | %-8s |' % [bond.name, bronze, silver, gold, platinum]
  end
  puts
end

# Main execution
if __FILE__ == $PROGRAM_NAME
  if ARGV.empty?
    # Display the bonds table if no arguments provided
    display_bonds_table
  else
    # Parse input: "BondName,Number"
    input = ARGV[0]
    parts = input.split(',').map(&:strip)

    if parts.length == 2
      bond_name = parts[0]
      number = parts[1].to_i
      result = check_bond_level(bond_name, number)
      puts result
    else
      puts 'Usage: ruby main.rb BondName,Number'
      puts 'Example: ruby main.rb Belobog,3'
    end
  end
end
