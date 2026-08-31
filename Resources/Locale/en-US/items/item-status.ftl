# Battery Status
battery-status-charge = 電量：[color=#5E7C16]{ $percent }[/color] %
battery-status-switchable-state =
    { $state ->
        [on] [color=green]開啟[/color]
        [off] [color=red]關閉[/color]
       *[other] 未知
    }
battery-status-state = 狀態：{ $state }
# Charge Status
charge-status-count = 費用：[color=fuchsia]{ $current }/{ $max }[/color]
charge-status-recharge = 剩餘時間：[color=yellow]{ $seconds }秒[/color]
# Tank Pressure Status
tank-pressure-status = 壓力：[color=orange]{ $pressure } kPa[/color]
tank-status-switchable-state =
    { $state ->
        [open] [color=red]Open[/color]
        [closed] [color=green]Closed[/color]
       *[other] Unknown
    }
tank-status-state = 狀態：{ $state }
# Magazine Status
magazine-status-rounds = 回合：[color=yellow]{ $current }/{ $max }[/color]
# Guardian Status
guardian-status-used = [color=red]二手[/color]
guardian-status-ready = [color=green]準備就緒[/color]
# Anomaly Status
anomaly-status-infinite = [color=gold]無限的電荷[/color]
anomaly-status-charges = [color=orange]{ $charges } 費用[/color]
# Timer Trigger Status
timer-trigger-status-delay = 設定延遲：[color=white]{ $delay }秒[/color]
