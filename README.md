## アプリケーション名
tech-camp-learned

## アプリケーション概要
テックキャンプで１０週間を通して学んだことを記事としてまとめて、また機能を実装することで自身の実装力を証明する。
また、これからプログラミングを学ぼうと思う人々へ情報発信や共有ができるコミニュケーションアプリとして運用する予定。

## URL
#デプロイ済みのURLを記述しましょう。デプロイが済んでいない場合は、デプロイ次第記述しましょう。

## テスト用アカウント
#ログイン機能等を実装した場合は、記述しましょう。またBasic認証等を設けている場合は、そのID/Passも記述しましょう。

## 利用方法
ユーザー登録し、記事の閲覧や記事に対してコメントができる。

## 目指した課題解決
２０３０年に７９万人のエンジニアが不足すると言われている昨今。
プログラミングに興味を持ち学んでみようとする人々を増やす目的と、実際にプログラミングを学習したいと思った人が何から始めれば良いかという課題を解決する。

## 洗い出した要件
機能・・ユーザー登録、ログイン機能、ログアウト機能、記事投稿、記事編集機能、記事削除機能、コメント機能、評価機能

## 実装した機能についてのGIFと説明
#実装した機能について、それぞれどのような特徴があるのか列挙しましょう。GIFを添えることで、イメージがしやすくなります。

## 実装予定の機能
評価機能

## データベース設計
ER図等を添付しましょう。

## ローカルでの動作方法
git cloneしてから、ローカルで動作をさせるまでに必要なコマンドを記述しましょう。この時、アプリケーション開発に使用した環境を併記することを忘れないでください（パッケージやRubyのバージョンなど）。


## usersテーブル

| Column   | Type       | Options                   |
| -------- | ---------- | ------------------------- |
| name     | references | null: false               |
| email    | references | null: false, unique: true |
| password | references | null: false               |

### Association
- has_many :reports
- has_many :comments


## reportsテーブル

| Column | Type       | Options                        |
| ------ | ---------- | ------------------------------ |
| title  | string     | null: false                    |
| report | text       | null: false                    |
| image  | text       | null: false                    |
| user   | references | null: false, foreign_key: true |

### Association
- belongs_to :user
- has_many   :comments

## commentsテーブル

| Column  | Type       | Options                        |
| ------- | ---------- | ------------------------------ |
| comment | text       | null: false                    |
| user    | references | null: false, foreign_key: true |
| report  | references | null: false, foreign_key: true |

### Association
- belongs_to :user
- belongs_to :report