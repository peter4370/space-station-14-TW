### Localization for engine console commands

cmd-hint-float = [float]

## generic command errors

cmd-invalid-arg-number-error = 參數個數不正確。
cmd-parse-failure-integer = { $arg } 不是有效的整數。
cmd-parse-failure-float = { $arg } 不是有效的浮點數。
cmd-parse-failure-bool = { $arg } 不是有效的 bool 值。
cmd-parse-failure-uid = { $arg } 不是有效的實體 UID。
cmd-parse-failure-mapid = { $arg } 不是有效的 MapId。
cmd-parse-failure-enum = { $arg } 並非 { $enum } 枚舉。
cmd-parse-failure-grid = { $arg } 不是有效的網格。
cmd-parse-failure-cultureinfo = "{ $arg }" 不是有效的 CultureInfo。
cmd-parse-failure-entity-exist = UID { $arg } 對應的實體不存在。
cmd-parse-failure-session = 沒有使用以下使用者名稱的會話：{ $username }
cmd-parse-failure-session-guid = 沒有與 GUID：{ $guid } 對應的會話。
cmd-error-file-not-found = 找不到檔案：{ $file }。
cmd-error-dir-not-found = 找不到目錄：{ $dir }。
cmd-failure-no-attached-entity = 此外殼未附帶任何實體。

## 'help' command

cmd-help-desc = 顯示一般說明，或特定指令的說明文字。
cmd-help-help =
    用法：{ $command } [指令名稱]
    若未指定指令名稱，則顯示通用說明文字；若指定了指令名稱，則顯示該指令的說明文字。
cmd-help-no-args = 若要顯示特定指令的說明，請輸入「help<command> 」。若要列出所有可用指令，請輸入「list」。若要搜尋指令，請輸入「list<filter> 」。
cmd-help-unknown = 未知指令：{ $command }
cmd-help-top = { $command } - { $description }
cmd-help-invalid-args = 參數數量不正確。
cmd-help-arg-cmdname = [指令名稱]

## 'cvar' command

cmd-cvar-desc = 取得或設定一個 CVar。
cmd-cvar-help =
    用法：{ $command }<name | ?> [value]
    若傳入值，該值將被解析並儲存為 CVar 的新值。
    若未傳入值，則顯示 CVar 的當前值。
    使用 'cvar ?' 可取得所有已註冊 CVar 的清單。
cmd-cvar-invalid-args = 必須提供恰好一個或兩個參數。
cmd-cvar-not-registered = CVar '{ $cvar }' 尚未註冊。請使用 'cvar ?' 查詢所有已註冊 CVar 的清單。
cmd-cvar-parse-error = 輸入值的格式不符合類型 { $type } 的要求
cmd-cvar-compl-list = 列出可用的 CVars
cmd-cvar-arg-name = <name | ?>
cmd-cvar-value-hidden = <value hidden>

## 'cvar_subs' command

cmd-cvar_subs-desc = 列出某個 CVar 的 OnValueChanged 訂閱。
cmd-cvar_subs-help = 用法：{ $command }<name>
cmd-cvar_subs-invalid-args = 必須提供且僅能提供一個參數。
cmd-cvar_subs-arg-name = <name>

## 'list' command

cmd-list-desc = 列出可用的指令，並提供可選的搜尋篩選器。
cmd-list-help =
    用法：{ $command } [filter]
    列出所有可用的指令。若提供參數，則會根據該參數的名稱篩選指令。
cmd-list-heading = 側邊名稱            描述{ "\u000A" }-------------------------{ "\u000A" }
cmd-list-arg-filter = [篩選]

## '>' command, aka remote exec

cmd-remoteexec-desc = 執行伺服器端的指令。
cmd-remoteexec-help =
    用法：><command> [arg] [arg] [arg...]
    在伺服器上執行一項指令。若客戶端已存在同名指令，則必須使用此指令，因為若直接執行該指令，系統會優先執行客戶端的指令。

## 'gc' command

