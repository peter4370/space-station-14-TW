cmd-align-desc =
    自動將所有錨定的氣閘、門、防火閘等（
    ）的對齊位置與相鄰結構對齊。
    
    使用 [dry run] 參數可在不旋轉任何物件的情況下進行檢查。
cmd-align-help = 用法：{ $command } [MapID] [dry run?]
cmd-align-no-release = 若遊戲正在以 RELEASE 配置執行，則無法使用此指令。
cmd-align-hint-id = 地圖編號
cmd-align-hint-dry = 預演？
cmd-align-feedback-none =
    { $dry ->
        [true] 模擬執行：無
       *[false] 無
    } 未找到與 AlignerSystem 相容的實體！
cmd-align-feedback-good =
    { $dry ->
        [true] 模擬執行：無
       *[false] 無
    } 未發現對齊錯誤的實體。
cmd-align-feedback =
    { $dry ->
        [true] 模擬執行：已找到
       *[false] 已找到並修正
    } { $fixed ->
        [one] 一個未對齊的實體。
       *[else] { $fixed } 個未對齊的實體。
    }
