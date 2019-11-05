FactoryBot.define do
  factory :document_type_by_country do
    country { nil }
    document_type { nil }
    name { "MyString" }
    abbreviation { "MyString" }
    local { false }
    international { false }
    number_length { 1 }
  end
end
