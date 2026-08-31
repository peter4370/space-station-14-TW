game-ticker-restart-round = 重新開始回合...
game-ticker-start-round = 本回合即將開始……
game-ticker-start-round-cannot-start-game-mode-fallback = 無法啟動 {$failedGameMode} 模式！ 預設為 {$fallbackMode}...
game-ticker-start-round-cannot-start-game-mode-restart = 無法啟動 {$failedGameMode} 模式！ 重新開始一輪……
game-ticker-start-round-invalid-map = 所選地圖 {$map} 不符合遊戲模式 {$mode}  的資格。 遊戲模式可能無法如預期般運作……
game-ticker-unknown-role = 未知
game-ticker-delay-start = 回合開始已延遲 {$seconds} 秒。
game-ticker-pause-start = 回合開始已暫停。
game-ticker-pause-start-resumed = 回合開始倒數計時現已恢復。
game-ticker-player-join-game-message = 歡迎來到第 14 號太空站！ 如果您是第一次遊玩，請務必閱讀遊戲規則，並請不要害怕在 LOOC（本地 OOC）或 OOC（通常僅在回合之間開放）中尋求協助。
game-ticker-get-info-text = 您好，歡迎來到 [color=white]太空站 14！[/color]
                            當前回合為：[color=white]#{$roundId}[/color]
                            當前玩家人數為：[color=white]{$playerCount}[/color]
                            當前地圖為： [color=white]{$mapName}[/color]
                            當前遊戲模式為：[color=white]{$gmTitle}[/color]
                            >[color=yellow]{$desc}[/color]
game-ticker-get-info-preround-text = 您好，歡迎來到 [color=white]太空站 14！[/color]
                            當前回合為： [color=white]#{$roundId}[/color]
                            當前玩家人數為： [color=white]{$playerCount}[/color] ([color=white]{$readyCount}[/color] {$readyCount ->
                                [one] 已準備就緒
                                *[other] 已準備就緒
                            }
                            當前地圖為：[color=white]{$mapName}[/color]
                            當前遊戲模式為：[color=white]{$gmTitle}[/color]
                            >[color=yellow]{$desc}[/color]
game-ticker-no-map-selected = [color=yellow]尚未選取地圖！[/color]
game-ticker-player-no-jobs-available-when-joining = 嘗試加入遊戲時，沒有可選的職務。

# 當玩家加入時，在聊天視窗中向管理員顯示的訊息：
player-join-message = 玩家 {$name} 已加入。
player-first-join-message = 玩家 {$name} 首次加入。

# 當玩家離開時，在聊天視窗中向管理員顯示的訊息
player-leave-message = Player {$name} left.

latejoin-arrival-announcement = {$character} ({$job}) 已抵達車站！
latejoin-arrival-announcement-special =  《 {$job} {$character} 》  即將登場！
latejoin-arrival-sender = 車站
latejoin-arrivals-direction = 一輛接駁車將於稍後抵達，載送您前往您的車站。
latejoin-arrivals-direction-time = 接駁車將載您前往車站，預計抵達時間為 {$time}。
latejoin-arrivals-dumped-from-shuttle = 一股神秘的力量阻止你搭乘抵達班車離開。
latejoin-arrivals-teleport-to-spawn = 一股神秘力量將你從抵達接駁船上傳送出去。 祝您值班平安順利！

preset-not-enough-ready-players = 無法啟動 {$presetName}。 需要 {$minimumPlayers} 名玩家，但我們目前有 {$readyPlayersCount}  名。
preset-no-one-ready = 無法啟動 {$presetName}。 沒有任何球員準備就緒。

game-run-level-PreRoundLobby = 回合前等候室
game-run-level-InRound = 回合中
game-run-level-PostRound = 回合後
