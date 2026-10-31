entity-effect-guidebook-delete-entity = {$chance ->
    [1] удаляет
    *[other] удалить
    } цель
entity-effect-guidebook-force-equip-clothing = принудительно {$chance ->
    [1] надевает
    *[other] надеть
    } {A($name)} в слот {$slot} цели

entity-effect-guidebook-part-add-slot = {$chance ->
    [1] добавляет
    *[other] добавить
    } слот {$slot} в часть тела цели

entity-effect-guidebook-insert-new-organ = {$chance ->
    [1] вставляет
    *[other] вставить
    } {$organ} в часть тела цели

entity-effect-guidebook-add-to-chemicals = { $chance ->
    [1] { $deltasign ->
    [1] Добавляет
    *[-1] Убирает
    }
    *[other]
    { $deltasign ->
    [1] добавить
    *[-1] убрать
    }
    } {NATURALFIXED($amount, 2)} ед. {$reagent} { $deltasign ->
    [1] в раствор
    *[-1] из раствора
    }

entity-effect-guidebook-make-traitor = { $chance ->
    [1] делает
    *[other] сделать
    } из цели предателя

entity-effect-guidebook-infect-disease = { $chance ->
    [1] заражает
    *[other] заразить
    } цель болезнью {$disease}

entity-effect-guidebook-add-marking = { $chance ->
    [1] добавляет
    *[other] добавить
    } цели метку {$marking}
entity-effect-guidebook-remove-marking = { $chance ->
    [1] убирает
    *[other] убрать
    } у цели метку {$marking}

entity-effect-guidebook-speak = Вызывает непроизвольную речь

entity-effect-guidebook-scale-entity = Изменяет размер цели на ({$x}, {y})

entity-effect-guidebook-attack-self = {$chance ->
    [1] заставляет
    *[other] заставить
    } цель {$canUse ->
    [true] атаковать
    *[false] ударить
    } себя
entity-effect-guidebook-attack-others = {$chance ->
    [1] заставляет
    *[other] заставить
    } цель атаковать случайный объект поблизости

entity-effect-guidebook-start-use-delay = {$chance ->
    [1] запускает
    *[other] запустить
    } задержку использования {$id} на цели

entity-effect-guidebook-part-remove-slot = {$chance ->
    [1] убирает
    *[other] убрать
    } слот {$slot} из части тела цели

entity-effect-guidebook-remove-part = {$chance ->
    [1] отделяет
    *[other] отделить
    } часть тела от тела

entity-effect-guidebook-set-standing = {$chance ->
    [1] заставляет
    *[other] заставить
    } цель {$standing ->
    [true] встать
    *[other] быть сбитой с ног
    }

entity-effect-guidebook-relay-random-part = для случайной части: {$effect}

entity-effect-guidebook-nothing = ничего никогда не {$chance ->
    [1] происходит
    *[other] происходит
    }

entity-effect-guidebook-scramble-dna = {$chance ->
    [1] перемешивает
    *[other] перемешать
    } мутации цели

entity-effect-guidebook-move-organ = {$chance ->
    [1] перемещает
    *[other] переместить
    } {$organ} цели в {$dest}

entity-effect-guidebook-heal-bone-damage = { $chance ->
     [1] лечит
     *[other] лечить
     } {NATURALFIXED($amount, 2)} повреждений костей
