## SuspicionGui.xaml.cs

# Shown when clicking your Role Button in Suspicion
suspicion-ally-count-display =
    { $allyCount ->
       *[zero] 您沒有盟友
        [one] 您的盟友是 { $allyNames }
        [other] 您的盟友是 { $allyNames }
    }
