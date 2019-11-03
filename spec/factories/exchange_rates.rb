FactoryBot.define do
  factory :exchange_rate do
    currency { nil }
    date { "2019-11-03" }
    rate { "9.99" }
  end
end
