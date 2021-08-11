# User.create!([
#   { username: "Emily", email: "emily@mail.com", password: "emily@mail.com", birthday: '1995-10-15', points: 0, height: 160.8, weight: 50.3, waist: 60.3, bust: 77.7, hip: 90.5 },
#   { username: "Rose", email: "rose@mail.com", password: "rose@mail.com", birthday: '1992-10-15', points: 0, height: 170.8, weight: 50.8, waist: 60.3, bust: 82.7, hip: 90.5 },
#   { username: "Emilia", email: "emilia@mail.com", password: "emilia@mail.com", birthday: '1998-10-15', points: 0, height: 153.8, weight: 45.3, waist: 70.3, bust: 82.7, hip: 96.5 },
#   { username: "Mike", email: "mike@mail.com", password: "mike@mail.com", birthday: '1990-10-15', points: 0, height: 180.8, weight: 71.3 },
#   { username: "Olivia", email: "olivia@mail.com", password: "olivia@mail.com", birthday: '2000-10-15', points: 0, height: 180.8, weight: 52.8, waist: 60.3, bust: 77.7, hip: 90.5 }
# ])
#
# Address.create!([
#   { user_id: 1, first_name: 'Emily', last_name: 'Cooper', postcode: '1540001', prefecture_code: 13, address_city: '世田谷区', address_street: '池尻1-2-3',phone_number: '1111111111' },
#   { user_id: 1, first_name: 'Emily', last_name: 'Cooper', postcode: '6780064', prefecture_code: 04, address_city: '相生市', address_street: '青葉台1-2-3', address_building: 'ビル101', phone_number: '22222222222' },
#   { user_id: 2, first_name: 'Rose', last_name: 'Mason', postcode: '2480026', prefecture_code: 14, address_city: '鎌倉市', address_street: '七里ヶ浜1-2-3', address_building: 'ビル101', phone_number: '3333333333' },
#   { user_id: 3, first_name: 'Emilia', last_name: 'Packer', postcode: '2480026', prefecture_code: 14, address_city: '鎌倉市', address_street: '七里ヶ浜1-2-3', address_building: 'ビル101', phone_number: '4444444444' },
#   { user_id: 4, first_name: 'Olivia', last_name: 'Grealish', postcode: '3999300', prefecture_code: 20, address_city: '北安曇郡', address_street: '白馬村1-2-3', address_building: 'ビル101', phone_number: '5555555555' }
# ])
#
# Retailer.create!([
#   { name: 'afendssss',
#     description: '７０年代オーストラリアのヒッピーカルチャーの聖地として有名なバイロンベイにて、その第二世代として生まれ育ったDeclan Wise（デクラン・ワイズ）、Jono Salfield（ジョノ・サーフィールド）を中心に２００６年に設立されたオルタネートファッション＆ライフスタイルブランド。Punk-Rock をルーツとしたバイロンベイのモダンデイカルチャーとフリーリビングアティテュードをテーマに、自宅のバックヤードにてハンドスクリーンプリンティングを施したオリジナルアートTシャツの販売からスタートした後、またたくまにオーストラリアで成功をおさめ、現在世界１５カ国に広がるブランドへと成長。
#     Question Everything（全てのことに疑問を持つこと）を信条とし、そのあくなき探究心と創造性により、アート、ミュージック、サーフ、ストリートと共にある彼らの日常のライフスタイルをテキスタイルに落とし込み、Afends way of lifeとしてバイロンベイより提案している。',
#     website_url: 'https://afends.com/',
#     phone_number: '1234567890',
#     address: '東京都渋谷区1-2-3',
#     email: 'afends@test.jp',
#     password: 'afends@test.jp' },
#
#   { name: 'Ted Bakerrrr',
#     description: 'Ted Baker Londonの始まりは、イギリスのグラスゴーの小さなシャツ専門店。現在はグローバルライフスタイルブランドとして世界中に500以上の店舗を展開。「No Ordinary Designer Label」として、Ted Bakerのデザインはブリティッシュユーモアを取り入れたクオリティの高いデザインが魅力的なブランドです。',
#     website_url: 'https://tedbaker.jp/',
#     phone_number: '1234567890',
#     address: '東京都渋谷区1-2-3',
#     email: 'tedbaker@test.jp',
#     password: 'tedbaker@test.jp' },
#
#   { name: 'Stella McCartneyyyy',
#     description: 'スポーツとファッションのどちらも犠牲にできない欲張りな女性のために、adidasのスポーツテクノロジーとステラ・マッカートニーのデザインが融合し、最高のスポーツパフォーマンスと美しさを引き出すハイエンドスポーツウエア　adidas by Stella McCartney',
#     website_url: 'https://www.stellamccartney.com/jp/ja/',
#     phone_number: '1234567890',
#     address: '東京都渋谷区1-2-3',
#     email: 'stella@test.jp',
#     password: 'stella@test.jp' },
#
#   { name: 'Maison Kitsuneeee',
#     description: '2002年にGildas Loaëc （ジルダ・ロアエック）とMasaya Kuroki （黒木理也）のふたりにより設立。
#     ファッションブランドの「Maison Kitsuné（メゾン キツネ）」、ミュージックレーベルの「Kitsuné Musique（キツネ ミュージック）」、カフェの「Café Kitsuné（カフェ キツネ）」を通じ、インスピレーションあふれるユニークなアール・ド・ヴィーヴル
#     （フランス語で「暮らしの芸術」の意）を発信しています。ブランド設立から19年間、パリと東京を拠点とする多面的なブランドは一貫して成長し続け、グローバルなインフルーエンスパワーを自然と高めていき、世界中に熱心なファンを増やしています。',
#     website_url: 'https://maisonkitsune.com/jp/',
#     phone_number: '1234567890',
#     address: '東京都渋谷区1-2-3',
#     email: 'maisonkitune@test.jp',
#     password: 'maisonkitune@test.jp' },
#
#   { name: 'Joueteeee',
#     description: 'スペシャルなシチュエーションだけでなく、いつもお洒落を楽しみたい。流行とともに歳を重ねてきたファッションに敏感な大人の女性に向けてそれぞれの個性をより輝かせるジュエリーを発信します。',
#     website_url: 'https://www.jouete.com/',
#     phone_number: '1234567890',
#     address: '東京都渋谷区1-2-3',
#     email: 'jouete@test.jp',
#     password: 'jouete@test.jp' }
# ])
#
# @retailer = Retailer.find(1)
# @retailer.logo.attach(io: File.open("./db/images/afends.png"), filename: "afends.png")
#
# @retailer = Retailer.find(2)
# @retailer.logo.attach(io: File.open("./db/images/TedBaker.png"), filename: "TedBaker.png")
#
# @retailer = Retailer.find(3)
# @retailer.logo.attach(io: File.open("./db/images/stellamccartney.jpeg"), filename: "stellamccartney.jpeg")
#
# @retailer = Retailer.find(4)
# @retailer.logo.attach(io: File.open("./db/images/maisonkitune.jpeg"), filename: "maisonkitune.jpeg")
#
# @retailer = Retailer.find(5)
# @retailer.logo.attach(io: File.open("./db/images/jouete.jpeg"), filename: "jouete.jpeg")
#
#
# Clothe.create!([
#   { retailer_id: 1,
#     name: '【web限定Sサイズ】センタープレスセミフレアスラックス',
#     description: '美脚効果抜群のセミフレアパンツに、待望のスラックスパンツが登場‼
#                   普段の着こなしに取り入れるだけで一気にこなれ感がアップします。
#                   上品なウエストデザインと、適度にハリのあるさらりとした生地が高見えポイント◎
#                   また透け感のない生地を使用することで裏地を無くし、よりすっきりとしたシルエットに。
#                   定番に使えるブラックをはじめ、コーディネートの差し色に使いやすい旬のカラー展開にも注目です。',
#     size:'サイズS　サイズM
#           ウエスト【62cm】【65cm】
#           ヒップ【94cm】【97cm】
#           パンツ丈【97cm】【100cm】
#           股上【31cm】【33cm】
#           股下【66cm】【67cm】
#           もも周り【57cm】【60cm】
#           すそ周り【47cm】【50cm】',
#     price: 12000,
#   },
#
#   { retailer_id: 1,
#     name: 'Yellow Jacket',
#     description: '金ボタンでクラシックに。カーディガン感覚で着こなせるノーカラージャケット
#                   ---
#                   Design/Styling
#                   カーディガン感覚でかっちりし過ぎず気軽に着られるノーカラージャケット。
#                   後ろにダーツを入れたコクーンシルエットと、袖にも立体感を出した構築的なデザインが特徴。
#                   よこはぎを入れて、スラッシュポケットにすることでスッキリした印象に。
#                   やりすぎないオーバーサイズなのでブルゾン感覚で
#                   アウターとしてもカーデ感覚でも着られて、程よいきちんと感が叶います。',
#     size:'サイズ 身幅 肩幅 着丈 そで丈
#           S :    47   38  60    52
#           M, L： 51   42   68   59',
#     price: 15500,
#   },
#
#   { retailer_id: 2,
#     name: '【SET UP対応】長袖ショート丈テーラードジャケット',
#     description: '大人気のジャケットに長袖が登場！！
#                   【デザイン】
#                   短丈デザインなので小柄な方もスッキリと着こなす事ができ、
#                   身幅にゆとりがある仕様なのでコンパクトすぎずにご着用頂けます。
#
#                   長袖なので初秋から秋本番はもちろん、
#                   冬アウターが必要になるまでの 長い期間ご活用いただけます。
#
#                   柔らかい素材でかっちりとしすぎず、ジャケットでありながら
#                   シャツのようにお召し頂けます。
#
#                   【コーディネート】
#                   同色で同素材のミニスカート、ショートパンツ、ロングパンツがあるので
#                   セットアップ風に着こなしていただくのがおすすめです。
#
#                   中はキャミやタンクを合わせると華奢で女性らしい着こなしに
#                   カジュアルスタイルがお好みの方はフロントにロゴがあるTシャツなどと
#                   合わせていただくのもおすすめです。
#
#                   ショート丈なので、ロングスカートやロングパンツとも
#                   バランスよく合わせていただけます◎',
#     size:'サイズ 身幅 肩幅 着丈 そで丈
#           S :    47   38  60    52
#           M, L： 51   42   68   59',
#     price: 15000,
#   },
#
#   { retailer_id: 3,
#     name: 'ハイウエストストレッチデニムセミワイドパンツ',
#     description: 'スタイルアップ間違いなし!トレンドスタイルが完成するデニムパンツ♪
#                   ●美脚効果をプラスしてくれるトレンドのセミワイドデニムが登場●
#                   シンプルだからこそシルエットにこだわった大人のデニム。
#                   コットンメインの素材で、柔らかいしなやかな肌触りが特徴的！
#                   ハイストレッチで伸びがよく柔らかな生地を使用しているため、はき心地も抜群です。',
#     size:'サイズ	ウエスト	ヒップ	パンツ丈	股上	股下
#           S（S）	64	92	99	31	71.5
#           M（M）	68	96	100	31.5	72
#           L（L）	72	100	101	32	72.5',
#     price: 10000,
#   },
#
#   { retailer_id: 4,
#     name: 'ウォームアップカレッジTEE',
#     description: '・WWG定番のビッグシルエット。身幅が広い為、風通りも良く、快適な着心地。
#                   ・カラーによって、ボディーに馴染んだり映えたりする刺繍ロゴ。肉厚なので、一枚着でもしっかりとした見栄えに。
#                   ・お揃いで着るのもオススメ！ギフトにもピッタリな、ユニセックスで愛用できるアイテム。',
#     size:'サイズ 身幅 肩幅 着丈 そで丈
#           S :    47   38  60    52
#           M, L： 51   42   68   59',
#     price: 5000,
#   },
# ])
#
# @clothe = Clothe.find(1)
# @clothe.images.attach(io: File.open( "./db/images/clothes1.jpg"), filename: "clothes1.jpg" )
# @clothe.images.attach(io: File.open("./db/images/clothes_1.jpg"), filename: "clothes_1.jpg" )
#
# @clothe = Clothe.find(2)
# @clothe.images.attach(io: File.open( "./db/images/clothes2.jpg"), filename: "clothes2.jpg" )
# @clothe.images.attach(io: File.open("./db/images/clothes_2.jpg"), filename: "clothes_2.jpg" )
#
# @clothe = Clothe.find(3)
# @clothe.images.attach(io: File.open( "./db/images/clothes3.jpg"), filename: "clothes3.jpg" )
# @clothe.images.attach(io: File.open("./db/images/clothes_3.jpg"), filename: "clothes_3.jpg" )
#
# @clothe = Clothe.find(4)
# @clothe.images.attach(io: File.open( "./db/images/clothes4.jpg"), filename: "clothes4.jpg" )
# @clothe.images.attach(io: File.open("./db/images/clothes_4.jpg"), filename: "clothes_4.jpg" )
#
# @clothe = Clothe.find(5)
# @clothe.images.attach(io: File.open( "./db/images/clothes5.jpg"), filename: "clothes5.jpg" )
# @clothe.images.attach(io: File.open("./db/images/clothes_5.jpg"), filename: "clothes_5.jpg" )
#
#
# Stock.create!([
#   { clothe_id: 1, size: 'S', color: 'Red', quantity: 10 },
#   { clothe_id: 1, size: 'M', color: 'Red', quantity: 10 },
#   { clothe_id: 1, size: 'L', color: 'Red', quantity: 10 },
#   { clothe_id: 2, size: 'S', color: 'Yellow', quantity: 10 },
#   { clothe_id: 2, size: 'M', color: 'Yellow', quantity: 10 },
#   { clothe_id: 2, size: 'S', color: 'Black', quantity: 10 },
#   { clothe_id: 2, size: 'M', color: 'Black', quantity: 10 },
#   { clothe_id: 3, size: 'S', color: 'White', quantity: 10 },
#   { clothe_id: 3, size: 'M', color: 'White', quantity: 10 },
#   { clothe_id: 3, size: 'L', color: 'White', quantity: 10 },
#   { clothe_id: 4, size: 'M', color: 'denim', quantity: 10 },
#   { clothe_id: 4, size: 'L', color: 'denim', quantity: 10 },
#   { clothe_id: 5, size: 'FREE', color: 'Blue', quantity: 20 }
# ])
#
# Cart.create!([
#   { user_id: 1, stock_id: 3 },
#   { user_id: 1, stock_id: 5 },
#   { user_id: 2, stock_id: 1 },
#   { user_id: 3, stock_id: 2 },
#   { user_id: 4, stock_id: 4 }
# ])
#
# Order.create!([
#   { user_id: 1, price: 10000, first_name: 'Emily', last_name: 'Cooper', postcode: '154-0001', prefecture_code: 13, address_city: '世田谷区', address_street: '池尻1-2-3',phone_number: '1111111111' },
#   { user_id: 1, price: 15000, first_name: 'Emily', last_name: 'Cooper', postcode: '154-0001', prefecture_code: 13, address_city: '世田谷区', address_street: '池尻1-2-3',phone_number: '1111111111' },
#   { user_id: 2, price: 15500, first_name: 'Rose', last_name: 'Mason', postcode: '248-0026', prefecture_code: 14, address_city: '鎌倉市', address_street: '七里ヶ浜1-2-3', address_building: 'ビル101', phone_number: '3333333333' },
#   { user_id: 3, price: 12000, first_name: 'Emilia', last_name: 'Packer', postcode: '248-0026', prefecture_code: 14, address_city: '鎌倉市', address_street: '七里ヶ浜1-2-3', address_building: 'ビル101', phone_number: '4444444444' },
#   { user_id: 5, price: 5000, first_name: 'Olivia', last_name: 'Grealish', postcode: '399-9300', prefecture_code: 20, address_city: '北安曇郡', address_street: '白馬村1-2-3', address_building: 'ビル101', phone_number: '5555555555' }
# ])
#
# OrderStock.create!([
#   { order_id: 1, stock_id: 13 },
#   { order_id: 2, stock_id: 4 },
#   { order_id: 3, stock_id: 8 },
#   { order_id: 4, stock_id: 11 },
#   { order_id: 5, stock_id: 10 },
#   { order_id: 1, stock_id: 3 },
#   { order_id: 3, stock_id: 5 }
# ])
#
# Review.create!([
#   { user_id: 1,
#     clothe_id: 5,
#     stock_no: 13,
#     rate: 5.0,
#     content: 'クロップT欲しくて色んな所見たけどこれは丈感ちょうど良かった！！長すぎず短すぎず。袖もちょうどいいし、フィット感ばっちり！！！！'
#   },
#
#   { user_id: 1,
#     clothe_id: 2,
#     stock_no: 4,
#     rate: 5.0,
#     content: 'とりま可愛すぎる！一枚あれば大活躍！！！！'
#   },
#
#   { user_id: 2,
#     clothe_id: 2,
#     stock_no: 5,
#     rate: 4.5,
#     content: '紐が長すぎる！爆笑爆笑爆笑 でもめちゃくちゃデザインは可愛いしいいと思う！162センチの私がMサイズを着てみて、丈がすごく短く感じました！'
#   },
#
#   { user_id: 3,
#     clothe_id: 4,
#     stock_no: 11,
#     rate: 5.0,
#     content: '骨格ウェーブです。今までウエストに合わせて買うと丈足りないとかザラでほぼ諦めてたけどこれウエストぴったりだしへそまで隠れるぐらいだから脚長効果抜群。グレ○ルとかのフレアパンツフレアすぎて逆に短足に見える人だったけど写真より全然フレアじゃないから是非買って欲しい。ウエストはサイズ表より小さめかも。ベルト無しでも全然履ける！うれしい！骨格ウェーブ皆これ着て脚長くなろうな( ◠‿◠ )'
#   },
#
#   { user_id: 5,
#     clothe_id: 5,
#     stock_no: 10,
#     rate: 5.0,
#     content: '少し大きめなのかな？と思ったけどウエストも長さもピッタリ！！これは可愛い❗❗低身長さんにもオススメです！'
#   }
# ])
#
# Favorite.create!([
#   { user_id: 1, clothe_id: 2 },
#   { user_id: 1, clothe_id: 3 },
#   { user_id: 1, clothe_id: 4 },
#   { user_id: 2, clothe_id: 4 },
#   { user_id: 3, clothe_id: 5 },
#   { user_id: 4, clothe_id: 3 },
#   { user_id: 5, clothe_id: 5 },
#   { user_id: 3, clothe_id: 4 },
#   { user_id: 4, clothe_id: 4 },
#   { user_id: 5, clothe_id: 4 }
# ])


