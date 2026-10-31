## Survivor

roles-antag-survivor-name = Выживший
# It's a Halo reference
roles-antag-survivor-objective = Текущая задача: Выжить

survivor-role-greeting =
    Вы - выживший.
    Ваша главная задача остаться в живых и вернуться на ЦК.
    Накопите столько огневой мощи, сколько необходимо для гарантии вашего выживания.
    Никому не доверяйте.

survivor-round-end-dead-count =
    { $deadCount ->
    [one] [color=red]{ $deadCount }[/color] выживший умер.
    *[other] [color=red]{ $deadCount }[/color] выживших умерло.
    }

survivor-round-end-alive-count =
    { $aliveCount ->
    [one] [color=yellow]{ $aliveCount }[/color] выживший остался на станции.
    *[other] [color=yellow]{ $aliveCount }[/color] выживших осталось на станции.
    }

survivor-round-end-alive-on-shuttle-count =
    { $aliveCount ->
    [one] [color=green]{ $aliveCount }[/color] выживший выбрался живым.
    *[other] [color=green]{ $aliveCount }[/color] выживших выбралось живыми.
    }

## Wizard

objective-issuer-swf = [color=turquoise]Федерация космических волшебников[/color]

wizard-title = Маг
wizard-description = Могущественный космический маг посетил станцию. Узрите хаос!

roles-antag-wizard-name = Маг
roles-antag-wizard-objective = Преподнесите им урок, который они никогда не забудут.

wizard-role-greeting =Вы — могущественный космический маг. Ваша цель — сеять хаос и разрушения на { $station } и выжить. Конфедерация магов предоставила вам волшебный гримуар, с помощью которого вы можешь изучать разрушительные заклинания.

wizard-round-end-name = волшебник

## TODO: Wizard Apprentice (Coming sometime post-wizard release)
