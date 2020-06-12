# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

# 都道府県
prefectures = ['北海道','青森県','岩手県','宮城県','秋田県','山形県','福島県','茨城県','栃木県','群馬県','埼玉県','千葉県','東京都','神奈川県','新潟県','富山県','石川県','福井県','山梨県','長野県','岐阜県','静岡県','愛知県','三重県','滋賀県','京都府','大阪府','兵庫県','奈良県','和歌山県','鳥取県','島根県','岡山県','広島県','山口県','徳島県','香川県','愛媛県','高知県','福岡県','佐賀県','長崎県','熊本県','大分県','宮崎県','鹿児島県','沖縄県']

prefectures.each do |prefecture|
  Prefecture.create(name: prefecture)
end


# トップカテゴリー
top_categories = ['レディース','メンズ','ベビー・キッズ','インテリア・住まい・小物','本・音楽・ゲーム','おもちゃ・ホビー・グッズ','コスメ・香水・美容','家電・スマホ・カメラ','スポーツ・レジャー','ハンドメイド','チケット','自動車・オートバイ','その他']

top_categories.each do |top_category|
  TopCategory.create(name: top_category)
end

# レディース/サブカテゴリー
ladies = ['トップス','ジャケット/アウター','パンツ','スカート','ワンピース','靴','ルームウェア/パジャマ','レッグウェア','帽子','バッグ','アクセサリー','ヘアアクセサリー','小物','時計','ウィッグ/エクステ','浴衣/水着','スーツ/フォーマル/ドレス','マタニティ','その他']

ladies.each do |lady|
  SubCategory.create(name: lady,top_category_id: 1)
end

# レディース/トップス
l_tops = ['Tシャツ/カットソー(半袖/袖なし)','Tシャツ/カットソー(七分/長袖)','シャツ/ブラウス(半袖/袖なし)','シャツ/ブラウス(七分/長袖)','ポロシャツ','キャミソール','タンクトップ','ホルターネック','ニット/セーター','チュニック','カーディガン/ボレロ','アンサンブル','ベスト/ジレ','パーカー','トレーナー/スウェット','ベアトップ/チューブトップ','ジャージ','その他']

l_tops.each do |l_top|
  Category.create(name: l_top,sub_category_id: 1)
end

# レディース/ジャケット/アウター
l_jackets = ['テーラードジャケット','ノーカラージャケット','Gジャン/デニムジャケット','レザージャケット','ダウンジャケット','ライダースジャケット','ミリタリージャケット','ダウンベスト','ジャンパー/ブルゾン','ポンチョ','ロングコート','トレンチコート','ダッフルコート','ピーコート','チェスターコート','モッズコート','スタジャン','毛皮/ファーコート','スプリングコート','スカジャン','その他']

l_jackets.each do |l_jacket|
  Category.create(name: l_jacket,sub_category_id: 2)
end

# レディース/パンツ
l_pants = ['デニム/ジーンズ','ショートパンツ','カジュアルパンツ','ハーフパンツ','チノパン','ワークパンツ/カーゴパンツ','クロップドパンツ','サロペット/オーバーオール','オールインワン'',サルエルパンツ','ガウチョパンツ','その他']

l_pants.each do |l_pant|
  Category.create(name: l_pant,sub_category_id: 3)
end

# レディース/スカート
# レディース/ワンピース
# レディース/靴
# レディース/ルームウェア/パジャマ
# レディース/レッグウェア
# レディース/帽子
# レディース/バッグ
# レディース/アクセサリー
# レディース/ヘアアクセサリー
# レディース/小物
# レディース/時計
# レディース/ウィッグ/エクステ
# レディース/浴衣/水着
# レディース/スーツ/フォーマル/ドレス
# レディース/マタニティ
# レディース/その他

# メンズ/サブカテゴリー
mens = ['トップス','ジャケット/アウター','パンツ','靴','バッグ','スーツ','帽子','アクセサリー','小物','時計','水着''レッグウェア','アンダーウェア','その他']

