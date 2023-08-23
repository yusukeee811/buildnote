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
- <b> [ユーザ検索機能](#ユーザ検索機能) </b> 🔍 <br> 知り合いを検索し、フォローできます。
- <b> [フォロー機能](#フォロー機能) </b> 🤝 <br> 知り合いや気になる投稿をしている人をフォローし、自分が見たい情報を得ることができます。
- <b> [投稿機能](#投稿機能) </b> 📸 <br> 会員が発信したい内容を発信できます。
- <b> [いいね機能](#いいね機能) </b> ❤️ <br> 気に入った投稿や留めておきたい投稿に対してリアクションできます。
- <b> [いいね一覧表示機能](#いいね一覧表示機能) </b> 💕 <br> いいねした投稿を好きな時に閲覧できます。
- <b> [コメント機能](#コメント機能) </b> 💬 <br> 気になった投稿に対してリアクションし、コミュニケーションを活発化できます。
- <b> [投稿検索機能（ハッシュタグ検索）](#投稿検索機能（ハッシュタグ検索）) </b> #️⃣ <br> 気になっているトピックに関する投稿をチェックできます。
- <b> [カレンダー機能](#カレンダー機能) </b> 🗓️ <br> トレーニング日を可視化し、継続的にトレーニングができているか確認できます。
- <b> [トレーニング記録管理機能](#トレーニング記録管理機能) </b> 📝  <br> セット数、回数、重量などのトレーニングデータを入力・保存できます。
- <b> [グラフ機能](#グラフ機能) </b> 📊 <br> トレーニングデータからグラフを作成し、トレーニング成果を可視化することができます。
- <b> [ユーザー管理機能（管理者）](#ユーザー管理機能（管理者）) </b> 👑 <br> 会員の一覧や登録内容を確認します。不正な手段で登録した会員や、不適切な投稿を行う会員の利用停止が行えます。

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

https://github.com/yusukeee811/buildnote/assets/132319174/4fa9180b-ebf0-4024-860b-6f722270ed12

# 会員機能
投稿がどの会員によるものか明らかにします。<br>
タイムライン、フォロー・フォロワー情報など、会員ごとにカスタマイズされた情報を表示します。

https://github.com/yusukeee811/buildnote/assets/132319174/6d0aadb9-63c3-4124-a777-9bb356721a5c

# ユーザー検索機能
ヘッダーの『検索』から知り合いを検索し、フォローできます。

https://github.com/yusukeee811/buildnote/assets/132319174/187705b3-9bfb-4b71-949c-b22665b6899e

# フォロー機能
知り合いや気になる投稿をしている人をフォローし、自分が見たい情報を得ることができます。

https://github.com/yusukeee811/buildnote/assets/132319174/5cc50e84-572f-4324-b1a3-91c3a318642d

# 投稿機能
ヘッダーの『投稿』から新規投稿ページに遷移します。<br>
会員が発信したい内容を発信できます。

https://github.com/yusukeee811/buildnote/assets/132319174/73f47fb8-c590-4d64-aa07-ca82a0c82cf2

# いいね機能
気に入った投稿や留めておきたい投稿に対してリアクションできます。

https://github.com/yusukeee811/buildnote/assets/132319174/57150b98-4437-43fa-ace4-dc4a360f682b

# いいね一覧表示機能
ヘッダーの『いいね一覧』からいいね一覧ページに遷移します。<br>
いいねした投稿を好きな時に閲覧できます。

https://github.com/yusukeee811/buildnote/assets/132319174/fc6dca9e-2e4d-4d43-b401-8606d0708011

# コメント機能
気になった投稿に対してコメントし、コミュニケーションを活発化できます。

https://github.com/yusukeee811/buildnote/assets/132319174/d348aa7c-c02d-4d46-a451-1e8d2276c03f

# 投稿検索機能（ハッシュタグ検索）
ヘッダーの『検索』から#検索ページに遷移します。<br>
気になっているトピックに関する投稿をチェックできます。

https://github.com/yusukeee811/buildnote/assets/132319174/2188ea64-5d23-4df2-9fbb-6342de64dd35

# カレンダー機能
ヘッダーの『カレンダー』からカレンダーページに遷移します。<br>
トレーニング日を可視化し、継続的にトレーニングができているか確認できます。

<img width="1437" alt="カレンダー機能" src="https://github.com/yusukeee811/buildnote/assets/132319174/a443d3a9-2e49-4820-a69d-b0fd24b2f728">

# トレーニング記録管理機能
ヘッダーの『トレーニング記録』からトレーニング記録ページに遷移します。<br>
セット数、回数、重量などのトレーニングデータを入力・保存できます。

https://github.com/yusukeee811/buildnote/assets/132319174/8566ce3c-d6f9-4cb4-8200-d59d64b2dd27

# グラフ機能
ヘッダーの『グラフ』からグラフページに遷移します。<br>
トレーニングデータからグラフを作成し、トレーニング成果を可視化することができます。

https://github.com/yusukeee811/buildnote/assets/132319174/77d6b977-0286-40b4-8270-cb89d125d86a

# ユーザー管理機能
管理者ページのログイン方法（/admin/sign_in) 管理者ページのログインに必要なメールアドレス及びパスワードは下記の通りです。 URLの後ろに/admin/sign_inをつけてください。

```shell
メールアドレス：admin@example.com パスワード:password
```

会員、投稿の一覧や登録内容を確認します。不正な手段で登録した会員や、不適切な投稿を行う会員の利用停止が行えます。

https://github.com/yusukeee811/buildnote/assets/132319174/2a6e2ff9-08ff-40ea-aaf3-8673708ce157

# 使用素材
- [ロゴジェネレーター](https://www.shopify.com/jp/tools/logo-maker)
- [icon-icons.com](https://icon-icons.com/ja/)
- [O-DAN(オーダン)](https://o-dan.net/ja/)
