# user1 = User.create!(username: "Emily", email: "emily@mail.com", password: "emily@mail.com", birthday: '1995-10-15', points: 700, height: 160.8, weight: 50.3, waist: 60.3, bust: 80.7, hip: 90.5)
# user2 = User.create!(username: "Rose", email: "rose@mail.com", password: "rose@mail.com", birthday: '1992-10-15', points: 700, height: 170.8, weight: 50.8, waist: 60.3, bust: 82.7, hip: 90.5)
# user3 = User.create!(username: "Emilia", email: "emilia@mail.com", password: "emilia@mail.com", birthday: '1998-10-15', points: 58, height: 153.8, weight: 45.3, waist: 70.3, bust: 82.7, hip: 96.5)
# user4 = User.create!(username: "Mike", email: "mike@mail.com", password: "mike@mail.com", birthday: '1990-10-15', points: 23, height: 180.8, weight: 71.3)
# user5 = User.create!(username: "Olivia", email: "olivia@mail.com", password: "olivia@mail.com", birthday: '2000-10-15', points: 500, height: 180.8, weight: 52.8, waist: 60.3, bust: 77.7, hip: 90.5)
#
#
# address1 = Address.create!(user_id: user1.id, first_name: 'Emily', last_name: 'Cooper', postcode: '1540001', prefecture_code: 13, address_city: '世田谷区', address_street: '池尻1-2-3',phone_number: '1111111111')
# address2 = Address.create!(user_id: user1.id, first_name: 'Emily', last_name: 'Cooper', postcode: '6780064', prefecture_code: 04, address_city: '相生市', address_street: '青葉台1-2-3', address_building: 'ビル101', phone_number: '22222222222')
# address3 = Address.create!(user_id: user2.id, first_name: 'Rose', last_name: 'Mason', postcode: '2480026', prefecture_code: 14, address_city: '鎌倉市', address_street: '七里ヶ浜1-2-3', address_building: 'ビル101', phone_number: '3333333333')
# address4 = Address.create!(user_id: user3.id, first_name: 'Emilia', last_name: 'Packer', postcode: '2480026', prefecture_code: 14, address_city: '鎌倉市', address_street: '七里ヶ浜1-2-3', address_building: 'ビル101', phone_number: '4444444444')
# address5 = Address.create!(user_id: user4.id, first_name: 'Olivia', last_name: 'Grealish', postcode: '3999300', prefecture_code: 20, address_city: '北安曇郡', address_street: '白馬村1-2-3', address_building: 'ビル101', phone_number: '5555555555')
#
#
# retailer1 = Retailer.create!(
#   name: 'afendssss',
#   description: '７０年代オーストラリアのヒッピーカルチャーの聖地として有名なバイロンベイにて、その第二世代として生まれ育ったDeclan Wise（デクラン・ワイズ）、Jono Salfield（ジョノ・サーフィールド）を中心に２００６年に設立されたオルタネートファッション＆ライフスタイルブランド。Punk-Rock をルーツとしたバイロンベイのモダンデイカルチャーとフリーリビングアティテュードをテーマに、自宅のバックヤードにてハンドスクリーンプリンティングを施したオリジナルアートTシャツの販売からスタートした後、またたくまにオーストラリアで成功をおさめ、現在世界１５カ国に広がるブランドへと成長。
#   Question Everything（全てのことに疑問を持つこと）を信条とし、そのあくなき探究心と創造性により、アート、ミュージック、サーフ、ストリートと共にある彼らの日常のライフスタイルをテキスタイルに落とし込み、Afends way of lifeとしてバイロンベイより提案している。',
#   website_url: 'https://afends.com/',
#   phone_number: '1234567890',
#   address: '東京都渋谷区1-2-3',
#   email: 'afends@test.jp',
#   password: 'afends@test.jp')
#
# retailer2 = Retailer.create!(
#   name: 'Ted Bakerrrr',
#   description: 'Ted Baker Londonの始まりは、イギリスのグラスゴーの小さなシャツ専門店。現在はグローバルライフスタイルブランドとして世界中に500以上の店舗を展開。「No Ordinary Designer Label」として、Ted Bakerのデザインはブリティッシュユーモアを取り入れたクオリティの高いデザインが魅力的なブランドです。',
#   website_url: 'https://tedbaker.jp/',
#   phone_number: '1234567890',
#   address: '東京都渋谷区1-2-3',
#   email: 'tedbaker@test.jp',
#   password: 'tedbaker@test.jp')
#
# retailer3 = Retailer.create!(
#   name: 'Stella McCartneyyyy',
#   description: 'スポーツとファッションのどちらも犠牲にできない欲張りな女性のために、adidasのスポーツテクノロジーとステラ・マッカートニーのデザインが融合し、最高のスポーツパフォーマンスと美しさを引き出すハイエンドスポーツウエア　adidas by Stella McCartney',
#   website_url: 'https://www.stellamccartney.com/jp/ja/',
#   phone_number: '1234567890',
#   address: '東京都渋谷区1-2-3',
#   email: 'stella@test.jp',
#   password: 'stella@test.jp')
#
# retailer4 = Retailer.create!(
#   name: 'Maison Kitsuneeee',
#   description: '2002年にGildas Loaëc （ジルダ・ロアエック）とMasaya Kuroki （黒木理也）のふたりにより設立。
#   ファッションブランドの「Maison Kitsuné（メゾン キツネ）」、ミュージックレーベルの「Kitsuné Musique（キツネ ミュージック）」、カフェの「Café Kitsuné（カフェ キツネ）」を通じ、インスピレーションあふれるユニークなアール・ド・ヴィーヴル
#   （フランス語で「暮らしの芸術」の意）を発信しています。ブランド設立から19年間、パリと東京を拠点とする多面的なブランドは一貫して成長し続け、グローバルなインフルーエンスパワーを自然と高めていき、世界中に熱心なファンを増やしています。',
#   website_url: 'https://maisonkitsune.com/jp/',
#   phone_number: '1234567890',
#   address: '東京都渋谷区1-2-3',
#   email: 'maisonkitune@test.jp',
#   password: 'maisonkitune@test.jp')
#
# retailer5 = Retailer.create!(
#   name: 'Joueteeee',
#   description: 'スペシャルなシチュエーションだけでなく、いつもお洒落を楽しみたい。流行とともに歳を重ねてきたファッションに敏感な大人の女性に向けてそれぞれの個性をより輝かせるジュエリーを発信します。',
#   website_url: 'https://www.jouete.com/',
#   phone_number: '1234567890',
#   address: '東京都渋谷区1-2-3',
#   email: 'jouete@test.jp',
#   password: 'jouete@test.jp')
#
#
# retailer1.logo.attach(io: File.open("./db/images/afends.png"), filename: "afends.png")
# retailer2.logo.attach(io: File.open("./db/images/TedBaker.png"), filename: "TedBaker.png")
# retailer3.logo.attach(io: File.open("./db/images/stellamccartney.jpeg"), filename: "stellamccartney.jpeg")
# retailer4.logo.attach(io: File.open("./db/images/maisonkitune.jpeg"), filename: "maisonkitune.jpeg")
# retailer5.logo.attach(io: File.open("./db/images/jouete.jpeg"), filename: "jouete.jpeg")
#
#
# women_1 = Category.create(name: "レディース /トップス")
# women_2 = Category.create(name: "レディース /パンツ")
# women_3 = Category.create(name: "レディース /スカート")
# women_4 = Category.create(name: "レディース /ワンピース")
# women_5 = Category.create(name: "レディース /ジャケット")
# women_6 = Category.create(name: "レディース /コート")
# women_7 = Category.create(name: "レディース /靴")
# women_8 = Category.create(name: "レディース /アクセサリー")
# women_9 = Category.create(name: "レディース /バッグ")
# women_10 = Category.create(name: "レディース /その他")
# unisex_1 = Category.create(name: "ユニセックス /帽子")
#
# men_1 = Category.create(name: "メンズ /トップス")
# men_2 = Category.create(name: "メンズ /パンツ")
# men_3 = Category.create(name: "メンズ /ジャケット")
# men_4 = Category.create(name: "メンズ /コート")
# men_5 = Category.create(name: "メンズ /スポーツウェア")
# men_6 = Category.create(name: "メンズ /靴")
# men_7 = Category.create(name: "メンズ /バッグ")
# men_8 = Category.create(name: "メンズ /アクセサリー")
# men_9 = Category.create(name: "メンズ /その他")
#
# women_1.children.create([{name: "Tシャツ"},{name: "クロップドTシャツ"},{name: "カットソー"},{name: "シャツ/ブラウス"},{name: "ポロシャツ"},{name: "キャミソール"},{name: "タンクトップ"},{name: "チューブトップ"},{name: "トレーナー/スウェット"},{name: "パーカー"},{name: "ニット/セーター"},{name: "タートルネック"},{name: "カーディガン"},{name: "その他"}])
# women_2.children.create([{name: "デニム/ジーンズ"},{name: "スラックス"},{name: "チノパン"},{name: "ショートパンツ"},{name: "カジュアルパンツ"},{name: "ハーフパンツ"},{name: "クロップドパンツ"},{name: "オーバーオール"},{name: "オールインワン"},{name: "サルエルパンツ"},{name: "ガウチョパンツ"},{name: "その他"}])
# women_3.children.create([{name: "ショート丈スカート"},{name: "ひざ丈スカート"},{name: "ロングスカート"},{name: "キュロット"},{name: "その他"}])
# women_4.children.create([{name: "ショート丈ワンピース"},{name: "ひざ丈ワンピース"},{name: "ロングワンピース"},{name: "ジャンプスーツ /セットアップ"},{name: "パーティ用ドレス"},{name: "柄ドレス"},{name: "その他"}])
# women_5.children.create([{name: "テーラードジャケット"},{name: "ノーカラージャケット"},{name: "デニムジャケット"},{name: "レザージャケット"},{name: "MA-1"},{name: "ミリタリージャケット"},{name: "ダウンベスト"},{name: "ジャンパー/ブルゾン"},{name: "その他"}])
# women_6.children.create([{name: "ダウンジャケット"},{name: "ロングコート"},{name: "トレンチコート"},{name: "ダッフルコート"},{name: "ピーコート"},{name: "チェスターコート"},{name: "モッズコート"},{name: "毛皮/ファーコート"},{name: "スプリングコート"},{name: "その他"}])
# women_7.children.create([{name: "ハイヒール/パンプス"},{name: "ブーツ"},{name: "サンダル"},{name: "スニーカー"},{name: "ミュール"},{name: "モカシン"},{name: "ローファー/革靴"},{name: "フラットシューズ/バレエシューズ"},{name: "長靴/レインシューズ"},{name: "その他"}])
# women_8.children.create([{name: "ネックレス"},{name: "ブレスレット"},{name: "バングル/リストバンド"},{name: "リング"},{name: "ピアス"},{name: "イヤリング"},{name: "アンクレット"},{name: "ブローチ/コサージュ"},{name: "チャーム"},{name: "その他"}])
# women_9.children.create([{name: "ハンドバッグ"},{name: "レザーバッグ"},{name: "トートバッグ"},{name: "エコバッグ"},{name: "リュック/バックパック"},{name: "ショルダーバッグ"},{name: "クラッチバッグ"},{name: "ポーチ/バニティ"},{name: "ウェストバッグ"},{name: "ビジネスバッグ"},{name: "かごバッグ"},{name: "その他"}])
# women_10.children.create([{name: "水着セパレート"},{name: "水着ワンピース"},{name: "水着スポーツ用"},{name: "ビキニ"},{name: "ルームウェア"},{name: "浴衣"},{name: "その他"}])
#
# men_1.children.create([{name: "Tシャツ"},{name: "カットソー"},{name: "シャツ"},{name: "ポロシャツ"},{name: "タンクトップ"},{name: "ニット/セーター"},{name: "パーカー"},{name: "カーディガン"},{name: "スウェット"},{name: "ジャージ"},{name: "ベスト"},{name: "その他"}])
# men_2.children.create([{name: "デニム/ジーンズ"},{name: "ワークパンツ/カーゴパンツ"},{name: "スラックス"},{name: "チノパン"},{name: "ショートパンツ"},{name: "ペインターパンツ"},{name: "サルエルパンツ"},{name: "オーバーオール"},{name: "その他"}])
# men_3.children.create([{name: "テーラードジャケット"},{name: "ノーカラージャケット"},{name: "Gジャン/デニムジャケット"},{name: "レザージャケット"},{name: "ミリタリージャケット"},{name: "ナイロンジャケット"},{name: "マウンテンパーカー"},{name: "その他"}])
# men_4.children.create([{name: "ダウンジャケット"},{name: "ダッフルコート"},{name: "ピーコート"},{name: "ステンカラーコート"},{name: "トレンチコート"},{name: "モッズコート"},{name: "チェスターコート"},{name: "ダウンベスト"},{name: "カバーオール"},{name: "その他"}])
# men_5.children.create([{name: "ジムウェア - トップス"},{name: "ジムウェア - ボトムス"},{name: "スウェット（上）"},{name: "スウェット（下）"},{name: "その他"}])
# men_6.children.create([{name: "スニーカー"},{name: "サンダル"},{name: "ブーツ"},{name: "モカシン"},{name: "ドレス/ビジネス"},{name: "長靴/レインシューズ"},{name: "デッキシューズ"},{name: "その他"}])
# men_7.children.create([{name: "ショルダーバッグ"},{name: "トートバッグ"},{name: "ボストンバッグ"},{name: "リュック/バックパック"},{name: "ウエストポーチ"},{name: "ボディーバッグ"},{name: "ビジネスバッグ"},{name: "メッセンジャーバッグ"},{name: "エコバッグ"},{name: "その他"}])
# men_8.children.create([{name: "ネックレス"},{name: "ブレスレット"},{name: "バングル/リストバンド"},{name: "リング"},{name: "ピアス(片耳用)"},{name: "ピアス(両耳用)"},{name: "アンクレット"},{name: "その他"}])
# men_9.children.create([{name: "水着"},{name: "スーツジャケット"},{name: "スーツベスト"},{name: "スラックス"},{name: "セットアップ"},{name: "その他"}])
# unisex_1.children.create([{name: "キャップ"},{name: "ニットキャップ/ビーニー"},{name: "ハット"},{name: "ハンチング/ベレー帽"},{name: "キャップ"},{name: "キャスケット"},{name: "麦わら帽子"},{name: "その他"}])
#
#
# clothe15 = Clothe.new(
#   retailer_id: retailer5.id,
#   name: 'タートルネック',
#   description: '■デザイン
#     ベーシックで使いやすいリブタートル。 伸縮性のあるリブ素材で、着心地はもちろんすっきり見えも叶います。
#     伸びも良く体にフィットするのでインナーとして着ても◎ 袖口にはスリットを施し、さりげないポイントになっています。
#
#     ■コーディネート
#     体にフィットするデザインなので、パンツやスカートにインして着るとすっきりとバランス良く着こなせます。
#     一枚で着るのはもちろん、レイヤードコーデのインナーとしても活躍します。',
#   size:'サイズ 身幅 肩幅 着丈 そで丈
#         S :    47   38  60    52
#         M, L： 51   42   68   59',
#   price: 5800,
#   stocks_attributes: [ { size: 2, color: 1, quantity: 50 },
#                     { size: 3, color: 1, quantity: 50 },
#                     { size: 4, color: 1, quantity: 50 }, ],
#   category_ids: [32]
# )
# clothe15.images.attach(io: File.open( "./db/images/clothes15.jpg"), filename: "clothes15.jpg")
# clothe15.save!
#
# clothe16 = Clothe.new(
#   retailer_id: retailer4.id,
#   name: 'Fluffy Coat',
#   description: '金ボタンでクラシックに。カーディガン感覚で着こなせるノーカラージャケット
#                 ---
#                 Design/Styling
#                 カーディガン感覚でかっちりし過ぎず気軽に着られるノーカラージャケット。
#                 後ろにダーツを入れたコクーンシルエットと、袖にも立体感を出した構築的なデザインが特徴。
#                 よこはぎを入れて、スラッシュポケットにすることでスッキリした印象に。
#                 やりすぎないオーバーサイズなのでブルゾン感覚で
#                 アウターとしてもカーデ感覚でも着られて、程よいきちんと感が叶います。',
#   size:'サイズ 身幅 肩幅 着丈 そで丈
#         S :    47   38  60    52
#         M, L： 51   42   68   59',
#   price: 15500,
#   stocks_attributes: [ { size: 2, color: 4, quantity: 50 },
#                     { size: 3, color: 4, quantity: 50 }, ],
#   category_ids: [75]
# )
# clothe16.images.attach(io: File.open( "./db/images/review2.jpg"), filename: "review2.jpg")
# clothe16.save!
#
# clothe6 = Clothe.new(
#   retailer_id: retailer2.id,
#   name: 'センタープレス スラックス',
#   description: '美脚効果抜群のセミフレアパンツに、待望のスラックスパンツが登場‼
#
#                 普段の着こなしに取り入れるだけで一気にこなれ感がアップします。
#                 上品なウエストデザインと、適度にハリのあるさらりとした生地が高見えポイント◎
#
#                 また透け感のない生地を使用することで裏地を無くし、よりすっきりとしたシルエットに。
#                 定番に使えるブラックをはじめ、コーディネートの差し色に使いやすい旬のカラー展開にも注目です。',
#   size:'サイズ ウエスト ヒップ パンツ丈 股上 股下
#         S（S） 64 92 99 31 71.5
#         M（M） 68 96 100 31.5 72
#         L（L） 72 100 101 32 72.5',
#   price: 12000,
#   stocks_attributes: [ {size: 1, color: 13, quantity: 50 },
#                       {size: 2, color: 13, quantity: 20 },
#                       {size: 3, color: 13, quantity: 50 },
#                       {size: 4, color: 13, quantity: 10 }, ],
#   category_ids: [36]
# )
# clothe6.images.attach(io: File.open( "./db/images/clothes6.jpg"), filename: "clothes6.jpg" )
# clothe6.images.attach(io: File.open("./db/images/clothes_6.jpg"), filename: "clothes_6.jpg" )
# clothe6.save!
#
# clothe7 = Clothe.new(
#   retailer_id: retailer3.id,
#   name: 'リネンタッチ  ジャンプスーツ',
#   description: '■コーディネート
#                   一枚でサマになる一着で、コーディネートに悩む心配がありません。
#                   足元はサンダルにして、リゾート感をプラスすると◎
#                   Vネックなので、インナーに差し色を加えてアクセントをつけても素敵です。
#
#                 ■デザイン
#                   配色が鮮やかな夏に一枚で着たいジャンプスーツの登場！
#                   テロッとしたレーヨン素材で着心地も良く、夏にピッタリのアイテムです。
#                   パンツもフレアシルエットできれいなスタイルで着れるのも嬉しいポイントです。',
#
#   size:'サイズ ウエスト ヒップ パンツ丈 股上 股下
#         S（S） 64 92 99 31 71.5
#         M（M） 68 96 100 31.5 72
#         L（L） 72 100 101 32 72.5',
#   price: 7000,
#   stocks_attributes: [ {size: 2, color: 6, quantity: 20 },
#                       {size: 3, color: 6, quantity: 10 }, ],
#   category_ids: [43, 55]
# )
# clothe7.images.attach(io: File.open( "./db/images/clothes7.jpg"), filename: "clothes7.jpg")
# clothe7.images.attach(io: File.open("./db/images/clothes_7.jpg"), filename: "clothes_7.jpg")
# clothe7.images.attach(io: File.open("./db/images/clothes_7_1.jpg"), filename: "clothes_7_1.jpg")
# clothe7.save!
#
# clothe8 = Clothe.new(
#   retailer_id: retailer4.id,
#   name: 'Flare dress',
#   description: '1枚で華やぐ、ふんわりとしたフレアーシルエット＆大胆プリント、ふんわりと柔らかいワンピース。
#     大きめのモチーフとゆったりとしたフレアーシルエットは体型カバーにも効果的。
#     お客様からのリクエストにお答えして、ロング丈も登場。',
#
#   size:'サイズ ウエスト ヒップ パンツ丈 股上 股下
#         S（S） 64 92 99 31 71.5
#         M（M） 68 96 100 31.5 72
#         L（L） 72 100 101 32 72.5',
#   price: 7500,
#   stocks_attributes: [size: 0, color: 6, quantity: 50],
#   category_ids: [54, 57]
# )
# clothe8.images.attach(io: File.open( "./db/images/clothes8.jpg"), filename: "clothes8.jpg")
# clothe8.images.attach(io: File.open("./db/images/clothes_8.jpg"), filename: "clothes_8.jpg")
# clothe8.images.attach(io: File.open("./db/images/clothes_8_1.jpg"), filename: "clothes_8_1.jpg")
# clothe8.save!
#
# clothe9 = Clothe.new(
#   retailer_id: retailer1.id,
#   name: 'Sweatshirt Pullover',
#   description: '刺繍ロゴデザインスウェットトレーナー。
#
#     定番スウェットもユニセックスに着られルオーバーサイズシルエットでこなれ感UP♪
#     ワンポイントでロゴプリントを施したこだわりに1枚です。
#     こだわりのレイヤード風デザインが古着っぽさをプラス◎
#
#     着心地良いの素材でやわらかな風合いの大人が着れるロゴスウェットに仕上げました。',
#
#   size:'サイズ 身幅 肩幅 着丈 そで丈
#         S :    47   38  60    52
#         M, L： 51   42   68   59',
#   price: 6800,
#   stocks_attributes: [ {size: 2, color: 0, quantity: 20 },
#                       {size: 3, color: 0, quantity: 10 }, ],
#   category_ids: [29]
# )
# clothe9.images.attach(io: File.open( "./db/images/clothes9.jpg"), filename: "clothes9.jpg")
# clothe9.images.attach(io: File.open("./db/images/clothes_9.jpg"), filename: "clothes_9.jpg")
# clothe9.images.attach(io: File.open("./db/images/clothes_9_1.jpg"), filename: "clothes_9_1.jpg")
# clothe9.save!
#
# clothe10 = Clothe.new(
#   retailer_id: retailer2.id,
#   name: 'Aラインワンピース',
#   description: 'ハイウエストの切り替えですっきり脚長に見せてくれます。
#     こなれたバックリボンデザインがおしゃれなロングワンピース。
#     オトナ女子に似合う長めの着丈は、オフィスシーンからちょっとしたお出掛けまで気軽に着こなせる1枚です。',
#   size:'サイズ 身幅 肩幅 着丈 そで丈
#         S :    47   38  60    52
#         M, L： 51   42   68   59',
#   price: 6800,
#   stocks_attributes: [ {size: 2, color: 0, quantity: 20 },
#                       {size: 3, color: 0, quantity: 10 }, ],
#   category_ids: [54]
# )
# clothe10.images.attach(io: File.open( "./db/images/clothes10.jpg"), filename: "clothes10.jpg")
# clothe10.images.attach(io: File.open("./db/images/clothes_10.jpg"), filename: "clothes_10.jpg")
# clothe10.images.attach(io: File.open("./db/images/clothes_10_1.jpg"), filename: "clothes_10_1.jpg")
# clothe10.save!
#
# clothe11 = Clothe.new(
#   retailer_id: retailer2.id,
#   name: 'SEPARATE DRESS',
#   description: 'ハイウエストの切り替えですっきり脚長に見せてくれます。
#     これだけでサマになる一着で、コーディネートに悩む心配がありません。
#     オトナ女子に似合う長めの着丈は、オフィスシーンからちょっとしたお出掛けまで気軽に着こなせる1枚です。
#
#     それぞれトップス、スカートを別々でも着て頂けるので、単品でのスタイリングもお楽しみいただけます。',
#   size:'サイズ 身幅 肩幅 着丈 そで丈
#         S :    47   38  60    52
#         M, L： 51   42   68   59',
#   price: 14400,
#   stocks_attributes: [ {size: 2, color: 15, quantity: 20 },
#                       {size: 3, color: 15, quantity: 10 }, ],
#   category_ids: [55, 52, 57]
# )
# clothe11.images.attach(io: File.open( "./db/images/clothes11.jpg"), filename: "clothes11jpg")
# clothe11.images.attach(io: File.open("./db/images/clothes_11.jpg"), filename: "clothes_11.jpg")
# clothe11.save!
#
# clothe12 = Clothe.new(
#   retailer_id: retailer3.id,
#   name: '【WEB限定】モノグラムハンドルバッグ',
#   description: '前回大好評のバッグがWEBだけで再販売！
#
#       コンパクトなサイズ感ですが、マチが広く容量が多いのもポイント♪
#       モノグラムのプリントを施しているので、
#       スタイリングのアクセントになります！
#
#       オールシーズン使用でき、
#       一つ持っていれば大活躍すること間違いなし！！
#
#       ショルダー付きなので持ち方で違った雰囲気を楽しめ、
#       幅広いスタイルにマッチします♪',
#   size:'幅 高さ マチ 持ち手 重量
#         20  18  6    20  約480',
#   price: 15000,
#   stocks_attributes: [size: 0, color: 15, quantity: 20],
#   category_ids: [98]
# )
# clothe12.images.attach(io: File.open( "./db/images/clothes12.jpg"), filename: "clothes12jpg")
# clothe12.images.attach(io: File.open("./db/images/clothes_12.jpg"), filename: "clothes_12.jpg")
# clothe12.save!
#
# clothe13 = Clothe.new(
#   retailer_id: retailer3.id,
#   name: 'テーラードジャケット',
#   description: '【デザイン】
#       短丈デザインなので小柄な方もスッキリと着こなす事ができ、身幅にゆとりがある仕様なのでコンパクトすぎずにご着用頂けます。
#
#       長袖なので初秋から秋本番はもちろん、
#       冬アウターが必要になるまでの 長い期間ご活用いただけます。
#
#       柔らかい素材でかっちりとしすぎず、ジャケットでありながら
#       シャツのようにお召し頂けます。
#
#       【コーディネート】
#       同色で同素材のミニスカート、ショートパンツ、ロングパンツがあるので
#       セットアップ風に着こなしていただくのがおすすめです。
#
#       中はキャミやタンクを合わせると華奢で女性らしい着こなしに
#       カジュアルスタイルがお好みの方はフロントにロゴがあるTシャツなどと
#       合わせていただくのもおすすめです。
#
#       ショート丈なので、ロングスカートやロングパンツとも
#       バランスよく合わせていただけます◎',
#   size:'サイズ 身幅 肩幅 着丈 そで丈
#         S :    47   38  60    52
#         M, L： 51   42   68   59',
#   price: 15000,
#   stocks_attributes: [size: 0, color: 15, quantity: 50],
#   category_ids: [59]
# )
# clothe13.images.attach(io: File.open( "./db/images/clothes13.jpg"), filename: "clothes13.jpg")
# clothe13.save!
#
# clothe14 = Clothe.new(
#   retailer_id: retailer4.id,
#   name: 'チノパン',
#   description: 'スタイルアップ間違いなし!トレンドスタイルが完成するデニムパンツ♪
#                 ●美脚効果をプラスしてくれるトレンドのセミワイドデニムが登場●
#                 シンプルだからこそシルエットにこだわった大人のデニム。
#                 コットンメインの素材で、柔らかいしなやかな肌触りが特徴的！
#                 ハイストレッチで伸びがよく柔らかな生地を使用しているため、はき心地も抜群です。',
#   size:'サイズ	ウエスト	ヒップ	パンツ丈	股上	股下
#         S（S）	64	92	99	31	71.5
#         M（M）	68	96	100	31.5	72
#         L（L）	72	100	101	32	72.5',
#   price: 15000,
#   stocks_attributes: [ { size: 2, color: 0, quantity: 50 },
#                     { size: 3, color: 0, quantity: 50 },
#                     { size: 4, color: 0, quantity: 50 }, ],
#   category_ids: [37, 132]
# )
# clothe14.images.attach(io: File.open( "./db/images/clothes14.jpg"), filename: "clothes14.jpg")
# clothe14.save!
#
# clothe17 = Clothe.new(
#   retailer_id: retailer4.id,
#   name: 'Floral Dress',
#   description: '金ボタンでクラシックに。カーディガン感覚で着こなせるノーカラージャケット
#                 ---
#                 Design/Styling
#                 カーディガン感覚でかっちりし過ぎず気軽に着られるノーカラージャケット。
#                 後ろにダーツを入れたコクーンシルエットと、袖にも立体感を出した構築的なデザインが特徴。
#                 よこはぎを入れて、スラッシュポケットにすることでスッキリした印象に。
#                 やりすぎないオーバーサイズなのでブルゾン感覚で
#                 アウターとしてもカーデ感覚でも着られて、程よいきちんと感が叶います。',
#   size:'サイズ 身幅 肩幅 着丈 そで丈
#         S :    47   38  60    52
#         M, L： 51   42   68   59',
#   price: 11100,
#   stocks_attributes: [size: 0, color: 12, quantity: 50],
#   category_ids: [57, 54]
# )
# clothe17.images.attach(io: File.open( "./db/images/clothes17.jpg"), filename: "clothes17.jpg")
# clothe17.images.attach(io: File.open( "./db/images/clothes_17.jpg"), filename: "clothes_17.jpg")
# clothe17.save!
#
# clothe18 = Clothe.new(
#   retailer_id: retailer3.id,
#   name: 'マウンテンパーカ Silver',
#   description: '金ボタンでクラシックに。カーディガン感覚で着こなせるノーカラージャケット
#                 ---
#                 Design/Styling
#                 カーディガン感覚でかっちりし過ぎず気軽に着られるノーカラージャケット。
#                 後ろにダーツを入れたコクーンシルエットと、袖にも立体感を出した構築的なデザインが特徴。
#                 よこはぎを入れて、スラッシュポケットにすることでスッキリした印象に。
#                 やりすぎないオーバーサイズなのでブルゾン感覚で
#                 アウターとしてもカーデ感覚でも着られて、程よいきちんと感が叶います。',
#   size:'サイズ 身幅 肩幅 着丈 そで丈
#         S :    47   38  60    52
#         M, L： 51   42   68   59',
#   price: 11100,
#   stocks_attributes: [size: 0, color: 10, quantity: 50],
#   category_ids: [144]
# )
# clothe18.images.attach(io: File.open( "./db/images/clothes18.jpg"), filename: "clothes18.jpg")
# clothe18.save!
#
# clothe19 = Clothe.new(
#   retailer_id: retailer1.id,
#   name: 'black jacket',
#   description: '金ボタンでクラシックに。カーディガン感覚で着こなせるノーカラージャケット
#                 ---
#                 Design/Styling
#                 カーディガン感覚でかっちりし過ぎず気軽に着られるノーカラージャケット。
#                 後ろにダーツを入れたコクーンシルエットと、袖にも立体感を出した構築的なデザインが特徴。
#                 よこはぎを入れて、スラッシュポケットにすることでスッキリした印象に。
#                 やりすぎないオーバーサイズなのでブルゾン感覚で
#                 アウターとしてもカーデ感覚でも着られて、程よいきちんと感が叶います。',
#   size:'サイズ 身幅 肩幅 着丈 そで丈
#         S :    47   38  60    52
#         M, L： 51   42   68   59',
#   price: 11100,
#   stocks_attributes: [size: 0, color: 1, quantity: 110],
#   category_ids: [141]
# )
# clothe19.images.attach(io: File.open( "./db/images/clothes19.jpg"), filename: "clothes19.jpg")
# clothe19.images.attach(io: File.open( "./db/images/clothes_19.jpg"), filename: "clothes_19.jpg")
# clothe19.save!
#
# clothe1 = Clothe.new(
#   retailer_id: retailer1.id,
#   name: '【web限定Sサイズ】センタープレスセミフレアスラックス',
#   description: '美脚効果抜群のセミフレアパンツに、待望のスラックスパンツが登場‼
#                 普段の着こなしに取り入れるだけで一気にこなれ感がアップします。
#                 上品なウエストデザインと、適度にハリのあるさらりとした生地が高見えポイント◎
#                 また透け感のない生地を使用することで裏地を無くし、よりすっきりとしたシルエットに。
#                 定番に使えるブラックをはじめ、コーディネートの差し色に使いやすい旬のカラー展開にも注目です。',
#   size:'サイズS　サイズM
#         ウエスト【62cm】【65cm】
#         ヒップ【94cm】【97cm】
#         パンツ丈【97cm】【100cm】
#         股上【31cm】【33cm】
#         股下【66cm】【67cm】
#         もも周り【57cm】【60cm】
#         すそ周り【47cm】【50cm】',
#   price: 12000,
#   stocks_attributes: [ { size: 2, color: 8, quantity: 50 },
#                     { size: 3, color: 8, quantity: 50 },
#                     { size: 4, color: 8, quantity: 50}, ],
#   category_ids: [36]
# )
# clothe1.images.attach(io: File.open( "./db/images/clothes1.jpg"), filename: "clothes1.jpg" )
# clothe1.images.attach(io: File.open("./db/images/clothes_1.jpg"), filename: "clothes_1.jpg" )
# clothe1.save!
#
# clothe2 = Clothe.new(
#   retailer_id: retailer1.id,
#   name: 'Yellow Jacket',
#   description: '金ボタンでクラシックに。カーディガン感覚で着こなせるノーカラージャケット
#                 ---
#                 Design/Styling
#                 カーディガン感覚でかっちりし過ぎず気軽に着られるノーカラージャケット。
#                 後ろにダーツを入れたコクーンシルエットと、袖にも立体感を出した構築的なデザインが特徴。
#                 よこはぎを入れて、スラッシュポケットにすることでスッキリした印象に。
#                 やりすぎないオーバーサイズなのでブルゾン感覚で
#                 アウターとしてもカーデ感覚でも着られて、程よいきちんと感が叶います。',
#   size:'サイズ 身幅 肩幅 着丈 そで丈
#         S :    47   38  60    52
#         M, L： 51   42   68   59',
#   price: 15500,
#   stocks_attributes: [ { size: 2, color: 6, quantity: 10 },
#                     { size: 3, color: 6, quantity: 50 },
#                     { size: 2, color: 1, quantity: 50 },
#                     { size: 3, color: 1, quantity: 50 }, ],
#   category_ids: [62, 141]
# )
# clothe2.images.attach(io: File.open( "./db/images/clothes2.jpg"), filename: "clothes2.jpg" )
# clothe2.images.attach(io: File.open("./db/images/clothes_2.jpg"), filename: "clothes_2.jpg" )
# clothe2.save!
#
# clothe3 = Clothe.new(
#   retailer_id: retailer2.id,
#   name: '【SET UP対応】長袖ショート丈テーラードジャケット',
#   description: '大人気のジャケットに長袖が登場！！
#     【デザイン】
#     短丈デザインなので小柄な方もスッキリと着こなす事ができ、
#     身幅にゆとりがある仕様なのでコンパクトすぎずにご着用頂けます。
#
#     長袖なので初秋から秋本番はもちろん、
#     冬アウターが必要になるまでの 長い期間ご活用いただけます。
#
#     柔らかい素材でかっちりとしすぎず、ジャケットでありながら
#     シャツのようにお召し頂けます。
#
#     【コーディネート】
#     同色で同素材のミニスカート、ショートパンツ、ロングパンツがあるので
#     セットアップ風に着こなしていただくのがおすすめです。
#
#     中はキャミやタンクを合わせると華奢で女性らしい着こなしに
#     カジュアルスタイルがお好みの方はフロントにロゴがあるTシャツなどと
#     合わせていただくのもおすすめです。
#
#     ショート丈なので、ロングスカートやロングパンツとも
#     バランスよく合わせていただけます◎',
#   size:'サイズ 身幅 肩幅 着丈 そで丈
#         S :    47   38  60    52
#         M, L： 51   42   68   59',
#   price: 15000,
#   stocks_attributes: [ { size: 2, color: 0, quantity: 50 },
#                     { size: 3, color: 0, quantity: 50 },
#                     { size: 4, color: 0, quantity: 50 }, ],
#   category_ids: [59, 55]
# )
# clothe3.images.attach(io: File.open( "./db/images/clothes3.jpg"), filename: "clothes3.jpg" )
# clothe3.images.attach(io: File.open("./db/images/clothes_3.jpg"), filename: "clothes_3.jpg" )
# clothe3.save!
#
# clothe4 = Clothe.new(
#   retailer_id: retailer3.id,
#   name: 'ハイウエストストレッチデニムセミワイドパンツ',
#   description: 'スタイルアップ間違いなし!トレンドスタイルが完成するデニムパンツ♪
#                 ●美脚効果をプラスしてくれるトレンドのセミワイドデニムが登場●
#                 シンプルだからこそシルエットにこだわった大人のデニム。
#                 コットンメインの素材で、柔らかいしなやかな肌触りが特徴的！
#                 ハイストレッチで伸びがよく柔らかな生地を使用しているため、はき心地も抜群です。',
#   size:'サイズ	ウエスト	ヒップ	パンツ丈	股上	股下
#         S（S）	64	92	99	31	71.5
#         M（M）	68	96	100	31.5	72
#         L（L）	72	100	101	32	72.5',
#   price: 10000,
#   stocks_attributes: [ { size: 3, color: 16, quantity: 50 },
#                     { size: 4, color: 16, quantity: 50 }, ],
#   category_ids: [35]
# )
# clothe4.images.attach(io: File.open( "./db/images/clothes4.jpg"), filename: "clothes4.jpg" )
# clothe4.images.attach(io: File.open("./db/images/clothes_4.jpg"), filename: "clothes_4.jpg" )
# clothe4.save!
#
# clothe5 = Clothe.new(
#   retailer_id: retailer4.id,
#   name: 'ウォームアップカレッジTEE',
#   description: '・WWG定番のビッグシルエット。身幅が広い為、風通りも良く、快適な着心地。
#                 ・カラーによって、ボディーに馴染んだり映えたりする刺繍ロゴ。肉厚なので、一枚着でもしっかりとした見栄えに。
#                 ・お揃いで着るのもオススメ！ギフトにもピッタリな、ユニセックスで愛用できるアイテム。',
#   size:'サイズ 身幅 肩幅 着丈 そで丈
#         S :    47   38  60    52
#         M, L： 51   42   68   59',
#   price: 5000,
#   stocks_attributes: [size: 0, color: 2, quantity: 50],
#   category_ids: [21,117]
# )
# clothe5.images.attach(io: File.open( "./db/images/clothes5.jpg"), filename: "clothes5.jpg" )
# clothe5.images.attach(io: File.open("./db/images/clothes_5.jpg"), filename: "clothes_5.jpg" )
# clothe5.save!
#
# user1 = User.find(1)
# user2 = User.find(2)
# user3 = User.find(3)
# user4 = User.find(4)
# user5 = User.find(5)
#
#
# Cart.create!([
#   { user_id: user1.id, stock_id: clothe3.stocks.first.id },
#   { user_id: user1.id, stock_id: clothe5.stocks.first.id },
#   { user_id: user2.id, stock_id: clothe1.stocks.first.id },
#   { user_id: user3.id, stock_id: clothe2.stocks.first.id },
#   { user_id: user4.id, stock_id: clothe4.stocks.first.id }
# ])
#
#
# order1 = Order.create!(user_id: user1.id, price: 10000, used_points: 300, paid_price: 9700, first_name: 'Emily', last_name: 'Cooper', postcode: '1540001', prefecture_code: 13, address_city: '世田谷区', address_street: '池尻1-2-3',phone_number: '1111111111')
# order2 = Order.create!(user_id: user1.id, price: 15000, used_points: 600, paid_price: 14400, first_name: 'Emily', last_name: 'Cooper', postcode: '1540001', prefecture_code: 13, address_city: '世田谷区', address_street: '池尻1-2-3',phone_number: '1111111111')
# order3 = Order.create!(user_id: user2.id, price: 15500, used_points: 500, paid_price: 15000, first_name: 'Rose', last_name: 'Mason', postcode: '2480026', prefecture_code: 14, address_city: '鎌倉市', address_street: '七里ヶ浜1-2-3', address_building: 'ビル101', phone_number: '3333333333')
# order4 = Order.create!(user_id: user3.id, price: 12000, used_points: 500, paid_price: 11500, first_name: 'Emilia', last_name: 'Packer', postcode: '2480026', prefecture_code: 14, address_city: '鎌倉市', address_street: '七里ヶ浜1-2-3', address_building: 'ビル101', phone_number: '4444444444')
# order5 = Order.create!(user_id: user5.id, price: 5000, used_points: 0, paid_price: 5000, first_name: 'Olivia', last_name: 'Grealish', postcode: '3999300', prefecture_code: 20, address_city: '北安曇郡', address_street: '白馬村1-2-3', address_building: 'ビル101', phone_number: '5555555555')
#
#
# OrderStock.create!([
#   { order_id: order1.id, stock_id: clothe5.stocks.first.id },
#   { order_id: order1.id, stock_id: clothe4.stocks.first.id },
#   { order_id: order2.id, stock_id: clothe2.stocks.first.id },
#   { order_id: order3.id, stock_id: clothe2.stocks.second.id },
#   { order_id: order3.id, stock_id: clothe17.stocks.first.id },
#   { order_id: order4.id, stock_id: clothe3.stocks.first.id },
#   { order_id: order5.id, stock_id: clothe1.stocks.second.id }
# ])
#
# review1 = Review.create!(
#   user_id: user1.id,
#   clothe_id: clothe5.id,
#   stock_no: clothe5.stocks.first.id,
#   rate: 5.0,
#   content: 'クロップT欲しくて色んな所見たけどこれは丈感ちょうど良かった！！長すぎず短すぎず。袖もちょうどいいし、フィット感ばっちり！！！！'
# )
#
# review2 = Review.create!(
#  user_id: user1.id,
#   clothe_id: clothe2.id,
#   stock_no: clothe2.stocks.first.id,
#   rate: 5.0,
#   content: 'とりま可愛すぎる！一枚あれば大活躍！！！！素材がしっかりしてるので、結構寒くなっても着れそう！！'
# )
#
# review3 = Review.create!(
#   user_id: user2.id,
#   clothe_id: clothe2.id,
#   stock_no: clothe2.stocks.second.id,
#   rate: 4.5,
#   content: '紐が長すぎる！爆笑爆笑爆笑 でもめちゃくちゃデザインは可愛いしいいと思う！162センチの私がMサイズを着てみて、丈がすごく短く感じました！'
# )
#
# review4 = Review.create!(
#   user_id: user3.id,
#   clothe_id: clothe3.id,
#   stock_no: clothe3.stocks.first.id,
#   rate: 5.0,
#   content: '少し大きめなのかな？と思ったけど肩幅も着丈もピッタリ！！これは可愛い！！低身長さんにもオススメです！'
#
# )
#
# review5 = Review.create!(
#   user_id: user5.id,
#   clothe_id: clothe1.id,
#   stock_no: clothe1.stocks.second.id,
#   rate: 5.0,
#   content: '骨格ウェーブです。今までウエストに合わせて買うと丈足りないとかザラでほぼ諦めてたけどこれウエストぴったりだしへそまで隠れるぐらいだから脚長効果抜群。フレアすぎて逆に短足に見える人だったけど写真より全然フレアじゃないから是非買って欲しい。ウエストはサイズ表より小さめかも。ベルト無しでも全然履ける！うれしい！骨格ウェーブ皆これ着て脚長くなろうな( ◠‿◠ )'
# )
#
# review1.images.attach(io: File.open( "./db/images/review1.jpg"), filename: "review1.jpg" )
# review1.images.attach(io: File.open( "./db/images/review_1.jpg"), filename: "review_1.jpg" )
# review2.images.attach(io: File.open( "./db/images/review2.jpg"), filename: "review2.jpg" )
# review3.images.attach(io: File.open( "./db/images/review3.jpg"), filename: "review3.jpg" )
# review4.images.attach(io: File.open( "./db/images/review4.jpg"), filename: "review4.jpg" )
# review4.images.attach(io: File.open( "./db/images/review_4.jpg"), filename: "review_4.jpg" )
# review5.images.attach(io: File.open( "./db/images/review5.jpg"), filename: "review5.jpg" )
#
#
# Favorite.create!([
#   { user_id: user1.id, clothe_id: clothe2.id },
#   { user_id: user1.id, clothe_id: clothe3.id },
#   { user_id: user1.id, clothe_id: clothe4.id },
#   { user_id: user2.id, clothe_id: clothe4.id },
#   { user_id: user3.id, clothe_id: clothe5.id },
#   { user_id: user4.id, clothe_id: clothe3.id },
#   { user_id: user5.id, clothe_id: clothe5.id },
#   { user_id: user3.id, clothe_id: clothe4.id },
#   { user_id: user4.id, clothe_id: clothe4.id },
#   { user_id: user5.id, clothe_id: clothe4.id }
# ])
#
#
user1 = User.find(3)
user2 = User.find(1)
user3 = User.find(2)
user4 = User.find(5)

