anomaly-component-contact-damage = 這股異常現象會灼傷你的皮膚！
anomaly-vessel-component-anomaly-assigned = 已將異常狀況歸因於該船舶。
anomaly-vessel-component-not-assigned = 這艘船艦未被歸類為任何異常現象。試著用掃描器掃描它。
anomaly-vessel-component-assigned = 這艘船目前正被派往處理一項異常事件。
anomaly-particles-delta = Delta 粒子
anomaly-particles-epsilon = 伊普西隆粒子
anomaly-particles-zeta = Zeta 粒子
anomaly-particles-omega = 歐米茄粒子
anomaly-particles-sigma = 西格瑪粒子
anomaly-scanner-component-scan-complete = 掃描完成！
anomaly-scanner-ui-title = 異常掃描器
anomaly-scanner-no-anomaly = 目前未偵測到任何異常。
anomaly-scanner-severity-percentage = 當前嚴重程度：[color=gray]{ $percent }[/color]
anomaly-scanner-severity-percentage-unknown = 當前嚴重程度：[color=red]錯誤[/color]
anomaly-scanner-stability-low = 當前異常狀態：[color=gold]衰減中[/color]
anomaly-scanner-stability-medium = 當前異常狀態：[color=forestgreen]穩定[/color]
anomaly-scanner-stability-high = 當前異常狀態：[color=crimson]持續擴大[/color]
anomaly-scanner-stability-unknown = 當前異常狀態：[color=red]錯誤[/color]
anomaly-scanner-point-output = 點輸出：[color=gray]{ $point }[/color]
anomaly-scanner-point-output-unknown = 輸出結果：[color=red]錯誤[/color]
anomaly-scanner-particle-readout = 粒子反應分析：
anomaly-scanner-particle-danger = - [color=crimson]危險類型：[/color] { $type }
anomaly-scanner-particle-unstable = - [color=plum]不穩定類型：[/color] { $type }
anomaly-scanner-particle-containment = - [color=goldenrod]封裝類型：[/color] { $type }
anomaly-scanner-particle-transformation = - [color=#6b75fa]轉換類型：[/color] { $type }
anomaly-scanner-particle-danger-unknown = - [color=crimson]危險類型：[/color] [color=red]錯誤[/color]
anomaly-scanner-particle-unstable-unknown = - [color=plum]不穩定類型：[/color] [color=red]錯誤[/color]
anomaly-scanner-particle-containment-unknown = - [color=goldenrod]封裝類型：[/color] [color=red]錯誤[/color]
anomaly-scanner-particle-transformation-unknown = - [color=#6b75fa]轉換類型：[/color] [color=red]錯誤[/color]
anomaly-scanner-pulse-timer = 距離下一次脈衝的時間：[color=gray]{ $time }[/color]
anomaly-scanner-doafter-examine = { CAPITALIZE(SUBJECT($user)) } { CONJUGATE-BE($user) } [color=plum]掃描異常現象[/color].
anomaly-gorilla-core-slot-name = 異常核心
anomaly-gorilla-charge-none = 它的內部並沒有 [bold]異常核心[/bold]。
anomaly-gorilla-charge-limit =
    It has [color={ $count ->
        [3] green
        [2] yellow
        [1] orange
        [0] red
       *[other] purple
    }]{ $count } { $count ->
        [one] charge
       *[other] charges
    }[/color] remaining.
anomaly-gorilla-charge-infinite = 它擁有 [color=gold]無限的電荷[/color]。[italic]至少目前是這樣……[/italic]
anomaly-sync-connected = 「異常」已成功附加
anomaly-sync-disconnected = 與該異常現象的連線已中斷！
anomaly-sync-no-anomaly = 射程內無異常。
anomaly-sync-examine-connected = 它與某個異常現象[color=darkgreen]相關[/color]。
anomaly-sync-examine-not-connected = 它[color=darkred]未與任何異常現象相關聯[/color]。
anomaly-sync-connect-verb-text = 附加異常
anomaly-sync-connect-verb-message = 將附近的異常現象與 { THE($machine) } 關聯起來。
anomaly-sync-disconnect-verb-text = 分離異常
anomaly-sync-disconnect-verb-message = 將已連接的異常從 { THE($machine) } 中移除。
anomaly-generator-ui-title = 異常產生器
anomaly-generator-fuel-display = 燃料:
anomaly-generator-cooldown = 冷卻時間：[color=gray]{ $time }[/color]
anomaly-generator-no-cooldown = 冷卻時間：[color=gray]已完成[/color]
anomaly-generator-yes-fire = 狀態：[color=forestgreen]已準備就緒[/color]
anomaly-generator-no-fire = 狀態：[color=crimson]尚未準備就緒[/color]
anomaly-generator-generate = 產生異常
anomaly-generator-charges =
    { $charges ->
        [one] { $charges } 收費
       *[other] { $charges } 收費
    }
anomaly-generator-announcement = 已產生一項異常！
anomaly-command-pulse = 對目標異常發射脈衝
anomaly-command-supercritical = 使目標異常進入超臨界狀態
# Flavor text on the footer
anomaly-generator-flavor-left = 異常現象可能會在操作員體內生成。
anomaly-generator-flavor-right = v1.1
anomaly-behavior-unknown = [color=red]錯誤。無法讀取。[/color]
anomaly-behavior-title = 行為偏差分析：
anomaly-behavior-point = [color=gold]「異常」產生 { $mod }% 的分數[/color]
anomaly-behavior-safe = [color=forestgreen]該異常現象極為穩定。脈動現象極為罕見。[/color]
anomaly-behavior-slow = [color=forestgreen]脈動的頻率要低得多。[/color]
anomaly-behavior-light = [color=forestgreen]脈動功率顯著降低。[/color]
anomaly-behavior-balanced = 未偵測到任何行為異常。
anomaly-behavior-delayed-force = 脈動的頻率大幅降低，但其能量卻有所增加。
anomaly-behavior-rapid = 脈動的頻率雖然高得多，但強度卻有所減弱。
anomaly-behavior-reflect = 檢測到一層保護性塗層。
anomaly-behavior-nonsensivity = 偵測到對微粒的微弱反應。
anomaly-behavior-sensivity = 檢測到對顆粒物的增強反應。
anomaly-behavior-invisibility = 已偵測到光波扭曲。
anomaly-behavior-secret = 偵測到干擾。部分資料無法讀取
anomaly-behavior-inconstancy = [color=crimson]已偵測到無常現象。粒子類型可能會隨時間而改變。[/color]
anomaly-behavior-fast = [color=crimson]脈動頻率大幅增加。[/color]
anomaly-behavior-strenght = [color=crimson]脈動功率顯著提升。[/color]
anomaly-behavior-moving = [color=crimson]偵測到座標不穩定。[color=crimson][/color]
anomaly-secret-admin = [color=red](ERROR)[/color]
