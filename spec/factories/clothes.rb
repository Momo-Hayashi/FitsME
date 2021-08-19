FactoryBot.define do

  factory :clothe do
    name {'【web限定Sサイズ】センタープレスセミフレアスラックス' }
    description {'美脚効果抜群のセミフレアパンツに、待望のスラックスパンツが登場‼
      普段の着こなしに取り入れるだけで一気にこなれ感がアップします。
      上品なウエストデザインと、適度にハリのあるさらりとした生地が高見えポイント◎
      また透け感のない生地を使用することで裏地を無くし、よりすっきりとしたシルエットに。
      定番に使えるブラックをはじめ、コーディネートの差し色に使いやすい旬のカラー展開にも注目です。' }
    size { 'サイズS　サイズM
          ウエスト【62cm】【65cm】
          ヒップ【94cm】【97cm】
          パンツ丈【97cm】【100cm】
          股上【31cm】【33cm】
          股下【66cm】【67cm】
          もも周り【57cm】【60cm】
          すそ周り【47cm】【50cm】' }
    price { '12000' }
    association :retailer

    after (:build) do |clothe|
      clothe.images.attach(io: File.open("./spec/images/clothes1.jpg"), filename: 'clothes1.jpg')
      clothe.images.attach(io: File.open("./spec/images/clothes_1.jpg"), filename: 'clothes_1.jpg')

      stock = create(:stock)
      clothe.stocks.build(size: stock.size, color:stock.color, quantity: stock.quantity )

      category = create(:second_category)
      clothe.categories.build(name:category.name)
    end
  end

end