#カテゴリーデータ
# # 親階層
lady                         = Category.create(name: "レディース")
men                          = Category.create(name: "メンズ")
baby_kids                    = Category.create(name: "キッズ")

# 子階層_レディース
lady_1  = lady.children.create(name: "トップス")
lady_2  = lady.children.create(name: "パンツ")
lady_3  = lady.children.create(name: "スカート")
lady_4  = lady.children.create(name: "ワンピース")
lady_5 = lady.children.create(name: "ジャケット")
lady_6  = lady.children.create(name: "コート")

lady_7  = lady.children.create(name: "靴")
lady_8  = lady.children.create(name: "ルームウェア/パジャマ")
lady_9  = lady.children.create(name: "レッグウェア")
lady_10  = lady.children.create(name: "帽子")
lady_11 = lady.children.create(name: "バッグ")
lady_12 = lady.children.create(name: "アクセサリー")
lady_13 = lady.children.create(name: "ヘアアクセサリー")
lady_14 = lady.children.create(name: "小物")
lady_15 = lady.children.create(name: "時計")
lady_16 = lady.children.create(name: "浴衣/水着")
lady_17 = lady.children.create(name: "スーツ/フォーマル/ドレス")
lady_18 = lady.children.create(name: "マタニティ")
lady_19 = lady.children.create(name: "その他")

