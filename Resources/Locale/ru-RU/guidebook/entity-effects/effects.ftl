-create-3rd-person =
    { $chance ->
    [1] Создаёт
    *[other] создают
    }

-cause-3rd-person =
    { $chance ->
    [1] Вызывает
    *[other] вызывают
    }

-satiate-3rd-person =
    { $chance ->
    [1] Насыщает
    *[other] насыщают
    }

entity-effect-guidebook-spawn-entity =
    { $chance ->
    [1] Создаёт
    *[other] создать
    } { $amount ->
    [1] {INDEFINITE($entname)}
    *[other] {$amount} {MAKEPLURAL($entname)}
    }

entity-effect-guidebook-destroy =
    { $chance ->
    [1] Уничтожает
    *[other] уничтожить
    } объект

entity-effect-guidebook-break =
    { $chance ->
    [1] Ломает
    *[other] сломать
    } объект

entity-effect-guidebook-explosion =
    { $chance ->
    [1] Вызывает
    *[other] вызвать
    } взрыв

entity-effect-guidebook-emp =
    { $chance ->
    [1] Вызывает
    *[other] вызвать
    } электромагнитный импульс

entity-effect-guidebook-flash =
    { $chance ->
    [1] Вызывает
    *[other] вызвать
    } ослепляющую вспышку

entity-effect-guidebook-foam-area =
    { $chance ->
    [1] Создаёт
    *[other] создать
    } большое количество пены

entity-effect-guidebook-smoke-area =
    { $chance ->
    [1] Создаёт
    *[other] создать
    } большое количество дыма

entity-effect-guidebook-satiate =
    { $chance ->
    [1] Насыщает
    *[other] насытить
    } { $relative ->
    [1] {$type} со средней скоростью
    *[other] {$type} со скоростью в {NATURALFIXED($relative, 3)} раза выше средней
    }

entity-effect-guidebook-health-change =
    { $chance ->
    [1] { $healsordeals ->
    [heals] Лечит
    [deals] Наносит
    *[both] Изменяет здоровье на
    }
    *[other] { $healsordeals ->
    [heals] лечить
    [deals] наносить
    *[both] изменять здоровье на
    }
    } { $changes }

entity-effect-guidebook-even-health-change =
    { $chance ->
    [1] { $healsordeals ->
    [heals] Равномерно лечит
    [deals] Равномерно наносит
    *[both] Равномерно изменяет здоровье на
    }
    *[other] { $healsordeals ->
    [heals] равномерно лечить
    [deals] равномерно наносить
    *[both] равномерно изменять здоровье на
    }
    } { $changes }

# Trauma - removed LOC() from all of these, its already localized
entity-effect-guidebook-status-effect-old =
    { $type ->
    [update]{ $chance ->
    [1] Вызывает
    *[other] вызвать
    } {$key} как минимум на {NATURALFIXED($time, 3)} {MANY("second", $time)} без накопления
    [add]   { $chance ->
    [1] Вызывает
    *[other] вызвать
    } {$key} как минимум на {NATURALFIXED($time, 3)} {MANY("second", $time)} с накоплением
    [set]  { $chance ->
    [1] Вызывает
    *[other] вызвать
    } {$key} на {NATURALFIXED($time, 3)} {MANY("second", $time)} без накопления
    *[remove]{ $chance ->
    [1] Снимает
    *[other] снять
    } {$key} на {NATURALFIXED($time, 3)} {MANY("second", $time)}
    }

# Trauma - removed LOC() from all of these, its already localized
entity-effect-guidebook-status-effect =
    { $type ->
    [update]{ $chance ->
    [1] Вызывает
    *[other] вызвать
    } {$key} как минимум на {NATURALFIXED($time, 3)} {MANY("second", $time)} без накопления
    [add]   { $chance ->
    [1] Вызывает
    *[other] вызвать
    } {$key} как минимум на {NATURALFIXED($time, 3)} {MANY("second", $time)} с накоплением
    [set]  { $chance ->
    [1] Вызывает
    *[other] вызвать
    } {$key} как минимум на {NATURALFIXED($time, 3)} {MANY("second", $time)} без накопления
    *[remove]{ $chance ->
    [1] Снимает
    *[other] снять
    } {$key} на {NATURALFIXED($time, 3)} {MANY("second", $time)}
    } { $delay ->
    [0] немедленно
    *[other] после задержки в {NATURALFIXED($delay, 3)} сек.
    }

