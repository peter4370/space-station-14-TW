### UI

# Verb name for climbing
comp-climbable-verb-climb = Vault

### Interaction Messages

# Shown to you when your character climbs on $climbable
comp-climbable-user-climbs = 你跳上了 { THE($climbable) }！
# Shown to others when $user climbs on $climbable
comp-climbable-user-climbs-other = { CAPITALIZE(THE($user)) } 跳轉至 { THE($climbable) }！
# Shown to you when your character forces someone to climb on $climbable
comp-climbable-user-climbs-force = 你將 { THE($moved-user) } 強加於 { THE($climbable) } 之上！
# Shown to others when someone forces other $moved-user to climb on $climbable
comp-climbable-user-climbs-force-other = { CAPITALIZE(THE($user)) } 將 { THE($moved-user) } 強行套用至 { THE($climbable) }！
# Shown to you when your character is far away from climbable
comp-climbable-cant-reach = 你夠不到那裡！
# Shown to you when your character can't interact with climbable for some reason
comp-climbable-cant-interact = 你不能那樣做！
# Shown to you when your character isn't able to climb by their own actions
comp-climbable-cant-climb = 你根本爬不上去！
# Shown to you when your character tries to force someone else who can't climb onto a climbable
comp-climbable-target-cant-climb = { CAPITALIZE(THE($moved-user)) } 無法前往該處！
