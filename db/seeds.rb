User.create!([
  { username: "Emily", email: "emily@mail.com", password: "emily@mail.com", birthday: '1995-10-15', points: 0, height: 160.8, weight: 50.3, waist: 60.3, bust: 77.7, hip: 90.5 },
  { username: "Rose", email: "rose@mail.com", password: "rose@mail.com", birthday: '1992-10-15', points: 0, height: 170.8, weight: 50.8, waist: 60.3, bust: 82.7, hip: 90.5 },
  { username: "Emilia", email: "emilia@mail.com", password: "emilia@mail.com", birthday: '1998-10-15', points: 0, height: 153.8, weight: 45.3, waist: 70.3, bust: 82.7, hip: 96.5 },
  { username: "Mike", email: "mike@mail.com", password: "mike@mail.com", birthday: '1990-10-15', points: 0, height: 180.8, weight: 71.3 },
  { username: "Olivia", email: "olivia@mail.com", password: "olivia@mail.com", birthday: '2000-10-15', points: 0, height: 180.8, weight: 52.8, waist: 60.3, bust: 77.7, hip: 90.5 }
])

Address.create!([
  { user_id: 1, first_name: 'Emily', last_name: 'Cooper', postcode: '154-0001', prefecture_code: 13, address_city: '世田谷区', address_street: '池尻1-2-3',phone_number: '1111111111' },
  { user_id: 1, first_name: 'Emily', last_name: 'Cooper', postcode: '678-0064', prefecture_code: 04, address_city: '相生市', address_street: '青葉台1-2-3', address_building: 'ビル101', phone_number: '22222222222' },
  { user_id: 2, first_name: 'Rose', last_name: 'Mason', postcode: '248-0026', prefecture_code: 14, address_city: '鎌倉市', address_street: '七里ヶ浜1-2-3', address_building: 'ビル101', phone_number: '3333333333' },
  { user_id: 3, first_name: 'Emilia', last_name: 'Packer', postcode: '248-0026', prefecture_code: 14, address_city: '鎌倉市', address_street: '七里ヶ浜1-2-3', address_building: 'ビル101', phone_number: '4444444444' },
  { user_id: 4, first_name: 'Olivia', last_name: 'Grealish', postcode: '399-9300', prefecture_code: 20, address_city: '北安曇郡', address_street: '白馬村1-2-3', address_building: 'ビル101', phone_number: '5555555555' }
])

Retailer.create!([
  { name: 'afendssss',
    description: '７０年代オーストラリアのヒッピーカルチャーの聖地として有名なバイロンベイにて、その第二世代として生まれ育ったDeclan Wise（デクラン・ワイズ）、Jono Salfield（ジョノ・サーフィールド）を中心に２００６年に設立されたオルタネートファッション＆ライフスタイルブランド。Punk-Rock をルーツとしたバイロンベイのモダンデイカルチャーとフリーリビングアティテュードをテーマに、自宅のバックヤードにてハンドスクリーンプリンティングを施したオリジナルアートTシャツの販売からスタートした後、またたくまにオーストラリアで成功をおさめ、現在世界１５カ国に広がるブランドへと成長。
    Question Everything（全てのことに疑問を持つこと）を信条とし、そのあくなき探究心と創造性により、アート、ミュージック、サーフ、ストリートと共にある彼らの日常のライフスタイルをテキスタイルに落とし込み、Afends way of lifeとしてバイロンベイより提案している。',
    website_url: 'https://afends.com/',
    phone_number: '1234567890',
    address: '東京都渋谷区1-2-3',
    email: 'afends@test.jp',
    password: 'afends@test.jp' },

  { name: 'Ted Bakerrrr',
    description: 'Ted Baker Londonの始まりは、イギリスのグラスゴーの小さなシャツ専門店。現在はグローバルライフスタイルブランドとして世界中に500以上の店舗を展開。「No Ordinary Designer Label」として、Ted Bakerのデザインはブリティッシュユーモアを取り入れたクオリティの高いデザインが魅力的なブランドです。',
    website_url: 'https://tedbaker.jp/',
    phone_number: '1234567890',
    address: '東京都渋谷区1-2-3',
    email: 'tedbaker@test.jp',
    password: 'tedbaker@test.jp' },

  { name: 'Stella McCartneyyyy',
    description: 'スポーツとファッションのどちらも犠牲にできない欲張りな女性のために、adidasのスポーツテクノロジーとステラ・マッカートニーのデザインが融合し、最高のスポーツパフォーマンスと美しさを引き出すハイエンドスポーツウエア　adidas by Stella McCartney',
    website_url: 'https://www.stellamccartney.com/jp/ja/',
    phone_number: '1234567890',
    address: '東京都渋谷区1-2-3',
    email: 'stella@test.jp',
    password: 'stella@test.jp' },

  { name: 'Maison Kitsuneeee',
    description: '2002年にGildas Loaëc （ジルダ・ロアエック）とMasaya Kuroki （黒木理也）のふたりにより設立。
    ファッションブランドの「Maison Kitsuné（メゾン キツネ）」、ミュージックレーベルの「Kitsuné Musique（キツネ ミュージック）」、カフェの「Café Kitsuné（カフェ キツネ）」を通じ、インスピレーションあふれるユニークなアール・ド・ヴィーヴル
    （フランス語で「暮らしの芸術」の意）を発信しています。ブランド設立から19年間、パリと東京を拠点とする多面的なブランドは一貫して成長し続け、グローバルなインフルーエンスパワーを自然と高めていき、世界中に熱心なファンを増やしています。',
    website_url: 'https://maisonkitsune.com/jp/',
    phone_number: '1234567890',
    address: '東京都渋谷区1-2-3',
    email: 'maisonkitune@test.jp',
    password: 'maisonkitune@test.jp' },

  { name: 'Joueteeee',
    description: 'スペシャルなシチュエーションだけでなく、いつもお洒落を楽しみたい。流行とともに歳を重ねてきたファッションに敏感な大人の女性に向けてそれぞれの個性をより輝かせるジュエリーを発信します。',
    website_url: 'https://www.jouete.com/',
    phone_number: '1234567890',
    address: '東京都渋谷区1-2-3',
    email: 'jouete@test.jp',
    password: 'jouete@test.jp' }
])

