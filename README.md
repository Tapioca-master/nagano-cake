# README

# NAME
NAGANO-CAKE

# DEMO

![readmegif_cart ](https://user-images.githubusercontent.com/57820414/71800411-658c9e80-309b-11ea-9542-739e2c8b0192.gif)



# Features
基本的な通販サイトとしての機能を内包しています。
顧客側では商品をカートに追加して一度に複数の商品を購入することができます。
管理側では商品情報の変更や追加、顧客一覧や注文の管理が行えます。
簡易設計ではありますがシンプルで使い勝手が良いものです。



# Requirement
ruby '2.5.7'
gem 'devise'
gem "refile", require: "refile/rails", github: 'manfe/refile'
gem "refile-mini_magick"
gem 'bootstrap-sass'
gem 'kaminari'
gem 'enumerize'
gem 'devise-i18n'
gem 'devise-i18n-views'



# Note
クレジットカードでの決済機能自体は有していないため、外部の決済機能を利用すること。
銀行振り込みの場合は登録されているEmailに振込先を記載して返信するなどの対応をお願いします。
seedに埋め込まれている顧客情報、商品情報などは適宜変更すること。



# Author
Aki-chan
Kei-chan
Rin-chan
Yu-chan
DMM WEBCAMPにて作成
