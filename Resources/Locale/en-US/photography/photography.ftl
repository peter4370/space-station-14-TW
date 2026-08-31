# TODO: Make this a fluent function in RT
photograph-name-text =
    這是一張 { PROPER($entity) ->
       *[false] { INDEFINITE($entity) } { $entity }
        [true] { $entity }
     } 的照片。
photograph-name-text-empty = 這是一張照片。
photograph-name-text-photograph = 這是一張以另一張照片為拍攝對象的照片。
