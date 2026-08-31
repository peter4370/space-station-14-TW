# Loc strings for various entity state & client-side PVS related commands

cmd-reset-ent-help = 用法：{ $command }<Entity UID>
cmd-reset-ent-desc = 將實體重設為最近接收到的伺服器狀態。此操作也會將已與主伺服器斷開連接並移至空域的實體重設。
cmd-reset-all-ents-help = 用法：{ $command }
cmd-reset-all-ents-desc = 將所有實體重置為最近接收到的伺服器狀態。此操作僅影響尚未與空域分離的實體。
cmd-detach-ent-help = 用法：{ $command }<Entity UID>
cmd-detach-ent-desc = 將實體移至空域，就如同它已離開 PVS 範圍一般。
cmd-local-delete-help = 用法：{ $command }<Entity UID>
cmd-local-delete-desc = 刪除一個實體。與一般的刪除指令不同，此操作是在「客戶端」執行的。除非該實體是客戶端實體，否則此操作很可能會導致錯誤。
cmd-full-state-reset-help = 用法：{ $command }
cmd-full-state-reset-desc = 清除所有實體狀態資訊，並向伺服器請求完整的狀態資料。
