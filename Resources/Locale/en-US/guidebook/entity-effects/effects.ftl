-create-3rd-person =
    { $chance ->
        [1] 建立
       *[other] 建立
    }
-cause-3rd-person =
    { $chance ->
        [1] Causes
       *[other] cause
    }
-satiate-3rd-person =
    { $chance ->
        [1] Satiates
       *[other] satiate
    }
entity-effect-guidebook-spawn-entity =
    { $chance ->
        [1] 建立
       *[other] 建立
    } { $amount ->
        [1] { INDEFINITE($entname) }
       *[other] { $amount } { MAKEPLURAL($entname) }
    }
entity-effect-guidebook-destroy =
    { $chance ->
        [1] 銷毀
       *[other] 銷毀
    } 該物件
entity-effect-guidebook-break =
    { $chance ->
        [1] Breaks
       *[other] break
    } the object
entity-effect-guidebook-explosion =
    { $chance ->
        [1] Causes
       *[other] cause
    } an explosion
entity-effect-guidebook-emp =
    { $chance ->
        [1] Causes
       *[other] cause
    } an electromagnetic pulse
entity-effect-guidebook-flash =
    { $chance ->
        [1] Causes
       *[other] cause
    } a blinding flash
entity-effect-guidebook-foam-area =
    { $chance ->
        [1] 產生
       *[other] 產生
    } 大量泡沫
entity-effect-guidebook-smoke-area =
    { $chance ->
        [1] 產生大量煙霧
       *[other] 產生大量煙霧
    }
entity-effect-guidebook-satiate =
    { $chance ->
        [1] Satiates
       *[other] satiate
    } { $relative ->
        [1] { $type } averagely
       *[other] { $type } at { NATURALFIXED($relative, 3) }x the average rate
    }
entity-effect-guidebook-health-change =
    { $chance ->
        [1]
            { $healsordeals ->
                [heals] Heals
                [deals] Deals
               *[both] Modifies health by
            }
       *[other]
            { $healsordeals ->
                [heals] heal
                [deals] deal
               *[both] modify health by
            }
    } { $changes }
entity-effect-guidebook-even-health-change =
    { $chance ->
        [1]
            { $healsordeals ->
                [heals] 均勻地恢復生命值
                [deals] 均勻地造成傷害
               *[both] 均勻地調整生命值
            }
       *[other]
            { $healsordeals ->
                [heals] 均勻治療
                [deals] 均勻造成傷害
               *[both] 均勻調整生命值
            }
    } { $changes }
entity-effect-guidebook-status-effect-old =
    { $type ->
        [update]
            { $chance ->
                [1] Causes
               *[other] cause
            } { LOC($key) } for at least { NATURALFIXED($time, 3) } { MANY("second", $time) } without accumulation
        [add]
            { $chance ->
                [1] Causes
               *[other] cause
            } { LOC($key) } for at least { NATURALFIXED($time, 3) } { MANY("second", $time) } with accumulation
        [set]
            { $chance ->
                [1] Causes
               *[other] cause
            } { LOC($key) } for { NATURALFIXED($time, 3) } { MANY("second", $time) } without accumulation
       *[remove]
            { $chance ->
                [1] Removes
               *[other] remove
            } { NATURALFIXED($time, 3) } { MANY("second", $time) } of { LOC($key) }
    }
entity-effect-guidebook-status-effect =
    { $type ->
        [update]
            { $chance ->
                [1] Causes
               *[other] cause
            } { $key } for at least { NATURALFIXED($time, 3) } { MANY("second", $time) } without accumulation
        [add]
            { $chance ->
                [1] Causes
               *[other] cause
            } { $key } for at least { NATURALFIXED($time, 3) } { MANY("second", $time) } with accumulation
        [set]
            { $chance ->
                [1] Causes
               *[other] cause
            } { $key } for at least { NATURALFIXED($time, 3) } { MANY("second", $time) } without accumulation
       *[remove]
            { $chance ->
                [1] Removes
               *[other] remove
            } { NATURALFIXED($time, 3) } { MANY("second", $time) } of { $key }
    } { $delay ->
        [0] immediately
       *[other] after a { NATURALFIXED($delay, 3) } second delay
    }
entity-effect-guidebook-status-effect-indef =
    { $type ->
        [update]
            { $chance ->
                [1] Causes
               *[other] cause
            } permanent { $key }
        [add]
            { $chance ->
                [1] Causes
               *[other] cause
            } permanent { $key }
        [set]
            { $chance ->
                [1] Causes
               *[other] cause
            } permanent { $key }
       *[remove]
            { $chance ->
                [1] Removes
               *[other] remove
            } { $key }
    } { $delay ->
        [0] immediately
       *[other] after a { NATURALFIXED($delay, 3) } second delay
    }
