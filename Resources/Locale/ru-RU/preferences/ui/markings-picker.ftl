markings-search = Поиск
-markings-selection = { $selectable ->
    [0] У вас не осталось свободных черт внешности.
    [one] Вы можете выбрать ещё одну черту внешности.
    *[other] Вы можете выбрать ещё { $selectable } черт внешности.
    }
markings-limits = { $required ->
    [true] { $count ->
    [-1] Выберите хотя бы одну черту внешности.
    [0] Вы не можете выбрать ни одной черты, но почему-то должны? Это ошибка.
    [one] Выберите одну черту внешности.
    *[other] Выберите от одной до {$count} черт внешности. { -markings-selection(selectable: $selectable) }
    }
    *[false] { $count ->
    [-1] Выберите любое количество черт внешности.
    [0] Вы не можете выбрать ни одной черты внешности.
    [one] Выберите не более одной черты внешности.
    *[other] Выберите не более {$count} черт внешности. { -markings-selection(selectable: $selectable) }
    }
    }
markings-reorder = Изменить порядок черт

humanoid-marking-modifier-respect-limits = Соблюдать ограничения
humanoid-marking-modifier-respect-group-sex = Соблюдать ограничения группы и пола
humanoid-marking-modifier-base-layers = Базовые слои
humanoid-marking-modifier-enable = Включить
humanoid-marking-modifier-prototype-id = ID прототипа:

# Categories

markings-organ-Torso = Торс
markings-organ-Head = Голова
markings-organ-ArmLeft = Левая рука
markings-organ-ArmRight = Правая рука
markings-organ-HandRight = Правая кисть
markings-organ-HandLeft = Левая кисть
markings-organ-LegLeft = Левая нога
markings-organ-LegRight = Правая нога
markings-organ-FootLeft = Левая стопа
markings-organ-FootRight = Правая стопа
markings-organ-Eyes = Глаза

markings-layer-Special = Особые
markings-layer-Tail = Хвост
markings-layer-Tail-Moth = Крылья
markings-layer-Hair = Волосы
markings-layer-FacialHair = Растительность на лице
markings-layer-UndergarmentTop = Майка
markings-layer-UndergarmentBottom = Трусы
markings-layer-Chest = Грудь
markings-layer-Head = Голова
markings-layer-Snout = Морда
markings-layer-SnoutCover = Морда (покрытие)
markings-layer-HeadSide = Голова (сбоку)
markings-layer-HeadTop = Голова (сверху)
markings-layer-Eyes = Глаза
markings-layer-RArm = Правая рука
markings-layer-LArm = Левая рука
markings-layer-RHand = Правая кисть
markings-layer-LHand = Левая кисть
markings-layer-RLeg = Правая нога
markings-layer-LLeg = Левая нога
markings-layer-RFoot = Правая стопа
markings-layer-LFoot = Левая стопа
markings-layer-Overlay = Наложение
markings-layer-TailOverlay = Наложение
