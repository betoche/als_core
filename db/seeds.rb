# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'database_cleaner'

DatabaseCleaner.clean_with(:truncation)

america = Continent.create(name: "America", max_area: 43316000, max_countries: 35)
Country.create(name: "Nicaragua", calling_code: "+505", continent: america, currency_symbol: "C$", currency_code: "NIO", currency_name: "Córdoba")