clothe3 = Clothe.find(3)
clothe4 = Clothe.find(4)
clothe5 = Clothe.find(5)
clothe6 = Clothe.find(6)
clothe7 = Clothe.find(7)
clothe8 = Clothe.find(8)
clothe10 = Clothe.find(10)
clothe11 = Clothe.find(11)
clothe12 = Clothe.find(12)
clothe14 = Clothe.find(14)
clothe15 = Clothe.find(15)
clothe16 = Clothe.find(16)
clothe17 = Clothe.find(17)
clothe18 = Clothe.find(18)
clothe19 = Clothe.find(19)

Review.create([
  { user_id: user3.id,
    clothe_id: clothe19.id,
    stock_no: clothe19.stocks.first.id,
    rate: 5.0,
    content: 'ダンス用のTシャツ探してて、ちょうどいい感じの見つかって嬉しい！生地も意外とさらっとしてて夏も涼しいです！！' },

  { user_id: user1.id,
    clothe_id: clothe19.id,
    stock_no: clothe19.stocks.first.id,
    rate: 4.0,
    content: '青の発色がほんとに綺麗で気に入ってます！！シャツインして白のスカートとか着てチア風にして着てます♡' },

  { user_id: user2.id,
    clothe_id: clothe19.id,
    stock_no: clothe19.stocks.first.id,
    rate: 3.0,
    content: '思ってたよりもプリントが若かったかも・・笑　色も形もかわいいから着るけど！！' },

  { user_id: user4.id,
    clothe_id: clothe19.id,
    stock_no: clothe19.stocks.first.id,
    rate: 4.5,
    content: '模様が綺麗なのでカジュアルにも綺麗めにも着れそうですごくかわいいです！' },

  { user_id: user3.id,
    clothe_id: clothe8.id,
    stock_no: clothe8.stocks.second.id,
    rate: 5.0,
    content: '大当たりすぎる、、、、、本当にかわいいし丈感もスカートの長さも完璧！下のスカートはズボン見たいのが中にあってよかった！' },

  { user_id: user1.id,
    clothe_id: clothe8.id,
    stock_no: clothe8.stocks.first.id,
    rate: 4.0,
    content: 'ウエストが心配でしたが、案の定気を抜くと肉が乗りそう・・笑　服自体はとてもかわいいので、着こなせるように痩せます！！' },

  { user_id: user2.id,
    clothe_id: clothe8.id,
    stock_no: clothe8.stocks.first.id,
    rate: 5.0,
    content: '私は腰の位置が平均より少し高めなので丈足りるかな、と心配だったのですが問題なかったです！！とても可愛くて満足です♡' },


  { user_id: user4.id,
    clothe_id: clothe8.id,
    stock_no: clothe8.stocks.second.id,
    rate: 4.5,
    content: '模様が綺麗なのでカジュアルにも綺麗めにも着れそうですごくかわいいです！' },

  { user_id: user1.id,
    clothe_id: clothe14.id,
    stock_no: clothe14.stocks.first.id,
    rate: 5.0,
    content: '彼氏にプレゼントしたらとても喜んでくれました！！生地は相当分厚いので、冬のそれなりに寒い日でも中も暖かいの着ればいけそう！' },

  { user_id: user2.id,
    clothe_id: clothe14.id,
    stock_no: clothe14.stocks.first.id,
    rate: 5.0,
    content: '自分用に買いました！漆黒でかっこいいのに首周りのモフモフがかわいくて、絶妙さが気に入ってます！！one-sizeなのが不安でしたが、自分はオーバーサイズめでよかった！' },

  { user_id: user3.id,
    clothe_id: clothe14.id,
    stock_no: clothe14.stocks.first.id,
    rate: 5.0,
    content: 'サイズもちょうどよく、デザインも綺麗めで大満足です！！ショート丈だったので、ハイウエストデニムと合わせて着たら可愛いかなあと思います！　着るのが楽しみです！！' },

  { user_id: user4.id,
    clothe_id: clothe14.id,
    stock_no: clothe14.stocks.first.id,
    rate: 5.0,
    content: 'スタイルかなりよく見えます！肩幅もぴったしで、何より素材が気持ちいいです・・！冬が待ち遠しい・・！' },

  { user_id: user1.id,
    clothe_id: clothe11.id,
    stock_no: clothe11.stocks.first.id,
    rate: 4.5,
    content: '太ももの太さもカバーしてくれます！ 暑い日にも着やすい素材で、とてもお気に入りです 155cmで2-3cm丈が余ってしまいました' },

  { user_id: user2.id,
    clothe_id: clothe11.id,
    stock_no: clothe11.stocks.first.id,
    rate: 5.0,
    content: '写真のまんまです！かわいい！160cmの私がSを履いて地面に少し裾が付くくらいです。スニーカーは5cmくらいの厚さのと合わせてます。' },

  { user_id: user3.id,
    clothe_id: clothe11.id,
    stock_no: clothe11.stocks.second.id,
    rate: 5.0,
    content: 'ウエストがゴムになっているので凄く楽チンです。夏にピッタリな生地です。薄いので下着によってはラインの透ける物もあるかもしれません' },

  { user_id: user4.id,
    clothe_id: clothe11.id,
    stock_no: clothe11.stocks.last.id,
    rate: 5.0,
    content: 'サイズもちょうどよく、デザインも綺麗めで大満足です！！' }
])

