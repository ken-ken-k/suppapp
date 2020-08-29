# README

# アプリ名
SUPPAPP

# 概要
このアプリケーションではおすすめのサプリメントを共有するのことのできるアプリケーションです。詳細を文章で説明し、画像付きで投稿が可能なのでわかりやすく自分のおすすめのサプリメントを紹介できます。

##　本番環境
https://suppapp.herokuapp.com/

ログイン情報　（テスト用）
● Eメール :ken@gmail.com
● パルワード :777777

● Eメール :aki@gmail.com
● パルワード :888888

*本番環境でデプロイはできているもののトップページのみ
画像が表示されなくなってしまっています。
解決に向けて様々なことを試しています。

# 制作背景　（意図）
自分は筋肉トレーニングを行なっていてトレーニング仲間とよく話すことはどのようなサプリメントを飲んでいるかといった話が多いです。
そこでサプリの紹介のみにフォーカスするアプリを作ることにより他の人がどのようなサプリメントを飲んでいて、どのような感想を持っているのかが分かることにより、自分の知らないサプリメントに出会え、筋力トレーニングのパフォーマンス向上にも繋がるのではないかと思い制作しました。

# DEMO
トップページ一覧
![a](https://user-images.githubusercontent.com/67785156/91548943-29c38380-e961-11ea-9507-d456ccb05ed2.jpg)

新規登録ページ
<img width="1673" alt="b" src="https://user-images.githubusercontent.com/67785156/91553424-55963780-e968-11ea-867c-953a4c231341.png">

サプリ一覧
<img width="1646" alt="c" src="https://user-images.githubusercontent.com/67785156/91553536-8aa28a00-e968-11ea-9be3-90c01354534c.png">

マイページ
<img width="1506" alt="d" src="https://user-images.githubusercontent.com/67785156/91553697-cfc6bc00-e968-11ea-858e-4d340a02c2b1.png">

# 工夫したポイント
私は技術、理解度ともに高くはないので学校で習ったことの復讐として今回のアプリを制作しました。
ビューはbulmaを利用しより簡易的に早く綺麗に作りました。
基本のアクションをしっかりと抑え綺麗に作ることを意識しました。

## 使用技術
#　バックエンド
Ruby, Ruby on Rails

# フロント
bulma, HTML

# データベース
MySQL

# ソース管理
GitHub

# エディタ
VSCode

# 今後の課題
今後は基本的な機能に加えajaxでの処理やjavascriptを用いて、今回のアプリにより多くの実装をしていくと共に、違うアプリの制作についても積極的に行なっていきたいと思います。
フロント、サーバーどちらも行えるようになりたいと思います。


## users
|Column|Type|Options|
|------|----|-------|
|username|string|null:false|
|email|string|null: false, default: ""|
|encrypted_password|string|null: false, default:""|
|reset_password_token|string|null: false|
|profile|text||
|profile_image_id|string||
### Association
- has_many :supplements


## supplements
|Column|Type|Options|
|------|----|-------|
|user_id|integer|foreign_key: true|
|title|string|null: false|
|body|text|null: false|
|image_id|string|null: false|
### Association
- belongs_to :user