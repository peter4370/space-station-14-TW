# Examine text after when they're holding something (in-hand)
comp-hands-examine = { CAPITALIZE(SUBJECT($user)) } { CONJUGATE-BE($user) } 包含 { $items }。
comp-hands-examine-empty = { CAPITALIZE(SUBJECT($user)) } { CONJUGATE-BE($user) } 什麼都沒拿。
comp-hands-examine-wrapper = { INDEFINITE($item) } [color=paleturquoise]{ $item }[/color]
hands-system-blocked-by = 被……擋住
