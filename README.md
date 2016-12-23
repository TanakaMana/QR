# rails new初期設定済みの雛形

## clone後に打ち込むコマンド
```
$ git clone ~~~~
$ rm -rf .git/ #既存リポジトリのgit管理対象から外す
$ mv base_project ◯◯(新しいアプリ名)
$ bundle exec bundle install
$ spring stop
$ bin/spring
  database.ymlのデータベース名変更
$ bundle exec rake db:create
```
