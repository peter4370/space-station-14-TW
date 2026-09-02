## UI

cargo-console-menu-title = 貨物請求控制台
cargo-console-menu-flavor-left = 比平時多訂一些披薩盒吧！
cargo-console-menu-flavor-right = v2.1
cargo-console-menu-account-name-label = 帳戶：{ " " }
cargo-console-menu-account-name-none-text = 無
cargo-console-menu-account-name-format = [bold][color={ $color }]{ $name }[/color][/bold] \[{ $code }\]
cargo-console-menu-shuttle-name-label = 太空梭名稱：{ " " }
cargo-console-menu-shuttle-name-none-text = 無
cargo-console-menu-points-label = 餘額：{ " " }
cargo-console-menu-points-amount = ${ $amount }
cargo-console-menu-shuttle-status-label = 接駁車狀態：{ " " }
cargo-console-menu-shuttle-status-away-text = 不在
cargo-console-menu-order-capacity-label = 訂單容量：{ " " }
cargo-console-menu-order-capacity-number = { $count }/{ $capacity }
cargo-console-menu-call-shuttle-button = 啟動傳送平台
cargo-console-menu-permissions-button = 權限
cargo-console-menu-categories-label = 分類：{ " " }
cargo-console-menu-search-bar-placeholder = 搜尋
cargo-console-menu-requests-label = 請求
cargo-console-menu-orders-label = 訂單
cargo-console-menu-populate-categories-all-text = 全部
cargo-console-menu-order-row-title = { $productName } (x{ $orderAmount } 對於 { $orderPrice }$)
cargo-console-menu-populate-orders-cargo-order-row-product-name-text = 由 { $orderRequester } 提出請求，來源為 [color={ $accountColor }]{ $account }[/color]
cargo-console-menu-order-row-product-description = 理由：{ $orderReason }
cargo-console-menu-order-row-button-approve = 批准
cargo-console-menu-order-row-button-cancel = 取消
cargo-console-menu-order-row-alerts-reason-absent = 原因未說明
cargo-console-menu-order-row-alerts-requester-unknown = 未知
cargo-console-menu-tab-title-orders = 訂單
cargo-console-menu-tab-title-funds = 轉移 Transfers
cargo-console-menu-account-action-transfer-limit = [bold]轉帳限額：[/bold] ${ $limit }
cargo-console-menu-account-action-transfer-limit-unlimited-notifier = [color=gold](Unlimited)[/color]
cargo-console-menu-account-action-select = [bold]帳戶操作：[/bold]
cargo-console-menu-account-action-amount = [bold]金額：[/bold] $
cargo-console-menu-account-action-button = 轉帳
cargo-console-menu-toggle-account-lock-button = 切換轉帳限額
cargo-console-menu-account-action-option-withdraw = 提領現金
cargo-console-menu-account-action-option-transfer = 將資金轉帳至 { $code }
# Orders
cargo-console-order-not-allowed = 不允許存取
cargo-console-station-not-found = 沒有可用的電台
cargo-console-invalid-product = 產品編號無效
cargo-console-too-many = 已核准的訂單過多
cargo-console-snip-snip = 訂單已根據產能進行調整
cargo-console-insufficient-funds = 餘額不足（需 { $cost }）
cargo-console-unfulfilled = 無庫存，無法處理訂單
cargo-console-trade-station = 已寄送至 { $destination }
cargo-console-unlock-approved-order-broadcast = [bold]{ $productName } x{ $orderAmount }[/bold]，其費用為 [bold]{ $cost }[/bold]，並已獲 [bold]{ $approver }[/bold] 批准
cargo-console-fund-withdraw-broadcast = [bold]{ $name } 從 { $name1 } 提領了 { $amount } 斯佩索斯 \[{ $code1 }\]
cargo-console-fund-transfer-broadcast = [bold]{ $name } 將 { $amount } 筆款項從 { $name1 } \[{ $code1 }\] 轉帳至 { $name2 } \[{ $code2 }\][/bold]
cargo-console-fund-transfer-user-unknown = 未知
cargo-console-paper-reason-default = 無
cargo-console-paper-approver-default = 未知
cargo-console-paper-print-name = 訂單編號 #{ $orderNumber }
cargo-console-paper-print-text = [head=2]訂單編號 #{ $orderNumber }[/head]
    { "[bold]項目：[/bold]" } { $itemName } (x{ $orderQuantity })
    { "[bold]申請人：[/bold]" } { $requester }
    
    { "[head=3]訂單資訊[/head]" }
    { "[bold]付款人[/bold]:" } { $account } \[{ $accountcode }\]
    { "[bold]核准人：[/bold]" } { $approver }
    { "[bold]理由：[/bold]" } { $reason }
# Cargo shuttle console
cargo-shuttle-console-menu-title = 貨運穿梭機控制台
cargo-shuttle-console-station-unknown = 未知
cargo-shuttle-console-shuttle-not-found = 未找到
cargo-shuttle-console-organics = 在太空梭上偵測到有機生命體
cargo-no-shuttle = 未找到貨運穿梭機！
# Funding allocation console
cargo-funding-alloc-console-menu-title = 資金分配控制台
cargo-funding-alloc-console-label-account = [bold]帳戶[/bold]
cargo-funding-alloc-console-label-code = [bold] 程式碼 [/bold]
cargo-funding-alloc-console-label-balance = [bold] 平衡 [/bold]
cargo-funding-alloc-console-label-cut = [bold] 營收分佈（%） [/bold]
cargo-funding-alloc-console-label-primary-cut = Cargo 從非鎖箱來源獲得的資金佔比（%）：
cargo-funding-alloc-console-label-lockbox-cut = Cargo 從鎖箱銷售中獲得的分成比例（%）：
cargo-funding-alloc-console-label-help-non-adjustible = Cargo 從非鎖箱銷售中獲得 { $percent }% 的利潤。其餘部分則按以下規定分配：
cargo-funding-alloc-console-label-help-adjustible = 來自非鎖箱來源的剩餘資金，將依照以下規定進行分配：
cargo-funding-alloc-console-button-save = 儲存變更
cargo-funding-alloc-console-label-save-fail = [bold]收入分攤無效！[/bold] [color=red]({ $pos ->
        [1] +
       *[-1] -
    }{ $val }%)[/color]
# Slip template
cargo-acquisition-slip-body = [head=3]資產詳情[/head]
    { "[bold]產品：[/bold]" } { $product }
    { "[bold]描述：[/bold]" } { $description }
    { "[bold]單價：[/bold" }] ${ $unit }
    { "[bold]數量：[/bold]" } { $amount }
    { "[bold]總價：[/bold]" } ${ $cost }
    
    { "[head=3]採購明細[/head]" }
    { "[bold]訂購人：[/bold]" } { $orderer }
    { "[bold]原因：[/bold]" } { $reason }