cmd-gc-desc = 執行 GC（垃圾回收器）。
cmd-gc-help =
    用法：{ $command } [generation]
    使用 GC.Collect() 執行垃圾回收器。
    若提供參數，則會將其解析為 GC 世代編號，並使用 GC.Collect(int)。
    使用 'gfc' 指令執行 LOH 壓縮式完整垃圾回收。
cmd-gc-failed-parse = 無法解析參數。
cmd-gc-arg-generation = [世代]

## 'gcf' command

cmd-gcf-desc = 執行完整的垃圾回收（GC），並對 LOH 及其他所有項目進行壓縮。
cmd-gcf-help =
    用法：{ $command }
    執行完整的 GC.Collect(2, GCCollectionMode.Forced, true, true)，同時壓縮 LOH。
    這可能會導致系統鎖死數百毫秒，請注意。

## 'gc_mode' command

cmd-gc_mode-desc = 變更／檢視 GC 延遲模式。
cmd-gc_mode-help =
    用法：{ $command } [類型]
    若未提供參數，則回傳當前的 GC 延遲模式。
    若傳入參數，則將其解析為 GCLatencyMode 並設定為 GC 延遲模式。
cmd-gc_mode-current = 當前 GC 延遲模式：{ $prevMode }
cmd-gc_mode-possible = 可能的模式：
cmd-gc_mode-option = - { $mode }
cmd-gc_mode-unknown = 未知 GC 延遲模式：{ $arg }
cmd-gc_mode-attempt = 嘗試變更 GC 延遲模式：{ $prevMode } -> { $mode }
cmd-gc_mode-result = 產生的 GC 延遲模式：{ $mode }
cmd-gc_mode-arg-type = [類型]

## 'mem' command

cmd-mem-desc = 輸出受管理記憶體的相關資訊。
cmd-mem-help = 用法：{ $command }
cmd-mem-report =
    堆記憶體大小：{ TOSTRING($heapSize, "N0") }
    總分配量：{ TOSTRING($totalAllocated, "N0") }

## 'physics' command

cmd-physics-overlay = { $overlay } 不是一個被識別的覆蓋層

## 'lsasm' command

cmd-lsasm-desc = 依載入上下文列出已載入的組件。
cmd-lsasm-help = 用法：lsasm

## 'exec' command

cmd-exec-desc = 執行來自遊戲可寫入使用者資料中的腳本檔案。
cmd-exec-help =
    用法：{ $command }<fileName>
    檔案中的每一行都會被當作單一指令執行，除非該行以 # 開頭
cmd-exec-arg-filename = <fileName>

## 'dump_net_comps' command

cmd-dump_net_comps-desc = 列印網路元件的表格。
cmd-dump_net_comps-help = 用法：{ $command }
cmd-dump_net_comps-error-writeable = 登錄檔仍可寫入，網路識別碼尚未產生。
cmd-dump_net_comps-header = 網路化元件註冊：

## 'dump_event_tables' command

cmd-dump_event_tables-desc = 列印實體的「事件」表格。
cmd-dump_event_tables-help = 用法：{ $command }<entityUid>
cmd-dump_event_tables-missing-arg-entity = 缺少實體參數
cmd-dump_event_tables-error-entity = 實體無效
cmd-dump_event_tables-arg-entity = <entityUid>

## 'monitor' command

cmd-monitor-desc = 在 F3 選單中切換除錯監控器。
cmd-monitor-help =
    用法：{ $command }<name>
    可用的監控項目包括：{ $monitors }
    您也可以使用特殊值「-all」和「+all」，分別用來隱藏或顯示所有監控項目。
cmd-monitor-arg-monitor = <monitor>
cmd-monitor-invalid-name = 顯示器名稱無效
cmd-monitor-arg-count = 缺少顯示器參數
cmd-monitor-minus-all-hint = 隱藏所有螢幕
cmd-monitor-plus-all-hint = 顯示所有螢幕

## 'setambientlight' command

