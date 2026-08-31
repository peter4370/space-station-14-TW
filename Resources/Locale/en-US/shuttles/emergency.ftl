# Commands


## Delay shuttle round end

cmd-delayroundend-desc = 停止計時器，該計時器會在緊急穿梭機離開超空間時結束本回合。
cmd-delayroundend-help = 用法：delayroundend
emergency-shuttle-command-round-yes = 本輪比賽延期。
emergency-shuttle-command-round-no = 無法延遲回合結束。

## Dock emergency shuttle

cmd-dockemergencyshuttle-desc = 呼叫緊急接駁船，並將其與空間站對接……如果能辦到的話。
cmd-dockemergencyshuttle-help = 用法：dockemergencyshuttle

## Launch emergency shuttle

cmd-launchemergencyshuttle-desc = 若情況允許，Early 會盡快發射緊急接駁船。
cmd-launchemergencyshuttle-help = 用法：launchemergencyshuttle
# Emergency shuttle
emergency-shuttle-left = 緊急接駁船已離開站台。預估 { $transitTime } 秒後，接駁船將抵達 CentComm。
emergency-shuttle-launch-time = 緊急接駁船將於 { $consoleAccumulator } 秒後發射。
emergency-shuttle-docked = 緊急接駁船已停靠在 { $direction } 站台，{ $location }。它將於 { $time } 秒後出發。{ $extended }
emergency-shuttle-good-luck = 「緊急接駁車」無法找到車站。祝你好運。
emergency-shuttle-nearby = 緊急接駁船無法找到有效的對接埠。它已透過空間跳躍抵達 { $direction } 空間站，該空間站位於 { $location }。它將於 { $time } 秒後離開。{ $extended }
emergency-shuttle-extended = { " " }由於某些不可抗力因素，發射時間已延後。
# Emergency shuttle console popup / announcement
emergency-shuttle-console-no-early-launches = 「提前啟動」功能已停用
emergency-shuttle-console-auth-left = { $remaining } 需取得相關授權，方能於太空梭提早發射前進行操作。
emergency-shuttle-console-auth-revoked = 撤銷早期發射授權，需取得 { $remaining } 授權。
emergency-shuttle-console-denied = 存取遭拒
# UI
emergency-shuttle-console-window-title = 緊急接駁控制台
emergency-shuttle-ui-engines = 引擎：
emergency-shuttle-ui-idle = 閒置
emergency-shuttle-ui-repeal-all = 全部廢除
emergency-shuttle-ui-early-authorize = 提前發射授權
emergency-shuttle-ui-authorize = 授權
emergency-shuttle-ui-repeal = 廢除
emergency-shuttle-ui-authorizations = 授權
emergency-shuttle-ui-remaining = 剩餘：{ $remaining }
# Map Misc.
map-name-centcomm = 中央司令部
map-name-terminal = 抵港大樓