@retailer = Retailer.find(1)
@retailer.logo.attach(io: File.open("./db/images/afends.png"), filename: "afends.png")

@retailer = Retailer.find(2)
@retailer.logo.attach(io: File.open("./db/images/TedBaker.png"), filename: "TedBaker.png")

@retailer = Retailer.find(3)
@retailer.logo.attach(io: File.open("./db/images/stellamccartney.jpeg"), filename: "stellamccartney.jpeg")

@retailer = Retailer.find(4)
@retailer.logo.attach(io: File.open("./db/images/maisonkitune.jpeg"), filename: "maisonkitune.jpeg")

@retailer = Retailer.find(5)
@retailer.logo.attach(io: File.open("./db/images/jouete.jpeg"), filename: "jouete.jpeg")


Clothe.create!([
  { retailer_id: 1,
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
    price: 12000,
  },

  { retailer_id: 1,
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
    price: 15500,
  },

  { retailer_id: 2,
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
    price: 15000,
  },

  { retailer_id: 3,
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
    price: 10000,
  },

  { retailer_id: 4,
    name: 'ウォームアップカレッジTEE',
    description: '・WWG定番のビッグシルエット。身幅が広い為、風通りも良く、快適な着心地。
                  ・カラーによって、ボディーに馴染んだり映えたりする刺繍ロゴ。肉厚なので、一枚着でもしっかりとした見栄えに。
                  ・お揃いで着るのもオススメ！ギフトにもピッタリな、ユニセックスで愛用できるアイテム。',
    size:'サイズ 身幅 肩幅 着丈 そで丈
          S :    47   38  60    52
          M, L： 51   42   68   59',
    price: 5000,
  },
])

@clothe = Clothe.find(1)
@clothe.images.attach(io: File.open( "./db/images/clothes1.jpg"), filename: "clothes1.jpg" )
@clothe.images.attach(io: File.open("./db/images/clothes_1.jpg"), filename: "clothes_1.jpg" )

@clothe = Clothe.find(2)
@clothe.images.attach(io: File.open( "./db/images/clothes2.jpg"), filename: "clothes2.jpg" )
@clothe.images.attach(io: File.open("./db/images/clothes_2.jpg"), filename: "clothes_2.jpg" )

@clothe = Clothe.find(3)
@clothe.images.attach(io: File.open( "./db/images/clothes3.jpg"), filename: "clothes3.jpg" )
@clothe.images.attach(io: File.open("./db/images/clothes_3.jpg"), filename: "clothes_3.jpg" )

@clothe = Clothe.find(4)
@clothe.images.attach(io: File.open( "./db/images/clothes4.jpg"), filename: "clothes4.jpg" )
@clothe.images.attach(io: File.open("./db/images/clothes_4.jpg"), filename: "clothes_4.jpg" )

@clothe = Clothe.find(5)
@clothe.images.attach(io: File.open( "./db/images/clothes5.jpg"), filename: "clothes5.jpg" )
@clothe.images.attach(io: File.open("./db/images/clothes_5.jpg"), filename: "clothes_5.jpg" )


