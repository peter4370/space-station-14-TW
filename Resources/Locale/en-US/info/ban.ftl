# ban
cmd-ban-desc = 封禁某人
cmd-ban-help = 用法：ban<name or user ID> <reason> [禁言時間以分鐘為單位；若不指定或指定為 0，則為永久禁言]
cmd-ban-player = 找不到該名稱的玩家。
cmd-ban-invalid-minutes = { $minutes } 不是有效的分鐘數！
cmd-ban-invalid-severity = { $severity } 不是有效的嚴重性等級！
cmd-ban-invalid-arguments = 參數數量不正確
cmd-ban-hint = <姓名／使用者 ID>
cmd-ban-hint-reason = <reason>
cmd-ban-hint-duration = [時長]
cmd-ban-hint-severity = [嚴重程度]
cmd-ban-hint-duration-1 = 永久性
cmd-ban-hint-duration-2 = 1 天
cmd-ban-hint-duration-3 = 3 天
cmd-ban-hint-duration-4 = 1 週
cmd-ban-hint-duration-5 = 2 週
cmd-ban-hint-duration-6 = 1 個月
# ban panel
cmd-banpanel-desc = 開啟封禁面板
cmd-banpanel-help = 用法：banpanel [名稱或使用者 GUID]
cmd-banpanel-server = 此功能無法從伺服器主控台使用
cmd-banpanel-player-err = 找不到指定的播放器
# listbans
cmd-banlist-desc = 列出使用者的有效封禁清單。
cmd-banlist-help = 用法：禁用清單<name or user ID>
cmd-banlist-empty = 未找到針對 { $user } 的有效封禁
cmd-banlist-hint = <姓名／使用者 ID>
cmd-ban_exemption_update-desc = 針對某位球員的某種禁令設定豁免。
cmd-ban_exemption_update-help =
    用法：ban_exemption_update<player> <flag> [<flag> [...]]
    指定多個標記，可為玩家設定多個封禁豁免標記。
    若要移除所有豁免，請執行此指令並將唯一標記設為「None」。
cmd-ban_exemption_update-nargs = 預期至少有 2 個參數
cmd-ban_exemption_update-locate = 無法找到播放器「{ $player }」。
cmd-ban_exemption_update-invalid-flag = 標誌「{ $flag }」無效。
cmd-ban_exemption_update-success = 更新了「{ $player }」（{ $uid }）的封禁豁免標記。
cmd-ban_exemption_update-arg-player = <player>
cmd-ban_exemption_update-arg-flag = <flag>
cmd-ban_exemption_get-desc = 顯示特定球員的禁賽豁免情況。
cmd-ban_exemption_get-help = 用法：ban_exemption_get<player>
cmd-ban_exemption_get-nargs = 預期有且僅有 1 個參數
cmd-ban_exemption_get-none = 該用戶不得豁免任何禁令。
cmd-ban_exemption_get-show = 該使用者不受以下封禁標記的限制：{ $flags }。
cmd-ban_exemption_get-arg-player = <player>
# Ban panel
ban-panel-title = 封禁小組
ban-panel-player = 玩家
ban-panel-ip = IP
ban-panel-hwid = HWID
ban-panel-reason = 理由
ban-panel-last-conn = 使用上次連線時的 IP 和 HWID 嗎？
ban-panel-submit = 班
ban-panel-confirm = 你確定嗎？
ban-panel-tabs-basic = 基本資訊
ban-panel-tabs-reason = 理由
ban-panel-tabs-players = 球員名單
ban-panel-tabs-role = 角色禁用資訊
ban-panel-no-data = 您必須提供使用者、IP 或 HWID 其中一項，才能進行封禁
ban-panel-invalid-ip = 無法解析該 IP 位址。請重新嘗試
ban-panel-select = 選擇類型
ban-panel-server = 伺服器封禁
ban-panel-role = 角色禁令
ban-panel-minutes = 會議紀錄
ban-panel-hours = 營業時間
ban-panel-days = 天數
ban-panel-weeks = 週
ban-panel-months = 個月
ban-panel-years = 年
ban-panel-permanent = 永久性
ban-panel-ip-hwid-tooltip = 請留空並勾選下方的核取方塊，以使用上次連線的詳細資料
ban-panel-severity = 嚴重程度：
ban-panel-erase = 刪除該回合的聊天訊息及玩家
ban-panel-expiry-error = err
# Ban string
server-ban-string = { $admin } 針對 [{ $name }, { $ip }, { $hwid }] 建立了一項嚴重程度的伺服器封禁（{ $severity }），有效期至 { $expires }，理由為：{ $reason }
server-ban-string-no-pii = { $admin } 針對 { $severity } 設定了一項嚴重程度的伺服器封禁，有效期至 { $expires }，適用對象為 { $name }，理由為：{ $reason }
server-ban-string-never = 從未
# Kick on ban
ban-kick-reason = 您已被封禁
