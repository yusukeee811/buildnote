<p align="center">
<img src="app/assets/images/buildnote/linkedin_banner_image_2.png" alt="buildnote">
</p>

<p align="center">
ポートフォリオ用のアプリケーション
</p>

<p align="center">
<img src="https://img.shields.io/badge/テーマ-ffd700" alt="テーマ">
<img src="https://img.shields.io/badge/SNS%E7%B3%BB-ffd700" alt="SNS系">
<img src="https://img.shields.io/badge/%E8%A8%98%E9%8C%B2%E7%B3%BB-ffd700" alt="記録系">
<br>
<img src="https://img.shields.io/badge/-Linux-6C6694.svg?logo=linux&style=flat" alt="Linux">
<img src="https://img.shields.io/badge/-HTML-333.svg?logo=html5&style=flat" alt="HTML">
<img src="https://img.shields.io/badge/-CSS-1572B6.svg?logo=css3&style=flat" alt="CSS">
<img src="https://img.shields.io/badge/Javascript-276DC3.svg?logo=javascript&style=flat" alt="Javascript">
<img src="https://img.shields.io/badge/-Ruby%203.1.2p20-CC342D.svg?logo=Ruby&style=flat" alt="Ruby">
<img src="https://img.shields.io/badge/-MySQL-4479A1.svg?logo=mysql&style=flat" alt="MySQL">
<img src="https://img.shields.io/badge/-Rails%206.1.4-CC0000.svg?logo=rubyonrails&style=flat" alt="Rails">
<img src="https://img.shields.io/badge/-Bootstrap-563D7C.svg?logo=bootstrap&style=flat" alt="Bootstrap">
<img src="https://img.shields.io/badge/-Font%20Awesome%205.15.4-fffafa.svg?logo=fontawesome&style=flat" alt="Font Awesome">
<img src="https://img.shields.io/badge/-jQuery%203.7.0-0769AD.svg?logo=jquery&style=flat" alt="jQuery">
<img src="https://img.shields.io/badge/Amazon%20Cloud9-blue" alt="Amazon Cloud9">
<img src="https://img.shields.io/badge/-Amazon%20EC2-ff4500.svg?logo=amazonec2&style=flat" alt="Amazon EC2">
<img src="https://img.shields.io/badge/-Amazon%20RDS-000080.svg?logo=amazonrds&style=flat" alt="Amazon RDS">
<br>
<a href="https://github.com/yusukeee811">
<img src="https://img.shields.io/badge/Created%20by-yusukeee811-blue?logo=github" alt="開発者リンク">
</a>
</p>

[ 日本語版 | [英語版](README-eng.md) ]
# サイト概要
### サイトテーマ
『<b>buildnote</b>』は、トレーニングを行う人向けに特化した記録系SNSサイトです。<br>
トレーニングの記録管理により、トレーニングの成果をサポートし、同時にトレーニングを行うユーザー同士で交流することができます。

### テーマを選んだ２つの理由
1. トレーニング成果の可視化<br>
  グラフなどにより、メモ帳に記録するよりも明確にトレーニング成果を可視化できます。<br>

2. トレーニングに特化したSNSの必要性<br>
  一般的なSNSでは、鍛えた体やトレーニングの成果を投稿することに抵抗感を感じる人もいますが、トレーニングに特化したSNSであれば、筋トレやフィットネスに対する共通の関心や目的を持つ人々が集まり、鍛えた体やトレーニングの成果を自然に共有することができます。

### ターゲットユーザ
トレーニングを行う人

### 主な利用シーン
- トレーニングを行う際の記録管理
- トレーニングを行う人同士での交流と情報共有