cmd-set-ambient-light-desc = 可讓您以 sRGB 格式為指定的地圖設定環境光。
cmd-set-ambient-light-help = 用法：{ $command } [mapid] [r g b a]
cmd-set-ambient-light-parse = 無法將 args 解析為顏色的位元組值。

## Mapping commands

cmd-savemap-desc = 將地圖序列化並儲存至磁碟。除非強制執行，否則不會儲存初始化完成後的地圖。
cmd-savemap-help = 用法：{ $command }<MapID> <Path> [force]
cmd-savemap-not-exist = 目標地圖不存在。
cmd-savemap-init-warning = 嘗試在不強制儲存的情況下，儲存初始化後的地圖。
cmd-savemap-attempt = 嘗試將地圖 { $mapId } 儲存至 { $path }。
cmd-savemap-success = 地圖已成功儲存。
cmd-savemap-error = 無法儲存地圖！請參閱伺服器日誌以了解詳情。
cmd-hint-savemap-id = <MapID>
cmd-hint-savemap-path = <Path>
cmd-hint-savemap-force = [bool]
cmd-loadmap-desc = 將地圖從磁碟載入至遊戲中。
cmd-loadmap-help = 用法：{ $command }<MapID> <Path> [x] [y] [rotation] [consistentUids]
cmd-loadmap-nullspace = 無法載入地圖 0。
cmd-loadmap-exists = Map { $mapId } 已存在。
cmd-loadmap-success = 已從 { $path } 載入地圖 { $mapId }。
cmd-loadmap-error = 從 { $path } 載入地圖時發生錯誤。
cmd-hint-loadmap-x-position = [x-position]
cmd-hint-loadmap-y-position = [y 座標]
cmd-hint-loadmap-rotation = [旋轉]
cmd-hint-loadmap-uids = [float]
cmd-hint-savebp-id = <Grid EntityID>

## 'flushcookies' command


# Note: the flushcookies command is from Robust.Client.WebView, it's not in the main engine code.

cmd-flushcookies-desc = 將 CEF Cookie 儲存資料清空至磁碟。
cmd-flushcookies-help =
    用法：{ $command }
    這可確保在發生非正常關機時，Cookie 能正確儲存至磁碟。
    請注意，實際操作是異步進行的。
cmd-ldrsc-desc = 將資源預先儲存至快取中。
cmd-ldrsc-help = 用法：{ $command }<path> <type>
cmd-rldrsc-desc = 重新載入資源。
cmd-rldrsc-help = 用法：{ $command }<path> <type>
cmd-gridtc-desc = 取得網格中的磁磚數量。
cmd-gridtc-help = 用法：{ $command }<gridId>
# Client-side commands
cmd-guidump-desc = 將 GUI 樹結構匯出至使用者資料中的 /guidump.txt 檔案。
cmd-guidump-help = 用法：{ $command }
cmd-uitest-desc = 開啟一個模擬的 UI 測試視窗。
cmd-uitest-help = 用法：{ $command }

## 'uitest2' command