# 孫階層_レディース
lady_1.children.create([{name: "Tシャツ"},{name: "クロップドTシャツ"},{name: "カットソー"},{name: "シャツ/ブラウス"},{name: "ポロシャツ"},{name: "キャミソール"},{name: "タンクトップ"},{name: "ベアトップ/チューブトップ"},{name: "トレーナー/スウェット"},{name: "パーカー"},{name: "ニット/セーター"},{name: "ホルターネック"},{name: "カーディガン/ボレロ"},{name: "アンサンブル"},{name: "チュニック"},{name: "ベスト/ジレ"},{name: "その他"}])
lady_2.children.create([{name: "デニム/ジーンズ"},{name: "ショートパンツ"},{name: "カジュアルパンツ"},{name: "ハーフパンツ"},{name: "チノパン"},{name: "ワークパンツ/カーゴパンツ"},{name: "クロップドパンツ"},{name: "サロペット/オーバーオール"},{name: "オールインワン"},{name: "サルエルパンツ"},{name: "ガウチョパンツ"},{name: "その他"}])
lady_3.children.create([{name: "ショート丈スカート"},{name: "ひざ丈スカート"},{name: "ロングスカート"},{name: "キュロット"},{name: "その他"}])
lady_4.children.create([{name: "ショート丈ワンピース"},{name: "ひざ丈ワンピース"},{name: "ロングワンピース"},{name: "その他"}])
lady_5.children.create([{name: "テーラードジャケット"},{name: "ノーカラージャケット"},{name: "デニムジャケット"},{name: "レザージャケット"},{name: "MA-1"},{name: "ライダースジャケット"},{name: "ミリタリージャケット"},{name: "ダウンベスト"},{name: "ジャンパー/ブルゾン"},{name: "スタジャン"},{name: "スカジャン"},{name: "その他"}])
lady_6.children.create([{name: "ダウンジャケット"},{name: "ロングコート"},{name: "トレンチコート"},{name: "ダッフルコート"},{name: "ピーコート"},{name: "チェスターコート"},{name: "モッズコート"},{name: "毛皮/ファーコート"},{name: "スプリングコート"},{name: "その他"}])

