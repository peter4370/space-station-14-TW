analysis-console-menu-title = 廣域 Mark 3 分析控制台
analysis-console-server-list-button = 伺服器
analysis-console-extract-button = 提取點
analysis-console-info-no-scanner = 未連接分析儀！請使用多功能工具連接一台。
analysis-console-info-no-artifact = 沒有任何裝置！請將一個裝置放置在感應板上，以查看節點資訊。
analysis-console-info-ready = 系統已啟用。準備好進行掃描。
analysis-console-no-node = 選取節點以檢視
analysis-console-info-id = [font="Monospace" size=11]ID：[/font]
analysis-console-info-id-value = [font="Monospace" size=11][color=yellow]{ $id }[/color][/font]
analysis-console-info-class = [font="Monospace" size=11]類別：[/font]
analysis-console-info-class-value = [font="Monospace" size=11]{ $class }[/font]
analysis-console-info-locked = [font="Monospace" size=11]狀態：[/font]
analysis-console-info-locked-value = [font="Monospace" size=11][color={ $state ->
        [0] 紅色]已鎖定
        [1] 檸檬綠]已解鎖
       *[2] 李子色]已啟用
    }[/color][/font]
analysis-console-info-durability = [font="Monospace" size=11]耐用性：[/font]
analysis-console-info-durability-value = [font="Monospace" size=11][color={ $color }]{ $current }/{ $max }[/color][/font]
analysis-console-info-effect = [font="Monospace" size=11]效果：[/font]
analysis-console-info-effect-value = [font="Monospace" size=11][color=gray]{ $state ->
        [true] { $info }
       *[false] 解鎖節點以獲取資訊
    }[/color][/font]
analysis-console-info-trigger = [font="Monospace" size=11]觸發條件：[/font]
analysis-console-info-triggered-value = [font="Monospace" size=11][color=gray]{ $triggers }[/color][/font]
analysis-console-info-scanner = 正在掃描中...
analysis-console-info-scanner-paused = 暫停。
analysis-console-progress-text =
    { $seconds ->
        [one] T-{ $seconds } 秒
       *[other] T-{ $seconds } 秒
    }
analysis-console-extract-value = [font="Monospace" size=11][color=orange]節點 { $id } (+{ $value })[/color][/font]
analysis-console-extract-none = [font="Monospace" size=11][color=orange] 所有未解鎖的節點均已無剩餘點數可提取 [/color][/font]
analysis-console-extract-sum = [font="Monospace" size=11][color=orange]總研究：{ $value }[/color][/font]
analyzer-artifact-extract-popup = 能量在神器的表面上閃爍！
