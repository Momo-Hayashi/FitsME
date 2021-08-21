user1 = User.create!(username: "Emily", email: "emily@mail.com", password: "emily@mail.com", birthday: '1995-10-15', points: 700, height: 160.8, weight: 50.3, waist: 60.3, bust: 77.7, hip: 90.5)
user2 = User.create!(username: "Rose", email: "rose@mail.com", password: "rose@mail.com", birthday: '1992-10-15', points: 700, height: 170.8, weight: 50.8, waist: 60.3, bust: 82.7, hip: 90.5)
user3 = User.create!(username: "Emilia", email: "emilia@mail.com", password: "emilia@mail.com", birthday: '1998-10-15', points: 58, height: 153.8, weight: 45.3, waist: 70.3, bust: 82.7, hip: 96.5)
user4 = User.create!(username: "Mike", email: "mike@mail.com", password: "mike@mail.com", birthday: '1990-10-15', points: 23, height: 180.8, weight: 71.3)
user5 = User.create!(username: "Olivia", email: "olivia@mail.com", password: "olivia@mail.com", birthday: '2000-10-15', points: 500, height: 180.8, weight: 52.8, waist: 60.3, bust: 77.7, hip: 90.5)


address1 = Address.create!(user_id: user1.id, first_name: 'Emily', last_name: 'Cooper', postcode: '1540001', prefecture_code: 13, address_city: '世田谷区', address_street: '池尻1-2-3',phone_number: '1111111111')
address2 = Address.create!(user_id: user1.id, first_name: 'Emily', last_name: 'Cooper', postcode: '6780064', prefecture_code: 04, address_city: '相生市', address_street: '青葉台1-2-3', address_building: 'ビル101', phone_number: '22222222222')
address3 = Address.create!(user_id: user2.id, first_name: 'Rose', last_name: 'Mason', postcode: '2480026', prefecture_code: 14, address_city: '鎌倉市', address_street: '七里ヶ浜1-2-3', address_building: 'ビル101', phone_number: '3333333333')
address4 = Address.create!(user_id: user3.id, first_name: 'Emilia', last_name: 'Packer', postcode: '2480026', prefecture_code: 14, address_city: '鎌倉市', address_street: '七里ヶ浜1-2-3', address_building: 'ビル101', phone_number: '4444444444')
address5 = Address.create!(user_id: user4.id, first_name: 'Olivia', last_name: 'Grealish', postcode: '3999300', prefecture_code: 20, address_city: '北安曇郡', address_street: '白馬村1-2-3', address_building: 'ビル101', phone_number: '5555555555')


retailer1 = Retailer.create!(
  name: 'afendssss',
  description: '７０年代オーストラリアのヒッピーカルチャーの聖地として有名なバイロンベイにて、その第二世代として生まれ育ったDeclan Wise（デクラン・ワイズ）、Jono Salfield（ジョノ・サーフィールド）を中心に２００６年に設立されたオルタネートファッション＆ライフスタイルブランド。Punk-Rock をルーツとしたバイロンベイのモダンデイカルチャーとフリーリビングアティテュードをテーマに、自宅のバックヤードにてハンドスクリーンプリンティングを施したオリジナルアートTシャツの販売からスタートした後、またたくまにオーストラリアで成功をおさめ、現在世界１５カ国に広がるブランドへと成長。
  Question Everything（全てのことに疑問を持つこと）を信条とし、そのあくなき探究心と創造性により、アート、ミュージック、サーフ、ストリートと共にある彼らの日常のライフスタイルをテキスタイルに落とし込み、Afends way of lifeとしてバイロンベイより提案している。',
  website_url: 'https://afends.com/',
  phone_number: '1234567890',
  address: '東京都渋谷区1-2-3',
  email: 'afends@test.jp',
  password: 'afends@test.jp')