lady_7.children.create([{name: "ハイヒール/パンプス"},{name: "ブーツ"},{name: "サンダル"},{name: "スニーカー"},{name: "ミュール"},{name: "モカシン"},{name: "ローファー/革靴"},{name: "フラットシューズ/バレエシューズ"},{name: "長靴/レインシューズ"},{name: "その他"}])
lady_8.children.create([{name: "パジャマ"},{name: "ルームウェア"}])
lady_9.children.create([{name: "ソックス"},{name: "スパッツ/レギンス"},{name: "ストッキング/タイツ"},{name: "レッグウォーマー"},{name: "その他"}])
lady_10.children.create([{name: "ニットキャップ/ビーニー"},{name: "ハット"},{name: "ハンチング/ベレー帽"},{name: "キャップ"},{name: "キャスケット"},{name: "麦わら帽子"},{name: "その他"}])
lady_11.children.create([{name: "ハンドバッグ"},{name: "トートバッグ"},{name: "エコバッグ"},{name: "リュック/バックパック"},{name: "ボストンバッグ"},{name: "スポーツバッグ"},{name: "ショルダーバッグ"},{name: "クラッチバッグ"},{name: "ポーチ/バニティ"},{name: "ボディバッグ/ウェストバッグ"},{name: "マザーズバッグ"},{name: "メッセンジャーバッグ"},{name: "ビジネスバッグ"},{name: "旅行用バッグ/キャリーバッグ"},{name: "ショップ袋"},{name: "和装用バッグ"},{name: "かごバッグ"},{name: "その他"}])
lady_12.children.create([{name: "ネックレス"},{name: "ブレスレット"},{name: "バングル/リストバンド"},{name: "リング"},{name: "ピアス(片耳用)"},{name: "ピアス(両耳用)"},{name: "イヤリング"},{name: "アンクレット"},{name: "ブローチ/コサージュ"},{name: "チャーム"},{name: "その他"}])
lady_13.children.create([{name: "ヘアゴム/シュシュ"},{name: "ヘアバンド/カチューシャ"},{name: "ヘアピン"},{name: "その他"}])
lady_14.children.create([{name: "長財布"},{name: "折り財布"},{name: "コインケース/小銭入れ"},{name: "名刺入れ/定期入れ"},{name: "キーケース"},{name: "キーホルダー"},{name: "手袋/アームカバー"},{name: "ハンカチ"},{name: "ベルト"},{name: "マフラー/ショール"},{name: "ストール/スヌード"},{name: "バンダナ/スカーフ"},{name: "ネックウォーマー"},{name: "サスペンダー"},{name: "サングラス/メガネ"},{name: "モバイルケース/カバー"},{name: "手帳"},{name: "イヤマフラー"},{name: "傘"},{name: "レインコート/ポンチョ"},{name: "ミラー"},{name: "タバコグッズ"},{name: "その他"}])
lady_15.children.create([{name: "腕時計(アナログ)"},{name: "腕時計(デジタル)"},{name: "ラバーベルト"},{name: "レザーベルト"},{name: "金属ベルト"},{name: "その他"}])
lady_16.children.create([{name: "水着セパレート"},{name: "水着ワンピース"},{name: "水着スポーツ用"},{name: "その他"}])
lady_17.children.create([{name: "スカートスーツ上下"},{name: "パンツスーツ上下"},{name: "ドレス"},{name: "パーティーバッグ"},{name: "シューズ"},{name: "ウェディング"},{name: "その他"}])
lady_18.children.create([{name: "トップス"},{name: "アウター"},{name: "インナー"},{name: "ワンピース"},{name: "パンツ/スパッツ"},{name: "スカート"},{name: "パジャマ"},{name: "授乳服"},{name: "その他"}])
lady_19.children.create([{name: "浴衣"},{name: "着物"},{name: "振袖"},{name: "長襦袢/半襦袢"},{name: "コスプレ"},{name: "下着"},{name: "その他"}])

