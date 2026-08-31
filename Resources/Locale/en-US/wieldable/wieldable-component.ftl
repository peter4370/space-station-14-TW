### Locale for wielding items; i.e. two-handing them

wieldable-verb-text-wield = 揮舞
wieldable-verb-text-unwield = 難以駕馭
wieldable-component-successful-wield = 你揮舞著 { THE($item) }。
wieldable-component-failed-wield = 您使用了 { THE($item) }。
wieldable-component-successful-wield-other = { CAPITALIZE(THE($user)) } 運用 { THE($item) }。
wieldable-component-failed-wield-other = { CAPITALIZE(THE($user)) } 會產生 { THE($item) }。
wieldable-component-blocked-wield = { CAPITALIZE(THE($blocker)) } 會阻止你使用 { THE($item) }。
wieldable-component-no-hands = 你人手不夠啊！
wieldable-component-not-enough-free-hands =
    { $number ->
        [one] 你需要一隻空出的手來揮舞 { THE($item) }。
       *[other] 你需要 { $number } 隻空出的手來揮舞 { THE($item) }。
    }
wieldable-component-not-in-hands = { CAPITALIZE(THE($item)) } 並非由你掌控！
wieldable-component-requires = { CAPITALIZE(THE($item)) } 必須善加運用！
gunwieldbonus-component-examine = 使用這把武器時，其準確度有所提升。
gunrequireswield-component-examine = 這把武器必須在手持時才能開火。
