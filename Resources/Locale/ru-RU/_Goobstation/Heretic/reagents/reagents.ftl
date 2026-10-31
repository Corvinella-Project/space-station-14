reagent-name-eldritch = жуткая эссенция
reagent-desc-eldritch = Странная жидкость, нарушающая законы физики. Заряжает энергией и исцеляет тех, кто способен заглянуть за пределы хрупкой реальности, но невероятно опасна для неверных.

reagent-name-crucible-soul = душа тигля
reagent-desc-crucible-soul = Ярко-оранжевая полупрозрачная жидкость. Позволяет проходить сквозь стены. По истечении действия вы телепортируетесь обратно на исходное место.

reagent-name-clarity = сумерки и рассвет
reagent-desc-clarity = Тускло-жёлтая жидкость. Кажется, она регулярно мерцает, то появляясь, то исчезая. Позволяет видеть сквозь стены и предметы.

reagent-name-marshal = раненый солдат
reagent-desc-marshal = Бесцветная тёмная жидкость. Повышает вашу физическую силу: атаки становятся яростнее, а получаемый урон меньше — тем сильнее, чем больше повреждений вы уже получили. Ваши атаки ближнего боя восстанавливают здоровье и выносливость, но вы получаете урон с течением времени; чем больше у вас здоровья, тем больше периодического урона вы получаете.

reagent-name-ether = эфир новорождённого
reagent-desc-ether = Вызывающая тошноту густая зелёная жидкость. Полностью восстанавливает ваше тело, после чего погружает вас в усиленный сон на целую минуту.

reagent-name-eldritch-rust = потусторонняя ржавчина
reagent-desc-eldritch-rust = Густая, комковатая бурая жижа.

entity-condition-guidebook-heretic-or-ghoul = цель — еретик или гуль
entity-condition-guidebook-not-heretic-or-ghoul = цель — не еретик и не гуль

entity-condition-guidebook-environment-temperature = 
    Температура окружающей среды
    { $invert ->
    [true] не ниже
    *[false] не выше
    } {$threshold} градусов

entity-condition-guidebook-has-body-part = цель
    { $invert ->
    [true] не имеет
    *[false] имеет
    } {$part}

entity-condition-guidebook-on-fire = цель
    { $invert ->
    [true] не горит
    *[false] горит
    }

reagent-effect-guidebook-has-status-effect =
    { $invert ->
    [true] не имеет
    *[false] имеет
    } статусный эффект {$effect}

entity-condition-guidebook-nullrod-protected = цель защищена нуль-жезлом
entity-condition-guidebook-nullrod-not-protected = цель не защищена нуль-жезлом

reagent-effect-guidebook-deconvert-ghoul = снимает превращение существа в гуля

reagent-physical-desc-eldritch = жуткая
reagent-physical-desc-crucible-soul = потустороннее
reagent-physical-desc-clarity = прозрачное
reagent-physical-desc-marshal = мучительное
reagent-physical-desc-ether = онемевающее
reagent-physical-desc-rusty = ржавое

flavor-complex-eldritch = Вл'к'с'ла
flavor-complex-crucible-soul = как нечто среднее между равнинами
flavor-complex-clarity = как глаза
flavor-complex-marshal = болезненно
flavor-complex-ether = освежающе
flavor-complex-rust = как гнилая медь

crucible-soul-effect-examine-message =
    {"["}color=#fb793a]{ CAPITALIZE(SUBJECT($ent)) } { GENDER($ent) ->
    [epicene] словно
    *[other] будто
    } не полностью здесь.[/color]

wounded-solider-effect-examine-message = [color=#5e718e]{ CAPITALIZE(SUBJECT($ent)) } { CONJUGATE-BE($ent) } в состоянии неугасающего безумия.[/color]
