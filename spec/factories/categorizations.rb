FactoryBot.define do
  factory :categorization do
    clothe_id { 1 }
    category_id { 2 }
    association :clothe
    association :category
  end
end
