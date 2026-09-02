lathe-menu-title = 車床選單
lathe-menu-queue = 佇列
lathe-menu-server-list = 伺服器清單
lathe-menu-sync = 同步
lathe-menu-search-designs = 搜尋設計
lathe-menu-category-all = 全部
lathe-menu-search-filter = 篩選條件：
lathe-menu-amount = 數量：
lathe-menu-recipe-count =
    { $count ->
        [1] { $count } Recipe
       *[other] { $count } Recipes
    }
lathe-menu-reagent-slot-examine = 側面設有放置量杯的插槽。
lathe-reagent-dispense-no-container = 液體從 { THE($name) } 流到地板上！
lathe-menu-result-reagent-display = { $reagent } ({ $amount }u)
lathe-menu-material-display = { $material } ({ $amount })
lathe-menu-tooltip-display = { $amount } 來自 { $material }
lathe-menu-description-display = [italic]{ $description }[/italic]
lathe-menu-material-amount =
    { $amount ->
        [1] { NATURALFIXED($amount, 2) } { $unit }
       *[other] { NATURALFIXED($amount, 2) } { MAKEPLURAL($unit) }
    }
lathe-menu-material-amount-missing =
    { $amount ->
        [1] { NATURALFIXED($amount, 2) } { $unit } 來自 { $material } ([color=red]{ NATURALFIXED($missingAmount, 2) } { $unit } 缺失[/color])
       *[other] { NATURALFIXED($amount, 2) } { MAKEPLURAL($unit) } of { $material } ([color=red]{ NATURALFIXED($missingAmount, 2) } { MAKEPLURAL($unit) } 缺失[/color])
    }
lathe-menu-no-materials-message = 尚未載入任何資料。
lathe-menu-silo-linked-message = Silo 連結
lathe-menu-fabricating-message = 正在製作中...
lathe-menu-materials-title = 材料
lathe-menu-queue-title = 建置佇列
lathe-menu-delete-fabricating-tooltip = 取消列印當前項目。
lathe-menu-delete-item-tooltip = 取消列印這批文件。
lathe-menu-move-up-tooltip = 將這批工作在佇列中往前移動。
lathe-menu-move-down-tooltip = 將此批次移回佇列中。
lathe-menu-item-single = { $index }. { $name }
lathe-menu-item-batch = { $index }. { $name } ({ $printed }/{ $total })