cmd-uitest2-desc = 開啟一個用於測試 UI 控制項的 OS 視窗。
cmd-uitest2-help = 用法：{ $command }<tab>
cmd-uitest2-arg-tab = <tab>
cmd-uitest2-error-args = 預期最多一個參數
cmd-uitest2-error-tab = 無效的制表符：'{ $value }'
cmd-uitest2-title = UITest2
cmd-setclipboard-desc = 設定系統剪貼簿。
cmd-setclipboard-help = 用法：{ $command }<text>
cmd-getclipboard-desc = 取得系統剪貼簿。
cmd-getclipboard-help = 用法：{ $command }
cmd-togglelight-desc = 切換光照渲染。
cmd-togglelight-help = 用法：{ $command }
cmd-togglefov-desc = 切換客戶端的視野範圍。
cmd-togglefov-help = 用法：{ $command }
cmd-togglehardfov-desc = 切換客戶端的硬性視野角。（用於除錯 space-station-14#2353）
cmd-togglehardfov-help = 用法：{ $command }
cmd-toggleshadows-desc = 切換陰影渲染功能。
cmd-toggleshadows-help = 用法：{ $command }
cmd-togglelightbuf-desc = 切換照明渲染。這包含陰影，但不包含視野（FOV）。
cmd-togglelightbuf-help = 用法：{ $command }
cmd-chunkinfo-desc = 取得滑鼠游標所在區塊的相關資訊。
cmd-chunkinfo-help = 用法：{ $command }
cmd-chunkentities-desc = 列出位於客戶端視口內或指定範圍內的區塊實體。
cmd-chunkentities-help = 用法：{ $command } [<root entity> <x> <y> <range>]
cmd-chunkentities-error-invalid-root = 根實體無效：{ $root }
cmd-chunkentities-error-parse = x、y 和 range 必須是數字。
cmd-chunkentities-error-nullspace = 當前視點位於零空間中。
cmd-chunkentities-error-no-map = 當前視點地圖 { $map } 沒有地圖實體。
cmd-chunkentities-range-header = 針對 { $root } 周圍的 ({ $x }, { $y }) 範圍 { $range } 進行實體分塊：
cmd-chunkentities-viewport-header = 將地圖上位於客戶端視口內的區塊實體 { $map } ({ $viewport }):
cmd-chunkentities-total = 總計：{ $count }
cmd-chunkentities-root-count = 根節點 { $root }: { $count }
cmd-chunkentities-entry = { $netEntity } uid={ $uid } root={ $root } chunk={ $chunk } comps={ $componentCount } { $name }
cmd-chunkentities-arg-root = <root entity>
cmd-chunkentities-arg-x = <x>
cmd-chunkentities-arg-y = <y>
cmd-chunkentities-arg-range = <range>
cmd-rldshader-desc = 重新載入所有著色器。
cmd-rldshader-help = 用法：{ $command }
cmd-cldbglyr-desc = 切換視野與光線除錯圖層。
cmd-cldbglyr-help =
    用法：{ $command }<layer> ：切換<layer>
    cldbglyr：關閉所有圖層
cmd-key-info-desc = Keys 為某個金鑰提供的關鍵資訊。
cmd-key-info-help = 用法：{ $command }<Key>

## 'bind' command

cmd-bind-desc = 將一組輸入鍵盤組合綁定至一項輸入指令。
cmd-bind-help =
    用法：{ $command } { cmd-bind-arg-key } { cmd-bind-arg-mode } { cmd-bind-arg-command }
    請注意，這並不會自動儲存鍵位設定。
    請使用「svbind」指令來儲存鍵位設定。
cmd-bind-arg-key = <KeyName>
cmd-bind-arg-mode = <BindMode>
cmd-bind-arg-command = <InputCommand>
cmd-net-draw-interp-desc = 切換網路插值的除錯繪圖。
cmd-net-draw-interp-help = 用法：{ $command }
cmd-net-watch-ent-desc = 將某個 EntityId 的所有網路更新記錄輸出至控制台。
cmd-net-watch-ent-help = 用法：{ $command } <0|EntityUid>
cmd-net-refresh-desc = 請求取得完整的伺服器狀態。
cmd-net-refresh-help = 用法：{ $command }
cmd-net-entity-report-desc = 切換網路實體報告面板的顯示狀態。
cmd-net-entity-report-help = 用法：{ $command }
cmd-fill-desc = 在控制台中填入內容以進行除錯。
cmd-fill-help =
    用法：{ $command }
    會在控制台填入一些無意義的內容，供除錯使用。
cmd-cls-desc = 清除控制台。
cmd-cls-help =
    用法：{ $command }
    清除除錯主控台中的所有訊息。
cmd-sendgarbage-desc = 將垃圾資料傳送至伺服器。
cmd-sendgarbage-help =
    用法：{ $command }
    伺服器將回傳「no u」
