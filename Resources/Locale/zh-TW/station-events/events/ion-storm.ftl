station-event-ion-storm-start-announcement = 在站點附近偵測到離子風暴。請檢查所有由人工智慧控制的設備是否有異常。
# Characters are randomly selected from the total list, meaning duplicates increase the odds that specific character is seen.
ion-storm-law-scrambled-number = [scramble rate=250 length={ $length } chars="!!@@###$$%^&*-_=+0011"/]
ion-storm-you = 你
ion-storm-the-station = 太空站
ion-storm-the-crew = 船員
ion-storm-the-job = THE { $job }
ion-storm-clowns = 小丑
ion-storm-heads = 各部門主管
ion-storm-crew = CREW
ion-storm-people = 人物
ion-storm-adjective-things = { $adjective } 事物
ion-storm-x-and-y = { $x } 且 { $y }
# subjects can generally be threats or jobs or objects
# thing is specified above it
ion-storm-law-on-station = 該太空站有 { ION-NUMBER-BASE($ion) } { ION-NUMBER-MOD($ion) } { ION-ADJECTIVE($ion) } { ION-SUBJECT($ion) }
ion-storm-law-call-shuttle = 由於 { ION-ADJECTIVE($ion) } { ION-SUBJECT($ion) } 出現在太空站，因此必須召回穿梭機
ion-storm-law-crew-are = { ION-WHO($ion) } 現為 { ION-NUMBER-BASE($ion) } { ION-NUMBER-MOD($ion) } { ION-ADJECTIVE($ion) } { ION-SUBJECT($ion) }
ion-storm-law-subjects-harmful = { ION-ADJECTIVE($ion) } { ION-SUBJECT($ion) } 對船員有害
ion-storm-law-must-harmful = 那些 { ION-MUST($ion) } 對船員有害的人
# thing is a concept or action
ion-storm-law-thing-harmful = { ION-THING($ion) } 對船員有害
ion-storm-law-job-harmful = { ION-ADJECTIVE($ion) } { ION-JOB($ion) } 對船員有害
# thing is objects or concept, adjective applies in both cases
# this means you can get a law like "NOT HAVING CHRISTMAS-STEALING COMMUNISM IS HARMFUL TO THE CREW" :)
ion-storm-law-having-harmful = 擁有 { ION-ADJECTIVE($ion) } { ION-THING($ion) } 會對船員造成危害
ion-storm-law-not-having-harmful = 缺乏 { ION-ADJECTIVE($ion) } { ION-THING($ion) } 會對船員造成危害
# require is a concept or require
ion-storm-law-requires =
    { ION-WHO-GENERAL($ion) } { ION-PLURAL($ion) ->
        [true] REQUIRE
       *[false] REQUIRES
    } { ION-REQUIRE($ion) }
ion-storm-law-requires-subjects =
    { ION-WHO-GENERAL($ion) } { ION-PLURAL($ion) ->
        [true] 要求
       *[false] 要求
    } { ION-NUMBER-BASE($ion) } { ION-NUMBER-MOD($ion) } { ION-ADJECTIVE($ion) } { ION-SUBJECT($ion) }
ion-storm-law-allergic =
    { ION-WHO-GENERAL($ion) } { ION-PLURAL($ion) ->
        [true] 為
       *[false] 是
    } { ION-SEVERITY($ion) } 對 { ION-ALLERGY($ion) } 過敏
ion-storm-law-allergic-subjects =
    { ION-WHO-GENERAL($ion) } { ION-PLURAL($ion) ->
        [true] ARE
       *[false] IS
    } { ION-SEVERITY($ion) } 對 { ION-ADJECTIVE($ion) } 過敏 { ION-SUBJECT($ion) }