retailer2 = Retailer.create!(
  name: 'Ted Bakerrrr',
  description: 'Ted Baker Londonの始まりは、イギリスのグラスゴーの小さなシャツ専門店。現在はグローバルライフスタイルブランドとして世界中に500以上の店舗を展開。「No Ordinary Designer Label」として、Ted Bakerのデザインはブリティッシュユーモアを取り入れたクオリティの高いデザインが魅力的なブランドです。',
  website_url: 'https://tedbaker.jp/',
  phone_number: '1234567890',
  address: '東京都渋谷区1-2-3',
  email: 'tedbaker@test.jp',
  password: 'tedbaker@test.jp')

retailer3 = Retailer.create!(
  name: 'Stella McCartneyyyy',
  description: 'スポーツとファッションのどちらも犠牲にできない欲張りな女性のために、adidasのスポーツテクノロジーとステラ・マッカートニーのデザインが融合し、最高のスポーツパフォーマンスと美しさを引き出すハイエンドスポーツウエア　adidas by Stella McCartney',
  website_url: 'https://www.stellamccartney.com/jp/ja/',
  phone_number: '1234567890',
  address: '東京都渋谷区1-2-3',
  email: 'stella@test.jp',
  password: 'stella@test.jp')

retailer4 = Retailer.create!(
  name: 'Maison Kitsuneeee',
  description: '2002年にGildas Loaëc （ジルダ・ロアエック）とMasaya Kuroki （黒木理也）のふたりにより設立。
  ファッションブランドの「Maison Kitsuné（メゾン キツネ）」、ミュージックレーベルの「Kitsuné Musique（キツネ ミュージック）」、カフェの「Café Kitsuné（カフェ キツネ）」を通じ、インスピレーションあふれるユニークなアール・ド・ヴィーヴル
  （フランス語で「暮らしの芸術」の意）を発信しています。ブランド設立から19年間、パリと東京を拠点とする多面的なブランドは一貫して成長し続け、グローバルなインフルーエンスパワーを自然と高めていき、世界中に熱心なファンを増やしています。',
  website_url: 'https://maisonkitsune.com/jp/',
  phone_number: '1234567890',
  address: '東京都渋谷区1-2-3',
  email: 'maisonkitune@test.jp',
  password: 'maisonkitune@test.jp')

retailer5 = Retailer.create!(
  name: 'Joueteeee',
  description: 'スペシャルなシチュエーションだけでなく、いつもお洒落を楽しみたい。流行とともに歳を重ねてきたファッションに敏感な大人の女性に向けてそれぞれの個性をより輝かせるジュエリーを発信します。',
  website_url: 'https://www.jouete.com/',
  phone_number: '1234567890',
  address: '東京都渋谷区1-2-3',
  email: 'jouete@test.jp',
  password: 'jouete@test.jp')
#
#
retailer1.logo.attach(io: File.open("./db/images/afends.png"), filename: "afends.png")
retailer2.logo.attach(io: File.open("./db/images/TedBaker.png"), filename: "TedBaker.png")
retailer3.logo.attach(io: File.open("./db/images/stellamccartney.jpeg"), filename: "stellamccartney.jpeg")
retailer4.logo.attach(io: File.open("./db/images/maisonkitune.jpeg"), filename: "maisonkitune.jpeg")
retailer5.logo.attach(io: File.open("./db/images/jouete.jpeg"), filename: "jouete.jpeg")

clothe1 = Clothe.create!(
  retailer_id: retailer1.id,
  name: '【web限定Sサイズ】センタープレスセミフレアスラックス',
  description: '美脚効果抜群のセミフレアパンツに、待望のスラックスパンツが登場‼
                普段の着こなしに取り入れるだけで一気にこなれ感がアップします。
                上品なウエストデザインと、適度にハリのあるさらりとした生地が高見えポイント◎
                また透け感のない生地を使用することで裏地を無くし、よりすっきりとしたシルエットに。
                定番に使えるブラックをはじめ、コーディネートの差し色に使いやすい旬のカラー展開にも注目です。',
  size:'サイズS　サイズM
        ウエスト【62cm】【65cm】
        ヒップ【94cm】【97cm】
        パンツ丈【97cm】【100cm】
        股上【31cm】【33cm】
        股下【66cm】【67cm】
        もも周り【57cm】【60cm】
        すそ周り【47cm】【50cm】',
  price: 12000
)
clothe1.images.attach(io: File.open( "./db/images/clothes1.jpg"), filename: "clothes1.jpg" )
clothe1.images.attach(io: File.open("./db/images/clothes_1.jpg"), filename: "clothes_1.jpg" )

