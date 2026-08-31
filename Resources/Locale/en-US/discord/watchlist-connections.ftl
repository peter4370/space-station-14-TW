discord-watchlist-connection-header =
    { $players ->
        [one] { $players } 位被加入觀察名單的玩家有
       *[other] { $players } 位被加入觀察名單的玩家有
    } 與 { $serverName } 相關聯
discord-watchlist-connection-entry =
    - { $playerName } 附帶訊息 "{ $message }"{ $expiry ->
        [0] { "" }
       *[other] { " " }(到期時間 <t:{ $expiry }:R>)
    }{ $otherWatchlists ->
        [0] { "" }
        [one] { " " } 以及 { $otherWatchlists } 其他觀察清單
       *[other] { " " } 以及 { $otherWatchlists } 其他觀察清單
    }