mens.each do |man|
  SubCategory.create(name: man,top_category_id: 2)
end

# ベビー・キッズ/サブカテゴリー
kids = ['ベビー服(女の子用) ~95cm','ベビー服(男の子用) ~95cm','ベビー服(男女兼用) ~95cm','キッズ服(女の子用) 100cm~','キッズ服(男の子用) 100cm~','キッズ服(男女兼用) 100cm~','キッズ靴','子供用ファッション小物','おむつ/トイレ/バス','外出/移動用品','授乳/食事','ベビー家具/寝具/室内用品','おもちゃ','行事/記念品','その他']

kids.each do |kid|
  SubCategory.create(name: kid,top_category_id: 3)
end

# インテリア・住まい・小物/サブカテゴリー
interiors = ['キッチン/食器','ベッド/マットレス','ソファ/ソファベッド','椅子/チェア','机/テーブル','収納家具','ラグ/カーペット/マット','カーテン/ブラインド','ライト/照明','寝具','インテリア小物','季節/年中行事','その他']

interiors.each do |interior|
  SubCategory.create(name: interior,top_category_id: 4)
end

# 本・音楽・ゲーム/サブカテゴリー
books = ['本','漫画','雑誌','CD','DVD/ブルーレイ','レコード','テレビゲーム']

books.each do |book|
  SubCategory.create(name: book,top_category_id: 5)
end

# おもちゃ・ホビー・グッズ/サブカテゴリー
toys = ['おもちゃ','タレントグッズ','コミック/アニメグッズ','トレーディングカード','フィギュア','楽器/器材','コレクション','ミリタリー','美術品','アート用品','その他']


toys.each do |toy|
  SubCategory.create(name: toy,top_category_id: 6)
end

# コスメ・香水・美容/サブカテゴリー
cosmes = ['ベースメイク','メイクアップ','ネイルケア','香水','スキンケア/基礎化粧品','ヘアケア','ボディケア','オーラルケア','リラクゼーション','ダイエット','その他']

cosmes.each do |cosme|
  SubCategory.create(name: cosme,top_category_id: 7)
end

# 家電・スマホ・カメラ/サブカテゴリー
appliances = ['スマートフォン/携帯電話','スマホアクセサリー','PC/タブレット','カメラ','テレビ/映像機器','オーディオ機器','美容/健康','冷暖房/空調','生活家電','その他']

appliances.each do |appliance|
  SubCategory.create(name: appliance,top_category_id: 8)
end

# スポーツ・レジャー/サブカテゴリー
sports = ['ゴルフ','フィッシング','自転車','トレーニング/エクササイズ','野球','サッカー/フットサル','テニス','スノーボード','スキー','その他スポーツ','アウトドア','その他']

sports.each do |sport|
  SubCategory.create(name: sport,top_category_id: 9)
end

# ハンドメイド/サブカテゴリー
handmades = ['アクセサリー(女性用)','ファッション/小物','アクセサリー/時計','日用品/インテリア','趣味/おもちゃ','キッズ/ベビー','素材/材料','二次創作物','その他']

handmades.each do |handmade|
  SubCategory.create(name: handmade,top_category_id: 10)
end

# チケット/サブカテゴリー
tickets = ['音楽','スポーツ','演劇/芸能','イベント','映画','施設利用券','優待券/割引券','その他']

tickets.each do |ticket|
  SubCategory.create(name: ticket,top_category_id: 11)
end

# 自動車・オートバイ/サブカテゴリー
cars = ['自動車本体','自動車タイヤ/ホイール','自動車パーツ','自動車アクセサリー','オートバイ車体','オートバイパーツ','オートバイアクセサリー']

cars.each do |car|
  SubCategory.create(name: car,top_category_id: 12)
end

# その他/サブカテゴリー
others = ['まとめ売り','ペット用品','食品','飲料/酒','日用品/生活雑貨/旅行','アンティーク/コレクション','文房具/事務用品','事務/店舗用品','その他']


others.each do |other|
  SubCategory.create(name: other,top_category_id: 13)
end
