## Strings for the "grant_connect_bypass" command.

cmd-grant_connect_bypass-desc = 暫時允許使用者繞過例行的連線檢查。
cmd-grant_connect_bypass-help =
    用法：grant_connect_bypass<user> [持續時間 分鐘]
    暫時授予使用者繞過常規連線限制的權限。
    此繞過權限僅適用於此遊戲伺服器，並將於（預設）1 小時後失效。
    無論白名單、緊急避難所或玩家上限設定為何，該使用者皆可加入遊戲。
cmd-grant_connect_bypass-arg-user = <user>
cmd-grant_connect_bypass-arg-duration = [持續時間：分鐘]
cmd-grant_connect_bypass-invalid-args = 預期有 1 或 2 個參數
cmd-grant_connect_bypass-unknown-user = 找不到使用者「{ $user }」
cmd-grant_connect_bypass-invalid-duration = 「{ $duration }」為無效的持續時間
cmd-grant_connect_bypass-success = 已成功為使用者 '{ $user }' 新增繞過設定
