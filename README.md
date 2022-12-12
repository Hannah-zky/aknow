# README
# 目次
[1.アプリケーションの概要](#1)

[2.アプリケーションを制作した背景](#2)

[3.このアプリケーションで使用している技術の一覧](#3)

<!--[4.工夫したところ](#4)-->

<!--[5.苦労したところ](#5)-->

<!--[6.プログラミングに対する向き合い方](#6)-->

<!--[7.オリジナルアプリを通して得られた気付き](#7)-->


<a id="1"></a>
# 1.アプリケーションの概要

### アプリケーション名
A KNOW
## 概要
着方に悩んでしまったり、持て余している洋服を投稿(A KNOW)し、他のユーザーからコーディネートのアドバイス(ANSWER)をもらうことで、新しいコーディネートを知る(KNOW)ことが出来るアプリケーションです。
## URL（AWS EC2によるデプロイ）
現在、ローカル環境にて動作確認中のため、完成次第記載いたします。
## 利用方法
1.トップページのサイドバーからユーザー新規登録を行う。
[![Image from Gyazo](https://i.gyazo.com/51641d6dd56b2eae7557f489532b6177.gif)](https://gyazo.com/51641d6dd56b2eae7557f489532b6177)

2.「A KNOW」ボタンから、アドバイスが欲しいアイテム(画像・カテゴリ・アイテム説明)を入力し、投稿する。
[![Image from Gyazo](https://i.gyazo.com/922203724f0874e656e9a701ac8855bc.gif)](https://gyazo.com/922203724f0874e656e9a701ac8855bc)

<a id="2"></a>
# 2.アプリケーションを制作した背景
洋服は毎日着る物であり、TPOに合わせたコーディネートを考える必要があります。
そこには人によって様々な悩みがあります。

また、ファッションに苦手意識がある人もたくさんいると思います。

そこで、洋服やコーディネートに関しての悩みを「あの..ちょっと聞きたいんですけど」という感じで気軽に質問ができるアプリケーションを作りたいと考えました。

買い物に行くよりも気軽に質問ができ、他の人からのアドバイスをもらうことで、悩みや苦手意識を払拭できると思い、制作しました。


## 解決したい悩み

* 「いつも同じコーディネートになってしまうので、違うコーディネートを知りたい」

* 「前に買った服を今っぽく着るために合わせる洋服を教えてほしい」など

## 洗い出した要件
[要件定義シート](https://docs.google.com/spreadsheets/d/15myiNs1CLnqbPpRpNhKmTAScNEte400-Jkex3icJKjs/edit?usp=sharing)
# 機能一覧
* ユーザー登録機能
[![Image from Gyazo](https://i.gyazo.com/d9592a349c56118bc63125a57087984d.gif)](https://gyazo.com/d9592a349c56118bc63125a57087984d)
* ログイン機能
[![Image from Gyazo](https://i.gyazo.com/aeda75f975f7061e33c3232ff122bc5d.png)](https://gyazo.com/aeda75f975f7061e33c3232ff122bc5d)
* アイテム投稿・編集・削除機能
[![Image from Gyazo](https://i.gyazo.com/a77501645cfd70764c4a8af0be57ca2e.jpg)](https://gyazo.com/a77501645cfd70764c4a8af0be57ca2e)
* コメント機能
[![Image from Gyazo](https://i.gyazo.com/d29e22b561ef07ae5d5e19e15b595072.gif)](https://gyazo.com/d29e22b561ef07ae5d5e19e15b595072)

# 実装予定の機能
* ソーシャルログイン認証機能
* タグ機能
* 検索機能
* お気に入り機能
* フォロー機能

<a id="3"></a>
# 3.このアプリケーションで使用している技術の一覧
## 使用しているフレームワーク・バージョン等
### ローカル環境
* Rails 6.0.6
* ruby 2.6.5
* MySQL 5.7.39
* Bootstrap 4.1.0
### 本番環境
* Rails 6.0.6
* ruby 2.6.5
* capistrano 3.17.1
* unicorn 5.4.1
* nginx 1.22.0
* MariaDB 5.5.68
## ER図
[![Image from Gyazo](https://i.gyazo.com/46bda4588a1ed3c2aacf2b79ea754fbc.jpg)](https://gyazo.com/46bda4588a1ed3c2aacf2b79ea754fbc)
## 画面遷移図
[![Image from Gyazo](https://i.gyazo.com/8b17172c028afdfcbe91ed0c4919642d.png)](https://gyazo.com/8b17172c028afdfcbe91ed0c4919642d)