Review.create([
  { user_id: user1.id,
    clothe_id: clothe10.id,
    stock_no: clothe10.stocks.first.id,
    rate: 4.0,
    content: '私には少し大きかったかも？少し肩幅と袖が余りますが、これはこれでオーバーサイズとしてラフに着れそうで結果よかったです！' },

  { user_id: user2.id,
    clothe_id: clothe10.id,
    stock_no: clothe10.stocks.first.id,
    rate: 5.0,
    content: '色は写真通りで綺麗な発色だけど程よくくすんでいて、とても素敵です！！シンプルなコーデでも一枚で存在感がだせるので気に入ってます♡' },

  { user_id: user3.id,
    clothe_id: clothe10.id,
    stock_no: clothe10.stocks.first.id,
    rate: 5.0,
    content: 'スタイルかなりよく見えます！肩幅もぴったしで、何より素材が気持ちいいです・・！春も秋も使えそうで嬉しい！' },

  { user_id: user4.id,
    clothe_id: clothe10.id,
    stock_no: clothe10.stocks.first.id,
    rate: 5.0,
    content: '少し袖が短かったですが、肩幅はぴったしです！スカートともパンツとも合って既にお気に入りです！' },

  { user_id: user3.id,
    clothe_id: clothe4.id,
    stock_no: clothe4.stocks.second.id,
    rate: 5.0,
    content: 'ハイウエストでバックデザインも可愛くて、脚長効果絶大！！！毎日着たいくらい気に入ってます！ウエストは紐で調整できるので、お腹いっぱいの時も安心♡笑' },

  { user_id: user1.id,
    clothe_id: clothe4.id,
    stock_no: clothe4.stocks.first.id,
    rate: 4.0,
    content: '私には少し大きかったかも？7cmほど丈が余りますが、厚底のスニーカーとか合わせちゃえばなんとかいけます！！ww' },

  { user_id: user2.id,
    clothe_id: clothe4.id,
    stock_no: clothe4.stocks.first.id,
    rate: 5.0,
    content: '生地もしっかりしてて透けないし、159cmでMにしようか迷ったけどSで全然良かった！！ぴったり！！愛用する♡丈はもちょうどよい！' },

  { user_id: user4.id,
    clothe_id: clothe4.id,
    stock_no: clothe4.stocks.second.id,
    rate: 4.5,
    content: '模様が綺麗なのでカジュアルにも綺麗めにも着れそうですごくかわいいです！' },

    { user_id: user3.id,
      clothe_id: clothe6.id,
      stock_no: clothe6.stocks.second.id,
      rate: 5.0,
      content: 'こうゆう淡い色のトレーナー探してたから、すごく嬉しい！くすみ青で、デニムも合うしなんでもいける！' },

    { user_id: user1.id,
      clothe_id: clothe6.id,
      stock_no: clothe6.stocks.first.id,
      rate: 4.0,
      content: 'オーバーサイズめ狙って、ちょうど萌え袖ぐらいで気に入ってます！生地もしっかりしてて、秋冬用かな！早く寒くなって欲しい！笑' },

    { user_id: user2.id,
      clothe_id: clothe6.id,
      stock_no: clothe6.stocks.first.id,
      rate: 3.0,
      content: '思ってたよりもプリントが若かったかも・・笑　色も形もかわいいから着るけど！！' },


    { user_id: user4.id,
      clothe_id: clothe6.id,
      stock_no: clothe6.stocks.second.id,
      rate: 4.5,
      content: '模様が綺麗なのでカジュアルにも綺麗めにも着れそうですごくかわいいです！' },
])

