# asana-tasks
Asanaのタスクと進捗状況を取得し、Slackへ通知する

# 通知形式
 - 未完了のタスク
```
[タスクの進捗] タスク名
```

 - 完了済みのタスク
```
[X] タスク名
```

# 事前準備
 - Asanaに関する準備。
    - [Personal Access Tokenの取得](https://app.asana.com/0/developer-console) をし `/lib/task.rb` の `L5` にセットする
    - `USER_TASK_LIST_GID` を `/lib/task.rb` の `L4` にセットする
 - SlackのIncoming WebhookのURLを取得し `/lib/slack_message.rb` の `L9` にセットする。また任意でチャンネル、ユーザーネーム、アイコンをセットする。

# 環境構築
 - `Ruby: 2.6.3` の環境を構築する。
 - rootディレクトリで `bundle install` 実行する。

# 実行する
 - rootディレクトリで `ruby lib/app.rb` を実行する。

# URL
 - [Asana Developers](https://developers.asana.com/docs)
 - [httparty](https://github.com/jnunemaker/httparty/)
 - [slack-notifier](https://github.com/stevenosloan/slack-notifier/)
