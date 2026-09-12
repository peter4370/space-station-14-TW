logic-gate-examine = 目前是 { INDEFINITE($gate) } { $gate } 閘。
logic-gate-cycle = 已切換至 { INDEFINITE($gate) } { $gate } 閘門
power-sensor-examine =
    目前正在檢查該網路的 { $output ->
        [true] 輸出
       *[false] 輸入
    } 電池。
power-sensor-voltage-examine = 目前正在檢查 { $voltage } 的電力網路。
power-sensor-switch =
    已切換至檢查該網路的 { $output ->
        [true] 輸出
       *[false] 輸入
    } 電池。
power-sensor-voltage-switch = 已將網路切換至 { $voltage }！
