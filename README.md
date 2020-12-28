# アプリ名
## Photo diary
# 概要
このアプリでは、登録者は写真や日記のような記録を投稿することができます。また、投稿した写真や日記に対して、コメントをし合ってチャットのような会話をすることができます。登録者のユーザーマイページでは、今まで投稿した写真やプロフィールを見ることができます。
# 本番環境
ログイン情報（テスト用）
-
-
# 制作背景（意図）
ユーザーの投稿した写真とその写真から感じとったモノを日記のように書けるアプリを作りました。ユーザーがその時に目に映ったモノに対して感じ取ったことや自分の好みのモノを発信することで、同じように感じたユーザーがコメントを通してお互い会話をすることができます。その会話により、自分と同じ、もしくは似た価値観の人が繋がることができると考えました。現在は、自分の身の周りに同じ考え方や価値観を持った人を見つけることが難しくても、インターネットによってより広い範囲で見つけることが可能になったと思います。自分の「価値観」や「好き」の共有から始まる横の繋がりが大事だと思いました。そんな繋がりを持ったユーザー同士でのコミュニティ作りができるアプリを作りました。
# DEMO
## トップページ（投稿一覧）
![トップページ](/images/gazo_gif/4e2545a70752294378be67e914708fc3.gif)
ユーザーが投稿した写真を見ることができます。ユーザーのアイコンや名前から、ユーザーマイページに移動することができます。また、フォロー機能もついていて、フォローしているユーザーのアカウントが表示されるようになっています。
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
- フォロー機能
- いいね機能
- ハッシュタグ機能
- 個人同士でのチャット機能
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
