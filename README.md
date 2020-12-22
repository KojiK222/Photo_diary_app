# アプリ名
### Photo diary
# 概要
このアプリでは、登録者は写真や日記のような記録を投稿することができます。また、投稿した写真や日記に対して、コメントをし合ってチャットのような会話をすることができます。登録者のユーザーマイページでは、今まで投稿した写真やプロフィールを見ることができます。


# 使用技術（開発環境）
## バックエンド
Ruby,Ruby on rails
## フロントエンド
Hmal,Sass
## データベース
MySQL,Sequl Pro
## インフラ
Heroku
## ソース管理
GitHub,GitHubDesktop
## エディタ
VScode
# 課題や今後実装したい機能
・フォロー機能
・いいね機能
・ハッシュタグ機能
# DB設計
## usersテーブル
|Column|Type|Options|
|------|----|-------|
|email|string|null: false|
|encrypted_password|string|null: false|
|username|string|null: false|
|fullname|string|null: false|
|profile|text|
|profile_image_id|string|
## Association
- has_many :photos, dependent: :destroy
- has_many :comments

## photosテーブル
|Column|Type|Options|
|------|----|-------|
|user_id|integer|null: false, foreign_key: true|
|title|string|
|body|text|
|image_id|string|
## Association
- belongs_to :user
- attachment :image
- has_many :comments 

## commentsテーブル
|Column|Type|Options|
|------|----|-------|
|user_id|integer|null: false, foreign_key: true|
|photo_id|integer|
|text|text|
## Association
- belongs_to :user
- belongs_to :photo
