## Strings for the "grant_connect_bypass" command.

cmd-grant_connect_bypass-desc = 暫時允許使用者繞過例行的連線檢查。
cmd-grant_connect_bypass-help =
    Usage: grant_connect_bypass <user> [duration minutes]
    Temporarily grants a user the ability to bypass regular connections restrictions.
    The bypass only applies to this game server and will expire after (by default) 1 hour.
    They will be able to join regardless of whitelist, panic bunker, or player cap.
cmd-grant_connect_bypass-arg-user = <user>
cmd-grant_connect_bypass-arg-duration = { "[" }持續時間：分鐘]
cmd-grant_connect_bypass-invalid-args = 預期有 1 或 2 個參數
cmd-grant_connect_bypass-unknown-user = 找不到使用者「{ $user }」
cmd-grant_connect_bypass-invalid-duration = 「{ $duration }」為無效的持續時間
cmd-grant_connect_bypass-success = 已成功為使用者 '{ $user }' 新增繞過設定