# 実装機能
- <b> [ゲストログイン](#ゲストログイン) </b> 🚪 <br> 会員登録前にまずは試しに使えるようにし、登録のハードルを下げます。
- <b> [会員機能](#会員機能) </b> 👥 <br> 投稿がどの会員によるものか明らかにします。タイムライン、フォロー・フォロワー情報など、会員ごとにカスタマイズされた情報を表示します。
- <b> [投稿機能](#投稿機能) </b> 📸 <br> 会員が発信したい内容を発信できます。
- <b> [投稿検索機能（ハッシュタグ検索）](#投稿検索機能（ハッシュタグ検索）) </b> #️⃣ <br> 気になっているトピックに関する投稿をチェックできます。
- <b> [ユーザー管理機能（管理者）](#ユーザー管理機能（管理者）) </b> 👑 <br> 会員の一覧や登録内容を確認します。不正な手段で登録した会員や、不適切な投稿を行う会員の利用停止が行えます。
- <b> [いいね機能](#いいね機能) </b> ❤️ <br> 気に入った投稿や留めておきたい投稿に対してリアクションできます。
- <b> [いいね一覧表示機能](#いいね一覧表示機能) </b> 💕 <br> いいねした投稿を好きな時に閲覧できます。
- <b> [フォロー機能](#フォロー機能) </b> 🤝 <br> 知り合いや気になる投稿をしている人をフォローし、自分が見たい情報を得ることができます。
- <b> [コメント機能](#コメント機能) </b> 💬 <br> 気になった投稿に対してリアクションし、コミュニケーションを活発化できます。
- <b> [ユーザ検索機能](#ユーザ検索機能) </b> 🔍 <br> 知り合いを検索し、フォローできます。
- <b> [トレーニング記録管理機能](#トレーニング記録管理機能) </b> 📝  <br> セット数、回数、重量などのトレーニングデータを入力・保存できます。
- <b> [グラフ機能](#グラフ機能) </b> 📊 <br> トレーニングデータからグラフを作成し、トレーニング成果を可視化することができます。
- <b> [カレンダー機能](#カレンダー機能) </b> 🗓️ <br> トレーニング日を可視化し、継続的にトレーニングができているか確認できます。

# 設計
## 画面設計
### 画面遷移図
- 会員側

<p align="center">
<img src="app/assets/images/UI_Flows/UIFlows_user.jpg" alt="UI Flows User">
</p>

- 管理者側

<p align="center">
<img src="app/assets/images/UI_Flows/UIFlows_admin.jpg" alt="UI Flows Admin">
</p>

### ワイヤーフレーム
- 会員側 <br>
[ワイヤーフレーム](app/assets/pdf/Wire_frame/wireframe_user.pdf)

- 管理者側 <br>
[ワイヤーフレーム](app/assets/pdf/Wire_frame/wireframe_admin.pdf)

## データベース設計
### ER図

<p align="center">
<img src="app/assets/images/ER_diagram/ER_diagram.jpg" alt="ER diagram">
</p>

### テーブル定義書
[Google スプレッドシート](https://docs.google.com/spreadsheets/d/1eoqDMm04hEqI0XbXiWhPfNqwQ6nZfI0DdmKXfF4AtBg/edit?usp=sharing)

## 詳細設計
### アプリケーション詳細設計書

[Google スプレッドシート](https://docs.google.com/spreadsheets/d/15XIUHg1zwqNAPrMz759BzxNL3kP_FmTqh-AW7rmOd30/edit?usp=sharing)

# ゲストログイン
ヘッダーからログインできます。 <br>
ゲストログインした場合、ゲストユーザーの更新・退会はできません。

![d053462477428aa4b7cab45e871ff9d7](https://github.com/yusukeee811/buildnote/assets/132319174/cf8692f9-5858-49b3-b232-e8ddbe49ea0d)

# 会員機能
投稿がどの会員によるものか明らかにします。<br>
タイムライン、フォロー・フォロワー情報など、会員ごとにカスタマイズされた情報を表示します。

![4134e5c183126086f3300143b0cdc14c](https://github.com/yusukeee811/buildnote/assets/132319174/09fde7ee-dc6f-4d18-a62f-55c15ed6e9df)


# 使用素材
- [ロゴジェネレーター](https://www.shopify.com/jp/tools/logo-maker)
- [icon-icons.com](https://icon-icons.com/ja/)
- [O-DAN(オーダン)](https://o-dan.net/ja/)