clothe2 = Clothe.create!(
  retailer_id: retailer1.id,
  name: 'Yellow Jacket',
  description: '金ボタンでクラシックに。カーディガン感覚で着こなせるノーカラージャケット
                ---
                Design/Styling
                カーディガン感覚でかっちりし過ぎず気軽に着られるノーカラージャケット。
                後ろにダーツを入れたコクーンシルエットと、袖にも立体感を出した構築的なデザインが特徴。
                よこはぎを入れて、スラッシュポケットにすることでスッキリした印象に。
                やりすぎないオーバーサイズなのでブルゾン感覚で
                アウターとしてもカーデ感覚でも着られて、程よいきちんと感が叶います。',
  size:'サイズ 身幅 肩幅 着丈 そで丈
        S :    47   38  60    52
        M, L： 51   42   68   59',
  price: 15500)

clothe3 = Clothe.create!(
  retailer_id: retailer2.id,
  name: '【SET UP対応】長袖ショート丈テーラードジャケット',
  description: '大人気のジャケットに長袖が登場！！
    【デザイン】
    短丈デザインなので小柄な方もスッキリと着こなす事ができ、
    身幅にゆとりがある仕様なのでコンパクトすぎずにご着用頂けます。

    長袖なので初秋から秋本番はもちろん、
    冬アウターが必要になるまでの 長い期間ご活用いただけます。

    柔らかい素材でかっちりとしすぎず、ジャケットでありながら
    シャツのようにお召し頂けます。

    【コーディネート】
    同色で同素材のミニスカート、ショートパンツ、ロングパンツがあるので
    セットアップ風に着こなしていただくのがおすすめです。

    中はキャミやタンクを合わせると華奢で女性らしい着こなしに
    カジュアルスタイルがお好みの方はフロントにロゴがあるTシャツなどと
    合わせていただくのもおすすめです。

    ショート丈なので、ロングスカートやロングパンツとも
    バランスよく合わせていただけます◎',
  size:'サイズ 身幅 肩幅 着丈 そで丈
        S :    47   38  60    52
        M, L： 51   42   68   59',
  price: 15000)

clothe4 = Clothe.create!(
  retailer_id: retailer3.id,
  name: 'ハイウエストストレッチデニムセミワイドパンツ',
  description: 'スタイルアップ間違いなし!トレンドスタイルが完成するデニムパンツ♪
                ●美脚効果をプラスしてくれるトレンドのセミワイドデニムが登場●
                シンプルだからこそシルエットにこだわった大人のデニム。
                コットンメインの素材で、柔らかいしなやかな肌触りが特徴的！
                ハイストレッチで伸びがよく柔らかな生地を使用しているため、はき心地も抜群です。',
  size:'サイズ	ウエスト	ヒップ	パンツ丈	股上	股下
        S（S）	64	92	99	31	71.5
        M（M）	68	96	100	31.5	72
        L（L）	72	100	101	32	72.5',
  price: 10000)

clothe5 = Clothe.create!(
  retailer_id: retailer4.id,
  name: 'ウォームアップカレッジTEE',
  description: '・WWG定番のビッグシルエット。身幅が広い為、風通りも良く、快適な着心地。
                ・カラーによって、ボディーに馴染んだり映えたりする刺繍ロゴ。肉厚なので、一枚着でもしっかりとした見栄えに。
                ・お揃いで着るのもオススメ！ギフトにもピッタリな、ユニセックスで愛用できるアイテム。',
  size:'サイズ 身幅 肩幅 着丈 そで丈
        S :    47   38  60    52
        M, L： 51   42   68   59',
  price: 5000)