# 子階層_メンズ
men_1  = men.children.create(name: "トップス")
men_2  = men.children.create(name: "ジャケット/アウター")
men_3  = men.children.create(name: "パンツ")
men_4  = men.children.create(name: "靴")
men_5  = men.children.create(name: "バッグ")
men_6  = men.children.create(name: "スーツ")
men_7  = men.children.create(name: "帽子")
men_8  = men.children.create(name: "アクセサリー")
men_9  = men.children.create(name: "小物")
men_10 = men.children.create(name: "時計")
men_11 = men.children.create(name: "水着")
men_12 = men.children.create(name: "レッグウェア")
men_13 = men.children.create(name: "アンダーウェア")
men_14 = men.children.create(name: "その他")

# 孫階層_メンズ
men_1.children.create([{name: "Tシャツ"},{name: "カットソー"},{name: "シャツ"},{name: "ポロシャツ"},{name: "タンクトップ"},{name: "ニット/セーター"},{name: "パーカー"},{name: "カーディガン"},{name: "スウェット"},{name: "ジャージ"},{name: "ベスト"},{name: "その他"}])
men_2.children.create([{name: "テーラードジャケット"},{name: "ノーカラージャケット"},{name: "Gジャン/デニムジャケット"},{name: "レザージャケット"},{name: "ダウンジャケット"},{name: "ライダースジャケット"},{name: "ミリタリージャケット"},{name: "ナイロンジャケット"},{name: "フライトジャケット"},{name: "ダッフルコート"},{name: "ピーコート"},{name: "ステンカラーコート"},{name: "トレンチコート"},{name: "モッズコート"},{name: "チェスターコート"},{name: "スタジャン"},{name: "スカジャン"},{name: "ブルゾン"},{name: "マウンテンパーカー"},{name: "ダウンベスト"},{name: "カバーオール"},{name: "その他"}])
men_3.children.create([{name: "デニム/ジーンズ"},{name: "ワークパンツ/カーゴパンツ"},{name: "スラックス"},{name: "チノパン"},{name: "ショートパンツ"},{name: "ペインターパンツ"},{name: "サルエルパンツ"},{name: "オーバーオール"},{name: "その他"}])
men_4.children.create([{name: "スニーカー"},{name: "サンダル"},{name: "ブーツ"},{name: "モカシン"},{name: "ドレス/ビジネス"},{name: "長靴/レインシューズ"},{name: "デッキシューズ"},{name: "その他"}])
men_5.children.create([{name: "ショルダーバッグ"},{name: "トートバッグ"},{name: "ボストンバッグ"},{name: "リュック/バックパック"},{name: "ウエストポーチ"},{name: "ボディーバッグ"},{name: "ドラムバッグ"},{name: "ビジネスバッグ"},{name: "トラベルバッグ"},{name: "メッセンジャーバッグ"},{name: "エコバッグ"},{name: "その他"}])
men_6.children.create([{name: "スーツジャケット"},{name: "スーツベスト"},{name: "スラックス"},{name: "セットアップ"},{name: "その他"}])
men_7.children.create([{name: "キャップ"},{name: "ハット"},{name: "ニットキャップ/ビーニー"},{name: "ハンチング/ベレー帽"},{name: "キャスケット"},{name: "サンバイザー"},{name: "その他"}])
men_8.children.create([{name: "ネックレス"},{name: "ブレスレット"},{name: "バングル/リストバンド"},{name: "リング"},{name: "ピアス(片耳用)"},{name: "ピアス(両耳用)"},{name: "アンクレット"},{name: "その他"}])
men_9.children.create([{name: "長財布"},{name: "折り財布"},{name: "マネークリップ"},{name: "コインケース/小銭入れ"},{name: "名刺入れ/定期入れ"},{name: "キーケース"},{name: "キーホルダー"},{name: "ネクタイ"},{name: "手袋"},{name: "ハンカチ"},{name: "ベルト"},{name: "マフラー"},{name: "ストール"},{name: "バンダナ"},{name: "ネックウォーマー"},{name: "サスペンダー"},{name: "ウォレットチェーン"},{name: "サングラス/メガネ"},{name: "モバイルケース/カバー"},{name: "手帳"},{name: "ストラップ"},{name: "ネクタイピン"},{name: "カフリンクス"},{name: "イヤマフラー"},{name: "傘"},{name: "レインコート"},{name: "ミラー"},{name: "タバコグッズ"},{name: "その他"}])
men_10.children.create([{name: "腕時計(アナログ)"},{name: "腕時計(デジタル)"},{name: "ラバーベルト"},{name: "レザーベルト"},{name: "金属ベルト"},{name: "その他"}])
men_11.children.create([{name: "一般水着"},{name: "スポーツ用"},{name: "アクセサリー"},{name: "その他"}])
men_12.children.create([{name: "ソックス"},{name: "レギンス/スパッツ"},{name: "レッグウォーマー"},{name: "その他"}])
men_13.children.create([{name: "トランクス"},{name: "ボクサーパンツ"},{name: "その他"}])
men_14.children.create([{name: "すべて"}])

