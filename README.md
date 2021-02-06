# アプリ名
### Photo diary
# 概要
このアプリでは、登録者は写真や日記のような記録を投稿することができます。また、投稿した写真や日記に対して、コメントをし合ってチャットのような会話をすることができます。インスタグラムでは、投稿した写真に対してコメントを残すことはできますが、写真と一緒に投稿した文章はコメントで流れていってしまいます。また、LINEのようなチャットツールでは、会話が主体なので、誰かが投稿した写真は会話が続くと流れていってしまい、写真を見ながらの会話が難しいです。今回作成した「Phto diary」では、ユーザーが投稿した写真と文章を見ながらユーザー同士での会話ができるようになっています。写真とその時感じた文章を通してユーザー同士での価値観を共有することができます。ユーザーが写真で撮った好きなモノをきっかけにコミュニケーションが始まり、そこから繋がりが生まれることも期待して作りました。
# 本番環境
ログイン情報（テスト用）
・Eメール:test@gmail.com
・パスワード:22222222
# 制作背景（意図）
ユーザーの投稿した写真とその写真から感じとったモノを日記のように書けるアプリを作りました。ユーザーがその時に目に映ったモノに対して感じ取ったことや自分の好みのモノを発信することで、同じように感じたユーザーがコメントを通してお互い会話をすることができます。
# DEMO
## トップページ（投稿一覧）
![トップページ](https://github.com/KojiK222/Photo_diary_app/blob/master/app/assets/images/gazo_gif/d3b6b23d7162f09afd35a986cd1fc0c1.gif)
ユーザーが投稿した写真を見ることができます。ユーザーのアイコンや名前から、ユーザーマイページに移動することができます。また、フォロー機能もついていて、フォローしたりフォローしているユーザーのアカウントが表示されるようになっています。写真を直接クリックすると詳細ページに移動できるようになっています。
## 新規登録画面
![新規登録画面](https://github.com/KojiK222/Photo_diary_app/blob/master/app/assets/images/gazo_gif/%E6%96%B0%E8%A6%8F%E7%99%BB%E9%8C%B2%E7%94%BB%E9%9D%A2.png)
名前、メールアドレス、ユーザーネーム、パスワードを登録することができます。
## ログイン画面
![ログイン画面](https://github.com/KojiK222/Photo_diary_app/blob/master/app/assets/images/gazo_gif/%E3%83%AD%E3%82%B0%E3%82%A4%E3%83%B3%E7%94%BB%E9%9D%A2.png)
すでに登録してあるユーザーが、メールアドレスとパスワードでログインすることができます。
## 投稿作成画面
![投稿作成画面](https://github.com/KojiK222/Photo_diary_app/blob/master/app/assets/images/gazo_gif/7dfabb6c7d920bd4a90261ddd5df724a.png)
ユーザーの投稿するタイトル、写真、内容を作成することができます。
## 投稿詳細表示画面
![投稿詳細表示画面](https://github.com/KojiK222/Photo_diary_app/blob/master/app/assets/images/gazo_gif/4b64e9fcf2bb2b814d378382ef6d8b3c.gif)
タイトル、写真、文章といった、投稿した写真から感じたことなどを日記のような形で見ることができます。また、その投稿したモノに対して、ユーザー同士でお互い思ったことをコメントし合うことができます。投稿したモノの編集や削除は投稿した本人しかできない設定になっています。このアプリに登録していない人は、コメントはすることはできませんが投稿したモノとユーザー同士でのコメントを見ることはできます。
## 投稿詳細編集画面
![投稿詳細編集画面](https://github.com/KojiK222/Photo_diary_app/blob/master/app/assets/images/gazo_gif/%E7%B7%A8%E9%9B%86%E7%94%BB%E9%9D%A2.png)
タイトル、写真、文章の内容を編集することができます。
## ユーザーマイページ画面
![ユーザーマイページ画面](https://github.com/KojiK222/Photo_diary_app/blob/master/app/assets/images/gazo_gif/671263913af1454af5eec6739e71da84.jpg)
アプリ内でのユーザー自身の情報や今まで投稿してきた写真を見ることができます。プロフィールはそのユーザー本人しか編集できない設定になっています。写真をクリックすれば、その写真の詳細画面に移動できます。フォロー、フォロワーをクリックするとそれぞれの一覧ページに移動します。
## プロフィール編集画面
![プロフィール編集画面](https://github.com/KojiK222/Photo_diary_app/blob/master/app/assets/images/gazo_gif/a1148d3612f75a566fb5a5455a3b022e.png)
すでに登録しているユーザーの名前、プロフィール、プロフィール写真、メールアドレスを変更することができます。
## フォローとフォロワーの一覧ページ
![フォロー一覧](https://github.com/KojiK222/Photo_diary_app/blob/master/app/assets/images/gazo_gif/f5a11c56300cd5317c34e4d04900111b.png)
![フォロワー一覧](https://github.com/KojiK222/Photo_diary_app/blob/master/app/assets/images/gazo_gif/2417e0ee5f31a7e43f43b12fd0ffff48.png)
フォローしているユーザーとフォローされているユーザーの一覧ページです。ユーザーマイページの「フォロー」「フォロワー」という文字をクリックすればそれぞれの一覧ページに移動します。
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
- twitterやfacebookでログインや新規登録をできるようにする
- フォロー機能といいね機能を非同期通信できるようにする
- フォローとフォロワー数、投稿数の表示
- ハッシュタグ機能
- 個人同士でのチャット機能
- 新規会員登録、ログインでのvalidatesなどの制限をかける
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

## favoritesテーブル
|Column|Type|Options|
|------|----|-------|
|user_id|integer|
|photo_id|integer|
## Association
- belongs_to :user
- belongs_to :photo

## relationshipsテーブル
|Column|Type|Options|
|------|----|-------|
|following_id|integer|
|follower_id|integer|
## Association
- belongs_to :following
- belongs_to :follower
 
## talkroomsテーブル
|Column|Type|Options|
|------|----|-------|
|name|string|
## Association
- has_many :messages, dependent: :destroy
- has_many :entries, dependent: :destroy

## entriesテーブル
|Column|Type|Options|
|------|----|-------|
## Association
- belongs_to :user
- belongs_to :talkroom

## messagesテーブル
|Column|Type|Options|
|------|----|-------|
|content|text|
## Association
- validates :content, presence: true
- belongs_to :user
- belongs_to :talkroom
