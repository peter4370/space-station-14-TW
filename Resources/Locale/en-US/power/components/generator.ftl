generator-clogged = {CAPITALIZE(THE($generator))} shuts off abruptly!

portable-generator-verb-start = 啟動發電機
portable-generator-verb-start-msg-unreliable = 啟動發電機。這可能需要嘗試幾次。
portable-generator-verb-start-msg-reliable = 啟動發電機。
portable-generator-verb-start-msg-unanchored = 必須先將發電機固定好！
portable-generator-verb-stop = 停止發電機
portable-generator-start-fail = 你拉了拉繩子，但它沒發動。
portable-generator-start-success = 你拉動那條繩子，它便嗡嗡地運轉起來。
portable-generator-ui-title = 便攜式發電機
portable-generator-ui-status-stopped = 已停止：
portable-generator-ui-status-starting = 開始：
portable-generator-ui-status-running = 跑步：
portable-generator-ui-start = 開始
portable-generator-ui-stop = 停止
portable-generator-ui-target-power-label = 目標功率（kW）：
portable-generator-ui-efficiency-label = 效率：
portable-generator-ui-fuel-use-label = 燃料消耗：
portable-generator-ui-fuel-left-label = 剩餘燃油：
portable-generator-ui-clogged = 在油箱中檢測到污染物！
portable-generator-ui-eject = 排出
portable-generator-ui-eta = (~{ $minutes } 分鐘)
portable-generator-ui-unanchored = 《無錨》
portable-generator-ui-current-output = 當前輸出：{ $voltage }
portable-generator-ui-network-stats = 網路：
portable-generator-ui-network-stats-value = { POWERWATTS($supply) } / { POWERWATTS($load) }
portable-generator-ui-network-stats-not-connected = 未連線
power-switchable-generator-examine = 輸出功率設定為 { $voltage }。
power-switchable-generator-switched = 已將輸出切換至 { $voltage }！
power-switchable-voltage =
    { $voltage ->
        [HV] [color=orange]HV[/color]
        [MV] [color=yellow]MV[/color]
       *[LV] [color=green]LV[/color]
    }
power-switchable-switch-voltage = 切換至 { $voltage }
fuel-generator-verb-disable-on = 請先關閉發電機！
