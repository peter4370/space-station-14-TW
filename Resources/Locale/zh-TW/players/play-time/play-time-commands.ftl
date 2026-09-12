parse-minutes-fail = Unable to parse '{$minutes}' as minutes
parse-session-fail = 未找到名為「{ $username }」的會話

## Role Timer Commands

# - playtime_addoverall
cmd-playtime_addoverall-desc = 將指定的分鐘數加到球員的總上場時間中
cmd-playtime_addoverall-help = 用法：{ $command }<user name> <minutes>
cmd-playtime_addoverall-succeed = { $username } 轉換為 { TOSTRING($time, "dddd\\:hh\\:mm") } 的總耗時增加
cmd-playtime_addoverall-arg-user = <user name>
cmd-playtime_addoverall-arg-minutes = <minutes>
cmd-playtime_addoverall-error-args = 預期有正好兩個參數
# - playtime_addrole
cmd-playtime_addrole-desc = 將指定的分鐘數加到玩家的角色遊戲時間中
cmd-playtime_addrole-help = 用法：{ $command }<user name> <role> <minutes>
cmd-playtime_addrole-succeed = 將 { $username } / \'{ $role }\' 的角色遊戲時間增加至 { TOSTRING($time, "dddd\\:hh\\:mm") }
cmd-playtime_addrole-arg-user = <user name>
cmd-playtime_addrole-arg-role = <role>
cmd-playtime_addrole-arg-minutes = <minutes>
cmd-playtime_addrole-error-args = 預期有正好三個參數
# - playtime_getoverall
cmd-playtime_getoverall-desc = 取得某名球員總上場時間中的指定分鐘數
cmd-playtime_getoverall-help = 用法：{ $command }<user name>
cmd-playtime_getoverall-success = { $username } 的總時間為 { TOSTRING($time, "dddd\\:hh\\:mm") }。
cmd-playtime_getoverall-arg-user = <user name>
cmd-playtime_getoverall-error-args = 預期有且僅有一個參數
# - GetRoleTimer
cmd-playtime_getrole-desc = 從玩家處取得所有或單一角色的計時器
cmd-playtime_getrole-help = 用法：{ $command }<user name> [角色]
cmd-playtime_getrole-no = 未找到任何角色計時器
cmd-playtime_getrole-role = 角色：{ $role }，演出時間：{ $time }
cmd-playtime_getrole-overall = 總遊玩時間為 { $time }
cmd-playtime_getrole-succeed = { $username } 的「Playtime」為：{ TOSTRING($time, "dddd\\:hh\\:mm") }。
cmd-playtime_getrole-arg-user = <user name>
cmd-playtime_getrole-arg-role = <role|'Overall'>
cmd-playtime_getrole-error-args = 預期參數數量為一或二個
# - playtime_save
cmd-playtime_save-desc = 將玩家的遊玩時間儲存至資料庫
cmd-playtime_save-help = 用法：{ $command }<user name>
cmd-playtime_save-succeed = 已儲存 { $username } 的遊玩時間
cmd-playtime_save-arg-user = <user name>
cmd-playtime_save-error-args = 預期有且僅有一個參數

## 'playtime_flush' command'

cmd-playtime_flush-desc = 清除「active trackers」，並將其儲存至「playtime tracking」中。
cmd-playtime_flush-help =
    用法：{ $command } [使用者名稱]
    這僅會將資料寫入內部儲存區，不會立即寫入資料庫。
    若提供使用者名稱，則僅對該使用者執行資料寫入。
cmd-playtime_flush-error-args = 預期參數個數為零或一
cmd-playtime_flush-arg-user = [使用者名稱]
