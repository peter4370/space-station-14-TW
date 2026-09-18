device-pda-slot-component-slot-name-cartridge = 墨盒
default-program-name = 程式表
notekeeper-program-name = 筆記本
nano-task-program-name = NanoTask
news-read-program-name = 太空站新聞
crew-manifest-program-name = 船員名單
crew-manifest-cartridge-loading = 載入中⋯⋯
crew-manifest-cartridge-loading-failed = 無法載入船員名單！
net-probe-program-name = NetProbe
net-probe-scan = 已掃描 { $device }！
net-probe-label-name = 姓名
net-probe-label-address = 地址
net-probe-label-frequency = 頻率
net-probe-label-network = 網路
log-probe-program-name = LogProbe
log-probe-scan = 已從 { $device } 下載日誌！
log-probe-label-time = 時間
log-probe-label-accessor = 由以下人員存取：
log-probe-label-number = #
log-probe-print-button = 列印日誌
log-probe-printout-device = 已掃描的裝置：{ $name }
log-probe-printout-header = 最新日誌：
log-probe-printout-entry = #{ $number } / { $time } / { $accessor }
astro-nav-program-name = AstroNav
med-tek-program-name = MedTek

# NanoTask cartridge

nano-task-ui-heading-high-priority-tasks =
    { $amount ->
        [zero] 無高優先級任務
        [one] 1 項高優先級任務
       *[other] { $amount } 項高優先級任務
    }
nano-task-ui-heading-medium-priority-tasks =
    { $amount ->
        [zero] 沒有中等優先級任務
        [one] 1 個中等優先級任務
       *[other] { $amount } 個中等優先級任務
    }
nano-task-ui-heading-low-priority-tasks =
    { $amount ->
        [zero] 沒有低優先級任務
        [one] 1 個低優先級任務
       *[other] { $amount } 個低優先級任務
    }
nano-task-ui-done = 完成
nano-task-ui-revert-done = 撤銷
nano-task-ui-priority-low = 低
nano-task-ui-priority-medium = 中
nano-task-ui-priority-high = 高
nano-task-ui-cancel = 取消
nano-task-ui-print = 列印
nano-task-ui-delete = 刪除
nano-task-ui-save = 儲存
nano-task-ui-new-task = 新任務
nano-task-ui-description-label = 說明：
nano-task-ui-description-placeholder = 獲得某件重要的東西
nano-task-ui-requester-label = 申請人：
nano-task-ui-requester-placeholder = 約翰·NanoTrasen
nano-task-ui-item-title = 編輯任務
nano-task-printed-description = [bold]說明[/bold]：{ $description }
nano-task-printed-requester = [bold]請求者[/bold]：{ $requester }
nano-task-printed-high-priority = [bold]優先級[/bold]: [color=red]高[/color]
nano-task-printed-medium-priority = [bold]優先級[/bold]：中等
nano-task-printed-low-priority = [bold]優先級[/bold]：低
# Wanted list cartridge
wanted-list-program-name = 通緝名單
wanted-list-label-no-records = 沒關係，牛仔
wanted-list-search-placeholder = 依名稱與狀態搜尋
wanted-list-age-label = [color=darkgray]年齡：[/color] [color=white]{ $age }[/color]
wanted-list-job-label = [color=darkgray]職位：[/color] [color=white]{ $job }[/color]
wanted-list-species-label = [color=darkgray]物種：[/color] [color=white]{ $species }[/color]
wanted-list-gender-label = [color=darkgray]性別：[/color] [color=white]{ $gender }[/color]
wanted-list-reason-label = [color=darkgray]理由：[/color] [color=white]{ $reason }[/color]
wanted-list-unknown-reason-label = 原因不明
wanted-list-initiator-label = [color=darkgray]發起人：[/color] [color=white]{ $initiator }[/color]
wanted-list-unknown-initiator-label = 未知發起者
wanted-list-status-label = [color=darkgray]status:[/color] { $status ->
        [suspected] [color=yellow]suspected[/color]
        [wanted] [color=red]wanted[/color]
        [detained] [color=#b18644]detained[/color]
        [paroled] [color=green]paroled[/color]
        [discharged] [color=green]discharged[/color]
        [hostile] [color=darkred]hostile[/color]
        [eliminated] [color=gray]eliminated[/color]
       *[other] none
    }
wanted-list-history-table-time-col = 時間
wanted-list-history-table-reason-col = 犯罪
wanted-list-history-table-initiator-col = 發起人
