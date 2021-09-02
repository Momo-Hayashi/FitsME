
# FitsME

AWS URL： http://54.199.112.63/  
  
Online Shoppingで　生地・色味・サイズ感　がイメージしきれず、購入を躊躇/失敗した経験はありませんか？  
  

### ＜Fits MEを利用することで得られるメリット＞
- 対カスタマー：  
   詳細なレビューを購入の判断材料にでき、Online Shoppingでの失敗を減らせる！  
- 対リテイラー：  
   オンラインでの障壁、似合うか問題を克服でき、リアル店舗がなくても売り上げを伸ばせる！  

![FitsME概要](https://user-images.githubusercontent.com/83218898/131826293-fc57d4b1-f26b-4543-b2c3-b1a48971bf9a.jpg)


## 開発言語
- Ruby 2.6.5  
- Ruby on Rails 5.2.5  

## 機能一覧
- ユーザー  
  - 新規登録・ログイン機能  
  - 洋服の検索機能  
  - 洋服のお気に入り機能  
  - カートへの一時保存機能  
  - 洋服の購入機能  
  - レビュー投稿機能（CRUD）（画像投稿）  
  - レビューの検索機能  
  - 購入時・レビュー投稿時にポイント獲得できる機能
- リテイラー（出品企業）  
  - 新規登録・ログイン機能  
  - 洋服の登録機能（CRUD）（画像投稿）  
  - 注文確認  
- アドミン（サイト管理者）
  - 不正な利用者（ユーザ・リテイラー・服・レビュー）の削除・編集機能（CRUD）
 
## 使用Gem等一覧
- ログイン・管理者関連　　
  - gem 'devise'  
  - gem 'devise-i18n'  
  - gem 'rails_admin'  
  - gem 'cancancan'  
- 画像アップロード
  - ActiveStorage  
  - gem 'image_processing'  
  - gem 'mini_magick'  
- AWS EC2/S3関連  
  - gem "aws-sdk-s3"  
  - gem 'unicorn'  
  - gem 'capistrano'  
- 決済機能： gem 'payjp'  
- 検索機能： gem 'ransack' 
- デバック： gem 'byebug'  
- Rspec： gem 'rspec-rails'   
- 多階層カテゴリ： gem 'ancestry'  
- 子データ保存： gem 'cocoon'  
- ページネーション： gem 'kaminari'  


## カタログ設計
[カタログ設計](https://docs.google.com/spreadsheets/d/1dUtnFL-pFzik5JiMkF2qFwqpfiGoxGp3OSuWpCnSsVE/edit#gid=782464957)　　

## テーブル設計
[テーブル設計](https://docs.google.com/spreadsheets/d/1dUtnFL-pFzik5JiMkF2qFwqpfiGoxGp3OSuWpCnSsVE/edit#gid=2020033787)　　

## ER図
<img width="1115" alt="ER図" src="https://user-images.githubusercontent.com/83218898/128620044-37db7cd2-ac82-4ae3-b27b-df98c430e020.png">
https://cacoo.com/diagrams/OdGHuW7wedFiXguP/71C45?reload_rt=1626248381130_0

## 画面遷移図
[画面遷移図](https://github.com/Momo-Hayashi/FitsME/files/6847693/1.19.59.14.pdf)

## ワイヤーフレーム
[ワイヤーフレーム](https://docs.google.com/spreadsheets/d/1dUtnFL-pFzik5JiMkF2qFwqpfiGoxGp3OSuWpCnSsVE/edit#gid=607683923)


## 実行手順
```
$ git clone git@github.com:Momo-Hayashi/FitsME.git  
$ cd FitsME  
$ bundle install  
$ rails db:create db:migrate  
$ rails s  
```
