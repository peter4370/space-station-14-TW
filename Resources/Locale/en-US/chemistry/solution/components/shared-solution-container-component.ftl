shared-solution-container-component-on-examine-main-text =
    It contains { INDEFINITE($desc) } [color={ $color }]{ $colorName } { $desc }[/color] { $chemCount ->
        [1] chemical.
       *[other] mixture of chemicals.
    }
examinable-solution-has-recognizable-chemicals = 您可以在解中辨識出 { $recognizedString }。
examinable-solution-recognized = [color={ $color }]{ $chemical }[/color]
examinable-solution-on-examine-volume = The contained solution is { $fillLevel ->
    [exact] holding [color=white]{$current}/{$max}u[/color].
   *[other] [bold]{ -solution-vague-fill-level(fillLevel: $fillLevel) }[/bold].
}

examinable-solution-on-examine-volume-no-max = The contained solution is { $fillLevel ->
    [exact] holding [color=white]{$current}u[/color].
   *[other] [bold]{ -solution-vague-fill-level(fillLevel: $fillLevel) }[/bold].
}

examinable-solution-on-examine-volume-puddle =
    水窪的狀態是 { $fillLevel ->
        [exact] [color=white]{ $current }u[/color]。
        [full] 巨大且溢出！
        [mostlyfull] 巨大且溢出！
        [halffull] 深且有水流。
        [halfempty] 非常深。
       *[ mostlyempty ] 匯聚成一處。
        [empty] 形成多個小水窪。
    }
-solution-vague-fill-level =
    { $fillLevel ->
        [full] [color=white]滿[/color]
        [mostlyfull] [color=#DFDFDF]幾乎滿[/color]
        [halffull] [color=#C8C8C8]半滿[/color]
        [halfempty] [color=#C8C8C8]半空[/color]
        [mostlyempty] [color=#A4A4A4]大部分空[/color]
       *[empty] [color=gray]空[/color]
    }
