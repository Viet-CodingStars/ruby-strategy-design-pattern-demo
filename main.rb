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

puts '=' * 70
puts 'Honkai Star Rail Currency War - Bond System Demo'
puts 'Using Strategy Design Pattern'
puts '=' * 70
puts

# Create all bonds
bonds = [
  Bonds::XianzhouBond.new,
  Bonds::WolfHuntBond.new,
  Bonds::NightDemigodBond.new,
  Bonds::DayDemigodBond.new,
  Bonds::BelobogBond.new,
  Bonds::ExpressCohortBond.new,
  Bonds::CosmicScholarBond.new,
  Bonds::GalacticVoyagerBond.new,
  Bonds::PlanetOfFestivitiesBond.new,
  Bonds::StellaronHuntersBond.new,
  Bonds::GalaxyRangersBond.new,
  Bonds::IpcBond.new
]

# Display all bonds in a table format
puts '| %-21s | %-6s | %-6s | %-4s | %-8s |' % ['Bond Name', 'Bronze', 'Silver', 'Gold', 'Platinum']
puts '|' + '-' * 23 + '|' + '-' * 8 + '|' + '-' * 8 + '|' + '-' * 6 + '|' + '-' * 10 + '|'

bonds.each do |bond|
  bronze = bond.requirement_for(:bronze) || ''
  silver = bond.requirement_for(:silver) || ''
  gold = bond.requirement_for(:gold) || ''
  platinum = bond.requirement_for(:platinum) || ''

  puts '| %-21s | %-6s | %-6s | %-4s | %-8s |' % [bond.name, bronze, silver, gold, platinum]
end

puts
puts '=' * 70
puts 'Bond Details (Strategy Information)'
puts '=' * 70
puts

# Display detailed information for each bond
bonds.each do |bond|
  puts '-' * 70
  bond.display_info
end

puts '=' * 70
puts 'Demo completed!'
puts '=' * 70
