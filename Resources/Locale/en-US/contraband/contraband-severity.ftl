contraband-examine-text-Minor =
    { $type ->
       *[item] [color={ $color }]This item is considered minor contraband.[/color]
        [reagent] [color={ $color }]This reagent is considered minor contraband.[/color]
    }
contraband-examine-text-Restricted =
    { $type ->
       *[item] [color={ $color }]此項目僅限本系使用。[/color]
        [reagent] [color={ $color }]此試劑僅限本系使用。[/color]
    }
contraband-examine-text-Restricted-department =
    { $type ->
       *[item] [color={ $color }]This item is restricted to { $departments }, and may be considered contraband.[/color]
        [reagent] [color={ $color }]This reagent is restricted to { $departments }, and may be considered contraband.[/color]
    }
contraband-examine-text-Major =
    { $type ->
       *[item] [color={ $color }]This item is considered major contraband.[/color]
        [reagent] [color={ $color }]This reagent is considered major contraband.[/color]
    }
contraband-examine-text-GrandTheft =
    { $type ->
       *[item] [color={ $color }]此物品是「辛迪加」特工極為重視的目標！[/color]
        [reagent] [color={ $color }]此藥劑是「辛迪加」特工極為重視的目標！[/color]
    }
contraband-examine-text-Highly-Illegal =
    { $type ->
       *[item] [color={ $color }]此物品屬高度非法的走私貨！[/color]
        [reagent] [color={ $color }]此試劑屬高度非法的走私貨！[/color]
    }
contraband-examine-text-Syndicate =
    { $type ->
       *[item] [color={ $color }]This item is highly illegal Syndicate contraband![/color]
        [reagent] [color={ $color }]This reagent is highly illegal Syndicate contraband![/color]
    }
contraband-examine-text-Magical =
    { $type ->
       *[item] [color={ $color }]此物品屬高度非法的魔法違禁品！[/color]
        [reagent] [color={ $color }]此藥劑屬高度非法的魔法違禁品！[/color]
    }
contraband-examine-text-avoid-carrying-around = [color=red][italic]除非有正當理由，否則最好避免在公共場合公開攜帶這東西。[/italic][/color]
contraband-examine-text-in-the-clear = [color=green][italic]公開攜帶這個應該沒問題。[/italic][/color]
contraband-examinable-verb-text = 合法性
contraband-examinable-verb-message = 請確認此項目的合法性。
contraband-department-plural = { $department }
contraband-job-plural = { MAKEPLURAL($job) }
