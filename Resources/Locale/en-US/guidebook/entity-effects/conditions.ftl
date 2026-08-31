entity-condition-guidebook-total-damage =
    { $max ->
        [2147483648] it has at least { NATURALFIXED($min, 2) } total damage
       *[other]
            { $min ->
                [0] it has at most { NATURALFIXED($max, 2) } total damage
               *[other] it has between { NATURALFIXED($min, 2) } and { NATURALFIXED($max, 2) } total damage
            }
    }
entity-condition-guidebook-type-damage =
    { $max ->
        [2147483648] it has at least { NATURALFIXED($min, 2) } of { $type } damage
       *[other]
            { $min ->
                [0] it has at most { NATURALFIXED($max, 2) } of { $type } damage
               *[other] it has between { NATURALFIXED($min, 2) } and { NATURALFIXED($max, 2) } of { $type } damage
            }
    }
entity-condition-guidebook-group-damage =
    { $max ->
        [2147483648] it has at least { NATURALFIXED($min, 2) } of { $type } damage.
       *[other]
            { $min ->
                [0] it has at most { NATURALFIXED($max, 2) } of { $type } damage.
               *[other] it has between { NATURALFIXED($min, 2) } and { NATURALFIXED($max, 2) } of { $type } damage
            }
    }
entity-condition-guidebook-total-satiation =
    { $max ->
        [2147483648] the target has at least { NATURALFIXED($min, 2) } total { $type }
       *[other]
            { $min ->
                [0] the target has at most { NATURALFIXED($max, 2) } total { $type }
               *[other] the target has between { NATURALFIXED($min, 2) } and { NATURALFIXED($max, 2) } total { $type }
            }
    }
entity-condition-guidebook-reagent-threshold =
    { $max ->
        [2147483648] there's at least { NATURALFIXED($min, 2) }u of { $reagent }
       *[other]
            { $min ->
                [0] there's at most { NATURALFIXED($max, 2) }u of { $reagent }
               *[other] there's between { NATURALFIXED($min, 2) }u and { NATURALFIXED($max, 2) }u of { $reagent }
            }
    }
entity-condition-guidebook-mob-state-condition = 該群體是 { $state }
entity-condition-guidebook-job-condition = 目標的工作是 { $job }
entity-condition-guidebook-solution-temperature =
    the solution's temperature is { $max ->
        [2147483648] at least { NATURALFIXED($min, 2) }k
       *[other]
            { $min ->
                [0] at most { NATURALFIXED($max, 2) }k
               *[other] between { NATURALFIXED($min, 2) }k and { NATURALFIXED($max, 2) }k
            }
    }
entity-condition-guidebook-body-temperature =
    the body's temperature is { $max ->
        [2147483648] at least { NATURALFIXED($min, 2) }k
       *[other]
            { $min ->
                [0] at most { NATURALFIXED($max, 2) }k
               *[other] between { NATURALFIXED($min, 2) }k and { NATURALFIXED($max, 2) }k
            }
    }
entity-condition-guidebook-organ-type =
    代謝器官 { $shouldhave ->
        [true] 是
       *[false] 不是
    } { INDEFINITE($name) } { $name } 器官
entity-condition-guidebook-has-tag =
    目標 { $invert ->
        [true] 沒有
       *[false] 有
    } 標籤 { $tag }
entity-condition-guidebook-this-reagent = 此試劑
entity-condition-guidebook-breathing =
    代謝器的定義如下：{ $isBreathing ->
        [true] 正常呼吸
       *[false] 窒息
    }
entity-condition-guidebook-internals =
    代謝器的定義如下： { $usingInternals ->
        [true] 使用內部機制
       *[false] 呼吸大氣中的空氣
    }
