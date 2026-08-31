## Implanter Attempt Messages

implanter-component-implanting-target = { CAPITALIZE(THE({ $user })) } 正試圖向你植入某種東西！
implanter-component-draw-target = { CAPITALIZE(THE({ $user })) } 正試圖從你身上提取某些東西！
implanter-component-implant-failed = { $implant } 不能送給 { $target }！
implanter-draw-failed-permanent = 位於 { $target } 中的 { $implant } 已與 { OBJECT($target) } 融合，無法移除！
implanter-draw-failed = 你試圖取出植入物，但一無所獲。
implanter-draw-failed-catastrophically = 植入器一無所獲，並發生災難性故障，將遺傳物質意外地送入了 { $user } 的手中！
implanter-component-implant-already = { CAPITALIZE(THE({ $target })) } 已經包含 { $implant } 了！

## UI

implanter-set-draw-verb = 設定植體抽圖
implanter-set-draw-window = 設定植體抽圖
implanter-set-draw-info = 請選擇此植入物取出器應取出的植入物類型：
implanter-set-draw-type = 植體類型：
implanter-draw-text = 平手
implanter-inject-text = 注入
implanter-empty-text = 空白
implanter-label-inject = [color=green]{ $implantName }[/color]
    模式：[color=white]{ $modeString }[/color]
implanter-label-draw = [color=red]{ $implantName }[/color]
    模式：[color=white]{ $modeString }[/color]
implanter-contained-implant-text = [color=green]{ $desc }[/color]
