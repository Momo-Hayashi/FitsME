FactoryBot.define do
  factory :review do
    association :user
    association :clothe
    stock_no { 1 }
    rate { '5.0' }
    content { 'クロップT欲しくて色んな所見たけどこれは丈感ちょうど良かった！！長すぎず短すぎず。袖もちょうどいいし、フィット感ばっちり！！！！' }

    after (:build) do |review|
      review.images.attach(io: File.open("./spec/images/clothes1.jpg"), filename: 'clothes1.jpg')
    end
  end
end
