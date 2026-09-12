guidebook-reagent-effect-description =
    {$quantity ->
        [0] {""}
        *[other] If there is at least {$quantity}u {$reagent},{" "}
    }{$chance ->
        [1] { $effect }
        *[other] Has a { NATURALPERCENT($chance, 2) } chance to { $effect }
    }{ $conditionCount ->
        [0] .
        *[other] {" "}when { $conditions }.
    }

guidebook-reagent-name = [bold][color={ $color }]{ CAPITALIZE($name) }[/color][/bold]
guidebook-reagent-recipes-header = 配方
guidebook-reagent-recipes-reagent-display = [bold]{ $reagent }[/bold] \[{ $ratio }\]
guidebook-reagent-sources-header = 資料來源
guidebook-reagent-sources-ent-wrapper = [bold]{ $name }[/bold] \[1\]
guidebook-reagent-sources-gas-wrapper = [bold]{ $name } (gas)[/bold] \[1\]
guidebook-reagent-effects-header = 效果
guidebook-reagent-effects-metabolism-stage-rate = [bold]{ $stage }[/bold] [color=gray]({ $rate } 單位/秒)[/color]
guidebook-reagent-effects-metabolite-item = { $reagent } 按 { NATURALPERCENT($rate, 2) } 的比率
guidebook-reagent-effects-metabolites = 代謝後轉化為 { $items }。
guidebook-reagent-plant-metabolisms-header = 植物代謝
guidebook-reagent-plant-metabolisms-rate = [bold]植物代謝[/bold] [color=gray](基礎值為每 3 秒 1 單位)[/color]
guidebook-reagent-physical-description = [italic]看來是 { $description }。[/italic]
guidebook-reagent-recipes-mix-info =
    { $minTemp ->
        [0]
            { $hasMax ->
                [true] { CAPITALIZE($verb) } 下方 { NATURALFIXED($maxTemp, 2) }K
               *[false] { CAPITALIZE($verb) }
            }
       *[other]
            { CAPITALIZE($verb) } { $hasMax ->
                [true] 介於 { NATURALFIXED($minTemp, 2) }K 與 { NATURALFIXED($maxTemp, 2) } 之間K
               *[false] 在 { NATURALFIXED($minTemp, 2) }K 之上
            }
    }