# 子階層_ベビー・キッズ
baby_kids_1  = baby_kids.children.create(name: "ベビー服(女の子用) ~95cm")
baby_kids_2  = baby_kids.children.create(name: "ベビー服(男の子用) ~95cm")
baby_kids_3  = baby_kids.children.create(name: "ベビー服(男女兼用) ~95cm")
baby_kids_4  = baby_kids.children.create(name: "キッズ服(女の子用) 100cm~")
baby_kids_5  = baby_kids.children.create(name: "キッズ服(男の子用) 100cm~")
baby_kids_6  = baby_kids.children.create(name: "キッズ服(男女兼用) 100cm~")
baby_kids_7  = baby_kids.children.create(name: "キッズ靴")
baby_kids_8  = baby_kids.children.create(name: "子ども用ファッション小物")
baby_kids_9 = baby_kids.children.create(name: "その他")

# 孫階層_ベビー・キッズ
baby_kids_1.children.create([{name: "トップス"},{name: "アウター"},{name: "パンツ"},{name: "スカート"},{name: "ワンピース"},{name: "ベビードレス"},{name: "おくるみ"},{name: "下着/肌着"},{name: "パジャマ"},{name: "ロンパース"},{name: "その他"}])
baby_kids_2.children.create([{name: "トップス"},{name: "アウター"},{name: "パンツ"},{name: "おくるみ"},{name: "下着/肌着"},{name: "パジャマ"},{name: "ロンパース"},{name: "その他"}])
baby_kids_3.children.create([{name: "トップス"},{name: "アウター"},{name: "パンツ"},{name: "おくるみ"},{name: "下着/肌着"},{name: "パジャマ"},{name: "ロンパース"},{name: "その他"}])
baby_kids_4.children.create([{name: "コート"},{name: "ジャケット/上着"},{name: "トップス(Tシャツ/カットソー)"},{name: "トップス(トレーナー)"},{name: "トップス(チュニック)"},{name: "トップス(タンクトップ)"},{name: "トップス(その他)"},{name: "スカート"},{name: "パンツ"},{name: "ワンピース"},{name: "セットアップ"},{name: "パジャマ"},{name: "フォーマル/ドレス"},{name: "和服"},{name: "浴衣"},{name: "甚平"},{name: "水着"},{name: "その他"}])
baby_kids_5.children.create([{name: "コート"},{name: "ジャケット/上着"},{name: "トップス(Tシャツ/カットソー)"},{name: "トップス(トレーナー)"},{name: "トップス(その他)"},{name: "パンツ"},{name: "セットアップ"},{name: "パジャマ"},{name: "フォーマル/ドレス"},{name: "和服"},{name: "浴衣"},{name: "甚平"},{name: "水着"},{name: "その他"}])
baby_kids_6.children.create([{name: "コート"},{name: "ジャケット/上着"},{name: "トップス(Tシャツ/カットソー)"},{name: "トップス(トレーナー)"},{name: "トップス(その他)"},{name: "ボトムス"},{name: "パジャマ"},{name: "その他"}])
baby_kids_7.children.create([{name: "スニーカー"},{name: "サンダル"},{name: "ブーツ"},{name: "長靴"},{name: "その他"}])
baby_kids_8.children.create([{name: "靴下/スパッツ"},{name: "帽子"},{name: "エプロン"},{name: "サスペンダー"},{name: "タイツ"},{name: "ハンカチ"},{name: "バンダナ"},{name: "ベルト"},{name: "マフラー"},{name: "傘"},{name: "手袋"},{name: "スタイ"},{name: "バッグ"},{name: "その他"}])
baby_kids_9.children.create([{name: "その他"}])
