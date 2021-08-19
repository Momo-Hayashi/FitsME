FactoryBot.define do
  factory :category, class:Category do
    name { 'レディース /パンツ' }
  end

  factory :second_category, class:Category  do
    name { 'レディース /トップス' }
  end

  factory :child_category, class:Category do
    name { 'Tシャツ' }
  end

end
