defusable-examine-defused = { CAPITALIZE(THE($name)) } 已 [color=lime]解除威脅[/color]。
defusable-examine-live = { CAPITALIZE(THE($name)) } 正在 [color=red]倒數[/color]，剩餘 [color=red]{ $time }[/color] 秒。
defusable-examine-live-display-off = { CAPITALIZE(THE($name)) } 正 [color=red]滴答作響[/color]，而且計時器似乎失靈了。
defusable-examine-inactive = { CAPITALIZE(THE($name)) } 目前處於 [color=lime]非活躍[/color] 狀態，但仍可被啟用。
defusable-examine-bolts =
    螺栓的狀態為 { $down ->
        [true] [color=red]向下[/color]
       *[false] [color=green]向上[/color]
    }。