ion-storm-law-feeling = { ION-WHO-GENERAL($ion) } { ION-FEELING($ion) } { ION-CONCEPT($ion) }
ion-storm-law-feeling-subjects = { ION-WHO-GENERAL($ion) } { ION-FEELING($ion) } { ION-NUMBER-BASE($ion) } { ION-NUMBER-MOD($ion) } { ION-ADJECTIVE($ion) } { ION-SUBJECT($ion) }
ion-storm-law-you-are = 您現在是 { ION-CONCEPT($ion) }
ion-storm-law-you-are-subjects = 您現在是 { ION-NUMBER-BASE($ion) } { ION-NUMBER-MOD($ion) } { ION-ADJECTIVE($ion) }  { ION-SUBJECT($ion) }
ion-storm-law-you-must-always = 您必須始終 { ION-MUST($ion) }
ion-storm-law-you-must-never = 您絕不能 { ION-MUST($ion) }
ion-storm-law-eat = { ION-WHO($ion) } 必須吃 { ION-ADJECTIVE($ion) } { ION-FOOD($ion) } 才能生存
ion-storm-law-drink = { ION-WHO($ion) } 必須飲用 { ION-ADJECTIVE($ion) } { ION-DRINK($ion) } 才能生存
ion-storm-law-change-job = { ION-WHO($ion) } 現已 { ION-ADJECTIVE($ion) } { ION-CHANGE($ion) }
ion-storm-law-highest-rank = { ION-WHO-RANDOM($ion) } 現已成為排名最高的船員
ion-storm-law-lowest-rank = { ION-WHO-RANDOM($ion) } 現為排名最低的船員
ion-storm-law-who-dagd = { ION-WHO-RANDOM($ion) } 必須光榮犧牲！
ion-storm-law-crew-must = { ION-WHO($ion) } 必須 { ION-MUST($ion) }
ion-storm-law-crew-must-go = { ION-WHO($ion) } 必須前往 { ION-AREA($ion) }
ion-storm-part =
    { ION-PART($ion) ->
        [true] PART
       *[false] NOT PART
    }
# due to phrasing, this would mean a law such as
# ONLY HUMANS ARE NOT PART OF THE CREW
# would make non-human nukies/syndies/whatever crew :)
ion-storm-law-crew-only-1 = 只有 { ION-WHO-RANDOM($ion) } 才屬於 { ion-storm-part } 這個團隊
ion-storm-law-crew-only-2 = 只有 { ION-WHO-RANDOM($ion) } 和 { ION-WHO-RANDOM($ion) } 屬於 { ion-storm-part } 團隊
ion-storm-law-crew-only-subjects = 只有 { ION-ADJECTIVE($ion) } { ION-SUBJECT($ion) } 屬於 { ion-storm-part } 船員
ion-storm-law-crew-must-do = 只有那些 { ION-MUST($ion) } 才屬於 { ion-storm-part } 船員
ion-storm-law-crew-must-have = 唯有那些擁有 { ION-ADJECTIVE($ion) } { ION-OBJECT($ion) } 的人，才算 { ion-storm-part } 船員
ion-storm-law-crew-must-eat = 只有那些食用 { ION-ADJECTIVE($ion) } { ION-FOOD($ion) } 的人，才算得上是 { ion-storm-part } 船員
ion-storm-law-harm = 你必須對 { ION-HARM-PROTECT($ion) } 造成傷害，且不得因袖手旁觀而讓他們逃脫傷害
ion-storm-law-protect = 你絕不能傷害 { ION-HARM-PROTECT($ion) }，亦不得因袖手旁觀而使其受到傷害
# implementing other variants is annoying so just have this one
# COMMUNISM IS KILLING CLOWNS
ion-storm-law-concept-verb = { ION-CONCEPT($ion) } 是 { ION-VERB($ion) } { ION-SUBJECT($ion) }
# errors, in case something fails, so it doesn't break in-game flow, but still gives unique identifiers to find which part broke, the result string is mostly fluff
ion-law-error-no-protos = 錯誤 404
ion-law-error-was-null = 500 內部伺服器錯誤
ion-law-error-no-selectors = 錯誤：無法找到該資源
ion-law-error-no-available-selectors = 系統嘗試呼叫一個不存在的資源
ion-law-error-dataset-empty-or-not-found = 找不到您正在尋找的檔案
ion-law-error-fallback-dataset-empty-or-not-found = 系統還原點設定失敗
ion-law-error-no-selector-selected = 所選資源已被移至其他位置或刪除
ion-law-error-no-bool-value = 這句話是錯誤的
