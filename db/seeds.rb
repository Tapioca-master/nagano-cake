# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


Admin.create!(
  [
    {
      email: 'test1@test.com',
      password: '111111',
      name: 'テスト管理太郎'
    },
    {
      email: 'test2@test.com',
      password: '222222',
      name: 'テスト管理花子'
    }
  ]
)

Customer.create!(
  [
    {
      email: 'test01@test.com',
      password: '001001',
      name_last: '福本',
      name_first: '真奈',
      name_last_kana: 'フクモト',
      name_first_kana: 'マナ',
      postal_code: '3700514',
      address: '群馬県邑楽郡大泉町朝日2-11-1',
      phone_number: '0278336515',
      is_active: true
    },
    {
      email: 'test02@test.com',
      password: '002002',
      name_last: '宮沢',
      name_first: '勝巳',
      name_last_kana: 'ミヤザワ',
      name_first_kana: 'カツミ',
      postal_code: '9870354',
      address: '宮城県登米市豊里町上沼田2-12コート豊里町上沼田401',
      phone_number: '0220862557',
      is_active: true
    },
    {
      email: 'test03@test.com',
      password: '003003',
      name_last: '田中',
      name_first: '忍',
      name_last_kana: 'タナカ',
      name_first_kana: 'シノブ',
      postal_code: '7290115',
      address: '広島県福山市南今津町1-4-8',
      phone_number: '0846663771',
      is_active: true
    },
    {
      email: 'test04@test.com',
      password: '004004',
      name_last: '平野',
      name_first: '史織',
      name_last_kana: 'ヒラノ',
      name_first_kana: 'シオリ',
      postal_code: '9460007',
      address: '新潟県魚沼市四日町1-14-7四日町ロイヤル212',
      phone_number: '0258294252',
      is_active: true
    },
    {
      email: 'test05@test.com',
      password: '005005',
      name_last: '塚本',
      name_first: '妃菜',
      name_last_kana: 'ツカモト',
      name_first_kana: 'ヒナ',
      postal_code: '4070301',
      address: '山梨県北杜市高根町清里4-11-3',
      phone_number: '08037346118',
      is_active: true
    },
    {
      email: 'test06@test.com',
      password: '006006',
      name_last: '日岡',
      name_first: '和也',
      name_last_kana: 'ヒオカ',
      name_first_kana: 'カズヤ',
      postal_code: '3280111',
      address: '栃木県栃木市都賀町家中1-6-6プラザ都賀町家中314',
      phone_number: '08081822192',
      is_active: true
    },
    {
      email: 'test07@test.com',
      password: '007007',
      name_last: '坂神',
      name_first: '恒子',
      name_last_kana: 'サカガミ',
      name_first_kana: 'ツネコ',
      postal_code: '8360012',
      address: '福岡県大牟田市明治町1-15-6',
      phone_number: '093790576',
      is_active: true
    },
    {
      email: 'test08@test.com',
      password: '008008',
      name_last: '米花',
      name_first: '直良',
      name_last_kana: 'ヨネハナ',
      name_first_kana: 'ナオヨシ',
      postal_code: '3280111',
      address: '長野県松本市会田1-20',
      phone_number: '0265989978',
      is_active: true
    },
    {
      email: 'test09@test.com',
      password: '009009',
      name_last: '入村',
      name_first: '由美',
      name_last_kana: 'イリムラ',
      name_first_kana: 'ユミ',
      postal_code: '4780051',
      address: '愛知県知多市朝倉町3-15-10朝倉町タウン405',
      phone_number: '08048294854',
      is_active: true
    },
    {
      email: 'test10@test.com',
      password: '010010',
      name_last: '竹本',
      name_first: '里奈',
      name_last_kana: 'タケモト',
      name_first_kana: 'リナ',
      postal_code: '3080854',
      address: '東茨城県筑西市女方2-19-10',
      phone_number: '0291582129',
      is_active: true
    },
    {
      email: 'test11@test.com',
      password: '011011',
      name_last: '浜口',
      name_first: '智史',
      name_last_kana: 'ハマグチ',
      name_first_kana: 'サトシ',
      postal_code: '6301241',
      address: '奈良県奈良市阪原町1-9-14',
      phone_number: '09077222112',
      is_active: true
    },
    {
      email: 'test12@test.com',
      password: '012012',
      name_last: '平山',
      name_first: '拓哉',
      name_last_kana: 'ヒラヤマ',
      name_first_kana: 'タクヤ',
      postal_code: '3210604',
      address: '栃木県那須烏山市中山3-17-17',
      phone_number: '08047172993',
      is_active: true
    },
    {
      email: 'test13@test.com',
      password: '013013',
      name_last: '成沢',
      name_first: 'かずみ',
      name_last_kana: 'ナルサワ',
      name_first_kana: 'カズミ',
      postal_code: '1331313',
      address: '東京都テスト区133',
      phone_number: '0801331313',
      is_active: true
    },
    {
      email: 'test14@test.com',
      password: '014014',
      name_last: '古沢',
      name_first: '紀之',
      name_last_kana: 'フルサワ',
      name_first_kana: 'ノリユキ',
      postal_code: '8890626',
      address: '宮崎県東臼杵郡門川町平城西2-16平城西プレシャス200',
      phone_number: '0987101959',
      is_active: true
    },
    {
      email: 'test15@test.com',
      password: '015015',
      name_last: '根津',
      name_first: '修',
      name_last_kana: 'ネヅ',
      name_first_kana: 'オサム',
      postal_code: '6150834',
      address: '京都府京都市右京区西京極殿田町2-12-16',
      phone_number: '09053039434',
      is_active: true
    },
    {
      email: 'test16@test.com',
      password: '016016',
      name_last: '島津',
      name_first: '遙',
      name_last_kana: 'シマヅ',
      name_first_kana: 'ハルカ',
      postal_code: '6511612',
      address: '兵庫県神戸市北区淡河町東畑1-3',
      phone_number: '09059222791',
      is_active: true
    },
    {
      email: 'test17@test.com',
      password: '017017',
      name_last: '神戸',
      name_first: '恵利',
      name_last_kana: 'コウベ',
      name_first_kana: 'エリ',
      postal_code: '3850005',
      address: '長野県佐久市香坂1-10-15',
      phone_number: '08066845322',
      is_active: true
    },
    {
      email: 'test18@test.com',
      password: '018018',
      name_last: '大久保',
      name_first: '綾平',
      name_last_kana: 'オオクボ',
      name_first_kana: 'リョウヘイ',
      postal_code: '6470041',
      address: '和歌山県新宮市野田2-7-3ザ野田104',
      phone_number: '0732322679',
      is_active: true
    },
    {
      email: 'test19@test.com',
      password: '019019',
      name_last: '高田',
      name_first: '瑞姫',
      name_last_kana: 'タカダ',
      name_first_kana: 'ミズキ',
      postal_code: '7811142',
      address: '高知県土佐市出間4-6-19',
      phone_number: '0881046029',
      is_active: true
    },
    {
      email: 'test20@test.com',
      password: '020020',
      name_last: '大井',
      name_first: '大介',
      name_last_kana: 'オオイ',
      name_first_kana: 'ダイスケ',
      postal_code: '7450046',
      address: '香川県観音寺市新田町1-20-2',
      phone_number: '08019740178',
      is_active: true
    },
    {
      email: 'test21@test.com',
      password: '021021',
      name_last: '徳田',
      name_first: '愛花',
      name_last_kana: 'トクタ',
      name_first_kana: 'アイカ',
      postal_code: '6960501',
      address: '島根県邑智郡邑南町阿須那3-3-7ロイヤル阿須那302',
      phone_number: '08053258912',
      is_active: true
    },
    {
      email: 'test22@test.com',
      password: '022022',
      name_last: '森川',
      name_first: '康介',
      name_last_kana: 'モリカワ',
      name_first_kana: 'コウスケ',
      postal_code: '8680501',
      address: '奈熊本県球磨郡多良木町多良木3-14',
      phone_number: '08080710870',
      is_active: true
    },
    {
      email: 'test23@test.com',
      password: '023023',
      name_last: '平山',
      name_first: '拓哉',
      name_last_kana: 'ヒラヤマ',
      name_first_kana: 'タクヤ',
      postal_code: '3210604',
      address: '栃木県那須烏山市中山3-17-17',
      phone_number: '08047172993',
      is_active: true
    },
    {
      email: 'test24@test.com',
      password: '024024',
      name_last: '玉井',
      name_first: '和恵',
      name_last_kana: 'タマイ',
      name_first_kana: 'カズエ',
      postal_code: '7811325',
      address: '高岡郡越知町浅尾3-7-19',
      phone_number: '08050766028',
      is_active: true
    },
    {
      email: 'test25@test.com',
      password: '025025',
      name_last: '原田',
      name_first: '光昭',
      name_last_kana: 'ハラダ',
      name_first_kana: 'ミツアキ',
      postal_code: '8221312',
      address: '福岡県田川郡糸田町下糸田3-15-5下糸田スイート411',
      phone_number: '0929243154',
      is_active: true
    },
    {
      email: 'test26@test.com',
      password: '026026',
      name_last: '土橋',
      name_first: '奈緒子',
      name_last_kana: 'ツチハシ',
      name_first_kana: 'ナオコ',
      postal_code: '2310064',
      address: '神奈川県横浜市中区野毛町2-1野毛町の杜300',
      phone_number: '0467092500',
      is_active: true
    },
    {
      email: 'test27@test.com',
      password: '027027',
      name_last: '森口',
      name_first: '里桜',
      name_last_kana: 'モリグチ',
      name_first_kana: 'リオ',
      postal_code: '3610051',
      address: '埼玉県行田市矢場4-13-20',
      phone_number: '09089821093',
      is_active: true
    },
    {
      email: 'test28@test.com',
      password: '028028',
      name_last: '小林',
      name_first: '優斗',
      name_last_kana: 'コバヤシ',
      name_first_kana: 'ユウト',
      postal_code: '6820016',
      address: '鳥取県倉吉市海田西町4-10-2',
      phone_number: '0859098617',
      is_active: true
    },
    {
      email: 'test29@test.com',
      password: '029029',
      name_last: '荒井',
      name_first: '悦代',
      name_last_kana: 'アライ',
      name_first_kana: 'エツヨ',
      postal_code: '3570213',
      address: '埼玉県飯能市坂石町分4-11-7プレシャス坂石町分307',
      phone_number: '09096908180',
      is_active: true
    }
  ]
)