Stock.create!([
  { clothe_id: 1, size: 'S', color: 'Red', quantity: 10 },
  { clothe_id: 1, size: 'M', color: 'Red', quantity: 10 },
  { clothe_id: 1, size: 'L', color: 'Red', quantity: 10 },
  { clothe_id: 2, size: 'S', color: 'Yellow', quantity: 10 },
  { clothe_id: 2, size: 'M', color: 'Yellow', quantity: 10 },
  { clothe_id: 2, size: 'S', color: 'Black', quantity: 10 },
  { clothe_id: 2, size: 'M', color: 'Black', quantity: 10 },
  { clothe_id: 3, size: 'S', color: 'White', quantity: 10 },
  { clothe_id: 3, size: 'M', color: 'White', quantity: 10 },
  { clothe_id: 3, size: 'L', color: 'White', quantity: 10 },
  { clothe_id: 4, size: 'M', color: 'denim', quantity: 10 },
  { clothe_id: 4, size: 'L', color: 'denim', quantity: 10 },
  { clothe_id: 5, size: 'FREE', color: 'Blue', quantity: 20 }
])

Cart.create!([
  { user_id: 1, stock_id: 3 },
  { user_id: 1, stock_id: 5 },
  { user_id: 2, stock_id: 1 },
  { user_id: 3, stock_id: 2 },
  { user_id: 4, stock_id: 4 }
])

Order.create!([
  { user_id: 1, price: 10000, first_name: 'Emily', last_name: 'Cooper', postcode: '154-0001', prefecture_code: 13, address_city: '世田谷区', address_street: '池尻1-2-3',phone_number: '1111111111' },
  { user_id: 1, price: 15000, first_name: 'Emily', last_name: 'Cooper', postcode: '154-0001', prefecture_code: 13, address_city: '世田谷区', address_street: '池尻1-2-3',phone_number: '1111111111' },
  { user_id: 2, price: 15500, first_name: 'Rose', last_name: 'Mason', postcode: '248-0026', prefecture_code: 14, address_city: '鎌倉市', address_street: '七里ヶ浜1-2-3', address_building: 'ビル101', phone_number: '3333333333' },
  { user_id: 3, price: 12000, first_name: 'Emilia', last_name: 'Packer', postcode: '248-0026', prefecture_code: 14, address_city: '鎌倉市', address_street: '七里ヶ浜1-2-3', address_building: 'ビル101', phone_number: '4444444444' },
  { user_id: 5, price: 5000, first_name: 'Olivia', last_name: 'Grealish', postcode: '399-9300', prefecture_code: 20, address_city: '北安曇郡', address_street: '白馬村1-2-3', address_building: 'ビル101', phone_number: '5555555555' }
])

OrderStock.create!([
  { order_id: 1, stock_id: 13 },
  { order_id: 2, stock_id: 4 },
  { order_id: 3, stock_id: 8 },
  { order_id: 4, stock_id: 11 },
  { order_id: 5, stock_id: 10 },
  { order_id: 1, stock_id: 3 },
  { order_id: 3, stock_id: 5 }
])

Review.create!([
  { user_id: 1,
    clothe_id: 5,
    stock_no: 13,
    rate: 5.0,
    content: 'クロップT欲しくて色んな所見たけどこれは丈感ちょうど良かった！！長すぎず短すぎず。袖もちょうどいいし、フィット感ばっちり！！！！'
  },

  { user_id: 1,
    clothe_id: 2,
    stock_no: 4,
    rate: 5.0,
    content: 'とりま可愛すぎる！一枚あれば大活躍！！！！'
  },

  { user_id: 2,
    clothe_id: 2,
    stock_no: 5,
    rate: 4.5,
    content: '紐が長すぎる！爆笑爆笑爆笑 でもめちゃくちゃデザインは可愛いしいいと思う！162センチの私がMサイズを着てみて、丈がすごく短く感じました！'
  },

  { user_id: 3,
    clothe_id: 4,
    stock_no: 11,
    rate: 5.0,
    content: '骨格ウェーブです。今までウエストに合わせて買うと丈足りないとかザラでほぼ諦めてたけどこれウエストぴったりだしへそまで隠れるぐらいだから脚長効果抜群。グレ○ルとかのフレアパンツフレアすぎて逆に短足に見える人だったけど写真より全然フレアじゃないから是非買って欲しい。ウエストはサイズ表より小さめかも。ベルト無しでも全然履ける！うれしい！骨格ウェーブ皆これ着て脚長くなろうな( ◠‿◠ )'
  },

  { user_id: 5,
    clothe_id: 5,
    stock_no: 10,
    rate: 5.0,
    content: '少し大きめなのかな？と思ったけどウエストも長さもピッタリ！！これは可愛い❗❗低身長さんにもオススメです！'
  }
])

Favorite.create!([
  { user_id: 1, clothe_id: 2 },
  { user_id: 1, clothe_id: 3 },
  { user_id: 1, clothe_id: 4 },
  { user_id: 2, clothe_id: 4 },
  { user_id: 3, clothe_id: 5 },
  { user_id: 4, clothe_id: 3 },
  { user_id: 5, clothe_id: 5 },
  { user_id: 3, clothe_id: 4 },
  { user_id: 4, clothe_id: 4 },
  { user_id: 5, clothe_id: 4 }
])
