### for technical and/or system messages


## General

shell-command-success = 指令執行成功
shell-invalid-command = 指令無效。
shell-invalid-command-specific = { $commandName } 指令無效。
shell-can-only-run-from-pre-round-lobby = 您只能在遊戲處於回合前大廳時執行此指令。
shell-can-only-run-while-round-is-active = 您只能在遊戲處於回合中時執行此指令。
shell-cannot-run-command-from-server = 您無法從伺服器執行此指令。
shell-only-players-can-run-this-command = 只有玩家才能執行此指令。
shell-must-be-attached-to-entity = 您必須已連線至某個實體，才能執行此指令。
shell-must-have-body = 您必須擁有一個實體，才能執行此指令。
shell-unknown-error = 發生了一個未知錯誤。

## Arguments

shell-need-exactly-one-argument = 必須有且僅有一個參數。
shell-wrong-arguments-number-need-specific = 需要 { $properAmount } 個參數，但實際只有 { $currentAmount } 個。
shell-argument-must-be-number = 參數必須是數字。
shell-argument-must-be-boolean = 參數必須是布林值。
shell-wrong-arguments-number = 參數個數不對。
shell-need-between-arguments = 需要 { $lower } 到 { $upper } 的參數！
shell-need-minimum-arguments = 至少需要 { $minimum } 個參數！
shell-need-minimum-one-argument = 至少需要一個參數！
shell-need-exactly-zero-arguments = 此指令不接受任何參數。
shell-argument-uid = 實體唯一識別碼

## Guards

shell-missing-required-permission = 執行此指令需要 { $perm }！
shell-entity-is-not-mob = 目標實體並非怪物！
shell-invalid-entity-id = 實體 ID 無效。
shell-invalid-grid-id = 網格 ID 無效。
shell-invalid-map-id = 地圖 ID 無效。
shell-invalid-entity-uid = { $uid } 不是有效的實體 UID
shell-invalid-bool = 布林值無效。
shell-invalid-bool-value = 布林值無效：'{ $value }'
shell-entity-uid-must-be-number = EntityUid 必須為數字。
shell-could-not-find-entity = 找不到實體 { $entity }
shell-could-not-find-entity-with-uid = 找不到 UID 為 { $uid } 的實體
shell-entity-with-uid-lacks-component = 具有 uid { $uid } 的實體缺少 { INDEFINITE($componentName) } { $componentName } 元件
shell-entity-target-lacks-component = 目標實體不具備 { INDEFINITE($componentName) } { $componentName } 元件
shell-invalid-color-hex = 無效的十六進位顏色代碼！
shell-target-player-does-not-exist = 目標玩家不存在！
shell-target-entity-does-not-have-message = 目標實體不具備 { INDEFINITE($missing) } { $missing }！
shell-timespan-minutes-must-be-correct = { $span } 不是有效的分鐘時間範圍。
shell-argument-must-be-prototype = 參數 { $index } 必須是 { LOC($prototypeName) }！
shell-argument-number-must-be-between = 參數 { $index } 必須是介於 { $lower } 與 { $upper } 之間的數字！
shell-argument-station-id-invalid = 參數 { $index } 必須為有效的電台識別碼！
shell-argument-map-id-invalid = 參數 { $index } 必須是有效的地圖 ID！
shell-argument-number-invalid = 參數 { $index } 必須是有效的數字！
shell-argument-chat-invalid = 參數 { $index } 必須是有效的聊天內容！
# Hints
shell-argument-username-hint = <username>
shell-argument-username-optional-hint = [使用者名稱]