Review.create([
  { user_id: user1.id,
    clothe_id: clothe17.id,
    stock_no: clothe17.stocks.first.id,
    rate: 4.0,
    content: '私には少し大きかったかも？少し肩幅と袖が余りますが、これはこれでオーバーサイズとしてラフに着れそうで結果よかったです！' },

  { user_id: user1.id,
    clothe_id: clothe16.id,
    stock_no: clothe16.stocks.first.id,
    rate: 4.0,
    content: '私には少し大きかったかも？少し肩幅と袖が余りますが、これはこれでオーバーサイズとしてラフに着れそうで結果よかったです！' },

  { user_id: user1.id,
    clothe_id: clothe12.id,
    stock_no: clothe12.stocks.first.id,
    rate: 4.0,
    content: '私には少し大きかったかも？少し肩幅と丈が余りますが、これはこれでラフに着れそうで結果よかったです！' },

  { user_id: user2.id,
    clothe_id: clothe12.id,
    stock_no: clothe12.stocks.first.id,
    rate: 5.0,
    content: '生地もしっかりしてて透けないし、159cmでSにしようか迷ったけどMで全然良かった！！ぴったり！！愛用する♡丈は膝上10センチないくらい！' },

  { user_id: user3.id,
    clothe_id: clothe12.id,
    stock_no: clothe12.stocks.first.id,
    rate: 5.0,
    content: '肩幅があるのがコンプレックスで今までこの形を避けてきたけど安いし可愛いしレビューが良くて購入してみました。 結論から言うと大満足です！形が絶妙でウエストが細くみえるし丈感もベストでした！ほんとに素敵で人生で初めて自分からレビューを書きたいと思えるほどお気に入りな服に出会えました❤︎ 他の方が書いてくださってたレビューを見ていつもならMを買うところをLサイズにして正解なきがします。' },

  { user_id: user4.id,
    clothe_id: clothe12.id,
    stock_no: clothe12.stocks.first.id,
    rate: 4.5,
    content: '模様が綺麗なのでカジュアルにも綺麗めにも着れそうですごくかわいいです！' },

  { user_id: user1.id,
    clothe_id: clothe5.id,
    stock_no: clothe5.stocks.first.id,
    rate: 4.0,
    content: '模様が綺麗なのでカジュアルにも綺麗めにも着れそうですごくかわいいです！' },

  { user_id: user2.id,
    clothe_id: clothe5.id,
    stock_no: clothe5.stocks.first.id,
    rate: 5.0,
    content: '生地もしっかりしてて透けないし、159cmでサイズ合うか心配だったけど全然良かった！！ぴったり！！愛用する♡' },

  { user_id: user3.id,
    clothe_id: clothe5.id,
    stock_no: clothe5.stocks.first.id,
    rate: 5.0,
    content: '写真よりも淡めの白と、繊細な青でとても気に入りました！！肌触りもすごくいいです。スニーカーと合わせて楽しんでます！' },

  { user_id: user4.id,
    clothe_id: clothe5.id,
    stock_no: clothe5.stocks.first.id,
    rate: 4.5,
    content: '私には少し小さかったかも？少し肩幅と丈が余りますが、これはこれでラフに着れそうで結果よかったです！' },

  { user_id: user1.id,
    clothe_id: clothe7.id,
    stock_no: clothe7.stocks.first.id,
    rate: 4.0,
    content: '模様が綺麗なのでカジュアルにも綺麗めにも着れそうですごくかわいいです！' },

  { user_id: user2.id,
    clothe_id: clothe7.id,
    stock_no: clothe7.stocks.first.id,
    rate: 5.0,
    content: '生地もしっかりしてて、159cmでサイズが合うか心配だったけど全然良かった！！Aラインがかわいい！！愛用する♡' },

  { user_id: user3.id,
    clothe_id: clothe7.id,
    stock_no: clothe7.stocks.second.id,
    rate: 5.0,
    content: '写真よりも淡めの白と、繊細な青でとても気に入りました！！肌触りもすごくいいです。スニーカーと合わせて楽しんでます！' },

  { user_id: user4.id,
    clothe_id: clothe7.id,
    stock_no: clothe7.stocks.second.id,
    rate: 4.5,
    content: '私には少し小さかったかも？少し肩幅と丈が余りますが、これはこれでラフに着れそうで結果よかったです！' }
])

