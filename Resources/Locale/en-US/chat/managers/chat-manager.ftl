### UI

chat-manager-max-message-length = 您的訊息超過 { $maxMessageLength } 字元限制
chat-manager-ooc-chat-enabled-message = 已啟用 OOC 聊天功能。
chat-manager-ooc-chat-disabled-message = 已停用 OOC 聊天功能。
chat-manager-looc-chat-enabled-message = 已啟用 LOOC 聊天功能。
chat-manager-looc-chat-disabled-message = 已停用 LOOC 聊天功能。
chat-manager-dead-looc-chat-enabled-message = 已陣亡的玩家現在可以使用 LOOC。
chat-manager-dead-looc-chat-disabled-message = 已陣亡的玩家將無法再使用 LOOC。
chat-manager-crit-looc-chat-enabled-message = Crit 玩家現在可以使用 LOOC 了。
chat-manager-crit-looc-chat-disabled-message = Crit 玩家現在無法再使用 LOOC。
chat-manager-admin-ooc-chat-enabled-message = 已啟用管理員 OOC 聊天室。
chat-manager-admin-ooc-chat-disabled-message = 已停用管理員 OOC 聊天室。
chat-manager-dead-chat-enabled-message = 已啟用死人聊天室。
chat-manager-dead-chat-disabled-message = 已停用死人聊天室。
chat-manager-max-message-length-exceeded-message = 您的訊息超過了 { $limit } 字元的限制
chat-manager-no-headset-on-message = 你沒戴耳機！
chat-manager-no-radio-key = 未指定無線電密鑰！
chat-manager-no-such-channel = 沒有任何頻道具有鍵值 '{ $key }'！
chat-manager-whisper-headset-on-message = 你不能在廣播裡低語！
# Unicode U+201C and U+201D Double quotes.
chat-manager-speech-double-quote-begin = “
chat-manager-speech-double-quote-end = ”
chat-manager-server-wrap-message = [bold]{ $message }[/bold]
chat-manager-sender-announcement = 中央司令部
chat-manager-sender-announcement-wrap-message = [font size=14][bold]{ $sender } 公告：[/font][font size=12]
    { $message }[/bold][/font]
chat-manager-entity-say-wrap-message = [BubbleHeader][bold][Name]{ $entityName }[/Name][/bold][/BubbleHeader] { $verb }, [font={ $fontType } size={ $fontSize }]{ chat-manager-speech-double-quote-begin }[BubbleContent]{ $message }[/BubbleContent]{ chat-manager-speech-double-quote-end }[/font]
chat-manager-entity-say-bold-wrap-message = [BubbleHeader][bold][Name]{ $entityName }[/Name][/bold][/BubbleHeader] { $verb }, [font={ $fontType } size={ $fontSize }]{ chat-manager-speech-double-quote-begin }[BubbleContent][bold]{ $message }[/bold][/BubbleContent]{ chat-manager-speech-double-quote-end }[/font]
chat-manager-entity-whisper-wrap-message = [font size=11][italic][BubbleHeader][Name]{ $entityName }[/Name][/BubbleHeader] 輕聲說道：{ chat-manager-speech-double-quote-begin }[BubbleContent]{ $message }[/BubbleContent]{ chat-manager-speech-double-quote-end }[/italic][/font]
chat-manager-entity-whisper-unknown-wrap-message = [font size=11][italic][BubbleHeader]某人[/BubbleHeader] 低語道： { chat-manager-speech-double-quote-begin }[BubbleContent]{ $message }[/BubbleContent]{ chat-manager-speech-double-quote-end }[/italic][/font]
# THE() is not used here because the entity and its name can technically be disconnected if a nameOverride is passed...
chat-manager-entity-me-wrap-message = [italic]{ PROPER($entity) ->
       *[false] The { $entityName } { $message }[/italic]
        [true] { CAPITALIZE($entityName) } { $message }[/italic]
    }
chat-manager-entity-looc-wrap-message = LOOC：[bold]{ $entityName }:[/bold] { $message }
chat-manager-send-ooc-wrap-message = OOC：[bold]{ $playerName }:[/bold] { $message }
chat-manager-send-ooc-patron-wrap-message = OOC：[bold][color={ $patronColor }]{ $playerName }[/color]:[/bold] { $message }
chat-manager-send-dead-chat-wrap-message = { $deadChannelName }: [bold][BubbleHeader]{ $playerName }[/BubbleHeader]:[/bold] [BubbleContent]{ $message }[/BubbleContent]
chat-manager-send-admin-dead-chat-wrap-message = { $adminChannelName }: [bold]([BubbleHeader]{ $userName }[/BubbleHeader]):[/bold] [BubbleContent]{ $message }[/BubbleContent]
chat-manager-send-admin-chat-wrap-message = { $adminChannelName }: [bold]{ $playerName }:[/bold] { $message }
chat-manager-send-admin-announcement-wrap-message = [bold]{ $adminChannelName }: { $message }[/bold]
chat-manager-send-hook-ooc-wrap-message = OOC：[bold](D){ $senderName }:[/bold] { $message }
chat-manager-send-hook-admin-wrap-message = DMIN：[bold](D){ $senderName }:[/bold] { $message }
chat-manager-dead-channel-name = 死人
chat-manager-admin-channel-name = 管理員
chat-manager-rate-limited = 您發送訊息的速度太快了！
chat-manager-rate-limit-admin-announcement = 請求限制警告：{ $player }
chat-manager-follow-button = (F)

## Speech verbs for chat

