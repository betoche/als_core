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
elSalvador = Country.create(name: "El Salvador", calling_code: "+503", continent: america, currency_symbol: "$", currency_code: "USD", currency_name: "United States dollar", area: 21041, population: 6344722)
unitedStates = Country.create(name: "United States", calling_code: "+1", continent: america, currency_symbol: "$", currency_code: "USD", currency_name: "United States dollar", area: 9833520, population: 327167434)
china = Country.create(name: "China", calling_code: "+86", continent: asia, currency_symbol: "¥", currency_code: "CNY", currency_name: "Chinese Yuan", area: 9596961, population: 1403500365)

cordoba = Currency.create(name: "Córdoba", symbol: "C$", code: "NIO", country: nicaragua)
chineseYuan = Currency.create(name: "Chinese Yuan", symbol: "¥ ", code: "CNY", country: china)
dollar = Currency.create(name: "United States dollar", symbol: "$", code: "USD", country: unitedStates)

DefaultsAls.create( currency: dollar, country: nicaragua )

ExchangeRate.create( currency: cordoba, date: "2019-11-03".to_date, rate: 34.0162)
ExchangeRate.create( currency: chineseYuan, date: "2019-11-03".to_date, rate: 7.03729)

ExchangeRate.create( currency: cordoba, date: "2019-11-04".to_date, rate: 33.9765)
ExchangeRate.create( currency: chineseYuan, date: "2019-11-04".to_date, rate: 7.03035)

nicaragua.currency = cordoba
nicaragua.save
china.currency = chineseYuan
china.save
elSalvador.currency = dollar
elSalvador.save
unitedStates.currency = dollar
unitedStates.save

dui = DocumentType.create(name: "Documento de Identidad Unico", abbreviation: "DUI", local: true, international: false)
cedula = DocumentType.create(name: "Cédula de Identidad", abbreviation: "CED", local: true, international: false)
passport = DocumentType.create(name: "Pasaporte", abbreviation: "PASS", local: true, international: true)