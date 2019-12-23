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
      name_last: '顧客',
      name_first: '太郎',
      name_last_kana: 'コキャク',
      name_first_kana: 'タロウ',
      postal_code: '555-5555',
      address: '東京都テスト区5-5',
      phone_number: '090-1234-5678',
      is_active: true
    },
    {
      email: 'test6@test.com',
      password: '666666',
      name_last: '顧客',
      name_first: '花子',
      name_last_kana: 'コキャク',
      name_first_kana: 'ハナコ',
      postal_code: '666-666',
      address: '東京都テスト区6-6',
      phone_number: '080-2345-6789',
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
      introduction: 'おいしいケーキです',
      non_tax_price: '250'
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
      name: 'サクサククッキー',
      genre_id: 3,
      #praice: ,
      #image_id: ,
      sales_status: :販売中,
      introduction: 'おいしいクッキーです',
      non_tax_price: '100'
    },
    {
      name: 'フルーツキャンディー',
      genre_id: 4,
      #praice: ,
      #image_id: ,
      sales_status: :販売中,
      introduction: 'おいしいキャンディーです',
      non_tax_price: '50'
    }
  ]
)