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
      email: 'test5@test.com',
      password: '555555',
      name_last: '森坂',
      name_first: '健二',
      name_last_kana: 'モリサカ',
      name_first_kana: 'ケンジ',
      postal_code: '914-0023',
      address: '福井県敦賀市深川町4-20深川町ヒル406',
      phone_number: '029-828-2450',
      is_active: true
    },
    {
      email: 'test6@test.com',
      password: '666666',
      name_last: '日岡',
      name_first: '和也',
      name_last_kana: 'ヒオカ',
      name_first_kana: 'カズヤ',
      postal_code: '328-0111',
      address: '栃木県栃木市都賀町家中1-6-6プラザ都賀町家中314',
      phone_number: '080-8182-2192',
      is_active: true
    },
    {
      email: 'test7@test.com',
      password: '777777',
      name_last: '坂神',
      name_first: '恒子',
      name_last_kana: 'サカガミ',
      name_first_kana: 'ツネコ',
      postal_code: '777-7777',
      address: '東京都テスト区43-9',
      phone_number: '7777-34-5405',
      is_active: true
    },
    {
      email: 'test8@test.com',
      password: '888888',
      name_last: '米花',
      name_first: '直良',
      name_last_kana: 'ヨネハナ',
      name_first_kana: 'ナオヨシ',
      postal_code: '328-0111',
      address: '長野県松本市会田1-20',
      phone_number: '0265-98-9978',
      is_active: true
    },
    {
      email: 'test9@test.com',
      password: '999999',
      name_last: '入村',
      name_first: '由美',
      name_last_kana: 'イリムラ',
      name_first_kana: 'ユミ',
      postal_code: '999-9999',
      address: '東京都テスト区4783',
      phone_number: '080-4829-4854',
      is_active: true
    },
    {
      email: 'test10@test.com',
      password: '010010',
      name_last: '竹本',
      name_first: '里奈',
      name_last_kana: 'タケモト',
      name_first_kana: 'リナ',
      postal_code: '308-0854',
      address: '東茨城県筑西市女方2-19-10',
      phone_number: '029-158-2129',
      is_active: true
    },
    {
      email: 'test11@test.com',
      password: '011011',
      name_last: '浜口',
      name_first: '智史',
      name_last_kana: 'ハマグチ',
      name_first_kana: 'サトシ',
      postal_code: '630-1241',
      address: '奈良県奈良市阪原町1-9-14',
      phone_number: '090-7722-2112',
      is_active: true
    },
    {
      email: 'test12@test.com',
      password: '012012',
      name_last: '平山',
      name_first: '拓哉',
      name_last_kana: 'ヒラヤマ',
      name_first_kana: 'タクヤ',
      postal_code: '321-0604',
      address: '栃木県那須烏山市中山3-17-17',
      phone_number: '080-4717-2993',
      is_active: true
    },
    {
      email: 'test13@test.com',
      password: '013013',
      name_last: '成沢',
      name_first: 'かずみ',
      name_last_kana: 'ナルサワ',
      name_first_kana: 'カズミ',
      postal_code: '133-1313',
      address: '東京都テスト区133',
      phone_number: '080-133-1313',
      is_active: true
    },
    {
      email: 'test14@test.com',
      password: '014014',
      name_last: '古沢',
      name_first: '紀之',
      name_last_kana: 'フルサワ',
      name_first_kana: 'ノリユキ',
      postal_code: '889-0626',
      address: '宮崎県東臼杵郡門川町平城西2-16平城西プレシャス200',
      phone_number: '0987-10-1959',
      is_active: true
    },
    {
      email: 'test15@test.com',
      password: '015015',
      name_last: '根津',
      name_first: '修',
      name_last_kana: 'ネヅ',
      name_first_kana: 'オサム',
      postal_code: '615-0834',
      address: '京都府京都市右京区西京極殿田町2-12-16',
      phone_number: '090-5303-9434',
      is_active: true
    },
    {
      email: 'test16@test.com',
      password: '016016',
      name_last: '島津',
      name_first: '遙',
      name_last_kana: 'シマヅ',
      name_first_kana: 'ハルカ',
      postal_code: '651-1612',
      address: '兵庫県神戸市北区淡河町東畑1-3',
      phone_number: '090-5922-2791',
      is_active: true
    },
    {
      email: 'test17@test.com',
      password: '017017',
      name_last: '神戸',
      name_first: '恵利',
      name_last_kana: 'コウベ',
      name_first_kana: 'エリ',
      postal_code: '385-0005',
      address: '長野県佐久市香坂1-10-15',
      phone_number: '080-6684-5322',
      is_active: true
    },
    {
      email: 'test18@test.com',
      password: '018018',
      name_last: '大久保',
      name_first: '綾平',
      name_last_kana: 'オオクボ',
      name_first_kana: 'リョウヘイ',
      postal_code: '647-0041',
      address: '和歌山県新宮市野田2-7-3ザ野田104',
      phone_number: '073-232-2679',
      is_active: true
    },
    {
      email: 'test19@test.com',
      password: '019019',
      name_last: '高田',
      name_first: '瑞姫',
      name_last_kana: 'タカダ',
      name_first_kana: 'ミズキ',
      postal_code: '781-1142',
      address: '高知県土佐市出間4-6-19',
      phone_number: '088-104-6029',
      is_active: true
    },
    {
      email: 'test20@test.com',
      password: '020020',
      name_last: '大井',
      name_first: '大介',
      name_last_kana: 'オオイ',
      name_first_kana: 'ダイスケ',
      postal_code: '745-0046',
      address: '香川県観音寺市新田町1-20-2',
      phone_number: '080-1974-0178',
      is_active: true
    },
    {
      email: 'test21@test.com',
      password: '021021',
      name_last: '徳田',
      name_first: '愛花',
      name_last_kana: 'トクタ',
      name_first_kana: 'アイカ',
      postal_code: '696-0501',
      address: '島根県邑智郡邑南町阿須那3-3-7ロイヤル阿須那302',
      phone_number: '080-5325-8912',
      is_active: true
    },
    {
      email: 'test22@test.com',
      password: '022022',
      name_last: '森川',
      name_first: '康介',
      name_last_kana: 'モリカワ',
      name_first_kana: 'コウスケ',
      postal_code: '868-0501',
      address: '奈熊本県球磨郡多良木町多良木3-14',
      phone_number: '080-8071-0870',
      is_active: true
    },
    {
      email: 'test23@test.com',
      password: '023023',
      name_last: '平山',
      name_first: '拓哉',
      name_last_kana: 'ヒラヤマ',
      name_first_kana: 'タクヤ',
      postal_code: '321-0604',
      address: '栃木県那須烏山市中山3-17-17',
      phone_number: '080-4717-2993',
      is_active: true
    },
    {
      email: 'test24@test.com',
      password: '024024',
      name_last: '玉井',
      name_first: '和恵',
      name_last_kana: 'タマイ',
      name_first_kana: 'カズエ',
      postal_code: '781-1325',
      address: '高岡郡越知町浅尾3-7-19',
      phone_number: '080-5076-6028',
      is_active: true
    },
    {
      email: 'test25@test.com',
      password: '025025',
      name_last: '原田',
      name_first: '光昭',
      name_last_kana: 'ハラダ',
      name_first_kana: 'ミツアキ',
      postal_code: '822-1312',
      address: '福岡県田川郡糸田町下糸田3-15-5下糸田スイート411',
      phone_number: '092-924-3154',
      is_active: true
    },
    {
      email: 'test26@test.com',
      password: '026026',
      name_last: '土橋',
      name_first: '奈緒子',
      name_last_kana: 'ツチハシ',
      name_first_kana: 'ナオコ',
      postal_code: '231-0064',
      address: '神奈川県横浜市中区野毛町2-1野毛町の杜300',
      phone_number: '046-709-2500',
      is_active: true
    },
    {
      email: 'test27@test.com',
      password: '027027',
      name_last: '森口',
      name_first: '里桜',
      name_last_kana: 'モリグチ',
      name_first_kana: 'リオ',
      postal_code: '361-0051',
      address: '埼玉県行田市矢場4-13-20',
      phone_number: '090-8982-1093',
      is_active: true
    },
    {
      email: 'test28@test.com',
      password: '028028',
      name_last: '小林',
      name_first: '優斗',
      name_last_kana: 'コバヤシ',
      name_first_kana: 'ユウト',
      postal_code: '682-0016',
      address: '鳥取県倉吉市海田西町4-10-2',
      phone_number: '0859-09-8617',
      is_active: true
    },
    {
      email: 'test29@test.com',
      password: '029029',
      name_last: '荒井',
      name_first: '悦代',
      name_last_kana: 'アライ',
      name_first_kana: 'エツヨ',
      postal_code: '357-0213',
      address: '埼玉県飯能市坂石町分4-11-7プレシャス坂石町分307',
      phone_number: '090-9690-8180',
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