Review.create([
  { user_id: user1.id,
    clothe_id: clothe3.id,
    stock_no: clothe3.stocks.first.id,
    rate: 4.5,
    content: '太ももの太さもカバーしてくれます！ 暑い日にも着やすい素材で、とてもお気に入りです 155cmで2-3cm丈が余ってしまいました' },

  { user_id: user2.id,
    clothe_id: clothe3.id,
    stock_no: clothe3.stocks.second.id,
    rate: 5.0,
    content: '写真のまんまです！かわいい！160cmの私がSを履いて地面に少し裾が付くくらいです。スニーカーは5cmくらいの厚さのと合わせてます。' },

  { user_id: user3.id,
    clothe_id: clothe3.id,
    stock_no: clothe3.stocks.third.id,
    rate: 5.0,
    content: 'ウエストがゴムになっているので凄く楽チンです。夏にピッタリな生地です。薄いので下着によってはラインの透ける物もあるかもしれません' },

  { user_id: user1.id,
    clothe_id: clothe15.id,
    stock_no: clothe15.stocks.first.id,
    rate: 4.5,
    content: '太ももの太さもカバーしてくれます！ 暑い日にも着やすい素材で、とてもお気に入りです 155cmで2-3cm丈が余ってしまいました' },

  { user_id: user2.id,
    clothe_id: clothe18.id,
    stock_no: clothe18.stocks.first.id,
    rate: 5.0,
    content: 'サイズ感も色味も良かったです。ウエストはベルトをしなくてもはけるくらいで少し余裕がありました。' },

  { user_id: user3.id,
    clothe_id: clothe18.id,
    stock_no: clothe18.stocks.second.id,
    rate: 5.0,
    content: '170cmですがLでいいくらいでした！ハイウエストめっちゃ可愛いです！ボタンが2個あったので調整出来ました！ウエストが大きくてもベルトなどで調整出来るのいいですね' },

  { user_id: user2.id,
    clothe_id: clothe16.id,
    stock_no: clothe16.stocks.third.id,
    rate: 5.0,
    content: 'サイズもちょうどよく、デザインも可愛かったので大満足です！！ショート丈だったので、ハイウエストデニムと合わせて着たら可愛いかなあと思います！　着るのが楽しみです！！' },

  { user_id: user2.id,
    clothe_id: clothe17.id,
    stock_no: clothe17.stocks.first.id,
    rate: 5.0,
    content: 'ペラペラでもなく夏に丁度いい生地でした。色は写真通りでした。リネンのような素材で、非常に肌触りが良いです。セットアップなので中に着る物は別で購入した方がいいです。' },

  { user_id: user3.id,
    clothe_id: clothe17.id,
    stock_no: clothe17.stocks.second.id,
    rate: 5.0,
    content: 'SET UP合わせて着ると、スタイルかなりよく見えます！肩幅もぴったしで、何より素材が気持ちいいです・・！春も秋も使えそうで嬉しい！' }
])
