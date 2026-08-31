parcel-wrap-verb-wrap = 結尾
parcel-wrap-verb-unwrap = 拆封
parcel-wrap-popup-parcel-destroyed = 包含 { THE($contents) } 的封裝已被銷毀！
parcel-wrap-popup-being-wrapped = { CAPITALIZE(THE($user)) } 正試圖用包裝紙把你裹起來！
parcel-wrap-popup-being-wrapped-self = 你開始自己包裝包裹。
# Shown when parcel wrap is examined in details range
parcel-wrap-examine-detail-uses =
    { $uses ->
        [one] 尚有 [color={ $markupUsesColor }]{ $uses }[/color] 次使用量
       *[other] 尚有 [color={ $markupUsesColor }]{ $uses }[/color] 次使用量
    }。