entity-effect-guidebook-knockdown =
    { $type ->
        [update]
            { $chance ->
                [1] Causes
               *[other] cause
            } { LOC($key) } for at least { NATURALFIXED($time, 3) } { MANY("second", $time) } without accumulation
        [add]
            { $chance ->
                [1] Causes
               *[other] cause
            } knockdown for at least { NATURALFIXED($time, 3) } { MANY("second", $time) } with accumulation
       *[set]
            { $chance ->
                [1] Causes
               *[other] cause
            } knockdown for at least { NATURALFIXED($time, 3) } { MANY("second", $time) } without accumulation
        [remove]
            { $chance ->
                [1] Removes
               *[other] remove
            } { NATURALFIXED($time, 3) } { MANY("second", $time) } of knockdown
    }
entity-effect-guidebook-set-solution-temperature-effect =
    { $chance ->
        [1] 將
       *[other] 設定為
    } 解的溫度精確設定為 { NATURALFIXED($temperature, 2) }k
entity-effect-guidebook-adjust-solution-temperature-effect =
    { $chance ->
        [1]
            { $deltasign ->
                [1] 新增
               *[-1] 移除
            }
       *[other]
            { $deltasign ->
                [1] 新增
               *[-1] 移除
            }
    } 從溶液中移除熱量，直到其達到 { $deltasign ->
        [1] 至多 { NATURALFIXED($maxtemp, 2) }k
       *[-1] 至少 { NATURALFIXED($mintemp, 2) }k    *
    }
entity-effect-guidebook-adjust-reagent-reagent =
    { $chance ->
        [1]
            { $deltasign ->
                [1] Adds
               *[-1] Removes
            }
       *[other]
            { $deltasign ->
                [1] add
               *[-1] remove
            }
    } { NATURALFIXED($amount, 2) }u of { $reagent } { $deltasign ->
        [1] to
       *[-1] from
    } the solution
entity-effect-guidebook-adjust-reagent-group =
    { $chance ->
        [1]
            { $deltasign ->
                [1] Adds
               *[-1] Removes
            }
       *[other]
            { $deltasign ->
                [1] add
               *[-1] remove
            }
    } { NATURALFIXED($amount, 2) }u of reagents in the group { $group } { $deltasign ->
        [1] to
       *[-1] from
    } the solution
entity-effect-guidebook-adjust-temperature =
    { $chance ->
        [1]
            { $deltasign ->
                [1] Adds
               *[-1] Removes
            }
       *[other]
            { $deltasign ->
                [1] add
               *[-1] remove
            }
    } { POWERJOULES($amount) } of heat { $deltasign ->
        [1] to
       *[-1] from
    } the body it's in
entity-effect-guidebook-chem-cause-disease =
    { $chance ->
        [1] Causes
       *[other] cause
    } the disease { $disease }
entity-effect-guidebook-chem-cause-random-disease =
    { $chance ->
        [1] Causes
       *[other] cause
    } the diseases { $diseases }
entity-effect-guidebook-jittering =
    { $chance ->
        [1] Causes
       *[other] cause
    } jittering
entity-effect-guidebook-clean-bloodstream =
    { $chance ->
        [1] 清除
       *[other] 清除
    } 血液中的其他化學物質
entity-effect-guidebook-cure-disease =
    { $chance ->
        [1] Cures
       *[other] cure
    } diseases
entity-effect-guidebook-eye-damage =
    { $chance ->
        [1]
            { $deltasign ->
                [1] 造成傷害
               *[-1] 治療
            }
       *[other]
            { $deltasign ->
                [1] 造成傷害
               *[-1] 治療
            }
    } 眼部傷害
entity-effect-guidebook-vomit =
    { $chance ->
        [1] Causes
       *[other] cause
    } vomiting
entity-effect-guidebook-create-gas =
    { $chance ->
        [1] 建立
       *[other] 建立
    } { $moles } { $moles ->
        [1] 鼴鼠
       *[other] 鼴鼠
    } 來自 { $gas }
entity-effect-guidebook-drunk =
    { $chance ->
        [1] Causes
       *[other] cause
    } drunkness
entity-effect-guidebook-electrocute =
    { $chance ->
        [1]
            { $stuns ->
                [true] 電擊
               *[false] 震動
            }
       *[other]
            { $stuns ->
                [true] 電擊
               *[false] 電流衝擊
            }
    } { NATURALFIXED($time, 3) } { MANY("second", $time) } 的代謝器
entity-effect-guidebook-emote =
    { $chance ->
        [1] 將強制
       *[other] 強制
    } 使代謝器執行 [bold][color=white]{ $emote }[/color][/bold]
entity-effect-guidebook-extinguish-reaction =
    { $chance ->
        [1] Extinguishes
       *[other] extinguish
    } fire
entity-effect-guidebook-flammable-reaction =
    { $chance ->
        [1] Increases
       *[other] increase
    } flammability
entity-effect-guidebook-ignite =
    { $chance ->
        [1] Ignites
       *[other] ignite
    } the metabolizer
entity-effect-guidebook-make-sentient =
    { $chance ->
        [1] 使
       *[other] 使
    } 使代謝者具備感知能力
entity-effect-guidebook-make-polymorph =
    { $chance ->
        [1] 多態性
       *[other] 多態性
    } 將代謝產物轉化為 { $entityname }
