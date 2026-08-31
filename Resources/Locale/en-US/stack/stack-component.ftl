### UI

# Shown when a stack is examined in details range
comp-stack-examine-detail-count =
    { $count ->
        [one] 堆疊中有 [color={ $markupCountColor }]{ $count }[/color] 個物件
       *[other] 堆疊中有 [color={ $markupCountColor }]{ $count }[/color] 個物件
    }。
# Stack status control
comp-stack-status = 計數：[color=white]{ $count }[/color]

### Interaction Messages

# Shown when attempting to add to a stack that is full
comp-stack-already-full = 堆疊已滿。
# Shown when a stack becomes full
comp-stack-becomes-full = 堆疊已滿。
# Text related to splitting a stack
comp-stack-split = 你把牌堆分開了。
comp-stack-split-halve = 減半
comp-stack-split-too-small = 堆疊過小，無法進行分割。
