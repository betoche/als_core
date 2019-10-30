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
asia = Continent.create(name: "Asia", max_area: 44541138, max_countries: 49)

nicaragua = Country.create(name: "Nicaragua", calling_code: "+505", continent: america, currency_symbol: "C$", currency_code: "NIO", currency_name: "Córdoba", area: 130375, population: 6167237)
china = Country.create(name: "China", calling_code: "+86", continent: asia, currency_symbol: "¥", currency_code: "CNY", currency_name: "Chinese Yuan", area: 9596961, population: 1403500365)

cordoba = Currency.create(name: "Córdoba", symbol: "C$", code: "NIO", country: nicaragua)
chineseYuan = Currency.create(name: "Chinese Yuan", symbol: "¥ ", code: "CNY", country: china)

nicaragua.currency = cordoba
nicaragua.save
china.currency = chineseYuan
china.save