clothe2.images.attach(io: File.open( "./db/images/clothes2.jpg"), filename: "clothes2.jpg" )
clothe2.images.attach(io: File.open("./db/images/clothes_2.jpg"), filename: "clothes_2.jpg" )
clothe3.images.attach(io: File.open( "./db/images/clothes3.jpg"), filename: "clothes3.jpg" )
clothe3.images.attach(io: File.open("./db/images/clothes_3.jpg"), filename: "clothes_3.jpg" )
clothe4.images.attach(io: File.open( "./db/images/clothes4.jpg"), filename: "clothes4.jpg" )
clothe4.images.attach(io: File.open("./db/images/clothes_4.jpg"), filename: "clothes_4.jpg" )
clothe5.images.attach(io: File.open( "./db/images/clothes5.jpg"), filename: "clothes5.jpg" )
clothe5.images.attach(io: File.open("./db/images/clothes_5.jpg"), filename: "clothes_5.jpg" )


stock1 = Stock.create!(clothe_id: clothe1.id, size: 2, color: 8, quantity: 50)
stock2 = Stock.create!(clothe_id: clothe1.id, size: 3, color: 8, quantity: 50)
stock3 = Stock.create!(clothe_id: clothe1.id, size: 4, color: 8, quantity: 50)
stock4 = Stock.create!(clothe_id: clothe2.id, size: 2, color: 6, quantity: 10)
stock5 = Stock.create!(clothe_id: clothe2.id, size: 3, color: 6, quantity: 50)
stock6 = Stock.create!(clothe_id: clothe2.id, size: 2, color: 1, quantity: 50)
stock7 = Stock.create!(clothe_id: clothe2.id, size: 3, color: 1, quantity: 50)
stock8 = Stock.create!(clothe_id: clothe3.id, size: 2, color: 0, quantity: 50)
stock9 = Stock.create!(clothe_id: clothe3.id, size: 3, color: 0, quantity: 50)
stock10 = Stock.create!(clothe_id: clothe3.id, size: 4, color: 0, quantity: 50)
stock11 = Stock.create!(clothe_id: clothe4.id, size: 3, color: 16, quantity: 50)
stock12 = Stock.create!(clothe_id: clothe4.id, size: 4, color: 16, quantity: 50)
stock13 = Stock.create!(clothe_id: clothe5.id, size: 0, color: 2, quantity: 50)


Cart.create!([
  { user_id: user1.id, stock_id: stock3.id },
  { user_id: user1.id, stock_id: stock5.id },
  { user_id: user2.id, stock_id: stock1.id },
  { user_id: user3.id, stock_id: stock2.id },
  { user_id: user4.id, stock_id: stock4.id }
])


order1 = Order.create!(user_id: user1.id, price: 10000, used_points: 300, paid_price: 9700, first_name: 'Emily', last_name: 'Cooper', postcode: '1540001', prefecture_code: 13, address_city: '世田谷区', address_street: '池尻1-2-3',phone_number: '1111111111')
order2 = Order.create!(user_id: user1.id, price: 15000, used_points: 600, paid_price: 14400, first_name: 'Emily', last_name: 'Cooper', postcode: '1540001', prefecture_code: 13, address_city: '世田谷区', address_street: '池尻1-2-3',phone_number: '1111111111')
order3 = Order.create!(user_id: user2.id, price: 15500, used_points: 500, paid_price: 15000, first_name: 'Rose', last_name: 'Mason', postcode: '2480026', prefecture_code: 14, address_city: '鎌倉市', address_street: '七里ヶ浜1-2-3', address_building: 'ビル101', phone_number: '3333333333')
order4 = Order.create!(user_id: user3.id, price: 12000, used_points: 500, paid_price: 11500, first_name: 'Emilia', last_name: 'Packer', postcode: '2480026', prefecture_code: 14, address_city: '鎌倉市', address_street: '七里ヶ浜1-2-3', address_building: 'ビル101', phone_number: '4444444444')
order5 = Order.create!(user_id: user5.id, price: 5000, used_points: 0, paid_price: 5000, first_name: 'Olivia', last_name: 'Grealish', postcode: '3999300', prefecture_code: 20, address_city: '北安曇郡', address_street: '白馬村1-2-3', address_building: 'ビル101', phone_number: '5555555555')