cmd-loadgrid-desc = 將檔案中的網格載入至現有地圖中。
cmd-loadgrid-help = 用法：{ $command }<MapID> <Path> [x y] [rotation] [storeUids]
cmd-loc-desc = 將玩家實體的絕對位置輸出至控制台。
cmd-loc-help = 用法：{ $command }
cmd-tpgrid-desc = 將網格傳送至新位置。
cmd-tpgrid-help = 用法：{ $command }<gridId> <X> <Y> [<MapId>]
cmd-rmgrid-desc = 從地圖中移除網格。您無法移除預設網格。
cmd-rmgrid-help = 用法：{ $command }<gridId>
cmd-mapinit-desc = 對地圖執行地圖初始化。
cmd-mapinit-help = 用法：{ $command }<mapID>
cmd-lsmap-desc = 列出地圖。
cmd-lsmap-help = 用法：{ $command }
cmd-lsgrid-desc = 列出網格。
cmd-lsgrid-help = 用法：{ $command }
cmd-addmap-desc = 在該回合中新增一張空地圖。若該地圖 ID 已存在，此指令將不執行任何操作。
cmd-addmap-help = 用法：{ $command }<mapID> [pre-init]
cmd-rmmap-desc = 從世界中移除一張地圖。您無法移除 nullspace。
cmd-rmmap-help = 用法：{ $command }<mapId>
cmd-pausemap-desc = 暫停地圖，並暫停該地圖上的所有模擬處理。
cmd-pausemap-help = 用法：pausemap<map ID>
cmd-unpausemap-desc = 取消地圖的暫停狀態，並恢復該地圖上的所有模擬處理。
cmd-unpausemap-help = 用法：unpausemap<map ID>
cmd-querymappaused-desc = 檢查地圖是否已暫停。
cmd-querymappaused-help = 用法：querymappaused<map ID>
cmd-savegrid-desc = 將網格序列化並儲存至磁碟。
cmd-savegrid-help = 用法：{ $command }<gridID> <Path>
cmd-testbed-desc = 在指定的地圖上載入一個物理測試平台。
cmd-testbed-help = 用法：{ $command }<mapid> <test>

## 'flushcookies' command


# Note: the flushcookies command is from Robust.Client.WebView, it's not in the main engine code.


## 'addcomp' command

cmd-addcomp-desc = 將一個元件新增至實體。
cmd-addcomp-help = 用法：{ $command }<uid> <componentName>
cmd-addcompc-desc = 在客戶端將一個元件新增至實體。
cmd-addcompc-help = 用法：{ $command }<uid> <componentName>

## 'rmcomp' command

cmd-rmcomp-desc = 從實體中移除一個元件。
cmd-rmcomp-help = 用法：{ $command }<uid> <componentName>
cmd-rmcompc-desc = 從客戶端的實體中移除一個元件。
cmd-rmcompc-help = 用法：{ $command }<uid> <componentName>

## 'addview' command

cmd-addview-desc = 可讓您訂閱某個實體的檢視，以供除錯之用。
cmd-addview-help = 用法：{ $command }<entityUid>
cmd-addviewc-desc = 可讓您訂閱某個實體的檢視，以供除錯之用。
cmd-addviewc-help = 用法：{ $command }<entityUid>

## 'removeview' command

cmd-removeview-desc = 可讓您為除錯目的取消訂閱某個實體的檢視。
cmd-removeview-help = 用法：{ $command }<entityUid>

## 'loglevel' command

cmd-loglevel-desc = 變更指定鋸木廠的日誌等級。
cmd-loglevel-help =
    用法：{ $command }<sawmill> <level>
    sawmill：用於在日誌訊息前綴的標籤。這是您要為其設定日誌等級的標籤。
    level：日誌等級。必須與 LogLevel 枚舉的其中一個值相符。
cmd-testlog-desc = 將測試日誌寫入鋸木廠。
cmd-testlog-help =
    用法：{ $command }<sawmill> <level> <message>
    sawmill：作為日誌訊息前綴的標籤。
    level：日誌等級。必須與 LogLevel 枚舉的其中一個值相符。
    message：要記錄的訊息。若要使用空格，請將此內容用雙引號包圍。

