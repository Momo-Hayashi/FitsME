FactoryBot.define do
  # factory :category do
  #   name {"メンズ /トップス"}
  #
  #   factory :child_category do |f|
  #     f.parent create{ :category }
  #     f.name { 'Tシャツ' }
  #   end

  factory :category do
    name { 'トップス' }
  end

  factory :second_category, class:Category  do
    name { 'レディース /トップス' }
  end

  factory :child_category, class:Category do
    name { 'Tシャツ' }
  end

end