OrderStock.create!([
  { order_id: order1.id, stock_id: stock13.id },
  { order_id: order2.id, stock_id: stock4.id },
  { order_id: order3.id, stock_id: stock8.id },
  { order_id: order4.id, stock_id: stock8.id },
  { order_id: order5.id, stock_id: stock2.id },
  { order_id: order1.id, stock_id: stock3.id },
  { order_id: order3.id, stock_id: stock5.id }
])

review1 = Review.create!(
  user_id: user1.id,
  clothe_id: clothe5.id,
  stock_no: stock13.id,
  rate: 5.0,
  content: 'クロップT欲しくて色んな所見たけどこれは丈感ちょうど良かった！！長すぎず短すぎず。袖もちょうどいいし、フィット感ばっちり！！！！'
)

review2 = Review.create!(
 user_id: user1.id,
  clothe_id: clothe2.id,
  stock_no: stock4.id,
  rate: 5.0,
  content: 'とりま可愛すぎる！一枚あれば大活躍！！！！素材がしっかりしてるので、結構寒くなっても着れそう！！'
)

review3 = Review.create!(
  user_id: user2.id,
  clothe_id: clothe2.id,
  stock_no: stock5.id,
  rate: 4.5,
  content: '紐が長すぎる！爆笑爆笑爆笑 でもめちゃくちゃデザインは可愛いしいいと思う！162センチの私がMサイズを着てみて、丈がすごく短く感じました！'
)

review4 = Review.create!(
  user_id: user3.id,
  clothe_id: clothe3.id,
  stock_no: stock8.id,
  rate: 5.0,
  content: '少し大きめなのかな？と思ったけど肩幅も着丈もピッタリ！！これは可愛い！！低身長さんにもオススメです！'

)

review5 = Review.create!(
  user_id: user5.id,
  clothe_id: clothe1.id,
  stock_no: stock2.id,
  rate: 5.0,
  content: '骨格ウェーブです。今までウエストに合わせて買うと丈足りないとかザラでほぼ諦めてたけどこれウエストぴったりだしへそまで隠れるぐらいだから脚長効果抜群。フレアすぎて逆に短足に見える人だったけど写真より全然フレアじゃないから是非買って欲しい。ウエストはサイズ表より小さめかも。ベルト無しでも全然履ける！うれしい！骨格ウェーブ皆これ着て脚長くなろうな( ◠‿◠ )'
)

review1.images.attach(io: File.open( "./db/images/review1.jpg"), filename: "review1.jpg" )
review1.images.attach(io: File.open( "./db/images/review_1.jpg"), filename: "review_1.jpg" )
review2.images.attach(io: File.open( "./db/images/review2.jpg"), filename: "review2.jpg" )
review3.images.attach(io: File.open( "./db/images/review3.jpg"), filename: "review3.jpg" )
review4.images.attach(io: File.open( "./db/images/review4.jpg"), filename: "review4.jpg" )
review4.images.attach(io: File.open( "./db/images/review_4.jpg"), filename: "review_4.jpg" )
review5.images.attach(io: File.open( "./db/images/review5.jpg"), filename: "review5.jpg" )


Favorite.create!([
  { user_id: user1.id, clothe_id: clothe2.id },
  { user_id: user1.id, clothe_id: clothe3.id },
  { user_id: user1.id, clothe_id: clothe4.id },
  { user_id: user2.id, clothe_id: clothe4.id },
  { user_id: user3.id, clothe_id: clothe5.id },
  { user_id: user4.id, clothe_id: clothe3.id },
  { user_id: user5.id, clothe_id: clothe5.id },
  { user_id: user3.id, clothe_id: clothe4.id },
  { user_id: user4.id, clothe_id: clothe4.id },
  { user_id: user5.id, clothe_id: clothe4.id }
])