Genre.create!(
  [
    {
      name: 'ケーキ',
      is_active: true
    },
    {
      name: 'プリン',
      is_active: true
    },
    {
      name: '焼き菓子',
      is_active: true
    },
    {
      name: 'キャンディ',
      is_active: true
    }
  ]
)

Item.create!(
  [
    {
      name: 'ショートケーキ',
      genre_id: 1,
      #praice: ,
      #image_id: ,
      sales_status: :販売中,
      introduction: 'おいしいショートケーキです',
      non_tax_price: '250'
    },
    {
      name: 'モンブラン',
      genre_id: 1,
      #praice: ,
      #image_id: ,
      sales_status: :販売中,
      introduction: 'おいしいモンブランです',
      non_tax_price: '300'
    },
    {
      name: 'チョコケーキ',
      genre_id: 1,
      #praice: ,
      #image_id: ,
      sales_status: :販売中,
      introduction: 'おいしいチョコケーキです',
      non_tax_price: '210'
    },
    {
      name: 'フルーツケーキ',
      genre_id: 1,
      #praice: ,
      #image_id: ,
      sales_status: :販売中,
      introduction: 'おいしいフルーツケーキです',
      non_tax_price: '270'
    },
    {
      name: 'ロールケーキ',
      genre_id: 1,
      #praice: ,
      #image_id: ,
      sales_status: :販売中,
      introduction: 'おいしいロールケーキです',
      non_tax_price: '180'
    },
    {
      name: 'シフォンケーキ',
      genre_id: 1,
      #praice: ,
      #image_id: ,
      sales_status: :販売中,
      introduction: 'おいしいシフォンケーキです',
      non_tax_price: '280'
    },
    {
      name: 'ガトーショコラ',
      genre_id: 1,
      #praice: ,
      #image_id: ,
      sales_status: :販売中,
      introduction: 'おいしいガトーショコラです',
      non_tax_price: '310'
    },
    {
      name: 'りんごケーキ',
      genre_id: 1,
      #praice: ,
      #image_id: ,
      sales_status: :販売中,
      introduction: 'おいしいりんごケーキです',
      non_tax_price: '200'
    },
    {
      name: 'パウンドケーキ',
      genre_id: 1,
      #praice: ,
      #image_id: ,
      sales_status: :販売中,
      introduction: 'おいしいパウンドケーキです',
      non_tax_price: '260'
    },
    {
      name: 'タルト',
      genre_id: 1,
      #praice: ,
      #image_id: ,
      sales_status: :販売中,
      introduction: 'おいしいタルトです',
      non_tax_price: '280'
    },
    {
      name: 'チーズケーキ',
      genre_id: 1,
      #praice: ,
      #image_id: ,
      sales_status: :販売中,
      introduction: 'おいしいチーズケーキです',
      non_tax_price: '300'
    },
    {
      name: 'ティラミス',
      genre_id: 1,
      #praice: ,
      #image_id: ,
      sales_status: :販売中,
      introduction: 'おいしいティラミスです',
      non_tax_price: '270'
    },
    {
      name: 'ミルフィーユ',
      genre_id: 1,
      #praice: ,
      #image_id: ,
      sales_status: :販売中,
      introduction: 'おいしいミルフィーユです',
      non_tax_price: '250'
    },
    {
      name: 'クレープ',
      genre_id: 1,
      #praice: ,
      #image_id: ,
      sales_status: :販売中,
      introduction: 'おいしいクレープです',
      non_tax_price: '280'
    },
    {
      name: 'ガトーショコラ',
      genre_id: 1,
      #praice: ,
      #image_id: ,
      sales_status: :販売中,
      introduction: 'おいしいガトーショコラです',
      non_tax_price: '310'
    },
    {
      name: 'ブランデーケーキ',
      genre_id: 1,
      #praice: ,
      #image_id: ,
      sales_status: :販売中,
      introduction: 'おいしいブランデーケーキです',
      non_tax_price: '310'
    },
    {
      name: 'シュークリーム',
      genre_id: 1,
      #praice: ,
      #image_id: ,
      sales_status: :販売中,
      introduction: 'おいしいシュークリームです',
      non_tax_price: '200'
    },
    {
      name: 'なめらかプリン',
      genre_id: 2,
      #praice: ,
      #image_id: ,
      sales_status: :販売中,
      introduction: 'おいしいプリンです',
      non_tax_price: '150'
    },
    {
      name: '牛乳プリン',
      genre_id: 2,
      #praice: ,
      #image_id: ,
      sales_status: :販売中,
      introduction: 'おいしい牛乳プリンです',
      non_tax_price: '200'
    },
    {
      name: 'チョコクッキー',
      genre_id: 3,
      #praice: ,
      #image_id: ,
      sales_status: :販売中,
      introduction: 'おいしいチョコクッキーです',
      non_tax_price: '100'
    },
    {
      name: 'おからクッキー',
      genre_id: 3,
      #praice: ,
      #image_id: ,
      sales_status: :販売中,
      introduction: 'おいしいおからクッキーです',
      non_tax_price: '100'
    },
    {
      name: 'キャンディー10個',
      genre_id: 4,
      #praice: ,
      #image_id: ,
      sales_status: :販売中,
      introduction: 'おいしいキャンディーです',
      non_tax_price: '100'
    },
    {
      name: 'キャンディー30個',
      genre_id: 4,
      #praice: ,
      #image_id: ,
      sales_status: :販売中,
      introduction: 'おいしいキャンディーです',
      non_tax_price: '250'
    }
  ]
)

