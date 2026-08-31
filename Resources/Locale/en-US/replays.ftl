# Playback Commands

cmd-replay-play-desc = 繼續重播。
cmd-replay-play-help = replay_play
cmd-replay-pause-desc = 暫停重播
cmd-replay-pause-help = 重播_暫停
cmd-replay-toggle-desc = 繼續或暫停重播。
cmd-replay-toggle-help = replay_toggle
cmd-replay-toggle-screenshot-mode-desc = 切換重播的截圖模式，並隱藏重播控制小工具。
cmd-replay-toggle-screenshot-mode-help = replay_toggle_screenshot_mode
cmd-replay-stop-desc = 暫停並載入重播。
cmd-replay-stop-help = replay_stop
cmd-replay-load-desc = 載入並開始播放重播。
cmd-replay-load-help = replay_load<replay folder>
cmd-replay-load-hint = 重播資料夾
cmd-replay-skip-desc = 在時間軸上向前或向後跳躍。
cmd-replay-skip-help = replay_skip<tick or timespan>
cmd-replay-skip-hint = 勾選框或時間範圍（時：分：秒）。
cmd-replay-set-time-desc = 跳轉至特定時間點（向前或向後）。
cmd-replay-set-time-help = replay_set<tick or time>
cmd-replay-set-time-hint = 時間點或時間區間（HH:MM:SS），自
cmd-replay-error-time = "{ $time }" 並非整數或時間區間。
cmd-replay-error-args = 參數個數不對。
cmd-replay-error-no-replay = 目前並未播放重播。
cmd-replay-error-already-loaded = 重播已載入。
cmd-replay-error-run-level = 連線至伺服器時，無法載入重播。
cmd-replay-toggleui-desc = 切換重播控制介面。

# Recording commands

cmd-replay-recording-start-desc = 開始錄製重播，可選擇設定時間限制。
cmd-replay-recording-start-help = 用法：replay_recording_start [名稱] [覆寫] [時間限制]
cmd-replay-recording-start-success = 已開始錄製重播。
cmd-replay-recording-start-already-recording = 正在錄製重播。
cmd-replay-recording-start-error = 嘗試開始錄製時發生錯誤。
cmd-replay-recording-start-hint-time = [時間限制（分鐘）]
cmd-replay-recording-start-hint-name = [姓名]
cmd-replay-recording-start-hint-overwrite = [覆寫 (布林值)]
cmd-replay-recording-stop-desc = 停止重播錄製。
cmd-replay-recording-stop-help = 用法：replay_recording_stop
cmd-replay-recording-stop-success = 已停止錄製重播。
cmd-replay-recording-stop-not-recording = 目前未錄製重播。
cmd-replay-recording-stats-desc = 顯示有關當前重播錄製的資訊。
cmd-replay-recording-stats-help = 用法：replay_recording_stats
cmd-replay-recording-stats-result = 持續時間：{ $time } 分鐘，時標數：{ $ticks }，大小：{ $size } MB，速率：{ $rate } MB/分鐘。
# Time Control UI
replay-time-box-scrubbing-label = 動態擦洗
replay-time-box-replay-time-label = 錄製時間：{ $current } / { $end }  ({ $percentage }%）
replay-time-box-server-time-label = 伺服器時間：{ $current } / { $end }
replay-time-box-index-label = 索引：{ $current } / { $total }
replay-time-box-tick-label = 勾選：{ $current } / { $total }
