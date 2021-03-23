# アプリケーション名
task_calendar

# アプリケーション概要
- トップページからカレンダーの閲覧
- ユーザー登録・ログイン後、マイページでの予定登録・閲覧
- 予定の編集・削除

# URL


# Basic認証
ID:
Pass:

# テスト用アカウント
ID:
Pass:

#


# テーブル設計

## users テーブル


| Column             | Type   | Options    |
| ------------------ | ------ | ---------- |
| username           | string | null:false |
| email              | string | null:false |
| encrypted_password | string | null:false |

### Association

- has_many :tasks

## tasks テーブル

| Column      | Type       | Options                      |
| ----------- | ---------- | ---------------------------- |
| title       | string     | null:false                   |
| start_time  | datetime   | null:false                   |
| text        | text       |                              |
| category_id | integer    | null:false                   |
| rank_id     | integer    | null:false                   |
| status_id   | integer    | null:false                   |
| user        | references | null:false, foreign_key:true |

### Association

- belongs_to :user
