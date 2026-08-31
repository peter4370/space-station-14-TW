## Rev Head

roles-antag-rev-head-name = 革命領袖
roles-antag-rev-head-objective = 你的目標是透過說服人們加入你的陣營，並消滅「指揮部」的所有成員，從而接管這座基地。
head-rev-role-greeting =
    你是革命領袖。你的任務是透過殺害、拘禁或感化等手段，將「指揮部」的所有成員逐出權力核心。
    「辛迪加」已賦予你一種能將他人轉化為你事業支持者的「閃光」。 請注意，此能力對配戴護目鏡或植入心智防護裝置者無效。請記住，「指揮部」與「安全部」的成員在聘用過程中皆會被植入心智防護裝置。
    革命萬歲！
head-rev-briefing =
    利用閃光彈將人們轉化為你的同路人。
    殺死、制服或轉化「指揮部」的所有成員，以接管這座基地。
head-rev-break-mindshield = 心智護盾植入體已被摧毀！

## Rev

roles-antag-rev-name = 革命性的
roles-antag-rev-objective = 你的目標是確保安全、服從革命領袖的命令，並透過消滅指揮部所有成員，協助他們接管車站。
rev-break-control = { $name } 已記起他們真正的效忠對象！
rev-role-greeting =
    你是革命者。你的任務是保護革命領袖，並協助他們接管這座基地。
    革命者必須齊心協力，將「指揮部」的所有成員殺害、制服或轉化。
    革命萬歲！
rev-briefing = 協助革命領袖們殺害、制伏或感化「指揮部」的所有成員，以接管這座空間站。

## General

rev-title = 革命者
rev-description = 隱藏在船員中的革命者正試圖說服他人加入他們的陣營，並推翻指揮部。
rev-not-enough-ready-players = 準備好要參加這場遊戲的玩家人數不足。在所需的 { $minimumPlayers } 名玩家中，只有 { $readyPlayersCount } 名玩家準備就緒。無法開始《Revolutionaries》遊戲。
rev-no-one-ready = 沒有玩家做好準備！無法啟動「革命者」。
rev-no-heads = 沒有可選任的革命領袖。無法招募革命者。
rev-won = 革命領袖們倖存下來，並成功奪取了該站的控制權。
rev-lost = 所有革命領袖都已逝世，唯獨「指揮部」倖存下來。
rev-stalemate = 指揮部和革命領袖們全都陣亡了。這場戰役以平局告終。
rev-reverse-stalemate = 指揮官和主要革命領袖都倖存了。
rev-headrev-count =
    { $initialCount ->
        [one] 有一位革命領袖：
       *[other] 有 { $initialCount } 位革命領袖：
    }
rev-headrev-name-user = [color=#5e9cff]{ $name }[/color] ([color=gray]{ $username }[/color]) converted { $count } { $count ->
        [one] person
       *[other] people
    }
rev-headrev-name = [color=#5e9cff]{ $name }[/color] 轉換為 { $count } { $count ->
        [one] 人
       *[other] 人
    }

## Deconverted window

rev-deconverted-title = 脫教了！
rev-deconverted-text =
    隨著最後一位革命領袖的離世，革命已告終結。
    
    你已不再是革命者，所以請表現得體一點。
rev-deconverted-confirm = 確認
