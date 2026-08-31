# Loading Screen

replay-loading = 載入中 ({ $cur }/{ $total })
replay-loading-reading = 讀取檔案
replay-loading-processing = 處理檔案
replay-loading-spawning = 實體的生成
replay-loading-initializing = 初始化實體
replay-loading-starting = 起始實體
replay-loading-failed =
    無法載入重播。錯誤：
    { $reason }
replay-loading-retry = 請嘗試以更高的例外容錯度進行載入——可能會導致錯誤！
replay-loading-cancel = 取消
# Main Menu
replay-menu-subtext = 重播客戶端
replay-menu-load = 載入選定的重播
replay-menu-select = 選擇一則重播
replay-menu-open = 開啟重播資料夾
replay-menu-none = 未找到任何重播。
# Main Menu Info Box
replay-info-title = 重播資訊
replay-info-none-selected = 未選取任何重播
replay-info-invalid = [color=red]選取的重播無效[/color]
replay-info-info =
    { "[" }color=gray]已選取：[/color]  { $name } ({ $file })
    { "[" }color=gray]時間：[/color]   { $time }
    { "[" }color=gray]回合 ID：[/color]   { $roundId }
    { "[" }color=gray]持續時間：[/color]   { $duration }
    { "[" }color=gray]分叉 ID：[/color]   { $forkId }
    { "[" }color=gray]版本：[/color]   { $version }
    { "[" }color=gray]引擎：[/color]   { $engVersion }
    { "[" }color=gray]類型雜湊：[/color]   { $hash }
    { "[" }color=gray]計算雜湊：[/color]   { $compHash }
# Replay selection window
replay-menu-select-title = 選擇重播
# Replay related verbs
replay-verb-spectate = 觀看
# command
cmd-replay-spectate-help = replay_spectate [可選實體]
cmd-replay-spectate-desc = 將本地玩家與指定的實體 UID 綁定或解除綁定。
cmd-replay-spectate-hint = 可選的 EntityUid
