objectives-round-end-result =
    { $count ->
        [one] There was one { $agent }.
       *[other] There were { $count } { MAKEPLURAL($agent) }.
    }
objectives-round-end-result-in-custody = 在 { $count } 中的 { $custody } { MAKEPLURAL($agent) } 人被拘留。
objectives-player-user-named = [color=White]{ $name }[/color] ([color=gray]{ $user }[/color])
objectives-player-named = [color=White]{ $name }[/color]
objectives-no-objectives = { $custody }{ $title } 曾是 { $agent }。
objectives-with-objectives = { $custody }{ $title } 是一位 { $agent }，其目標如下：
objectives-objective-success = { $objective } | [color=green]成功！[/color] ({ TOSTRING($progress, "P0") })
objectives-objective-partial-success = { $objective } | [color=yellow]部分成功！[/color] ({ TOSTRING($progress, "P0") })
objectives-objective-partial-failure = { $objective } | [color=orange]部分失敗！[/color] ({ TOSTRING($progress, "P0") })
objectives-objective-fail = { $objective } | [color=red]失敗！[/color] ({ TOSTRING($progress, "P0") })
objectives-in-custody = [bold][color=red]| 已被拘留 | [/color][/bold]