women_1 = Category.create(name: "レディース /トップス")
women_2 = Category.create(name: "レディース /パンツ")
women_3 = Category.create(name: "レディース /スカート")
women_4 = Category.create(name: "レディース /ワンピース")
women_5 = Category.create(name: "レディース /ジャケット")
women_6 = Category.create(name: "レディース /コート")
women_7 = Category.create(name: "レディース /靴")
women_8 = Category.create(name: "レディース /アクセサリー")
women_9 = Category.create(name: "レディース /バッグ")
women_10 = Category.create(name: "レディース /その他")


men_1 = Category.create(name: "メンズ /トップス")
men_2 = Category.create(name: "メンズ /パンツ")
men_3 = Category.create(name: "メンズ /ジャケット")
men_4 = Category.create(name: "メンズ /コート")
men_5 = Category.create(name: "メンズ /スポーツウェア")
men_6 = Category.create(name: "メンズ /靴")
men_7 = Category.create(name: "メンズ /バッグ")
men_8 = Category.create(name: "メンズ /アクセサリー")
men_9 = Category.create(name: "メンズ /その他")
unisex_1 = Category.create(name: "ユニセックス /帽子")

women_1.children.create([{name: "Tシャツ"},{name: "クロップドTシャツ"},{name: "カットソー"},{name: "シャツ/ブラウス"},{name: "ポロシャツ"},{name: "キャミソール"},{name: "タンクトップ"},{name: "ベアトップ/チューブトップ"},{name: "トレーナー/スウェット"},{name: "パーカー"},{name: "ニット/セーター"},{name: "ホルターネック"},{name: "カーディガン/ボレロ"},{name: "アンサンブル"},{name: "チュニック"},{name: "ベスト/ジレ"},{name: "その他"}])
women_2.children.create([{name: "デニム/ジーンズ"},{name: "ショートパンツ"},{name: "カジュアルパンツ"},{name: "ハーフパンツ"},{name: "チノパン"},{name: "ワークパンツ/カーゴパンツ"},{name: "クロップドパンツ"},{name: "サロペット/オーバーオール"},{name: "オールインワン"},{name: "サルエルパンツ"},{name: "ガウチョパンツ"},{name: "その他"}])
women_3.children.create([{name: "ショート丈スカート"},{name: "ひざ丈スカート"},{name: "ロングスカート"},{name: "キュロット"},{name: "その他"}])
women_4.children.create([{name: "ショート丈ワンピース"},{name: "ひざ丈ワンピース"},{name: "ロングワンピース"},{name: "パーティ用ドレス"},{name: "柄ドレス"},{name: "その他"}])
women_5.children.create([{name: "テーラードジャケット"},{name: "ノーカラージャケット"},{name: "デニムジャケット"},{name: "レザージャケット"},{name: "MA-1"},{name: "ライダースジャケット"},{name: "ミリタリージャケット"},{name: "ダウンベスト"},{name: "ジャンパー/ブルゾン"},{name: "スカジャン"},{name: "その他"}])
women_6.children.create([{name: "ダウンジャケット"},{name: "ロングコート"},{name: "トレンチコート"},{name: "ダッフルコート"},{name: "ピーコート"},{name: "チェスターコート"},{name: "モッズコート"},{name: "毛皮/ファーコート"},{name: "スプリングコート"},{name: "その他"}])
women_7.children.create([{name: "ハイヒール/パンプス"},{name: "ブーツ"},{name: "サンダル"},{name: "スニーカー"},{name: "ミュール"},{name: "モカシン"},{name: "ローファー/革靴"},{name: "フラットシューズ/バレエシューズ"},{name: "長靴/レインシューズ"},{name: "その他"}])
women_8.children.create([{name: "ネックレス"},{name: "ブレスレット"},{name: "バングル/リストバンド"},{name: "リング"},{name: "ピアス"},{name: "イヤリング"},{name: "アンクレット"},{name: "ブローチ/コサージュ"},{name: "チャーム"},{name: "その他"}])
women_9.children.create([{name: "ハンドバッグ"},{name: "レザーバッグ"},{name: "トートバッグ"},{name: "エコバッグ"},{name: "リュック/バックパック"},{name: "スポーツバッグ"},{name: "ショルダーバッグ"},{name: "クラッチバッグ"},{name: "ポーチ/バニティ"},{name: "ボディバッグ/ウェストバッグ"},{name: "マザーズバッグ"},{name: "ビジネスバッグ"},{name: "かごバッグ"},{name: "その他"}])
women_10.children.create([{name: "水着セパレート"},{name: "水着ワンピース"},{name: "水着スポーツ用"},{name: "ビキニ"},{name: "ルームウェア"},{name: "浴衣"},{name: "その他"}])

