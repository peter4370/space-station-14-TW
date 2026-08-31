### Localization for role ban command

cmd-roleban-desc = 將一名玩家從某個角色中移除
cmd-roleban-help = 用法：roleban<name or user ID> <job> <reason> [禁言時間（以分鐘為單位），若未指定或指定為 0，則表示永久禁言]

## Completion result hints

cmd-roleban-hint-1 = <name or user ID>
cmd-roleban-hint-2 = <job>
cmd-roleban-hint-3 = <reason>
cmd-roleban-hint-4 = [時長以分鐘為單位，若不填寫或填寫 0，則表示永久封禁]
cmd-roleban-hint-5 = [嚴重程度]
cmd-roleban-hint-duration-1 = 永久性
cmd-roleban-hint-duration-2 = 1 天
cmd-roleban-hint-duration-3 = 3 天
cmd-roleban-hint-duration-4 = 1 週
cmd-roleban-hint-duration-5 = 2 週
cmd-roleban-hint-duration-6 = 1 個月

### Localization for role unban command

cmd-roleunban-desc = 撤銷對某名球員的角色禁令
cmd-roleunban-help = 用法：roleunban<role ban id>
cmd-roleunban-unable-to-parse-id =
    無法將 { $id } 解析為封禁 ID 整數。
    { $help }

## Completion result hints

cmd-roleunban-hint-1 = <role ban id>

### Localization for roleban list command

cmd-rolebanlist-desc = 列出使用者遭禁用的角色
cmd-rolebanlist-help = 用法：<name or user ID> [包含未被封禁的]

## Completion result hints

cmd-rolebanlist-hint-1 = <name or user ID>
cmd-rolebanlist-hint-2 = [包含未被封禁的內容]
cmd-roleban-minutes-parse = { $time } 不是有效的分鐘數。\n{ $help }
cmd-roleban-severity-parse = ${ severity } 並非有效的嚴重性等級\n{ $help }.
cmd-roleban-arg-count = 參數數量不正確。
cmd-roleban-job-parse = 工作 { $job } 不存在。
cmd-roleban-name-parse = 找不到該名稱的玩家。
cmd-roleban-success = 角色已將 { $target } 從 { $role } 中封禁，理由為 { $reason } { $length }。
cmd-roleban-inf = 永久地
cmd-roleban-until = 直到 { $expires }
# Department bans
cmd-departmentban-desc = 禁止某位玩家擔任某個部門所包含的職位
cmd-departmentban-help = 用法：departmentban<name or user ID> <department> <reason> [禁用時間以分鐘為單位；若省略或設定為 0，則為永久禁用]
