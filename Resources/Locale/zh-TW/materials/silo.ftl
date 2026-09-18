ore-silo-ui-title = 物料筒倉
ore-silo-ui-label-clients = 機器
ore-silo-ui-label-mats = 材料
ore-silo-ui-itemlist-entry =
    { $linked ->
        [true] { "[已連結] " }
       *[False] { "" }
    } { $name } ({ $beacon }) { $inRange ->
        [true] { "" }
       *[false] (超出範圍)
    }
