### Voting system related console commands


## 'createvote' command

cmd-createvote-desc = 建立一項投票
cmd-createvote-help = 用法：createvote<'restart'|'preset'|'map'>
cmd-createvote-cannot-call-vote-now = 現在還不能進行表決！
cmd-createvote-invalid-vote-type = 投票類型無效
cmd-createvote-arg-vote-type = <vote type>

## 'customvote' command

cmd-customvote-desc = 建立自訂投票
cmd-customvote-help = 用法：customvote<title> <option1> <option2> [option3...]
cmd-customvote-on-finished-tie = 「{ $title }」的投票已結束：{ $ties } 之間票數並列！
cmd-customvote-on-finished-win = 「{ $title }」的投票已結束：「{ $winner }」獲勝！
cmd-customvote-arg-title = <title>
cmd-customvote-arg-option-n = <option{ $n }>

## 'vote' command

cmd-vote-desc = 針對一項正在進行的投票所投的票
cmd-vote-help = 投票<voteId> <option>
cmd-vote-cannot-call-vote-now = 現在還不能進行表決！
cmd-vote-on-execute-error-must-be-player = 肯定是個玩家
cmd-vote-on-execute-error-invalid-vote-id = 投票 ID 無效
cmd-vote-on-execute-error-invalid-vote-options = 無效的投票選項
cmd-vote-on-execute-error-invalid-vote = 無效票
cmd-vote-on-execute-error-invalid-option = 選項無效

## 'listvotes' command

cmd-listvotes-desc = 列出目前有效的投票
cmd-listvotes-help = 用法：listvotes

## 'cancelvote' command

cmd-cancelvote-desc = 取消一項正在進行的投票
cmd-cancelvote-help =
    用法：cancelvote<id>
    您可透過 listvotes 指令取得該投票的 ID。
cmd-cancelvote-error-invalid-vote-id = 投票 ID 無效
cmd-cancelvote-error-missing-vote-id = 缺少ID卡號碼
cmd-cancelvote-arg-id = <id>
