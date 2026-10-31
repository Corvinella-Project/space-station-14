delivery-recipient-examine = Адресовано: { $recipient }, { $job }.
delivery-already-opened-examine = Уже вскрыто.
delivery-earnings-examine = Доставка этого принесёт станции [color=yellow]{$spesos}[/color] spesos.
delivery-recipient-no-name = Безымянный
delivery-recipient-no-job = Неизвестно

delivery-unlocked-self = Вы разблокировали { $delivery } отпечатком пальца.
delivery-opened-self = Вы вскрываете { $delivery }.
delivery-unlocked-others = 
    { CAPITALIZE($recipient) } { GENDER($recipient) ->
    [male] разблокировал
    [female] разблокировала
    [epicene] разблокировали
    *[neuter] разблокировало
    } { $delivery } используя свой отпечаток пальца.
delivery-opened-others = 
    { CAPITALIZE($recipient) } { GENDER($recipient) ->
    [male] вскрыл
    [female] вскрыл
    [epicene] вскрыл
    *[neuter] вскрыл
    } { $delivery }.

delivery-unlock-verb = Разблокировать
delivery-open-verb = Вскрыть
delivery-slice-verb = Разрезать

delivery-teleporter-amount-examine =
    { $amount ->
    [one] Содержит [color=yellow]{$amount}[/color] доставку.
    [few] Содержит [color=yellow]{$amount}[/color] доставки.
    [many] Содержит [color=yellow]{$amount}[/color] доставок.
    *[other] Содержит [color=yellow]{$amount}[/color] доставок.
    }
delivery-teleporter-empty = В {$entity} пусто.
delivery-teleporter-empty-verb = Забрать почту


# modifiers
delivery-priority-examine = Это [color=orange]{$type} с приоритетом[/color]. У вас осталось [color=orange]{$time}[/color], чтобы доставить в срок и получить бонус.
delivery-priority-delivered-examine = Это [color=orange]{$type} с приоритетом[/color]. Доставлено вовремя.
delivery-priority-expired-examine = Это [color=orange]{$type} с приоритетом[/color]. Время вышло.

delivery-fragile-examine = Это [color=red]{$type} с пометкой «хрупкое»[/color]. Доставьте без повреждений, чтобы получить бонус.
delivery-fragile-broken-examine = Это [color=red]{$type} с пометкой «хрупкое»[/color]. Выглядит сильно повреждённым.

delivery-bomb-examine = Это [color=purple]{$type} с бомбой[/color]. О нет.
delivery-bomb-primed-examine = Это [color=purple]{$type} с бомбой[/color]. Читать это — плохая трата времени.