men_1.children.create([{name: "Tシャツ"},{name: "カットソー"},{name: "シャツ"},{name: "ポロシャツ"},{name: "タンクトップ"},{name: "ニット/セーター"},{name: "パーカー"},{name: "カーディガン"},{name: "スウェット"},{name: "ジャージ"},{name: "ベスト"},{name: "その他"}])
men_2.children.create([{name: "デニム/ジーンズ"},{name: "ワークパンツ/カーゴパンツ"},{name: "スラックス"},{name: "チノパン"},{name: "ショートパンツ"},{name: "ペインターパンツ"},{name: "サルエルパンツ"},{name: "オーバーオール"},{name: "その他"}])
men_3.children.create([{name: "テーラードジャケット"},{name: "ノーカラージャケット"},{name: "Gジャン/デニムジャケット"},{name: "レザージャケット"},{name: "ライダースジャケット"},{name: "ミリタリージャケット"},{name: "ナイロンジャケット"},{name: "フライトジャケット"},{name: "スタジャン"},{name: "スカジャン"},{name: "ブルゾン"},{name: "マウンテンパーカー"},{name: "その他"}])
men_4.children.create([{name: "ダウンジャケット"},{name: "ダッフルコート"},{name: "ピーコート"},{name: "ステンカラーコート"},{name: "トレンチコート"},{name: "モッズコート"},{name: "チェスターコート"},{name: "ダウンベスト"},{name: "カバーオール"},{name: "その他"}])
men_5.children.create([{name: "ジムウェア - トップス"},{name: "ジムウェア - ボトムス"},{name: "スウェット（上）"},{name: "スウェット（下）"},{name: "その他"}])
men_6.children.create([{name: "スニーカー"},{name: "サンダル"},{name: "ブーツ"},{name: "モカシン"},{name: "ドレス/ビジネス"},{name: "長靴/レインシューズ"},{name: "デッキシューズ"},{name: "その他"}])
men_7.children.create([{name: "ショルダーバッグ"},{name: "トートバッグ"},{name: "ボストンバッグ"},{name: "リュック/バックパック"},{name: "ウエストポーチ"},{name: "ボディーバッグ"},{name: "ドラムバッグ"},{name: "ビジネスバッグ"},{name: "トラベルバッグ"},{name: "メッセンジャーバッグ"},{name: "エコバッグ"},{name: "その他"}])
men_8.children.create([{name: "ネックレス"},{name: "ブレスレット"},{name: "バングル/リストバンド"},{name: "リング"},{name: "ピアス(片耳用)"},{name: "ピアス(両耳用)"},{name: "アンクレット"},{name: "その他"}])
men_9.children.create([{name: "水着"},{name: "スーツジャケット"},{name: "スーツベスト"},{name: "スラックス"},{name: "セットアップ"},{name: "その他"}])
unisex_1.children.create([{name: "キャップ"},{name: "ニットキャップ/ビーニー"},{name: "ハット"},{name: "ハンチング/ベレー帽"},{name: "キャップ"},{name: "キャスケット"},{name: "麦わら帽子"},{name: "その他"}])

Categorization.create!([
  { clothe_id: clothe1.id, category_id: women_2.children.first.id },
  { clothe_id: clothe2.id, category_id: women_5.children.first.id },
  { clothe_id: clothe2.id, category_id: men_3.children.first.id },
  { clothe_id: clothe3.id, category_id: women_5.children.first.id },
  { clothe_id: clothe4.id, category_id: women_2.children.first.id },
  { clothe_id: clothe5.id, category_id: women_1.children.first.id },
  { clothe_id: clothe5.id, category_id: men_1.children.first.id }
])