Address.create!(
  [
    {
      customer_id: 1,
      name: '小倉理沙',
      address: '大分県大分市志村4-5',
      postal_code: '8700261'
    },
    {
      customer_id: 1,
      name: '金谷博文',
      address: '秋田県山本郡三種町浜田2-1-7',
      postal_code: '0182407'
    },
    {
      customer_id: 1,
      name: '太田里歩',
      address: '秋田県北秋田市阿仁荒瀬川櫃畑3-10-17',
      postal_code: '0184623'
    },
    {
      customer_id: 1,
      name: '黒澤久美子',
      address: '新潟県燕市長辰4-19長辰シティ205',
      postal_code: '9590139'
    },
    {
      customer_id: 1,
      name: '宮崎武英',
      address: '福岡県北九州市八幡西区力丸町4-8-15力丸町シーサイド115',
      postal_code: '8070802'
    },
    {
      customer_id: 1,
      name: '毛利尚司',
      address: '青森県弘前市平山2-14-1平山ドリーム309',
      postal_code: '0361442'
    },
    {
      customer_id: 2,
      name: '坪井和代',
      address: '三重県熊野市遊木町4-3-13',
      postal_code: '5194205'
    },
    {
      customer_id: 2,
      name: '石川昭吾',
      address: '山形県鶴岡市文下3-2-14',
      postal_code: '9970003'
    },
    {
      customer_id: 2,
      name: '池田清三郎',
      address: '埼玉県さいたま市緑区太田窪3-2-20太田窪庵201',
      postal_code: '3360936'
    },
    {
      customer_id: 3,
      name: '草野美奈江',
      address: '茨城県水戸市筑地町2-4-9筑地町マンション202',
      postal_code: '3190313'
    },
    {
      customer_id: 3,
      name: '平川賢治',
      address: '熊本県人吉市上薩摩瀬町3-11-9',
      postal_code: '8680013'
    },
    {
      customer_id: 3,
      name: '田中良平',
      address: '岩手県八幡平市土沢4-5-18',
      postal_code: '0287513'
    }
  ]
)