# Trauma - removed LOC() from all of these, its already localized
entity-effect-guidebook-status-effect-indef =
    { $type ->
    [update]{ $chance ->
    [1] Вызывает
    *[other] вызвать
    } {$key} навсегда
    [add]   { $chance ->
    [1] Вызывает
    *[other] вызвать
    } {$key} навсегда
    [set]  { $chance ->
    [1] Вызывает
    *[other] вызвать
    } {$key} навсегда
    *[remove]{ $chance ->
    [1] Снимает
    *[other] снять
    } {$key}
    } { $delay ->
    [0] немедленно
    *[other] после задержки в {NATURALFIXED($delay, 3)} сек.
    }

# Trauma - LOC($key) -> knockdown, copy paste major
entity-effect-guidebook-knockdown =
    { $type ->
    [update]{ $chance ->
    [1] Вызывает
    *[other] вызвать
    } сбивание с ног как минимум на {NATURALFIXED($time, 3)} {MANY("second", $time)} без накопления
    [add]   { $chance ->
    [1] Вызывает
    *[other] вызвать
    } сбивание с ног как минимум на {NATURALFIXED($time, 3)} {MANY("second", $time)} с накоплением
    *[set]  { $chance ->
    [1] Вызывает
    *[other] вызвать
    } сбивание с ног как минимум на {NATURALFIXED($time, 3)} {MANY("second", $time)} без накопления
    [remove]{ $chance ->
    [1] Снимает
    *[other] снять
    } сбивание с ног на {NATURALFIXED($time, 3)} {MANY("second", $time)}
    }

entity-effect-guidebook-set-solution-temperature-effect =
    { $chance ->
    [1] Устанавливает
    *[other] установить
    } температуру раствора ровно на {NATURALFIXED($temperature, 2)}k

entity-effect-guidebook-adjust-solution-temperature-effect =
    { $chance ->
    [1] { $deltasign ->
    [1] Добавляет
    *[-1] Убирает
    }
    *[other]
    { $deltasign ->
    [1] добавить
    *[-1] убрать
    }
    } тепло { $deltasign ->
    [1] в раствор
    *[-1] из раствора
    }, пока его температура не достигнет { $deltasign ->
    [1] максимум {NATURALFIXED($maxtemp, 2)}k
    *[-1] как минимум {NATURALFIXED($mintemp, 2)}k
    }

