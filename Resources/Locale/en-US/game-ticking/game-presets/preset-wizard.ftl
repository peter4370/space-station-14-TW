## Survivor

roles-antag-survivor-name = 《倖存者》
# It's a Halo reference
roles-antag-survivor-objective = 當前目標：生存
survivor-role-greeting =
    你是名倖存者。最重要的是，你必須活著回到中央指揮部。
    盡可能蒐集足夠的火力，以確保自身生存。
    不要相信任何人。
survivor-round-end-dead-count =
    { $deadCount ->
        [one] [color=red]{ $deadCount }[/color] 名倖存者死亡。
       *[other] [color=red]{ $deadCount }[/color] 名倖存者死亡。
    }
survivor-round-end-alive-count =
    { $aliveCount ->
        [one] [color=yellow]{ $aliveCount }[/color] 名倖存者被困在該空間站上。
       *[other] [color=yellow]{ $aliveCount }[/color] 名倖存者被困在該空間站上。
    }
survivor-round-end-alive-on-shuttle-count =
    { $aliveCount ->
        [one] [color=green]{ $aliveCount }[/color] 名倖存者成功脫險。
       *[other] [color=green]{ $aliveCount }[/color] 名倖存者成功脫險。
    }

## Wizard

objective-issuer-swf = [color=turquoise]太空巫師聯盟[/color]
wizard-title = 巫師
wizard-description = 車站裡有個巫師！你永遠不知道他們會幹出什麼事。
roles-antag-wizard-name = 巫師
roles-antag-wizard-objective = 給他們上一堂永生難忘的課。
wizard-role-greeting =
    巫師登場，火球來襲！
    太空巫師聯盟與納諾特拉森之間一直存在著緊張局勢。 你已被太空巫師聯盟選中，前往該空間站進行造訪，並「提醒他們」為何不該輕視施法者。
    製造混亂與破壞吧！具體行動由你決定，但請記住，太空巫師聯盟希望你能平安脫身。
wizard-round-end-name = 向導

## TODO: Wizard Apprentice (Coming sometime post-wizard release)

