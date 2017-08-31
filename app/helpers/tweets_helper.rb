# helpersはアルファベット順にすべて読み込まれる
# 別ファイルでも同名のdefは作成できない

module TweetsHelper
    def choose_new_or_edit
     if action_name == 'new' || action_name == 'confirm'
       confirm_tweets_path
     #もしnewかconfirmアクションなら確認画面へ
     
     elsif action_name == 'edit'
       tweet_path
     #もしeditアクションなら確認画面を経由せず一覧画面へ
     
     end
    end
end
