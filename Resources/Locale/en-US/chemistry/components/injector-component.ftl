## UI

injector-volume-transfer-label =
    卷數：[color=white]{ $currentVolume }/{ $totalVolume }u[/color]
    模式：[color=white]{ $modeString }[/color] ([color=white]{ $transferVolume }u[/color])
injector-volume-label =
    音量：[color=white]{ $currentVolume }/{ $totalVolume }u[/color]
    模式：[color=white]{ $modeString }[/color]
injector-toggle-verb-text = 切換注入器模式

## Entity

injector-component-inject-mode-name = 注入
injector-component-draw-mode-name = 抽取
injector-component-dynamic-mode-name = 動態
injector-component-mode-changed-text = 現在 { $mode }
injector-component-transfer-success-message = 您將 { $amount }u 轉移至 { THE($target) }。
injector-component-transfer-success-message-self = 你將 { $amount }u 轉移到自己體內。
injector-component-inject-success-message = 你將 { $amount }u 注入 { THE($target) }！
injector-component-inject-success-message-self = 你將 { $amount }u 注射到自己體內！
injector-component-draw-success-message = 你從 { THE($target) } 中抽取 { $amount }u。
injector-component-draw-success-message-self = 你從自己那裡抽一張 { $amount }u。

## Fail Messages

injector-component-target-already-full-message = { CAPITALIZE(THE($target)) } 已經滿了！
injector-component-target-already-full-message-self = 你已經吃飽了！
injector-component-target-is-empty-message = { CAPITALIZE(THE($target)) } 為空！
injector-component-target-is-empty-message-self = 您沒有任何內容！
injector-component-cannot-toggle-draw-message = 太滿了，抽不出來！
injector-component-cannot-toggle-inject-message = 沒有東西能被注射！
injector-component-cannot-toggle-dynamic-message = 無法切換動態模式！
injector-component-empty-message = { CAPITALIZE(THE($injector)) } 為空！
injector-component-blocked-user = 防護裝備阻礙了您的注射！
injector-component-blocked-other = { CAPITALIZE(THE(POSS-ADJ($target))) } 護甲擋下了 { THE($user) } 的攻擊！
injector-component-cannot-transfer-message = 您無法轉入 { THE($target) }！
injector-component-cannot-transfer-message-self = 你無法轉入自己身上！
injector-component-cannot-inject-message = 您無法對 { THE($target) } 進行注入！
injector-component-cannot-inject-message-self = 你不能自己給自己注射！
injector-component-cannot-draw-message = 您無法從 { THE($target) } 中擷取資料！
injector-component-cannot-draw-message-self = 你無法從自己身上汲取靈感！
injector-component-ignore-mobs = 此注入器僅能與容器進行互動！

## mob-inject doafter messages

injector-component-needle-injecting-user = 你開始進行注射。
injector-component-needle-injecting-target = { CAPITALIZE(THE($user)) } 正試圖向你注射一針！
injector-component-needle-drawing-user = 你開始畫那根針。
injector-component-needle-drawing-target = { CAPITALIZE(THE($user)) } 正試圖用一根針從你身上抽血！
injector-component-spray-injecting-user = 您開始準備噴嘴。
injector-component-spray-injecting-target = { CAPITALIZE(THE($user)) } 正試圖將一個噴嘴對準你！

## Target Popup Success messages

injector-component-feel-prick-message = 你會感覺到一陣輕微的刺痛！
