delivery-recipient-examine = 這篇是專為 { $recipient }、{ $job } 所撰寫的。
delivery-already-opened-examine = 它已經打開了。
delivery-earnings-examine = 完成這項任務將為該電台賺取 [color=yellow]{ $spesos }[/color] 斯佩索。
delivery-recipient-no-name = 未命名
delivery-recipient-no-job = 未知
delivery-unlocked-self = 您可以使用指紋解鎖 { $delivery }。
delivery-opened-self = 您開啟 { $delivery }。
delivery-unlocked-others = { CAPITALIZE($recipient) } 使用 { POSS-ADJ($possadj) } 指紋解鎖了 { $delivery }。
delivery-opened-others = { CAPITALIZE($recipient) } 開啟了 { $delivery }。
delivery-unlock-verb = 解鎖
delivery-open-verb = 開啟
delivery-slice-verb = 切開
delivery-teleporter-amount-examine =
    { $amount ->
        [one] 其中包含 [color=yellow]{ $amount }[/color] 次配送。
       *[other] 其中包含 [color=yellow]{ $amount }[/color] 次配送。
    }
delivery-teleporter-empty = { $entity } 為空。
delivery-teleporter-empty-verb = 收取郵件
# modifiers
delivery-priority-examine = 這是 [color=orange]優先任務 { $type }[/color]。您還剩下 [color=orange]{ $time }[/color] 時間來完成此任務，以獲得獎勵。
delivery-priority-delivered-examine = 這是 [color=orange]優先級 { $type }[/color]。它已準時送達。
delivery-priority-expired-examine = 這是個 [color=orange]優先事項 { $type }[/color]。它已超過時限。
delivery-fragile-examine = 這是個 [color=red]易碎品 { $type }[/color]。若能完好無損地送達，即可獲得獎金。
delivery-fragile-broken-examine = 這是個 [color=red]易碎品 { $type }[/color]。看起來損壞得很嚴重。
delivery-bomb-examine = 這是一顆 [color=purple]炸彈 { $type }[/color]。天啊。
delivery-bomb-primed-examine = 這是一則 [color=purple]炸彈 { $type }[/color]。閱讀這篇文章是在浪費你的時間。
