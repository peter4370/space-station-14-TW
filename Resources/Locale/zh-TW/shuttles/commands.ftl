# FTLdiskburner
cmd-ftldisk-desc = 建立一個 FTL 座標光碟，用以航向包含指定 EntityID 的地圖
cmd-ftldisk-help = ftldisk [實體 ID]
cmd-ftldisk-no-transform = 實體 { $destination } 沒有 Transform 元件！
cmd-ftldisk-no-map = 實體 { $destination } 沒有對應關係！
cmd-ftldisk-no-map-comp = 實體 { $destination } 不知為何出現在地圖 { $map } 上，但該地圖並無任何地圖元件。
cmd-ftldisk-map-not-init = 實體 { $destination } 位於地圖 { $map } 上，但該地圖尚未初始化！請確認初始化是否安全，然後先初始化地圖，否則玩家將會被卡在原地！
cmd-ftldisk-map-paused = 實體 { $desintation } 位於地圖 { $map } 上，而該地圖目前已暫停！請先取消地圖的暫停狀態，否則玩家將會卡在原地。
cmd-ftldisk-planet = 實體 { $desintation } 位於行星地圖 { $map } 上，並需要一個超光速（FTL）點。該點可能已經存在。
cmd-ftldisk-already-dest-not-enabled = 實體 { $destination } 位於地圖 { $map } 上，該地圖已具備 FTLDestinationComponent，但其狀態並非已啟用！為安全起見，請手動設定此設定。
cmd-ftldisk-requires-ftl-point = 實體 { $destination } 位於地圖 { $map } 上，而前往該地圖需要一個 FTL 點！該點可能已經存在。
cmd-ftldisk-hint = 映射 netID
