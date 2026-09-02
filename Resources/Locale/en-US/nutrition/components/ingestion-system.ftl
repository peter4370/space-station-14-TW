### Interaction Messages


# System


## When trying to ingest without the required utensil... but you gotta hold it

ingestion-you-need-to-hold-utensil = 你必須持有 { INDEFINITE($utensil) } { $utensil } 才能吃那個！
ingestion-try-use-is-empty = { CAPITALIZE(THE($entity)) } 為空！
ingestion-try-use-wrong-utensil = 你無法 { $verb } { THE($food) } 與 { INDEFINITE($utensil) } { $utensil } 結合。
ingestion-remove-mask = 您需要先移除 { $entity }。

## Failed Ingestion

ingestion-you-cannot-ingest-any-more = 你已經不能再 { $verb } 了！
ingestion-other-cannot-ingest-any-more = { CAPITALIZE(SUBJECT($target)) } 已經無法 { $verb } 了！
ingestion-cant-digest = 你無法消化 { THE($entity) }！
ingestion-cant-digest-other = { CAPITALIZE(SUBJECT($target)) } 無法處理 { THE($entity) }！

## Action Verbs, not to be confused with Verbs

ingestion-verb-food = 吃
ingestion-verb-drink = 飲用

# Edible Component

-edible-satiated =
    { $satiated ->
        [true] { " " }你覺得自己再也無法 { $verb } 了。
       *[false] { "" }
    }
edible-nom = Nom. {$flavors}{ -edible-satiated(satiated: $satiated, verb: "eat") }
edible-nom-other = Nom.
edible-slurp = Slurp. {$flavors}{ -edible-satiated(satiated: $satiated, verb: "drink") }
edible-slurp-other = 啜啜。
edible-swallow = You swallow { THE($food) }.{ -edible-satiated(satiated: $satiated, verb: "swallow") }
edible-gulp = 咕嚕。 { $flavors }
edible-gulp-other = 咕嚕。
edible-has-used-storage = 您無法對存放有項目的 { $verb } { THE($food) } 執行此操作。

## Nouns

edible-noun-edible = 可食用的
edible-noun-food = 食物
edible-noun-drink = 飲品
edible-noun-pill = 藥丸

## Verbs

edible-verb-edible = 攝入
edible-verb-food = 吃
edible-verb-drink = 飲用
edible-verb-pill = 燕子

## Force feeding

edible-force-feed = { CAPITALIZE(THE($user)) } 正試圖讓你 { $verb } 某件事！
edible-force-feed-success = {CAPITALIZE(THE($user))} forced you to {$verb} something! {$flavors}{ -edible-satiated(satiated: $satiated, verb: $verb) }
edible-force-feed-success-user = 您已成功餵食 { THE($target) }