chat-speech-verb-suffix-exclamation = !
chat-speech-verb-suffix-exclamation-strong = !!
chat-speech-verb-suffix-question = ？
chat-speech-verb-suffix-stutter = -
chat-speech-verb-suffix-mumble = ..
chat-speech-verb-name-none = 無
chat-speech-verb-name-default = 預設
chat-speech-verb-default = 說道
chat-speech-verb-name-exclamation = 驚呼
chat-speech-verb-exclamation = 驚呼道
chat-speech-verb-name-exclamation-strong = 大喊
chat-speech-verb-exclamation-strong = 大喊
chat-speech-verb-name-question = 詢問
chat-speech-verb-question = 詢問道
chat-speech-verb-name-stutter = 結巴說道
chat-speech-verb-stutter = 結巴說道
chat-speech-verb-name-mumble = 咕噥著
chat-speech-verb-mumble = 咕噥著
chat-speech-verb-name-arachnid = 蛛形人
chat-speech-verb-insect-1 = 吱吱說道
chat-speech-verb-insect-2 = 吱吱喳喳說道
chat-speech-verb-insect-3 = 咔嗒說道
chat-speech-verb-name-moth = 飛蛾
chat-speech-verb-winged-1 = 嗞嗞說道
chat-speech-verb-winged-2 = 襟翼
chat-speech-verb-winged-3 = 嗡嗡說道
chat-speech-verb-name-slime = 史萊姆
chat-speech-verb-slime-1 = 噗啪說道
chat-speech-verb-slime-2 = 咕嚕說道
chat-speech-verb-slime-3 = 咕嘶說道
chat-speech-verb-name-plant = 迪奧娜
chat-speech-verb-plant-1 = 沙沙說道
chat-speech-verb-plant-2 = 搖曳
chat-speech-verb-plant-3 = 吱嘎說道
chat-speech-verb-name-robotic = 機器人
chat-speech-verb-robotic-1 = 各州
chat-speech-verb-robotic-2 = 嗶嗶地說道
chat-speech-verb-robotic-3 = 啵啵地說道
chat-speech-verb-name-reptilian = 蜥蝪人
chat-speech-verb-reptilian-1 = 嘶嘶地說道
chat-speech-verb-reptilian-2 = 哼唧道
chat-speech-verb-reptilian-3 = 噗噗地說道
chat-speech-verb-name-skeleton = 骷髏
chat-speech-verb-skeleton-1 = 韃韃地說道
chat-speech-verb-skeleton-2 = 喀嚓地說道
chat-speech-verb-skeleton-3 = gnashes
chat-speech-verb-name-vox = Vox
chat-speech-verb-vox-1 = 喊叫道
chat-speech-verb-vox-2 = 尖叫道
chat-speech-verb-vox-3 = 呱呱叫道
chat-speech-verb-name-canine = 犬類
chat-speech-verb-canine-1 = 汪汪道
chat-speech-verb-canine-2 = 汪吠道
chat-speech-verb-canine-3 = 嚎叫道
chat-speech-verb-name-goat = 山羊
chat-speech-verb-goat-1 = 咩咩叫道
chat-speech-verb-goat-2 = 咕嚕道
chat-speech-verb-goat-3 = 哭喊道
chat-speech-verb-name-sheep = 綿羊
chat-speech-verb-sheep-1 = 咩咩叫道
chat-speech-verb-sheep-2 = 羊叫
chat-speech-verb-name-small-mob = 老鼠
chat-speech-verb-small-mob-1 = 吱吱道
chat-speech-verb-small-mob-2 = 嘰嘰道
chat-speech-verb-name-large-mob = 鯉魚
chat-speech-verb-large-mob-1 = 咆哮道
chat-speech-verb-large-mob-2 = 低吼道
chat-speech-verb-name-monkey = 猴子
chat-speech-verb-monkey-1 = chimpers
chat-speech-verb-monkey-2 = 尖叫聲
chat-speech-verb-name-cluwne = Cluwne
chat-speech-verb-name-parrot = 鸚鵡
chat-speech-verb-parrot-1 = 嘰嘰喳喳道
chat-speech-verb-parrot-2 = 吱吱喳喳道
chat-speech-verb-parrot-3 = 啾啾說道
chat-speech-verb-cluwne-1 = 咯咯笑道
chat-speech-verb-cluwne-2 = 哄堂大笑道
chat-speech-verb-cluwne-3 = 笑道
chat-speech-verb-name-ghost = 幽靈
chat-speech-verb-ghost-1 = 抱怨道
chat-speech-verb-ghost-2 = 呼道
chat-speech-verb-ghost-3 = 哼唱道
chat-speech-verb-ghost-4 = 喃喃自語地說道
chat-speech-verb-name-electricity = 電力
chat-speech-verb-electricity-1 = 噼啪地說道
chat-speech-verb-electricity-2 = 嗡嗡地說道
chat-speech-verb-electricity-3 = 尖叫道
chat-speech-verb-vulpkanin-1 = 嗚嚕嗚嚕地說道
chat-speech-verb-vulpkanin-2 = 嗥叫道
chat-speech-verb-vulpkanin-3 = 汪叫道
chat-speech-verb-vulpkanin-4 = 吠叫道
chat-speech-verb-vulpkanin = Vulpkanin
chat-speech-verb-name-wawa = Wawa
chat-speech-verb-wawa-1 = 吟詠道
chat-speech-verb-wawa-2 = 陳述道
chat-speech-verb-wawa-3 = 聲明道
chat-speech-verb-wawa-4 = 沉思道
