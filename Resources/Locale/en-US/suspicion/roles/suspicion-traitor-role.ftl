# Shown when greeted with the Suspicion role
suspicion-role-greeting = 你真是個 { $roleName }！
# Shown when greeted with the Suspicion role
suspicion-objective = 目標：{ $objectiveText }
# Shown when greeted with the Suspicion role
suspicion-partners-in-crime =
    { $partnersCount ->
        [zero] 只能靠自己了。祝你好運！
        [one] 你的同夥是 { $partnerNames }。
       *[other] 你的同夥是 { $partnerNames }。
    }
