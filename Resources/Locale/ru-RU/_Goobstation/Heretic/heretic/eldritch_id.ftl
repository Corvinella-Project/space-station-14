eldritch-id-card-component-examine-inverted = Текущий эффект: [color=yellow]инвертирован[/color]

eldritch-id-card-component-examine-message =
    Мансус зачаровал этот предмет!
    Использование ID на этом предмете или этого ID на другом ID уничтожит его и позволит скопировать уровни доступа.
    Использование в руке позволяет изменить его внешний вид.
    Использование на паре дверей позволяет связать их. Вход в одну дверь перенесёт вас в другую, а неверные вместо этого телепортируются к случайному шлюзу.
    Щелчок с зажатым Alt по ID заставляет его создавать инвертированные порталы, которые переносят вас к случайному шлюзу на станции, а неверных — к месту назначения.

eldritch-id-card-component-on-invert =
    { $inverted ->
    [true] теперь
    *[false] больше не
    } создаёт инвертированные разломы

eldritch-id-card-component-portal-inverted =
    портал { $inverted ->
    [true] инвертирован
    *[false] больше не инвертирован
    }

eldritch-id-card-component-invert = Инвертировать
eldritch-id-card-component-invert-message = Заставьте ID создавать инвертированные порталы, которые переносят вас к случайному шлюзу на станции, а неверных — к месту назначения, или наоборот.

eldritch-id-card-component-link-one = связь 1/2
eldritch-id-card-component-link-two = связь 2/2

lock-portal-component-clear-portals = Очистить обе связи

lock-portal-component-examine-inverted = [color=yellow]инвертирован[/color]
lock-portal-component-examine-not-inverted = [color=yellow]не инвертирован[/color]

lock-portal-component-examine-message =
    Портал {$status}.
    Щёлкните по нему жутким ID, чтобы инвертировать его.
    Щёлкните с зажатым Alt жутким ID, чтобы удалить обе связи.
