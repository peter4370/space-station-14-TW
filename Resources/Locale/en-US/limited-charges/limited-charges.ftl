limited-charges-charges-remaining =
    { $charges ->
        [one] 剩餘 [color=fuchsia]{ $charges }[/color] 次電量。
       *[other] 剩餘 [color=fuchsia]{ $charges }[/color] 次電量。
    }
limited-charges-max-charges = 它已達到 [color=green]最大[/color] 電量。
limited-charges-recharging =
    { $seconds ->
        [one] 距離下次充能還剩 [color=yellow]{ $seconds }[/color] 秒。
       *[other] 距離下次充能還剩 [color=yellow]{ $seconds }[/color] 秒。
    }
limited-charges-no-charges = 電量已耗盡！
