nukeops-title = 核武特工
nukeops-description = 核武特工已將該站點鎖定為目標。請保護核彈圓盤，阻止他們啟動並引爆核彈！
nukeops-welcome =
    你是一名核武特工。你的目標是炸毀 { $station }，並確保它徹底化為一片廢墟。你的上司——「辛迪加」——已為你提供了執行這項任務所需的工具。
    「行動 { $name }」正式啟動！納諾特拉森，去死吧！
nukeops-briefing = 你的目標很簡單：運送有效載荷，並在有效載荷引爆前撤離。開始任務。
nukeops-opsmajor = [color=crimson]「辛迪加」大獲全勝！[/color]
nukeops-opsminor = [color=crimson]「辛迪加」取得小勝！[/color]
nukeops-neutral = [color=yellow]中立結果！[/color]
nukeops-crewminor = [color=green]船員們取得了一場小勝利！[/color]
nukeops-crewmajor = [color=green]船隊大獲全勝！[/color]
nukeops-cond-nukeexplodedoncorrectstation = 核武特工成功炸毀了該站。
nukeops-cond-nukeexplodedonnukieoutpost = 這個核武行動前哨站遭核爆摧毀了！
nukeops-cond-nukeexplodedonincorrectlocation = 那顆核彈在站外引爆了。
nukeops-cond-nukeactiveinstation = 該核彈在駐紮點處處於已裝填狀態。
nukeops-cond-nukeactiveatcentcom = 那顆核彈已解除安全裝置，並運送至中央司令部！
nukeops-cond-nukediskoncentcom = 船員們帶著核武認證光碟逃離了現場。
nukeops-cond-nukedisknotoncentcom = 船員們將那枚核認證光碟遺留了下來。
nukeops-cond-nukiesabandoned = 這些核武特工被拋棄了。
nukeops-cond-allnukiesdead = 所有核武特工均已陣亡。
nukeops-cond-somenukiesalive = 部分核武特工喪生。
nukeops-cond-allnukiesalive = 沒有任何核武特工喪生。
nukeops-disk-location-title = 磁碟的最終位置：
nukeops-disk-carried-by =
    { " " }carried by [color=White]{ $name }[/color], [color=orange]{ $job }[/color], { $location } { $user ->
        [unknown] { "" }
       *[other] ([color=gray]{ $user }[/color])
    }
storage-hierarchy-list =
    { $items-left ->
        [0] { $existing-text } { $item },
       *[other] { $existing-text } { $item }, 在
    }
nukeops-list-start = 這些核武特工分別是：
nukeops-list-name = - [color=White]{ $name }[/color]
nukeops-list-name-user = - [color=White]{ $name }[/color] ([color=gray]{ $user }[/color])
nukeops-not-enough-ready-players = 準備好參戰的玩家人數不足！在所需的 { $minimumPlayers } 名玩家中，僅有 { $readyPlayersCount } 名玩家準備就緒。無法啟動 Nukeops。
nukeops-no-one-ready = 沒有玩家準備就緒！無法啟動《Nukeops》。
nukeops-role-commander = 指揮官
nukeops-role-agent = 醫務兵
nukeops-role-operator = 操作員
