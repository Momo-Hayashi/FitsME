FactoryBot.define do
  factory :category do
    name { 'トップス' }
    id { '100' }
  end

  factory :second_category, class:Category  do
    name { 'レディース /トップス' }
    id { '10' }
  end

  factory :child_category, class:Category do
    name { 'Tシャツ' }
    ancestry { '10' }
  end

end
