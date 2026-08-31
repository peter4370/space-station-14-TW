### Interaction Messages

# Shown when player tries to replace light, but there are no lights left
comp-light-replacer-missing-light = { THE($light-replacer) } 中已無 { MAKEPLURAL($light-name) }。
# Shown when player tries to insert a broken light bulb into the light replacer.
comp-light-replacer-insert-broken-light = 不能安裝損壞的燈具！
# Shown when a player attempts to replace a light with the same color & type as the active light.
comp-light-replacer-same-light = 此配對已包含 { INDEFINITE($light) } { $light }！
# Radial Menu messages
comp-light-replacer-eject-specified-lights = 將所有 { MAKEPLURAL($light) } 彈出。
comp-light-replacer-select-lights = 選取 { MAKEPLURAL($light) }。
comp-light-replacer-open-empty = { CAPITALIZE(THE($light-replacer)) } 完全為空！
# Label
comp-light-replacer-label =
    燈管：{ $tube }
    燈泡：{ $bulb }

### Examine

comp-light-replacer-no-lights = 裡面是空的。
comp-light-replacer-has-lights = 其中包含以下內容：
comp-light-replacer-light-listing =
    { $amount ->
        [one] [color=yellow]{ $amount }[/color] [color=gray]{ $name }[/color]
       *[other] [color=yellow]{ $amount }[/color] [color=gray]{ MAKEPLURAL($name) }[/color]
    }

### Status Control

# Bulbs
comp-light-bulb-incandescent = 白熾燈
comp-light-bulb-dim = 微光
comp-light-bulb-warm = 溫暖的
comp-light-bulb-service = 服務
# Tubes
comp-light-bulb-fluorescent = 螢光
comp-light-bulb-exterior = 外觀
comp-light-bulb-sodium = 鈉 sodium
# Both
comp-light-bulb-old = 舊的
comp-light-bulb-led = LED
comp-light-bulb-cyan = 青色
comp-light-bulb-blue = 藍色
comp-light-bulb-yellow = 黃色
comp-light-bulb-pink = 粉紅色
comp-light-bulb-orange = 橘色
comp-light-bulb-black = 黑色
comp-light-bulb-red = 紅色
comp-light-bulb-green = 綠色
