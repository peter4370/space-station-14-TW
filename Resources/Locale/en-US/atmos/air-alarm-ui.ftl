# UI


## Window

air-alarm-ui-title = 氣體警報器
air-alarm-ui-access-denied = 存取權限不足！
air-alarm-ui-window-pressure-label = 壓力
air-alarm-ui-window-temperature-label = 溫度
air-alarm-ui-window-alarm-state-label = 狀態
air-alarm-ui-window-address-label = 地址
air-alarm-ui-window-device-count-label = 裝置總數
air-alarm-ui-window-resync-devices-label = 重新同步
air-alarm-ui-window-mode-label = 模式
air-alarm-ui-window-mode-select-locked-label = [粗體][color=red] 模式選擇器故障！ [/color][/粗體]
air-alarm-ui-window-auto-mode-label = 自動模式
-air-alarm-state-name =
    { $state ->
        [normal] 正常
        [warning] 警告
        [danger] 危險
        [emagged] Emagged
       *[invalid] 無效
    }
air-alarm-ui-window-listing-title = {$address} : {-air-alarm-state-name(state:$state)}
air-alarm-ui-window-pressure = { $pressure } kPa
air-alarm-ui-window-pressure-indicator = 壓力：[color={ $color }]{ $pressure } kPa[/color]
air-alarm-ui-window-temperature = { $tempC } C ({ $temperature } K)
air-alarm-ui-window-temperature-indicator = 溫度：[color={ $color }]{ $tempC } 攝氏度 ({ $temperature } 開爾文)[/color]
air-alarm-ui-window-alarm-state = [color={$color}]{-air-alarm-state-name(state:$state)}[/color]
air-alarm-ui-window-alarm-state-indicator = Status: [color={$color}]{-air-alarm-state-name(state:$state)}[/color]

air-alarm-ui-window-tab-vents = 通風口
air-alarm-ui-window-tab-scrubbers = 洗滌塔
air-alarm-ui-window-tab-sensors = 感測器
air-alarm-ui-gases = { $gas }：{ $amount } 摩爾（{ $percentage }%）
air-alarm-ui-gases-indicator = { $gas }：[color={ $color }]{ $amount } 摩爾（{ $percentage }%）[/color]
air-alarm-ui-mode-filtering = 篩選
air-alarm-ui-mode-wide-filtering = 篩選（廣泛）
air-alarm-ui-mode-fill = 填寫
air-alarm-ui-mode-panic = 恐慌
air-alarm-ui-mode-none = 無
air-alarm-ui-pump-direction-siphoning = 虹吸
air-alarm-ui-pump-direction-scrubbing = 刷洗
air-alarm-ui-pump-direction-releasing = 發布
air-alarm-ui-pressure-bound-nobound = 無界
air-alarm-ui-pressure-bound-internalbound = 內部邊界
air-alarm-ui-pressure-bound-externalbound = 艙外邊界
air-alarm-ui-pressure-bound-both = 兩者皆是
air-alarm-ui-widget-gas-filters = 氣體過濾器

## Widgets


### General

air-alarm-ui-widget-enable = 已啟用
air-alarm-ui-widget-copy = 將設定複製到類似裝置
air-alarm-ui-widget-copy-tooltip = 將此裝置的設定複製到「空氣警報」分頁中的所有裝置。
air-alarm-ui-widget-ignore = 忽略
air-alarm-ui-atmos-net-device-label = 地址：{ $address }

### Vent pumps

air-alarm-ui-vent-pump-label = 通風方向
air-alarm-ui-vent-pressure-label = 壓製裝訂
air-alarm-ui-vent-external-bound-label = 艙外邊界
air-alarm-ui-vent-internal-bound-label = 內部邊界

### Scrubbers

air-alarm-ui-scrubber-pump-direction-label = 方向
air-alarm-ui-scrubber-volume-rate-label = 費率 (L)
air-alarm-ui-scrubber-wide-net-label = WideNet
air-alarm-ui-scrubber-select-all-gases-label = 全選
air-alarm-ui-scrubber-deselect-all-gases-label = 取消選取所有項目

### Thresholds

air-alarm-ui-sensor-gases = 氣體
air-alarm-ui-sensor-thresholds = 閾值
air-alarm-ui-thresholds-pressure-title = 閾值（kPa）
air-alarm-ui-thresholds-temperature-title = 閾值 (K)
air-alarm-ui-thresholds-gas-title = 閾值（%）
air-alarm-ui-thresholds-upper-bound = 頭頂有危險
air-alarm-ui-thresholds-lower-bound = 下方有危險
air-alarm-ui-thresholds-upper-warning-bound = 上述警告
air-alarm-ui-thresholds-lower-warning-bound = 以下為警告
air-alarm-ui-thresholds-copy = 將閾值複製到所有裝置
air-alarm-ui-thresholds-copy-tooltip = 將此裝置的感測器閾值複製到「空氣警報」分頁中的所有裝置。
