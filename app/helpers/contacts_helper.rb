module ContactsHelper
# helpersはアルファベット順にすべて読み込まれる
# 別ファイルでも同名のdefは作成できない

    def choose_new_or_edit
     if action_name == 'new' || action_name == 'confirm'
       confirm_contacts_path
     #もしnewかconfirmアクションなら確認画面へ
     
     elsif action_name == 'edit'
       new_contact_path
     #もしeditアクションなら確認画面を経由せず一覧画面へ
     
     end
    end
end