## 'vv' command

cmd-vv-desc = 開啟「檢視變數」視窗。
cmd-vv-help = 用法：{ $command }<entity ID|IoC interface name|SIoC interface name>

## 'showvelocities' command

cmd-showvelocities-desc = 顯示您的角速度與線速度。
cmd-showvelocities-help = 用法：{ $command }

## 'setinputcontext' command

cmd-setinputcontext-desc = 設定當前的輸入上下文。
cmd-setinputcontext-help = 用法：{ $command }<context>

## 'forall' command

cmd-forall-desc = 對所有具有指定元件的實體執行一項指令。
cmd-forall-help = 用法：{ $command }<bql query> do<command...>

## 'delete' command

cmd-delete-desc = 刪除 ID 為指定值的實體。
cmd-delete-help = 用法：{ $command }<entity UID>
# System commands
cmd-showtime-desc = 顯示伺服器時間。
cmd-showtime-help = 用法：{ $command }
cmd-restart-desc = 優雅地重新啟動伺服器（而非僅重新啟動該輪）。
cmd-restart-help = 用法：{ $command }
cmd-shutdown-desc = 優雅地關閉伺服器。
cmd-shutdown-help = 用法：{ $command } [<Reason>]
cmd-saveconfig-desc = 將伺服器設定儲存至設定檔中。
cmd-saveconfig-help = 用法：{ $command }
cmd-netaudit-desc = 關於 NetMsg 安全性相關的輸出內容。
cmd-netaudit-help = 用法：{ $command }
# Player commands
cmd-tp-desc = 將玩家傳送至本回合中的任何地點。
cmd-tp-help = 用法：{ $command }<x> <y> [<mapID>]
cmd-tpto-desc = 將當前玩家或指定的玩家／實體傳送至第一個玩家／實體的位置。
cmd-tpto-help = 用法：{ $command }<username|uid> [username|NetEntity]...
cmd-tpto-destination-hint = 目的地（NetEntity 或使用者名稱）
cmd-tpto-victim-hint = 要傳送的實體（NetEntity 或 使用者名稱）
cmd-tpto-parse-error = 無法解析實體或玩家：{ $str }
cmd-listplayers-desc = 列出所有目前已連線的玩家。
cmd-listplayers-help = 用法：{ $command }
cmd-kick-desc = 將一名已連線的玩家踢出伺服器，使其斷開連線。
cmd-kick-help = 用法：{ $command }<PlayerIndex> [<Reason>]
# Spin command
cmd-spin-desc = 使實體旋轉。預設實體為所附玩家的父實體。
cmd-spin-help = 用法：{ $command } velocity [drag] [entityUid]
# Localization command
cmd-rldloc-desc = 重新載入本地化設定（客戶端與伺服器端）。
cmd-rldloc-help = 用法：{ $command }
# Debug entity controls
cmd-spawn-desc = 生成一個特定類型的實體。
cmd-spawn-help = 用法：{ $command }<prototype> | { $command }<prototype> <relative entity ID> | { $command }<prototype> <x> <y>
cmd-cspawn-desc = 在您腳邊生成一個特定類型的客戶端實體。
cmd-cspawn-help = 用法：{ $command }<entity type>
cmd-dumpentities-desc = 匯出實體清單。
cmd-dumpentities-help =
    用法：{ $command }
    輸出包含 UID 及原型的實體清單。
cmd-getcomponentregistration-desc = 取得元件的註冊資訊。
cmd-getcomponentregistration-help = 用法：{ $command }<componentName>
cmd-showrays-desc = 切換物理光線的除錯繪製功能。必須提供一個整數作為<raylifetime> 的參數。
cmd-showrays-help = 用法：{ $command }<raylifetime>
cmd-disconnect-desc = 請立即斷開與伺服器的連線，並返回主選單。
cmd-disconnect-help = 用法：{ $command }
cmd-entfo-desc = 顯示實體的詳細診斷資訊。
cmd-entfo-help =
    用法：{ $command }<entityuid>
    實體 UID 可在前面加上「c」前綴，以將其轉換為客戶端實體 UID。
