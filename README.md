# README

This README would normally document whatever steps are necessary to get the
application up and running.

Things you may want to cover:

* Ruby version

* System dependencies

* Configuration

* Database creation

* Database initialization

* How to run the test suite

* Services (job queues, cache servers, search engines, etc.)

* Deployment instructions

* ...


#アプリケーション名  sharelife

#概要  インターネット上に画像を投稿する事ができ、それを不特定多数の人と共有する事ができる。画像それぞれにはコメント機能も備わっており、気に入った画像にはいいねボタンも用意されており、 お互いの画像を褒めあったり、評価や感想をする事が可能となる

#URL
#テストアカウント

#利用方法  まず、メールアドレスやユーザーネーム、パスワードを設定して、アカウントを作成します。その後はメールアドレスとパスワードだけでログインが可能です。ログインすると投稿一覧ページに遷移するので気になった写真を選択して、コメントやいいねボタンを押す事ができます。また、上部には投稿ボタンがあるので、そこを押して画像投稿ページに遷移し画像投稿が行えますし、投稿ボタンの隣にある人型のマークを押すと自らのプロフィール画面に遷移し、自分のプロフィールを編集する事ができます

#課題解決  インスタグラムのようなおしゃれな投稿サイトのは画像は投稿できないしかし、自分もお気に入りの画像を誰かに見てもらってコメントだったり、いいねをしてもらって良い写真を撮ったり、画像を加工する技術を向上させたい




#実装予定の機能 サインアップ・サインイン機能やユーザープロフィール機能、投稿機能、投稿機能の詳細・削除機能、いいね機能、コメント機能を実装します





#設計

		## users テーブル
		
		| Column    | Type    | Options     |
		| --------  | ------  | ----------- |
		｜name | string | null: false |
		
		| email      | string       |  null: false |
		| encrypted_password   | string       | null: false |
		
		
		### Association
		
		- has_many :posts
		- has_many :comments
    - has_many :likes
		
		## comments テーブル
		
		| Column    | Type    | Options     |
		| --------  | ------  | ----------- |
		| comment  | string  | null: false |
		| user_id     | references  | null: false, foreign_key: true |
		| post_id    | references  | null: false, foreign_key: true |
		
    ### Association
		
		- belongs_to :user
		- belongs_to :post
		
		##  posts テーブル
		
		| Column    | Type    | Options     |
		| --------  | ------  | ----------- |
		| caption | string  |
		| user_id     | references  | null: false, foreign_key: true |
		
		###  Association;
		
		- belongs_to :user
		- has_many :comments
		- has_many :likes
		- has_many :photos
		
		##  photos  テーブル
		
		| Column    | Type    | Options     |
		| --------  | ------  | ----------- |
		| image | string | null: false|
		| post_id  | references   | null: false |
		
		###  Association
		
		- belongs_to :post

		## likes テーブル
		
		| Column    | Type    | Options     |
		| --------  | ------  | ----------- |
		| post_id | references  | null:false, foreign_key: true |
		| user_id     | references  | null: false, foreign_key: true |
		
		###  Association;
		
		- belongs_to :post
		- belongs_to :user
		





