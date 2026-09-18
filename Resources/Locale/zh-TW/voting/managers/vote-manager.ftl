# Displayed as initiator of vote when no user creates the vote
ui-vote-initiator-server = 伺服器

## Default.Votes

ui-vote-restart-title = 重啟回合
ui-vote-restart-succeeded = 重新啟動投票成功。
ui-vote-restart-failed = 重新啟動投票失敗（需要 { TOSTRING($ratio, "P0") }）。
ui-vote-restart-fail-not-enough-ghost-players = 重啟投票失敗：啟動重啟投票需至少有 { $ghostPlayerRequirement }% 的幽靈玩家。目前幽靈玩家數量不足。
ui-vote-restart-yes = 是的
ui-vote-restart-no = 不
ui-vote-restart-abstain = 棄權
ui-vote-gamemode-title = 下一種遊戲模式
ui-vote-gamemode-tie = 遊戲模式投票打平了！正在選擇…… { $picked }
ui-vote-gamemode-win = { $winner } 在遊戲模式投票中勝出！
ui-vote-map-title = 下一張地圖
ui-vote-map-tie = 地圖投票打平了！正在選擇中... { $picked }
ui-vote-map-win = { $winner } 在地圖投票中勝出！
ui-vote-map-notlobby = 地圖投票僅在開局前的等候室中有效！
ui-vote-map-notlobby-time = 地圖投票僅在賽前等候室中有效，目前僅剩 { $time } 張地圖！
ui-vote-map-invalid = { $winner } 在地圖投票後已失效！它將不會被選中！
# Votekick votes
ui-vote-votekick-unknown-initiator = 一名球員
ui-vote-votekick-unknown-target = 未知玩家
ui-vote-votekick-title = { $initiator } 已針對使用者：{ $targetEntity } 發起投票踢出程序。理由：{ $reason }
ui-vote-votekick-yes = 是的
ui-vote-votekick-no = 不
ui-vote-votekick-abstain = 棄權
ui-vote-votekick-success = 對 { $target } 的「投票踢出」操作成功。投票踢出理由：{ $reason }
ui-vote-votekick-failure = 對 { $target } 的「Votekick」操作失敗。Votekick 原因：{ $reason }
ui-vote-votekick-not-enough-eligible = 線上符合資格的選民人數不足，無法啟動「votekick」：{ $voters }/{ $requirement }
ui-vote-votekick-server-cancelled = 針對 { $target } 的 Votekick 操作已被伺服器取消。