entity-effect-guidebook-adjust-reagent-reagent =
    { $chance ->
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

entity-effect-guidebook-adjust-reagent-group =
    { $chance ->
    [1] { $deltasign ->
    [1] Добавляет
    *[-1] Убирает
    }
    *[other]
    { $deltasign ->
    [1] добавить
    *[-1] убрать
    }
    } {NATURALFIXED($amount, 2)} ед. реагентов группы {$group} { $deltasign ->
    [1] в раствор
    *[-1] из раствора
    }

entity-effect-guidebook-adjust-temperature =
    { $chance ->
    [1] { $deltasign ->
    [1] Добавляет
    *[-1] Убирает
    }
    *[other]
    { $deltasign ->
    [1] добавить
    *[-1] убрать
    }
    } {POWERJOULES($amount)} тепла { $deltasign ->
    [1] в тело, в котором он находится
    *[-1] из тела, в котором он находится
    }

entity-effect-guidebook-chem-cause-disease =
    { $chance ->
    [1] Вызывает
    *[other] вызвать
    } заболевание { $disease }

entity-effect-guidebook-chem-cause-random-disease =
    { $chance ->
    [1] Вызывает
    *[other] вызвать
    } заболевания { $diseases }

entity-effect-guidebook-jittering =
    { $chance ->
    [1] Вызывает
    *[other] вызвать
    } дрожь

entity-effect-guidebook-clean-bloodstream =
    { $chance ->
    [1] Очищает
    *[other] очистить
    } кровоток от других химикатов

entity-effect-guidebook-cure-disease =
    { $chance ->
    [1] Лечит
    *[other] лечить
    } заболевания

entity-effect-guidebook-eye-damage =
    { $chance ->
    [1] { $deltasign ->
    [1] Наносит
    *[-1] Лечит
    }
    *[other]
    { $deltasign ->
    [1] наносить
    *[-1] лечить
    }
    } повреждение глаз

entity-effect-guidebook-vomit =
    { $chance ->
    [1] Вызывает
    *[other] вызвать
    } рвоту

entity-effect-guidebook-create-gas =
    { $chance ->
    [1] Создаёт
    *[other] создать
    } { $moles } { $moles ->
    [1] моль
    *[other] моль
    } { $gas }

entity-effect-guidebook-drunk =
    { $chance ->
    [1] Вызывает
    *[other] вызвать
    } опьянение

entity-effect-guidebook-electrocute =
    { $chance ->
    [1] { $stuns ->
    [true] Электрошокирует
    *[false] Бьёт током
    }
    *[other] { $stuns ->
    [true] электрошокировать
    *[false] бить током
    }
    } метаболизатора на {NATURALFIXED($time, 3)} {MANY("second", $time)}

entity-effect-guidebook-emote =
    { $chance ->
    [1] Заставит
    *[other] заставить
    } метаболизатора [bold][color=white]{$emote}[/color][/bold]

entity-effect-guidebook-extinguish-reaction =
    { $chance ->
    [1] Тушит
    *[other] тушить
    } огонь

# Trauma - $direction is set from the Flammable effect's multiplier sign, so negative Flammable reagents read "Decreases flammability"; defaults to increase
entity-effect-guidebook-flammable-reaction =
    { $chance ->
    [1] { $direction ->
    [decrease] Понижает
    *[increase] Повышает
    }
    *[other] { $direction ->
    [decrease] понижать
    *[increase] повышать
    }
    } горючесть

entity-effect-guidebook-ignite =
    { $chance ->
    [1] Поджигает
    *[other] поджечь
    } метаболизатора

entity-effect-guidebook-make-sentient =
    { $chance ->
    [1] Делает
    *[other] сделать
    } метаболизатора разумным

entity-effect-guidebook-make-polymorph =
    { $chance ->
    [1] Превращает
    *[other] превратить
    } метаболизатора в { $entityname }

entity-effect-guidebook-modify-bleed-amount =
    { $chance ->
    [1] { $deltasign ->
    [1] Вызывает
    *[-1] Снижает
    }
    *[other] { $deltasign ->
    [1] вызвать
    *[-1] снизить
    }
    } кровотечение

entity-effect-guidebook-modify-blood-level =
    { $chance ->
    [1] { $deltasign ->
    [1] Повышает
    *[-1] Понижает
    }
    *[other] { $deltasign ->
    [1] повышать
    *[-1] понижать
    }
    } уровень крови

entity-effect-guidebook-paralyze =
    { $chance ->
    [1] Парализует
    *[other] парализовать
    } метаболизатора как минимум на {NATURALFIXED($time, 3)} {MANY("second", $time)}

entity-effect-guidebook-movespeed-modifier =
    { $chance ->
    [1] Изменяет
    *[other] изменять
    } скорость передвижения в {NATURALFIXED($sprintspeed, 3)} раза как минимум на {NATURALFIXED($time, 3)} {MANY("second", $time)}

entity-effect-guidebook-reset-narcolepsy =
    { $chance ->
    [1] Временно подавляет
    *[other] временно подавить
    } нарколепсию

entity-effect-guidebook-wash-cream-pie-reaction =
    { $chance ->
    [1] Смывает
    *[other] смыть
    } кремовый пирог с лица

entity-effect-guidebook-cure-zombie-infection =
    { $chance ->
    [1] Лечит
    *[other] вылечить
    } текущую зомби-инфекцию

entity-effect-guidebook-cause-zombie-infection =
    { $chance ->
    [1] Даёт
    *[other] дать
    } существу зомби-инфекцию

entity-effect-guidebook-innoculate-zombie-infection =
    { $chance ->
    [1] Лечит и даёт
    *[other] вылечить и дать
    } текущую зомби-инфекцию и иммунитет к будущим заражениям

entity-effect-guidebook-reduce-rotting =
    { $chance ->
    [1] Регенерирует
    *[other] регенерировать
    } {NATURALFIXED($time, 3)} {MANY("second", $time)} гниения

entity-effect-guidebook-area-reaction =
    { $chance ->
    [1] Вызывает
    *[other] вызвать
    } реакцию дыма или пены на {NATURALFIXED($duration, 3)} {MANY("second", $duration)}

entity-effect-guidebook-add-to-solution-reaction =
    { $chance ->
    [1] Вызывает
    *[other] вызвать
    } добавление {$reagent} в его внутренний контейнер раствора

entity-effect-guidebook-artifact-unlock =
    { $chance ->
    [1] Помогает
    *[other] помочь
    } разблокировать инопланетный артефакт.

entity-effect-guidebook-artifact-durability-restore =
    Восстанавливает {$restored} прочности в активных узлах инопланетного артефакта.

entity-effect-guidebook-plant-attribute =
    { $chance ->
    [1] Изменяет
    *[other] изменять
    } {$attribute} на {$positive ->
    [false] [color=red]{$amount}[/color]
    *[true] [color=green]{$amount}[/color]
    }

entity-effect-guidebook-plant-cryoxadone =
    { $chance ->
    [1] Откатывает
    *[other] откатывать
    } возраст растения в зависимости от возраста растения и времени роста

entity-effect-guidebook-plant-phalanximine =
    { $chance ->
    [1] Восстанавливает
    *[other] восстановить
    } жизнеспособность растения, ставшего нежизнеспособным из-за мутации

entity-effect-guidebook-plant-diethylamine =
    { $chance ->
    [1] Увеличивает
    *[other] увеличивать
    } продолжительность жизни и/или базовое здоровье растения с шансом 10% для каждого

entity-effect-guidebook-plant-robust-harvest =
    { $chance ->
    [1] Увеличивает
    *[other] увеличивать
    } потенцию растения на {$increase} вплоть до максимума {$limit}. Заставляет растение потерять семена, когда потенция достигает {$seedlesstreshold}. Попытка добавить потенцию сверх {$limit} может снизить урожайность с шансом 10%

entity-effect-guidebook-plant-seeds-add =
    { $chance ->
    [1] Восстанавливает
    *[other] восстановить
    } семена растения

entity-effect-guidebook-plant-seeds-remove =
    { $chance ->
    [1] Удаляет
    *[other] удалить
    } семена растения

entity-effect-guidebook-plant-change-trait =
    { $chance ->
    [1] { $change ->
    [Add] Добавляет {$trait} растению
    [Remove] Убирает {$trait} у растения
    [Toggle] Переключает {$trait} у растения
    *[other] Изменяет {$trait} у растения
    }
    *[other] { $change ->
    [Add] добавить {$trait} растению
    [Remove] убрать {$trait} у растения
    [Toggle] переключить {$trait} у растения
    *[other] изменить {$trait} у растения
    }
    }

entity-effect-guidebook-plant-mutate-exude-gasses =
    { $chance ->
    [1] Мутирует
    *[other] мутировать
    } растение, заставляя его выделять от {$minValue} до {$maxValue} молей газов

entity-effect-guidebook-plant-mutate-consume-gasses =
    { $chance ->
    [1] Мутирует
    *[other] мутировать
    } растение, заставляя его поглощать от {$minValue} до {$maxValue} молей газов

entity-effect-guidebook-plant-mutate-chemicals =
    { $chance ->
    [1] Мутирует
    *[other] мутировать
    } растение, заставляя его производить {$name}