cmd-fuck-desc = 拋出一個例外。
cmd-fuck-help = 用法：{ $command }
cmd-showpos-desc = 在螢幕上顯示所有實體的位置。
cmd-showpos-help = 用法：{ $command }
cmd-showrot-desc = 顯示螢幕上所有實體的旋轉角度。
cmd-showrot-help = 用法：{ $command }
cmd-showvel-desc = 顯示螢幕上所有實體的局部速度。
cmd-showvel-help = 用法：{ $command }
cmd-showangvel-desc = 顯示螢幕上所有實體的角速度。
cmd-showangvel-help = 用法：{ $command }
cmd-sggcell-desc = 列出快照網格儲存格中的實體。
cmd-sggcell-help = 用法：{ $command }<gridID> <vector2i>\n該 vector2i 參數的格式為 x<int>,y<int> 。
cmd-overrideplayername-desc = 變更嘗試連線至伺服器時所使用的名稱。
cmd-overrideplayername-help = 用法：{ $command }<name>
cmd-showanchored-desc = 顯示特定方格上已錨定的實體。
cmd-showanchored-help = 用法：{ $command }
cmd-dmetamem-desc = 將某類型的成員以適合沙盒設定檔的格式輸出。
cmd-dmetamem-help = 用法：{ $command }<type>
cmd-launchauth-desc = 從啟動器資料中載入驗證憑證，以協助進行正式伺服器的測試。
cmd-launchauth-help = 用法：{ $command }<account name>
cmd-lightbb-desc = 切換是否顯示光線邊界框。
cmd-lightbb-help = 用法：{ $command }
cmd-monitorinfo-desc = 螢幕資訊。
cmd-monitorinfo-help = 用法：{ $command }<id>
cmd-setmonitor-desc = 設定監視器。
cmd-setmonitor-help = 用法：{ $command }<id>
cmd-physics-desc = 顯示一個除錯物理疊加層。所提供的參數用於指定該疊加層。
cmd-physics-help = 用法：{ $command } <aabbs / com / contactnormals / contactpoints / distance / joints / shapeinfo / shapes>
cmd-hardquit-desc = 會立即終止遊戲客戶端。
cmd-hardquit-help =
    用法：{ $command }
    立即終止遊戲客戶端，不留任何痕跡。無法向伺服器道別。
cmd-quit-desc = 以正常方式關閉遊戲客戶端。
cmd-quit-help =
    用法：{ $command }
    會正確地關閉遊戲客戶端，並通知已連線的伺服器等相關事項。
