markings-search = 搜尋
-markings-selection =
    { $selectable ->
        [0] 您已無剩餘標記。
        [one] 您還可以選擇一個標記。
       *[other] 您還可以選擇 { $selectable } 個標記。
    }
markings-limits = { $required ->
    [true] { $count ->
        [-1] Select at least one marking.
        [0] You cannot select any markings, but somehow, you have to? This is a bug.
        [one] Select one marking.
       *[other] Select at least one marking and up to {$count} markings. { -markings-selection(selectable: $selectable) }
    }
   *[false] { $count ->
        [-1] Select any number of markings.
        [0] You cannot select any markings.
        [one] Select up to one marking.
       *[other] Select up to {$count} markings. { -markings-selection(selectable: $selectable) }
    }
}
markings-reorder = 重新排列標記
humanoid-marking-modifier-respect-limits = 尊重界限
humanoid-marking-modifier-respect-group-sex = 請遵守群組與性別限制
humanoid-marking-modifier-base-layers = 底層衣物
humanoid-marking-modifier-enable = 啟用
humanoid-marking-modifier-prototype-id = 原型編號：

# Categories

markings-organ-Torso = 軀幹
markings-organ-Head = 標題
markings-organ-ArmLeft = 左臂
markings-organ-ArmRight = 右臂
markings-organ-HandRight = 右手
markings-organ-HandLeft = 左手
markings-organ-LegLeft = 左腿
markings-organ-LegRight = 右腿
markings-organ-FootLeft = 左腳
markings-organ-FootRight = 右腳
markings-organ-Eyes = 眼睛
markings-layer-Special = 特別
markings-layer-Tail = 尾巴
markings-layer-Tail-Moth = 翅膀
markings-layer-Hair = 頭髮
markings-layer-FacialHair = 臉部毛髮
markings-layer-UndergarmentTop = 內衣
markings-layer-UndergarmentBottom = 內褲
markings-layer-Chest = 胸部
markings-layer-Head = 標題
markings-layer-Snout = 鼻吻部
markings-layer-SnoutCover = 《Snout》（封面）
markings-layer-HeadSide = 頭部（側面）
markings-layer-HeadTop = 頁首（頂部）
markings-layer-Eyes = 眼睛
markings-layer-RArm = 右臂
markings-layer-LArm = 左臂
markings-layer-RHand = 右手
markings-layer-LHand = 左手
markings-layer-RLeg = 右腿
markings-layer-LLeg = 左腿
markings-layer-RFoot = 右腳
markings-layer-LFoot = 左腳
markings-layer-Overlay = 疊加層
markings-layer-TailOverlay = 疊加層
