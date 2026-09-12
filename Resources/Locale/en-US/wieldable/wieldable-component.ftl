### Locale for wielding items; i.e. two-handing them

wieldable-verb-text-wield = 握持
wieldable-verb-text-unwield = 取消握持
wieldable-component-successful-wield = 你握持著 { THE($item) }。
wieldable-component-failed-wield = 您取消握持 { THE($item) }了。
wieldable-component-successful-wield-other = { CAPITALIZE(THE($user)) } 握持 { THE($item) }。
wieldable-component-failed-wield-other = { CAPITALIZE(THE($user)) } 取消握持 { THE($item) }。
wieldable-component-blocked-wield = 手上的{ CAPITALIZE(THE($blocker)) } 讓你不能握持 { THE($item) }。
wieldable-component-no-hands = 你人手不夠啊！
wieldable-component-not-enough-free-hands =
    { $number ->
        [one] 你需要一隻空出的手來握持 { THE($item) }。
       *[other] 你需要 { $number } 隻空出的手來握持 { THE($item) }。
    }
wieldable-component-not-in-hands = { CAPITALIZE(THE($item)) } 不在你手中！
wieldable-component-requires = { CAPITALIZE(THE($item)) } 必須以雙手握持！
gunwieldbonus-component-examine = 握持這把武器時，其準確度會有所提升。
gunrequireswield-component-examine = 這把武器必須在雙手握持時才能開火。