cmd-csi-desc = 開啟一個 C# 互動式主控台。
cmd-csi-help = 用法：{ $command }
cmd-scsi-desc = 在伺服器上開啟一個 C# 互動式主控台。
cmd-scsi-help = 用法：{ $command }
cmd-watch-desc = 開啟一個變數監看視窗。
cmd-watch-help = 用法：{ $command }
cmd-showspritebb-desc = 切換是否顯示精靈邊界。
cmd-showspritebb-help = 用法：{ $command }
cmd-togglelookup-desc = 透過疊加層顯示／隱藏實體查詢範圍。
cmd-togglelookup-help = 用法：{ $command }
cmd-net_entityreport-desc = 切換網路實體報告面板的顯示狀態。
cmd-net_entityreport-help = 用法：{ $command }
cmd-net_refresh-desc = 請求取得完整的伺服器狀態。
cmd-net_refresh-help = 用法：{ $command }
cmd-net_graph-desc = 切換網路統計面板的顯示狀態。
cmd-net_graph-help = 用法：{ $command }
cmd-net_watchent-desc = 將某個 EntityId 的所有網路更新資料輸出至控制台。
cmd-net_watchent-help = 用法：{ $command } <0|EntityUid>
cmd-net_draw_interp-desc = 切換網路插值的除錯繪圖。
cmd-net_draw_interp-help = 用法：{ $command } <0|EntityUid>
cmd-vram-desc = 顯示各遊戲的視訊記憶體使用狀況統計資料。
cmd-vram-help = 用法：{ $command }
cmd-showislands-desc = 顯示每個物理島中目前涉及的物理體。
cmd-showislands-help = 用法：{ $command }
cmd-showgridnodes-desc = 顯示用於網格分割的節點。
cmd-showgridnodes-help = 用法：{ $command }
cmd-profsnap-desc = 建立一個效能分析快照。
cmd-profsnap-help = 用法：{ $command }
cmd-devwindow-desc = 開發者視窗。
cmd-devwindow-help = 用法：{ $command }
cmd-scene-desc = 立即變更 UI 場景／狀態。
cmd-scene-help = 用法：{ $command }<className>
cmd-szr_stats-desc = 匯報序列化器的統計資料。
cmd-szr_stats-help = 用法：{ $command }
cmd-hwid-desc = 回傳當前的 HWID（硬體識別碼）。
cmd-hwid-help = 用法：{ $command }
cmd-vvread-desc = 使用 VV（檢視變數）擷取路徑的值。
cmd-vvread-help = 用法：{ $command }<path>
cmd-vvwrite-desc = 使用 VV（檢視變數）來修改路徑的值。
cmd-vvwrite-help = 用法：{ $command }<path>
cmd-vvinvoke-desc = 使用 VV 帶參數調用/呼叫一個路徑。
cmd-vvinvoke-help = 用法：{ $command }<path> [參數...]
cmd-dump_dependency_injectors-desc = 清除 IoCManager 的依賴注入快取。
cmd-dump_dependency_injectors-help = 用法：{ $command }
cmd-dump_dependency_injectors-total-count = 總計：{ $total }
cmd-dump_netserializer_type_map-desc = 輸出 NetSerializer 的類型映射與序列化器雜湊值。
cmd-dump_netserializer_type_map-help = 用法：{ $command }
cmd-hub_advertise_now-desc = 立即向主匯流排伺服器進行廣播。
cmd-hub_advertise_now-help = 用法：{ $command }
cmd-echo-desc = 將參數回顯至主控台。
cmd-echo-help = 用法：{ $command } "<message>"

## 'vfs_ls' command

cmd-vfs_ls-desc = 列出 VFS 中的目錄內容。
cmd-vfs_ls-help =
    用法：{ $command }<path>
    範例：
    vfs_list /Assemblies
cmd-vfs_ls-err-args = 必須有且僅有 1 個參數。
cmd-vfs_ls-hint-path = <path>
cmd-reloadtiletextures-desc = 重新載入磁磚紋理圖集，以便熱重新載入磁磚貼圖。
cmd-reloadtiletextures-help = 用法：{ $command }
cmd-audio_length-desc = 顯示音訊檔案的長度
cmd-audio_length-help = 用法：{ $command } { cmd-audio_length-arg-file-name }
cmd-audio_length-arg-file-name = <file name>

## PVS

cmd-pvs-override-info-desc = 列印與某個實體相關的任何 PVS 覆寫設定之資訊。
cmd-pvs-override-info-empty = 實體 { $nuid } 沒有 PVS 覆寫設定。
cmd-pvs-override-info-global = 實體 { $nuid } 具有全域覆寫。
cmd-pvs-override-info-clients = 實體 { $nuid } 針對 { $clients } 設有會話覆寫。
cmd-localization_set_culture-desc = 為客戶端的 LocalizationManager 設定 DefaultCulture。
cmd-localization_set_culture-help = 用法：{ $command }<cultureName>
cmd-localization_set_culture-culture-name = <cultureName>
cmd-localization_set_culture-changed = 本地化內容已變更為 { $code } ({ $nativeName } / { $englishName })
cmd-addmap-hint-2 = runMapInit [true / false]