Order.create!(
  [
    {
      customer_id: 1,
      order_status: :入金待ち,
      shipping: 800,
      ship_name: '梅原義昭',
      ship_address: '沖縄県島尻郡座間味村阿佐2-11',
      postal_code: '9013401',
      payment: :銀行振込,
    },
    {
      customer_id: 1,
      order_status: :入金確認,
      shipping: 800,
      ship_name: '杉山美優',
      ship_address: '鹿児島県南九州市知覧町瀬世4-3',
      postal_code: '8970305',
      payment: :クレジットカード,
    },
    {
      customer_id: 2,
      order_status: :発送準備中,
      shipping: 800,
      ship_name: '橋爪泰賀',
      ship_address: '北海道釧路市阿寒町下仁々志別3-8-18',
      postal_code: '0850204',
      payment: :クレジットカード,
    },
    {
      customer_id: 3,
      order_status: :発送済み,
      shipping: 800,
      ship_name: '梅田優晴',
      ship_address: '京都府京都市右京区嵯峨中又町4-4プラザ嵯峨中又町312',
      postal_code: '6168347',
      payment: :銀行振込,
    },
  ]
)

OrderItem.create!(
  [
    {
      order_id: 1,
      item_id: 1,
      production_status: :製作待ち,
      amount: 1,
      tax_price: (Item.find(1).non_tax_price * 1.1).round
    },
    {
      order_id: 1,
      item_id: 2,
      production_status: :製作待ち,
      amount: 1,
      tax_price: (Item.find(2).non_tax_price * 1.1).round
    },
    {
      order_id: 1,
      item_id: 3,
      production_status: :製作待ち,
      amount: 1,
      tax_price: (Item.find(3).non_tax_price * 1.1).round
    },
    {
      order_id: 2,
      item_id: 1,
      production_status: :製作待ち,
      amount: 5,
      tax_price: (Item.find(1).non_tax_price * 1.1).round
    },
    {
      order_id: 3,
      item_id: 2,
      production_status: :製作完了,
      amount: 10,
      tax_price: (Item.find(2).non_tax_price * 1.1).round
    },
    {
      order_id: 4,
      item_id: 1,
      production_status: :製作完了,
      amount: 5,
      tax_price: (Item.find(4).non_tax_price * 1.1).round
    }
  ]
)