# UI
admin-notes-title = 關於 { $player } 的說明
admin-notes-new-note = 新筆記
admin-notes-show-more = 顯示更多
admin-notes-for = 備註：{ $player }
admin-notes-id = Id：{ $id }
admin-notes-type = 類型：{ $type }
admin-notes-severity = 嚴重程度：{ $severity }
admin-notes-secret = 秘密
admin-notes-notsecret = 並非秘密
admin-notes-expires = 有效期至：{ $expires }
admin-notes-expires-never = 無有效期限
admin-notes-edited-never = 絕不
admin-notes-round-id = 輪次編號：{ $id }
admin-notes-round-id-unknown = 回合編號：未知
admin-notes-created-by = 創建者：{ $author }
admin-notes-created-at = 建立於：{ $date }
admin-notes-last-edited-by = 最後由 { $author } 編輯
admin-notes-last-edited-at = 最後編輯時間：{ $date }
admin-notes-edit = 編輯
admin-notes-delete = 刪除
admin-notes-hide = 隱藏
admin-notes-delete-confirm = 確認刪除
admin-notes-edited = 最後由 { $author } 於 { $date } 編輯
admin-notes-unbanned = 由 { $admin } 於 { $date } 解除封禁
admin-notes-message-desc = [color=white]You have received { $count ->
        [1] an administrative message
       *[other] administrative messages
    } since the last time you played on this server.[/color]
admin-notes-message-admin = 摘自 [bold]{ $admin }[/bold]，撰寫於 { TOSTRING($date, "f") }：
admin-notes-message-wait = 「接受」按鈕將在 { $time } 秒後啟用。
admin-notes-message-accept = 永久關閉
admin-notes-message-dismiss = 暫時忽略
admin-notes-message-seen = 已看過
admin-notes-banned-from = 被禁止進入
admin-notes-the-server = 伺服器
admin-notes-permanently = 永久地
admin-notes-days = { $days } 天
admin-notes-hours = { $hours } 小時
admin-notes-minutes = { $minutes } 分鐘
# Note editor UI
admin-note-editor-title-new = 為 { $player } 建立一則新筆記
admin-note-editor-title-existing = 編輯註記 { $id } 於 { $player } 由 { $author } 發表
admin-note-editor-pop-out = 彈出
admin-note-editor-secret = 秘密？
admin-note-editor-secret-tooltip = 勾選此選項後，玩家將無法看到這則備註
admin-note-editor-type-note = 註
admin-note-editor-type-message = 訊息
admin-note-editor-type-watchlist = 關注清單
admin-note-editor-type-server-ban = 伺服器封禁
admin-note-editor-type-role-ban = 角色封禁
admin-note-editor-severity-select = 選擇
admin-note-editor-severity-none = 無
admin-note-editor-severity-low = 低
admin-note-editor-severity-medium = 中
admin-note-editor-severity-high = 高
admin-note-editor-expiry-checkbox = 是永久的嗎？
admin-note-editor-expiry-checkbox-tooltip = 勾選此處以設定過期日期
admin-note-editor-expiry-label = 剩餘有效期：
admin-note-editor-expiry-label-params = 有效期至：{ $date }（於 { $expiresIn } 內）
admin-note-editor-expiry-label-expired = 已過期
admin-note-editor-expiry-placeholder = 請輸入到期時間（整數）。
admin-note-editor-submit = 提交
admin-note-editor-submit-confirm = 你確定嗎？
# Time
admin-note-button-minutes = 會議紀錄
admin-note-button-hours = 營業時間
admin-note-button-days = 天數
admin-note-button-weeks = 週
admin-note-button-months = 個月
admin-note-button-years = 年
admin-note-button-centuries = 幾個世紀
# Verb
admin-notes-verb-text = 開啟管理員備註
# Watchlist and message login
admin-notes-watchlist = { $player } 的觀察名單：{ $message }
admin-notes-new-message = 您已收到來自 { $admin } 的管理員訊息：{ $message }
admin-notes-fallback-admin-name = [系統]
# Admin remarks
admin-remarks-command-description = 開啟管理員備註頁面
admin-remarks-command-error = 管理員留言功能已停用
admin-remarks-title = 管理員備註
# Misc
system-user = [系統]