entity-effect-guidebook-modify-bleed-amount =
    { $chance ->
        [1]
            { $deltasign ->
                [1] 誘導
               *[-1] 減少
            }
       *[other]
            { $deltasign ->
                [1] 誘導
               *[-1] 減少
            }
    } 出血
entity-effect-guidebook-modify-blood-level =
    { $chance ->
        [1]
            { $deltasign ->
                [1] Increases
               *[-1] Decreases
            }
       *[other]
            { $deltasign ->
                [1] increases
               *[-1] decreases
            }
    } blood level
entity-effect-guidebook-paralyze =
    { $chance ->
        [1] Paralyzes
       *[other] paralyze
    } the metabolizer for at least { NATURALFIXED($time, 3) } { MANY("second", $time) }
entity-effect-guidebook-movespeed-modifier =
    { $chance ->
        [1] 將
       *[other] 將
    } 的移動速度調整為 { NATURALFIXED($sprintspeed, 3) } 倍，持續時間至少為 { NATURALFIXED($time, 3) } { MANY("second", $time) }
entity-effect-guidebook-reset-narcolepsy =
    { $chance ->
        [1] Temporarily staves
       *[other] temporarily stave
    } off narcolepsy
entity-effect-guidebook-wash-cream-pie-reaction =
    { $chance ->
        [1] Washes
       *[other] wash
    } off cream pie from one's face
entity-effect-guidebook-cure-zombie-infection =
    { $chance ->
        [1] Cures
       *[other] cure
    } an ongoing zombie infection
entity-effect-guidebook-cause-zombie-infection =
    { $chance ->
        [1] Gives
       *[other] give
    } an individual the zombie infection
entity-effect-guidebook-innoculate-zombie-infection =
    { $chance ->
        [1] 治療
       *[other] 治療
    } 正在進行中的殭屍感染，並提供對未來感染的免疫力
entity-effect-guidebook-reduce-rotting =
    { $chance ->
        [1] 再生
       *[other] 再生
    } { NATURALFIXED($time, 3) } { MANY("second", $time) } 腐爛的
entity-effect-guidebook-area-reaction =
    { $chance ->
        [1] Causes
       *[other] cause
    } a smoke or foam reaction for { NATURALFIXED($duration, 3) } { MANY("second", $duration) }
entity-effect-guidebook-add-to-solution-reaction =
    { $chance ->
        [1] Causes
       *[other] cause
    } { $reagent } to be added to its internal solution container
entity-effect-guidebook-artifact-unlock =
    { $chance ->
        [1] Helps
       *[other] help
    } unlock an alien artifact.
entity-effect-guidebook-artifact-durability-restore = 恢復活躍外星遺物節點中的 { $restored } 耐久度。
entity-effect-guidebook-plant-attribute =
    { $chance ->
        [1] 調整
       *[other] 調整
    } { $attribute } 由 { $positive ->
        [false] [color=red]{ $amount }[/color]
       *[true] [color=green]{ $amount }[/color]
    }
entity-effect-guidebook-plant-cryoxadone =
    { $chance ->
        [1] Ages back
       *[other] age back
    } the plant, depending on the plant's age and time to grow
entity-effect-guidebook-plant-phalanximine =
    { $chance ->
        [1] Restores
       *[other] restore
    } viability to a plant rendered nonviable by a mutation
entity-effect-guidebook-plant-diethylamine =
    { $chance ->
        [1] 增加
       *[other] 增加
    } 植物的壽命和／或基礎生命值，每次有 10% 的機率生效
entity-effect-guidebook-plant-robust-harvest =
    { $chance ->
        [1] Increases
       *[other] increase
    } the plant's potency by { $increase } up to a maximum of { $limit }. Causes the plant to lose its seeds once the potency reaches { $seedlesstreshold }. Trying to add potency over { $limit } may cause decrease in yield at a 10% chance
entity-effect-guidebook-plant-seeds-add =
    { $chance ->
        [1] 還原植物的
       *[other] 還原植物的
    } 種子
entity-effect-guidebook-plant-seeds-remove =
    { $chance ->
        [1] Removes the
       *[other] remove the
    } seeds of the plant
entity-effect-guidebook-plant-mutate-exude-gasses =
    { $chance ->
        [1] Mutates
       *[other] mutate
    } the plant to exude gases between { $minValue } and { $maxValue } moles
entity-effect-guidebook-plant-mutate-consume-gasses =
    { $chance ->
        [1] Mutates
       *[other] mutate
    } the plant to consume gases between { $minValue } and { $maxValue } moles
entity-effect-guidebook-plant-mutate-chemicals =
    { $chance ->
        [1] 使
       *[other] 使
    } 一株植物產生 { $name }
entity-effect-guidebook-add-reagent-to-bloodstream =
    { $chance ->
        [1] 將
       *[other] 注入
    } { $quantity } 直接注入 { $reagent } 的血液中
entity-effect-disarm =
    { $chance ->
        [1] 解除武裝
       *[other] 解除武裝
    } 該實體
